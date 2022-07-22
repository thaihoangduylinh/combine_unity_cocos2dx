#include "LeaderboardLayer.h"
#include "HelperManager.h"
#include "JungleGameScene.h"
#include "SoundManager.h"
#include "MainMenuScene.h"

USING_NS_CC;

INITIALIZE_READER(LeaderboardLayer);

std::once_flag _leaderboard_layer_flag;

Scene*  LeaderboardLayer::createScene()
{
    auto scene = Scene::create();

    if (scene)
    {
        auto view = LeaderboardLayer::createView();
        scene->addChild(view);
    }
    else
    {
        CC_SAFE_DELETE(scene);
    }
    
    return scene;
}

LeaderboardLayer * LeaderboardLayer::createView() 
{
    std::call_once(_leaderboard_layer_flag, []
	{
        REGISTER_CSB_READER(LeaderboardLayer);
    });
    
	auto view = reinterpret_cast<LeaderboardLayer *>(CSLoader::createNodeWithVisibleSize("csb/ui/layer/LeaderboardLayer.csb"));
    
	if (view) 
	{
        view->didLoadFromCSB();
        return view;
    }
    
    CC_SAFE_DELETE(view);
    
    return nullptr;
}

void LeaderboardLayer::updateHighScore(std::pair<int, int> newScore)
{
    std::vector<std::pair<int, int>> leaderboards;

    leaderboards.push_back(newScore);

    for (int i = 1; i <= 5; i++) {

        const std::string k_scoreKey = StringUtils::format("rank_%d_score", i);
        const std::string k_timeKey = StringUtils::format("rank_%d_time", i);

        auto score = UserDefault::getInstance()->getIntegerForKey(k_scoreKey.c_str(), 0);
        auto time = UserDefault::getInstance()->getIntegerForKey(k_timeKey.c_str(), 0);

        leaderboards.push_back({ score,time });
    }

    std::sort(leaderboards.begin(), leaderboards.end(), [](const std::pair<int, int> a, const std::pair<int, int> b) {
       
        if (a.first == b.first) return a.second < b.second;

        return a.first > b.first;

    });

     for (int i = 1,j=0; i <= 5; i++,j++) {
        
        if (j >= leaderboards.size()) {
            return;
        }

        auto b = leaderboards.at(j);

        const std::string k_scoreKey = StringUtils::format("rank_%d_score", i);
        const std::string k_timeKey = StringUtils::format("rank_%d_time", i);

        UserDefault::getInstance()->setIntegerForKey(k_scoreKey.c_str(), b.first);
        UserDefault::getInstance()->setIntegerForKey(k_timeKey.c_str(), b.second);
    }
}

void LeaderboardLayer::setButtonsVisible(bool value)
{
    auto replay = utils::findChild(this, "replay_button");
    replay->setVisible(value);

    auto home = utils::findChild(this, "home_button");
    home->setVisible(value);
}

void LeaderboardLayer::setCloseButtonVisible(bool value)
{
    auto home = utils::findChild(this, "back_button");
    home->setVisible(value);
}

void LeaderboardLayer::didLoadFromCSB()
{
    std::vector<std::pair<std::string, std::string>> data = {
        {"rank_1_score","rank_1_time"},
        {"rank_2_score","rank_2_time"},
    };

    for (int i = 1; i <= 5; i++) {

        const std::string k_scoreKey    = StringUtils::format("rank_%d_score",i);
        const std::string k_timeKey     = StringUtils::format("rank_%d_time", i);

        auto score  = UserDefault::getInstance()->getIntegerForKey(k_scoreKey.c_str(), 0);
        auto time   = UserDefault::getInstance()->getIntegerForKey(k_timeKey.c_str(), 0);
        
        auto minute = (time / 60);
        auto seconds = time % 60;

        auto scoreText = utils::findChild<ui::Text*>(this, k_scoreKey);
        scoreText->setString(StringUtils::format("%d", score));

        auto timeText = utils::findChild<ui::Text*>(this, k_timeKey);
        timeText->setString(StringUtils::format("%d:%d", minute,time));

        // timeText->setString(minute > 0 ? StringUtils::format("%d:%d", minute, time) : StringUtils::format("%d", seconds));
    }
}

void LeaderboardLayer::onCloseButtonClicked(cocos2d::Ref* sender)
{
    HELPER_MANAGER->disableButton(sender);

    SOUND_MANAGER->playClickEffect();

    this->removeFromParent();
}

void LeaderboardLayer::onHomeButtonClicked(cocos2d::Ref* sender)
{
    HELPER_MANAGER->disableButton(sender);

    SOUND_MANAGER->playClickEffect();

    Director::getInstance()->replaceScene(MainMenuScene::createScene());
}

void LeaderboardLayer::onReplayButtonClicked(cocos2d::Ref* sender)
{
    HELPER_MANAGER->disableButton(sender);

    SOUND_MANAGER->playClickEffect();

    Director::getInstance()->replaceScene(JungleGameScene::createScene());
}

cocos2d::ui::Widget::ccWidgetClickCallback LeaderboardLayer::onLocateClickCallback(const std::string & callBackName)
{
	std::unordered_map<std::string, ui::Widget::ccWidgetClickCallback> function_map =
    {
        CLICK_MAP(LeaderboardLayer, onCloseButtonClicked),
        CLICK_MAP(LeaderboardLayer, onHomeButtonClicked),
        CLICK_MAP(LeaderboardLayer, onReplayButtonClicked),
    };
    
    if (function_map.find(callBackName) != function_map.end())
    {
        return function_map.at(callBackName);
    }

    return nullptr;
}
