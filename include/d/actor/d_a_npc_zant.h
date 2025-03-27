#ifndef D_A_NPC_ZANT_H
#define D_A_NPC_ZANT_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Zant_c
 * @brief Zant
 *
 * @details
 *
 */
class daNpc_Zant_c : public daNpcT_c {
public:
    typedef int (daNpc_Zant_c::*cutFunc)(int);
    typedef int (daNpc_Zant_c::*actionFunc)(void*);

    enum Type {
        TYPE_0,
        TYPE_1,
    };

    /* 80B6C1AC */ ~daNpc_Zant_c();
    /* 80B6C2D0 */ int create();
    /* 80B6C574 */ int CreateHeap();
    /* 80B6C700 */ int Delete();
    /* 80B6C734 */ int Execute();
    /* 80B6C754 */ int Draw();
    /* 80B6C7E8 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80B6C808 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80B6C860 */ u8 getType();
    /* 80B6C880 */ u32 getFlowNodeNo();
    /* 80B6C89C */ int isDelete();
    /* 80B6C8CC */ void reset();
    /* 80B6C9F0 */ void afterJntAnm(int);
    /* 80B6C9F4 */ void setParam();
    /* 80B6CAF0 */ void setAfterTalkMotion();
    /* 80B6CB50 */ void srchActors();
    /* 80B6CB54 */ BOOL evtTalk();
    /* 80B6CC54 */ BOOL evtCutProc();
    /* 80B6CD1C */ void action();
    /* 80B6CE08 */ void beforeMove();
    /* 80B6CE80 */ void setAttnPos();
    /* 80B6D074 */ void setCollision();
    /* 80B6D1A8 */ int drawDbgInfo();
    /* 80B6D1B0 */ void drawGhost();
    /* 80B6D21C */ int selectAction();
    /* 80B6D264 */ int chkAction(int (daNpc_Zant_c::*)(void*));
    /* 80B6D290 */ int setAction(int (daNpc_Zant_c::*)(void*));
    /* 80B6D338 */ int wait(void*);
    /* 80B6D584 */ int talk(void*);
    /* 80B6E800 */ daNpc_Zant_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                                daNpcT_evtData_c const*, char**);
    
    static char* mCutNameList;
    static cutFunc mCutList[1];

private:
    /* 0xE40 */ u8 field_0xe40[0xe44- 0xe40];
    /* 0xE44 */ dCcD_Cyl mCyl;
    /* 0xF80 */ u8 mType;
    /* 0xF81 */ u8 field_0xf81[0xf84 - 0xf81];
    /* 0xF84 */ actionFunc field_0xf84;
    /* 0xF90 */ actionFunc field_0xf90;
    /* 0xF9C */ int field_0xf9c;
};

STATIC_ASSERT(sizeof(daNpc_Zant_c) == 0xfa0);

class daNpc_Zant_Param_c {
public:
    /* 80B6E93C */ ~daNpc_Zant_Param_c();
    struct Data {
        /* 0x00 */ f32 field_0x0;
        /* 0x04 */ f32 field_0x4;
        /* 0x08 */ f32 field_0x8;
        /* 0x0C */ f32 field_0xc;
        /* 0x10 */ f32 field_0x10;
        /* 0x14 */ f32 field_0x14;
        /* 0x18 */ f32 field_0x18;
        /* 0x1C */ f32 field_0x1c;
        /* 0x20 */ f32 field_0x20;
        /* 0x24 */ f32 field_0x24;
        /* 0x28 */ f32 field_0x28;
        /* 0x2C */ f32 field_0x2c;
        /* 0x30 */ f32 field_0x30;
        /* 0x34 */ f32 field_0x34;
        /* 0x38 */ f32 field_0x38;
        /* 0x3C */ f32 field_0x3c;
        /* 0x40 */ f32 field_0x40;
        /* 0x44 */ f32 field_0x44;
        /* 0x48 */ s16 field_0x48;
        /* 0x4A */ s16 field_0x4a;
        /* 0x4C */ s16 field_0x4c;
        /* 0x4E */ s16 field_0x4e;
        /* 0x50 */ f32 field_0x50;
        /* 0x54 */ f32 field_0x54;
        /* 0x58 */ f32 field_0x58;
        /* 0x5C */ f32 field_0x5c;
        /* 0x60 */ s16 field_0x60;
        /* 0x62 */ s16 field_0x62;
        /* 0x64 */ int field_0x64;
        /* 0x68 */ int field_0x68;
        /* 0x6C */ f32 field_0x6c;
        /* 0x70 */ f32 field_0x70;
        /* 0x74 */ f32 field_0x74;
        /* 0x78 */ f32 field_0x78;
        /* 0x7C */ f32 field_0x7c;
        /* 0x80 */ f32 field_0x80;
        /* 0x84 */ f32 field_0x84;
        /* 0x88 */ f32 field_0x88;        
    };

    static const Data m;
};


#endif /* D_A_NPC_ZANT_H */
