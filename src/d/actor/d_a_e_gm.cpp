/**
 * @file d_a_e_gm.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_e_gm.h"
#include "dol2asm.h"
#include "f_op/f_op_actor_enemy.h"


//
// Forward References:
//

extern "C" void __ct__12daE_GM_HIO_cFv();
extern "C" void setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v();
extern "C" void action__8daE_GM_cFv();
extern "C" static void s_obj_sub2__FPvPv();
extern "C" void egg_wait__8daE_GM_cFv();
extern "C" void appear__8daE_GM_cFv();
extern "C" void walk__8daE_GM_cFv();
extern "C" void create_item__8daE_GM_cFv();
extern "C" void pechanko_damage__8daE_GM_cFv();
extern "C" void wait__8daE_GM_cFv();
extern "C" void egg_damage__8daE_GM_cFv();
extern "C" void setDeathLightEffect__8daE_GM_cFv();
extern "C" void setEggBreakEffect__8daE_GM_cFv();
extern "C" void damage__8daE_GM_cFv();
extern "C" void core_damage__8daE_GM_cFv();
extern "C" void core_delwait__8daE_GM_cFv();
extern "C" void core_piku__8daE_GM_cFv();
extern "C" void core_pechanko_damage__8daE_GM_cFv();
extern "C" void hook__8daE_GM_cFv();
extern "C" void rebound__8daE_GM_cFv();
extern "C" void walk2__8daE_GM_cFv();
extern "C" void dead_wait__8daE_GM_cFv();
extern "C" void core_wait__8daE_GM_cFv();
extern "C" void core_escape__8daE_GM_cFv();
extern "C" void chaseCheck__8daE_GM_cFv();
extern "C" void normal_wait__8daE_GM_cFv();
extern "C" void normal_chase__8daE_GM_cFv();
extern "C" void mtx_set__8daE_GM_cFv();
extern "C" void cc_set__8daE_GM_cFv();
extern "C" void draw__8daE_GM_cFv();
extern "C" static void daE_GM_Draw__FP8daE_GM_c();
extern "C" void damage_check__8daE_GM_cFv();
extern "C" void execute__8daE_GM_cFv();
extern "C" static void daE_GM_Execute__FP8daE_GM_c();
extern "C" static bool daE_GM_IsDelete__FP8daE_GM_c();
extern "C" void _delete__8daE_GM_cFv();
extern "C" static void daE_GM_Delete__FP8daE_GM_c();
extern "C" void CreateHeap__8daE_GM_cFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void create__8daE_GM_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" static void daE_GM_Create__FP8daE_GM_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_GM_HIO_cFv();
extern "C" void __sinit_d_a_e_gm_cpp();
extern "C" static void func_806D74F0();
extern "C" static void func_806D74F8();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__4cXyzFv();
extern "C" extern char const* const d_a_e_gm__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotS__14mDoMtx_stack_cFRC5csXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_SearchByID__FUiPP10fopAc_ac_c();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_posMove__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createItemFromEnemyID__FUcPC4cXyziiPC5csXyzPC4cXyzPfPf();
extern "C" void fopAcM_createItem__FPC4cXyziiiPC5csXyzPC4cXyzi();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcM_IsCreating__FUi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void getStatus__12dMsgObject_cFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void normalizeRS__4cXyzFv();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_chaseS__FPsss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void __ptmf_test();
extern "C" void __ptmf_cmpr();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_19();
extern "C" void _savegpr_26();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_26();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 806D79CC-806D79D0 00002C 0004+00 0/2 0/0 0/0 .rodata          @4055 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4055 = 13.0f / 10.0f;
COMPILER_STRIP_GATE(0x806D79CC, &lit_4055);
#pragma pop

/* 806D79D0-806D79D4 000030 0004+00 0/6 0/0 0/0 .rodata          @4056 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4056 = 8.0f;
COMPILER_STRIP_GATE(0x806D79D0, &lit_4056);
#pragma pop

/* 806D79D4-806D79D8 000034 0004+00 0/10 0/0 0/0 .rodata          @4057 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4057 = 10.0f;
COMPILER_STRIP_GATE(0x806D79D4, &lit_4057);
#pragma pop

/* 806D79D8-806D79DC 000038 0004+00 0/2 0/0 0/0 .rodata          @4058 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4058 = 20.0f;
COMPILER_STRIP_GATE(0x806D79D8, &lit_4058);
#pragma pop

/* 806D79DC-806D79E0 00003C 0004+00 1/5 0/0 0/0 .rodata          @4059 */
SECTION_RODATA static f32 const lit_4059 = 15.0f;
COMPILER_STRIP_GATE(0x806D79DC, &lit_4059);

/* 806D79E0-806D79E4 000040 0004+00 0/1 0/0 0/0 .rodata          @4060 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4060 = 300.0f;
COMPILER_STRIP_GATE(0x806D79E0, &lit_4060);
#pragma pop

/* 806D7B34-806D7B38 000038 0004+00 2/3 0/0 0/0 .data l_hitActorID__22@unnamed@d_a_e_gm_cpp@ */
SECTION_DATA static u32 data_806D7B34 = 0xFFFFFFFF;

/* 806D7B38-806D7B3C 00003C 0004+00 2/4 0/0 0/0 .data l_coreActorID__22@unnamed@d_a_e_gm_cpp@ */
SECTION_DATA static u32 data_806D7B38 = 0xFFFFFFFF;

/* 806D7B3C-806D7B7C 000040 0040+00 0/1 0/0 0/0 .data cc_sph_src__22@unnamed@d_a_e_gm_cpp@ */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_806D7B3C[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D,
    0xDA, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x75, 0x0B, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
};
#pragma pop

/* 806D7B7C-806D7B88 -00001 000C+00 1/1 0/0 0/0 .data            @4075 */
SECTION_DATA static void* lit_4075[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)egg_wait__8daE_GM_cFv,
};

/* 806D7B88-806D7B94 -00001 000C+00 1/1 0/0 0/0 .data            @4077 */
SECTION_DATA static void* lit_4077[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rebound__8daE_GM_cFv,
};

/* 806D7B94-806D7BA0 -00001 000C+00 0/1 0/0 0/0 .data            @4125 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4125[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rebound__8daE_GM_cFv,
};
#pragma pop

/* 806D7BA0-806D7BAC -00001 000C+00 0/1 0/0 0/0 .data            @4143 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4143[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rebound__8daE_GM_cFv,
};
#pragma pop

/* 806D7BAC-806D7BB8 -00001 000C+00 0/1 0/0 0/0 .data            @4152 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4152[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rebound__8daE_GM_cFv,
};
#pragma pop

/* 806D7BB8-806D7BC4 -00001 000C+00 0/1 0/0 0/0 .data            @4160 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4160[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)appear__8daE_GM_cFv,
};
#pragma pop

/* 806D7BC4-806D7BD0 -00001 000C+00 0/1 0/0 0/0 .data            @4169 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4169[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)appear__8daE_GM_cFv,
};
#pragma pop

/* 806D7BD0-806D7BDC -00001 000C+00 0/1 0/0 0/0 .data            @4236 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4236[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rebound__8daE_GM_cFv,
};
#pragma pop

/* 806D7BDC-806D7BE8 -00001 000C+00 0/1 0/0 0/0 .data            @4242 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4242[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)walk2__8daE_GM_cFv,
};
#pragma pop

/* 806D7BE8-806D7BF4 -00001 000C+00 0/1 0/0 0/0 .data            @4245 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4245[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)walk__8daE_GM_cFv,
};
#pragma pop

/* 806D7BF4-806D7C00 -00001 000C+00 0/1 0/0 0/0 .data            @4281 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4281[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)dead_wait__8daE_GM_cFv,
};
#pragma pop

/* 806D7C00-806D7C0C -00001 000C+00 0/1 0/0 0/0 .data            @4288 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4288[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__8daE_GM_cFv,
};
#pragma pop

/* 806D7C0C-806D7C18 -00001 000C+00 0/1 0/0 0/0 .data            @4292 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4292[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rebound__8daE_GM_cFv,
};
#pragma pop

/* 806D7C18-806D7C24 -00001 000C+00 1/1 0/0 0/0 .data            @4483 */
SECTION_DATA static void* lit_4483[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)walk__8daE_GM_cFv,
};

/* 806D7C24-806D7C28 000128 0004+00 1/1 0/0 0/0 .data            l_egg_eff_id */
SECTION_DATA static u32 l_egg_eff_id = 0x8AF08AF1;

/* 806D7C28-806D7C34 -00001 000C+00 1/1 0/0 0/0 .data            @4706 */
SECTION_DATA static void* lit_4706[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)core_delwait__8daE_GM_cFv,
};

/* 806D7C34-806D7C40 -00001 000C+00 1/1 0/0 0/0 .data            @4718 */
SECTION_DATA static void* lit_4718[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)core_escape__8daE_GM_cFv,
};

/* 806D7C40-806D7C4C -00001 000C+00 1/1 0/0 0/0 .data            @4826 */
SECTION_DATA static void* lit_4826[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rebound__8daE_GM_cFv,
};

/* 806D7C4C-806D7C58 -00001 000C+00 1/1 0/0 0/0 .data            @4830 */
SECTION_DATA static void* lit_4830[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)core_escape__8daE_GM_cFv,
};

/* 806D7C58-806D7C64 -00001 000C+00 1/1 0/0 0/0 .data            @4863 */
SECTION_DATA static void* lit_4863[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)core_delwait__8daE_GM_cFv,
};

/* 806D7C64-806D7C70 -00001 000C+00 1/1 0/0 0/0 .data            @4892 */
SECTION_DATA static void* lit_4892[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)core_escape__8daE_GM_cFv,
};

/* 806D7C70-806D7C7C -00001 000C+00 0/1 0/0 0/0 .data            @4958 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4958[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rebound__8daE_GM_cFv,
};
#pragma pop

/* 806D7C7C-806D7C88 -00001 000C+00 0/1 0/0 0/0 .data            @4962 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4962[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)egg_wait__8daE_GM_cFv,
};
#pragma pop

/* 806D7C88-806D7C94 -00001 000C+00 0/1 0/0 0/0 .data            @4969 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4969[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rebound__8daE_GM_cFv,
};
#pragma pop

/* 806D7C94-806D7CA0 -00001 000C+00 0/1 0/0 0/0 .data            @4979 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4979[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)walk2__8daE_GM_cFv,
};
#pragma pop

/* 806D7CA0-806D7CAC -00001 000C+00 0/1 0/0 0/0 .data            @4984 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4984[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)core_escape__8daE_GM_cFv,
};
#pragma pop

/* 806D7CAC-806D7CB8 -00001 000C+00 0/1 0/0 0/0 .data            @4989 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4989[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)normal_wait__8daE_GM_cFv,
};
#pragma pop

/* 806D7CB8-806D7CC4 -00001 000C+00 0/1 0/0 0/0 .data            @4996 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4996[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)dead_wait__8daE_GM_cFv,
};
#pragma pop

/* 806D7CC4-806D7CD0 -00001 000C+00 0/1 0/0 0/0 .data            @4998 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4998[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)walk__8daE_GM_cFv,
};
#pragma pop

/* 806D7CD0-806D7CDC -00001 000C+00 0/1 0/0 0/0 .data            @5002 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5002[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rebound__8daE_GM_cFv,
};
#pragma pop

/* 806D7CDC-806D7CE8 -00001 000C+00 0/1 0/0 0/0 .data            @5056 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5056[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rebound__8daE_GM_cFv,
};
#pragma pop

/* 806D7CE8-806D7CF4 -00001 000C+00 0/1 0/0 0/0 .data            @5062 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5062[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)dead_wait__8daE_GM_cFv,
};
#pragma pop

/* 806D7CF4-806D7D00 -00001 000C+00 1/1 0/0 0/0 .data            @5179 */
SECTION_DATA static void* lit_5179[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)core_escape__8daE_GM_cFv,
};

/* 806D7D00-806D7D0C -00001 000C+00 1/1 0/0 0/0 .data            @5255 */
SECTION_DATA static void* lit_5255[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rebound__8daE_GM_cFv,
};

/* 806D7D0C-806D7D18 -00001 000C+00 1/1 0/0 0/0 .data            @5469 */
SECTION_DATA static void* lit_5469[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)normal_chase__8daE_GM_cFv,
};

/* 806D7D18-806D7D24 -00001 000C+00 1/1 0/0 0/0 .data            @5581 */
SECTION_DATA static void* lit_5581[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)normal_wait__8daE_GM_cFv,
};

/* 806D7D24-806D7D30 -00001 000C+00 0/1 0/0 0/0 .data            @5911 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5911[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)hook__8daE_GM_cFv,
};
#pragma pop

/* 806D7D30-806D7D3C -00001 000C+00 0/1 0/0 0/0 .data            @5916 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5916[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)core_piku__8daE_GM_cFv,
};
#pragma pop

/* 806D7D3C-806D7D48 -00001 000C+00 0/1 0/0 0/0 .data            @5920 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5920[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)core_pechanko_damage__8daE_GM_cFv,
};
#pragma pop

/* 806D7D48-806D7D54 -00001 000C+00 0/1 0/0 0/0 .data            @5923 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5923[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)core_damage__8daE_GM_cFv,
};
#pragma pop

/* 806D7D54-806D7D60 -00001 000C+00 0/1 0/0 0/0 .data            @5930 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5930[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rebound__8daE_GM_cFv,
};
#pragma pop

/* 806D7D60-806D7D6C -00001 000C+00 0/1 0/0 0/0 .data            @5934 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5934[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)pechanko_damage__8daE_GM_cFv,
};
#pragma pop

/* 806D7D6C-806D7D78 -00001 000C+00 0/1 0/0 0/0 .data            @5939 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5939[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)egg_damage__8daE_GM_cFv,
};
#pragma pop

/* 806D7D78-806D7D84 -00001 000C+00 0/1 0/0 0/0 .data            @5950 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5950[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)damage__8daE_GM_cFv,
};
#pragma pop

/* 806D7D84-806D7D90 -00001 000C+00 0/1 0/0 0/0 .data            @5952 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5952[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)walk__8daE_GM_cFv,
};
#pragma pop

/* 806D7D90-806D7D9C -00001 000C+00 0/1 0/0 0/0 .data            @6198 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6198[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)normal_wait__8daE_GM_cFv,
};
#pragma pop

/* 806D7D9C-806D7DA8 -00001 000C+00 0/1 0/0 0/0 .data            @6205 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6205[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)core_wait__8daE_GM_cFv,
};
#pragma pop

/* 806D7DA8-806D7DB4 -00001 000C+00 0/1 0/0 0/0 .data            @6208 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6208[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)egg_wait__8daE_GM_cFv,
};
#pragma pop

/* 806D7DB4-806D7DD4 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_GM_Method */
static actor_method_class l_daE_GM_Method = {
    (process_method_func)daE_GM_Create__FP8daE_GM_c,
    (process_method_func)daE_GM_Delete__FP8daE_GM_c,
    (process_method_func)daE_GM_Execute__FP8daE_GM_c,
    (process_method_func)daE_GM_IsDelete__FP8daE_GM_c,
    (process_method_func)daE_GM_Draw__FP8daE_GM_c,
};

/* 806D7DD4-806D7E04 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_GM */
extern actor_process_profile_definition g_profile_E_GM = {
  fpcLy_CURRENT_e,       // mLayerID
  7,                     // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_E_GM,             // mProcName
  &g_fpcLf_Method.base, // sub_method
  sizeof(daE_GM_c),      // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  119,                   // mPriority
  &l_daE_GM_Method,      // sub_method
  0x00044100,            // mStatus
  fopAc_ENEMY_e,         // mActorType
  fopAc_CULLBOX_0_e,     // cullType
};

/* 806D7E04-806D7E10 000308 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 806D7E10-806D7E1C 000314 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 806D7E1C-806D7E28 000320 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 806D7E28-806D7E34 00032C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 806D7E34-806D7E40 000338 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 806D7E40-806D7E64 000344 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806D74F8,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806D74F0,
};

/* 806D7E64-806D7E70 000368 000C+00 2/2 0/0 0/0 .data            __vt__12daE_GM_HIO_c */
SECTION_DATA extern void* __vt__12daE_GM_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_GM_HIO_cFv,
};

/* 806D126C-806D12C8 0000EC 005C+00 1/1 0/0 0/0 .text            __ct__12daE_GM_HIO_cFv */
daE_GM_HIO_c::daE_GM_HIO_c() {
    // NONMATCHING
}

/* 806D12C8-806D136C 000148 00A4+00 16/16 0/0 0/0 .text setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v */
void daE_GM_c::setAction(void (daE_GM_c::*param_0)()) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806D79E4-806D79E8 000044 0004+00 1/18 0/0 0/0 .rodata          @4100 */
SECTION_RODATA static f32 const lit_4100 = -1.0f;
COMPILER_STRIP_GATE(0x806D79E4, &lit_4100);

/* 806D7EB8-806D7EC4 000048 000C+00 0/1 0/0 0/0 .bss             @4050 */
#pragma push
#pragma force_active on
static u8 lit_4050[12];
#pragma pop

/* 806D7EC4-806D7EEC 000054 0028+00 5/8 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[40];

/* 806D7EEC-806D7EF8 00007C 000C+00 0/1 0/0 0/0 .bss             @4061 */
#pragma push
#pragma force_active on
static u8 lit_4061[12];
#pragma pop

/* 806D7EF8-806D7F04 000088 000C+00 0/3 0/0 0/0 .bss             l_corePos__22@unnamed@d_a_e_gm_cpp@
 */
#pragma push
#pragma force_active on
static u8 data_806D7EF8[12];
#pragma pop

/* 806D7F04-806D7F10 000094 000C+00 0/1 0/0 0/0 .bss             @4062 */
#pragma push
#pragma force_active on
static u8 lit_4062[12];
#pragma pop

/* 806D7F10-806D7F18 0000A0 0006+02 0/3 0/0 0/0 .bss l_coreAngle__22@unnamed@d_a_e_gm_cpp@ */
#pragma push
#pragma force_active on
static u8 data_806D7F10[6 + 2 /* padding */];
#pragma pop

/* 806D7F18-806D7F1C 0000A8 0004+00 0/2 0/0 0/0 .bss l_coreSpeedF__22@unnamed@d_a_e_gm_cpp@ */
#pragma push
#pragma force_active on
static u8 data_806D7F18[4];
#pragma pop

/* 806D7F1C-806D7F20 -00001 0004+00 11/14 0/0 0/0 .bss             None */
/* 806D7F1C 0002+00 data_806D7F1C None */
/* 806D7F1E 0001+00 data_806D7F1E None */
/* 806D7F1F 0001+00 data_806D7F1F None */
static u8 struct_806D7F1C[4];

/* 806D136C-806D14E0 0001EC 0174+00 1/1 0/0 0/0 .text            action__8daE_GM_cFv */
void daE_GM_c::action() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806D79E8-806D79EC 000048 0004+00 1/1 0/0 0/0 .rodata          @4119 */
SECTION_RODATA static f32 const lit_4119 = 4000.0f;
COMPILER_STRIP_GATE(0x806D79E8, &lit_4119);

/* 806D14E0-806D1580 000360 00A0+00 7/7 0/0 0/0 .text            s_obj_sub2__FPvPv */
static void s_obj_sub2(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806D79EC-806D79F0 00004C 0004+00 0/10 0/0 0/0 .rodata          @4211 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4211 = -100.0f;
COMPILER_STRIP_GATE(0x806D79EC, &lit_4211);
#pragma pop

/* 806D79F0-806D79F4 000050 0004+00 0/5 0/0 0/0 .rodata          @4212 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4212 = 50.0f;
COMPILER_STRIP_GATE(0x806D79F0, &lit_4212);
#pragma pop

/* 806D79F4-806D79F8 000054 0004+00 0/12 0/0 0/0 .rodata          @4213 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4213 = -5.0f;
COMPILER_STRIP_GATE(0x806D79F4, &lit_4213);
#pragma pop

/* 806D79F8-806D79FC 000058 0004+00 0/1 0/0 0/0 .rodata          @4214 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4214 = -10.0f;
COMPILER_STRIP_GATE(0x806D79F8, &lit_4214);
#pragma pop

/* 806D79FC-806D7A00 00005C 0004+00 0/2 0/0 0/0 .rodata          @4215 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4215 = 32768.0f;
COMPILER_STRIP_GATE(0x806D79FC, &lit_4215);
#pragma pop

/* 806D7A00-806D7A04 000060 0004+00 0/1 0/0 0/0 .rodata          @4216 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4216 = 8192.0f;
COMPILER_STRIP_GATE(0x806D7A00, &lit_4216);
#pragma pop

/* 806D7A04-806D7A08 000064 0004+00 0/7 0/0 0/0 .rodata          @4217 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4217 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x806D7A04, &lit_4217);
#pragma pop

/* 806D7A08-806D7A0C 000068 0004+00 0/2 0/0 0/0 .rodata          @4218 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4218 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x806D7A08, &lit_4218);
#pragma pop

/* 806D7A0C-806D7A10 00006C 0004+00 1/10 0/0 0/0 .rodata          @4219 */
SECTION_RODATA static f32 const lit_4219 = 5.0f;
COMPILER_STRIP_GATE(0x806D7A0C, &lit_4219);

/* 806D7A10-806D7A14 000070 0004+00 0/1 0/0 0/0 .rodata          @4220 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4220 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x806D7A10, &lit_4220);
#pragma pop

/* 806D7A14-806D7A18 000074 0004+00 0/1 0/0 0/0 .rodata          @4221 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4221 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x806D7A14, &lit_4221);
#pragma pop

/* 806D1580-806D1A9C 000400 051C+00 3/6 0/0 0/0 .text            egg_wait__8daE_GM_cFv */
void daE_GM_c::egg_wait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806D7A18-806D7A1C 000078 0004+00 0/14 0/0 0/0 .rodata          @4268 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4268 = 3.0f;
COMPILER_STRIP_GATE(0x806D7A18, &lit_4268);
#pragma pop

/* 806D7A1C-806D7A20 00007C 0004+00 0/10 0/0 0/0 .rodata          @4269 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4269 = 30.0f;
COMPILER_STRIP_GATE(0x806D7A1C, &lit_4269);
#pragma pop

/* 806D7AF0-806D7AF0 000150 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806D7AF0 = "E_gm";
#pragma pop

/* 806D1A9C-806D1CC0 00091C 0224+00 2/0 0/0 0/0 .text            appear__8daE_GM_cFv */
void daE_GM_c::appear() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806D7A20-806D7A28 000080 0008+00 0/1 0/0 0/0 .rodata          l_rand */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_rand[8] = {
    0xF8, 0x00, 0x04, 0x00, 0xFC, 0x00, 0x08, 0x00,
};
COMPILER_STRIP_GATE(0x806D7A20, &l_rand);
#pragma pop

/* 806D7A28-806D7A30 000088 0008+00 0/2 0/0 0/0 .rodata          l_rand2 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_rand2[8] = {
    0xD0, 0x00, 0x38, 0x00, 0xB8, 0x00, 0x50, 0x00,
};
COMPILER_STRIP_GATE(0x806D7A28, &l_rand2);
#pragma pop

/* 806D7A30-806D7A40 000090 0010+00 0/0 0/0 0/0 .rodata          l_rand_base_spd */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_rand_base_spd[16] = {
    0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806D7A30, &l_rand_base_spd);
#pragma pop

/* 806D7A40-806D7A44 0000A0 0004+00 0/5 0/0 0/0 .rodata          @4397 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4397 = 2.0f;
COMPILER_STRIP_GATE(0x806D7A40, &lit_4397);
#pragma pop

/* 806D7A44-806D7A48 0000A4 0004+00 0/3 0/0 0/0 .rodata          @4398 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4398 = 0.5f;
COMPILER_STRIP_GATE(0x806D7A44, &lit_4398);
#pragma pop

/* 806D7A48-806D7A4C 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4399 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4399 = 6.5f;
COMPILER_STRIP_GATE(0x806D7A48, &lit_4399);
#pragma pop

/* 806D7A4C-806D7A50 0000AC 0004+00 0/2 0/0 0/0 .rodata          @4400 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4400 = 400.0f;
COMPILER_STRIP_GATE(0x806D7A4C, &lit_4400);
#pragma pop

/* 806D1CC0-806D21A4 000B40 04E4+00 4/0 0/0 0/0 .text            walk__8daE_GM_cFv */
void daE_GM_c::walk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806D7A50-806D7A54 0000B0 0004+00 1/2 0/0 0/0 .rodata          @4424 */
SECTION_RODATA static f32 const lit_4424 = 9.0f;
COMPILER_STRIP_GATE(0x806D7A50, &lit_4424);

/* 806D7A54-806D7A58 0000B4 0004+00 1/1 0/0 0/0 .rodata          @4425 */
SECTION_RODATA static f32 const lit_4425 = 11.0f;
COMPILER_STRIP_GATE(0x806D7A54, &lit_4425);

/* 806D21A4-806D2294 001024 00F0+00 3/3 0/0 0/0 .text            create_item__8daE_GM_cFv */
void daE_GM_c::create_item() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806D7A58-806D7A5C 0000B8 0004+00 0/4 0/0 0/0 .rodata          @4465 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4465 = 60.0f;
COMPILER_STRIP_GATE(0x806D7A58, &lit_4465);
#pragma pop

/* 806D7A5C-806D7A60 0000BC 0004+00 0/2 0/0 0/0 .rodata          @4466 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4466 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x806D7A5C, &lit_4466);
#pragma pop

/* 806D7A60-806D7A64 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4467 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4467 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x806D7A60, &lit_4467);
#pragma pop

/* 806D2294-806D24C0 001114 022C+00 1/0 0/0 0/0 .text            pechanko_damage__8daE_GM_cFv */
void daE_GM_c::pechanko_damage() {
    // NONMATCHING
}

/* 806D24C0-806D25E8 001340 0128+00 1/0 0/0 0/0 .text            wait__8daE_GM_cFv */
void daE_GM_c::wait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806D7A64-806D7A68 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4531 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4531 = 40.0f;
COMPILER_STRIP_GATE(0x806D7A64, &lit_4531);
#pragma pop

/* 806D7A68-806D7A6C 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4532 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4532 = 11.0f / 10.0f;
COMPILER_STRIP_GATE(0x806D7A68, &lit_4532);
#pragma pop

/* 806D7A6C-806D7A70 0000CC 0004+00 0/2 0/0 0/0 .rodata          @4533 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4533 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x806D7A6C, &lit_4533);
#pragma pop

/* 806D25E8-806D289C 001468 02B4+00 1/0 0/0 0/0 .text            egg_damage__8daE_GM_cFv */
void daE_GM_c::egg_damage() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806D7A70-806D7A78 0000D0 0008+00 1/1 0/0 0/0 .rodata          l_eff_id */
SECTION_RODATA static u8 const l_eff_id[8] = {
    0x85, 0x4C, 0x85, 0x4D, 0x85, 0x4E, 0x85, 0x4F,
};
COMPILER_STRIP_GATE(0x806D7A70, &l_eff_id);

/* 806D289C-806D2940 00171C 00A4+00 5/5 0/0 0/0 .text            setDeathLightEffect__8daE_GM_cFv */
void daE_GM_c::setDeathLightEffect() {
    // NONMATCHING
}

/* 806D2940-806D29E4 0017C0 00A4+00 1/1 0/0 0/0 .text            setEggBreakEffect__8daE_GM_cFv */
void daE_GM_c::setEggBreakEffect() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806D7A78-806D7A7C 0000D8 0004+00 0/2 0/0 0/0 .rodata          @4664 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4664 = 16.0f;
COMPILER_STRIP_GATE(0x806D7A78, &lit_4664);
#pragma pop

/* 806D29E4-806D2DD4 001864 03F0+00 1/0 0/0 0/0 .text            damage__8daE_GM_cFv */
void daE_GM_c::damage() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806D7A7C-806D7A80 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4785 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4785 = 73.0f;
COMPILER_STRIP_GATE(0x806D7A7C, &lit_4785);
#pragma pop

/* 806D7A80-806D7A84 0000E0 0004+00 0/2 0/0 0/0 .rodata          @4786 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4786 = 75.0f;
COMPILER_STRIP_GATE(0x806D7A80, &lit_4786);
#pragma pop

/* 806D7A84-806D7A88 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4787 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4787 = 12.0f;
COMPILER_STRIP_GATE(0x806D7A84, &lit_4787);
#pragma pop

/* 806D7AF0-806D7AF0 000150 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806D7AF5 = "E_mg";
#pragma pop

/* 806D2DD4-806D3308 001C54 0534+00 1/0 0/0 0/0 .text            core_damage__8daE_GM_cFv */
void daE_GM_c::core_damage() {
    // NONMATCHING
}

/* 806D3308-806D344C 002188 0144+00 2/0 0/0 0/0 .text            core_delwait__8daE_GM_cFv */
void daE_GM_c::core_delwait() {
    // NONMATCHING
}

/* 806D344C-806D35E4 0022CC 0198+00 1/0 0/0 0/0 .text            core_piku__8daE_GM_cFv */
void daE_GM_c::core_piku() {
    // NONMATCHING
}

/* 806D35E4-806D378C 002464 01A8+00 1/0 0/0 0/0 .text            core_pechanko_damage__8daE_GM_cFv
 */
void daE_GM_c::core_pechanko_damage() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806D7A88-806D7A8C 0000E8 0004+00 0/1 0/0 0/0 .rodata          @4932 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4932 = 80.0f;
COMPILER_STRIP_GATE(0x806D7A88, &lit_4932);
#pragma pop

/* 806D7A8C-806D7A90 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4933 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4933 = 140.0f;
COMPILER_STRIP_GATE(0x806D7A8C, &lit_4933);
#pragma pop

/* 806D378C-806D398C 00260C 0200+00 1/0 0/0 0/0 .text            hook__8daE_GM_cFv */
void daE_GM_c::hook() {
    // NONMATCHING
}

/* 806D398C-806D3EC4 00280C 0538+00 13/0 0/0 0/0 .text            rebound__8daE_GM_cFv */
void daE_GM_c::rebound() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806D7A90-806D7A94 0000F0 0004+00 0/1 0/0 0/0 .rodata          @5123 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5123 = 350.0f;
COMPILER_STRIP_GATE(0x806D7A90, &lit_5123);
#pragma pop

/* 806D7A94-806D7A98 0000F4 0004+00 0/2 0/0 0/0 .rodata          @5124 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5124 = 4.0f;
COMPILER_STRIP_GATE(0x806D7A94, &lit_5124);
#pragma pop

/* 806D3EC4-806D4288 002D44 03C4+00 2/0 0/0 0/0 .text            walk2__8daE_GM_cFv */
void daE_GM_c::walk2() {
    // NONMATCHING
}

/* 806D4288-806D4468 003108 01E0+00 3/0 0/0 0/0 .text            dead_wait__8daE_GM_cFv */
void daE_GM_c::dead_wait() {
    // NONMATCHING
}

/* 806D4468-806D462C 0032E8 01C4+00 1/0 0/0 0/0 .text            core_wait__8daE_GM_cFv */
void daE_GM_c::core_wait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806D7A98-806D7A9C 0000F8 0004+00 0/1 0/0 0/0 .rodata          @5243 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5243 = 1000.0f;
COMPILER_STRIP_GATE(0x806D7A98, &lit_5243);
#pragma pop

/* 806D7A9C-806D7AA0 0000FC 0004+00 0/1 0/0 0/0 .rodata          @5399 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5399 = 800.0f;
COMPILER_STRIP_GATE(0x806D7A9C, &lit_5399);
#pragma pop

/* 806D7AA0-806D7AA4 000100 0004+00 0/1 0/0 0/0 .rodata          @5400 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5400 = 256.0f;
COMPILER_STRIP_GATE(0x806D7AA0, &lit_5400);
#pragma pop

/* 806D7AA4-806D7AA8 000104 0004+00 0/1 0/0 0/0 .rodata          @5401 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5401 = 2000.0f;
COMPILER_STRIP_GATE(0x806D7AA4, &lit_5401);
#pragma pop

/* 806D7AA8-806D7AAC 000108 0004+00 0/1 0/0 0/0 .rodata          @5402 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5402 = 18.0f;
COMPILER_STRIP_GATE(0x806D7AA8, &lit_5402);
#pragma pop

/* 806D7AAC-806D7AB0 00010C 0004+00 0/1 0/0 0/0 .rodata          @5403 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5403 = 13.0f;
COMPILER_STRIP_GATE(0x806D7AAC, &lit_5403);
#pragma pop

/* 806D462C-806D4D1C 0034AC 06F0+00 5/0 0/0 0/0 .text            core_escape__8daE_GM_cFv */
void daE_GM_c::core_escape() {
    // NONMATCHING
}

/* 806D4D1C-806D4EF4 003B9C 01D8+00 2/2 0/0 0/0 .text            chaseCheck__8daE_GM_cFv */
void daE_GM_c::chaseCheck() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806D7AB0-806D7AB8 000110 0004+04 0/1 0/0 0/0 .rodata          @5565 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5565[1 + 1 /* padding */] = {
    16384.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x806D7AB0, &lit_5565);
#pragma pop

/* 806D7AB8-806D7AC0 000118 0008+00 0/1 0/0 0/0 .rodata          @5568 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5568[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806D7AB8, &lit_5568);
#pragma pop

/* 806D4EF4-806D545C 003D74 0568+00 3/0 0/0 0/0 .text            normal_wait__8daE_GM_cFv */
void daE_GM_c::normal_wait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806D7AC0-806D7AC4 000120 0004+00 0/1 0/0 0/0 .rodata          @5621 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5621 = 19.0f;
COMPILER_STRIP_GATE(0x806D7AC0, &lit_5621);
#pragma pop

/* 806D7AC4-806D7AC8 000124 0004+00 0/1 0/0 0/0 .rodata          @5622 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5622 = 7.5f;
COMPILER_STRIP_GATE(0x806D7AC4, &lit_5622);
#pragma pop

/* 806D545C-806D578C 0042DC 0330+00 1/0 0/0 0/0 .text            normal_chase__8daE_GM_cFv */
void daE_GM_c::normal_chase() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806D7AC8-806D7ACC 000128 0004+00 0/1 0/0 0/0 .rodata          @5681 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5681 = 1.0f / 25.0f;
COMPILER_STRIP_GATE(0x806D7AC8, &lit_5681);
#pragma pop

/* 806D578C-806D59D0 00460C 0244+00 1/1 0/0 0/0 .text            mtx_set__8daE_GM_cFv */
void daE_GM_c::mtx_set() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806D7ACC-806D7AD0 00012C 0004+00 0/1 0/0 0/0 .rodata          @5768 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5768 = -15.0f;
COMPILER_STRIP_GATE(0x806D7ACC, &lit_5768);
#pragma pop

/* 806D7AD0-806D7AD4 000130 0004+00 0/1 0/0 0/0 .rodata          @5769 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5769 = 120.0f;
COMPILER_STRIP_GATE(0x806D7AD0, &lit_5769);
#pragma pop

/* 806D59D0-806D5D54 004850 0384+00 1/1 0/0 0/0 .text            cc_set__8daE_GM_cFv */
void daE_GM_c::cc_set() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806D7AD4-806D7AD8 000134 0004+00 0/2 0/0 0/0 .rodata          @5869 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5869 = 255.0f;
COMPILER_STRIP_GATE(0x806D7AD4, &lit_5869);
#pragma pop

/* 806D7AD8-806D7ADC 000138 0004+00 0/1 0/0 0/0 .rodata          @5870 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5870 = 700.0f;
COMPILER_STRIP_GATE(0x806D7AD8, &lit_5870);
#pragma pop

/* 806D5D54-806D62FC 004BD4 05A8+00 1/1 0/0 0/0 .text            draw__8daE_GM_cFv */
void daE_GM_c::draw() {
    // NONMATCHING
}

/* 806D62FC-806D631C 00517C 0020+00 1/0 0/0 0/0 .text            daE_GM_Draw__FP8daE_GM_c */
static void daE_GM_Draw(daE_GM_c* param_0) {
    // NONMATCHING
}

/* 806D631C-806D6708 00519C 03EC+00 1/1 0/0 0/0 .text            damage_check__8daE_GM_cFv */
void daE_GM_c::damage_check() {
    // NONMATCHING
}

/* 806D6708-806D6958 005588 0250+00 1/1 0/0 0/0 .text            execute__8daE_GM_cFv */
void daE_GM_c::execute() {
    // NONMATCHING
}

/* 806D6958-806D6978 0057D8 0020+00 2/1 0/0 0/0 .text            daE_GM_Execute__FP8daE_GM_c */
static void daE_GM_Execute(daE_GM_c* param_0) {
    // NONMATCHING
}

/* 806D6978-806D6980 0057F8 0008+00 1/0 0/0 0/0 .text            daE_GM_IsDelete__FP8daE_GM_c */
static bool daE_GM_IsDelete(daE_GM_c* param_0) {
    return true;
}

/* 806D6980-806D6AA8 005800 0128+00 1/1 0/0 0/0 .text            _delete__8daE_GM_cFv */
void daE_GM_c::_delete() {
    // NONMATCHING
}

/* 806D6AA8-806D6AC8 005928 0020+00 1/0 0/0 0/0 .text            daE_GM_Delete__FP8daE_GM_c */
static void daE_GM_Delete(daE_GM_c* param_0) {
    // NONMATCHING
}

/* 806D6AC8-806D6CD0 005948 0208+00 1/1 0/0 0/0 .text            CreateHeap__8daE_GM_cFv */
void daE_GM_c::CreateHeap() {
    // NONMATCHING
}

/* 806D6CD0-806D6CF0 005B50 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806D7ADC-806D7AE0 00013C 0004+00 0/1 0/0 0/0 .rodata          l_damage_count */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const l_damage_count = 0x01010103;
COMPILER_STRIP_GATE(0x806D7ADC, &l_damage_count);
#pragma pop

/* 806D7AE0-806D7AE8 000140 0008+00 0/1 0/0 0/0 .rodata          l_heapsize */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_heapsize[8] = {
    0x31, 0x20, 0x31, 0x20, 0x21, 0xE0, 0x2D, 0xE0,
};
COMPILER_STRIP_GATE(0x806D7AE0, &l_heapsize);
#pragma pop

/* 806D7AE8-806D7AF0 000148 0008+00 0/1 0/0 0/0 .rodata          @6321 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6321[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806D7AE8, &lit_6321);
#pragma pop

/* 806D6CF0-806D71F4 005B70 0504+00 1/1 0/0 0/0 .text            create__8daE_GM_cFv */
void daE_GM_c::create() {
    // NONMATCHING
}

/* 806D71F4-806D723C 006074 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 806D723C-806D7284 0060BC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 806D7284-806D72E0 006104 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 806D72E0-806D7350 006160 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 806D7350-806D73C0 0061D0 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 806D73C0-806D73E0 006240 0020+00 1/0 0/0 0/0 .text            daE_GM_Create__FP8daE_GM_c */
static void daE_GM_Create(daE_GM_c* param_0) {
    // NONMATCHING
}

/* 806D73E0-806D7428 006260 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 806D7428-806D7470 0062A8 0048+00 2/1 0/0 0/0 .text            __dt__12daE_GM_HIO_cFv */
daE_GM_HIO_c::~daE_GM_HIO_c() {
    // NONMATCHING
}

/* 806D7470-806D74F0 0062F0 0080+00 0/0 1/0 0/0 .text            __sinit_d_a_e_gm_cpp */
void __sinit_d_a_e_gm_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x806D7470, __sinit_d_a_e_gm_cpp);
#pragma pop

/* 806D74F0-806D74F8 006370 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_806D74F0() {
    // NONMATCHING
}

/* 806D74F8-806D7500 006378 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_806D74F8() {
    // NONMATCHING
}

/* 806D7914-806D7950 006794 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 806D7950-806D798C 0067D0 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806D7F20-806D7F24 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_806D7F20[4];
#pragma pop

/* 806D7F24-806D7F28 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_806D7F24[4];
#pragma pop

/* 806D7F28-806D7F2C 0000B8 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_806D7F28[4];
#pragma pop

/* 806D7F2C-806D7F30 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_806D7F2C[4];
#pragma pop

/* 806D7F30-806D7F34 0000C0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806D7F30[4];
#pragma pop

/* 806D7F34-806D7F38 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806D7F34[4];
#pragma pop

/* 806D7F38-806D7F3C 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_806D7F38[4];
#pragma pop

/* 806D7F3C-806D7F40 0000CC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_806D7F3C[4];
#pragma pop

/* 806D7F40-806D7F44 0000D0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_806D7F40[4];
#pragma pop

/* 806D7F44-806D7F48 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_806D7F44[4];
#pragma pop

/* 806D7F48-806D7F4C 0000D8 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_806D7F48[4];
#pragma pop

/* 806D7F4C-806D7F50 0000DC 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_806D7F4C[4];
#pragma pop

/* 806D7F50-806D7F54 0000E0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_806D7F50[4];
#pragma pop

/* 806D7F54-806D7F58 0000E4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806D7F54[4];
#pragma pop

/* 806D7F58-806D7F5C 0000E8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_806D7F58[4];
#pragma pop

/* 806D7F5C-806D7F60 0000EC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_806D7F5C[4];
#pragma pop

/* 806D7F60-806D7F64 0000F0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_806D7F60[4];
#pragma pop

/* 806D7F64-806D7F68 0000F4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_806D7F64[4];
#pragma pop

/* 806D7F68-806D7F6C 0000F8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_806D7F68[4];
#pragma pop

/* 806D7F6C-806D7F70 0000FC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_806D7F6C[4];
#pragma pop

/* 806D7F70-806D7F74 000100 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_806D7F70[4];
#pragma pop

/* 806D7F74-806D7F78 000104 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806D7F74[4];
#pragma pop

/* 806D7F78-806D7F7C 000108 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806D7F78[4];
#pragma pop

/* 806D7F7C-806D7F80 00010C 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806D7F7C[4];
#pragma pop

/* 806D7F80-806D7F84 000110 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_806D7F80[4];
#pragma pop

/* 806D7AF0-806D7AF0 000150 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
