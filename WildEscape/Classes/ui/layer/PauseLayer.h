#pragma once

#include "CocostudioMacro.h"

class PauseLayer : public cocos2d::ui::Layout,public cocostudio::WidgetCallBackHandlerProtocol 
{
public:

    CREATE_FUNC(PauseLayer);

    static cocos2d::Scene* createScene();
    
    static PauseLayer * createView();//1.
        
private:
    
    void didLoadFromCSB();
    
    void onMusicButtonClicked(cocos2d::Ref* sender);

    void onSoundButtonClicked(cocos2d::Ref* sender);
    
    void onHomeButtonClicked(cocos2d::Ref* sender);

    void onReplayButtonClicked(cocos2d::Ref* sender);

    void onPlayButtonClicked(cocos2d::Ref* sender);

    void onCloseButtonClicked(cocos2d::Ref* sender);

    cocos2d::ui::Widget::ccWidgetClickCallback onLocateClickCallback(const std::string & callback_name) override;//3.
    
private:

};

CREATE_READER(PauseLayer);

