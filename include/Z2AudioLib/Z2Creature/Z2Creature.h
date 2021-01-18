#ifndef Z2CREATURE_H_
#define Z2CREATURE_H_

class Z2Creature {
public:
	Z2Creature();

	virtual void deleteObject();
	virtual void setSoundStarter();
	virtual void framework();
	virtual void startCreatureSound();
	virtual void startCreatureSoundLevel();
	virtual void startCreatureVoice();
	virtual void startCreatureVoiceLevel();
	virtual void startCreatureExtraSound();
	virtual void startCreatureExtraSoundLevel();
	virtual void startCollisionSE();
};

class Z2CreatureEnemy : public Z2Creature {

};

#endif // Z2CREATURE_H_