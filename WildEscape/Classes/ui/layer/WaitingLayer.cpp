#include "WaitingLayer.h"

USING_NS_CC;

INITIALIZE_READER(WaitingLayer);

std::once_flag _waiting_layer_flag;

WaitingLayer * WaitingLayer::createView() {
	
	std::call_once(_waiting_layer_flag, [] {
		REGISTER_CSB_READER(WaitingLayer);
	});

	auto p = dynamic_cast<WaitingLayer*>(CSLoader::createNodeWithVisibleSize("csb/ui/layer/WaitingLayer.csb"));
	if (p) {
		p->didLoadFromCSB();
		return p;
	}

	CC_SAFE_DELETE(p);
	return nullptr;
}

void WaitingLayer::didLoadFromCSB() {
   
	if (auto indicator = cocos2d::utils::findChild(this, "indicator")) {

		indicator->runAction(RepeatForever::create(RotateBy::create(0.5, 360)));
	}
}

void WaitingLayer::onEnter() {

	ui::Layout::onEnter();

}

void WaitingLayer::onExit() {

	ui::Layout::onExit();

}

void WaitingLayer::onSkip(Ref * sender) {

}

void WaitingLayer::onConfirm(Ref * sender) {
	
}

cocos2d::ui::Widget::ccWidgetClickCallback WaitingLayer::onLocateClickCallback(const std::string & callBackName) {
    std::unordered_map<std::string, ui::Widget::ccWidgetClickCallback> function_map = {
        CLICK_MAP(WaitingLayer, onConfirm),
        CLICK_MAP(WaitingLayer, onSkip),
    };
    
    if (function_map.find(callBackName) != function_map.end()) {
        return function_map.at(callBackName);
    }
	return nullptr;
}
