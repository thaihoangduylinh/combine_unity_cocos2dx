#pragma once
#include "BaseSingleton.h"

#define SOUND_MANAGER SoundManager::GetInstance()

class SoundManager : public BaseSingleton<SoundManager>
{
public:

	 void init();

	 void playShowingTileEffect();

	 void playCoinEffect();

	 void playWrongEffect();

	 void playSelectEffect();

	 void playShowingEffect();

	 void playClickEffect();

	 void playConfirmEffect();

	 void playDragonRoarEffect();
	 
	 void playMainMenuMusic();

	 void pauseAllBackgroundMusics();

	 void pauseAllSoundEffects();

	 void resumeAllBackgroundMusics();

	 void resumeAllSoundEffects();

	 void stopAllBackgroundMusics();

	 void stopAllSoundEffects();

	 void preloadSoundEffectAndMusic();

	 bool isSoundEffectEnable();

	 bool isMusicEffectEnable();
};