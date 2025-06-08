#ifndef D_A_NPC_SHOP0_H
#define D_A_NPC_SHOP0_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Shop0_c
 * @brief Shop 0?
 *
 * @details
 *
 */

class daNpc_Shop0_Param_c {
public:
    /* 80AEBB14 */ virtual ~daNpc_Shop0_Param_c() {};
    
    struct param {
        /* 0x0 */ u32 mParam1;
        /* 0x4 */ u32 mParam2;
        /* 0x8 */ u32 mParam3;
    };

    static param const mParam;
};


class daNpc_Shop0_c : public fopAc_ac_c {
public:
    /* 80AEA7F8 */ virtual ~daNpc_Shop0_c();
    /* 80AEAA10 */ int create();
    /* 80AEAE9C */ int createHeap();
    /* 80AEAF8C */ int destroy();
    /* 80AEAFC0 */ int execute();
    /* 80AEB078 */ int draw();
    /* 80AEB190 */ char* getResName();
    /* 80AEB1A0 */ void getParam();
    /* 80AEB1C8 */ int getFlowNodeNum();
    /* 80AEB1D0 */ int isDelete();
    /* 80AEB22C */ int init();
    /* 80AEB32C */ J3DAnmTransform* getTrnsfrmAnmP(int, char**);
    /* 80AEB3A8 */ int setBckAnm(J3DAnmTransform*, f32, int, int, int, bool);
    /* 80AEB45C */ int setCollision();
    /* 80AEB4C8 */ int checkEvent();
    /* 80AEB5E8 */ void orderEvent();
    /* 80AEB634 */ void setMtx();
    /* 80AEB6DC */ void setRoomInf();
    /* 80AEB780 */ int cut_alert(int, int);
    /* 80AEB7F0 */ int chkProcess(int (daNpc_Shop0_c::*)(void*));
    /* 80AEB824 */ int setProcess(int (daNpc_Shop0_c::*)(void*), void*, int);
    /* 80AEB920 */ int wait(void*);
    /* 80AEB9BC */ int talk(void*);

    static dCcD_SrcCyl const mCylDat;

    /* 0x56c */ u8 mParam;
    /* 0x570 */ mDoExt_bckAnm mBckAnm;
    /* 0x58c */ f32 mPlaySpeed;
    /* 0x590 */ u32 mFlowNodeNum;
    /* 0x594 */ dMsgFlow_c mMsgFlow;
    /* 0x5e0 */ request_of_phase_process_class mPhaseReq;
    /* 0x5e8 */ J3DModel* mpModel;
    /* 0x5ec */ f32 mGroundCross;
    /* 0x5f0 */ dBgS_ObjGndChk mGndChk;
    /* 0x644 */ daNpc_Shop0_Param_c* mpShopParam;
    /* 0x648 */ dBgS_AcchCir mAcchCir;
    /* 0x688 */ dBgS_ObjAcch mAcch;
    /* 0x860 */ dCcD_Stts mStts;
    /* 0x89c */ dCcD_Cyl mCyl;
    /* 0x9d8 */ s32 mMode;
    /* 0x9dc */ int (daNpc_Shop0_c::*mProcess)(void*);
    /* 0x9e8 */ s16 field_0x9e8;
    /* 0x9ea */ u8 field_0x9ea;
};

STATIC_ASSERT(sizeof(daNpc_Shop0_c) == 0x9ec);

#endif /* D_A_NPC_SHOP0_H */
