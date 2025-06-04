#ifndef D_A_NPC_HENNA_H
#define D_A_NPC_HENNA_H

#include "JSystem/JHostIO/JORReflexible.h"
#include "SSystem/SComponent/c_phase.h"
#include "d/d_msg_flow.h"
#include "f_op/f_op_actor.h"

/**
 * @ingroup actors-npcs
 * @class npc_henna_class
 * @brief Hena
 *
 * @details
 *
 */
class npc_henna_class {
public:
    /* 0x0   */ fopEn_enemy_c actor;
    /* 0x5AC */ request_of_phase_process_class field_0x5ac;
    /* 0x5B4 */ u8 field_0x5b4;
    /* 0x5B5 */ s8 field_0x5b5;
    /* 0x5B6 */ s8 field_0x5b6;
    /* 0x5B8 */ s16 mIsTalking;
    /* 0x5BA */ s16 field_0x5ba;
    /* 0x5BC */ s16 field_0x5bc;
    /* 0x5BE */ s16 field_0x5be;
    /* 0x5C0 */ dMsgFlow_c mMsgFlow;
    /* 0x60C */ u8 field_0x60c[0x618 - 0x60c];
    /* 0x618 */ s16 field_0x618;
    /* 0x61C */ f32 field_0x61c;
    /* 0x620 */ s16 field_0x620;
    /* 0x624 */ mDoExt_McaMorf* mpMorf;
    /* 0x628 */ mDoExt_btkAnm* mpBtkAnms[3];
    /* 0x634 */ mDoExt_btpAnm* mpBtpAnms[3];
    /* 0x640 */ u8 field_0x640[0x654 - 0x640];
    /* 0x654 */ s32 field_0x654;
    /* 0x658 */ s32 field_0x658;
    /* 0x65C */ s32 mAnmResIndex;
    /* 0x660 */ s16 field_0x660;
    /* 0x662 */ s16 field_0x662;
    /* 0x664 */ s32 field_0x664;
    /* 0x668 */ mDoExt_bckAnm* mpBckAnms[8];
    /* 0x688 */ s32 field_0x688;
    /* 0x68C */ J3DModel* mpModel;
    /* 0x690 */ s16 field_0x690;
    /* 0x692 */ s8 field_0x692;
    /* 0x693 */ s8 field_0x693;
    /* 0x694 */ s8 field_0x694;
    /* 0x698 */ f32 field_0x698;
    /* 0x69C */ f32 field_0x69c;
    /* 0x6A0 */ s16 field_0x6a0;
    /* 0x6A2 */ s16 field_0x6a2;
    /* 0x6A4 */ s16 field_0x6a4;
    /* 0x6A6 */ s16 field_0x6a6;
    /* 0x6A8 */ u8 field_0x6a8[0x6ac - 0x6a8];
    /* 0x6AC */ f32 field_0x6ac;
    /* 0x6B0 */ s16 field_0x6b0;
    /* 0x6B2 */ u8 field_0x6b2[0x6b6 - 0x6b2];
    /* 0x6B6 */ s16 field_0x6b6;
    /* 0x6B8 */ u8 field_0x6b8[0x6ba - 0x6b8];
    /* 0x6BA */ s16 field_0x6ba;
    /* 0x6BC */ s16 field_0x6bc;
    /* 0x6BE */ s16 field_0x6be;
    /* 0x6C0 */ s16 field_0x6c0;
    /* 0x6C2 */ s16 field_0x6c2;
    /* 0x6C4 */ s16 field_0x6c4;
    /* 0x6C6 */ u8 field_0x6c6[0x6f2 - 0x6c6];
    /* 0x6F2 */ s16 field_0x6f2;
    /* 0x6F4 */ u8 field_0x6f4[0x704 - 0x6f4];
    /* 0x704 */ s16 field_0x704;
    /* 0x706 */ s16 field_0x706;
    /* 0x708 */ u8 field_0x708;
    /* 0x709 */ u8 field_0x709;
    /* 0x70A */ u8 field_0x70a;
    /* 0x70B */ u8 field_0x70b;
    /* 0x70C */ s8 field_0x70c;
    /* 0x70D */ s8 field_0x70d;
    /* 0x70E */ s16 field_0x70e;
    /* 0x710 */ s16 field_0x710;
    /* 0x714 */ cXyz field_0x714;
    /* 0x720 */ cXyz field_0x720;
    /* 0x72C */ f32 field_0x72c;
    /* 0x730 */ f32 field_0x730;
    /* 0x734 */ u8 field_0x734;
    /* 0x738 */ f32 field_0x738;
    /* 0x73C */ s16 field_0x73c[10];
    /* 0x750 */ s16 field_0x750;
    /* 0x752 */ s16 field_0x752;
    /* 0x754 */ s16 field_0x754;
    /* 0x756 */ u16 field_0x756;
    /* 0x758 */ s16 field_0x758;
    /* 0x75A */ u8 field_0x75a[0x75c - 0x75a];
    /* 0x75C */ s16 field_0x75c;
    /* 0x760 */ cXyz field_0x760;
    /* 0x76C */ cXyz field_0x76c;
    /* 0x778 */ cXyz field_0x778;
    /* 0x784 */ cXyz field_0x784;
    /* 0x790 */ cXyz field_0x790;
    /* 0x79C */ cXyz field_0x79c;
    /* 0x7A8 */ cXyz field_0x7a8;
    /* 0x7B4 */ u8 field_0x7b4;
    /* 0x7B5 */ u8 field_0x7b5;
    /* 0x7B6 */ u8 field_0x7b6;
    /* 0x7B7 */ u8 field_0x7b7;
    /* 0x7B8 */ u8 field_0x7b8;
    /* 0x7B9 */ u8 field_0x7b9;
    /* 0x7BA */ u8 field_0x7ba;
    /* 0x7BC */ f32 field_0x7bc;
    /* 0x7C0 */ f32 field_0x7c0;
    /* 0x7C4 */ f32 field_0x7c4;
    /* 0x7C8 */ u8 field_0x7c8[0x7cc - 0x7c8];
    /* 0x7CC */ u32 field_0x7cc;
    /* 0x7D0 */ u8 field_0x7d0[0x7d4 - 0x7d0];
    /* 0x7D4 */ u8 field_0x7d4;
    /* 0x7D5 */ u8 field_0x7d5;
    /* 0x7D6 */ u8 field_0x7d6;
    /* 0x7D7 */ u8 field_0x7d7;
    /* 0x7D8 */ u8 field_0x7d8[0x7e1 - 0x7d8];
    /* 0x7E1 */ s8 field_0x7e1;
    /* 0x7E4 */ fpc_ProcID mBoatId;
    /* 0x7E8 */ u8 field_0x7e8[0x7f8 - 0x7e8];
    /* 0x7F8 */ u8 field_0x7f8;
};

STATIC_ASSERT(sizeof(npc_henna_class) == 0x7fc);

class daNpc_Henna_HIO_c : public JORReflexible {
public:
    /* 80542F0C */ daNpc_Henna_HIO_c();
    /* 80549E40 */ virtual ~daNpc_Henna_HIO_c() {}
    void genMessage(JORMContext*);

    s8 field_0x4;
    f32 field_0x8;
    s16 field_0xc;
    s16 mSeasonDefColorR;
    s16 mSeasonDefColorG;
    s16 mSeasonDefColorB;
    s16 mSeason2ColorR;
    s16 mSeason2ColorG;
    s16 mSeason2ColorB;
    s16 mSeason3ColorR;
    s16 mSeason3ColorG;
    s16 mSeason3ColorB;
    f32 mSeasonDefLightDist;
    s16 mSeasonDefLightAngle;
    f32 mSeason2LightDist;
    s16 mSeason2LightAngle;
    f32 mSeason3LightDist;
    s16 mSeason3LightAngle;
};




#endif /* D_A_NPC_HENNA_H */
