#ifndef D_A_OBJ_CRVGATE_H
#define D_A_OBJ_CRVGATE_H

#include "f_op/f_op_actor_mng.h"
#include "f_op/f_op_camera_mng.h"
#include "d/actor/d_a_obj_eff.h"
#include "d/d_bg_s_movebg_actor.h"
#include "d/d_cc_uty.h"

/**
 * @ingroup actors-objects
 * @class daObjCRVGATE_c
 * @brief Caravan Gate
 *
 * @details Caravan Gate at Arbiter's Grounds Exterior at King Bulblin's Tent.
 * The gate consists of two door objects that work as a pair. One door references
 * the other through the mpDoorPair pointer. The door will move when the player
 * touches it.
 * At the end of the fight, the player rides the bullbo and crashes into the door,
 * destroying it.
 */
class daObjCRVGATE_c : public dBgS_MoveBgActor {
public:
    /* 80BD0398 */ void initCcCylinder();
    /* 80BD0500 */ void setCcCylinder();
    /* 80BD069C */ int checkOpen();
    /* 80BD0880 */ void actionStartEvent();
    /* 80BD0978 */ void actionWaitEvent();
    /* 80BD0A64 */ void Demo_Set();
    /* 80BD0B7C */ void SetOpen();
    /* 80BD0B88 */ void actionDemoEvent();
    /* 80BD0D28 */ void event_proc_call();
    /* 80BD0D90 */ int CheckVec();
    /* 80BD0E1C */ void KeyVib();
    /* 80BD0F9C */ void DoorVib();
    /* 80BD10C0 */ void VibStop();
    /* 80BD10D0 */ void CloseVibration();
    /* 80BD1110 */ void CloseAction();
    /* 80BD18E0 */ void OpenAction();
    /* 80BD21E4 */ void HakaiMotion();
    /* 80BD22C8 */ void DoorAction();
    /* 80BD2338 */ void B_CloseAction();
    /* 80BD245C */ void SetB_Close();
    /* 80BD2528 */ void setBaseMtx();
    /* 80BD2670 */ int CreateHeap();
    /* 80BD2758 */ void SetDoor();
    /* 80BD28C0 */ int create();
    /* 80BD2E88 */ int Create();
    /* 80BD2ECC */ int Execute(Mtx**);
    /* 80BD2FB8 */ int Draw();
    /* 80BD3074 */ int Delete();

private:
    /* 0x5A0 */ s32 mEventID;
    /* 0x5A4 */ bool mFlagGateClosed;
    /* 0x5A5 */ bool field_0x5a5;
    /* 0x5A6 */ u8 field_0x5a6[2];
    /* 0x5A8 */ s16 mDoorTargetAngle;
    /* 0x5AA */ bool mFlagDemoEventPlay;
    /* 0x5AB */ u8 mDestructionCount;
    /* 0x5AC */ u8 mKeyParam;
    /* 0x5AD */ bool mEventFlag;
    /* 0x5AE */ bool mFlagDoorStuck;
    /* 0x5AF */ u8 mStatus;
    /* 0x5B0 */ bool mDoorPairLoaded;
    /* 0x5B1 */ bool mFlagDoorMove;
    /* 0x5B4 */ daObjCRVGATE_c* mpDoorPair;
    /* 0x5B8 */ f32 mFovY;
    /* 0x5BC */ s16 field_0x5bc;
    /* 0x5C0 */ cXyz mCamEye;
    /* 0x5CC */ cXyz mCamCenter;
    /* 0x5D8 */ csXyz mDoorOpenAngle;
    /* 0x5E0 */ cXyz mPos;
    /* 0x5EC */ cXyz mPosAccel;
    /* 0x5F8 */ cXyz mPosTmp;
    /* 0x604 */ csXyz field_0x604;
    /* 0x60A */ S16Vec mMoveAngle;
    /* 0x610 */ S16Vec mDoorVib;
    /* 0x618 */ f32 mMinHeight;
    /* 0x61C */ cXyz mXyzSph[3];
    /* 0x640 */ fpc_ProcID mDoorPairProcID;
    /* 0x644 */ s16 mDoorY;
    /* 0x646 */ s16 mDoorAngle;
    /* 0x648 */ s16 mDoorSwingTargetAngle;
    /* 0x64A */ s16 mDoorStep;
    /* 0x64C */ Z2SoundObjSimple mSound;
    /* 0x66C */ s16 field_0x66c;
    /* 0x66E */ u8 field_0x66e[6];
    /* 0x674 */ J3DModel* mpModelGate;
    /* 0x678 */ J3DModel* mpModelKey;
    /* 0x67C */ request_of_phase_process_class mPhaseReq;
    /* 0x684 */ dBgS_AcchCir mAcchCir;
    /* 0x6C4 */ dBgS_ObjAcch mAcch;
    /* 0x89C */ dCcD_Stts mStts;
    /* 0x8D8 */ dCcD_Sph mSph[3];
    /* 0xC80 */ dCcD_Cyl mCyl;
    /* 0xDBC */ dCcU_AtInfo mAtInfo;
    /* 0xDE0 */ u8 field_0xde0[4];
};

STATIC_ASSERT(sizeof(daObjCRVGATE_c) == 0xde4);

#endif /* D_A_OBJ_CRVGATE_H */
