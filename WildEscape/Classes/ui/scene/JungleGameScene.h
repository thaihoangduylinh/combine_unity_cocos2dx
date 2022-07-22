#pragma once

#include "CocostudioMacro.h"
#include "spine/SkeletonAnimation.h"

using namespace spine;
using namespace cocos2d;

#define MAX_HP 10

enum class JungleEnemyType {
    BO_CAP,
    CHIM,
    DUOI_UOI,
    GAU,
    HO,
};

struct JungleLevelConfig {

    float _duration = 60;

    std::vector<JungleEnemyType> _enemies;

    float _enemyAppearancefrequency = 5.0f;

    float _enemySpeed = 5.0f;

    JungleLevelConfig() {}

    JungleLevelConfig(float duration, std::vector<JungleEnemyType> enemies, float enemyAppearancefrequency, float enemySpeed) {

		_duration                   = duration;
		_enemies                    = enemies;
		_enemyAppearancefrequency   = enemyAppearancefrequency;
        _enemySpeed = enemySpeed;
    }
};

class JungleGameScene : public cocos2d::ui::Layout,public cocostudio::WidgetCallBackHandlerProtocol 
{
public:
   
    CREATE_FUNC(JungleGameScene);

    static cocos2d::Scene* createScene();
    
    static JungleGameScene* createView();//1.
        
    void onGamePause();

    void onGameResume();

private:
    
    void didLoadFromCSB();

    void setupLevels();
    void setPhysicsWorld(cocos2d::PhysicsWorld* world);

    bool onTouchBegan(cocos2d::Touch*, cocos2d::Event*);
    
    void onTouchEnded(cocos2d::Touch*, cocos2d::Event*);
    
    void onTouchMoved(cocos2d::Touch*, cocos2d::Event*);

    bool onContactBegin(cocos2d::PhysicsContact& contact);

    void onBackButtonClicked(cocos2d::Ref* sender);

    void onPauseButtonClicked(cocos2d::Ref* sender);

    void gameOver();
    
    void update(float dt);

    void updateLevel();

    void updateScore();

    void updateHP();

    void spwanEnemies(JungleEnemyType type,float speed);

    cocos2d::ui::Widget::ccWidgetClickCallback onLocateClickCallback(const std::string & callback_name) override;//3.
    
private:

	cocos2d::Size               _screenSize;

	cocos2d::Vec2               _origin;

	bool                        _isUpdate = false;

	cocos2d::PhysicsWorld*      _physicSceneWorld;

	double                      _timer = 0.0f;

	int                         _score = 0;

    int                         _hp = MAX_HP;

	bool                        _isGameOver = false;

	int                         _currentLevelID = 0;

	std::vector<JungleLevelConfig>    _levels;

    cocos2d::Node* _touchNode = nullptr;

    cocos2d::ui::ImageView* _leftWall = nullptr;

    cocos2d::ui::ImageView* _rightWall = nullptr;

    cocos2d::ui::ImageView* _levelBar = nullptr;

    std::string _touchEffectAnimationPath = "animation/vfx_fire/fx_fire";

};

CREATE_READER(JungleGameScene);

