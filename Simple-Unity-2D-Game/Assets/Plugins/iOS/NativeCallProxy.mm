#import <Foundation/Foundation.h>
#import "NativeCallProxy.h"

@implementation FrameworkLibAPI


id<NativeCallsProtocol> api = NULL;

+(void) registerAPIforNativeCalls:(id<NativeCallsProtocol>) aApi
{
    api = aApi;
}

@end


char* MakeStringCopy(const char* string)
{
    if (string == NULL)
        return NULL;
    
    char* res = (char*)malloc(strlen(string) + 1);
    strcpy(res, string);
    return res;
}

extern "C" {

    void exitUnity() {
         [api exitUnity];
    }

    void calledFromUnity() {
        
     
    }

    char* getDataFromIOSProject(const char* key) {

        auto data =  [api getDataFromIOSProject:key];
        return MakeStringCopy(data);

    };

    void showHostMainWindow(const char* color) { return [api showHostMainWindow:[NSString stringWithUTF8String:color]]; }

}

