#ifndef Z2SOUNDOBJMGR_H
#define Z2SOUNDOBJMGR_H

#include "JSystem/JAudio2/JASGadget.h"
#include "JSystem/JSupport/JSUList.h"

class Z2CreatureEnemy;

struct Z2EnemyArea {
    /* 0x00 */ u8 field_0x0;
    /* 0x02 */ u16 field_0x2;
    /* 0x04 */ u16 field_0x4;
    /* 0x06 */ u16 field_0x6;
};

enum Z2EnemyID {
    Z2_ENEMY_ID_0,
};

class Z2SoundObjMgr : public JASGlobalInstance<Z2SoundObjMgr>, protected JSUList<Z2CreatureEnemy> {
public:
    Z2SoundObjMgr();
    void setForceBattleArea(bool, u16, u16, u16);
    void searchEnemy();
    void setGhostEnemyState(u8);
    u8 getEnemyID(char const*, JSULink<Z2CreatureEnemy>*);
    void setBattleInit();
    bool checkBattleFinish();
    void deleteEnemyAll();
    bool removeEnemy(JSULink<Z2CreatureEnemy>*);
    u8 isTwilightBattle();

    bool isForceBattle() { return mForceBattle; }
    JSUList<Z2CreatureEnemy>* getEnemyList() { return this; }

private:
    /* 0x0C */ Z2EnemyArea mEnemyArea;
    /* 0x14 */ u8 field_0x14;
    /* 0x15 */ u8 mEnemyNumNear;
    /* 0x16 */ u8 field_0x16;
    /* 0x17 */ u8 mEnemyNumVeryFar;
    /* 0x18 */ u8 field_0x18;
    /* 0x19 */ u8 mGhostEnemyState;
    /* 0x1A */ u8 field_0x1a;
    /* 0x1B */ u8 mTwilightBattle;
    /* 0x1C */ bool mForceBattle;
};  // Size = 0x20

inline Z2SoundObjMgr* Z2GetSoundObjMgr() {
    return JASGlobalInstance<Z2SoundObjMgr>::getInstance();
}

#endif /* Z2SOUNDOBJMGR_H */
