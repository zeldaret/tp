/**
 * @file d_a_e_yh.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_e_yh.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "f_op/f_op_actor_enemy.h"


//
// Forward References:
//

extern "C" void __ct__12daE_YH_HIO_cFv();
extern "C" static void yh_disappear__FP10e_yh_class();
extern "C" static void anm_init__FP10e_yh_classifUcf();
extern "C" static void leaf_anm_init__FP10e_yh_classifUcf();
extern "C" static void daE_YH_Draw__FP10e_yh_class();
extern "C" static void pl_check__FP10e_yh_classf();
extern "C" static void damage_check__FP10e_yh_class();
extern "C" static void e_yh_stay__FP10e_yh_class();
extern "C" static void e_yh_appear__FP10e_yh_class();
extern "C" static void e_yh_appear_v__FP10e_yh_class();
extern "C" static void e_yh_wait__FP10e_yh_class();
extern "C" static void e_yh_mk_roof__FP10e_yh_class();
extern "C" static void e_yh_attack__FP10e_yh_class();
extern "C" static void e_yh_attack_s__FP10e_yh_class();
extern "C" static void e_yh_chance__FP10e_yh_class();
extern "C" static void e_yh_s_damage__FP10e_yh_class();
extern "C" static void e_yh_damage__FP10e_yh_class();
extern "C" static void kuki_control1__FP10e_yh_class();
extern "C" static void kuki_control2__FP10e_yh_class();
extern "C" static void kuki_control3__FP10e_yh_class();
extern "C" static void kuki_ha_set__FP10e_yh_class();
extern "C" static void kuki_control1_e__FP10e_yh_class();
extern "C" static void e_yh_escape__FP10e_yh_class();
extern "C" static void e_yh_e_dead__FP10e_yh_class();
extern "C" static void action__FP10e_yh_class();
extern "C" static void eff_set__FP10e_yh_class();
extern "C" static void anm_se_set__FP10e_yh_class();
extern "C" static void daE_YH_Execute__FP10e_yh_class();
extern "C" static bool daE_YH_IsDelete__FP10e_yh_class();
extern "C" static void daE_YH_Delete__FP10e_yh_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daE_YH_Create__FP10fopAc_ac_c();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_YH_HIO_cFv();
extern "C" void __sinit_d_a_e_yh_cpp();
extern "C" static void func_80803DCC();
extern "C" static void func_80803DD4();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__4cXyzFv();
extern "C" extern char const* const d_a_e_yh__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv();
extern "C" void play__14mDoExt_McaMorfFP3VecUlSc();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi();
extern "C" void update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c();
extern "C" void setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createItemFromEnemyID__FUcPC4cXyziiPC5csXyzPC4cXyzPfPf();
extern "C" void fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void fopKyM_createWpillar__FPC4cXyzfi();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void onActor__10dSv_info_cFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void forceOnEventMove__Q213dPa_control_c7level_cFUl();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void __ct__18dBgS_ObjGndChk_SplFv();
extern "C" void __dt__18dBgS_ObjGndChk_SplFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void GetAtHitObj__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void StartCAt__8dCcD_SphFR4cXyz();
extern "C" void MoveCAt__8dCcD_SphFR4cXyz();
extern "C" void def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c();
extern "C" void at_power_check__FP11dCcU_AtInfo();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void setLookPos__9daPy_py_cFP4cXyz();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC3Vec();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxScale__FfffUc();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void deleteAllParticle__14JPABaseEmitterFv();
extern "C" void func_802807E0();
extern "C" void func_80280808();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __construct_array();
extern "C" void _savegpr_19();
extern "C" void _savegpr_20();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_20();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__19mDoExt_3DlineMat1_c[5];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mGndCheck__11fopAcM_gc_c[84];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 808042A8-808042AC 00002C 0004+00 0/6 0/0 0/0 .rodata          @3923 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3923 = 0.5f;
COMPILER_STRIP_GATE(0x808042A8, &lit_3923);
#pragma pop

/* 808042AC-808042B0 000030 0004+00 0/1 0/0 0/0 .rodata          @3924 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3924 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x808042AC, &lit_3924);
#pragma pop

/* 80804420-80804424 000038 0004+00 1/1 0/0 0/0 .data            l_color$4007 */
SECTION_DATA static u8 l_color[4] = {
    0x14,
    0x0F,
    0x00,
    0xFF,
};

/* 80804424-8080443C 00003C 0016+02 1/1 0/0 0/0 .data            pow_xa$4877 */
SECTION_DATA static u8 pow_xa[22 + 2 /* padding */] = {
    0x00,
    0x00,
    0x00,
    0x00,
    0x10,
    0x00,
    0x20,
    0x00,
    0x30,
    0x00,
    0x40,
    0x00,
    0x30,
    0x00,
    0x20,
    0x00,
    0x10,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    /* padding */
    0x00,
    0x00,
};

/* 8080443C-80804508 -00001 00CC+00 1/1 0/0 0/0 .data            @5371 */
SECTION_DATA static void* lit_5371[51] = {
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xF0),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0x180),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0x2B4),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0x44C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0x4DC),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0x528),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0x57C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0x6E8),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0x964),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0xA8C),
    (void*)(((char*)e_yh_escape__FP10e_yh_class) + 0x9B8),
};

/* 80804508-80804560 -00001 0058+00 1/1 0/0 0/0 .data            @5595 */
SECTION_DATA static void* lit_5595[22] = {
    (void*)(((char*)action__FP10e_yh_class) + 0x1D0),
    (void*)(((char*)action__FP10e_yh_class) + 0x1E4),
    (void*)(((char*)action__FP10e_yh_class) + 0x204),
    (void*)(((char*)action__FP10e_yh_class) + 0x224),
    (void*)(((char*)action__FP10e_yh_class) + 0x244),
    (void*)(((char*)action__FP10e_yh_class) + 0x264),
    (void*)(((char*)action__FP10e_yh_class) + 0x284),
    (void*)(((char*)action__FP10e_yh_class) + 0x2A4),
    (void*)(((char*)action__FP10e_yh_class) + 0x2C4),
    (void*)(((char*)action__FP10e_yh_class) + 0x320),
    (void*)(((char*)action__FP10e_yh_class) + 0x2D4),
    (void*)(((char*)action__FP10e_yh_class) + 0x320),
    (void*)(((char*)action__FP10e_yh_class) + 0x320),
    (void*)(((char*)action__FP10e_yh_class) + 0x320),
    (void*)(((char*)action__FP10e_yh_class) + 0x320),
    (void*)(((char*)action__FP10e_yh_class) + 0x320),
    (void*)(((char*)action__FP10e_yh_class) + 0x320),
    (void*)(((char*)action__FP10e_yh_class) + 0x320),
    (void*)(((char*)action__FP10e_yh_class) + 0x320),
    (void*)(((char*)action__FP10e_yh_class) + 0x320),
    (void*)(((char*)action__FP10e_yh_class) + 0x2E8),
    (void*)(((char*)action__FP10e_yh_class) + 0x314),
};

/* 80804560-80804568 000178 0006+02 1/1 0/0 0/0 .data            p_name$5603 */
SECTION_DATA static u8 p_name[6 + 2 /* padding */] = {
    0x88,
    0x11,
    0x88,
    0x12,
    0x88,
    0x13,
    /* padding */
    0x00,
    0x00,
};

/* 80804568-80804574 000180 000C+00 1/1 0/0 0/0 .data            p_idx$5604 */
SECTION_DATA static u8 p_idx[12] = {
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06,
};

/* 80804574-808045B4 00018C 0040+00 0/1 0/0 0/0 .data            cc_sph_src$5967 */
#pragma push
#pragma force_active on
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x25}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 808045B4-808045F4 0001CC 0040+00 0/1 0/0 0/0 .data            at_sph_src$5968 */
#pragma push
#pragma force_active on
static dCcD_SrcSph at_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0xd}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_HARD_BODY, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 35.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 808045F4-80804634 00020C 0040+00 0/1 0/0 0/0 .data            kuki_sph_src$5969 */
#pragma push
#pragma force_active on
static dCcD_SrcSph kuki_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 20.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 80804634-80804654 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_YH_Method */
static actor_method_class l_daE_YH_Method = {
    (process_method_func)daE_YH_Create__FP10fopAc_ac_c,
    (process_method_func)daE_YH_Delete__FP10e_yh_class,
    (process_method_func)daE_YH_Execute__FP10e_yh_class,
    (process_method_func)daE_YH_IsDelete__FP10e_yh_class,
    (process_method_func)daE_YH_Draw__FP10e_yh_class,
};

/* 80804654-80804684 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_YH */
extern actor_process_profile_definition g_profile_E_YH = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_YH,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(e_yh_class),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  144,                    // mPriority
  &l_daE_YH_Method,       // sub_method
  0x10050120,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80804684-80804690 00029C 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80804690-8080469C 0002A8 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 8080469C-808046A8 0002B4 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 808046A8-808046CC 0002C0 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80803DD4,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80803DCC,
};

/* 808046CC-808046D8 0002E4 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 808046D8-808046E4 0002F0 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 808046E4-808046F8 0002FC 0014+00 1/1 0/0 0/0 .data            __vt__18mDoExt_3DlineMat_c */
SECTION_DATA extern void* __vt__18mDoExt_3DlineMat_c[5] = {
    (void*)NULL /* RTTI */, (void*)NULL, (void*)NULL, (void*)NULL, (void*)NULL,
};

/* 808046F8-80804704 000310 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80804704-80804710 00031C 000C+00 2/2 0/0 0/0 .data            __vt__12daE_YH_HIO_c */
SECTION_DATA extern void* __vt__12daE_YH_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_YH_HIO_cFv,
};

/* 807FD4CC-807FD514 0000EC 0048+00 1/1 0/0 0/0 .text            __ct__12daE_YH_HIO_cFv */
daE_YH_HIO_c::daE_YH_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808042B0-808042B4 000034 0004+00 0/1 0/0 0/0 .rodata          @3985 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3985 = 1.5f;
COMPILER_STRIP_GATE(0x808042B0, &lit_3985);
#pragma pop

/* 808042B4-808042B8 000038 0004+00 2/4 0/0 0/0 .rodata          @3986 */
SECTION_RODATA static f32 const lit_3986 = -1.0f;
COMPILER_STRIP_GATE(0x808042B4, &lit_3986);

/* 807FD514-807FD6BC 000134 01A8+00 2/2 0/0 0/0 .text            yh_disappear__FP10e_yh_class */
static void yh_disappear(e_yh_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808043DC-808043DC 000160 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_808043DC = "E_yd";
#pragma pop

/* 807FD6BC-807FD768 0002DC 00AC+00 12/12 0/0 0/0 .text            anm_init__FP10e_yh_classifUcf */
static void anm_init(e_yh_class* param_0, int param_1, f32 param_2, u8 param_3, f32 param_4) {
    // NONMATCHING
}

/* 807FD768-807FD840 000388 00D8+00 11/11 0/0 0/0 .text leaf_anm_init__FP10e_yh_classifUcf */
static void leaf_anm_init(e_yh_class* param_0, int param_1, f32 param_2, u8 param_3,
                              f32 param_4) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808042B8-808042BC 00003C 0004+00 0/8 0/0 0/0 .rodata          @4044 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4044 = 50.0f;
COMPILER_STRIP_GATE(0x808042B8, &lit_4044);
#pragma pop

/* 808042BC-808042C0 000040 0004+00 0/1 0/0 0/0 .rodata          @4045 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4045 = 600.0f;
COMPILER_STRIP_GATE(0x808042BC, &lit_4045);
#pragma pop

/* 807FD840-807FD9D8 000460 0198+00 1/0 0/0 0/0 .text            daE_YH_Draw__FP10e_yh_class */
static void daE_YH_Draw(e_yh_class* param_0) {
    // NONMATCHING
}

/* 807FD9D8-807FDA24 0005F8 004C+00 2/2 0/0 0/0 .text            pl_check__FP10e_yh_classf */
static void pl_check(e_yh_class* param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808042C0-808042C4 000044 0004+00 0/9 0/0 0/0 .rodata          @4141 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4141 = 10.0f;
COMPILER_STRIP_GATE(0x808042C0, &lit_4141);
#pragma pop

/* 808042C4-808042C8 000048 0004+00 0/1 0/0 0/0 .rodata          @4142 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4142 = -15.0f;
COMPILER_STRIP_GATE(0x808042C4, &lit_4142);
#pragma pop

/* 808042C8-808042CC 00004C 0004+00 0/4 0/0 0/0 .rodata          @4143 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4143 = 60.0f;
COMPILER_STRIP_GATE(0x808042C8, &lit_4143);
#pragma pop

/* 808042CC-808042D0 000050 0004+00 0/8 0/0 0/0 .rodata          @4144 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4144 = 30.0f;
COMPILER_STRIP_GATE(0x808042CC, &lit_4144);
#pragma pop

/* 808042D0-808042D4 000054 0004+00 1/8 0/0 0/0 .rodata          @4145 */
SECTION_RODATA static f32 const lit_4145 = 5.0f;
COMPILER_STRIP_GATE(0x808042D0, &lit_4145);

/* 808042D4-808042D8 000058 0004+00 0/9 0/0 0/0 .rodata          @4146 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4146 = 20.0f;
COMPILER_STRIP_GATE(0x808042D4, &lit_4146);
#pragma pop

/* 808042D8-808042DC 00005C 0004+00 0/2 0/0 0/0 .rodata          @4147 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4147 = -10.0f;
COMPILER_STRIP_GATE(0x808042D8, &lit_4147);
#pragma pop

/* 807FDA24-807FDE6C 000644 0448+00 1/1 0/0 0/0 .text            damage_check__FP10e_yh_class */
static void damage_check(e_yh_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808042DC-808042E0 000060 0004+00 0/2 0/0 0/0 .rodata          @4206 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4206 = -170.0f;
COMPILER_STRIP_GATE(0x808042DC, &lit_4206);
#pragma pop

/* 808042E0-808042E4 000064 0004+00 0/4 0/0 0/0 .rodata          @4207 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4207 = 170.0f;
COMPILER_STRIP_GATE(0x808042E0, &lit_4207);
#pragma pop

/* 808042E4-808042E8 000068 0004+00 0/5 0/0 0/0 .rodata          @4208 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4208 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x808042E4, &lit_4208);
#pragma pop

/* 808042E8-808042EC 00006C 0004+00 0/7 0/0 0/0 .rodata          @4209 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4209 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x808042E8, &lit_4209);
#pragma pop

/* 808042EC-808042F0 000070 0004+00 0/1 0/0 0/0 .rodata          @4210 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4210 = 4.0f;
COMPILER_STRIP_GATE(0x808042EC, &lit_4210);
#pragma pop

/* 808042F0-808042F4 000074 0004+00 0/1 0/0 0/0 .rodata          @4211 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4211 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x808042F0, &lit_4211);
#pragma pop

/* 808042F4-808042F8 000078 0004+00 0/1 0/0 0/0 .rodata          @4212 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4212 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x808042F4, &lit_4212);
#pragma pop

/* 808042F8-808042FC 00007C 0004+00 0/8 0/0 0/0 .rodata          @4213 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4213 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x808042F8, &lit_4213);
#pragma pop

/* 80804718-8080471C 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_80804718[4];

/* 8080471C-80804728 00000C 000C+00 1/1 0/0 0/0 .bss             @3918 */
static u8 lit_3918[12];

/* 80804728-80804740 000018 0018+00 11/11 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[24];

/* 807FDE6C-807FE1C4 000A8C 0358+00 1/1 0/0 0/0 .text            e_yh_stay__FP10e_yh_class */
static void e_yh_stay(e_yh_class* param_0) {
    // NONMATCHING
}

/* 807FE1C4-807FE484 000DE4 02C0+00 1/1 0/0 0/0 .text            e_yh_appear__FP10e_yh_class */
static void e_yh_appear(e_yh_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808042FC-80804300 000080 0004+00 0/4 0/0 0/0 .rodata          @4276 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4276 = 15.0f;
COMPILER_STRIP_GATE(0x808042FC, &lit_4276);
#pragma pop

/* 80804300-80804304 000084 0004+00 0/3 0/0 0/0 .rodata          @4277 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4277 = 40.0f;
COMPILER_STRIP_GATE(0x80804300, &lit_4277);
#pragma pop

/* 80804304-80804308 000088 0004+00 0/3 0/0 0/0 .rodata          @4278 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4278 = 400.0f;
COMPILER_STRIP_GATE(0x80804304, &lit_4278);
#pragma pop

/* 80804308-8080430C 00008C 0004+00 0/1 0/0 0/0 .rodata          @4279 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4279 = 3.0f / 20.0f;
COMPILER_STRIP_GATE(0x80804308, &lit_4279);
#pragma pop

/* 807FE484-807FE650 0010A4 01CC+00 1/1 0/0 0/0 .text            e_yh_appear_v__FP10e_yh_class */
static void e_yh_appear_v(e_yh_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8080430C-80804310 000090 0004+00 0/2 0/0 0/0 .rodata          @4379 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4379 = 0.75f;
COMPILER_STRIP_GATE(0x8080430C, &lit_4379);
#pragma pop

/* 80804310-80804314 000094 0004+00 0/1 0/0 0/0 .rodata          @4380 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4380 = 90.0f;
COMPILER_STRIP_GATE(0x80804310, &lit_4380);
#pragma pop

/* 80804314-80804318 000098 0004+00 0/2 0/0 0/0 .rodata          @4381 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4381 = -100.0f;
COMPILER_STRIP_GATE(0x80804314, &lit_4381);
#pragma pop

/* 80804318-8080431C 00009C 0004+00 0/2 0/0 0/0 .rodata          @4382 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4382 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80804318, &lit_4382);
#pragma pop

/* 8080431C-80804324 0000A0 0004+04 0/1 0/0 0/0 .rodata          @4383 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4383[1 + 1 /* padding */] = {
    700.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x8080431C, &lit_4383);
#pragma pop

/* 80804324-8080432C 0000A8 0008+00 1/3 0/0 0/0 .rodata          @4385 */
SECTION_RODATA static u8 const lit_4385[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80804324, &lit_4385);

/* 807FE650-807FEBB0 001270 0560+00 1/1 0/0 0/0 .text            e_yh_wait__FP10e_yh_class */
static void e_yh_wait(e_yh_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8080432C-80804330 0000B0 0004+00 0/3 0/0 0/0 .rodata          @4415 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4415 = 70.0f;
COMPILER_STRIP_GATE(0x8080432C, &lit_4415);
#pragma pop

/* 80804330-80804334 0000B4 0004+00 0/2 0/0 0/0 .rodata          @4416 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4416 = 250.0f;
COMPILER_STRIP_GATE(0x80804330, &lit_4416);
#pragma pop

/* 807FEBB0-807FEE0C 0017D0 025C+00 1/1 0/0 0/0 .text            e_yh_mk_roof__FP10e_yh_class */
static void e_yh_mk_roof(e_yh_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80804334-80804338 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4626 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4626 = 350.0f;
COMPILER_STRIP_GATE(0x80804334, &lit_4626);
#pragma pop

/* 80804338-8080433C 0000BC 0004+00 0/2 0/0 0/0 .rodata          @4627 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4627 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x80804338, &lit_4627);
#pragma pop

/* 8080433C-80804340 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4628 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4628 = 2.0f;
COMPILER_STRIP_GATE(0x8080433C, &lit_4628);
#pragma pop

/* 80804340-80804344 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4629 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4629 = 2000.0f;
COMPILER_STRIP_GATE(0x80804340, &lit_4629);
#pragma pop

/* 80804344-80804348 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4630 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4630 = -70.0f;
COMPILER_STRIP_GATE(0x80804344, &lit_4630);
#pragma pop

/* 80804348-8080434C 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4631 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4631 = 80.0f;
COMPILER_STRIP_GATE(0x80804348, &lit_4631);
#pragma pop

/* 8080434C-80804350 0000D0 0004+00 0/3 0/0 0/0 .rodata          @4632 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4632 = 200.0f;
COMPILER_STRIP_GATE(0x8080434C, &lit_4632);
#pragma pop

/* 807FEE0C-807FF8DC 001A2C 0AD0+00 1/1 0/0 0/0 .text            e_yh_attack__FP10e_yh_class */
static void e_yh_attack(e_yh_class* param_0) {
    // NONMATCHING
}

/* 807FF8DC-807FFC38 0024FC 035C+00 1/1 0/0 0/0 .text            e_yh_attack_s__FP10e_yh_class */
static void e_yh_attack_s(e_yh_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80804350-80804354 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4746 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4746 = 230.0f;
COMPILER_STRIP_GATE(0x80804350, &lit_4746);
#pragma pop

/* 80804354-80804358 0000D8 0004+00 0/5 0/0 0/0 .rodata          @4747 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4747 = 3.0f;
COMPILER_STRIP_GATE(0x80804354, &lit_4747);
#pragma pop

/* 807FFC38-807FFF38 002858 0300+00 1/1 0/0 0/0 .text            e_yh_chance__FP10e_yh_class */
static void e_yh_chance(e_yh_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80804358-8080435C 0000DC 0004+00 0/2 0/0 0/0 .rodata          @4790 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4790 = -50.0f;
COMPILER_STRIP_GATE(0x80804358, &lit_4790);
#pragma pop

/* 8080435C-80804360 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4791 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4791 = 23.0f / 25.0f;
COMPILER_STRIP_GATE(0x8080435C, &lit_4791);
#pragma pop

/* 807FFF38-80800174 002B58 023C+00 1/1 0/0 0/0 .text            e_yh_s_damage__FP10e_yh_class */
static void e_yh_s_damage(e_yh_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80804360-80804364 0000E4 0004+00 0/2 0/0 0/0 .rodata          @4871 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4871 = -20.0f;
COMPILER_STRIP_GATE(0x80804360, &lit_4871);
#pragma pop

/* 80804364-80804368 0000E8 0004+00 0/1 0/0 0/0 .rodata          @4872 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4872 = 450.0f;
COMPILER_STRIP_GATE(0x80804364, &lit_4872);
#pragma pop

/* 80804368-8080436C 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4873 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4873 = -1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80804368, &lit_4873);
#pragma pop

/* 80800174-8080056C 002D94 03F8+00 1/1 0/0 0/0 .text            e_yh_damage__FP10e_yh_class */
static void e_yh_damage(e_yh_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8080436C-80804370 0000F0 0004+00 0/1 0/0 0/0 .rodata          @4959 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4959 = -30.0f;
COMPILER_STRIP_GATE(0x8080436C, &lit_4959);
#pragma pop

/* 80804370-80804374 0000F4 0004+00 0/1 0/0 0/0 .rodata          @4960 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4960 = -200.0f;
COMPILER_STRIP_GATE(0x80804370, &lit_4960);
#pragma pop

/* 8080056C-808008C8 00318C 035C+00 1/1 0/0 0/0 .text            kuki_control1__FP10e_yh_class */
static void kuki_control1(e_yh_class* param_0) {
    // NONMATCHING
}

/* 808008C8-80800A3C 0034E8 0174+00 1/1 0/0 0/0 .text            kuki_control2__FP10e_yh_class */
static void kuki_control2(e_yh_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80804374-80804378 0000F8 0004+00 1/1 0/0 0/0 .rodata          @5015 */
SECTION_RODATA static f32 const lit_5015 = 11.0f;
COMPILER_STRIP_GATE(0x80804374, &lit_5015);

/* 80800A3C-80800B18 00365C 00DC+00 1/1 0/0 0/0 .text            kuki_control3__FP10e_yh_class */
static void kuki_control3(e_yh_class* param_0) {
    // NONMATCHING
}

/* 80800B18-80800C40 003738 0128+00 1/1 0/0 0/0 .text            kuki_ha_set__FP10e_yh_class */
static void kuki_ha_set(e_yh_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80804378-8080437C 0000FC 0004+00 0/1 0/0 0/0 .rodata          @5114 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5114 = -5.0f;
COMPILER_STRIP_GATE(0x80804378, &lit_5114);
#pragma pop

/* 80800C40-80800F44 003860 0304+00 1/1 0/0 0/0 .text            kuki_control1_e__FP10e_yh_class */
static void kuki_control1_e(e_yh_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8080437C-80804380 000100 0004+00 0/2 0/0 0/0 .rodata          @5362 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5362 = 25.0f;
COMPILER_STRIP_GATE(0x8080437C, &lit_5362);
#pragma pop

/* 80800F44-80801D10 003B64 0DCC+00 2/1 0/0 0/0 .text            e_yh_escape__FP10e_yh_class */
static void e_yh_escape(e_yh_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80804380-80804384 000104 0004+00 0/1 0/0 0/0 .rodata          @5363 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5363 = 300.0f;
COMPILER_STRIP_GATE(0x80804380, &lit_5363);
#pragma pop

/* 80804384-80804388 000108 0004+00 0/0 0/0 0/0 .rodata          @5364 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5364 = 7.5f;
COMPILER_STRIP_GATE(0x80804384, &lit_5364);
#pragma pop

/* 80804388-8080438C 00010C 0004+00 0/0 0/0 0/0 .rodata          @5365 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5365 = 0.25f;
COMPILER_STRIP_GATE(0x80804388, &lit_5365);
#pragma pop

/* 8080438C-80804390 000110 0004+00 0/0 0/0 0/0 .rodata          @5366 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5366 = 65536.0f;
COMPILER_STRIP_GATE(0x8080438C, &lit_5366);
#pragma pop

/* 80804390-80804394 000114 0004+00 0/0 0/0 0/0 .rodata          @5367 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5367 = 5000.0f;
COMPILER_STRIP_GATE(0x80804390, &lit_5367);
#pragma pop

/* 80804394-80804398 000118 0004+00 0/1 0/0 0/0 .rodata          @5368 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5368 = 35.0f;
COMPILER_STRIP_GATE(0x80804394, &lit_5368);
#pragma pop

/* 80804398-8080439C 00011C 0004+00 0/1 0/0 0/0 .rodata          @5369 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5369 = -7.0f;
COMPILER_STRIP_GATE(0x80804398, &lit_5369);
#pragma pop

/* 8080439C-808043A0 000120 0004+00 0/1 0/0 0/0 .rodata          @5370 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5370 = 9.0f / 5.0f;
COMPILER_STRIP_GATE(0x8080439C, &lit_5370);
#pragma pop

/* 808043A0-808043A4 000124 0004+00 0/1 0/0 0/0 .rodata          @5447 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5447 = -40.0f;
COMPILER_STRIP_GATE(0x808043A0, &lit_5447);
#pragma pop

/* 808043A4-808043A8 000128 0004+00 0/1 0/0 0/0 .rodata          @5448 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5448 = -3.0f / 10.0f;
COMPILER_STRIP_GATE(0x808043A4, &lit_5448);
#pragma pop

/* 80801D10-808021D8 004930 04C8+00 1/1 0/0 0/0 .text            e_yh_e_dead__FP10e_yh_class */
static void e_yh_e_dead(e_yh_class* param_0) {
    // NONMATCHING
}

/* 808021D8-8080285C 004DF8 0684+00 2/1 0/0 0/0 .text            action__FP10e_yh_class */
static void action(e_yh_class* param_0) {
    // NONMATCHING
}

/* 8080285C-80802C30 00547C 03D4+00 1/1 0/0 0/0 .text            eff_set__FP10e_yh_class */
static void eff_set(e_yh_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808043A8-808043AC 00012C 0004+00 0/1 0/0 0/0 .rodata          @5592 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5592 = -30000.0f;
COMPILER_STRIP_GATE(0x808043A8, &lit_5592);
#pragma pop

/* 808043AC-808043B0 000130 0004+00 0/0 0/0 0/0 .rodata          @5593 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5593 = 300000.0f;
COMPILER_STRIP_GATE(0x808043AC, &lit_5593);
#pragma pop

/* 808043B0-808043B4 000134 0004+00 0/0 0/0 0/0 .rodata          @5594 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5594 = 30000.0f;
COMPILER_STRIP_GATE(0x808043B0, &lit_5594);
#pragma pop

/* 808043B4-808043B8 000138 0004+00 0/1 0/0 0/0 .rodata          @5759 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5759 = 22.0f;
COMPILER_STRIP_GATE(0x808043B4, &lit_5759);
#pragma pop

/* 808043B8-808043BC 00013C 0004+00 0/1 0/0 0/0 .rodata          @5760 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5760 = 21.0f;
COMPILER_STRIP_GATE(0x808043B8, &lit_5760);
#pragma pop

/* 80802C30-80802D98 005850 0168+00 1/1 0/0 0/0 .text            anm_se_set__FP10e_yh_class */
static void anm_se_set(e_yh_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808043BC-808043C0 000140 0004+00 0/1 0/0 0/0 .rodata          @5857 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5857 = 10000.0f;
COMPILER_STRIP_GATE(0x808043BC, &lit_5857);
#pragma pop

/* 808043C0-808043C4 000144 0004+00 0/1 0/0 0/0 .rodata          @5858 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5858 = -20000.0f;
COMPILER_STRIP_GATE(0x808043C0, &lit_5858);
#pragma pop

/* 80802D98-80803178 0059B8 03E0+00 2/1 0/0 0/0 .text            daE_YH_Execute__FP10e_yh_class */
static void daE_YH_Execute(e_yh_class* param_0) {
    // NONMATCHING
}

/* 80803178-80803180 005D98 0008+00 1/0 0/0 0/0 .text            daE_YH_IsDelete__FP10e_yh_class */
static bool daE_YH_IsDelete(e_yh_class* param_0) {
    return true;
}

/* 80803180-808031E8 005DA0 0068+00 1/0 0/0 0/0 .text            daE_YH_Delete__FP10e_yh_class */
static void daE_YH_Delete(e_yh_class* param_0) {
    // NONMATCHING
}

/* 808031E8-80803474 005E08 028C+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80803474-808034BC 006094 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808043C4-808043C8 000148 0004+00 0/1 0/0 0/0 .rodata          @6102 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6102 = 500.0f;
COMPILER_STRIP_GATE(0x808043C4, &lit_6102);
#pragma pop

/* 808043C8-808043CC 00014C 0004+00 0/1 0/0 0/0 .rodata          @6103 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6103 = -300.0f;
COMPILER_STRIP_GATE(0x808043C8, &lit_6103);
#pragma pop

/* 808043CC-808043D0 000150 0004+00 0/1 0/0 0/0 .rodata          @6104 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6104 = -400.0f;
COMPILER_STRIP_GATE(0x808043CC, &lit_6104);
#pragma pop

/* 808043D0-808043D4 000154 0004+00 0/1 0/0 0/0 .rodata          @6105 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6105 = 65535.0f;
COMPILER_STRIP_GATE(0x808043D0, &lit_6105);
#pragma pop

/* 808043D4-808043DC 000158 0008+00 0/1 0/0 0/0 .rodata          @6107 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6107[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x808043D4, &lit_6107);
#pragma pop

/* 808043DC-808043DC 000160 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_808043E1 = "E_yh";
#pragma pop

/* 808034BC-808039DC 0060DC 0520+00 1/0 0/0 0/0 .text            daE_YH_Create__FP10fopAc_ac_c */
static void daE_YH_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 808039DC-80803A4C 0065FC 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80803A4C-80803ABC 00666C 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80803ABC-80803B40 0066DC 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80803B40-80803C0C 006760 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80803C0C-80803C54 00682C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80803C54-80803C9C 006874 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80803C9C-80803CF8 0068BC 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80803CF8-80803CFC 006918 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80803CFC-80803D00 00691C 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80803D00-80803D48 006920 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80803D48-80803D90 006968 0048+00 2/1 0/0 0/0 .text            __dt__12daE_YH_HIO_cFv */
daE_YH_HIO_c::~daE_YH_HIO_c() {
    // NONMATCHING
}

/* 80803D90-80803DCC 0069B0 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_yh_cpp */
void __sinit_d_a_e_yh_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80803D90, __sinit_d_a_e_yh_cpp);
#pragma pop

/* 80803DCC-80803DD4 0069EC 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80803DCC() {
    // NONMATCHING
}

/* 80803DD4-80803DDC 0069F4 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80803DD4() {
    // NONMATCHING
}

/* 808041F0-8080422C 006E10 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 8080422C-80804268 006E4C 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 808043DC-808043DC 000160 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
