#ifndef D_A_OBJ_GOMIKABE_H
#define D_A_OBJ_GOMIKABE_H

#include "d/d_bg_s_acch.h"
#include "d/d_bg_s_movebg_actor.h"
#include "d/d_cc_d.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjGOMIKABE_c
 * @brief Garbage Wall
 *
 * @details
 *
 */
class daObjGOMIKABE_c : public dBgS_MoveBgActor {
public:
    enum Action {
        ACTION_WAIT,
        ACTION_BREAK,
    };

    /* 80BFE244 */ void initCcCylinder();
    /* 80BFE2CC */ void SetCcCyl();
    /* 80BFE47C */ void WaitAction();
    /* 80BFE4C4 */ void BreakChk();
    /* 80BFE52C */ void BreakSet();
    /* 80BFEA60 */ void getWaterStream(cXyz&, cXyz&, f32);
    /* 80BFEB90 */ void SpeedSet();
    /* 80BFED54 */ void BreakAction();
    /* 80BFED74 */ void CheckCull();
    /* 80BFEE24 */ bool checkViewArea(cXyz);
    /* 80BFEEA8 */ void Action();
    /* 80BFEF20 */ void setBaseMtx();
    /* 80BFEF84 */ void setBaseMtx2();
    /* 80BFF064 */ int CreateHeap();
    /* 80BFF164 */ int create();
    /* 80BFF8D8 */ int Create();
    /* 80BFF938 */ int Execute(Mtx**);
    /* 80BFFA00 */ int Draw();
    /* 80BFFB1C */ int Delete();

private:
    /* 0x05A0 */ u8 mSwBit;
    /* 0x05A1 */ u8 mAction;
    /* 0x05A2 */ u8 field_0x5a2;
    /* 0x05A4 */ cXyz mBaseScale;
    /* 0x05B0 */ cXyz mBreakPositions[4];
    /* 0x05B0 */ cXyz mBreakOldPositions[4];
    /* 0x0610 */ csXyz mBreakAngles[4];
    /* 0x0628 */ cXyz field_0x628[4];
    /* 0x0658 */ cXyz mBreakSpeeds[4];
    /* 0x0688 */ csXyz mBreakRotationSpeeds[4];
    /* 0x06A0 */ cXyz field_0x6a0[4];
    /* 0x06D0 */ u8 field_0x6d0[4];
    /* 0x06D4 */ f32 mStreamScales[4];
    /* 0x06E4 */ int field_0x6e4;
    /* 0x06E8 */ dBgS_GndChk mGndChk;
    /* 0x073C */ dBgS_AcchCir mAcchCirs[4];
    /* 0x083C */ dBgS_ObjAcch mAcchs[4];
    /* 0x0F9C */ J3DModel* mModel;
    /* 0x0FA0 */ J3DModel* mBreakModels[4];
    /* 0x0FB0 */ request_of_phase_process_class mPhase;
    /* 0x0FB8 */ dCcD_Stts mStts;
    /* 0x0FF4 */ dCcD_Sph mSphs[3];
    /* 0x139C */ u8 field_0x139c[0x13c0 - 0x139c];
    /* 0x13C0 */ bool mIsHIOOwner;
};

STATIC_ASSERT(sizeof(daObjGOMIKABE_c) == 0x13c4);

class daObjGOMIKABE_HIO_c : public JORReflexible {
public:
    /* 80BFE22C */ daObjGOMIKABE_HIO_c();
    /* 80BFFB74 */ virtual ~daObjGOMIKABE_HIO_c() {}

    void genMessage(JORMContext* ctx);

    /* 0x04 */ s8 mId;
};


#endif /* D_A_OBJ_GOMIKABE_H */
