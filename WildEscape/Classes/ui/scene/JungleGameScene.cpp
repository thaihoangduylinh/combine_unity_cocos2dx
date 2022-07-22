#include "JungleGameScene.h"
#include "HelperManager.h"
#include "spine/Animation.h"
#include "PauseLayer.h"
#include "LeaderboardLayer.h"
#include "AnimationManager.h"
#include "SoundManager.h"
#include "MainMenuScene.h"

USING_NS_CC;

#define OBJECT_SACLE_FACTOR                 0.65f
#define CAT_MOVE_ACTION_TAG                   1123

#define ENEMY_COLLISION_BITMASK               12341
#define BO_CAP_COLLISION_BITMASK              12343
#define TOUCH_NODE_COLLISION_BITMASK          12342

//#define COIN_COLLISION_BITMASK                12388
//#define LEVEL_BAR_COLLISION_BITMASK           12399

#define ROTATION_DELTA                 6.0F
#define CAT_VELOCITY                   150.0F
#define MAX_ROTATION_ANGLE             30.0F

#define SPAWN_ENEMIES_ACTION_TAG			7777


INITIALIZE_READER(JungleGameScene);

std::once_flag _game_scene;

Scene* JungleGameScene::createScene()
{
	auto scene = Scene::createWithPhysics();

	scene->getPhysicsWorld()->setDebugDrawMask(PhysicsWorld::DEBUGDRAW_NONE);

	if (scene)
	{
		auto view = JungleGameScene::createView();
		view->setPosition(Director::getInstance()->getVisibleOrigin());
		view->setPhysicsWorld(scene->getPhysicsWorld());
		scene->addChild(view);
	}
	else
	{
		CC_SAFE_DELETE(scene);
	}

	return scene;
}

JungleGameScene* JungleGameScene::createView()
{
	std::call_once(_game_scene, []
	{
		REGISTER_CSB_READER(JungleGameScene);
	});

	auto view = reinterpret_cast<JungleGameScene*>(CSLoader::createNodeWithVisibleSize("csb/ui/scene/JungleGameScene.csb"));

	if (view)
	{
		view->didLoadFromCSB();
		return view;
	}

	CC_SAFE_DELETE(view);

	return nullptr;
}

void JungleGameScene::didLoadFromCSB()
{
	_screenSize = Director::getInstance()->getVisibleSize();

	_origin = Director::getInstance()->getVisibleOrigin();

	////////////////////////////////////////////////////////////////////////////

	_leftWall = utils::findChild<ui::ImageView*>(this, "left_wall");

	_rightWall = utils::findChild<ui::ImageView*>(this, "right_wall");

	_levelBar = utils::findChild<ui::ImageView*>(this, "vachdich");

	_touchNode = utils::findChild(this, "touch_node");

	if (auto topBar = utils::findChild(this, "top_bar")) {

		topBar->setLocalZOrder(10000);
	}

	///////////////////////////////////////////

	auto catBody = PhysicsBody::createBox(_touchNode->getContentSize());
	catBody->setContactTestBitmask(true);
	catBody->setCollisionBitmask(TOUCH_NODE_COLLISION_BITMASK);
	catBody->setDynamic(false);

	_touchNode->setPhysicsBody(catBody);

	////////////////////////////////////////////////////////////////////////////

	auto panelMove = Layout::create();
	panelMove->setContentSize(_screenSize);
	panelMove->setLayoutType(Layout::Type::ABSOLUTE);
	panelMove->setBackGroundColorType(Layout::BackGroundColorType::SOLID);
	panelMove->setBackGroundColor(cocos2d::Color3B::BLACK);
	panelMove->setAnchorPoint(cocos2d::Vec2::ANCHOR_MIDDLE);
	panelMove->setPosition(_screenSize / 2);
	panelMove->setOpacity(0);
	panelMove->setSwallowTouches(true);
	this->addChild(panelMove, INT_MAX-1);

	auto touchListener = EventListenerTouchOneByOne::create();

	touchListener->onTouchBegan = CC_CALLBACK_2(JungleGameScene::onTouchBegan, this);
	touchListener->onTouchEnded = CC_CALLBACK_2(JungleGameScene::onTouchEnded, this);
	touchListener->onTouchMoved = CC_CALLBACK_2(JungleGameScene::onTouchMoved, this);

	this->getEventDispatcher()->addEventListenerWithSceneGraphPriority(touchListener, panelMove);
	////////////////////////////////////////////////////////////////////////////

	auto contactListener = EventListenerPhysicsContact::create();

	contactListener->onContactBegin = CC_CALLBACK_1(JungleGameScene::onContactBegin, this);

	Director::getInstance()->getEventDispatcher()->addEventListenerWithSceneGraphPriority(contactListener, this);

	////////////////////////////////////////////////////////////////////////////
	
	setupLevels();

	updateScore();

	updateLevel();

	this->scheduleUpdate();
}

void JungleGameScene::setupLevels()
{
	_levels.push_back({ 30,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU},0.5f,5.0f });
	_levels.push_back({ 30,{JungleEnemyType::BO_CAP,JungleEnemyType::CHIM,JungleEnemyType::HO,JungleEnemyType::GAU},0.5f,4.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.35f,5.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,5.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.45f,4.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,4.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,4.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,3.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,3.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.5f,4.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,4.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,4.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,3.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.125f,3.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.125f,3.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.125f,3.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.125f,3.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.125f,3.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.125f,3.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.125f,3.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.125f,3.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.125f,3.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.125f,3.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.125f,3.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.125f,3.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.125f,3.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,3.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,3.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,4.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,4.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,4.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,4.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,4.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,4.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,4.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,4.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,4.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,4.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,4.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,4.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,4.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,4.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,3.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,3.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,3.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,3.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,3.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,3.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,3.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,3.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,3.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,3.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,3.0f });
	_levels.push_back({ 60,{JungleEnemyType::BO_CAP,JungleEnemyType::DUOI_UOI,JungleEnemyType::GAU,JungleEnemyType::CHIM,JungleEnemyType::HO},0.25f,3.0f });
}

bool JungleGameScene::onTouchBegan(Touch* touch, Event* event)
{
	if (_touchNode) {
		_touchNode->setPosition(touch->getLocation()-_origin);
	}
	return true;
}

void JungleGameScene::onTouchEnded(Touch* touch, Event* event)
{
	if (_touchNode) {
		_touchNode->setPosition(-Vec2(_screenSize));
	}
	cocos2d::log("touch ended");
}

void JungleGameScene::onTouchMoved(Touch* touch, Event* event)
{
	cocos2d::log("touch moved");
}

void JungleGameScene::setPhysicsWorld(cocos2d::PhysicsWorld* world)
{
	_physicSceneWorld = world;
}

bool JungleGameScene::onContactBegin(cocos2d::PhysicsContact& contact)
{
	if (_isGameOver) {

		return false;
	}

	PhysicsBody* a = contact.getShapeA()->getBody();
	PhysicsBody* b = contact.getShapeB()->getBody();

	if ((TOUCH_NODE_COLLISION_BITMASK == a->getCollisionBitmask() && ENEMY_COLLISION_BITMASK == b->getCollisionBitmask()) || (TOUCH_NODE_COLLISION_BITMASK == b->getCollisionBitmask() && ENEMY_COLLISION_BITMASK == a->getCollisionBitmask()))
	{
		CCLOG("HIHI");

		SkeletonAnimation* enemy = nullptr;

		(ENEMY_COLLISION_BITMASK == a->getCollisionBitmask()) ? enemy = (SkeletonAnimation*)a->getNode() : enemy = (SkeletonAnimation*)b->getNode();

		if (enemy) {
			
			auto fxAnim = SkeletonAnimation::createWithJsonFile(_touchEffectAnimationPath+".json", _touchEffectAnimationPath + ".atlas", OBJECT_SACLE_FACTOR);

			fxAnim->setAnimation(0, "animation", false);

			float delayTime = 0.6f;

			/*if (auto ani = fxAnim->findAnimation("animation")) {

				delayTime = ani->duration;

				CCLOG("aniTime:%f", delayTime);
			}*/

			fxAnim->setPosition(enemy->getPosition());

			this->addChild(fxAnim);

			fxAnim->runAction(Sequence::createWithTwoActions(DelayTime::create(delayTime), RemoveSelf::create()));

			enemy->removeFromParent();

			_score += 1;

			updateScore();
		}

	}
	else if ((TOUCH_NODE_COLLISION_BITMASK == a->getCollisionBitmask() && BO_CAP_COLLISION_BITMASK == b->getCollisionBitmask()) || (TOUCH_NODE_COLLISION_BITMASK == b->getCollisionBitmask() && BO_CAP_COLLISION_BITMASK == a->getCollisionBitmask())) {

		SOUND_MANAGER->playWrongEffect();

		SkeletonAnimation* boCap = nullptr;

		(BO_CAP_COLLISION_BITMASK == a->getCollisionBitmask()) ? boCap = (SkeletonAnimation*)a->getNode() : boCap = (SkeletonAnimation*)b->getNode();

		if (boCap) {

			//this->stopActionByTag(112);

			auto shakingAction = Sequence::create(
				MoveBy::create(0.08f, { 10,10 }),
				MoveBy::create(0.08f, { -10,-10 }),
				MoveBy::create(0.08f, { -10,0 }),
				MoveBy::create(0.08f, { +20,0 }),
				MoveBy::create(0.08f, { -10,0 }),
				nullptr);

			shakingAction->setTag(112);

			this->runAction(shakingAction);

			boCap->removeFromParent();

			_hp -= 1;

			updateHP();
		}
	}

	return true;
}

void JungleGameScene::onBackButtonClicked(cocos2d::Ref* sender)
{
	HELPER_MANAGER->disableButton(sender);

	SOUND_MANAGER->playClickEffect();

	auto scene = MainMenuScene::createScene();

	Director::getInstance()->replaceScene(scene);
}

void JungleGameScene::onPauseButtonClicked(cocos2d::Ref* sender)
{
	SOUND_MANAGER->playClickEffect();

	auto view = PauseLayer::createView();

	this->addChild(view,INT_MAX-1);

	this->onGamePause();
}

void JungleGameScene::gameOver()
{
	_isGameOver = true;

	this->enumerateChildren(StringUtils::format("//%s.*", "objectPause_"), [](Node* child) {

		if (child) {

			child->pauseSchedulerAndActions();
		}

		return false;
	});

	this->getEventDispatcher()->removeAllEventListeners();
	this->unscheduleAllCallbacks();
	this->unscheduleAllSelectors();
	this->stopAllActions();

	CCLOG("Gameover:%f", _timer);

	LeaderboardLayer::updateHighScore({ _score,(int)_timer });

	auto view = LeaderboardLayer::createView();

	view->setCloseButtonVisible(false);

	this->addChild(view, INT_MAX - 1);

	ANIMATION_MANAGER->transitionSlideIn(AnimationManager::Direction::LEFT, 0.25f, utils::findChild(view, "background"));
}

void JungleGameScene::update(float dt)
{
	if (_isGameOver) {
		return;
	}

	_timer += dt;
}

void JungleGameScene::updateLevel()
{
	if (_currentLevelID >= _levels.size()) {

		CCLOG("something wrong!!!");

		return;
	}

	auto levelConfig = _levels.at(_currentLevelID);

	this->runAction(Sequence::create(DelayTime::create(levelConfig._duration), CallFunc::create([=]() {

		this->stopActionByTag(SPAWN_ENEMIES_ACTION_TAG);

		if (auto lvBar = _levelBar->clone()) {

			auto text = utils::findChild<ui::Text*>(lvBar, "level_num");

			text->setString(StringUtils::format("%02d", _currentLevelID + 1));

			auto action = Sequence::create(EaseBackIn::create(MoveTo::create(2.0f, { _screenSize.width * 0.5f,_levelBar->getPosition().y })),
				CallFunc::create([=]() {

				SOUND_MANAGER->playShowingEffect();

				}),
				DelayTime::create(1.0f),
				MoveBy::create(2.0f, Vec2(-_screenSize.width * 1.5f, 0)),
				RemoveSelf::create(), CallFunc::create([=]() {

				std::vector<std::string> backgroundPaths = {
					"images/bgr_co6.png",
					"images/bgr_co5.png",
					"images/bgr_co4.png",
					"images/bgr_co3.png",
				};

				const std::string path = backgroundPaths.at(random(0, (int)backgroundPaths.size() - 1));

				_leftWall->loadTexture(path);
				_rightWall->loadTexture(path);

				std::vector<std::string> touchEffectPaths = {
					"animation/vfx_fire/fx_fire",
					"animation/vfx_electric/vfx_electric",
					"animation/vfx_smoke/fx_smoke"
				};

				_touchEffectAnimationPath = touchEffectPaths.at(random(0, (int)touchEffectPaths.size() - 1));

				_hp = MAX_HP;

				updateHP();

				_currentLevelID += 1;

				updateLevel();

			}), nullptr);

			action->setTag(2233);

			lvBar->setPosition(_levelBar->getPosition());

			lvBar->runAction(action);

			_levelBar->getParent()->addChild(lvBar);
		}
		else
		{
			_currentLevelID += 1;

			updateLevel();
		}

	}), nullptr));

	auto spawnEnemiesAction = RepeatForever::create(Sequence::create(DelayTime::create(levelConfig._enemyAppearancefrequency), CallFunc::create([=]() {

		auto enemies = _levels.at(_currentLevelID)._enemies;

		if (!enemies.empty()) {

			spwanEnemies(enemies.at(random(0, (int)enemies.size() - 1)), _levels.at(_currentLevelID)._enemySpeed);
		}

	}), nullptr));

	spawnEnemiesAction->setTag(SPAWN_ENEMIES_ACTION_TAG);

	this->runAction(spawnEnemiesAction);
}

void JungleGameScene::updateScore()
{
	if (_score <= 0) {

		return;
	}

	SOUND_MANAGER->playCoinEffect();

	if (auto scoreText = utils::findChild<ui::Text*>(this, "score_text")) {

		scoreText->setString(StringUtils::format("%02d", _score));

		scoreText->runAction(Sequence::createWithTwoActions(EaseBackIn::create(ScaleTo::create(0.25f, 1.5f)), EaseBackOut::create(ScaleTo::create(0.25f, 1.1f))));
	}
}

void JungleGameScene::updateHP()
{
	if (_hp <= 0) {

		gameOver();
	}

	if (auto hpText = utils::findChild<ui::Text*>(this, "hp_text")) {

		hpText->setString(StringUtils::format("%02d", _hp));

		hpText->runAction(Sequence::createWithTwoActions(EaseBackIn::create(ScaleTo::create(0.25f, 1.5f)), EaseBackOut::create(ScaleTo::create(0.25f, 1.1f))));
	}

	if (auto hpLoadingBar = utils::findChild<ui::LoadingBar*>(this, "hp_loading_bar")) {

		hpLoadingBar->setPercent(((float)_hp / (float)MAX_HP)*100.f);
	}
}

void JungleGameScene::spwanEnemies(JungleEnemyType type, float speed)
{
	std::string animPath = "animation/bocap_sau/bocap_sau";

	bool isTopToDown = random(0, 1);

	Vec2 physicBodyPosition = Vec2::ZERO;
	
	float scaleFactorSizeW = 1.0f;

	float scaleFactorSizeH = 1.0f;

	float scaleFactor = OBJECT_SACLE_FACTOR;

	int collisionBitMask = ENEMY_COLLISION_BITMASK;

	Action* customAction = nullptr;

	float minX = _leftWall->getPosition().x + _leftWall->getContentSize().width;

	float maxX = _rightWall->getPosition().x - _rightWall->getContentSize().width;

	switch (type)
	{
	case JungleEnemyType::BO_CAP: {

		collisionBitMask = BO_CAP_COLLISION_BITMASK;
		animPath = isTopToDown ? "animation/bocap_truoc/bocap_truoc" : "animation/bocap_sau/bocap_sau";

		auto action2 = TintBy::create(0.25f, -127, -255, -127);

		auto action2Back = action2->reverse();

		customAction = RepeatForever::create(Sequence::create(action2, action2Back, nullptr));
		break;
	}
	case JungleEnemyType::CHIM:
	{
		animPath = isTopToDown ? "animation/chim_truoc/chim_truoc":"animation/chim_sau/chim_sau";

		 minX = _leftWall->getPosition().x + _leftWall->getContentSize().width*0.25f;

		 maxX = _rightWall->getPosition().x - _rightWall->getContentSize().width * 0.25f;

		scaleFactor = 0.75f;
		break;
	}
	case JungleEnemyType::DUOI_UOI:{
		animPath = isTopToDown ? "animation/duoiuoi_truoc/duoiuoi_truoc":"animation/duoiuoi_sau/duoiuoi_sau";

		if (isTopToDown) {
			scaleFactorSizeH = 1.2f;
			physicBodyPosition = Vec2(0, 35.f / OBJECT_SACLE_FACTOR);
		}
		else {
			scaleFactorSizeH = 1.3f;
			physicBodyPosition = Vec2(0, 35.f / OBJECT_SACLE_FACTOR);
		}

		break;
	}
	case JungleEnemyType::GAU: {

		animPath = isTopToDown ? "animation/gau_truoc/gau_truoc":"animation/gau_sau/gau_sau";

		if (isTopToDown) {
			scaleFactorSizeH = 2.0f;
			physicBodyPosition = Vec2(0, 90.f);
		}
		else {
			scaleFactorSizeH = 1.5f;
			physicBodyPosition = Vec2(0, 55.f/ OBJECT_SACLE_FACTOR);
		}
		break;
	}
	case JungleEnemyType::HO: {

		animPath = isTopToDown ? "animation/ho_truoc/ho_truoc":"animation/ho_sau/ho_sau";

		if (isTopToDown) {
			physicBodyPosition = Vec2(0, 73.8461538f);
		}

		break;
	}
	default:
		break;
	}

	auto enemy = SkeletonAnimation::createWithJsonFile(animPath +".json", animPath + ".atlas", scaleFactor);

	enemy->setName("objectPause_" + std::to_string(random(1, 100000)));
	enemy->setAnimation(0, "animation", true);

	if (customAction) {
		enemy->runAction(customAction);
	}
	
	if (isTopToDown) {

		enemy->setPosition({ random(minX,maxX),_origin.y + _screenSize.height + enemy->getBoundingBox().size.height * 3 });

		enemy->runAction(Sequence::create(MoveBy::create(speed, { 0,-_origin.y -_screenSize.height - enemy->getBoundingBox().size.height * 5 }), CallFunc::create([=]() {
		
			if (collisionBitMask == ENEMY_COLLISION_BITMASK) {

				SOUND_MANAGER->playWrongEffect();

				_hp -= 1;

				updateHP();
			}
		
		}), RemoveSelf::create(), nullptr));

	}
	else
	{
		enemy->setPosition({ random(minX,maxX),_origin.y - enemy->getBoundingBox().size.height * 3 });

		enemy->runAction(Sequence::create(MoveBy::create(speed, { 0,_origin.y + _screenSize.height + enemy->getBoundingBox().size.height * 5 }), CallFunc::create([=]() {

			if (collisionBitMask == ENEMY_COLLISION_BITMASK) {

				SOUND_MANAGER->playWrongEffect();

				_hp -= 1;

				updateHP();
			}
		

		}), RemoveSelf::create(), nullptr));
	}

	PhysicsBody* enemyBody = PhysicsBody::createBox({ enemy->getBoundingBox().size.width* scaleFactorSizeW,enemy->getBoundingBox().size.height* scaleFactorSizeH });
	enemyBody->setContactTestBitmask(true);
	enemyBody->setCollisionBitmask(collisionBitMask);
	enemyBody->setDynamic(false);

	auto pos = enemyBody->getPositionOffset();

	enemyBody->setPositionOffset({ pos.x + physicBodyPosition.x * OBJECT_SACLE_FACTOR ,pos.y + physicBodyPosition.y* OBJECT_SACLE_FACTOR });

	enemy->setPhysicsBody(enemyBody);

	this->addChild(enemy);
}

void JungleGameScene::onGamePause()
{
	this->pauseSchedulerAndActions();

	this->enumerateChildren(StringUtils::format("//%s.*", "objectPause_"), [](Node* child) {

		if (child) {

			child->pauseSchedulerAndActions();

		}

		return false;
	});

	auto children = this->getChildren();

	for (auto child : children) {
		child->pauseSchedulerAndActions();
	}
}

void JungleGameScene::onGameResume()
{
	this->resumeSchedulerAndActions();

	this->enumerateChildren(StringUtils::format("//%s.*", "objectPause_"), [](Node* child) {

		if (child) {

			child->resumeSchedulerAndActions();
		}

		return false;
	});

	auto children = this->getChildren();

	for (auto child : children) {
		child->resumeSchedulerAndActions();
	}
}

cocos2d::ui::Widget::ccWidgetClickCallback JungleGameScene::onLocateClickCallback(const std::string& callBackName)
{
	std::unordered_map<std::string, ui::Widget::ccWidgetClickCallback> function_map =
	{
		CLICK_MAP(JungleGameScene, onBackButtonClicked),
		CLICK_MAP(JungleGameScene, onPauseButtonClicked),
	};

	if (function_map.find(callBackName) != function_map.end())
	{
		return function_map.at(callBackName);
	}

	return nullptr;
}
