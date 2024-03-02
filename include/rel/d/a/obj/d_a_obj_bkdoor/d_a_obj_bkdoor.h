#ifndef D_A_OBJ_BKDOOR_H
#define D_A_OBJ_BKDOOR_H

#include "d/bg/d_bg_s_movebg_actor.h"
#include "SSystem/SComponent/c_phase.h"
#include "dolphin/types.h"

class J3DModel;

class daObjBkDoor_c : public dBgS_MoveBgActor {
public:
    /* 80578D4C */ void initBaseMtx();
    /* 80578D88 */ void setBaseMtx();
    /* 80578E14 */ virtual int Create();
    /* 80578EA0 */ virtual int CreateHeap();
    /* 80578F20 */ int create1st();
    /* 80578FC0 */ void openCheck();
    /* 8057902C */ virtual int Execute(Mtx**);
    /* 805792E4 */ virtual int Draw();
    /* 80579388 */ virtual int Delete();

private:
    /* 0x5A0 */ request_of_phase_process_class mPhaseReq;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ csXyz field_0x5AC;
    /* 0x5B2 */ s16 field_0x5B2;
    /* 0x5B4 */ f32 field_0x5B4;
    /* 0x5B8 */ s32 field_0x5B8;
    /* 0x5BC */ u8 mResType;
    /* 0x5BD */ bool mOpenCheckDone;
    /* 0x5BE */ bool field_0x5BE;
};  // Size: 0x5C0

STATIC_ASSERT(sizeof(daObjBkDoor_c) == 0x5C0);

#endif /* D_A_OBJ_BKDOOR_H */
