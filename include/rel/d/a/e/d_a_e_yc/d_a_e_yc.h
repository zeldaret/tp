#ifndef D_A_E_YC_H
#define D_A_E_YC_H

#include "dolphin/types.h"
#include "f_op/f_op_actor.h"
#include "Z2AudioLib/Z2Creature.h"
#include "d/com/d_com_inf_game.h"
// #include "d/bg/d_bg_s_acch.h"
// #include "d/cc/d_cc_d.h"

// struct dCcD_GStts {
//     /* 80083760 */ dCcD_GStts();
//     /* 80083830 */ void Move();
// };

// struct dCcD_Stts {
//     /* 80083860 */ void Init(int, int, fopAc_ac_c*);
// };

// struct dCcD_SrcSph {};

// struct dCcD_Sph {
//     /* 80084A34 */ void Set(dCcD_SrcSph const&);
// };

// struct cCcD_Obj {};

// struct dCcD_GObjInf {
//     /* 80083A28 */ dCcD_GObjInf();
//     /* 80084460 */ int ChkTgHit();
//     /* 800844F8 */ cCcD_Obj* GetTgHitObj();
// };

// struct dBgS_PolyPassChk {
//     /* 80078E68 */ void SetObj();
// };

// struct dBgS_ObjAcch {
//     /* 807F274C */ ~dBgS_ObjAcch();
// };

// struct dBgS_AcchCir {
//     /* 80075EAC */ dBgS_AcchCir();
//     /* 80075F58 */ void SetWall(f32, f32);
// };

// struct dBgS {};

// struct dBgS_Acch {
//     /* 80075F94 */ ~dBgS_Acch();
//     /* 800760A0 */ dBgS_Acch();
//     /* 80076248 */ void Set(cXyz*, cXyz*, fopAc_ac_c*, int, dBgS_AcchCir*, cXyz*, csXyz*, csXyz*);
//     /* 80076AAC */ void CrrPos(dBgS&);
// };

// struct cM3dGSph {
//     /* 8026F648 */ void SetC(cXyz const&);
//     /* 8026F708 */ void SetR(f32);
//     /* 807F26BC */ ~cM3dGSph();
// };

// struct cM3dGAab {
//     /* 807F2704 */ ~cM3dGAab();
// };

// struct cCcS {
//     /* 80264BA8 */ void Set(cCcD_Obj*);
// };

// struct request_of_phase_process_class {};

// struct mDoMtx_stack_c {
//     /* 8000CE38 */ void scaleM(f32, f32, f32);

//     static u8 now[48];
// };

struct daE_YC_HIO_c {
    /* 807EFECC */ daE_YC_HIO_c();
    /* 807F27BC */ ~daE_YC_HIO_c();
};

// struct dVibration_c {
//     /* 8006FA24 */ void StartShock(int, int, cXyz);
// };

// struct dPa_levelEcallBack {};

// struct dPa_control_c {
//     struct level_c {
//         /* 8004B918 */ void getEmitter(u32);
//     };

//     /* 8004C218 */ void setHitMark(u16, fopAc_ac_c*, cXyz const*, csXyz const*, cXyz const*, u32);
//     /* 8004D4CC */ void set(u32, u8, u16, cXyz const*, dKy_tevstr_c const*, csXyz const*,
//                             cXyz const*, u8, dPa_levelEcallBack*, s8, _GXColor const*,
//                             _GXColor const*, cXyz const*, f32);
//     /* 8004CA90 */ void set(u8, u16, cXyz const*, dKy_tevstr_c const*, csXyz const*, cXyz const*,
//                             u8, dPa_levelEcallBack*, s8, _GXColor const*, _GXColor const*,
//                             cXyz const*, f32);
// };

class e_yc_class : public fopAc_ac_c {
public:
    /* 0x568 */ u8 field_0x568[80];
    /* 0x5B8 */ int field_0x5B8;
    /* 0x5BC */ Z2CreatureEnemy mEnemy;
    /* 0x660 */ int mAnm;
    /* 0x664 */ int field_0x664;
    /* 0x668 */ u8 field_0x668[6];
    /* 0x66E */ s16 mCurrentAction;
    /* 0x670 */ s16 field_0x670;
    /* 0x672 */ u8 field_0x672[2];
    /* 0x674 */ f32 field_0x674;
    /* 0x678 */ f32 field_0x678;
    /* 0x67C */ f32 field_0x67C;
    /* 0x680 */ s16 field_0x680;
    /* 0x682 */ u8 field_0x682[2];
    /* 0x684 */ f32 field_0x684;
    /* 0x688 */ u32 field_0x688;
    /* 0x68C */ u8 field_0x68C[4];
    /* 0x690 */ f32 field_0x690;
    /* 0x694 */ u8 field_0x694[28];
    /* 0x69C */ f32 field_0x69C;
    /* 0x6A0 */ s16 field_0x6A0;
    /* 0x6A2 */ s16 field_0x6A2;
    /* 0x6A4 */ s16 field_0x6A4;
    /* 0x6A6 */ s16 field_0x6A6;
    /* 0x6A8 */ s16 field_0x6A8;
    /* 0x6AA */ s16 field_0x6AA;
    /* 0x6AC */ void* field_0x6AC;
    /* 0x6B0 */ u8 field_0x6B0[72];    
    /* 0x6F4 */ dBgS_Acch mBgS_Acch;
    /* 0x8CC */ u8 field_0x8CC[28];
    /* 0x8E8 */ dCcD_GStts mCcD_GStts;
    /* 0x908 */ dCcD_GObjInf mCcD_GObjInf;
    /* 0xA0C */ u8 field_0xA0C[364];
    /* 0xB78 */ cCcD_Obj* mpTgHitObj;
};

#endif /* D_A_E_YC_H */
