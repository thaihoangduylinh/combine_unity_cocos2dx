#include "MainMenuScene.h"
#include "HelperManager.h"
#include "JungleGameScene.h"
#include "GuideLayer.h"
#include "LeaderboardLayer.h"
#include "AnimationManager.h"
#include "audio/include/SimpleAudioEngine.h"
#include "SoundManager.h"

using namespace CocosDenshion;

USING_NS_CC;

INITIALIZE_READER(MainMenuScene);

std::once_flag _main_menu_scene;

Scene*  MainMenuScene::createScene()
{
    auto scene = Scene::create();

    if (scene)
    {
        auto view = MainMenuScene::createView();
        view->setPosition(Director::getInstance()->getVisibleOrigin());
        view->didLoadFromCSB();
        scene->addChild(view);
    }
    else
    {
        CC_SAFE_DELETE(scene);
    }
    
    return scene;
}

MainMenuScene * MainMenuScene::createView() 
{
    std::call_once(_main_menu_scene, []
	{
        REGISTER_CSB_READER(MainMenuScene);
    });
    
	auto view = reinterpret_cast<MainMenuScene *>(CSLoader::createNodeWithVisibleSize("csb/ui/scene/MainMenuScene.csb"));
    
	if (view) 
	{
        view->didLoadFromCSB();
        return view;
    }

    CC_SAFE_DELETE(view);
    
    return nullptr;
}

void MainMenuScene::onMusic(cocos2d::Ref* sender)
{
    SOUND_MANAGER->playClickEffect();

    auto node = dynamic_cast<Node*>(sender);

    if (!node) return;

    auto isSoundOn = UserDefault::getInstance()->getBoolForKey("key_is_music_on", true);

    if (auto button = utils::findChild<ui::ImageView*>(node, "music_icon")) {

        button->loadTexture(isSoundOn ? "images/music_off.png" : "images/music_on.png");

        isSoundOn ? SimpleAudioEngine::getInstance()->pauseBackgroundMusic() : SimpleAudioEngine::getInstance()->resumeBackgroundMusic();

        UserDefault::getInstance()->setBoolForKey("key_is_music_on", !isSoundOn);
    }
}

void MainMenuScene::onSound(cocos2d::Ref* sender)
{
    SOUND_MANAGER->playClickEffect();

    auto node = dynamic_cast<Node*>(sender);

    if (!node) return;

    auto isSoundOn = UserDefault::getInstance()->getBoolForKey("key_is_sound_on", true);

    if (auto button = utils::findChild<ui::ImageView*>(node, "sound_icon")) {

        button->loadTexture(isSoundOn ? "images/sound_off.png" : "images/sound_on.png");

        UserDefault::getInstance()->setBoolForKey("key_is_sound_on", !isSoundOn);
    }
}

void MainMenuScene::didLoadFromCSB()
{
    auto playButton = utils::findChild(this, "home_button");

    float k_currentScaleFactor = playButton->getScale();

    playButton->runAction(RepeatForever::create(Sequence::createWithTwoActions(EaseBackIn::create(ScaleTo::create(3.0f, 1.02f * k_currentScaleFactor, 0.9f * k_currentScaleFactor)), EaseBackOut::create(ScaleTo::create(3.0f, 1.0f * k_currentScaleFactor)))));

    auto title = utils::findChild(this, "tengame");

    k_currentScaleFactor = title->getScale();

    title->runAction(RepeatForever::create(Sequence::createWithTwoActions(EaseBackIn::create(ScaleTo::create(3.0f, 1.02f * k_currentScaleFactor, 0.9f * k_currentScaleFactor)), EaseBackOut::create(ScaleTo::create(3.0f, 1.0f * k_currentScaleFactor)))));

    SOUND_MANAGER->playMainMenuMusic();

    auto isMusicOn = UserDefault::getInstance()->getBoolForKey("key_is_music_on", true);

    if (auto button = utils::findChild<ui::ImageView*>(this, "music_icon")) {

        button->loadTexture(!isMusicOn ? "images/music_off.png" : "images/music_on.png");
    }

    auto isSoundOn = UserDefault::getInstance()->getBoolForKey("key_is_sound_on", true);

    if (auto button = utils::findChild<ui::ImageView*>(this, "sound_icon")) {

        button->loadTexture(!isSoundOn ? "images/sound_off.png" : "images/sound_on.png");
    }

#if (CC_TARGET_PLATFORM == CC_PLATFORM_IOS)

    if (auto policyButton = utils::findChild(this, "policy_button")) {
        policyButton->setVisible(false);
    }
#endif
}

void MainMenuScene::onPlayButtonClicked(cocos2d::Ref* sender)
{
    SOUND_MANAGER->playClickEffect();

    Director::getInstance()->replaceScene(JungleGameScene::createScene());
}

void MainMenuScene::onPolicyButtonClicked(cocos2d::Ref * sender)
{
    SOUND_MANAGER->playClickEffect();

#if (CC_TARGET_PLATFORM == CC_PLATFORM_ANDROID)
    Application::getInstance()->openURL("https://google.com");
#elif (CC_TARGET_PLATFORM == CC_PLATFORM_IOS)

#endif

}

void MainMenuScene::onTutorialButtonClicked(cocos2d::Ref* sender)
{
    SOUND_MANAGER->playClickEffect();

    auto view = GuideLayer::createView();

    this->addChild(view);

    ANIMATION_MANAGER->transitionSlideIn(AnimationManager::Direction::LEFT, 0.25f, utils::findChild(view, "background"));
}

void MainMenuScene::onMusicButtonClicked(cocos2d::Ref* sender)
{
    MainMenuScene::onMusic(sender);
}

void MainMenuScene::onRankButtonClicked(cocos2d::Ref* sender)
{
    SOUND_MANAGER->playClickEffect();

    auto view = LeaderboardLayer::createView();
    
    view->setButtonsVisible(false);

    this->addChild(view);

    ANIMATION_MANAGER->transitionSlideIn(AnimationManager::Direction::LEFT, 0.25f, utils::findChild(view, "background"));
}

void MainMenuScene::onSoundButtonClicked(cocos2d::Ref* sender)
{
    MainMenuScene::onSound(sender);
}

cocos2d::ui::Widget::ccWidgetClickCallback MainMenuScene::onLocateClickCallback(const std::string & callBackName)
{
	std::unordered_map<std::string, ui::Widget::ccWidgetClickCallback> function_map =
    {
        CLICK_MAP(MainMenuScene, onPlayButtonClicked),
        CLICK_MAP(MainMenuScene, onPolicyButtonClicked),
        CLICK_MAP(MainMenuScene, onTutorialButtonClicked),
        CLICK_MAP(MainMenuScene, onSoundButtonClicked),
        CLICK_MAP(MainMenuScene, onRankButtonClicked),
        CLICK_MAP(MainMenuScene, onMusicButtonClicked),
    };
    
    if (function_map.find(callBackName) != function_map.end())
    {
        return function_map.at(callBackName);
    }

    return nullptr;
}
