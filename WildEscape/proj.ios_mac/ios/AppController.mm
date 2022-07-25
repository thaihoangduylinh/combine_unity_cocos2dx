/****************************************************************************
 Copyright (c) 2010-2013 cocos2d-x.org
 Copyright (c) 2013-2016 Chukong Technologies Inc.
 Copyright (c) 2017-2018 Xiamen Yaji Software Co., Ltd.
 
 http://www.cocos2d-x.org
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
 ****************************************************************************/

#import "AppController.h"
#import "cocos2d.h"
#import "AppDelegate.h"
#import "RootViewController.h"

#include <UnityFramework/UnityFramework.h>
#include <UnityFramework/NativeCallProxy.h>

extern int g_argc;

extern char **g_argv;

NSDictionary* appLaunchOpts;

UnityFramework* UnityFrameworkLoad()
{
    NSString* bundlePath = nil;
    bundlePath = [[NSBundle mainBundle] bundlePath];
    bundlePath = [bundlePath stringByAppendingString: @"/Frameworks/UnityFramework.framework"];
    
    NSBundle* bundle = [NSBundle bundleWithPath: bundlePath];
    if ([bundle isLoaded] == false) [bundle load];
    
    UnityFramework* ufw = [bundle.principalClass getInstance];
    if (![ufw appController])
    {
        // unity is not initialized
        [ufw setExecuteHeader: &_mh_execute_header];
    }
    return ufw;
}

void showAlert(NSString* title, NSString* msg) {
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:title message:msg                                                         preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {}];
    [alert addAction:defaultAction];
    auto delegate = [[UIApplication sharedApplication] delegate];
    [delegate.window.rootViewController presentViewController:alert animated:YES completion:nil];
}

@interface AppController()<UIApplicationDelegate,UnityFrameworkListener, NativeCallsProtocol>

@property UnityFramework* ufw;
@property bool didQuit;
@property (nonatomic, retain) NSMutableDictionary *stringData;

- (void)sendStringDataToUnity;
- (void)initUnity;
- (void)showUnity;
- (char*)getDataFromIOSProject:(const char*)key;
- (void)exitUnity;
- (void)unityDidUnload:(NSNotification*)notification;

@end

@implementation AppController

@synthesize window;

#pragma mark -
#pragma mark Application lifecycle

- (bool)unityIsInitialized { return [self ufw] && [[self ufw] appController]; }

- (void)sendDataToUnity
{
//    if(_stringData != NULL) {
//
//        const char* chardata = [_stringData UTF8String];
//
//        [[self ufw] sendMessageToGOWithName: "GameScript" functionName: "RecieveData" message: chardata];
//    }
}

- (void)initUnity
{
    if([self unityIsInitialized]) {
        
        [self showUnity];

        CCLOG("Unity already initialized");
        return;
    }
    
    if([self didQuit]) {
        CCLOG("Unity cannot be initialized after quit");
        return;
    }
        
    [self setUfw: UnityFrameworkLoad()];
    
    [[self ufw] setDataBundleId: "com.unity3d.framework"];
    
    [[self ufw] registerFrameworkListener: self];
    
    [NSClassFromString(@"FrameworkLibAPI") registerAPIforNativeCalls:self];
    
    [[self ufw] runEmbeddedWithArgc: g_argc argv: g_argv appLaunchOpts: appLaunchOpts];
    
    [[self ufw] appController].quitHandler = ^(){ NSLog(@"AppController.quitHandler called"); };
    
    [self showUnity];
    
}

- (void)showUnity
{
    [[self ufw] showUnityWindow];
}

- (void)exitUnity
{
    if(![self unityIsInitialized]) {
        
        CCLOG("Unity is not initialized");

        
    } else {
        
        CCLOG("Unity is unloadApplication");

        [UnityFrameworkLoad() unloadApplication];
    }

}

- (void)unityDidUnload:(NSNotification*)notification
{
    NSLog(@"unityDidUnload called");
    
    [[self ufw] unregisterFrameworkListener: self];
    [self setUfw: nil];
    
    [self.window makeKeyAndVisible];
 
   // Director::getInstance()->getEventDispatcher()->dispatchCustomEvent(DISPATCH_EVENT_WHEN_UNITY_EXIT_KEY);
}

- (char*)getDataFromIOSProject:(const char*)key
{
    NSString *keyNS = [[NSString alloc] initWithCString:key encoding:NSUTF8StringEncoding];

    if(!keyNS) {
        return (char*)"";
    }
    
    if([_stringData objectForKey:keyNS] != nil) {

        auto value = [_stringData objectForKey:keyNS];

        const char *chardata = [value UTF8String];
        
        return (char*)chardata;
    }
    
    return (char*)"";
}

// cocos2d application instance
static AppDelegate s_sharedApplication;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    appLaunchOpts = launchOptions;
    
    
    cocos2d::Application *app = cocos2d::Application::getInstance();
    
    // Initialize the GLView attributes
    app->initGLContextAttrs();
    cocos2d::GLViewImpl::convertAttrs();
    
    // Override point for customization after application launch.

    // Add the view controller's view to the window and display.
    window = [[UIWindow alloc] initWithFrame: [[UIScreen mainScreen] bounds]];

    // Use RootViewController to manage CCEAGLView
    _viewController = [[RootViewController alloc]init];
    _viewController.wantsFullScreenLayout = YES;
    

    // Set RootViewController to window
    if ( [[UIDevice currentDevice].systemVersion floatValue] < 6.0)
    {
        // warning: addSubView doesn't work on iOS6
        [window addSubview: _viewController.view];
    }
    else
    {
        // use this method on ios6
        [window setRootViewController:_viewController];
    }

    [window makeKeyAndVisible];

    [[UIApplication sharedApplication] setStatusBarHidden:true];
    
    // IMPORTANT: Setting the GLView should be done after creating the RootViewController
    cocos2d::GLView *glview = cocos2d::GLViewImpl::createWithEAGLView((__bridge void *)_viewController.view);
    cocos2d::Director::getInstance()->setOpenGLView(glview);
    
    //run the cocos2d-x game scene
    app->run();

    _stringData = [[NSMutableDictionary alloc] init];

    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    
    [[[self ufw] appController] applicationWillResignActive: application];

    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
    // We don't need to call this method any more. It will interrupt user defined game pause&resume logic
    /* cocos2d::Director::getInstance()->pause(); */
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    
    [[[self ufw] appController] applicationDidBecomeActive: application];

    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
    // We don't need to call this method any more. It will interrupt user defined game pause&resume logic
    /* cocos2d::Director::getInstance()->resume(); */
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    
    [[[self ufw] appController] applicationDidEnterBackground: application];

    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, called instead of applicationWillTerminate: when the user quits.
     */
    cocos2d::Application::getInstance()->applicationDidEnterBackground();
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    
    [[[self ufw] appController] applicationWillEnterForeground: application];

    /*
     Called as part of  transition from the background to the inactive state: here you can undo many of the changes made on entering the background.
     */
    cocos2d::Application::getInstance()->applicationWillEnterForeground();
}

- (void)applicationWillTerminate:(UIApplication *)application {
    
    [[[self ufw] appController] applicationWillTerminate: application];

    /*
     Called when the application is about to terminate.
     See also applicationDidEnterBackground:.
     */
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    
   // [[[self ufw] appController] applicationDidReceiveMemoryWarning: application];

    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}


#if __has_feature(objc_arc)
#else
- (void)dealloc {
    [window release];
    [_viewController release];
    [super dealloc];
}
#endif

-(void) setStringData:(std::string)key withData:(std::string) stringData
{
    NSString *keyNS = [[NSString alloc] initWithCString:key.c_str() encoding:NSUTF8StringEncoding];

    NSString *stringDataNS = [[NSString alloc] initWithCString:stringData.c_str() encoding:NSUTF8StringEncoding];

    if(keyNS != nil && stringDataNS != nil) {
    
        [_stringData setObject:stringDataNS forKey:keyNS];
        
    }
    
}

-(void) launchUnity
{
    [self initUnity];
}


@end
