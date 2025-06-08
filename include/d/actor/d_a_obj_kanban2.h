#ifndef D_A_OBJ_KANBAN2_H
#define D_A_OBJ_KANBAN2_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "d/d_bg_s_acch.h"
#include "d/d_msg_flow.h"

/**
 * @ingroup actors-objects
 * @class daObj_Kanban2_c
 * @brief Sign 2
 *
 * @details
 *
 */
class daObj_Kanban2_c : public fopAc_ac_c {
public:
    /* 80581790 */ int draw();
    /* 80581938 */ void setKanbanSE(int);
    /* 805819BC */ void createBreakParts(u32, csXyz);
    /* 805819FC */ void createWallHitBreak();
    /* 80581B5C */ int getKanbanCutType();
    /* 80581C48 */ int getKanbanWolfCutType();
    /* 80581D04 */ void damage_check();
    /* 8058221C */ bool float_damage_check();
    /* 805822F0 */ bool deletePart();
    /* 805825A4 */ s16 getWallAngle();
    /* 8058271C */ void setGroundAngle();
    /* 80582894 */ bool checkWaterSurface();
    /* 80582944 */ bool checkPataGround(s16, s16);
    /* 80582A68 */ void setCullMtx();
    /* 80582AAC */ void setSmokeEffect(cXyz);
    /* 80582AFC */ void setWaterEffect();
    /* 80582C40 */ void setCenterPos();
    /* 80582E68 */ BOOL checkCarryOn();
    /* 80582EF0 */ void setActionMode(int, int);
    /* 80582F40 */ void calcNormalSwing();
    /* 80583364 */ void executeNormal();
    /* 80583598 */ void initPart();
    /* 80583A2C */ void executePart();
    /* 8058437C */ void executeFloat();
    /* 80584884 */ void executeCarry();
    /* 805849CC */ void action();
    /* 80584AD8 */ void mtx_set();
    /* 80584CFC */ void cc_set();
    /* 80584DF0 */ int execute();
    /* 80584ED8 */ int _delete();
    /* 80584F64 */ int CreateHeap();
    /* 805850E8 */ int create();

    /* 0x568 */ request_of_phase_process_class mPhase;
    /* 0x570 */ J3DModel* mpModel;
    /* 0x574 */ J3DModel* mpPartModel[18];
    /* 0x5BC */ Z2SoundObjSimple mSound;
    /* 0x5DC */ cXyz field_0x5dc;
    /* 0x5E8 */ csXyz field_0x5e8;
    /* 0x5EE */ csXyz field_0x5ee;
    /* 0x5F4 */ csXyz field_0x5f4;
    /* 0x5FC */ f32 field_0x5fc;
    /* 0x600 */ f32 field_0x600;
    /* 0x604 */ f32 field_0x604;
    /* 0x608 */ s16 field_0x608;
    /* 0x60A */ s16 field_0x60a;
    /* 0x60C */ int mAction;
    /* 0x610 */ int mPrevAction;
    /* 0x614 */ int mMode;
    /* 0x618 */ u32 mShadowId;
    /* 0x61C */ u32 mPartFlags;
    /* 0x620 */ u32 field_0x620;
    /* 0x624 */ s16 field_0x624;
    /* 0x626 */ u8 field_0x626;
    /* 0x627 */ u8 field_0x627;
    /* 0x628 */ u8 mInvulnerabilityTimer;
    /* 0x629 */ u8 field_0x629;
    /* 0x62A */ u8 field_0x62a;
    /* 0x62B */ u8 field_0x62b;
    /* 0x62C */ u8 field_0x62c;
    /* 0x62D */ u8 field_0x62d;
    /* 0x62E */ u8 field_0x62e;
    /* 0x630 */ dBgS_AcchCir mAcchCir;
    /* 0x670 */ dBgS_ObjAcch mAcch;
    /* 0x848 */ dCcD_Stts mCcStts;
    /* 0x884 */ dCcD_Sph mCcSph;
    /* 0x9BC */ dCcU_AtInfo mAtInfo;
    /* 0x9E0 */ u32 field_0x9e0;
    /* 0x9E4 */ u32 field_0x9e4;
    /* 0x9E8 */ u32 mWaterEffID[4];
    /* 0x9F8 */ u32 field_0x9f8;
    /* 0x9FC */ u8 mInitHIO;
    /* 0x9FE */ s16 field_0x9fe;
    /* 0xA00 */ s16 mFlowID;
    /* 0xA04 */ dMsgFlow_c mMsgFlow;
};

STATIC_ASSERT(sizeof(daObj_Kanban2_c) == 0xa50);

class daObj_Kanban2_HIO_c : public JORReflexible {
public:
    /* 8058176C */ daObj_Kanban2_HIO_c();
    /* 80585578 */ virtual ~daObj_Kanban2_HIO_c() {}

    void genMessage(JORMContext*);

    /* 0x4 */ s8 id;
    /* 0x8 */ f32 base_size;
};


#endif /* D_A_OBJ_KANBAN2_H */
