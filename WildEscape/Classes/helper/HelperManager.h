//
//  Created by NguyenHoangThienPhuoc on 24/03/2020.
//
#pragma once
#include "CocostudioMacro.h"
#include "BaseSingleton.h"
#include "cocos2d.h"
#include "json/rapidjson.h"
#include "json/document.h"
#include "json/writer.h"
#include "json/stringbuffer.h"

using namespace cocos2d;
using namespace cocos2d::ui;

#define HELPER_MANAGER HelperManager::GetInstance()

class HelperManager :public BaseSingleton<HelperManager>
{
public:

    template<typename T>
    void shuffle(std::vector<T>& v) {
        static std::random_device mj_rd;
        static std::mt19937 mj_g(mj_rd());
        std::shuffle(v.begin(), v.end(), mj_g);
    }

	void disableButton(cocos2d::Ref* sender);

	void showWaitingLayer();

    float lerp(float a, float b, float x, float y, float i);

private:
    
};


