#ifndef D_A_OBJ_CRVGATE_H
#define D_A_OBJ_CRVGATE_H

#include "SSystem/SComponent/c_phase.h"
#include "d/d_bg_s_acch.h"
#include "d/d_bg_s_movebg_actor.h"
#include "d/d_cc_d.h"

/**
 * @ingroup actors-objects
 * @class daObjCRVGATE_c
 * @brief Caravan Gate
 *
 * @details
 *
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
    /* 80BD2ECC */ int Execute(f32 (**)[3][4]);
    /* 80BD2FB8 */ int Draw();
    /* 80BD3074 */ int Delete();

private:
    /* 0x5A0 */ int mEventID;
    /**/ bool mAudioCloseFlag;
    /**/ bool mUninitFlag;
    /* 0x5A6 */ u8 field_0x5a6[2];
    /**/ s16 mAction;
    /**/ bool mDemoEventPlay;
    /**/ u8 mDoorCnt;
    /**/ u8 mFlagSetDoor;
    /**/ bool mEventFlag;
    /**/ bool mFlagDoorStill;
    /**/ u8 mClosed;
    /**/ bool mDoorLocated;
    /**/ bool mDoorOpen;
    /* 0x5B2 */ u8 field_0x5b2[2];
    /**/ daObjCRVGATE_c* mpDoor;
    /**/ float mFovX;
    /**/ s16 mFovY;
    /**/ cXyz mCamEye;
    /**/ cXyz mCamCenter;
    /* 0x5D8 */ csXyz mCloseAngle;
    /* 0x5DE */ u8 field_0x5de[2];
    /**/ cXyz mPos1;
    /**/ cXyz mPos2;
    /**/ cXyz mPos3;
    /* 0x604 */ u8 field_0x604[6];
    /**/ s16 mChaseAngle1;
    /**/ s16 mChaseAngle2;
    /**/ s16 mChaseAngle3;
    /* 0x610 */ csXyz mDoorVib;
    /* 0x616 */ u8 field_0x616[2];
    /**/ float mMinHeight;
    /* 0x61C */ cXyz mXyzSph[3];
    /**/ s32 mDoorChild;
    /**/ s16 mDoorY;
    /**/ s16 mCylY;
    /* 0x648 */ s16 mSomeDoorAngle1;
    /**/ s16 mSomeDoorAngle2;
    /**/ Z2SoundObjSimple mSoundObj;
    /**/ s16 mCnt;
    /**/ u8 field_0x66e[6];
    /**/ J3DModel* mpModelGate;
    /**/ J3DModel* mpModelKey;
    /* 0x67C */ request_of_phase_process_class mPhaseReq;
    /**/ dBgS_AcchCir mAcchCir;
    /**/ dBgS_ObjAcch mAcch;
    /**/ dCcD_Stts mStts;
    /* 0x8D8 */ dCcD_Sph mSph[3];    
    /* 0xC80 */ dCcD_Cyl mCyl;
    /* 0xDBC */ u8 field_0xdbc[40];
};

STATIC_ASSERT(sizeof(daObjCRVGATE_c) == 0xde4);


#endif /* D_A_OBJ_CRVGATE_H */
