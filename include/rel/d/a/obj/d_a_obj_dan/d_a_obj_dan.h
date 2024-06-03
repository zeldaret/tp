#ifndef D_A_OBJ_DAN_H
#define D_A_OBJ_DAN_H

#include "SSystem/SComponent/c_phase.h"
#include "Z2AudioLib/Z2Creature.h"
#include "d/bg/d_bg_s_acch.h"
#include "d/cc/d_cc_d.h"
#include "d/a/d_a_player.h"
#include "d/d_insect.h"

/**
 * @ingroup actors-objects
 * @class daObjDAN_c
 * @brief Insect - Pillbug
 *
 * @details
 *
 */
class daObjDAN_c : public dInsect_c {
public:
    /* 80BDA5B4 */ void InitCcSph();
    /* 80BDA620 */ void SetCcSph();
    /* 80BDA698 */ int CreateHeap();
    /* 80BDAA3C */ void SpeedSet();
    /* 80BDAA9C */ void LinkChk();
    /* 80BDAB14 */ void MoveAction();
    /* 80BDAC10 */ void DamageAction();
    /* 80BDAFDC */ void Action();
    /* 80BDB074 */ void checkGroundPos();
    /* 80BDB0D8 */ void Insect_Release();
    /* 80BDB0E8 */ void Z_BufferChk();
    /* 80BDB264 */ void ParticleSet();
    /* 80BDB388 */ void ObjHit();
    /* 80BDB4E0 */ void BoomChk();
    /* 80BDB62C */ int Execute();
    /* 80BDB928 */ int Delete();
    /* 80BDB990 */ void setBaseMtx();
    /*  inline  */ inline int Draw();
    /* 80BDBB0C */ bool CreateChk();
    /* 80BDBCB8 */ cPhs__Step create();

private:
    /* 0x590 */ dCcD_Stts mCcStts;
    /* 0x5CC */ dCcD_Sph mCcSph;
    /* 0x704 */ daPy_boomerangMove_c mBoomerangMove;
    /* 0x710 */ dBgS_GndChk mGndChk;
    /* 0x764 */ f32 mGroundH;
    /* 0x768 */ u8 mAction;
    /* 0x769 */ u8 mMode;
    /* 0x76A */ s16 mTimer[3];
    /* 0x770 */ f32 mTargetSpeed;
    /* 0x774 */ u8 field_0x774[4];
    /* 0x778 */ s16 mTargetAngleY;
    /* 0x77A */ u8 field_0x77a[0x10];
    /* 0x78A */ s16 field_0x78a;
    /* 0x78C */ u8 field_0x78c[4];
    /* 0x790 */ mDoExt_brkAnm* mpBrkAnm;
    /* 0x794 */ mDoExt_btkAnm* mpBtkAnm;
    /* 0x798 */ f32 mScreenZ;
    /* 0x79C */ u32 mBufferZ;
    /* 0x7A0 */ f32 field_0x7a0;
    /* 0x7A4 */ f32 mParticleScale;
    /* 0x7A8 */ u8 mLocation;
    /* 0x7A9 */ bool mBoomerangHit;
    /* 0x7AC */ int mBounceCount;
    /* 0x7B0 */ Z2Creature mCreatureSound;
    /* 0x840 */ u8 field_0x840[4];
    /* 0x844 */ mDoExt_McaMorfSO* mpMorf;
    /* 0x848 */ dBgS_AcchCir mAcchCir;
    /* 0x888 */ dBgS_ObjAcch mAcch;
    /* 0xA60 */ request_of_phase_process_class mPhase;
    /* 0xA68 */ bool mHIOInit;

    enum Action {
        /* 1 */ ACT_MOVE = 1,
        /* 2 */ ACT_DAMAGE,
    };
};

STATIC_ASSERT(sizeof(daObjDAN_c) == 0xa6c);

class daObj_DanHIO_c {
public:
    /* 80BDA58C */ daObj_DanHIO_c();
    /* 80BDC2F0 */ virtual ~daObj_DanHIO_c() {}

    /* 0x4 */ s8 field_0x4;
    /* 0x8 */ f32 mScaleFemale;
    /* 0xC */ f32 mScaleMale;
};

STATIC_ASSERT(sizeof(daObj_DanHIO_c) == 0x10);

#endif /* D_A_OBJ_DAN_H */
