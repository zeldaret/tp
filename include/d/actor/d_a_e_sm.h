#ifndef D_A_E_SM_H
#define D_A_E_SM_H
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class daE_SM_c
 * @brief ChuChu
 * 
 * @details 
 * 
*/

class daE_SM_c : public fopEn_enemy_c {
public:
    /* 80792260 */ void SetAnm(int, int, f32, f32);
    /* 8079230C */ int Draw();
    /* 807928A4 */ void Particle_Set(u16, cXyz, cXyz, csXyz);
    /* 80792914 */ void ArrowCheck();
    /* 80792C20 */ void E_SM_Damage();
    /* 80792E70 */ void SmDamageCheck();
    /* 807936B4 */ void E_SM_Normal();
    /* 80793B64 */ void E_SM_Move();
    /* 80793E18 */ void E_SM_Attack();
    /* 80794100 */ void Action();
    /* 80794338 */ void E_SM_C_Normal();
    /* 807943C4 */ void E_SM_C_Fight();
    /* 80794458 */ void E_SM_C_Near_Escape();
    /* 8079473C */ void E_SM_C_Far_Escape();
    /* 807949CC */ void E_SM_C_Home_Escape();
    /* 807951EC */ void E_SM_C_Escape();
    /* 80795244 */ void E_SM_C_Free();
    /* 80795530 */ void E_SM_C_Death();
    /* 807958A0 */ void C_DamageCheck();
    /* 80795E64 */ void E_SM_C_Hook();
    /* 80796060 */ void CheckViewArea();
    /* 807960E4 */ void CameraSet();
    /* 80796204 */ void SetStopCam(cXyz, f32, f32, s16);
    /* 80796324 */ void SetCMoveCam(cXyz, f32, f32);
    /* 80796368 */ void SetStopingCam();
    /* 807963EC */ void SetReleaseCam();
    /* 80796490 */ void DemoStart();
    /* 80796628 */ void DemoMid();
    /* 807968A0 */ void E_SM_C_Demo();
    /* 807968E4 */ void CoreAction();
    /* 80796AEC */ void ArrowOn();
    /* 80796D80 */ void Execute();
    /* 80796FC4 */ void setSmBaseMtx();
    /* 80797274 */ void setBaseMtx();
    /* 8079730C */ void CoCoreSet();
    /* 80797444 */ void CoSmSet();
    /* 80797570 */ void Delete();
    /* 8079764C */ void CreateHeap();
    /* 80797784 */ void initCoSph();
    /* 80797858 */ void Create();
    /* 80797CE0 */ daE_SM_c();

    /* 0x05AC */ request_of_phase_process_class mPhase;
    /* 0x05B4 */ mDoExt_McaMorfSO* mpModelMorf;
    /* 0x05B8 */ J3DModel* field_0x5b8;
    /* 0x05BC */ Z2CreatureEnemy mSound;
    /* 0x0660 */ Z2SoundObjSimple mSoundSimple;
    /* 0x0680 */ u8 field_0x680;
    /* 0x0681 */ u8 field_0x681;
    /* 0x0682 */ u8 field_0x682;
    /* 0x0683 */ u8 field_0x683;
    /* 0x0684 */ u8 field_0x684;
    /* 0x0685 */ u8 field_0x685;
    /* 0x0686 */ u8 field_0x686[0x688 - 0x686];
    /* 0x0688 */ int mAnm;
    /* 0x068C */ u8 field_0x68c;
    /* 0x068D */ u8 field_0x68d[0x690 - 0x68d];
    /* 0x0690 */ f32 field_0x690;
    /* 0x0694 */ f32 field_0x694;
    /* 0x0698 */ u8 field_0x698;
    /* 0x0699 */ u8 field_0x699[0x69c - 0x699];
    /* 0x069C */ f32 field_0x69c;
    /* 0x06A0 */ u8 field_0x6a0[0x6b0 - 0x6a0];
    /* 0x06B0 */ s16 mCoreAction;
    /* 0x06B2 */ s16 field_0x6b2;
    /* 0x06B4 */ s16 field_0x6b4;
    /* 0x06B6 */ s16 field_0x6b6;
    /* 0x06B8 */ f32 field_0x6b8;
    /* 0x06BC */ s16 field_0x6bc;
    /* 0x06BE */ s16 field_0x6be;
    /* 0x06C0 */ s16 field_0x6c0[5];
    /* 0x06CA */ s16 field_0x6ca[5];
    /* 0x06D4 */ s16 field_0x6d4;
    /* 0x06D6 */ s16 field_0x6d6;
    /* 0x06D8 */ s16 field_0x6d8;
    /* 0x06DA */ u8 field_0x6da[0x6dc - 0x6da];
    /* 0x06DC */ f32 field_0x6dc;
    /* 0x06E0 */ f32 field_0x6e0;
    /* 0x06E4 */ f32 field_0x6e4;
    /* 0x06E8 */ f32 field_0x6e8;
    /* 0x06EC */ u8 field_0x6ec[0x6f0 - 0x6ec];
    /* 0x06F0 */ f32 field_0x6f0;
    /* 0x06F4 */ u8 field_0x6f4[0x6f8 - 0x6f4];
    /* 0x06F8 */ s8 field_0x6f8;
    /* 0x06F9 */ s8 field_0x6f9[30]; 
    /* 0x0718 */ fpc_ProcID field_0x718[30];
    /* 0x0790 */ f32 field_0x790[30];
    /* 0x0808 */ csXyz field_0x808[30];
    /* 0x08BC */ csXyz field_0x8bc[30];
    /* 0x0970 */ f32 field_0x970;
    /* 0x0974 */ f32 field_0x974;
    /* 0x0978 */ f32 field_0x978;
    /* 0x097C */ f32 field_0x97c;
    /* 0x0980 */ f32 field_0x980;
    /* 0x0984 */ int field_0x984;
    /* 0x0988 */ s16 mAction;
    /* 0x098A */ s16 field_0x98a;
    /* 0x098C */ s16 field_0x98c;
    /* 0x098E */ u8 field_0x98e[0x990 - 0x98e];
    /* 0x0990 */ cXyz field_0x990;
    /* 0x099C */ cXyz field_0x99c;
    /* 0x09A8 */ f32 field_0x9a8;
    /* 0x09AC */ u8 field_0x9ac[0x9b0 - 0x9ac];
    /* 0x09B0 */ csXyz field_0x9b0;
    /* 0x09B6 */ u8 field_0x9b6[0x9b8 - 0x9b6];
    /* 0x09B8 */ cXyz field_0x9b8;
    /* 0x09C4 */ s8 field_0x9c4;
    /* 0x09C5 */ u8 field_0x9c5[0x9c8 - 0x9c5];
    /* 0x09C8 */ cXyz field_0x9c8;
    /* 0x09D4 */ cXyz field_0x9d4;
    /* 0x09E0 */ cXyz field_0x9e0;
    /* 0x09EC */ cXyz field_0x9ec;
    /* 0x09F8 */ cXyz field_0x9f8;
    /* 0x0A04 */ f32 field_0xa04;
    /* 0x0A08 */ u8 field_0xa08;
    /* 0x0A09 */ u8 field_0xa09;
    /* 0x0A0A */ s16 mDemoMode;
    /* 0x0A0C */ s16 field_0xa0c;
    /* 0x0A0E */ u8 field_0xa0e[0xa10 - 0xa0e];
    /* 0x0A10 */ u8 field_0xa10;
    /* 0x0A11 */ u8 field_0xa11[0xa14 - 0xa11];
    /* 0x0A14 */ u32 mShadowKey;
    /* 0x0A18 */ u32 field_0xa18;
    /* 0x0A1C */ u32 field_0xa1c;
    /* 0x0A20 */ dBgS_AcchCir field_0xa20;
    /* 0x0A60 */ dBgS_ObjAcch field_0xa60;
    /* 0x0C38 */ dBgS_AcchCir field_0xc38;
    /* 0x0C78 */ dBgS_ObjAcch field_0xc78;
    /* 0x0E50 */ dCcD_Stts field_0xe50;
    /* 0x0E8C */ dCcD_Stts field_0xe8c;
    /* 0x0EC8 */ dCcD_Sph mCoCore;
    /* 0x1000 */ dCcD_Sph mCoSm;
    /* 0x1138 */ dCcU_AtInfo mAtInfo;
    /* 0x115C */ u8 field_0x115c;
    /* 0x115D */ u8 field_0x115d[0x1160 - 0x115d];
};

STATIC_ASSERT(sizeof(daE_SM_c) == 0x1160);

class daE_Sm_HIO_c : public JORReflexible {
    /* 8079222C */ daE_Sm_HIO_c();
    /* 807980E8 */ virtual ~daE_Sm_HIO_c() {}

    /* スライム - Slime */
    /* 0x04 */ s8 field_0x4;
    /* 0x08 */ f32 basic_size;      // 基本大きさ - Basic Size
    /* 0x0C */ f32 pl_notice_dist;  // PL認識距離 - PL Notice Distance   
    /* 0x10 */ f32 core_size;       // コア大きさ - Core Size
};

#endif /* D_A_E_SM_H */
