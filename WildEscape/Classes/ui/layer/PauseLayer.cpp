#include "PauseLayer.h"
#include "HelperManager.h"
#include "JungleGameScene.h"
#include "MainMenuScene.h"
#include "SoundManager.h"

USING_NS_CC;

INITIALIZE_READER(PauseLayer);

std::once_flag _pause_layer_flag;

Scene*  PauseLayer::createScene()
{
    auto scene = Scene::create();

    if (scene)
    {
        auto view = PauseLayer::createView();
        scene->addChild(view);
    }
    else
    {
        CC_SAFE_DELETE(scene);
    }
    
    return scene;
}

PauseLayer * PauseLayer::createView() 
{
    std::call_once(_pause_layer_flag, []
	{
        REGISTER_CSB_READER(PauseLayer);
    });
    
	auto view = reinterpret_cast<PauseLayer *>(CSLoader::createNodeWithVisibleSize("csb/ui/layer/PauseLayer.csb"));
    
	if (view) 
	{
        view->didLoadFromCSB();
        return view;
    }
    
    CC_SAFE_DELETE(view);
    
    return nullptr;
}

void PauseLayer::didLoadFromCSB()
{
    auto isMusicOn = UserDefault::getInstance()->getBoolForKey("key_is_music_on", true);

    if (auto button = utils::findChild<ui::ImageView*>(this, "music_icon")) {

        button->loadTexture(!isMusicOn ? "images/music_off.png" : "images/music_on.png");
    }

    auto isSoundOn = UserDefault::getInstance()->getBoolForKey("key_is_sound_on", true);

    if (auto button = utils::findChild<ui::ImageView*>(this, "sound_icon")) {

        button->loadTexture(!isSoundOn ? "images/sound_off.png" : "images/sound_on.png");
    }
}

void PauseLayer::onMusicButtonClicked(cocos2d::Ref* sender)
{
    MainMenuScene::onMusic(sender);
}

void PauseLayer::onSoundButtonClicked(cocos2d::Ref* sender)
{
    MainMenuScene::onSound(sender);
}

void PauseLayer::onHomeButtonClicked(cocos2d::Ref* sender)
{
    HELPER_MANAGER->disableButton(sender);

    SOUND_MANAGER->playClickEffect();

    auto scene = MainMenuScene::createScene();
    
    Director::getInstance()->replaceScene(scene);
}

void PauseLayer::onReplayButtonClicked(cocos2d::Ref* sender)
{
    HELPER_MANAGER->disableButton(sender);

    SOUND_MANAGER->playClickEffect();

    Director::getInstance()->replaceScene(JungleGameScene::createScene());
}

void PauseLayer::onPlayButtonClicked(cocos2d::Ref* sender)
{
    HELPER_MANAGER->disableButton(sender);

    SOUND_MANAGER->playClickEffect();

    if (auto gameScene = dynamic_cast<JungleGameScene*>(this->getParent())) {

        gameScene->onGameResume();
    }

    this->removeFromParent();
}

void PauseLayer::onCloseButtonClicked(cocos2d::Ref* sender)
{
    onPlayButtonClicked(sender);
}

cocos2d::ui::Widget::ccWidgetClickCallback PauseLayer::onLocateClickCallback(const std::string & callBackName)
{
	std::unordered_map<std::string, ui::Widget::ccWidgetClickCallback> function_map =
    {
        CLICK_MAP(PauseLayer, onPlayButtonClicked),
        CLICK_MAP(PauseLayer, onReplayButtonClicked),
        CLICK_MAP(PauseLayer, onHomeButtonClicked),
        CLICK_MAP(PauseLayer, onSoundButtonClicked),
        CLICK_MAP(PauseLayer, onMusicButtonClicked),
        CLICK_MAP(PauseLayer, onCloseButtonClicked),
    };
    
    if (function_map.find(callBackName) != function_map.end())
    {
        return function_map.at(callBackName);
    }

    return nullptr;
}
