#include "SoundManager.h"
#include "cocos2d.h"
#include "audio/include/SimpleAudioEngine.h"

using namespace CocosDenshion;

USING_NS_CC;

void SoundManager::init()
{
	preloadSoundEffectAndMusic();
}

void SoundManager::playShowingTileEffect()
{
	if (isSoundEffectEnable())
	{
		SimpleAudioEngine::getInstance()->playEffect("sound/uncap.wav");
	}
}

void SoundManager::playCoinEffect()
{
	if (isSoundEffectEnable())
	{
		SimpleAudioEngine::getInstance()->playEffect("sound/coin.mp3");
	}
}

void SoundManager::playWrongEffect()
{
	if (isSoundEffectEnable())
	{
		SimpleAudioEngine::getInstance()->playEffect("sound/eff_ohoh.mp3");
	}
}

void SoundManager::playSelectEffect()
{
	if (isSoundEffectEnable())
	{
		SimpleAudioEngine::getInstance()->playEffect("sound/select_effect.wav");
	}
}

void SoundManager::playShowingEffect()
{
	if (isSoundEffectEnable())
	{
		SimpleAudioEngine::getInstance()->playEffect("sound/eff_win.mp3");
	}
}

void SoundManager::playClickEffect()
{
	if (isSoundEffectEnable()) 
	{
		SimpleAudioEngine::getInstance()->playEffect("sound/eff_click.mp3");
	}
}

void SoundManager::playConfirmEffect()
{
	if (isSoundEffectEnable())
	{
		SimpleAudioEngine::getInstance()->playEffect("sound/confirm.wav");
	}
}

void SoundManager::playDragonRoarEffect()
{
	if (isSoundEffectEnable())
	{
		SimpleAudioEngine::getInstance()->playEffect("sound/dragon_roar.mp3");
	}
}

void SoundManager::playMainMenuMusic()
{
	SimpleAudioEngine::getInstance()->playBackgroundMusic("sound/bg_game.mp3", true);

	if (!isMusicEffectEnable())
	{
		SimpleAudioEngine::getInstance()->pauseBackgroundMusic();
	}
}

void SoundManager::pauseAllBackgroundMusics()
{
	SimpleAudioEngine::getInstance()->pauseBackgroundMusic();
}

void SoundManager::pauseAllSoundEffects()
{
	SimpleAudioEngine::getInstance()->pauseAllEffects();
}

void SoundManager::resumeAllBackgroundMusics()
{
	SimpleAudioEngine::getInstance()->resumeBackgroundMusic();
}

void SoundManager::resumeAllSoundEffects()
{
	SimpleAudioEngine::getInstance()->resumeAllEffects();
}

void SoundManager::stopAllBackgroundMusics()
{
	SimpleAudioEngine::getInstance()->stopBackgroundMusic();
}

void SoundManager::stopAllSoundEffects()
{
	SimpleAudioEngine::getInstance()->stopAllEffects();
}

void SoundManager::preloadSoundEffectAndMusic()
{
	//background music
	SimpleAudioEngine::getInstance()->preloadBackgroundMusic("sound/bg_game.mp3");

	//

	SimpleAudioEngine::getInstance()->preloadEffect("sound/coin.mp3");
	SimpleAudioEngine::getInstance()->preloadEffect("sound/eff_ohoh.mp3");
	SimpleAudioEngine::getInstance()->preloadEffect("sound/eff_click.mp3");
	SimpleAudioEngine::getInstance()->preloadEffect("sound/eff_heyzo.mp3");
	
}

bool SoundManager::isSoundEffectEnable()
{
	return UserDefault::getInstance()->getBoolForKey("key_is_sound_on", true);
}

bool SoundManager::isMusicEffectEnable()
{
	return UserDefault::getInstance()->getBoolForKey("key_is_music_on", true);
}
