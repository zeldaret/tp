#ifndef D_A_NPC_DU_H
#define D_A_NPC_DU_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class npc_du_class
 * @brief Duck
 *
 * @details
 *
*/

class npc_du_class {
public:
    /* 0x000 */ fopEn_enemy_c actor;
    /* 0x568 */ request_of_phase_process_class mPhase;
    /* 0x5B4 */ u8 arg0;
    /* 0x5B5 */ u8 arg1;
    /* 0x5B8 */ f32 mPlayerDist;
    /* 0x5BC */ s16 mPlayerAngleY;
    /* 0x5C0 */ mDoExt_McaMorf* mpMorf;
    /* 0x5C4 */ mDoExt_btpAnm* mpBtpAnm;
    /* 0x5C8 */ int mAnm;
    /* 0x5CC */ s16 mFrameCounter;
    /* 0x5CE */ s16 mAction;
    /* 0x5D0 */ s16 mActionMode;
    /* 0x5D4 */ u32 mShadowKey;
    /* 0x5D8 */ s16 mTimers[4];
    /* 0x5E0 */ s16 mUnkTimer;
    /* 0x5E2 */ s16 mNeck2XRot;
    /* 0x5E4 */ s16 mNeck2XRotTarget;
    /* 0x5E8 */ dBgS_AcchCir mAcchCir;
    /* 0x628 */ dBgS_ObjAcch mBgc;
    /* 0x800 */ s8 mSwimFlag;
    /* 0x804 */ dCcD_Stts mStts;
    /* 0x840 */ dCcD_Sph mSph;
    /* 0x978 */ s8 mActionTimer;
    /* 0x97A */ s16 mCurrentAngleYTarget;
    /* 0x97C */ f32 mGroundCross;
    /* 0x980 */ s8 field_0x980;
    /* 0x982 */ s16 field_0x982;
    /* 0x984 */ s16 mMsgFNo;
    /* 0x988 */ dMsgFlow_c mFlow;
    /* 0x9D4 */ u32 mHamonPrtcl;
    /* 0x9D8 */ u8 field_0x9d8[0x9dc - 0x9d8];
    /* 0x9DC */ Z2SoundObjSimple mSound;
    /* 0x9FC */ u8 mIsFirstSpawn;
};

STATIC_ASSERT(sizeof(npc_du_class) == 0xa00);

#endif /* D_A_NPC_DU_H */
