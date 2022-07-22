#pragma once
#include "cocos2d.h"

template<typename T>
class BaseSingleton
{
protected:
	inline explicit BaseSingleton<T>() {}
	virtual ~BaseSingleton() {}

private:
	inline BaseSingleton(const BaseSingleton&) {}
	inline BaseSingleton& operator=(const BaseSingleton&) {}
public:
	inline static void CreateInstance()
	{
		if (ms_pInstance == nullptr)
		{
			ms_pInstance = new T;
		}
	}

	inline static T* GetInstance()
	{
		CreateInstance();

		return ms_pInstance;
	}

	inline static void DestroyInstance()
	{
		if (ms_pInstance)
		{
			delete ms_pInstance;
			ms_pInstance = nullptr;
		}
	}

private:
	static T* ms_pInstance;
};

template<typename T>
T* BaseSingleton<T>::ms_pInstance = nullptr;