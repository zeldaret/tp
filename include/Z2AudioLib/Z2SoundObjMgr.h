#ifndef Z2SOUNDOBJMGR_H
#define Z2SOUNDOBJMGR_H

#include "JSystem/JSupport/JSUList.h"
#include "Z2AudioLib/Z2Creature.h"
#include "dolphin/types.h"

class Z2SoundObjMgr : protected JSUList<Z2CreatureEnemy> {
public:
    Z2SoundObjMgr();
    void setForceBattleArea(bool, u16, u16, u16);
    void searchEnemy();
    void setGhostEnemyState(u8);
    void getEnemyID(char const*, JSULink<Z2CreatureEnemy>*);
    void setBattleInit();
    void checkBattleFinish();
    void deleteEnemyAll();
    void removeEnemy(JSULink<Z2CreatureEnemy>*);
    bool isTwilightBattle();

    bool isForceBattle() { return mForceBattle; }

private:
    /* 0x0C */ u8 field_0xc[2];
    /* 0x0E */ u16 field_0xe;
    /* 0x10 */ u16 field_0x10;
    /* 0x12 */ u16 field_0x12;
    /* 0x14 */ u8 field_0x14;
    /* 0x15 */ u8 mEnemyNumNear;
    /* 0x16 */ u8 field_0x16;
    /* 0x17 */ u8 mEnemyNumVeryFar;
    /* 0x18 */ u8 field_0x18;
    /* 0x19 */ u8 mGhostEnemyState;
    /* 0x1A */ bool field_0x1a;
    /* 0x1B */ bool mTwilightBattle;
    /* 0x1C */ bool mForceBattle;
};  // Size = 0x20

/**
 * this is supposed to be:
 * JASGlobalInstance<Z2SoundObjMgr>::sInstance
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>
 */
extern Z2SoundObjMgr* data_80450B48;

#endif /* Z2SOUNDOBJMGR_H */
