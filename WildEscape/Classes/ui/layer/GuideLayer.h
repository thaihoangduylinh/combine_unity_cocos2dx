#pragma once

#include "CocostudioMacro.h"

class GuideLayer : public cocos2d::ui::Layout,public cocostudio::WidgetCallBackHandlerProtocol 
{
public:

    CREATE_FUNC(GuideLayer);

    static cocos2d::Scene* createScene();
    
    static GuideLayer * createView();
        
private:
    
    void didLoadFromCSB();
    
    void onCloseButtonClicked(cocos2d::Ref* sender);

    cocos2d::ui::Widget::ccWidgetClickCallback onLocateClickCallback(const std::string & callback_name) override;
    
private:

};

CREATE_READER(GuideLayer);

