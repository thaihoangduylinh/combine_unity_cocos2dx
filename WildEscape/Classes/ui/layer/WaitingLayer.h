#pragma once

#include "CocostudioMacro.h"

class WaitingLayer : public cocos2d::ui::Layout, public cocostudio::WidgetCallBackHandlerProtocol {

public:

	CREATE_FUNC(WaitingLayer);

	static WaitingLayer* createView();
    
private:

	void onEnter() override;
	
	void onExit() override;
    
    void onConfirm(cocos2d::Ref * sender);

    void onSkip(cocos2d::Ref * sender);
    
	void didLoadFromCSB();

	cocos2d::ui::Widget::ccWidgetClickCallback onLocateClickCallback(const std::string & callBackName) override;
};

CREATE_READER(WaitingLayer);

