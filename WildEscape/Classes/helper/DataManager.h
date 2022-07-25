#pragma once

#include "cocos2d.h"

#define DISPATCH_EVENT_WHEN_UNITY_EXIT_KEY "dispatch_event_when_unity_exit_key"

#define DATA_MANAGER DataManager::GetInstance()

class DataManager {

private:

    static DataManager* _instance;

    std::string _stringData;

public:

    DataManager() {

    }

    static DataManager* getInstance() {

        if(!_instance) {
            _instance = new DataManager();
        }

        return _instance;
    }

    std::string getStringData(std::string key);

    void setStringData(std::string key,std::string stringData);

    void launchUnity();


};
