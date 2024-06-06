#ifndef D_A_CANOE_H
#define D_A_CANOE_H

#include "f_op/f_op_actor_mng.h"
#include "d/cc/d_cc_d.h"
#include "d/bg/d_bg_s_acch.h"
#include "SSystem/SComponent/c_phase.h"

class daCanoe_c : public fopAc_ac_c {
public:
    /* 804DA5F4 */ void createHeap();
    /* 804DA740 */ void create();
    /* 804DAEA8 */ ~daCanoe_c();
    /* 804DB008 */ void setRoomInfo();
    /* 804DB0B0 */ void setMatrix();
    /* 804DB3F4 */ void setCollision();
    /* 804DB578 */ void posMove();
    /* 804DB754 */ void checkGomikabe(cBgS_PolyInfo&);
    /* 804DB7AC */ void setFrontBackPos();
    /* 804DB828 */ void frontBackBgCheck();
    /* 804DC330 */ void setPaddleEffect();
    /* 804DC554 */ void setCanoeSliderEffect();
    /* 804DC7B4 */ void execute();
    /* 804DD35C */ void draw();

    J3DModel* getModel() { return mpModel; }
    MtxP getModelMtx() { return mpModel->getBaseTRMtx(); }
    bool checkTandem() { return fopAcM_GetParam(this) == 2; }
    bool checkJumpRideFlg() { return mJumpRideFlg; }
    void incShapeOffsetY(f32 offset) { mShapeOffsetY += offset; }
    void incShapeAngleZ(s16 incZ) { shape_angle.z += incZ; }
    void onRodID(unsigned int i_rodID) { mRodID = i_rodID; }
    void setWaterFallDownSe() { field_0x141c.startSound(Z2SE_AL_CANOE_FALL_DW, 0, -1); }

    void setPosAndAngle(cXyz const* i_pos, s16 i_angle) {
        field_0x14d0 = *i_pos;
        field_0x144a = i_angle;
        field_0x1446 = 1;
    }

private:
    /* 0x0568 */ request_of_phase_process_class mPhaseReq;
    /* 0x0570 */ J3DModel* mpModel;
    /* 0x0574 */ J3DModel* mpPaddleModel;
    /* 0x0578 */ J3DModel* mpMaskModel;
    /* 0x057C */ dCcD_Stts field_0x57c;
    /* 0x05B8 */ dBgS_AcchCir field_0x5b8[9];
    /* 0x07F8 */ dBgS_LinkAcch field_0x7f8[3];
    /* 0x0D80 */ dCcD_Cyl field_0xd80[5];
    /* 0x13AC */ dBgS_LinkLinChk field_0x13ac;
    /* 0x141C */ Z2SoundObjSimple field_0x141c;
    /* 0x143C */ char* mResName;
    /* 0x1440 */ u8 mPaddleWaterType;
    /* 0x1441 */ u8 field_0x1441;
    /* 0x1442 */ u8 field_0x1442;
    /* 0x1443 */ u8 mJumpRideFlg;
    /* 0x1444 */ u8 field_0x1444;
    /* 0x1445 */ u8 mReverb;
    /* 0x1446 */ u8 field_0x1446;
    /* 0x1448 */ s16 field_0x1448;
    /* 0x144A */ s16 field_0x144a;
    /* 0x144C */ s16 mAimAngle;
    /* 0x144E */ s16 field_0x144e;
    /* 0x1450 */ s16 field_0x1450;
    /* 0x1452 */ s16 field_0x1452;
    /* 0x1454 */ s16 field_0x1454;
    /* 0x1456 */ s16 field_0x1456;
    /* 0x1458 */ s16 field_0x1458;
    /* 0x145A */ s16 field_0x145a;
    /* 0x145C */ s16 field_0x145c;
    /* 0x145E */ s16 field_0x145e;
    /* 0x1460 */ s16 field_0x1460;
    /* 0x1464 */ u32 mRodID;
    /* 0x1468 */ f32 mAimSpeed;
    /* 0x146C */ f32 mShapeOffsetY;
    /* 0x1470 */ f32 field_0x1470;
    /* 0x1474 */ u32 field_0x1474;
    /* 0x1478 */ u8 field_0x1478[0x1480 - 0x1478];
    /* 0x1480 */ u32 field_0x1480;
    /* 0x1484 */ u8 field_0x1484[0x1490 - 0x1484];
    /* 0x1490 */ u32 field_0x1490;
    /* 0x1494 */ cXyz field_0x1494;
    /* 0x14A0 */ cXyz field_0x14a0;
    /* 0x14AC */ cXyz field_0x14ac;
    /* 0x14B8 */ cXyz field_0x14b8;
    /* 0x14C4 */ cXyz field_0x14c4;
    /* 0x14D0 */ cXyz field_0x14d0;
};

STATIC_ASSERT(sizeof(daCanoe_c) == 0x14dc);

#endif /* D_A_CANOE_H */
