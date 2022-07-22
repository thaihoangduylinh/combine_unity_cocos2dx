#include "HelperManager.h"
#include "WaitingLayer.h"
USING_NS_CC;

void HelperManager::disableButton(cocos2d::Ref* sender)
{
	if (auto button = dynamic_cast<ui::Button*>(sender)) {

		button->setTouchEnabled(false);
	}
}

void HelperManager::showWaitingLayer()
{
	auto waitView = WaitingLayer::createView();
	waitView->setName("WaitingLayer");
	Director::getInstance()->getRunningScene()->addChild(waitView, INT_MAX - 1);
}

float HelperManager::lerp(float a, float b, float x, float y, float i)
{
	if (a == b) {
		CCLOG("something wrong!");
		return -1;
	}

	return (((i - a) / (b - a)) * (y - x)) + x;
}