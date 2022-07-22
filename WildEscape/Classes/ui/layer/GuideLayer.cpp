#include "GuideLayer.h"
#include "HelperManager.h"
#include "SoundManager.h"

USING_NS_CC;

INITIALIZE_READER(GuideLayer);

std::once_flag _guide_layer_flag;

Scene*  GuideLayer::createScene()
{
    auto scene = Scene::create();

    if (scene)
    {
        auto view = GuideLayer::createView();
        scene->addChild(view);
    }
    else
    {
        CC_SAFE_DELETE(scene);
    }
    
    return scene;
}

GuideLayer * GuideLayer::createView() 
{
    std::call_once(_guide_layer_flag, []
	{
        REGISTER_CSB_READER(GuideLayer);
    });
    
	auto view = reinterpret_cast<GuideLayer*>(CSLoader::createNodeWithVisibleSize("csb/ui/layer/GuideLayer.csb"));
    
	if (view) 
	{
        view->didLoadFromCSB();
        return view;
    }
    
    CC_SAFE_DELETE(view);
    
    return nullptr;
}

void GuideLayer::didLoadFromCSB()
{

}

void GuideLayer::onCloseButtonClicked(cocos2d::Ref* sender)
{
    SOUND_MANAGER->playClickEffect();

    this->removeFromParent();
}

cocos2d::ui::Widget::ccWidgetClickCallback GuideLayer::onLocateClickCallback(const std::string & callBackName)
{
	std::unordered_map<std::string, ui::Widget::ccWidgetClickCallback> function_map =
    {
        CLICK_MAP(GuideLayer, onCloseButtonClicked),
    };
    
    if (function_map.find(callBackName) != function_map.end())
    {
        return function_map.at(callBackName);
    }

    return nullptr;
}
