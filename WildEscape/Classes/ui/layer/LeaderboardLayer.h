#pragma once

#include "CocostudioMacro.h"

class LeaderboardLayer : public cocos2d::ui::Layout,public cocostudio::WidgetCallBackHandlerProtocol 
{
public:

    CREATE_FUNC(LeaderboardLayer);

    static cocos2d::Scene* createScene();
    
    static LeaderboardLayer * createView();
    
    static void updateHighScore(std::pair<int, int> newScore);

    void setButtonsVisible(bool value);

    void setCloseButtonVisible(bool value);

private:
    
    void didLoadFromCSB();
    
    void onCloseButtonClicked(cocos2d::Ref* sender);

    void onHomeButtonClicked(cocos2d::Ref* sender);

    void onReplayButtonClicked(cocos2d::Ref* sender);

    cocos2d::ui::Widget::ccWidgetClickCallback onLocateClickCallback(const std::string & callback_name) override;
    
private:

};

CREATE_READER(LeaderboardLayer);

