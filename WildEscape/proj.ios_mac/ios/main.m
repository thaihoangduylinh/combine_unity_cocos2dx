#import <UIKit/UIKit.h>


int g_argc;
char **g_argv;

int main(int argc, char *argv[]) {
    g_argc =argc;
    g_argv =argv;
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, @"AppController");
    }
}
