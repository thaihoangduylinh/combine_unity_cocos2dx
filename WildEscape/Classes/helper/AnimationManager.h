#pragma once
#include "BaseSingleton.h"
#include "CocostudioMacro.h"

USING_NS_CC;

#define ANIMATION_MANAGER AnimationManager::GetInstance()

class AnimationManager : public BaseSingleton<AnimationManager>
{

public:
	
	enum class Direction {
		LEFT,
		RIGHT,
		TOP,
		BOTTOM
	};

	enum class ActionType {
		SHOW,
		HIDE
	};

	cocos2d::Animation* createAnimation(const char* prefixName, int start, int end, float delay, std::string lastFrame);

	cocos2d::Animation* createAnimationWithLoop(const char* prefixName, int start, int end, float delay);

	cocos2d::Animation* createAnimation(const char* prefixName, int start, int end, float delay, int loop = -1);
	
private: //private functions 


public:
	
	AnimationManager();

	~AnimationManager();

	virtual bool init();

	void zoomInEffect(Node *i_node,std::function<void()> i_callback = nullptr);

	void zoomOutEffect(Node *i_node, std::function<void()> i_callback = nullptr);

	void fadeInEffect(Node* i_node, std::function<void()> i_callback = nullptr, float duration = 0.25f);

	void fadeInEffect(std::vector<Node*> i_nodes, std::function<void()> i_callback = nullptr, float duration = 0.25f);

	void moveLeftEffect(Node *i_node, std::function<void()> i_callback = nullptr,float duration = 0.3f);

	void zoomInZoomOutEffect(Node *i_node, std::function<void()> i_callback = nullptr, float duration = 0.125f);

	void zoomInZoomOutEffect(std::vector<Node*> i_nodes, std::function<void()> i_callback = nullptr, float duration = 0.125f);

	void fadeInAndZoomInEffectForNodes(std::vector<Node*> i_nodes,float fadeInZommInDuration = 0.125f, float fadeInDurationBetweenItems = 0.5f, std::function<void()> i_callback = nullptr);

	void transitionSlideIn(Direction i_direction, float i_duration, std::vector<Node*> i_nodes, std::function<void()> i_callback = nullptr);

	void transitionSlideIn(Direction i_direction, float i_duration, std::vector<std::pair<std::vector<Node*>, float>> i_nodesAndDelaytime, std::function<void()> i_callback = nullptr);

	void transitionSlideIn(Direction i_direction, float i_duration, Node* i_node, std::function<void()> i_callback = nullptr);

	void transitionSlideOut(Direction i_direction, float i_duration, std::vector<Node*> i_nodes, std::function<void()> i_callback = nullptr);
	
	void transitionSlideOut(Direction i_direction, float i_duration, std::vector<std::pair<std::vector<Node*>, float>> i_nodesAndDelaytime, std::function<void()> i_callback = nullptr);

	void transitionSlideOut(Direction i_direction, float i_duration, Node* i_node, std::function<void()> i_callback = nullptr);

	void popupCustomAnimation(cocos2d::Node* popupBackground, ActionType actionType,float actionTime, std::function<void()> callback = nullptr);

private:

	cocos2d::Size _screenSize;

	cocos2d::Vec2 _origin;
};

