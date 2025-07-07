#ifndef D_A_DEMO00_H
#define D_A_DEMO00_H

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

    /* 0x00 */ int field_0x0;
    /* 0x04 */ int field_0x4;
    /* 0x08 */ int field_0x8;
    /* 0x0C */ int field_0xc;
    /* 0x10 */ int field_0x10;
    /* 0x14 */ int field_0x14;
    /* 0x18 */ int field_0x18;
    /* 0x1C */ int field_0x1c;
    /* 0x20 */ int field_0x20;
};

class daDemo00_model_c {
public:
    /* 804A4338 */ void reset();
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
    /* 804A4388 */ ~daDemo00_c();
    /* 804A45A0 */ void setBaseMtx();
    /* 804A4948 */ void setShadowSize();
    /* 804A4F74 */ int createHeap();
    /* 804A5798 */ void actStandby(dDemo_actor_c*);
    /* 804A594C */ void actPerformance(dDemo_actor_c*);
    /* 804A604C */ void actLeaving(dDemo_actor_c*);
    /* 804A6F94 */ void draw();
    /* 804A7BA8 */ void execute();

private:
    /* 0x0568 */ cXyz field_0x568;
    /* 0x0574 */ csXyz field_0x574;
    /* 0x057A */ u8 field_0x57a[0x588 - 0x57a];
    /* 0x0588 */ daDemo00_resID_c field_0x588;
    /* 0x05AC */ int field_0x5ac;
    /* 0x05B0 */ u8 field_0x5b0[0x5b8 - 0x5b0];
    /* 0x05B8 */ int field_0x5b8;
    /* 0x05BC */ int field_0x5bc;
    /* 0x05C0 */ u8 field_0x5c0[0x5d0 - 0x5c0];
    /* 0x05D0 */ mDoExt_McaMorfSO* mpModelMorf;
    /* 0x05D4 */ J3DModel* field_0x5d4;
    /* 0x05D8 */ mDoExt_invisibleModel* field_0x5d8;
    /* 0x05DC */ mDoExt_bpkAnm* mpBpkAnm;
    /* 0x05E0 */ mDoExt_btpAnm* mpBtpAnm;
    /* 0x05E4 */ mDoExt_btkAnm* mpBtkAnm;
    /* 0x05E8 */ mDoExt_brkAnm* mpBrkAnm;
    /* 0x05EC */ f32** field_0x5ec;
    /* 0x05F0 */ u8 field_0x5f0[0x5f8 - 0x5f0];
    /* 0x05F8 */ dBgS_GndChk* mGndChk;
    /* 0x05FC */ Z2Creature mSound;
    /* 0x068C */ u8 field_0x68c[0x694 - 0x68c];
    /* 0x0694 */ s32 field_0x694;
    /* 0x0698 */ int field_0x698;
    /* 0x069C */ s16 field_0x69c;
    /* 0x069E */ s16 field_0x69e;
    /* 0x06A0 */ u8 field_0x6a0[0x6a2 - 0x6a0];
    /* 0x06A2 */ u8 field_0x6a2;
    /* 0x06A3 */ u8 field_0x6a3;
    /* 0x06A4 */ u8 field_0x6a4;
    /* 0x06A5 */ u8 field_0x6a5[0x6a9 - 0x6a5];
    /* 0x06A9 */ s8 field_0x6a9;
    /* 0x06AA */ u8 field_0x6aa;
    /* 0x06AB */ s8 field_0x6ab;
    /* 0x06AC */ u8 field_0x6ac;
    /* 0x06AD */ u8 field_0x6ad;
    /* 0x06AE */ u8 field_0x6ae[0x6f8 - 0x6ae];
    /* 0x06F8 */ demo_s1_ke_s field_0x6f8[22];
    /* 0x2900 */ mDoExt_3DlineMat0_c field_0x2900;
    /* 0x291C */ cXyz field_0x291c;
    /* 0x2928 */ u8 field_0x2928[0x292c - 0x2928];
};

STATIC_ASSERT(sizeof(daDemo00_c) == 0x292c);


#endif /* D_A_DEMO00_H */
