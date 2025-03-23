#ifndef D_A_OBJ_SEKIDOOR_H
#define D_A_OBJ_SEKIDOOR_H

#include "d/d_bg_s_movebg_actor.h"
#include "SSystem/SComponent/c_phase.h"
#include "d/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObj_SekiDoor_c
 * @brief Stone Door
 *
 * @details
 *
 */
class daObj_SekiDoor_c : public dBgS_MoveBgActor {
public:
    /* 80CCD02C */ int create();
    /* 80CCD154 */ virtual int CreateHeap();
    /* 80CCD1F0 */ virtual int Create();
    /* 80CCD23C */ virtual int Delete();
    /* 80CCD290 */ virtual int Execute(Mtx**);
    /* 80CCD538 */ virtual int Draw();
    /* 80CCD5DC */ void evtSkip();
    /* 80CCD64C */ void setPrtcls();
    /* 80CCD810 */ void initBaseMtx();
    /* 80CCD84C */ void setBaseMtx();

    u16 getBitSW() { return (fopAcM_GetParam(this) & 0xff); }
    void open() { mOpening = true; }
    bool chkDestroy() { return (mDestroyed == true); }

private:
    /* 0x5A0 */ s32 field_0x5A0;
    /* 0x5A4 */ request_of_phase_process_class mPhaseReq;
    /* 0x5AC */ J3DModel* mpModel;
    /* 0x5B0 */ csXyz mRotation;
    /* 0x5B8 */ int mFrameCounter; 
    /* 0x5BC */ float mDoorPosY;
    /* 0x5C0 */ s16 mOpenSpeed;
    /* 0x5C4 */ u32 mpEmitters[4];
    /* 0x5D4 */ u8 mDestroyed;
    /* 0x5D5 */ u8 mOpening;
    /* 0x5D6 */ u8 mBitSW;
};

STATIC_ASSERT(sizeof(daObj_SekiDoor_c) == 0x5d8);

class daObj_SekiDoor_Param_c {
public:
    /* 80CCD9AC */ virtual ~daObj_SekiDoor_Param_c() {};

    static u8 const m;
};


#endif /* D_A_OBJ_SEKIDOOR_H */
