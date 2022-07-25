#include "DataManager.h"

DataManager* DataManager::_instance = nullptr;

#if CC_TARGET_PLATFORM == CC_PLATFORM_ANDROID

std::string DataManager::getStringData(std::string key)  {

    cocos2d::JniHelper::callStaticStringMethod("org.cocos2dx.lib.DataHolder","recieveStringData");

    return _stringData;
}

void DataManager::setStringData(std::string key,std::string stringData) {

    _stringData = stringData;

    CCLOG("xxxx %s",_stringData.c_str());

    cocos2d::JniHelper::callStaticVoidMethod("org.cocos2dx.lib.DataHolder","receiveStringData",key,_stringData);
}

void DataManager::launchUnity() {

    cocos2d::JniHelper::callStaticVoidMethod("org.cocos2dx.cpp.AppActivity","sFuncShowUnityActivity");

}

extern "C"
{
    JNIEXPORT void JNICALL
    Java_org_cocos2dx_cpp_AppActivity_dispatchEventWhenUnityExit(JNIEnv *env, jobject thiz) {

        cocos2d::Director::getInstance()->getEventDispatcher()->dispatchCustomEvent(DISPATCH_EVENT_WHEN_UNITY_EXIT_KEY);

    }
}

#endif
