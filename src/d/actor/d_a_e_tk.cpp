/**
 * @file d_a_e_tk.cpp
 *
 */

#include "d/actor/d_a_e_tk.h"
#include "d/d_cc_d.h"
#include "d/d_com_inf_game.h"
#include "dol2asm.h"
#include "f_op/f_op_kankyo_mng.h"

//
// Forward References:
//

extern "C" void __ct__12daE_TK_HIO_cFv();
// extern "C" static void anm_init__FP10e_tk_classifUcf();
extern "C" void daE_TK_Draw__FP10e_tk_class();
// extern "C" static void other_bg_check__FP10e_tk_classP10fopAc_ac_c();
// extern "C" static void pl_y_check__FP10e_tk_class();
// extern "C" static void pl_check__FP10e_tk_classfs();
// extern "C" static void damage_check__FP10e_tk_class();
// extern "C" static void way_bg_check__FP10e_tk_classf();
// extern "C" static void e_tk_wait_0__FP10e_tk_class();
extern "C" void e_tk_find__FP10e_tk_class();
// extern "C" static void e_tk_attack__FP10e_tk_class();
// extern "C" static void e_tk_pathswim__FP10e_tk_class();
// extern "C" static void e_tk_s_damage__FP10e_tk_class();
// extern "C" static void e_tk_damage__FP10e_tk_class();
extern "C" void action__FP10e_tk_class();
extern "C" void daE_TK_Execute__FP10e_tk_class();
extern "C" bool daE_TK_IsDelete__FP10e_tk_class();
extern "C" void daE_TK_Delete__FP10e_tk_class();
// extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void daE_TK_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12daE_TK_HIO_cFv();
extern "C" void __sinit_d_a_e_tk_cpp();
extern "C" void func_807BA248();  // static
extern "C" void func_807BA250();  // static
extern "C" char const* const d_a_e_tk__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_effHamonSet__FPUlPC4cXyzff();
extern "C" void fopKyM_createWpillar__FPC4cXyzfi();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void dPath_GetRoomPath__Fii();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__18dBgS_ObjGndChk_SplFv();
extern "C" void __dt__18dBgS_ObjGndChk_SplFv();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void at_power_check__FP11dCcU_AtInfo();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
// extern "C" void _savegpr_27();
// extern "C" void _savegpr_28();
// extern "C" void _savegpr_29();
// extern "C" void _restgpr_27();
// extern "C" void _restgpr_28();
// extern "C" void _restgpr_29();
// extern "C" void* __vt__8dCcD_Sph[36];
// extern "C" void* __vt__9dCcD_Stts[11];
// extern "C" void* __vt__12cCcD_SphAttr[25];
// extern "C" void* __vt__14cCcD_ShapeAttr[22];
// extern "C" void* __vt__9cCcD_Stts[8];
// extern "C" u8 now__14mDoMtx_stack_c[48];
// extern "C" u8 g_dComIfG_gameInfo[122384];
// extern "C" void* calc_mtx[1 + 1 /* padding */];
// extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 807BA26C-807BA270 000000 0004+00 11/11 0/0 0/0 .rodata          @3762 */
SECTION_RODATA static f32 const lit_3762 = 19.0f / 10.0f;
COMPILER_STRIP_GATE(0x807BA26C, &lit_3762);

/* 807BA270-807BA274 000004 0004+00 0/1 0/0 0/0 .rodata          @3763 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3763 = 1400.0f;
COMPILER_STRIP_GATE(0x807BA270, &lit_3763);
#pragma pop

/* 807BA274-807BA278 000008 0004+00 0/1 0/0 0/0 .rodata          @3764 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3764 = 500.0f;
COMPILER_STRIP_GATE(0x807BA274, &lit_3764);
#pragma pop

/* 807BA278-807BA27C 00000C 0004+00 0/2 0/0 0/0 .rodata          @3765 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3765 = 10.0f;
COMPILER_STRIP_GATE(0x807BA278, &lit_3765);
#pragma pop

/* 807BA27C-807BA280 000010 0004+00 0/1 0/0 0/0 .rodata          @3766 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3766 = 25.0f;
COMPILER_STRIP_GATE(0x807BA27C, &lit_3766);
#pragma pop

/* 807BA2F8-807BA32C -00001 0034+00 1/1 0/0 0/0 .data            @4023 */
SECTION_DATA static void* lit_4023[13] = {
    (void*)(((char*)e_tk_find__FP10e_tk_class) + 0x5C),
    (void*)(((char*)e_tk_find__FP10e_tk_class) + 0x7C),
    (void*)(((char*)e_tk_find__FP10e_tk_class) + 0xEC),
    (void*)(((char*)e_tk_find__FP10e_tk_class) + 0x134),
    (void*)(((char*)e_tk_find__FP10e_tk_class) + 0x154),
    (void*)(((char*)e_tk_find__FP10e_tk_class) + 0x344),
    (void*)(((char*)e_tk_find__FP10e_tk_class) + 0x344),
    (void*)(((char*)e_tk_find__FP10e_tk_class) + 0x344),
    (void*)(((char*)e_tk_find__FP10e_tk_class) + 0x344),
    (void*)(((char*)e_tk_find__FP10e_tk_class) + 0x344),
    (void*)(((char*)e_tk_find__FP10e_tk_class) + 0x1D8),
    (void*)(((char*)e_tk_find__FP10e_tk_class) + 0x1F8),
    (void*)(((char*)e_tk_find__FP10e_tk_class) + 0x260),
};

/* 807BA32C-807BA358 -00001 002C+00 1/1 0/0 0/0 .data            @4185 */
SECTION_DATA static void* lit_4185[11] = {
    (void*)(((char*)action__FP10e_tk_class) + 0x74),
    (void*)(((char*)action__FP10e_tk_class) + 0x80),
    (void*)(((char*)action__FP10e_tk_class) + 0x90),
    (void*)(((char*)action__FP10e_tk_class) + 0xC0),
    (void*)(((char*)action__FP10e_tk_class) + 0xC0),
    (void*)(((char*)action__FP10e_tk_class) + 0xA0),
    (void*)(((char*)action__FP10e_tk_class) + 0xC0),
    (void*)(((char*)action__FP10e_tk_class) + 0xC0),
    (void*)(((char*)action__FP10e_tk_class) + 0xC0),
    (void*)(((char*)action__FP10e_tk_class) + 0xAC),
    (void*)(((char*)action__FP10e_tk_class) + 0xB8),
};

/* 807BA358-807BA398 000060 0040+00 1/1 0/0 0/0 .data            cc_sph_src$4408 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0xd}, {0xd8fbfdff, 0x3}, 0x75}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},                 // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2},                 // mGObjTg
        {0x0},                                              // mGObjCo
    },                                                      // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f}  // mSph
    }  // mSphAttr
};

/* 807BA3E8-807BA3F4 0000F0 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
// SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__8cM3dGSphFv,
// };

/* 807BA3F4-807BA400 0000FC 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
// SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__8cM3dGAabFv,
// };

/* 807BA400-807BA424 000108 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
// SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__12dBgS_ObjAcchFv,
//     (void*)NULL,
//     (void*)NULL,
//     (void*)func_807BA250,
//     (void*)NULL,
//     (void*)NULL,
//     (void*)func_807BA248,
// };

/* 807BA424-807BA430 00012C 000C+00 2/2 0/0 0/0 .data            __vt__12daE_TK_HIO_c */
// SECTION_DATA extern void* __vt__12daE_TK_HIO_c[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__12daE_TK_HIO_cFv,
// };

/* 807B81EC-807B8234 0000EC 0048+00 1/1 0/0 0/0 .text            __ct__12daE_TK_HIO_cFv */
daE_TK_HIO_c::daE_TK_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807BA280-807BA284 000014 0004+00 1/8 0/0 0/0 .rodata          @3780 */
// SECTION_RODATA static u8 const lit_3780[4] = {
//     0x00,
//     0x00,
//     0x00,
//     0x00,
// };
// COMPILER_STRIP_GATE(0x807BA280, &lit_3780);

/* 807BA284-807BA288 000018 0004+00 1/1 0/0 0/0 .rodata          @3781 */
// SECTION_RODATA static f32 const lit_3781 = -1.0f;
// COMPILER_STRIP_GATE(0x807BA284, &lit_3781);

/* 807BA2F0-807BA2F0 000084 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
// #pragma push
// #pragma force_active on
// SECTION_DEAD static char const* const stringBase_807BA2F0 = "E_tk";
// #pragma pop

/* 807B8234-807B82E0 000134 00AC+00 6/6 0/0 0/0 .text            anm_init__FP10e_tk_classifUcf */
static void anm_init(e_tk_class* i_this, int i_attr, f32 i_morf, u8 i_index, f32 i_rate) {
    J3DAnmTransform* anm = (J3DAnmTransform*)dComIfG_getObjectRes("E_tk", i_attr);

    i_this->mpMorf->setAnm(anm, i_attr & 0xff, i_morf, i_rate, 0.0f, -1.0f);
    i_this->mNextSound = i_index;
}

/* 807B82E0-807B8350 0001E0 0070+00 1/0 0/0 0/0 .text            daE_TK_Draw__FP10e_tk_class */
static int daE_TK_Draw(e_tk_class* i_this) {
    J3DModel* model = i_this->mpMorf->getModel();

    g_env_light.settingTevStruct(0, fopAcM_GetPosition_p(i_this), &i_this->tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &i_this->tevStr);
    i_this->mpMorf->entryDL();
    return 1;
}

/* ############################################################################################## */
/* 807BA288-807BA28C 00001C 0004+00 1/3 0/0 0/0 .rodata          @3820 */
// SECTION_RODATA static f32 const lit_3820 = 100.0f;
// COMPILER_STRIP_GATE(0x807BA288, &lit_3820);

/* 807B8350-807B8428 000250 00D8+00 1/1 0/0 0/0 .text other_bg_check__FP10e_tk_classP10fopAc_ac_c
 */
static bool other_bg_check(e_tk_class* i_this, fopAc_ac_c* i_ac) {
    dBgS_LinChk lineCheck;
    cXyz start_pos;
    cXyz end_pos;

    end_pos = i_ac->current.pos;
    end_pos.y += 100.0f;
    start_pos = i_this->current.pos;
    start_pos.y = i_this->eyePos.y;

    lineCheck.Set(&start_pos, &end_pos, i_this);

    if (dComIfG_Bgsp().LineCross(&lineCheck) != 0) {
        return true;
    } else {
        return false;
    }
}

/* ############################################################################################## */
/* 807BA28C-807BA290 000020 0004+00 1/1 0/0 0/0 .rodata          @3830 */
// SECTION_RODATA static f32 const lit_3830 = 130.0f;
// COMPILER_STRIP_GATE(0x807BA28C, &lit_3830);

/* 807B8428-807B8460 000328 0038+00 3/3 0/0 0/0 .text            pl_y_check__FP10e_tk_class */
static bool pl_y_check(e_tk_class* i_this) {
    // fopAc_ac_c* player = dComIfGp_getPlayer(0);
    return ((fopAcM_GetPosition(i_this).y - fopAcM_GetPosition(dComIfGp_getPlayer(0)).y) >
            130.0f) == 0;
}

/* 807B8460-807B84DC 000360 007C+00 4/4 0/0 0/0 .text            pl_check__FP10e_tk_classfs */
static bool pl_check(e_tk_class* i_this, f32 i_limit, s16 i_unk) {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);

    if ((i_this->mPlayerDistanceLimit < i_limit) &&
        (i_this->shape_angle.y - i_this->mPlayerAngleY < i_unk) &&
        (i_this->shape_angle.y - i_this->mPlayerAngleY > -i_unk) &&
        (other_bg_check(i_this, player) == 0))
    {
        return true;
    } else {
        return false;
    }
}

/* 807B84DC-807B85DC 0003DC 0100+00 1/1 0/0 0/0 .text            damage_check__FP10e_tk_class */
static void damage_check(e_tk_class* i_this) {
    if (i_this->mState == 0x00) {
        i_this->mStts.Move();

        if (i_this->mSph.ChkTgHit()) {
            (i_this->mAtInfo).mpCollider = i_this->mSph.GetTgHitObj();
            at_power_check(&i_this->mAtInfo);

            if (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_UNK)) {
                i_this->mState = 0x14;
            } else {
                i_this->mState = 0x0A;
            }

            if (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_HOOKSHOT)) {
                i_this->mNextAction = 0x1;
                i_this->mNextAnim = 0xA;
                i_this->mAngle1[0] = 0x32;
            } else {
                cc_at_check(i_this, &i_this->mAtInfo);
                if ((i_this->mAtInfo).mHitType == 0x10) {
                    i_this->mNextAction = 0x9;
                } else {
                    i_this->mNextAction = 0xA;
                }
                i_this->mNextAnim = 0x0;
            }
        }

        if (i_this->health <= 1) {
            i_this->health = 0;
            i_this->mSph.SetTgHitMark(CcG_Tg_UNK_MARK_3);
        }
    }
}

/* ############################################################################################## */
/* 807BA290-807BA294 000024 0004+00 0/3 0/0 0/0 .rodata          @3897 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_3897 = 50.0f;
// COMPILER_STRIP_GATE(0x807BA290, &lit_3897);
// #pragma pop

/* 807BA294-807BA298 000028 0004+00 0/2 0/0 0/0 .rodata          @3898 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_3898 = -50.0f;
// COMPILER_STRIP_GATE(0x807BA294, &lit_3898);
// #pragma pop

/* 807B85DC-807B86EC 0004DC 0110+00 1/1 0/0 0/0 .text            way_bg_check__FP10e_tk_classf */
static bool way_bg_check(e_tk_class* i_this, f32 i_limit) {
    cXyz end_pos;
    cXyz start_pos;
    cXyz mtx_pos;

    dBgS_LinChk lineCheck;

    start_pos = i_this->current.pos;
    start_pos.y = start_pos.y - 50.0f;

    mDoMtx_YrotS(*calc_mtx, i_this->shape_angle.y);

    mtx_pos.x = 0.0;
    mtx_pos.y = -50.0f;
    mtx_pos.z = i_limit;

    MtxPosition(&mtx_pos, &end_pos);
    VECAdd(&end_pos, &i_this->current.pos, &end_pos);

    lineCheck.Set(&start_pos, &end_pos, i_this);
    if (dComIfG_Bgsp().LineCross(&lineCheck) != 0) {
        return true;
    } else {
        return false;
    }
}

/* ############################################################################################## */
/* 807BA298-807BA29C 00002C 0004+00 0/3 0/0 0/0 .rodata          @3937 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_3937 = 5.0f;
// COMPILER_STRIP_GATE(0x807BA298, &lit_3937);
// #pragma pop

/* 807BA29C-807BA2A0 000030 0004+00 1/8 0/0 0/0 .rodata          @3938 */
// SECTION_RODATA static f32 const lit_3938 = 1.0f;
// COMPILER_STRIP_GATE(0x807BA29C, &lit_3938);

/* 807BA2A0-807BA2A4 000034 0004+00 0/1 0/0 0/0 .rodata          @3939 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_3939 = 8000.0f;
// COMPILER_STRIP_GATE(0x807BA2A0, &lit_3939);
// #pragma pop

/* 807BA2A4-807BA2A8 000038 0004+00 0/3 0/0 0/0 .rodata          @3940 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_3940 = 30.0f;
// COMPILER_STRIP_GATE(0x807BA2A4, &lit_3940);
// #pragma pop

/* 807BA2A8-807BA2AC 00003C 0004+00 0/2 0/0 0/0 .rodata          @3941 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3941 = 200.0f;
COMPILER_STRIP_GATE(0x807BA2A8, &lit_3941);
#pragma pop

/* 807BA2AC-807BA2B0 000040 0004+00 0/1 0/0 0/0 .rodata          @3942 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_3942 = 2000.0f;
// COMPILER_STRIP_GATE(0x807BA2AC, &lit_3942);
// #pragma pop

/* 807BA438-807BA43C 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_807BA438;

/* 807BA43C-807BA448 00000C 000C+00 1/1 0/0 0/0 .bss             @3757 */
static u8 lit_3757[12];

/* 807BA448-807BA464 000018 001C+00 7/7 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[28];

/* 807B86EC-807B8980 0005EC 0294+00 1/1 0/0 0/0 .text            e_tk_wait_0__FP10e_tk_class */
static void e_tk_wait_0(e_tk_class* i_this) {
    f32 fVar2;
    cXyz src_pos;

    // fVar2 = d_s_play::g_regHIO.mChildReg[6].mFloatReg[5] + 1.0;
    i_this->mLoopFlag = true;

    switch (i_this->mNextAnim) {
    case 0x0:
        anm_init(i_this, 9, 5.0f, 2, 1.0f);
        i_this->mNextAnim = 0x1;
        break;
    case 0x1:
        if (i_this->mAngle1[0] == 0) {
            src_pos = i_this->home.pos - i_this->current.pos;
            i_this->mSomeAngle = cM_atan2s(src_pos.x, src_pos.z) + (short)(int)cM_rndFX(8000.0f);
            i_this->mAngle1[0] = (short)(cM_rndF(30.0f) + 30.0f);
        }

        if (i_this->mAngle1[2] == 0 && way_bg_check(i_this, 0.0f) != 0) {
            i_this->mAngle1[2] = 0x28;
            src_pos = i_this->home.pos - i_this->current.pos;
            i_this->mSomeAngle = cM_atan2s(src_pos.x, src_pos.z) + (short)(int)cM_rndFX(2000.0f);
            i_this->mAngle1[0] = (short)(cM_rndF(30.0f) + 30.0f);
        }

        if (i_this->mAngle1[1] == 0 && pl_y_check(i_this) != 0 && pl_check(i_this, 0.0f, 0x4000)) {
            i_this->mNextAction = 0x1;
            if (pl_check(i_this, 0.0f, 0x4000)) {
                i_this->mNextAnim = 0xc;
            } else {
                i_this->mNextAnim = 0x0;
            }
        }
        break;
    }

    cLib_addCalcAngleS2(&i_this->shape_angle.y, (int)i_this->mSomeAngle, 0x10, 0x400);
    cLib_addCalcAngleS2(&i_this->shape_angle.x, 0, 0x10, 0x400);
    cLib_addCalc2(&i_this->speedF, 1.0, 1.0, fVar2);
    cMtx_YrotS(*calc_mtx, i_this->shape_angle.y);

    src_pos.setall(0.0f);
    src_pos.z = i_this->speedF;
    MtxPosition(&src_pos, &i_this->speed);
    i_this->current.pos += i_this->speed;
}

/* ############################################################################################## */
/* 807BA2B0-807BA2B4 000044 0004+00 0/3 0/0 0/0 .rodata          @4017 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4017 = 3.0f;
// COMPILER_STRIP_GATE(0x807BA2B0, &lit_4017);
// #pragma pop

/* 807B8980-807B8D78 000880 03F8+00 2/1 0/0 0/0 .text            e_tk_find__FP10e_tk_class */
static void e_tk_find(e_tk_class* i_this) {
    switch (i_this->mNextAnim) {
    case 0x0:
        anm_init(i_this, 4, 3.0f, 0, 1.0f);
        i_this->mNextAnim = 0x1;
        break;

    case 0x1:
        if (i_this->mpMorf->isStop() != 0) {
            anm_init(i_this, 10, 3.0f, 2, 1.0f);
            i_this->mNextAnim = 0x2;
            i_this->mAngle1[0] = (short)(int)(cM_rndF(10.0) + 10.0f);
        }
        break;

    case 0x2:
        if (i_this->mAngle1[0] == 0) {
            i_this->mNextAction = 0x2;
            i_this->mNextAnim = 0x0;
        } else {
            if (pl_check(i_this, 0.0f, 0x4000)) {
                i_this->mNextAnim = 0xa;
            }
        }
        break;

    case 0x3:
        anm_init(i_this, 7, 3.0f, 0, 1.0f);
        i_this->mNextAnim = 0x4;
        break;

    case 0x4:
        i_this->mLoopFlag = true;
        if (i_this->mpMorf->isStop() != 0) {
            if (i_this->mUnkFlag) {
                i_this->mNextAction = 0x5;
                i_this->mNextAnim = 0x0;
            } else {
                i_this->mNextAction = 0x0;
                i_this->mNextAnim = 0x0;
                i_this->mAngle1[0] = 0;
                i_this->mAngle1[1] = (short)(int)(cM_rndF(30.0) + 30.0);
            }
        }
        break;

    case 0xa:
        anm_init(i_this, 7, 3.0f, 0, 3.0f);
        i_this->mNextAnim = 0xb;
        break;

    case 0xb:
        i_this->mPlayerAngleY = i_this->mPlayerAngleY + -0x8000;
        i_this->mLoopFlag = true;
        if (i_this->mpMorf->isStop() != 0) {
            i_this->mAnimSpeed = 4.0;
            anm_init(i_this, 9, 0.0f, 2, i_this->mAnimSpeed);
            i_this->mNextAnim = 0xc;
        }
        break;

    case 0xc:
        i_this->mLoopFlag = true;
        cLib_addCalc2(&i_this->mAnimSpeed, 2.0f, 1.0f, 0.15f);
        i_this->mpMorf->setPlaySpeed(i_this->mAnimSpeed);
        //   fVar1 = d_s_play::g_regHIO.mChildReg[6].mFloatReg[0x11] + 1.0;
        //   fVar2 = d_s_play::g_regHIO.mChildReg[6].mFloatReg[0x12] + 10.0;
        if (i_this->mAngle1[0] != 0 || i_this->mPlayerDistanceLimit <= 1.2f) {
            if (i_this->mAngle1[1] == 0 && i_this->mAcch.ChkWallHit() != 0) {
                i_this->mAngle1[1] = (short)(int)(cM_rndF(10.0f) + 20.0f);
                i_this->mSomeAngle = i_this->mPlayerAngleY + (short)(int)cM_rndFX(8000.0f);
            }
        } else {
            i_this->mNextAnim = 0x0;
        }
        if (i_this->mAngle1[1] == 0) {
            i_this->mPlayerAngleY = i_this->mPlayerAngleY + -0x8000;
        } else {
            i_this->mPlayerAngleY = i_this->mSomeAngle;
        }
        break;
    }

    cLib_addCalcAngleS2(&i_this->shape_angle.y, (int)i_this->mPlayerAngleY, 4, 0x800);
    cLib_addCalc2(&i_this->speedF, 0.0f, 1.0f, 3.0f);
    cMtx_YrotS(*calc_mtx, i_this->shape_angle.y);

    cXyz local_58 = cXyz(0.0f, 0.0f, i_this->speedF);
    MtxPosition(&local_58, &i_this->speed);
    i_this->current.pos += i_this->speed;
    cLib_addCalcAngleS2(&i_this->shape_angle.x, 0, 4, 0x400);
}

/* ############################################################################################## */
/* 807BA2B4-807BA2B8 000048 0004+00 0/0 0/0 0/0 .rodata          @4018 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4018 = 4.0f;
COMPILER_STRIP_GATE(0x807BA2B4, &lit_4018);
#pragma pop

/* 807BA2B8-807BA2BC 00004C 0004+00 0/3 0/0 0/0 .rodata          @4019 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4019 = 2.0f;
COMPILER_STRIP_GATE(0x807BA2B8, &lit_4019);
#pragma pop

/* 807BA2BC-807BA2C0 000050 0004+00 0/0 0/0 0/0 .rodata          @4020 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4020 = 3.0f / 20.0f;
COMPILER_STRIP_GATE(0x807BA2BC, &lit_4020);
#pragma pop

/* 807BA2C0-807BA2C4 000054 0004+00 0/0 0/0 0/0 .rodata          @4021 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4021 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x807BA2C0, &lit_4021);
#pragma pop

/* 807BA2C4-807BA2C8 000058 0004+00 0/2 0/0 0/0 .rodata          @4022 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4022 = 20.0f;
COMPILER_STRIP_GATE(0x807BA2C4, &lit_4022);
#pragma pop

/* 807BA2C8-807BA2CC 00005C 0004+00 0/3 0/0 0/0 .rodata          @4066 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4066 = 60.0f;
// COMPILER_STRIP_GATE(0x807BA2C8, &lit_4066);
// #pragma pop

/* 807B8D78-807B8F68 000C78 01F0+00 1/1 0/0 0/0 .text            e_tk_attack__FP10e_tk_class */
static void e_tk_attack(e_tk_class* i_this) {
    short sVar1 = i_this->mNextAnim;
    if (sVar1 == 1) {
        if (pl_y_check(i_this) != 0) {
            if ((int)i_this->mpMorf->getFrame() == 0x18) {
                s8 sVar5 = fopAcM_GetRoomNo(i_this);
                fpc_ProcID uVar2 = fopAcM_GetID(i_this);
                i_this->mpTK_Ball = fopAcM_createChild(PROC_E_TK_BALL, uVar2, 0, &i_this->eyePos,
                                                       (int)sVar5, &i_this->shape_angle, 0, -1, 0);
            }
            if (i_this->mpMorf->getFrame() == 0x1c) {
                i_this->mParticleSpawned = true;
            }
        }
        if (i_this->mpMorf->isStop() != 0) {
            anm_init(i_this, 10, 1.0f, 2, 1.0f);
            i_this->mAngle1[0] = (short)(int)(cM_rndF(30.0f) + 60.0f);
            i_this->mNextAnim = 0x2;
        }
    } else if (sVar1 < 1) {
        if (sVar1 > -1) {
            i_this->mNextAnim = 0x1;
            anm_init(i_this, 5, 3.0f, 0, 1.0f);
        }
    } else if (sVar1 < 3) {
        if ((pl_y_check(i_this) == 0) || (i_this->mAngle1[0] == 0)) {
            i_this->mNextAction = 0x1;
            i_this->mNextAnim = 0x3;
        }
        if (pl_check(i_this, 0.0f, 0x4000)) {
            i_this->mNextAction = 0x1;
            i_this->mNextAnim = 0xa;
        }
    }
    cLib_addCalcAngleS2(&i_this->shape_angle.y, (int)i_this->mPlayerAngleY, 4, 0x800);
}

/* 807B8F68-807B92C4 000E68 035C+00 1/1 0/0 0/0 .text            e_tk_pathswim__FP10e_tk_class */
static void e_tk_pathswim(e_tk_class* i_this) {
    float fVar1;
    float fVar2;
    int iVar4;
    float fVar7;
    cXyz local_50;

    fVar1 = 1.0;
    // fVar2 = d_s_play::g_regHIO.mChildReg[6].mFloatReg[5] + 1.0;

    switch (i_this->mNextAnim) {
    case 0:
        anm_init(i_this, 0x9, 5.0f, 0x2, 1.0f);
        i_this->mNextAnim = 1;
        // Fallthrough
    case 1:
        i_this->mWtf2 += i_this->mWtf3;
        if ((int)i_this->mWtf2 < (int)(*(u8*)i_this->mRoomPath & 0xff)) {
            if (i_this->mWtf2 < 0x0) {
                i_this->mWtf3 = 0x1;
                i_this->mWtf2 = 0x1;
            }
        } else {
            if (dPath_ChkClose(i_this->mRoomPath) == 0) {
                i_this->mWtf3 = -1;
                i_this->mWtf2 = (char)*(u8*)i_this->mRoomPath + -2;
            } else {
                i_this->mWtf2 = 0x1;
            }
        }
        iVar4 = i_this->mRoomPath->m_points->mArg1 + i_this->mWtf2 * 0x10;  //?
        (i_this->mPos).x = *(float*)(iVar4 + 4) + cM_rndFX(100.0);
        (i_this->mPos).z = *(float*)(iVar4 + 12) + cM_rndFX(100.0);
        i_this->mNextAnim = 2;
        break;

    case 2:
        local_50 = i_this->mPos - i_this->current.pos;
        if (JMAFastSqrt(local_50.x * local_50.x + local_50.z * local_50.z) < 100.0f) {
            if (i_this->mRoomPath->m_points->mArg1 + i_this->mWtf2 * 0x10 + 3 == 0x2) {
                i_this->mNextAnim = 1;
            } else {
                anm_init(i_this, 0x8, 5.0, 0x2, 1.0);
                i_this->mAngle1[0] = (short)(int)(cM_rndF(60.0f) + 50.0f);
                i_this->mAngle1[1] = 0x14;
                i_this->mNextAnim = 3;
            }
        }
        i_this->mSomeAngle = cM_atan2s(local_50.x, local_50.z);
        break;

    case 3:
        fVar1 = 0.0;
        fVar2 = 3.0;
        if ((i_this->mAngle1[1] == 0) && (pl_y_check(i_this)) && (pl_check(i_this, 0, 0x4000))) {
            i_this->mNextAction = 1;
            anm_init(i_this, 0xA, 5.0f, 0x2, 1.0f);
            i_this->mNextAnim = 2;
            i_this->mAngle1[0] = (short)(int)(cM_rndF(20.0f) + 20.0f);
        }
        if (i_this->mAngle1[0] == 0) {
            i_this->mNextAnim = 0;
        }
        break;
    }

    cLib_addCalcAngleS2(&i_this->shape_angle.y, (int)i_this->mSomeAngle, 8, 0x400);
    cLib_addCalc2(&i_this->speedF, fVar1, 1.0f, fVar2);
    cMtx_YrotS(*calc_mtx, i_this->shape_angle.y);

    local_50.setall(0.0f);
    local_50.z = i_this->speedF;
    MtxPosition(&local_50, &i_this->speed);
    i_this->current.pos += i_this->speed;
}

/* 807B92C4-807B9354 0011C4 0090+00 1/1 0/0 0/0 .text            e_tk_s_damage__FP10e_tk_class */
static void e_tk_s_damage(e_tk_class* i_this) {
    switch (i_this->mNextAnim) {
    case 0x0:
        anm_init(i_this, 6, 2.0f, 0x0, 1.0f);
        i_this->mNextAnim = 0x1;
        break;
    case 0x1:
        if (i_this->mpMorf->getFrame() > 10.0f) {
            i_this->mNextAction = 0x1;
            i_this->mNextAnim = 0x3;
        }
        break;
    }
}

/* 807B9354-807B941C 001254 00C8+00 1/1 0/0 0/0 .text            e_tk_damage__FP10e_tk_class */
static void e_tk_damage(e_tk_class* i_this) {
    i_this->mState = 0x6;
    i_this->mLoopFlag = true;

    switch (i_this->mNextAnim) {
    case 0x0:
        anm_init(i_this, 6, 2.0f, 0, 1.0f);
        i_this->mNextAnim = 0x1;
        break;
    case 0x1:
        if (i_this->mpMorf->isStop() != 0) {
            fopAcM_createDisappear(i_this, &i_this->eyePos, 10, 0, 0x11);
            fopAcM_delete(i_this);
        }
        break;
    }
}

/* 807B941C-807B9554 00131C 0138+00 2/1 0/0 0/0 .text            action__FP10e_tk_class */
static void action(e_tk_class* i_this) {
    i_this->mPlayerAngleY = fopAcM_searchPlayerAngleY(i_this);
    i_this->mPlayerDistanceLimit = fopAcM_searchPlayerDistance(i_this);
    damage_check(i_this);

    s8 link_search_flag = false;
    switch (i_this->mNextAction) {
    case 0:
        e_tk_wait_0(i_this);
        break;
    case 1:
        e_tk_find(i_this);
        link_search_flag = true;
        break;
    case 2:
        e_tk_attack(i_this);
        link_search_flag = true;
        break;
    case 5:
        e_tk_pathswim(i_this);
        break;
    case 9:
        e_tk_s_damage(i_this);
        break;
    case 10:
        e_tk_damage(i_this);
        break;
    }

    if (link_search_flag) {
        i_this->mZ2CreatureEnemy.setLinkSearch(true);
    } else {
        i_this->mZ2CreatureEnemy.setLinkSearch(false);
    }

    if (i_this->speedF < 2.0f) {
        cXyz this_pos = fopAcM_GetPosition(i_this);
        fopAcM_effHamonSet(&i_this->mHamonSet, &this_pos, 2.3f, 0.05f);
    }
}

/* ############################################################################################## */
/* 807BA2CC-807BA2D0 000060 0004+00 0/1 0/0 0/0 .rodata          @4183 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4183 = 23.0f / 10.0f;
COMPILER_STRIP_GATE(0x807BA2CC, &lit_4183);
#pragma pop

/* 807BA2D0-807BA2D4 000064 0004+00 0/0 0/0 0/0 .rodata          @4184 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4184 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x807BA2D0, &lit_4184);
#pragma pop

/* 807BA2D4-807BA2D8 000068 0004+00 0/1 0/0 0/0 .rodata          @4354 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4354 = 6.0f;
// COMPILER_STRIP_GATE(0x807BA2D4, &lit_4354);
// #pragma pop

/* 807BA2D8-807BA2DC 00006C 0004+00 0/1 0/0 0/0 .rodata          @4355 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4355 = 12.0f;
// COMPILER_STRIP_GATE(0x807BA2D8, &lit_4355);
// #pragma pop

/* 807BA2DC-807BA2E0 000070 0004+00 0/1 0/0 0/0 .rodata          @4356 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4356 = 18.0f;
// COMPILER_STRIP_GATE(0x807BA2DC, &lit_4356);
// #pragma pop

/* 807BA2E0-807BA2E4 000074 0004+00 0/1 0/0 0/0 .rodata          @4357 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4357 = 24.0f;
// COMPILER_STRIP_GATE(0x807BA2E0, &lit_4357);
// #pragma pop

/* 807BA2E4-807BA2E8 000078 0004+00 0/1 0/0 0/0 .rodata          @4358 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4358 = 27.0f;
// COMPILER_STRIP_GATE(0x807BA2E4, &lit_4358);
// #pragma pop

/* 807BA2E8-807BA2EC 00007C 0004+00 0/1 0/0 0/0 .rodata          @4359 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4359 = 35.0f;
// COMPILER_STRIP_GATE(0x807BA2E8, &lit_4359);
// #pragma pop

/* 807B9554-807B9C50 001454 06FC+00 2/1 0/0 0/0 .text            daE_TK_Execute__FP10e_tk_class */
static int daE_TK_Execute(e_tk_class* i_this) {
    dBgS* pdVar1;
    float* pfVar2;
    s8 sVar5;
    char cVar6;
    u8 uVar3;
    MtxP pMVar4;
    int i;
    double dVar7;
    fopAc_ac_c* local_b4;
    J3DModel* local_b0;
    cXyz cStack_ac;
    cXyz cStack_a0;
    cXyz cStack_94;

    if (i_this->mExecuteState == 0) {
        dBgS_ObjGndChk_Spl cStack_88;
        cXyz cStack_94 = i_this->current.pos;
        cStack_94.y += 200.0f;
        cStack_88.SetPos(&cStack_94);
        i_this->current.pos.y = dComIfG_Bgsp().GroundCross(&cStack_88);
    }
    i_this->mCnt = i_this->mCnt + 1;
    i_this->mLoopFlag = false;
    for (i = 0; i < 4; i = i + 1) {
        if (i_this->mAngle1[i] != 0) {
            i_this->mAngle1[i] = i_this->mAngle1[i] + -1;
        }
    }

    if (i_this->mState != 0) {
        i_this->mState = i_this->mState + -1;
    }
    action(i_this);
    i_this->mAcch.CrrPos(dComIfG_Bgsp());

    mDoMtx_stack_c::transS(i_this->current.pos.x, i_this->current.pos.y, i_this->current.pos.z);
    mDoMtx_stack_c::YrotM(i_this->shape_angle.y);
    mDoMtx_stack_c::XrotM(i_this->shape_angle.x);
    // mDoMtx_stack_c::scaleM(DAT_80bd721c, DAT_80bd721c, DAT_80bd721c);
    local_b0 = i_this->mpMorf->getModel();
    local_b0->setBaseTRMtx(mDoMtx_stack_c::get());
    sVar5 = fopAcM_GetRoomNo(i_this);
    i_this->mpMorf->play(0, dComIfGp_getReverb((int)sVar5));

    if (i_this->mpMorf->checkFrame(6.0f) != 0 &&
        ((i_this->mNextSound == 4 || (i_this->mNextSound == 7))))
    {
        fopKyM_createWpillar(&i_this->current.pos, 2.3f, 0);
    }

    switch (i_this->mNextSound) {
    case 9:
        if ((i_this->mpMorf->checkFrame(0.0f) != 0) || (i_this->mpMorf->checkFrame(6.0f) != 0) ||
            (i_this->mpMorf->checkFrame(12.0f) != 0) || (i_this->mpMorf->checkFrame(18.0f) != 0) ||
            (i_this->mpMorf->checkFrame(24.0f) != 0))
        {
            i_this->mZ2CreatureEnemy.startCreatureSound(Z2SE_EN_TK_SWIM, 0, -1);
        }
        break;
    case 4:
        if (i_this->mpMorf->checkFrame(5.0f) == 0) {
            if (i_this->mpMorf->checkFrame(20.0f) != 0) {
                i_this->mZ2CreatureEnemy.startCreatureSound(Z2SE_EN_TK_APPEAR2, 0, -1);
            }
        } else {
            i_this->mZ2CreatureEnemy.startCreatureSound(Z2SE_EN_TK_APPEAR, 0, -1);
        }
        break;
    case 7:
        if (i_this->mpMorf->checkFrame(6.0f) != 0) {
            i_this->mZ2CreatureEnemy.startCreatureSound(Z2SE_EN_TK_HIDE, 0, -1);
        }
        break;
    case 5:
        if (i_this->mpMorf->checkFrame(1.0f) == 0) {
            if (i_this->mpMorf->checkFrame(27.0f) != 0) {
                i_this->mZ2CreatureEnemy.startCreatureSound(Z2SE_EN_TK_ATTACK, 0, -1);
            }
        } else {
            i_this->mZ2CreatureEnemy.startCreatureVoice(Z2SE_EN_TK_V_ATTACK, -1);
        }
        break;
    case 6:
        if (i_this->mpMorf->checkFrame(1.0f) != 0) {
            i_this->mZ2CreatureEnemy.startCreatureVoice(Z2SE_EN_TK_V_DAMAGE, -1);
        }
        break;
    case 10:
        if (i_this->mpMorf->checkFrame(1.0f) != 0) {
            i_this->mZ2CreatureEnemy.startCreatureVoice(Z2SE_EN_TK_V_WAIT, -1);
        }
        break;
    case 8:
        if (i_this->mpMorf->checkFrame(1.0f) != 0 || i_this->mpMorf->checkFrame(30.0f) != 0) {
            i_this->mZ2CreatureEnemy.startCreatureVoice(Z2SE_EN_TK_KYORO, -1);
        }
        break;
    }
    i_this->mpMorf->modelCalc();
    pMVar4 = local_b0->getAnmMtx(3);

    MTXCopy(pMVar4, *calc_mtx);
    cStack_94.set(0.0f, 0.0f, 0.0f);

    MtxPosition(&cStack_94, &i_this->eyePos);

    i_this->attention_info.position = i_this->eyePos;
    i_this->attention_info.position.z = i_this->attention_info.position.z + 35.0f;

    if (i_this->mParticleSpawned) {
        local_b4 = fopAcM_SearchByID(i_this->mpTK_Ball);
        if (local_b4 != NULL) {
            local_b4->current.pos = i_this->eyePos;
            local_b4->tevStr.room_no = 0;  // TODO
        }
        cStack_ac.setall(2.0f);
        dComIfGp_particle_set(0x819B, &i_this->eyePos, &i_this->shape_angle, &cStack_ac);
        dComIfGp_particle_set(0x819C, &i_this->eyePos, &i_this->shape_angle, &cStack_ac);
        i_this->mParticleSpawned = false;
    }
    if (i_this->mLoopFlag) {
        fopAcM_OffStatus(i_this, 0);
        i_this->attention_info.flags = 0;
    } else {
        fopAcM_OnStatus(i_this, 0);
        i_this->attention_info.flags = 4;
    }
    pMVar4 = local_b0->getAnmMtx(2);
    MTXCopy(pMVar4, *calc_mtx);
    cStack_94.set(0.0f, 0.0f, 0.0f);

    MtxPosition(&cStack_94, &cStack_a0);
    i_this->mSph.SetC(cStack_a0);
    i_this->mSph.SetR(50.0f);

    dComIfG_Ccsp()->Set(&i_this->mSph);

    return 1;
}

/* 807B9C50-807B9C58 001B50 0008+00 1/0 0/0 0/0 .text            daE_TK_IsDelete__FP10e_tk_class */
static int daE_TK_IsDelete(e_tk_class* i_this) {
    return 1;
}

/* 807B9C58-807B9CC0 001B58 0068+00 1/0 0/0 0/0 .text            daE_TK_Delete__FP10e_tk_class */
static int daE_TK_Delete(e_tk_class* i_this) {
    // fopAcM_GetID(i_this);
    dComIfG_resDelete(&i_this->mPhaseReq, "E_tk");
    if (i_this->mChildCreate) {
        data_807BA438 = 0;
    }
    if (i_this->heap != NULL) {
        i_this->mpMorf->stopZelAnime();
    }
    return 1;
}

/* 807B9CC0-807B9DB8 001BC0 00F8+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* a_this) {
    e_tk_class* i_this = static_cast<e_tk_class*>(a_this);

    mDoExt_McaMorfSO* my_morf;

    if (my_morf != NULL) {
        J3DAnmTransform* anm = (J3DAnmTransform*)dComIfG_getObjectRes("E_tk", 9);
        J3DModelData* model = (J3DModelData*)dComIfG_getObjectRes("E_tk", 14);
        my_morf = new mDoExt_McaMorfSO(model, NULL, NULL, anm, 2, 1.0f, 0, -1,
                                       &i_this->mZ2CreatureEnemy, 0x80000, 0x11000084);
    }

    i_this->mpMorf = my_morf;
    if (i_this->mpMorf == NULL || i_this->mpMorf->getModel() == NULL) {
        return 0;
    }

    return 1;
}

/* ############################################################################################## */
/* 807BA2EC-807BA2F0 000080 0004+00 0/1 0/0 0/0 .rodata          @4487 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4487 = -100.0f;
// COMPILER_STRIP_GATE(0x807BA2EC, &lit_4487);
// #pragma pop

/* 807B9DB8-807BA0C4 001CB8 030C+00 1/0 0/0 0/0 .text            daE_TK_Create__FP10fopAc_ac_c */
static int daE_TK_Create(fopAc_ac_c* i_this) {
    int iVar1;
    uint uVar2;
    s8 sVar6;
    dPath* pdVar3;
    J3DModel* this_00;
    cXyz* pcVar5;

    fopAcM_SetupActor(i_this, e_tk_class);
    e_tk_class* const a_this = static_cast<e_tk_class*>(i_this);

    cPhs__Step rv = (cPhs__Step)dComIfG_resLoad(&a_this->mPhaseReq, "E_tk");
    if (rv == cPhs_COMPLEATE_e) {
        a_this->mParam1 = (u8)fopAcM_GetParam(a_this);
        a_this->mParam2 = (u8)((uint)fopAcM_GetParam(a_this) >> 8) & 0xf;
        a_this->mParam3 = (u8)((fopAcM_GetParam(a_this) & 0xf000) >> 0xc);
        a_this->mParam4 = (u8)((uint)fopAcM_GetParam(a_this) >> 0x10);

        if (fopAcM_entrySolidHeap(a_this, useHeapInit, 0x1e20) == 0) {
            return cPhs_ERROR_e;
        }

        if (a_this->mParam4 != 0xff) {
            sVar6 = fopAcM_GetRoomNo(a_this);
            pdVar3 = (dPath*)dPath_GetRoomPath((uint)a_this->mParam4, (int)sVar6);
            a_this->mRoomPath = pdVar3;
            if (a_this->mRoomPath == NULL) {
                return cPhs_ERROR_e;
            }
            a_this->mUnkFlag = a_this->mParam4 + 0x1;
            a_this->mWtf3 = 0x1;
            a_this->mNextAction = 5;
        }
        if (data_807BA438 == 0x0) {
            a_this->mChildCreate = true;
            data_807BA438 = 0x1;
            // data_807 = m_Do_main::mDoHIO_createChild(&@118856, &l_HIO);
        }
        a_this->attention_info.flags = 4;

        fopAcM_SetMtx(a_this, a_this->mpMorf->getModel()->getBaseTRMtx());
        fopAcM_SetMin(a_this, -100.0f, -100.0f, -100.0f);
        fopAcM_SetMax(a_this, 100.0f, 100.0f, 100.0f);

        a_this->attention_info.distances[2] = 0x04;
        a_this->health = 10;
        a_this->field_0x560 = 10;

        a_this->mStts.Init(100, 0, a_this);
        a_this->mSph.Set(cc_sph_src);
        a_this->mSph.SetStts(&a_this->mStts);

        a_this->mAcch.Set(fopAcM_GetPosition_p(a_this), fopAcM_GetOldPosition_p(a_this), a_this, 1,
                          &a_this->mAcchChir, fopAcM_GetSpeed_p(a_this), NULL, NULL);

        a_this->mAcchChir.SetWall(-50.0f, 60.0f);
        a_this->mZ2CreatureEnemy.init(&a_this->current.pos, &a_this->eyePos, 0x3, 0x1);
        a_this->mZ2CreatureEnemy.setEnemyName("E_tk");
        (a_this->mAtInfo).mpSound = &a_this->mZ2CreatureEnemy;
        a_this->mExecuteState = 0x14;
        daE_TK_Execute(a_this);
    }
    return rv;
}

/* 807BA0C4-807BA10C 001FC4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
// extern "C" void __dt__8cM3dGSphFv() {
//     // NONMATCHING
// }

/* 807BA10C-807BA154 00200C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
// extern "C" void __dt__8cM3dGAabFv() {
//     // NONMATCHING
// }

/* 807BA154-807BA1C4 002054 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
// extern "C" void __dt__12dBgS_ObjAcchFv() {
//     // NONMATCHING
// }

/* 807BA1C4-807BA20C 0020C4 0048+00 2/1 0/0 0/0 .text            __dt__12daE_TK_HIO_cFv */
daE_TK_HIO_c::~daE_TK_HIO_c() {
    // NONMATCHING
}

/* 807BA20C-807BA248 00210C 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_tk_cpp */
void __sinit_d_a_e_tk_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x807BA20C, __sinit_d_a_e_tk_cpp);
#pragma pop

/* 807BA248-807BA250 002148 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
// void func_807BA248() {
//     // NONMATCHING
// }

/* 807BA250-807BA258 002150 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
// void func_807BA250() {
//     // NONMATCHING
// }

/* 807BA398-807BA3B8 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_TK_Method */
static actor_method_class l_daE_TK_Method = {
    (process_method_func)daE_TK_Create__FP10fopAc_ac_c,
    (process_method_func)daE_TK_Delete__FP10e_tk_class,
    (process_method_func)daE_TK_Execute__FP10e_tk_class,
    (process_method_func)daE_TK_IsDelete__FP10e_tk_class,
    (process_method_func)daE_TK_Draw__FP10e_tk_class,
};

/* 807BA3B8-807BA3E8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_TK */
extern actor_process_profile_definition g_profile_E_TK = {
    fpcLy_CURRENT_e,         // mLayerID
    7,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_E_TK,               // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(e_tk_class),      // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    149,                     // mPriority
    &l_daE_TK_Method,        // sub_method
    0x00040100,              // mStatus
    fopAc_ENEMY_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
