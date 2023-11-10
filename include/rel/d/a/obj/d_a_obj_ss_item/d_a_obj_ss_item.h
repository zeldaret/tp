#ifndef D_A_OBJ_SS_ITEM_H
#define D_A_OBJ_SS_ITEM_H

#include "SSystem/SComponent/c_phase.h"
#include "d/a/d_a_obj_ss_base.h"
#include "d/bg/d_bg_s_acch.h"
#include "d/cc/d_cc_d.h"
#include "d/msg/d_msg_flow.h"
#include "dolphin/types.h"

class daObj_SSItem_c;
typedef int (daObj_SSItem_c::*ProcessFunc)(void*);

class daObj_SSItem_c : public daObj_SSBase_c {
public:
    /* 80CE6C18 */ ~daObj_SSItem_c();
    /* 80CE6E68 */ int create();
    /* 80CE7298 */ BOOL CreateHeap();
    /* 80CE7358 */ int Delete();
    /* 80CE738C */ int Execute();
    /* 80CE7610 */ int Draw();
    /* 80CE7758 */ static int createHeapCallBack(fopAc_ac_c* i_this);
    /* 80CE7778 */ void setSoldOut();
    /* 80CE77CC */ u32 getProcessID();
    /* 80CE77F8 */ daObj_SSItem_c* getExchangeItemPtr();
    /* 80CE7838 */ char* getResName();
    /* 80CE7850 */ u8 getTypeFromParam();
    /* 80CE789C */ u16 getFlowNodeNum();
    /* 80CE78D4 */ u16 getValue();
    /* 80CE78E0 */ void restart();
    /* 80CE7950 */ void initialize();
    /* 80CE7B04 */ int setProcess(ProcessFunc i_process);
    /* 80CE7BB4 */ void setParam();
    /* 80CE7C24 */ void setEnvTevColor();
    /* 80CE7C80 */ void setRoomNo();
    /* 80CE7CC4 */ void setMtx();
    /* 80CE7D28 */ void setAttnPos();
    /* 80CE7D5C */ int wait(void* param_0);

    static dCcD_SrcGObjInf const mCcDObjInfo;
    static dCcD_SrcCyl mCcDCyl;

    /* 0x578 */ request_of_phase_process_class mPhase;
    /* 0x580 */ J3DModel* mpModel;
    /* 0x584 */ dBgS_ObjAcch mAcch;
    /* 0x75C */ dCcD_Stts mStts;
    /* 0x798 */ dBgS_AcchCir mAcchCir;
    /* 0x7D8 */ dCcD_Cyl mAtCyl;
    /* 0x914 */ dCcD_Cyl mTgCyl;
    /* 0xA50 */ cBgS_GndChk mGndChk;
    /* 0xA8C */ cXyz field_0xA8C;
    /* 0xA98 */ dMsgFlow_c mMsgFlow;
    /* 0xAE4 */ ProcessFunc mProcessFunc;
    /* 0xAF0 */ cXyz field_0xAF0;
    /* 0xAFC */ s32 field_0xAFC;
    /* 0xB00 */ f32 field_0xB00;
    /* 0xB04 */ s32 field_0xB04;
    /* 0xB08 */ u8 padding[4];
    /* 0xB0C */ u16 mEventType;
    /* 0xB0E */ u8 field_0xB0E;
};
STATIC_ASSERT(sizeof(daObj_SSItem_c) == 0xB10);

#endif /* D_A_OBJ_SS_ITEM_H */
