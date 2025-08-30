#ifndef D_A_OBJ_TOMBO_H
#define D_A_OBJ_TOMBO_H

#include "JSystem/JHostIO/JORReflexible.h"
#include "d/actor/d_a_player.h"
#include "d/d_cc_d.h"
#include "d/d_insect.h"

/**
 * @ingroup actors-objects
 * @class daObjTOMBO_c
 * @brief Insect - Dragonfly (Tonbo)
 *
 * @details
 *
 */
class daObjTOMBO_c : public dInsect_c {
public:
    enum Action {
        ACTION_WAIT,
        ACTION_MOVE,
        ACTION_LINK,
    };

    /* 80D19200 */ void InitCcSph();
    /* 80D1926C */ void SetCcSph();
    /* 80D192E4 */ int CreateHeap();
    /* 80D19658 */ void WaitAction();
    /* 80D19744 */ void SpeedSet();
    /* 80D19834 */ bool CheckWater();
    /* 80D199F4 */ void CheckGround();
    /* 80D19B48 */ void CheckWall();
    /* 80D19C34 */ void SearchLink();
    /* 80D19E48 */ void LinkAction();
    /* 80D1A138 */ void MoveAction();
    /* 80D1A280 */ void Action();
    /* 80D1A3EC */ void ShopAction();
    /* 80D1A514 */ void Insect_Release();
    /* 80D1A524 */ void ParticleSet();
    /* 80D1A648 */ void BoomChk();
    /* 80D1A904 */ int Execute();
    /* 80D1AB20 */ void ObjHit();
    /* 80D1AC84 */ void Z_BufferChk();
    /* 80D1AE00 */ int Delete();
    /* 80D1AE68 */ void setBaseMtx();
    /* 80D1AFC8 */ bool CreateChk();
    /* 80D1B174 */ int create();

    inline int Draw();

private:
    /* 0x590 */ dCcD_Stts mStts;
    /* 0x5CC */ dCcD_Sph mSph;
    /* 0x704 */ daPy_boomerangMove_c mBoomerangMove;
    /* 0x710 */ bool mIsHitByBoomerang;
    /* 0x711 */ u8 mAction;
    /* 0x712 */ u8 field_0x712;
    /* 0x714 */ s16 field_0x714[2];
    /* 0x718 */ s16 field_0x718;
    /* 0x71C */ f32 field_0x71c;
    /* 0x720 */ f32 field_0x720;
    /* 0x724 */ s16 field_0x724;
    /* 0x726 */ u8 field_0x726[0x73c - 0x726];
    /* 0x73C */ cXyz field_0x73c;
    /* 0x748 */ mDoExt_brkAnm* mBrk;
    /* 0x74C */ mDoExt_btkAnm* mBtk;
    /* 0x750 */ f32 field_0x750;
    /* 0x754 */ u32 field_0x754;
    /* 0x758 */ f32 mParticleScale;
    /* 0x75C */ u8 field_0x75c;
    /* 0x760 */ Z2Creature mCreature;
    /* 0x7F0 */ dBgS_AcchCir mAcchCir;
    /* 0x830 */ mDoExt_McaMorfSO* mpMorf;
    /* 0x834 */ dBgS_ObjAcch mAcch;
    /* 0xA0C */ request_of_phase_process_class mPhase;
    /* 0xA14 */ bool mIsHIOOwner;
};

STATIC_ASSERT(sizeof(daObjTOMBO_c) == 0xa18);

#endif /* D_A_OBJ_TOMBO_H */
