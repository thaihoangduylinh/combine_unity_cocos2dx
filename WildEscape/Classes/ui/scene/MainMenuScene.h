#pragma once

#include "CocostudioMacro.h"

class MainMenuScene : public cocos2d::ui::Layout,public cocostudio::WidgetCallBackHandlerProtocol 
{
public:

    CREATE_FUNC(MainMenuScene);

    static cocos2d::Scene* createScene();
    
    static MainMenuScene * createView();
        
    static void onMusic(cocos2d::Ref* sender);

    static void onSound(cocos2d::Ref* sender);

private:
    
    void didLoadFromCSB();
    
    void onPlayButtonClicked(cocos2d::Ref* sender);

    void onPolicyButtonClicked(cocos2d::Ref* sender);

    void onTutorialButtonClicked(cocos2d::Ref* sender);

    void onMusicButtonClicked(cocos2d::Ref* sender);

    void onRankButtonClicked(cocos2d::Ref* sender);

    void onSoundButtonClicked(cocos2d::Ref * sender);

    cocos2d::ui::Widget::ccWidgetClickCallback onLocateClickCallback(const std::string & callback_name) override;//3.
    
private:

};

CREATE_READER(MainMenuScene);

