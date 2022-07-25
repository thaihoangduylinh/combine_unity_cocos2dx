#include "DataManager.h"

#import "AppController.h"

std::string DataManager::getStringData(std::string key)  {

//    AppController *app = (AppController*)[[UIApplication sharedApplication] delegate];
//   [app setStringData:ket];
    return _stringData;
}

void DataManager::setStringData(std::string key,std::string stringData) {

    _stringData = stringData;
    
    if(AppController *app = (AppController*)[[UIApplication sharedApplication] delegate]) {
        
        [app setStringData:key withData:stringData];
        
    }
}

void DataManager::launchUnity() {

    if(AppController *app = (AppController*)[[UIApplication sharedApplication] delegate]) {
        
        [app launchUnity];
    }
}
