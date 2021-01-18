#ifndef Z2SOUNDOBJMGR_H_
#define Z2SOUNDOBJMGR_H_

#include "dolphin/types.h"
#include "JSystem/JSupport/JSUList/JSUList.h"
#include "Z2AudioLib/Z2Creature/Z2Creature.h"

class Z2SoundObjMgr : protected JSUList<Z2CreatureEnemy> {
public:
    Z2SoundObjMgr();

    void setBattleInit();
    void setForceBattleArea(bool, u16, u16, u16);
    void setGhostEnemyState(u8);

    void deleteEnemyAll();

    bool isTwilightBattle();
    bool isForceBattle() { return mForceBattle; }

private:
    u8 unk0[2];

    u16 field_0xe;
    u16 field_0x10;
    u16 field_0x12;
    u8 field_0x14;
    u8 field_0x15;
    u8 field_0x16;
    u8 field_0x17;
    u8 field_0x18;
    u8 field_0x19;
    bool field_0x1a;
    bool mTwilightBattle;
    bool mForceBattle;

    u8 unk1[3];
};

extern Z2SoundObjMgr* lbl_80450B48;  // Z2SoundObjMgr sInstance

#endif // Z2SOUNDOBJMGR_H_