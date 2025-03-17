#ifndef D_A_B_GND_H
#define D_A_B_GND_H

#include "d/d_msg_flow.h"
#include "f_op/f_op_actor_mng.h"
#include "Z2AudioLib/Z2Creature.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "d/d_bg_s_acch.h"

/**
 * @ingroup actors-enemies
 * @class b_gnd_class
 * @brief Ganondorf
 * 
 * @details Hyrule Castle dungeon boss.
 * 
 */
 
struct g_himo_s {
    /* 80601D40 */ ~g_himo_s();
    /* 80601DA0 */ g_himo_s();

    /* 0x0 */ cXyz field_0x0[16];
};

class b_gnd_class : public fopEn_enemy_c {
public:
    /* 80601960 */ b_gnd_class();

    bool checkAttackChance() { return field_0x2740 != 0; }

    /* 0x05AC */ request_of_phase_process_class mPhaseReq;
    /* 0x05B4 */ request_of_phase_process_class mHorsePhaseReq;
    /* 0x05BC */ s16 field_0x05bc;
    /* 0x05BE */ u8 field_0x05be;
    /* 0x05BF */ u8 field_0x05BF[0x05C0 - 0x05BF];
    /* 0x05C0 */ cXyz field_0x05c0;
    /* 0x05CC */ s16 field_0x05cc;
    /* 0x05CE */ u8 field_0x05CE[0x05D0 - 0x05CE];
    /* 0x05D0 */ mDoExt_McaMorfSO* mpModelMorf;
    /* 0x05D4 */ mDoExt_McaMorfSO* mpHorseMorf;
    /* 0x05D8 */ mDoExt_McaMorf* field_0x05d8;
    /* 0x05DC */ Z2CreatureEnemy mZ2Creature;
    /* 0x0680 */ Z2CreatureEnemy field_0x0680;
    /* 0x0724 */ mDoExt_brkAnm* field_0x0724;
    /* 0x0728 */ mDoExt_btkAnm* field_0x0728[6];
    /* 0x0740 */ u8 field_0x0740[0x0744 - 0x0740];
    /* 0x0744 */ mDoExt_btpAnm* field_0x0744;
    /* 0x0748 */ int field_0x0748;
    /* 0x074C */ mDoExt_btpAnm* field_0x074c;
    /* 0x0750 */ mDoExt_btkAnm* field_0x0750;
    /* 0x0754 */ u8 field_0x0754;
    /* 0x0755 */ u8 field_0x0755[0x0758 - 0x0755];
    /* 0x0758 */ int mAnmID;
    /* 0x075C */ int mHorseAnmID;
    /* 0x0760 */ f32 mPlaySpeed;
    /* 0x0764 */ u8 field_0x0764[0x0768 - 0x0764];
    /* 0x0768 */ J3DModel* field_0x0768;
    /* 0x076C */ J3DModel* field_0x076c;
    /* 0x0770 */ u8 field_0x0770;
    /* 0x0771 */ u8 field_0x0771;
    /* 0x0772 */ s16 field_0x0772;
    /* 0x0774 */ dKy_tevstr_c field_0x0774;
    /* 0x0AFC */ s16 field_0x0afc;
    /* 0x0AFE */ s16 mActionID;
    /* 0x0B00 */ s16 field_0x0b00;
    /* 0x0B02 */ u8 field_0x0B02[0x0B94 - 0x0B02];
    /* 0x0B94 */ J3DModel* field_0x0b94[36];
    /* 0x0C24 */ s16 field_0x0c24;
    /* 0x0C26 */ s16 field_0x0c26;
    /* 0x0C28 */ s16 field_0x0c28;
    /* 0x0C2A */ u8 field_0x0C2A[0x0C2C - 0x0C2A];
    /* 0x0C2C */ J3DModel* field_0x0c2c[2];
    /* 0x0C34 */ u8 field_0x0C34[0x0C38 - 0x0C34];
    /* 0x0C38 */ f32 field_0x0c38;
    /* 0x0C3C */ s16 field_0x0c3c;
    /* 0x0C3E */ u8 field_0x0C3E[0x0C40 - 0x0C3E];
    /* 0x0C40 */ u32 mShadowID;
    /* 0x0C44 */ s16 field_0x0c44[10];
    /* 0x0C58 */ s16 field_0x0c58;
    /* 0x0C5A */ s16 field_0x0c5a;
    /* 0x0C5C */ s16 field_0x0c5c;
    /* 0x0C5D */ u8 field_0x0C5E[0x0C60 - 0x0C5E];
    /* 0x0C60 */ int field_0x0c60;
    /* 0x0C64 */ int field_0x0c64;
    /* 0x0C68 */ s16 field_0x0c68;
    /* 0x0C6A */ s16 field_0x0c6a;
    /* 0x0C6C */ f32 field_0x0c6c;
    /* 0x0C70 */ s16 field_0x0c70;
    /* 0x0C72 */ s16 field_0x0c72;
    /* 0x0C74 */ s16 field_0x0c74;
    /* 0x0C76 */ u8 field_0x0c76;
    /* 0x0C77 */ u8 field_0x0c77;
    /* 0x0C78 */ u8 field_0x0c78;
    /* 0x0C79 */ u8 field_0x0c79;
    /* 0x0C7A */ u8 field_0x0c7a;
    /* 0x0C7B */ u8 field_0x0c7b;
    /* 0x0C7C */ u8 field_0x0c7c;
    /* 0x0C7D */ u8 field_0x0c7d;
    /* 0x0C7E */ u8 field_0x0C7E[0x0C80 - 0x0C7E];
    /* 0x0C80 */ cXyz field_0x0c80;
    /* 0x0C8C */ s16 field_0x0c8c;
    /* 0x0C8E */ s16 field_0x0c8e;
    /* 0x0C90 */ s16 field_0x0c90;
    /* 0x0C92 */ s16 field_0x0c92;
    /* 0x0C94 */ dBgS_AcchCir mWall;
    /* 0x0CD4 */ dBgS_ObjAcch field_0x0cd4;
    /* 0x0EAC */ s16 field_0x0eac;
    /* 0x0EAE */ u8 field_0x0EAE[0x0EB0 - 0x0EAE];
    /* 0x0EB0 */ f32 field_0x0eb0;
    /* 0x0EB4 */ cXyz field_0x0eb4;
    /* 0x0EC0 */ csXyz field_0x0ec0;
    /* 0x0EC6 */ u8 field_0x0EC6[0x0EC8 - 0x0EC6];
    /* 0x0EC8 */ dCcD_Stts field_0x0ec8;
    /* 0x0F04 */ dCcD_Sph mHorseSpheres1[2];
    /* 0x1174 */ dCcD_Sph mHorseSpheres2[4];
    /* 0x1654 */ dCcD_Stts field_0x1654;
    /* 0x1690 */ dCcD_Sph field_0x1690[3];
    /* 0x1A38 */ dCcD_Sph field_0x1a38;
    /* 0x1B70 */ dCcD_Sph field_0x1b70;
    /* 0x1CA8 */ dCcD_Cyl field_0x1ca8;
    /* 0x1DE4 */ dCcU_AtInfo mAtInfo;
    /* 0x1E08 */ u8 field_0x1e08;
    /* 0x1E09 */ u8 field_0x1e09;
    /* 0x1E0A */ u16 field_0x1e0a;
    /* 0x1E0C */ u16 field_0x1e0c;
    /* 0x1E0E */ u8 field_0x1e0e;
    /* 0x1E0F */ s8 field_0x1e0f;
    /* 0x1E10 */ f32 field_0x1e10;
    /* 0x1E14 */ cXyz field_0x1e14;
    /* 0x1E20 */ cXyz field_0x1e20;
    /* 0x1E2C */ Z2SoundObjSimple field_0x1e2c;
    /* 0x1E4C */ f32 field_0x1e4c;
    /* 0x1E50 */ csXyz field_0x1e50;
    /* 0x1E56 */ u8 field_0x1e56[5];
    /* 0x1E5B */ u8 field_0x1E5B[0x1E5C - 0x1E5B];
    /* 0x1E5C */ cXyz field_0x1e5c[5];
    /* 0x1E98 */ cXyz field_0x1e98[5];
    /* 0x1ED4 */ cXyz field_0x1ed4[5];
    /* 0x1F10 */ Z2SoundObjSimple field_0x1f10[5];
    /* 0x1FB0 */ u8 mInitHIO;
    /* 0x1FB0 */ u8 field_0x1FB1[0x1FB4 - 0x1FB1];
    /* 0x1FB4 */ fpc_ProcID mMantChildID;
    /* 0x1FB8 */ cXyz field_0x1fb8;
    /* 0x1FC4 */ int field_0x1fc4;
    /* 0x1FC8 */ s16 field_0x1fc8;
    /* 0x1FCA */ s16 field_0x1fca;
    /* 0x1FCC */ s16 field_0x1fcc;
    /* 0x1FCE */ u8 field_0x1FCE[0x1FD0 - 0x1FCE];
    /* 0x1FD0 */ f32 field_0x1fd0;
    /* 0x1FD4 */ s16 field_0x1fd4;
    /* 0x1FD6 */ s16 field_0x1fd6;
    /* 0x1FD8 */ cXyz field_0x1fd8[2];
    /* 0x1FF0 */ g_himo_s field_0x1ff0[2];
    /* 0x2170 */ mDoExt_3DlineMat1_c field_0x2170[2];
    /* 0x21E8 */ mDoExt_3DlineMat1_c field_0x21e8;
    /* 0x2224 */ dKy_tevstr_c field_0x2224;
    /* 0x25AC */ u32 field_0x25ac[17];
    /* 0x25F0 */ u8 field_0x25F0[0x2688 - 0x25F0];
    /* 0x2688 */ u32 field_0x2688;
    /* 0x268C */ u32 field_0x268c[3];
    /* 0x2698 */ u8 field_0x2698;
    /* 0x2699 */ u8 field_0x2699;
    /* 0x269C */ cXyz field_0x269c;
    /* 0x26A8 */ cXyz field_0x26a8[2];
    /* 0x26C0 */ s16 field_0x26c0;
    /* 0x26C2 */ s16 field_0x26c2;
    /* 0x26C4 */ s16 field_0x26c4;
    /* 0x26C6 */ s16 field_0x26c6;
    /* 0x26C8 */ cXyz field_0x26c8;
    /* 0x26D4 */ cXyz field_0x26d4;
    /* 0x26E0 */ cXyz field_0x26e0;
    /* 0x26EC */ cXyz field_0x26ec;
    /* 0x26F8 */ cXyz field_0x26f8;
    /* 0x2704 */ cXyz field_0x2704;
    /* 0x2710 */ cXyz field_0x2710;
    /* 0x271C */ s16 field_0x271c;
    /* 0x271E */ u8 field_0x271E[0x2720 - 0x271E];
    /* ox2720 */ cXyz field_0x2720;
    /* 0x272C */ s16 field_0x272c;
    /* 0x272E */ u8 field_0x272E[0x2730 - 0x272E];
    /* 0x2730 */ f32 field_0x2730;
    /* 0x2734 */ f32 field_0x2734;
    /* 0x2738 */ u8 field_0x2738;
    /* 0x2739 */ u8 field_0x2739;
    /* 0x273A */ u8 field_0x273A[0x273C - 0x273A];
    /* 0x273C */ f32 field_0x273c;
    /* 0x2740 */ u8 field_0x2740;
    /* 0x2741 */ u8 field_0x2741[0x2744 - 0x2741];
    /* 0x2744 */ dMsgFlow_c mMsgFlow;
};

STATIC_ASSERT(sizeof(b_gnd_class) == 0x2790);

class daB_GND_HIO_c {
public:
    /* 805F4A4C */ daB_GND_HIO_c();
    /* 80602230 */ ~daB_GND_HIO_c();

    /* 0x00 */ f32 field_0x0;
    /* 0x04 */ s8 field_0x4;
    /* 0x08 */ f32 model_size;
    /* 0x0C */ f32 field_0xc;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
};

#endif /* D_A_B_GND_H */
