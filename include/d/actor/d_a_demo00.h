#ifndef D_A_DEMO00_H
#define D_A_DEMO00_H

#include "d/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"
#include "d/d_demo.h"

struct demo_s1_ke_s {
public:
    /* 804A4420 */ ~demo_s1_ke_s();
    /* 804A86B4 */ demo_s1_ke_s();

    /* 0x000 */ cXyz field_0x0[16];
    /* 0x0C0 */ cXyz field_0xc0[16];
    /* 0x180 */ cXyz field_0x180;
};

class daDemo00_resID_c {
public:
    /* 804A430C */ void reset();

    /* 0x00 */ u32 mShapeID;
    /* 0x04 */ u32 field_0x4;
    /* 0x08 */ u32 field_0x8;
    /* 0x0C */ u32 field_0xc;
    /* 0x10 */ u32 field_0x10;
    /* 0x14 */ u32 field_0x14;
    /* 0x18 */ u32 field_0x18;
    /* 0x1C */ u32 field_0x1c;
    /* 0x20 */ u32 field_0x20;
};

class daDemo00_model_c {
public:
    /* 804A4338 */ void reset();

    /* 0x00 */ daDemo00_resID_c field_0x0;
    /* 0x24 */ daDemo00_resID_c mID;
};

struct daDemo00_bgc_c {
    /* 0x00 */ dBgS_GndChk mGndChk;
    /* 0x54 */ f32 field_0x54;
};

struct daDemo00_shadow_c {
    /* 0x00 */ u32 field_0x0;
    /* 0x04 */ cXyz field_0x4;
    /* 0x10 */ cXyz field_0x10;
    /* 0x1C */ f32 field_0x1c;
    /* 0x20 */ f32 field_0x20;
};

/**
 * @ingroup actors-unsorted
 * @class daDemo00_c
 * @brief Cutscene
 *
 * @details
 *
 */
class daDemo00_c : public fopAc_ac_c {
public:
    typedef int (daDemo00_c::*actionFunc)(dDemo_actor_c*);

    /* 804A4388 */ ~daDemo00_c();
    /* 804A45A0 */ void setBaseMtx();
    /* 804A4948 */ void setShadowSize();
    /* 804A4F74 */ int createHeap();
    /* 804A5798 */ int actStandby(dDemo_actor_c*);
    /* 804A594C */ int actPerformance(dDemo_actor_c*);
    /* 804A604C */ int actLeaving(dDemo_actor_c*);
    /* 804A6F94 */ int draw();
    /* 804A7BA8 */ int execute();

    int create() {
        dKy_tevstr_init(&tevStr, dComIfGp_roomControl_getStayNo(), 0xFF);
        tevStr.field_0x384 = 1;
        mSound.init(&eyePos, NULL, 10, 1);
        setAction(&daDemo00_c::actStandby);
        mModel.field_0x0.reset();
        field_0x6a0 = -1;
        return 4;
    }

    void setAction(actionFunc action) { field_0x57c = action; }
    void action(dDemo_actor_c* actor) { (this->*field_0x57c)(actor); }

    /* 0x0568 */ cXyz field_0x568;
    /* 0x0574 */ csXyz field_0x574;
    /* 0x057C */ actionFunc field_0x57c;
    /* 0x0584 */ daDemo00_model_c mModel;
    /* 0x05D0 */ mDoExt_McaMorfSO* mpModelMorf;
    /* 0x05D4 */ J3DModel* field_0x5d4;
    /* 0x05D8 */ mDoExt_invisibleModel* field_0x5d8;
    /* 0x05DC */ mDoExt_bpkAnm* mpBpkAnm;
    /* 0x05E0 */ mDoExt_btpAnm* mpBtpAnm;
    /* 0x05E4 */ mDoExt_btkAnm* mpBtkAnm;
    /* 0x05E8 */ mDoExt_brkAnm* mpBrkAnm;
    /* 0x05EC */ daDemo00_shadow_c* mShadow;
    /* 0x05F0 */ J3DDeformData* mDeformData;
    /* 0x05F4 */ mDoExt_blkAnm* mpBlkAnm;
    /* 0x05F8 */ daDemo00_bgc_c* mBgc;
    /* 0x05FC */ Z2Creature mSound;
    /* 0x068C */ u32 field_0x68c;
    /* 0x0690 */ u8 field_0x690[0x694 - 0x690];
    /* 0x0694 */ s32 field_0x694;
    /* 0x0698 */ int field_0x698;
    /* 0x069C */ s16 field_0x69c;
    /* 0x069E */ s16 field_0x69e;
    /* 0x06A0 */ s8 field_0x6a0;
    /* 0x06A1 */ u8 field_0x6a1;
    /* 0x06A2 */ u8 field_0x6a2;
    /* 0x06A3 */ u8 mground2;
    /* 0x06A4 */ u8 field_0x6a4;
    /* 0x06A5 */ u8 field_0x6a5;
    /* 0x06A6 */ u8 field_0x6a6;
    /* 0x06A7 */ s8 field_0x6a7;
    /* 0x06A8 */ s8 field_0x6a8;
    /* 0x06A9 */ s8 field_0x6a9;
    /* 0x06AA */ s8 field_0x6aa;
    /* 0x06AB */ s8 field_0x6ab;
    /* 0x06AC */ u8 field_0x6ac;
    /* 0x06AD */ u8 field_0x6ad;
    /* 0x06AE */ u8 field_0x6ae;
    /* 0x06AF */ s8 field_0x6af;
    /* 0x06B0 */ s8 field_0x6b0;
    /* 0x06B1 */ s8 field_0x6b1;
    /* 0x06B2 */ u8 field_0x6b2;
    /* 0x06B3 */ s8 field_0x6b3;
    /* 0x06B4 */ s8 field_0x6b4;
    /* 0x06B5 */ u8 field_0x6b5;
    /* 0x06B6 */ u8 field_0x6b6;
    /* 0x06B7 */ u8 field_0x6b7;
    /* 0x06B8 */ u8 field_0x6b8;
    /* 0x06B9 */ s8 field_0x6b9;
    /* 0x06BC */ mDoExt_3DlineMat1_c field_0x6bc;
    /* 0x06F8 */ demo_s1_ke_s field_0x6f8[22];
    /* 0x2900 */ mDoExt_3DlineMat0_c field_0x2900;
    /* 0x291C */ cXyz field_0x291c;
    /* 0x2928 */ u8 field_0x2928[0x292c - 0x2928];
};

STATIC_ASSERT(sizeof(daDemo00_c) == 0x292c);


#endif /* D_A_DEMO00_H */
