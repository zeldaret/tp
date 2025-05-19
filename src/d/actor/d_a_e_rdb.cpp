/**
 * @file d_a_e_rdb.cpp
 * 
*/

#include "d/actor/d_a_e_rdb.h"
#include "d/actor/d_a_e_wb.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "d/d_camera.h"
#include "d/d_msg_object.h"
#include "m_Do/m_Do_graphic.h"
#include "d/actor/d_a_e_rd.h"
#include "c/c_damagereaction.h"
UNK_REL_DATA;
#include "f_op/f_op_actor_enemy.h"

#include "Z2AudioLib/Z2Instances.h"


//
// Forward References:
//

extern "C" void __ct__13daE_RDB_HIO_cFv();
extern "C" static void anm_init__FP11e_rdb_classifUcf();
extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" static void daE_RDB_Draw__FP11e_rdb_class();
extern "C" static void mtx_to_posAngle__FPA4_fP4cXyzP5csXyz();
extern "C" static void player_way_check__FP11e_rdb_class();
extern "C" static void e_rdb_wait__FP11e_rdb_class();
extern "C" static void e_rdb_fight__FP11e_rdb_class();
extern "C" static void getPolyColor__FR13cBgS_PolyInfoiP8_GXColorP8_GXColorPUcPf();
extern "C" static void e_rdb_attack__FP11e_rdb_class();
extern "C" static void e_rdb_spin_attack__FP11e_rdb_class();
extern "C" static void e_rdb_defence__FP11e_rdb_class();
extern "C" static void e_rdb_damage__FP11e_rdb_class();
extern "C" static void e_rdb_end__FP11e_rdb_class();
extern "C" static void e_rdb_start__FP11e_rdb_class();
extern "C" static void damage_check__FP11e_rdb_class();
extern "C" static void shot_s_sub__FPvPv();
extern "C" static void action__FP11e_rdb_class();
extern "C" static void cam_3d_morf__FP11e_rdb_classf();
extern "C" static void cam_spd_set__FP11e_rdb_class();
extern "C" static void demo_camera__FP11e_rdb_class();
extern "C" static void anm_se_set__FP11e_rdb_class();
extern "C" static void daE_RDB_Execute__FP11e_rdb_class();
extern "C" static bool daE_RDB_IsDelete__FP11e_rdb_class();
extern "C" static void daE_RDB_Delete__FP11e_rdb_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daE_RDB_Create__FP10fopAc_ac_c();
extern "C" void __ct__11e_rdb_classFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__13daE_RDB_HIO_cFv();
extern "C" void __sinit_d_a_e_rdb_cpp();
extern "C" static void func_8076AFE8();
extern "C" static void func_8076AFF0();
extern "C" void __dt__4cXyzFv();
extern "C" extern char const* const d_a_e_rdb__stringBase0;

//
// External References:
//

extern "C" void fadeOut__13mDoGph_gInf_cFfR8_GXColor();
extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void mDoMtx_MtxToRot__FPA4_CfP5csXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void cDmrNowMidnaTalk__Fv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcSch_JudgeForPName__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGs_offOneZoneSwitch__Fii();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onTbox__12dSv_memBit_cFi();
extern "C" void onDungeonItem__12dSv_memBit_cFi();
extern "C" void isDungeonItem__12dSv_memBit_cCFi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void dEv_noFinishSkipProc__FPvi();
extern "C" void setSkipProc__14dEvt_control_cFPvPFPvi_ii();
extern "C" void setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void ChkPolySafe__4cBgSFRC13cBgS_PolyInfo();
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
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void StartCAt__8dCcD_SphFR4cXyz();
extern "C" void MoveCAt__8dCcD_SphFR4cXyz();
extern "C" void cc_pl_cut_bit_get__Fv();
extern "C" void def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyzfs();
extern "C" void Reset__9dCamera_cF4cXyz4cXyz();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_custom_colset__FUcUcf();
extern "C" void dKy_pol_eff_prim_get__FPC13cBgS_PolyInfoP8_GXColor();
extern "C" void dKy_pol_eff_env_get__FPC13cBgS_PolyInfoP8_GXColor();
extern "C" void dKy_pol_eff2_prim_get__FPC13cBgS_PolyInfoP8_GXColor();
extern "C" void dKy_pol_eff2_env_get__FPC13cBgS_PolyInfoP8_GXColor();
extern "C" void dKy_pol_eff_alpha_get__FPC13cBgS_PolyInfo();
extern "C" void dKy_pol_eff_ratio_get__FPC13cBgS_PolyInfo();
extern "C" void dKy_pol_eff2_alpha_get__FPC13cBgS_PolyInfo();
extern "C" void dKy_pol_eff2_ratio_get__FPC13cBgS_PolyInfo();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void getStatus__12dMsgObject_cFv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c();
extern "C" void doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci();
extern "C" void remove__10dMsgFlow_cFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ct__5csXyzFsss();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void subBgmStart__8Z2SeqMgrFUl();
extern "C" void subBgmStop__8Z2SeqMgrFv();
extern "C" void setDemoName__11Z2StatusMgrFPc();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecP3VecUcUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __construct_array();
extern "C" void _savegpr_19();
extern "C" void _savegpr_20();
extern "C" void _savegpr_22();
extern "C" void _savegpr_23();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_20();
extern "C" void _restgpr_22();
extern "C" void _restgpr_23();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* 8076B730-8076B738 000038 0006+02 1/1 0/0 0/0 .data            ap_name$4291 */
// static u16 ap_name_4291[3] = {
//     0x8A5C,
//     0x8A5D,
//     0x8A5E,
// };

/* 8076B738-8076B73C 000040 0004+00 1/1 0/0 0/0 .data            ap_name$4373 */
// static u16 ap_name_4373[2] = {
//     0x8A5F,
//     0x8A60,
// };

/* 8076B73C-8076B798 -00001 005C+00 1/1 0/0 0/0 .data            @4656 */
SECTION_DATA static void* lit_4656[23] = {
    (void*)(((char*)e_rdb_end__FP11e_rdb_class) + 0x8C),
    (void*)(((char*)e_rdb_end__FP11e_rdb_class) + 0xC0),
    (void*)(((char*)e_rdb_end__FP11e_rdb_class) + 0x434),
    (void*)(((char*)e_rdb_end__FP11e_rdb_class) + 0x228),
    (void*)(((char*)e_rdb_end__FP11e_rdb_class) + 0x24C),
    (void*)(((char*)e_rdb_end__FP11e_rdb_class) + 0x298),
    (void*)(((char*)e_rdb_end__FP11e_rdb_class) + 0x434),
    (void*)(((char*)e_rdb_end__FP11e_rdb_class) + 0x434),
    (void*)(((char*)e_rdb_end__FP11e_rdb_class) + 0x434),
    (void*)(((char*)e_rdb_end__FP11e_rdb_class) + 0x434),
    (void*)(((char*)e_rdb_end__FP11e_rdb_class) + 0x2A0),
    (void*)(((char*)e_rdb_end__FP11e_rdb_class) + 0x30C),
    (void*)(((char*)e_rdb_end__FP11e_rdb_class) + 0x434),
    (void*)(((char*)e_rdb_end__FP11e_rdb_class) + 0x434),
    (void*)(((char*)e_rdb_end__FP11e_rdb_class) + 0x434),
    (void*)(((char*)e_rdb_end__FP11e_rdb_class) + 0x434),
    (void*)(((char*)e_rdb_end__FP11e_rdb_class) + 0x434),
    (void*)(((char*)e_rdb_end__FP11e_rdb_class) + 0x434),
    (void*)(((char*)e_rdb_end__FP11e_rdb_class) + 0x434),
    (void*)(((char*)e_rdb_end__FP11e_rdb_class) + 0x434),
    (void*)(((char*)e_rdb_end__FP11e_rdb_class) + 0x344),
    (void*)(((char*)e_rdb_end__FP11e_rdb_class) + 0x398),
    (void*)(((char*)e_rdb_end__FP11e_rdb_class) + 0x424),
};

/* 8076B798-8076B7D0 -00001 0038+00 1/1 0/0 0/0 .data            @4730 */
SECTION_DATA static void* lit_4730[14] = {
    (void*)(((char*)e_rdb_start__FP11e_rdb_class) + 0x6C),
    (void*)(((char*)e_rdb_start__FP11e_rdb_class) + 0x374),
    (void*)(((char*)e_rdb_start__FP11e_rdb_class) + 0x8C),
    (void*)(((char*)e_rdb_start__FP11e_rdb_class) + 0xC0),
    (void*)(((char*)e_rdb_start__FP11e_rdb_class) + 0xC8),
    (void*)(((char*)e_rdb_start__FP11e_rdb_class) + 0xF0),
    (void*)(((char*)e_rdb_start__FP11e_rdb_class) + 0x374),
    (void*)(((char*)e_rdb_start__FP11e_rdb_class) + 0x168),
    (void*)(((char*)e_rdb_start__FP11e_rdb_class) + 0x374),
    (void*)(((char*)e_rdb_start__FP11e_rdb_class) + 0x374),
    (void*)(((char*)e_rdb_start__FP11e_rdb_class) + 0x17C),
    (void*)(((char*)e_rdb_start__FP11e_rdb_class) + 0x188),
    (void*)(((char*)e_rdb_start__FP11e_rdb_class) + 0x220),
    (void*)(((char*)e_rdb_start__FP11e_rdb_class) + 0x330),
};

/* 8076B7D0-8076B7F0 -00001 0020+00 1/1 0/0 0/0 .data            @5169 */
SECTION_DATA static void* lit_5169[8] = {
    (void*)(((char*)action__FP11e_rdb_class) + 0x88),
    (void*)(((char*)action__FP11e_rdb_class) + 0x9C),
    (void*)(((char*)action__FP11e_rdb_class) + 0xAC),
    (void*)(((char*)action__FP11e_rdb_class) + 0xBC),
    (void*)(((char*)action__FP11e_rdb_class) + 0xD0),
    (void*)(((char*)action__FP11e_rdb_class) + 0xE4),
    (void*)(((char*)action__FP11e_rdb_class) + 0xF8),
    (void*)(((char*)action__FP11e_rdb_class) + 0x108),
};

/* 8076B7F0-8076B830 -00001 0040+00 1/1 0/0 0/0 .data            @5653 */
SECTION_DATA static void* lit_5653[16] = {
    (void*)(((char*)demo_camera__FP11e_rdb_class) + 0xB98),
    (void*)(((char*)demo_camera__FP11e_rdb_class) + 0x68),
    (void*)(((char*)demo_camera__FP11e_rdb_class) + 0x114),
    (void*)(((char*)demo_camera__FP11e_rdb_class) + 0x340),
    (void*)(((char*)demo_camera__FP11e_rdb_class) + 0xB98),
    (void*)(((char*)demo_camera__FP11e_rdb_class) + 0xB98),
    (void*)(((char*)demo_camera__FP11e_rdb_class) + 0xB98),
    (void*)(((char*)demo_camera__FP11e_rdb_class) + 0xB98),
    (void*)(((char*)demo_camera__FP11e_rdb_class) + 0xB98),
    (void*)(((char*)demo_camera__FP11e_rdb_class) + 0xB98),
    (void*)(((char*)demo_camera__FP11e_rdb_class) + 0x3D4),
    (void*)(((char*)demo_camera__FP11e_rdb_class) + 0x4B8),
    (void*)(((char*)demo_camera__FP11e_rdb_class) + 0x774),
    (void*)(((char*)demo_camera__FP11e_rdb_class) + 0x854),
    (void*)(((char*)demo_camera__FP11e_rdb_class) + 0xA58),
    (void*)(((char*)demo_camera__FP11e_rdb_class) + 0xAA8),
};

/* 8076B830-8076B870 000138 0040+00 0/1 0/0 0/0 .data            cc_sph_src$6434 */
#pragma push
#pragma force_active on
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fafdbf, 0x3}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x102}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 8076B870-8076B8B0 000178 0040+00 0/1 0/0 0/0 .data            at_sph_src$6435 */
#pragma push
#pragma force_active on
static dCcD_SrcSph at_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0xc, 0xd}, {0xd8fafdbf, 0x3}, 0x0}}, // mObj
        {dCcD_SE_METAL, 0x0, 0x2, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x102}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 35.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 8076B8B0-8076B8F4 0001B8 0044+00 0/1 0/0 0/0 .data            co_cyl_src$6444 */
#pragma push
#pragma force_active on
static dCcD_SrcCyl co_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x0, 0x0}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        100.0f, // mRadius
        200.0f // mHeight
    } // mCyl
};
#pragma pop

/* 8076B944-8076B950 00024C 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 8076B950-8076B95C 000258 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 8076B95C-8076B968 000264 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 8076B968-8076B974 000270 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 8076B974-8076B980 00027C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 8076B980-8076B98C 000288 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8076B98C-8076B9B0 000294 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8076AFF0,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8076AFE8,
};

/* 8076B9B0-8076B9BC 0002B8 000C+00 2/2 0/0 0/0 .data            __vt__13daE_RDB_HIO_c */
SECTION_DATA extern void* __vt__13daE_RDB_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daE_RDB_HIO_cFv,
};

/* 807650CC-807650F0 0000EC 0024+00 1/1 0/0 0/0 .text            __ct__13daE_RDB_HIO_cFv */
daE_RDB_HIO_c::daE_RDB_HIO_c() {
    field_0x4 = -1;
    field_0x8 = 1.55f;
}

/* 807650F0-8076519C 000110 00AC+00 9/9 0/0 0/0 .text            anm_init__FP11e_rdb_classifUcf */
static void anm_init(e_rdb_class* i_this, int i_index, f32 i_morf, u8 i_attr, f32 i_rate) {
    i_this->mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_rdb", i_index), i_attr, i_morf, i_rate, 0.0f, -1.0f);
    i_this->mAnm = i_index;
}

/* 8076519C-80765314 0001BC 0178+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static int nodeCallBack(J3DJoint* i_joint, int param_2) {
    s16 sVar1;
    if (param_2 == 0) {
        int jntNo = i_joint->getJntNo();
        J3DModel* model = j3dSys.getModel();
        e_rdb_class* rdb_p = (e_rdb_class*)model->getUserArea();
        if (rdb_p != NULL) {
            PSMTXCopy(model->getAnmMtx(jntNo), *calc_mtx);
            if (jntNo == 1 || jntNo == 2) {
                cMtx_XrotM(*calc_mtx, rdb_p->field_0x6ca / 8);

                if (jntNo == 1) {
                    cMtx_XrotM(*calc_mtx, rdb_p->field_0x6d0);
                }

                cMtx_ZrotM(*calc_mtx, -(rdb_p->field_0x6cc / 8));
            } else if (jntNo == 5 || jntNo == 6) {
                cMtx_YrotM(*calc_mtx, rdb_p->field_0x6d2 - rdb_p->field_0x6ca / 3);
                cMtx_ZrotM(*calc_mtx, -(rdb_p->field_0x6cc / 8));
            }

            model->setAnmMtx(jntNo, *calc_mtx);
            PSMTXCopy(*calc_mtx, J3DSys::mCurrentMtx);
        }
    }

    return 1;
}

/* 80765314-80765600 000334 02EC+00 1/0 0/0 0/0 .text            daE_RDB_Draw__FP11e_rdb_class */
static int daE_RDB_Draw(e_rdb_class* i_this) {
    J3DMaterial* material;
    if (i_this->field_0xfe6 != 0) {
        return 1;
    }

    J3DModel* model = i_this->mpModelMorf->getModel();
    g_env_light.settingTevStruct(0, &i_this->enemy.current.pos, &i_this->enemy.tevStr);

    if (i_this->field_0xfcf == 0) {
        g_env_light.setLightTevColorType_MAJI(model, &i_this->enemy.tevStr);
        
        for (u16 i = 3; i <= 4; i++) {
            J3DShape* shape = model->getModelData()->getMaterialNodePointer(i)->getShape();
            if (shape != NULL) {
                shape->hide();
            }
        }

        for (u16 i = 0; i <= 1; i++) {
            material = model->getModelData()->getMaterialNodePointer(i);
            material->getTevColor(0)->r = i_this->field_0x6e0;
            material->getTevColor(0)->g = i_this->field_0x6e0;
            material->getTevColor(0)->b = i_this->field_0x6e0;
        }

        i_this->mpModelMorf->entryDL();
    }

    if (i_this->field_0xfcf != 1 && i_this->field_0x680 != 0) {
        g_env_light.setLightTevColorType_MAJI(i_this->field_0x678, &i_this->enemy.tevStr);
        
        material = i_this->field_0x678->getModelData()->getMaterialNodePointer(0);
        material->getTevColor(0)->r = i_this->field_0x6e0;
        material->getTevColor(0)->g = i_this->field_0x6e0;
        material->getTevColor(0)->b = i_this->field_0x6e0;
        mDoExt_modelUpdateDL(i_this->field_0x678);
    }

    if (i_this->field_0xfcf == 0) {
        cXyz shadow_pos;
        shadow_pos.set(i_this->enemy.current.pos.x, i_this->enemy.current.pos.y + 100.0f, i_this->enemy.current.pos.z);
        
        f32 fVar1 = 1700.0f;
        if (i_this->mAction == 7) {
            fVar1 = 2700.0f;
        }

        i_this->mShadowKey = dComIfGd_setShadow(i_this->mShadowKey, 1, model, &shadow_pos, fVar1, 0.0f,
                                                    i_this->enemy.current.pos.y, i_this->mAcch.GetGroundH(), i_this->mAcch.m_gnd,
                                                    &i_this->enemy.tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
        if (i_this->field_0x678 != NULL) {
            dComIfGd_addRealShadow(i_this->mShadowKey, i_this->field_0x678);
        }
    }

    return 1;
}

/* 80765600-8076563C 000620 003C+00 1/1 0/0 0/0 .text mtx_to_posAngle__FPA4_fP4cXyzP5csXyz */
static void mtx_to_posAngle(Mtx param_1, cXyz* param_2, csXyz* param_3) {
    mDoMtx_multVecZero(param_1, param_2);
    mDoMtx_MtxToRot(param_1, param_3);
}

/* 8076563C-80765678 00065C 003C+00 1/1 0/0 0/0 .text            player_way_check__FP11e_rdb_class */
static int player_way_check(e_rdb_class* i_this) {
    s16 sVar1 = i_this->enemy.shape_angle.y - dComIfGp_getPlayer(0)->shape_angle.y;
    if (sVar1 < 0x4000 && sVar1 > -0x4000) {
        return 0;
    }

    return 1;
}

/* 80765678-807658E0 000698 0268+00 1/1 0/0 0/0 .text            e_rdb_wait__FP11e_rdb_class */
static void e_rdb_wait(e_rdb_class* i_this) {
    s16 sVar1 = i_this->enemy.shape_angle.y - i_this->mAngleToPlayer;
    f32 fVar1 = 0.0f;

    switch (i_this->mMode) {
        case 0:
            anm_init(i_this, 69 ,10.0f ,2, 1.0f);
            i_this->mMode = 1;
            i_this->field_0x6b8[0] = cM_rndF(10.0f) + 20.0f;
            // fallthrough
        case 1:
            if (i_this->mAnm == 68) {
                if (sVar1 < 512 && sVar1 > -512) {
                    anm_init(i_this, 69, 5.0f, 2, 1.0f);
                }
            } else if (sVar1 > 512 || sVar1 < -512) {
                anm_init(i_this, 68, 5.0f, 2, 1.0f);
            }
        
            if (i_this->mDistToPlayer < 350.0f) {
                if (i_this->mAnm != 68) {
                    anm_init(i_this, 68, 5.0f, 2, 1.0f);
                }
                i_this->mMode = 2;
            }
            break;

        case 2:
            fVar1 = -2.0f;
            if (i_this->mDistToPlayer > 400.0f) {
                i_this->mMode = 1;
            }
    }

    cLib_addCalc2(&i_this->enemy.speedF, fVar1, 1.0f, 3.0f);
    cLib_addCalcAngleS2(&i_this->enemy.current.angle.y, i_this->mAngleToPlayer, 2, 512);
    i_this->field_0x6c8 = 1;
    fVar1 = 420.0f;
    if (i_this->field_0xfcc >= 2 && strcmp(dComIfGp_getStartStageName(), "D_MN09") == 0) {
        fVar1 = 820.0f;
    }

    if (i_this->mDistToPlayer > fVar1) {
        i_this->mAction = 2;
        i_this->mMode = 0;
    } else {
        if (i_this->mDistToPlayer < fVar1 && i_this->field_0x6b8[0] == 0) {
            if (i_this->field_0xfcc >= 2 && strcmp(dComIfGp_getStartStageName(), "D_MN09") == 0) {
                i_this->mAction = 4;
            } else {
                i_this->mAction = 3;
            }

            i_this->mMode = 0;
        }
    }
}

/* 807658E0-80765A98 000900 01B8+00 1/1 0/0 0/0 .text            e_rdb_fight__FP11e_rdb_class */
static void e_rdb_fight(e_rdb_class* i_this) {
    f32 fVar1 = 0.0f;

    switch (i_this->mMode) {
        case 0:
            anm_init(i_this, 70, 10.0f, 2, 1.0f);
            i_this->mMode = 1;
            i_this->field_0x5cc = 1.0f;
            // fallthrough
        case 1:
            if (i_this->mAnm == 70) {
                fVar1 = 3.0f;
                if (i_this->mDistToPlayer > 700.0f) {
                anm_init(i_this, 64, 10.0f, 2, 1.0f);
                }
            } else {
                fVar1 = 10.0f;
                if (i_this->mDistToPlayer < 600.0f) {
                i_this->field_0x5cc = 3.0f;
                anm_init(i_this, 70, 10.0f, 2, i_this->field_0x5cc);
                fVar1 = 3.0f;
                }
            }
    }

    i_this->mpModelMorf->setPlaySpeed(i_this->field_0x5cc);
    cLib_addCalc2(&i_this->enemy.speedF, fVar1 * i_this->field_0x5cc, 1.0f, i_this->field_0x5cc * 3.0f);
    cLib_addCalc2(&i_this->field_0x5cc, 1.0f, 1.0f, 0.1f);
    cLib_addCalcAngleS2(&i_this->enemy.current.angle.y, i_this->mAngleToPlayer, 2, 512);
    fVar1 = 0.0f;

    if (i_this->field_0xfcc >= 2 && strcmp(dComIfGp_getStartStageName(), "D_MN09") == 0) {
        fVar1 = 400.0f;
    }

    if (i_this->mDistToPlayer < fVar1 + 400.0f) {
        i_this->mAction = 1;
        i_this->mMode = 0;
    }

    i_this->field_0x6c8 = 1;
}

/* 80765A98-80765B70 000AB8 00D8+00 2/2 0/0 0/0 .text            getPolyColor__FR13cBgS_PolyInfoiP8_GXColorP8_GXColorPUcPf */
static int getPolyColor(cBgS_PolyInfo& i_polyInfo, int param_2, _GXColor* p_effPrim,
                             _GXColor* p_effEnv, u8* p_alpha, f32* p_ratio) {
    if (dComIfG_Bgsp().ChkPolySafe(i_polyInfo) == 0) {
        return 0;
    }

    if (param_2 == 0) {
        dKy_pol_eff_prim_get(&i_polyInfo, p_effPrim);
        dKy_pol_eff_env_get(&i_polyInfo, p_effEnv);
        *p_alpha = dKy_pol_eff_alpha_get(&i_polyInfo);
        *p_ratio = dKy_pol_eff_ratio_get(&i_polyInfo);
    } else {
        dKy_pol_eff2_prim_get(&i_polyInfo, p_effPrim);
        dKy_pol_eff2_env_get(&i_polyInfo, p_effEnv);
        *p_alpha = dKy_pol_eff2_alpha_get(&i_polyInfo);
        *p_ratio = dKy_pol_eff2_ratio_get(&i_polyInfo);
    }

    return 1;
}

/* 80765B70-80765E70 000B90 0300+00 1/1 0/0 0/0 .text            e_rdb_attack__FP11e_rdb_class */
static void e_rdb_attack(e_rdb_class* i_this) {
    // NONMATCHING
    static u16 ap_name_4291[3] = {
        0x8A5C,
        0x8A5D,
        0x8A5E,
    };

    int frame = i_this->mpModelMorf->getFrame();

    switch (i_this->mMode) {
        case 0:
            if (cM_rndF(1.0f) < 0.5f) {
                anm_init(i_this, 7, 5.0f, 0, 1.0f);
                i_this->mMode = 1;
            } else {
                anm_init(i_this, 8, 5.0f, 0, 1.0f);
                i_this->mMode = 2;
            }
            break;

        case 1:
            if (frame > 63 && frame < 73) {
                i_this->field_0x6c4 = 1;
            }

            if (frame == 68) {
                u8 i_alpha;
                f32 i_ratio;
                _GXColor i_effPrim, i_effEnv;
                if (getPolyColor(i_this->mAcch.m_gnd, 0, &i_effPrim, &i_effEnv, &i_alpha, &i_ratio) != 0) {
                    cXyz i_scale(1.55f, 1.55f, 1.55);

                    for (int i = 0; i <= 2; i++) {
                        if (i == 0) {
                            dComIfGp_particle_setColor(ap_name_4291[i], &i_this->enemy.current.pos, &i_this->enemy.tevStr, 
                                                    &i_effPrim, &i_effEnv, i_ratio, i_alpha, &i_this->enemy.shape_angle,
                                                    &i_scale, NULL, -1, NULL);
                        } else {
                            dComIfGp_particle_set(ap_name_4291[i], &i_this->enemy.current.pos, &i_this->enemy.shape_angle, &i_scale);
                        }
                    }
                }
                
                dComIfGp_getVibration().StartShock(6, 31, cXyz(0.0f, 1.0f, 0.0f));
                i_this->mSound.startCreatureExtraSound(Z2SE_EN_RDB_ATTACK01_HIT, 0, -1);
            }

            if (i_this->mpModelMorf->isStop()) {
                i_this->mAction = 1;
                i_this->mMode = 0;
            }
            break;

        case 2:
            if (frame > 61 && frame < 72) {
                i_this->field_0x6c4 = 1;
            }
            
            if (i_this->mpModelMorf->isStop()) {
                i_this->mAction = 1;
                i_this->mMode = 0;
            }
    }

    cLib_addCalc0(&i_this->enemy.speedF, 1.0f, 3.0f);
    i_this->field_0x6c8 = 1;
}

/* 80765E70-80766188 000E90 0318+00 1/1 0/0 0/0 .text            e_rdb_spin_attack__FP11e_rdb_class */
static void e_rdb_spin_attack(e_rdb_class* i_this) {
    // NONMATCHING
    static u16 ap_name_4373[2] = {
        0x8A5F,
        0x8A60,
    };

    mDoExt_McaMorfSO* p_modelMorf = i_this->mpModelMorf;
    int iVar1 = 0;
    
    switch (i_this->mMode) {
        case 0:
            anm_init(i_this, 11, 5.0f, 0, 1.0f);
            i_this->mSound.startCreatureVoice(Z2SE_EN_RDB_V_ATTACK, -1);
            i_this->mMode = 1;
            break;

        case 1:
            if (!p_modelMorf->isStop()) break;

            anm_init(i_this,10, 0.0f, 2, 1.0f);
            i_this->mMode = 2;
            i_this->field_0x6b8[0] = 102;
            // fallthrough
        case 2:
            i_this->field_0x6c4 = 2;
            i_this->mSound.startCreatureExtraSoundLevel(Z2SE_EN_RDB_ATTACK03, 0, -1);
            i_this->enemy.current.angle.y += 7000;
            i_this->enemy.shape_angle.y = i_this->enemy.current.angle.y;
            i_this->field_0x6e4 = 5.0f;
            i_this->field_0x6e8 = i_this->mAngleToPlayer + (u16)-0x8000;
            iVar1 = 1;
            if (i_this->field_0x6b8[0] == 0) {
                anm_init(i_this, 9, 0.0f, 0, 1.0f);
                i_this->mMode = 3;
            }
            break;

        case 3:
            if (!p_modelMorf->isStop()) break;

            i_this->mAction = 1;
            i_this->mMode = 0;
            break;   
    }

    cLib_addCalc0(&i_this->enemy.speedF, 1.0f, 3.0f);
    u8 i_alpha;
    f32 i_ratio;
    _GXColor i_effPrim, i_effEnv;
    if (iVar1 != 0 && getPolyColor(i_this->mAcch.m_gnd, 0, &i_effPrim, &i_effEnv, &i_alpha, &i_ratio) != 0) {
        cXyz i_scale(1.55f, 1.55f, 1.55f);
        for (int i = 0; i <= 1; i++) {
            if (i == 0) {
                i_this->field_0xfd0[i] = dComIfGp_particle_setColor(i_this->field_0xfd0[i], ap_name_4373[i], &i_this->enemy.current.pos, &i_this->enemy.tevStr, 
                                                                    &i_effPrim, &i_effEnv, i_ratio, i_alpha, &i_this->enemy.shape_angle,
                                                                    &i_scale, NULL, -1, NULL);
            } else {
                i_this->field_0xfd0[i] = dComIfGp_particle_set(i_this->field_0xfd0[i], ap_name_4373[i], 
                                                               &i_this->enemy.current.pos, &i_this->enemy.shape_angle, &i_scale);
            }
        }
    }
}

/* 80766188-80766294 0011A8 010C+00 1/1 0/0 0/0 .text            e_rdb_defence__FP11e_rdb_class */
static int e_rdb_defence(e_rdb_class* i_this) {
    i_this->field_0x6c6 = 1;
    i_this->field_0x6c0 = 3;
    int frame = i_this->mpModelMorf->getFrame();
    switch (i_this->mMode) {
        case 0:
            if (i_this->mAnm != 25) {
                anm_init(i_this, 25, 3.0f, 0, 1.0f);
            } else {
                if (frame > 15) {
                    i_this->mpModelMorf->setFrame(0.0f);
                }
            }
            
            i_this->mMode = 1;
            break;

        case 1:
            if (i_this->mpModelMorf->isStop()) {
                i_this->mAction = 1;
                i_this->mMode = 0;
            }
            break;

    }

    cLib_addCalc0(&i_this->enemy.speedF, 1.0f, 3.0f);
    i_this->field_0x6c8 = 1;

    return 1;
}

/* 80766294-807665B4 0012B4 0320+00 1/1 0/0 0/0 .text            e_rdb_damage__FP11e_rdb_class */
static void e_rdb_damage(e_rdb_class* i_this) {
    int frame = i_this->mpModelMorf->getFrame();
    switch (i_this->mMode) {
        case 0:
            int iVar1 = cM_rndF(4.99f);
            if (iVar1 == 0) {
                anm_init(i_this, 14, 2.0f, 0, 1.0f);
            } else if (iVar1 == 1) {
                anm_init(i_this, 15, 2.0f, 0, 1.0f);
            } else if (iVar1 == 2) {
                anm_init(i_this, 16, 2.0f, 0, 1.0f);
            } else if (iVar1 == 3) {
                anm_init(i_this, 12, 2.0f, 0, 1.0f);
            } else if (iVar1 == 4) {
                anm_init(i_this, 13, 2.0f, 0, 1.0f);
            }

            i_this->mMode = 1;
            break;

        case 1:
            if (i_this->field_0x6b8[4] != 0) {
                i_this->enemy.onHeadLockFlg();
            }
            
            if (i_this->mpModelMorf->isStop()) {
                i_this->mAction = 1;
                i_this->mMode = 0;
                i_this->field_0xfcd = 0;
            }
            break;

        case 10:
            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 19, 5.0f, 2, 1.0f);
                i_this->field_0x6b8[0] = 60;
                i_this->mMode = 11;
            }
            break;

        case 11:
            if (i_this->field_0x6b8[0] == 0) {
                i_this->field_0x6c0 = 50;
                if (i_this->field_0xfcc >= 2 && strcmp(dComIfGp_getStartStageName(), "D_MN09") == 0) {
                    i_this->mAction = 4;
                    i_this->mMode = 0;
                } else {
                    anm_init(i_this, 18, 5.0f, 0, 1.0f);
                    i_this->mMode = 12;
                }
            }
            break;

        case 12:
            if (frame >= 25 && frame <= 35) {
                cLib_addCalcAngleS2(&i_this->enemy.current.angle.y, i_this->mAngleToPlayer, 2, 0x1000);
            }

            if (frame >= 35 && frame <= 42) {
                i_this->field_0x6c4 = 1;
            }
            
            if (i_this->mpModelMorf->isStop()) {
                i_this->mAction = 1;
                i_this->mMode = 0;
                i_this->field_0x6c0 = 10;
            }
    }

    cLib_addCalc0(&i_this->enemy.speedF, 1.0f, 3.0f);
}

/* 807665B4-80766A1C 0015D4 0468+00 2/1 0/0 0/0 .text            e_rdb_end__FP11e_rdb_class */
static void e_rdb_end(e_rdb_class* i_this) {
    // NONMATCHING
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    e_wb_class* actor = (e_wb_class*)fopAcM_SearchByName(PROC_E_WB);
    int frame = i_this->mpModelMorf->getFrame();
    cXyz sp40;
    f32 fVar1 = 0.0f;

    switch(i_this->mMode) {
        case 0:
            anm_init(i_this, 20, 2.0f, 0, 1.0f);
            i_this->mMode = 1;
            if (actor != NULL) {
                actor->field_0x169e = 60;
            }
            break;

        case 1:
            if (frame == 3) {
                PSMTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(15), *calc_mtx);
                mtx_to_posAngle(*calc_mtx, &i_this->field_0x684, &i_this->field_0x69c);
                i_this->field_0x680 = 2;
                cMtx_YrotS(*calc_mtx, i_this->enemy.shape_angle.y);
                sp40.x = 10.0f;
                sp40.y = 25.0f;
                sp40.z = -10.0f;
                MtxPosition(&sp40, &i_this->field_0x690);
                i_this->field_0x6a4 = 200;
                i_this->field_0x6a2 = 700;
            }

            if (frame == 141) {
                fopAcM_effSmokeSet1(&i_this->field_0xfd0[0], &i_this->field_0xfd0[1], &i_this->enemy.eyePos, &i_this->enemy.shape_angle, 2.5f, &i_this->enemy.tevStr, 1);
                dComIfGp_getVibration().StartShock(2, 31, cXyz(0.0f, 1.0f, 0.0f));
                i_this->mSound.startCreatureSound(Z2SE_CM_BODYFALL_L, 0, -1);
            }

            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 22, 2.0f, 2, 1.0f);
                i_this->mMode = 2;
            }
            break;

        case 3:
            anm_init(i_this, 21, 5.0f, 0, 1.0f);
            i_this->mMode = 4;
            break;

        case 4:
            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 23, 3.0f, 2, 1.0f);
                i_this->mMode = 5;
            }
            break;

        case 5:
            fVar1 = 5.0f;
            break;

        case 10:
            if ((((actor->mActionID == 102 && actor->speedF > 40.0f) && player->current.pos.x > 1470.0f && player->current.pos.x < 2130.0f)) && 
                  ((player->current.pos.z < 200.0f) && (player->shape_angle.y > 0x7000 || player->shape_angle.y < -0x7000))) {
                actor->field_0x169e = 80;
                i_this->mMode = 11;
            }
            // fallthrough
        case 11:
            i_this->field_0x6c0 = 10;
            i_this->enemy.current.pos.y = i_this->enemy.home.pos.y + 5000.0f;
            i_this->enemy.speed.y = 0.0f;
            i_this->field_0xfcf = 2;
            fopAcM_OffStatus(&i_this->enemy, 0x100);
            break;

        case 20:
            anm_init(i_this, 26, 2.0f, 0, 1.0f);
            i_this->mSound.startCreatureVoice(Z2SE_EN_RDB_V_LV9_END01, -1);
            i_this->mMode = 21;
            i_this->mDemoMode = 10;
            break;

        case 21:
            if (frame == 12) {
                i_this->field_0x680 = 0;
            }

            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 27, 3.0f, 0, 1.0f);
                i_this->mSound.startCreatureVoice(Z2SE_EN_RDB_V_LV9_END02, -1);
                i_this->mMode = 22;
            }
            break;

        case 22:
            if (frame == 50) {
                i_this->field_0x1104 = 1;
            }
    }

    cLib_addCalc2(&i_this->enemy.speedF, fVar1, 1.0f, 3.0f);

}

/* 80766A1C-80766DB4 001A3C 0398+00 2/1 0/0 0/0 .text            e_rdb_start__FP11e_rdb_class */
static void e_rdb_start(e_rdb_class* i_this) {
    // NONMATCHING
    int frame = i_this->mpModelMorf->getFrame();
    f32 fVar1 = 0.0f;
    i_this->field_0x6c0 = 3;

    switch(i_this->mMode) {
        case 0:
            anm_init(i_this, 69, 10.0f, 2, 1.0f);
            i_this->mMode = 1;
            break;
            
        case 2:
            i_this->field_0xfcf = 0;
            if (i_this->field_0x6b8[0] == 0) {
                anm_init(i_this, 70, 10.0f, 2, 1.0f);
                i_this->mMode = 3;
            }
            break;

        case 3:
            fVar1 = 3.0f;
            break;
            
        case 4:
            anm_init(i_this, 31, 10.0f, 0, 1.0f);
            i_this->mMode = 5;
            i_this->field_0x6d8 = 3;
            break;

        case 5:
            if ((frame >= 128 && frame <= 142) || (frame >= 166 && frame <= 175)) {
                fVar1 = 10.0f;
            }

            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 69, 10.0f,2, 1.0f);
                i_this->mMode = 6;
            }
            break;

        case 7:
            i_this->mAction = 2;
            i_this->mMode = 0;
            break;

        case 10:
            i_this->mMode = 11;
            break;

        case 11:
            i_this->enemy.current.pos.y = i_this->enemy.home.pos.y + 20000.0f;
            i_this->enemy.speed.y = 0.0f;

            if (fopAcM_searchPlayerDistanceXZ(&i_this->enemy) < 500.0f) {
                i_this->mMode = 12;
                anm_init(i_this, 29, fVar1, 0, 1.0f);
                i_this->mSound.startCreatureSound(Z2SE_EN_RDB_LV9_OP, 0, -1);
                i_this->mDemoMode = 1;
                i_this->enemy.current.pos.y = i_this->enemy.home.pos.y + 2000.0f;
            }
            break;

        case 12:
            if (i_this->mAcch.ChkGroundHit()) {
                anm_init(i_this, 30, 0.0f, 0, 1.0f);
                i_this->mSound.startCreatureVoice(Z2SE_EN_RDB_V_LV9_OP, -1);
                i_this->mMode = 13;
                dComIfGp_getVibration().StartShock(8, 79, cXyz(0.0f, 1.0f, 0.0f));

                mDoAud_seStart(Z2SE_OBJ_FM_DIRTFALL, 0, 0, 0);
                i_this->mSound.startCreatureSound(Z2SE_EN_FM_DOWN, 0, -1);
                fopAcM_effSmokeSet1(&i_this->field_0xfd0[0], &i_this->field_0xfd0[1], &i_this->enemy.current.pos, &i_this->enemy.shape_angle, 3.5f, &i_this->enemy.tevStr, 1);
            }
            break;

        case 13:
            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 69, 5.0f, 2, 1.0f);
            }
    }

    i_this->enemy.speedF = fVar1;
}

/* 80766DB4-80767294 001DD4 04E0+00 1/1 0/0 0/0 .text            damage_check__FP11e_rdb_class */
static void damage_check(e_rdb_class* i_this) {
    // NONMATCHING
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->enemy;
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);
    if (i_this->field_0x6c2 == 0 && i_this->field_0xe64.ChkTgHit() != 0 && i_this->field_0xe64.ChkTgShield() != 0) {
        def_se_set(&i_this->mSound, i_this->field_0xe64.GetTgHitObj(), 40, NULL);
        i_this->field_0x6c2 = 8;
        i_this->field_0x6c0 = 8;
        i_this->field_0x6e4 = 12.0f;
        i_this->field_0x6e8 = a_this->shape_angle.y;
    }

    i_this->field_0x924.Move();

    u32 i_soundID = 0;
    s8 bVar2 = 0;
    if (i_this->field_0x6c0 == 0) {
        for (int i = 0; i <= 2; i = i + 1) {
            if (i_this->field_0x944[i].ChkTgHit() != 0) {
                i_this->mAtInfo.mpCollider = i_this->field_0x944[i].GetTgHitObj();
                cc_at_check(&i_this->enemy, &i_this->mAtInfo);
                OS_REPORT("E_rdb HP %d\n", i_this->health);
                if (i_this->mAtInfo.mAttackPower != 0) {
                    cXyz sp2c(1.0f, 1.0f, 1.0f);
                    u16 uVar1;
                    if (i_this->mAtInfo.mHitStatus != 0) {
                        uVar1 = 3;
                    } else {
                        uVar1 = 1;
                    }

                    cXyz sp38, sp44;
                    cMtx_YrotS(*calc_mtx, i_this->mAngleToPlayer);
                    if (i_this->mAnm == 17 || i_this->mAnm == 19) {
                        sp44.x = 0.0f;
                        sp44.y = 120.0f;
                        sp44.z = 190.0f;
                        MtxPosition(&sp44, &sp38);
                        sp38 += a_this->current.pos;
                    } else if (daPy_getPlayerActorClass()->getCutType() == daPy_py_c::CUT_TYPE_HEAD_JUMP) {
                        sp38 = a_this->eyePos;
                        sp38.y += 100.0f;
                    } else {
                        sp44.x = 0.0f;
                        sp44.y = 150.0f;
                        sp44.z = 100.0f;
                        MtxPosition(&sp44, &sp38);
                        sp38 += a_this->current.pos;
                    }

                    dComIfGp_setHitMark(uVar1, a_this, &sp38, NULL, &sp2c, 0);
                    if (a_this->health <= 0) {
                        bVar2 = 1;
                        break;
                    }
                }

                i_this->field_0x6ec |= i_this->mAtInfo.mHitBit;
                s8 bVar1 = 0;
                if (i_this->field_0x6c7 != 0) {
                    i_this->field_0x6c7 = 0;
                }

                if (player->getCutType() == daPy_py_c::CUT_TYPE_JUMP && player->checkCutJumpCancelTurn()) {
                    i_this->field_0x6c0 = 3;
                    i_this->field_0x6c7 = 1;
                } else {
                    i_this->field_0x6c0 = 6;
                }

                if ((i_this->mAction != 6 || i_this->mMode < 10) && (daPy_getPlayerActorClass()->getCutCount() >= 4 || bVar1)) {
                    int iVar1;
                    if (strcmp(dComIfGp_getStartStageName(), "D_MN09") == 0) {
                        iVar1 = 6;
                    } else {
                        iVar1 = 4;
                    }

                    if (i_this->field_0xfcc >= iVar1) {
                        bVar2 = 1;
                    } else {
                        anm_init(i_this, 17, 5.0f, 0, 1.0f);
                        i_this->mAction = 6;
                        i_this->mMode = 10;
                        i_this->field_0x6c0 = 20;
                        i_this->field_0xfcc++;
                        i_soundID = Z2SE_EN_RDB_V_DAMAGE;
                    }
                } else if (i_this->mAction == 6 && i_this->mMode >= 10) {
                    i_this->field_0x6ce = 15;
                    if ((s16)(a_this->shape_angle.y - i_this->mAngleToPlayer) > 0) {
                        i_this->field_0x6d4 = 1.0f;
                    } else {
                        i_this->field_0x6d4 = -1.0f;
                    }
                    i_soundID = Z2SE_EN_RDB_V_DAMAGE;
                } else {
                    i_this->mAction = 6;
                    i_this->mMode = 0;
                    if (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_SHIELD_ATTACK) != 0) {
                        i_this->field_0x6b8[4] = 30;
                        i_this->field_0x6c0 = 30;
                        i_soundID = Z2SE_EN_RDB_V_AWAKE;
                    } else {
                        i_this->field_0x6b8[4] = 0;
                        i_soundID = Z2SE_EN_RDB_V_DAMAGE;
                    }

                    i_this->field_0xfcd++;
                    if (i_this->field_0xfcd >= 4) {
                        i_this->field_0x6c0 = 60;
                    }
                }

                if (a_this->health <= 1) {
                    i_this->field_0x944[i].SetTgHitMark((CcG_Tg_HitMark )3);
                }

                break;
            }
        }
    }

    if (bVar2 != 0) {
        i_this->mAction = 7;
        i_this->field_0xfcd = 0;
        if (strcmp(dComIfGp_getStartStageName(), "D_MN09") == 0) {
            i_this->mMode = 20;
        } else {
            i_this->mMode = 0;
        }

        i_this->field_0x6c0 = 1000;
        i_soundID = Z2SE_EN_RDB_V_ED_DEMO_DOWN;

        Z2GetAudioMgr()->subBgmStop();
    }

    if (i_soundID != 0) {
        i_this->mSound.startCreatureVoice(i_soundID, -1);
    }
}

/* 80767294-80767428 0022B4 0194+00 1/1 0/0 0/0 .text            shot_s_sub__FPvPv */
static void* shot_s_sub(void* i_actor, void* i_data) {
    if ((fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_ARROW) && (fopAcM_GetParam(i_actor) == 1 || fopAcM_GetParam(i_actor) == 2)) {
        cXyz sp28 = static_cast<fopAc_ac_c*>(i_data)->current.pos - static_cast<fopAc_ac_c*>(i_actor)->current.pos;
        if (sp28.abs() < 1000.0f) {
            return i_actor;
        }
    }

    return NULL;
}

UNK_REL_BSS;

/* 8076BA04-8076BA08 -00001 0004+00 2/2 0/0 0/0 .bss             None */
/* 8076BA04 0001+00 data_8076BA04 @1009 */
/* 8076BA05 0003+00 data_8076BA05 None */
// static u8 struct_8076BA04[4];

/* 8076BA14-8076BA20 000054 000C+00 3/4 0/0 0/0 .bss             l_HIO */
static daE_RDB_HIO_c l_HIO;

/* 80767428-80767CD0 002448 08A8+00 2/1 0/0 0/0 .text            action__FP11e_rdb_class */
static void action(e_rdb_class* i_this) {
    // NONMATCHING
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->enemy;
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);
    cXyz sp44, sp50;
    i_this->field_0x6c8 = 0;
    i_this->mDistToPlayer = fopAcM_searchPlayerDistance(a_this);
    i_this->mAngleToPlayer = fopAcM_searchPlayerAngleY(a_this);

    damage_check(i_this);
    s8 sVar1 = 0;
    s8 sVar2 = 1;
    char sVar3 = 1;

    switch (i_this->mAction) {
        case e_rdb_class::ACT_START:
            e_rdb_start(i_this);
            sVar2 = 0;
            sVar3 = 0;
            break;

        case e_rdb_class::ACT_WAIT:
            e_rdb_wait(i_this);
            sVar1 = 1;
            break;

        case e_rdb_class::ACT_FIGHT:
            e_rdb_fight(i_this);
            sVar1 = 1;
            break;

        case e_rdb_class::ACT_ATTACK:
            e_rdb_attack(i_this);
            sVar1 = 1;
            sVar3 = 0;
            break;

        case e_rdb_class::ACT_SPIN_ATTACK:
            e_rdb_spin_attack(i_this);
            sVar1 = 1;
            sVar3 = 0;
            break;

        case e_rdb_class::ACT_DEFENCE:
            sVar3 = e_rdb_defence(i_this);
            sVar1 = 1;
            break;

        case e_rdb_class::ACT_DAMAGE:
            e_rdb_damage(i_this);
            sVar3 = 0;
            break;

        case e_rdb_class::ACT_END:
            e_rdb_end(i_this);
            sVar3 = 0;
    }

    if (sVar1) {
        i_this->mSound.setLinkSearch(true);
    } else {
        i_this->mSound.setLinkSearch(false);
    }

    if (sVar2) {
        fopAcM_OnStatus(a_this, 0);
        a_this->attention_info.flags = 4;
    } else {
        fopAcM_OffStatus(a_this, 0);
        a_this->attention_info.flags = 0;
    }

    if (sVar3) {
        int iVar1 = 0;
        if (daPy_getPlayerActorClass()->checkHookshotShootReturnMode() && !daPy_getPlayerActorClass()->checkHookshotReturnMode()) {
            iVar1 = 1;
        } else if (strcmp(dComIfGp_getStartStageName(), "D_MN09") == 0 && fpcM_Search(shot_s_sub,i_this) != NULL) {
            iVar1 = 1;
        }

        if (strcmp(dComIfGp_getStartStageName(), "D_MN09") == 0) {
            cXyz* ironBallCenterPos = player->getIronBallCenterPos();
            if ((player->current.pos - *ironBallCenterPos).abs() > 200.0f && (a_this->current.pos - *ironBallCenterPos).abs() < 500.0f && 
                 (dComIfGp_checkPlayerStatus0(0, 0x400) == 0) && (!daPy_getPlayerActorClass()->checkIronBallReturn()) && 
                 (!daPy_getPlayerActorClass()->checkIronBallGroundStop())) {
                    iVar1 = 2;
            }
        }

        int bVar1 = 0;
        if ((strcmp(dComIfGp_getStartStageName(), "D_MN09") == 0 && player->getCutType() == daPy_py_c::CUT_TYPE_GUARD_ATTACK) ||
            (daPy_getPlayerActorClass()->getCutAtFlg() != 0 && player->getCutType() != daPy_py_c::CUT_TYPE_HEAD_JUMP)) {
                bVar1 = 1;
        }

        if ((iVar1 != 0 && player_way_check(i_this) != 0) || ((i_this->mDistToPlayer < 500.0f && player_way_check(i_this) != 0 && bVar1) && 
             (player->checkNowWolf() || (strcmp(dComIfGp_getStartStageName(), "D_MN09") == 0) || (i_this->field_0x6ec & cc_pl_cut_bit_get()) != 0))) {
            i_this->mAction = e_rdb_class::ACT_DEFENCE;
            i_this->mMode = 0;
            i_this->field_0x6c0 = 3;
        }
    }

    cLib_addCalcAngleS2(&a_this->shape_angle.y, a_this->current.angle.y, 2, 0x1000);
    cLib_addCalcAngleS2(&a_this->shape_angle.x, a_this->current.angle.x, 2, 0x1000);
    cLib_addCalcAngleS2(&a_this->shape_angle.z, a_this->current.angle.z, 2, 0x1000);
    a_this->gravity = -5.0f;

    cMtx_YrotS(*calc_mtx, a_this->current.angle.y);
    sp44.x = 0.0f;
    sp44.y = 0.0f;
    sp44.z = a_this->speedF * (l_HIO.field_0x8 / 1.44f);
    MtxPosition(&sp44, &sp50);
    a_this->speed.x = sp50.x;
    a_this->speed.z = sp50.z;
    a_this->current.pos += a_this->speed;
    a_this->speed.y += a_this->gravity;
    if (a_this->speed.y < -80.0f) {
        a_this->speed.y = -80.0f;
    }

    if (i_this->field_0x6e4 > 0.1f) {
        sp44.x = 0.0f;
        sp44.y = 0.0f;
        sp44.z = -i_this->field_0x6e4;
        cMtx_YrotS(*calc_mtx, i_this->field_0x6e8);
        MtxPosition(&sp44, &sp50);
        a_this->current.pos += sp50;
        cLib_addCalc0(&i_this->field_0x6e4, 1.0f, 3.0f);
    }

    s16 sVar5 = 0;
    s16 sVar6 = 0;
    cXyz sp5c = player->eyePos;
    if (i_this->field_0x6c8 != 0) {
        sp44 = sp5c - a_this->current.pos;
        sp44.y += -150.0f;
        sVar5 = cM_atan2s(sp44.x, sp44.z) - a_this->shape_angle.y;
        sVar6 = a_this->shape_angle.x + cM_atan2s(sp44.y, JMAFastSqrt(sp44.x * sp44.x + sp44.z * sp44.z));

        if (sVar5 > 0x3E80) {
            sVar5 = 16000;
        } else if (sVar5 < -16000) {
            sVar5 = -16000;
        }

        if (sVar6 > 0x3E80) {
            sVar6 = 16000;
        } else if (sVar6 < -16000) {
            sVar6 = -16000;
        }
    }

    cLib_addCalcAngleS2(&i_this->field_0x6ca, sVar5, 2, 0x1000);
    cLib_addCalcAngleS2(&i_this->field_0x6cc, sVar6, 2, 0x1000);
    if (i_this->field_0x6ce != 0) {
        i_this->field_0x6ce--;
        i_this->field_0x6d0 = i_this->field_0x6ce * cM_ssin(i_this->field_0x6ce * 12000) * 50.0f;
        i_this->field_0x6d2 = i_this->field_0x6d4 * (i_this->field_0x6ce * cM_ssin(i_this->field_0x6ce * 5000)) * 600.0f;
    }

    cXyz sp68(1.5f, 1.5f, 1.5f);
    setMidnaBindEffect(a_this, &i_this->mSound, &a_this->eyePos, &sp68);
}

/* 80767CD0-80767DB4 002CF0 00E4+00 1/1 0/0 0/0 .text            cam_3d_morf__FP11e_rdb_classf */
static void cam_3d_morf(e_rdb_class* i_this, f32 i_scale) {
    cLib_addCalc2(&i_this->mDemoCamCenter.x, i_this->field_0x10d0.x, i_scale, i_this->field_0x10e8.x * i_this->field_0x10f8);
    cLib_addCalc2(&i_this->mDemoCamCenter.y, i_this->field_0x10d0.y, i_scale, i_this->field_0x10e8.y * i_this->field_0x10f8);
    cLib_addCalc2(&i_this->mDemoCamCenter.z, i_this->field_0x10d0.z, i_scale, i_this->field_0x10e8.z * i_this->field_0x10f8);
    cLib_addCalc2(&i_this->mDemoCamEye.x, i_this->field_0x10c4.x, i_scale, i_this->field_0x10dc.x * i_this->field_0x10f8);
    cLib_addCalc2(&i_this->mDemoCamEye.y, i_this->field_0x10c4.y, i_scale, i_this->field_0x10dc.y * i_this->field_0x10f8);
    cLib_addCalc2(&i_this->mDemoCamEye.z, i_this->field_0x10c4.z, i_scale, i_this->field_0x10dc.z * i_this->field_0x10f8);
}

/* 80767DB4-80767E54 002DD4 00A0+00 1/1 0/0 0/0 .text            cam_spd_set__FP11e_rdb_class */
static void cam_spd_set(e_rdb_class* i_this) {
    i_this->field_0x10dc.x = fabsf(i_this->field_0x10c4.x - i_this->mDemoCamEye.x);
    i_this->field_0x10dc.y = fabsf(i_this->field_0x10c4.y - i_this->mDemoCamEye.y);
    i_this->field_0x10dc.z = fabsf(i_this->field_0x10c4.z - i_this->mDemoCamEye.z);
    i_this->field_0x10e8.x = fabsf(i_this->field_0x10d0.x - i_this->mDemoCamCenter.x);
    i_this->field_0x10e8.y = fabsf(i_this->field_0x10d0.y - i_this->mDemoCamCenter.y);
    i_this->field_0x10e8.z = fabsf(i_this->field_0x10d0.z - i_this->mDemoCamCenter.z);
    i_this->field_0x10f8 = 0.0f;
}

/* 80767E54-80768B90 002E74 0D3C+00 2/1 0/0 0/0 .text            demo_camera__FP11e_rdb_class */
static void demo_camera(e_rdb_class* i_this) {
    // NONMATCHING
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->enemy;
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    cXyz sp28, sp34, sp40, sp4c;
    s8 sVar1 = 0;

    switch (i_this->mDemoMode) {
        case 1:
            if (!a_this->eventInfo.checkCommandDemoAccrpt()) {
                fopAcM_orderPotentialEvent(a_this, 2, 0xffff, 0);
                a_this->eventInfo.onCondition(dEvtCnd_CANDEMO_e);
                return;
            }
            
            camera->mCamera.Stop();
            i_this->mDemoMode = 2;
            i_this->field_0x10aa = 0;
            i_this->mDemoCamFovy = 55.0f;
            camera->mCamera.SetTrimSize(3);
            player->changeOriginalDemo();
            dComIfGp_getEvent().startCheckSkipEdge(i_this);
            Z2GetAudioMgr()->setDemoName("force_start");
            // fallthrough
        case 2:
            cMtx_YrotS(*calc_mtx, a_this->shape_angle.y);
            sp28.x = 0.0f;
            sp28.y = 150.0f;
            sp28.z = 330.0f;
            MtxPosition(&sp28, &sp40);
            sp40.x += a_this->current.pos.x;
            sp40.z += a_this->current.pos.z;
            sp40.y = 140.0f;
            sp4c.x = a_this->current.pos.x;
            sp4c.z = a_this->current.pos.z;
            sp4c.y = a_this->eyePos.y - 20.0f;
            if (i_this->field_0x10aa != 0) {
                i_this->mDemoCamCenter = sp4c;
                i_this->mDemoCamEye = sp40;
            } else {
                i_this->mDemoCamEye = sp40;
                cLib_addCalc2(&i_this->mDemoCamCenter.x, sp4c.x, 0.2f, 100.0f);
                cLib_addCalc2(&i_this->mDemoCamCenter.y, sp4c.y, 0.2f, 100.0f);
                cLib_addCalc2(&i_this->mDemoCamCenter.z, sp4c.z, 0.2f, 100.0f);
            }

            cMtx_YrotS(*calc_mtx, a_this->shape_angle.y);
            sp28.x = 0.0f;
            sp28.y = 50.0f;
            sp28.z = 600.0f;
            MtxPosition(&sp28, &sp34);
            sp34.x += a_this->current.pos.x;
            sp34.z += a_this->current.pos.z;
            sp34.y = 50.0f;
            player->setPlayerPosAndAngle(&sp34, i_this->mAngleToPlayer + (u16)-0x8000, 0);
            if (i_this->field_0x10aa >= 170) {
                if (i_this->field_0x10aa == 170) {
                    i_this->mMsgFlow.init(a_this, 0x389, 0, NULL);
                }

                if (i_this->mMsgFlow.doFlow(a_this, NULL, 0) != 0 && i_this->field_0x10aa >= 0x168) {
                    i_this->mDemoMode = 3;
                    i_this->field_0x10aa = 0;
                    i_this->field_0x10d0.set(-7627.0f, 153.0f, -5371.0f);
                    i_this->field_0x10c4.set(-7470.0f, 144.0f, -5071.0f);
                    cam_spd_set(i_this);
                }
            }
            break;

        case 3:
            if (i_this->field_0x10aa >= 20) {
                cam_3d_morf(i_this, 0.2f);
                cLib_addCalc2(&i_this->field_0x10f8, 0.03f, 1.0f, 0.003f);
                if (i_this->field_0x10aa == 60) {
                    player->changeDemoMode(23, 1, 2, 0);
                }

                if (i_this->field_0x10aa == 130) {
                    sVar1 = 1;
                    i_this->mAction = e_rdb_class::ACT_WAIT;
                    i_this->mMode = 10;
                    Z2GetAudioMgr()->subBgmStart(Z2BGM_FACE_OFF_BATTLE3);
                }
            }
            break;

        case 10:
            if (!a_this->eventInfo.checkCommandDemoAccrpt()) {
                fopAcM_orderPotentialEvent(a_this, 2, 0xffff, 0);
                a_this->eventInfo.onCondition(dEvtCnd_CANDEMO_e);
                return;
            }

            camera->mCamera.Stop();
            i_this->mDemoMode = 11;
            i_this->field_0x10aa = 0;
            i_this->mDemoCamFovy = 55.0f;
            camera->mCamera.SetTrimSize(3);

            player->changeOriginalDemo();
            a_this->current = a_this->home;
            a_this->shape_angle = a_this->current.angle;
            Z2GetAudioMgr()->setDemoName("force_start");
            // fallthrough
        case 11:
            cMtx_YrotS(*calc_mtx, a_this->shape_angle.y);
            sp28.x = 50.0f;
            sp28.y = 0.0f;
            sp28.z = 230.0f;
            MtxPosition(&sp28, &sp40);
            sp40.x += a_this->current.pos.x;
            sp40.z += a_this->current.pos.z;
            sp40.y = 220.0f;
            if (i_this->field_0x10aa >= 328) {
                PSMTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(21), *calc_mtx);
                sp28.x = 30.0f;
                sp28.y = 20.0f;
                sp28.z = 0.0f;
                MtxPosition(&sp28, &sp4c);
            } else {
                sp4c.x = a_this->current.pos.x;
                sp4c.z = a_this->current.pos.z;
                sp4c.y = a_this->eyePos.y;
                if (sp4c.y < 190.0f) {
                    sp4c.y = 190.0f;
                }
            }

            if (i_this->field_0x10aa == 0) {
                i_this->mDemoCamCenter = sp4c;
                i_this->mDemoCamEye = sp40;
            } else {
                i_this->mDemoCamEye = sp40;
                cLib_addCalc2(&i_this->mDemoCamCenter.x, sp4c.x, 0.2f, 10.0f);
                cLib_addCalc2(&i_this->mDemoCamCenter.y, sp4c.y, 0.2f, 10.0f);
                cLib_addCalc2(&i_this->mDemoCamCenter.z, sp4c.z, 0.2f, 10.0f);
            }

            cMtx_YrotS(*calc_mtx, a_this->shape_angle.y);
            sp28.x = 0.0f;
            sp28.y = 50.0f;
            sp28.z = 300.0f;
            MtxPosition(&sp28, &sp34);
            sp34.x += a_this->current.pos.x;
            sp34.z += a_this->current.pos.z;
            sp34.y = 50.0f;
            player->setPlayerPosAndAngle(&sp34, i_this->mAngleToPlayer + (u16)-0x8000, 0);

            if (i_this->field_0x10aa >= 360) {
                if (i_this->field_0x10aa == 360) {
                    i_this->mMsgFlow.init(a_this, 0x388, 0, NULL);
                }

                int iVar1 = 0;
                if (i_this->field_0x10aa >= 9000) {
                    i_this->mMsgFlow.remove();
                    iVar1 = 1;
                }

                if (i_this->mMsgFlow.doFlow(a_this, NULL, 0) != 0 && i_this->field_0x10aa >= 400) {
                    iVar1 = 1;
                }

                if (iVar1 != 0) {
                    daPy_getPlayerActorClass()->changeDemoMode(11, 32, 0, 0);
                    i_this->mDemoMode = 12;
                    i_this->field_0x10aa = 0;
                    i_this->field_0xfe5 = 1;
                    dComIfGs_onTbox(3);
                }
            }
            break;

        case 12:
            sp4c.x = player->current.pos.x;
            sp4c.y = player->current.pos.y + 145.0f;
            sp4c.z = player->current.pos.z;
            cLib_addCalc2(&i_this->mDemoCamCenter.x, sp4c.x, 0.2f, 10.0f);
            cLib_addCalc2(&i_this->mDemoCamCenter.y, sp4c.y, 0.2f, 10.0f);
            cLib_addCalc2(&i_this->mDemoCamCenter.z, sp4c.z, 0.2f, 10.0f);
            cLib_addCalc2(&i_this->mDemoCamEye.y, 170.0f, 0.2f, 10.0f);
            cLib_addCalc2(&i_this->mDemoCamFovy, 70.0f, 0.05f, 0.25f);
            if (i_this->field_0x10aa > 69 && !dMsgObject_isTalkNowCheck()) {
                i_this->mDemoMode = 13;
                i_this->field_0x10aa = 0;
                mDoGph_gInf_c::fadeOut(0.05f, g_blackColor);
                i_this->field_0xfe6 = 1;
                dComIfGs_offOneZoneSwitch(15, -1);
            }
            break;

        case 13:
            if (i_this->field_0x10aa == 40) {
                cXyz sp58(-7080.0f, 50.0f, -6634.0f);
                sp28.x = -10008.0f - sp58.x;
                sp28.z = -2729.0f - sp58.z;
                csXyz i_angle(0, cM_atan2s(sp28.x, sp28.z), 0);
                sp58 = a_this->current.pos;
                sp58.y += 2000.0f;
                fopAcM_create(PROC_E_RD, 12, &sp58, fopAcM_GetRoomNo(a_this), &i_angle, NULL, -1);
                sp34.set(-7530.0f, 50.0f, -5451.0f);
                player->setPlayerPosAndAngle(&sp34, 0xffffa0c5, 0);
                i_this->mDemoCamCenter.set(-7661.0f, 323.0f, -5684.0f);
                i_this->mDemoCamEye.set(-7382.0f, 185.0f, -5360.0f);
                i_this->mDemoCamFovy = 55.0f;
                daPy_getPlayerActorClass()->changeDemoMode(1, 1, 0, 0);
            }

            if (i_this->field_0x10aa >= 40) {
                e_rd_class* bulblin_p = (e_rd_class*)fopAcM_SearchByName(PROC_E_RD);
                if (bulblin_p != NULL) {
                    a_this->current.pos = bulblin_p->current.pos;
                    a_this->eyePos = bulblin_p->eyePos;
                }
            }

            if (i_this->field_0x10aa == 50) {
                mDoGph_gInf_c::fadeOut(-0.05f, g_blackColor);
            }

            if (i_this->field_0x10aa >= 220) {
                if (i_this->field_0x10aa == 220) {
                    i_this->mMsgFlow.init(a_this, 0x388, 0, NULL);
                }

                if (i_this->mMsgFlow.doFlow(a_this, NULL, 0) != 0 && i_this->field_0x10aa >= 300) {
                    i_this->mDemoMode = 14;
                    i_this->field_0x10aa = 0;
                }
            }
            break;

        case 14:
            if (i_this->field_0x10aa >= 65) {
                i_this->field_0x10d0.set(-7738.0f, 185.0f, -5086.0f);
                i_this->field_0x10c4.set(-7382.0f, 185.0f, -5360.0f);
                cam_spd_set(i_this);
                i_this->mDemoMode = 15;
                i_this->field_0x10aa = 0;
            }
            break;

        case 15:
            cam_3d_morf(i_this, 0.1f);
            cLib_addCalc2(&i_this->field_0x10f8, 0.05f, 1.0f, 0.005f);
            if (i_this->field_0x10aa >= 40) {
                cLib_addCalc2(&i_this->mDemoCamFovy, 25.0f, 0.05f, 0.5f);
            }

            if (i_this->field_0x10aa == 179) {
                player->setPlayerPosAndAngle(&player->current.pos, 0xffffd952, 0);
            }

            if (i_this->field_0x10aa == 180) {
                sVar1 = 1;
                fopAcM_delete(a_this);
                fopAcM_delete(fopAcM_SearchByName(PROC_E_RD));
                fopAcM_delete(fopAcM_SearchByName(PROC_E_WB));
                dComIfGs_onStageMiddleBoss();
                int i_no = fopAcM_GetParam(a_this) >> 24;
                if (i_no != 0xFF) {
                    dComIfGs_onSwitch(i_no, fopAcM_GetRoomNo(a_this));
                }
            }
    }

    if (i_this->mDemoMode > 0 && i_this->mDemoMode < 10) {
        if (dComIfGp_getEvent().checkSkipEdge()) {
            sVar1 = 1;
            i_this->mAction = e_rdb_class::ACT_WAIT;
            i_this->mMode = 10;
            Z2GetAudioMgr()->subBgmStart(Z2BGM_FACE_OFF_BATTLE3);
        }
    }

    if (sVar1) {
        Z2GetAudioMgr()->setDemoName("force_end");
        camera->mCamera.Reset(i_this->mDemoCamCenter, i_this->mDemoCamEye);
        camera->mCamera.Start();
        camera->mCamera.SetTrimSize(0);
        dComIfGp_event_reset();
        daPy_getPlayerActorClass()->cancelOriginalDemo();
        i_this->mDemoMode = 0;
    }

    if (i_this->mDemoMode > 0) {
        cXyz i_center = i_this->mDemoCamCenter;
        cXyz i_eye = i_this->mDemoCamEye;
        camera->mCamera.Set(i_center, i_eye, i_this->mDemoCamFovy, 0);
        i_this->field_0x10aa++;
        if (i_this->field_0x10aa > 10000) {
            i_this->field_0x10aa = 10000;
        }
    }
}

/* 80768B90-80769324 003BB0 0794+00 1/1 0/0 0/0 .text            anm_se_set__FP11e_rdb_class */
static void anm_se_set(e_rdb_class* i_this) {
    if (i_this->mAnm == 70) {
        if (i_this->mpModelMorf->checkFrame(29.0f) || i_this->mpModelMorf->checkFrame(59.0f)) {
            i_this->mSound.startCreatureSound(Z2SE_EN_RDB_FOOTNOTE, 0, -1);
        }
    } else if (i_this->mAnm == 64) {
        if (i_this->mpModelMorf->checkFrame(2.0f) || i_this->mpModelMorf->checkFrame(17.0f)) {
            i_this->mSound.startCreatureSound(Z2SE_EN_RDB_FOOTNOTE, 0, -1);
        }
    } else if (i_this->mAnm == 68) {
        if (i_this->mpModelMorf->checkFrame(15.0f) || i_this->mpModelMorf->checkFrame(35.0f)) {
            i_this->mSound.startCreatureSound(Z2SE_EN_RDB_FOOTNOTE, 0, -1);
        }
    } else if (i_this->mAnm == 7) {
        if (i_this->mpModelMorf->checkFrame(0.0f)) {
            i_this->mSound.startCreatureVoice(Z2SE_EN_RDB_V_ATTACK, -1);
        } else if (i_this->mpModelMorf->checkFrame(58.0f)) {
            i_this->mSound.startCreatureExtraSound(Z2SE_EN_RDB_ATTACK01, 0, -1);
        }
    } else if (i_this->mAnm == 8) {
        if (i_this->mpModelMorf->checkFrame(0.0f)) {
            i_this->mSound.startCreatureVoice(Z2SE_EN_RDB_V_ATTACK, -1);
        } else if (i_this->mpModelMorf->checkFrame(61.0f)) {
            i_this->mSound.startCreatureExtraSound(Z2SE_EN_RDB_ATTACK02, 0, -1);
        } else if (i_this->mpModelMorf->checkFrame(110.0f)) {
            i_this->mSound.startCreatureExtraSound(Z2SE_EN_RDB_ATTACK02B, 0, -1);
        }
    } else if (i_this->mAnm == 9) {
        if (i_this->mpModelMorf->checkFrame(4.0f) || i_this->mpModelMorf->checkFrame(50.5f)) {
            i_this->mSound.startCreatureSound(Z2SE_EN_RDB_FOOTNOTE, 0, -1);
        }
    } else if (i_this->mAnm == 17) {
        if (i_this->mpModelMorf->checkFrame(0.0f)) {
            i_this->mSound.startCreatureVoice(Z2SE_EN_RDB_V_DAMAGE, -1);
        } else if (i_this->mpModelMorf->checkFrame(31.0f)) {
            i_this->mSound.startCreatureSound(Z2SE_CM_BODYFALL_M, 0, -1);
        }
    } else if (i_this->mAnm == 18) {
        if (i_this->mpModelMorf->checkFrame(0.0f)) {
            i_this->mSound.startCreatureVoice(Z2SE_EN_RDB_V_ED_DEMO_DOWNUP, -1);
        } else if (i_this->mpModelMorf->checkFrame(35.0f)) {
            i_this->mSound.startCreatureExtraSound(Z2SE_EN_RDB_ATTACK02, 0, -1);
        } else if (i_this->mpModelMorf->checkFrame(52.0f)) {
            i_this->mSound.startCreatureExtraSound(Z2SE_EN_RDB_ATTACK02B, 0, -1);
        } else if (i_this->mpModelMorf->checkFrame(77.0f)) {
            i_this->mSound.startCreatureSound(Z2SE_CM_BODYFALL_M, 0, -1);
        }
    } else if (i_this->mAnm == 32) {
        if (i_this->mpModelMorf->checkFrame(11.0f)) {
            i_this->mSound.startCreatureVoice(Z2SE_EN_RDB_V_PUSH, -1);
        }
    } else if (i_this->mAnm == 31) {
        if (i_this->mpModelMorf->checkFrame(0.0f)) {
            i_this->mSound.startCreatureVoice(Z2SE_EN_RDB_V_OP_DEMO_SWING, -1);
            i_this->mSound.startCreatureExtraSound(Z2SE_EN_RDB_OP_DEMO_SWING, 0, -1);
        } else if ((i_this->mpModelMorf->checkFrame(83.0f) || i_this->mpModelMorf->checkFrame(124.0f)) ||
            ((i_this->mpModelMorf->checkFrame(142.0f) || i_this->mpModelMorf->checkFrame(176.0f)))) {
                i_this->mSound.startCreatureSound(Z2SE_EN_RDB_FOOTNOTE, 0, -1);
        }
    } else if (i_this->mAnm == 21) {
        if (i_this->mpModelMorf->checkFrame(11.0f)) {
            i_this->mSound.startCreatureVoice(Z2SE_EN_RDB_V_ED_DEMO_DOWNUP, -1);
        }
    } else if (i_this->mAnm == 23) {
        if (i_this->mpModelMorf->checkFrame(13.0f) || i_this->mpModelMorf->checkFrame(39.0f)) {
            i_this->mSound.startCreatureVoice(Z2SE_EN_RDB_V_ED_DEMO_WALK, -1);
        } else if (i_this->mpModelMorf->checkFrame(12.0f) || ((i_this->mpModelMorf->checkFrame(18.0f) || i_this->mpModelMorf->checkFrame(36.0f)) ||
            i_this->mpModelMorf->checkFrame(43.0f))) {
            i_this->mSound.startCreatureSound(Z2SE_EN_RDB_ED_FOOTNOTE, 0, -1);
        }
    }
}

/* ############################################################################################## */
/* 8076B62C-8076B630 0001D0 0004+00 0/1 0/0 0/0 .rodata          @6322 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6322 = -20000.0f;
COMPILER_STRIP_GATE(0x8076B62C, &lit_6322);
#pragma pop

/* 8076B630-8076B634 0001D4 0004+00 0/1 0/0 0/0 .rodata          @6323 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6323 = 12000.0f;
COMPILER_STRIP_GATE(0x8076B630, &lit_6323);
#pragma pop

/* 8076B634-8076B638 0001D8 0004+00 0/1 0/0 0/0 .rodata          @6324 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6324 = 30000.0f;
COMPILER_STRIP_GATE(0x8076B634, &lit_6324);
#pragma pop

/* 8076B638-8076B63C 0001DC 0004+00 0/1 0/0 0/0 .rodata          @6325 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6325 = 2834.0f;
COMPILER_STRIP_GATE(0x8076B638, &lit_6325);
#pragma pop

/* 8076B63C-8076B640 0001E0 0004+00 0/1 0/0 0/0 .rodata          @6326 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6326 = 993.0f;
COMPILER_STRIP_GATE(0x8076B63C, &lit_6326);
#pragma pop

/* 8076B640-8076B644 0001E4 0004+00 0/1 0/0 0/0 .rodata          @6327 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6327 = -60.0f;
COMPILER_STRIP_GATE(0x8076B640, &lit_6327);
#pragma pop

/* 8076B644-8076B648 0001E8 0004+00 0/1 0/0 0/0 .rodata          @6328 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6328 = -10000.0f;
COMPILER_STRIP_GATE(0x8076B644, &lit_6328);
#pragma pop

/* 8076B648-8076B64C 0001EC 0004+00 0/1 0/0 0/0 .rodata          @6329 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6329 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x8076B648, &lit_6329);
#pragma pop

/* 8076B64C-8076B650 0001F0 0004+00 0/1 0/0 0/0 .rodata          @6330 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6330 = 2573.0f;
COMPILER_STRIP_GATE(0x8076B64C, &lit_6330);
#pragma pop

/* 8076B650-8076B654 0001F4 0004+00 0/1 0/0 0/0 .rodata          @6331 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6331 = 370.0f;
COMPILER_STRIP_GATE(0x8076B650, &lit_6331);
#pragma pop

/* 8076B654-8076B658 0001F8 0004+00 0/1 0/0 0/0 .rodata          @6332 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6332 = 2200.0f;
COMPILER_STRIP_GATE(0x8076B654, &lit_6332);
#pragma pop

/* 8076B658-8076B65C 0001FC 0004+00 0/1 0/0 0/0 .rodata          @6333 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6333 = 2901.0f;
COMPILER_STRIP_GATE(0x8076B658, &lit_6333);
#pragma pop

/* 8076B65C-8076B660 000200 0004+00 0/1 0/0 0/0 .rodata          @6334 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6334 = 3100.0f;
COMPILER_STRIP_GATE(0x8076B65C, &lit_6334);
#pragma pop

/* 8076B660-8076B664 000204 0004+00 0/1 0/0 0/0 .rodata          @6335 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6335 = 222.0f;
COMPILER_STRIP_GATE(0x8076B660, &lit_6335);
#pragma pop

/* 8076B664-8076B668 000208 0004+00 0/1 0/0 0/0 .rodata          @6336 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6336 = 1888.0f;
COMPILER_STRIP_GATE(0x8076B664, &lit_6336);
#pragma pop

/* 8076B668-8076B66C 00020C 0004+00 0/1 0/0 0/0 .rodata          @6337 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6337 = 1900.0f;
COMPILER_STRIP_GATE(0x8076B668, &lit_6337);
#pragma pop

/* 8076B66C-8076B670 000210 0004+00 0/1 0/0 0/0 .rodata          @6338 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6338 = 555.0f;
COMPILER_STRIP_GATE(0x8076B66C, &lit_6338);
#pragma pop

/* 8076B670-8076B674 000214 0004+00 0/1 0/0 0/0 .rodata          @6339 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6339 = 1600.0f;
COMPILER_STRIP_GATE(0x8076B670, &lit_6339);
#pragma pop

/* 8076B674-8076B678 000218 0004+00 0/1 0/0 0/0 .rodata          @6340 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6340 = 1783.0f;
COMPILER_STRIP_GATE(0x8076B674, &lit_6340);
#pragma pop

/* 8076B678-8076B67C 00021C 0004+00 0/1 0/0 0/0 .rodata          @6341 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6341 = 355.0f;
COMPILER_STRIP_GATE(0x8076B678, &lit_6341);
#pragma pop

/* 8076B67C-8076B680 000220 0004+00 0/1 0/0 0/0 .rodata          @6342 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6342 = 1555.0f;
COMPILER_STRIP_GATE(0x8076B67C, &lit_6342);
#pragma pop

/* 8076B680-8076B684 000224 0004+00 0/1 0/0 0/0 .rodata          @6343 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6343 = 1332.0f;
COMPILER_STRIP_GATE(0x8076B680, &lit_6343);
#pragma pop

/* 8076B684-8076B688 000228 0004+00 0/1 0/0 0/0 .rodata          @6344 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6344 = 550.0f;
COMPILER_STRIP_GATE(0x8076B684, &lit_6344);
#pragma pop

/* 8076B688-8076B68C 00022C 0004+00 0/1 0/0 0/0 .rodata          @6345 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6345 = 1070.0f;
COMPILER_STRIP_GATE(0x8076B688, &lit_6345);
#pragma pop

/* 8076B68C-8076B690 000230 0004+00 0/1 0/0 0/0 .rodata          @6346 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6346 = 1375.0f;
COMPILER_STRIP_GATE(0x8076B68C, &lit_6346);
#pragma pop

/* 8076B690-8076B694 000234 0004+00 0/1 0/0 0/0 .rodata          @6347 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6347 = 250.0f;
COMPILER_STRIP_GATE(0x8076B690, &lit_6347);
#pragma pop

/* 8076B694-8076B698 000238 0004+00 0/1 0/0 0/0 .rodata          @6348 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6348 = 850.0f;
COMPILER_STRIP_GATE(0x8076B694, &lit_6348);
#pragma pop

/* 8076B698-8076B69C 00023C 0004+00 0/1 0/0 0/0 .rodata          @6349 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6349 = 1165.0f;
COMPILER_STRIP_GATE(0x8076B698, &lit_6349);
#pragma pop

/* 8076B69C-8076B6A0 000240 0004+00 0/1 0/0 0/0 .rodata          @6350 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6350 = 430.0f;
COMPILER_STRIP_GATE(0x8076B69C, &lit_6350);
#pragma pop

/* 8076B6A0-8076B6A4 000244 0004+00 0/1 0/0 0/0 .rodata          @6351 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6351 = 450.0f;
COMPILER_STRIP_GATE(0x8076B6A0, &lit_6351);
#pragma pop

/* 8076B6A4-8076B6A8 000248 0004+00 0/1 0/0 0/0 .rodata          @6352 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6352 = 260.0f;
COMPILER_STRIP_GATE(0x8076B6A4, &lit_6352);
#pragma pop

/* 8076B6A8-8076B6AC 00024C 0004+00 0/1 0/0 0/0 .rodata          @6353 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6353 = 522.0f;
COMPILER_STRIP_GATE(0x8076B6A8, &lit_6353);
#pragma pop

/* 8076B6AC-8076B6B0 000250 0004+00 0/1 0/0 0/0 .rodata          @6354 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6354 = 1632.0f;
COMPILER_STRIP_GATE(0x8076B6AC, &lit_6354);
#pragma pop

/* 8076B6B0-8076B6B4 000254 0004+00 0/1 0/0 0/0 .rodata          @6355 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6355 = 180.0f;
COMPILER_STRIP_GATE(0x8076B6B0, &lit_6355);
#pragma pop

/* 8076B6C4-8076B6C4 000268 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8076B6E7 = "T_DESER";
SECTION_DEAD static char const* const stringBase_8076B6EF = "F_SP118";
#pragma pop

/* 8076BA20-8076BA30 000060 000C+04 0/1 0/0 0/0 .bss             @5932 */
#pragma push
#pragma force_active on
static u8 lit_5932[12 + 4 /* padding */];
#pragma pop

/* 8076BA30-8076BA3C 000070 000C+00 0/1 0/0 0/0 .bss             @5935 */
#pragma push
#pragma force_active on
static u8 lit_5935[12];
#pragma pop

/* 8076BA3C-8076BA48 00007C 000C+00 0/1 0/0 0/0 .bss             @5936 */
#pragma push
#pragma force_active on
static u8 lit_5936[12];
#pragma pop

/* 8076BA48-8076BA54 000088 000C+00 0/1 0/0 0/0 .bss             @5937 */
#pragma push
#pragma force_active on
static u8 lit_5937[12];
#pragma pop

/* 8076BA54-8076BA60 000094 000C+00 0/1 0/0 0/0 .bss             @5938 */
#pragma push
#pragma force_active on
static u8 lit_5938[12];
#pragma pop

/* 8076BA60-8076BA6C 0000A0 000C+00 0/1 0/0 0/0 .bss             @5939 */
#pragma push
#pragma force_active on
static u8 lit_5939[12];
#pragma pop

/* 8076BA6C-8076BA78 0000AC 000C+00 0/1 0/0 0/0 .bss             @5940 */
#pragma push
#pragma force_active on
static u8 lit_5940[12];
#pragma pop

/* 8076BA78-8076BA84 0000B8 000C+00 0/1 0/0 0/0 .bss             @5941 */
#pragma push
#pragma force_active on
static u8 lit_5941[12];
#pragma pop

/* 8076BA84-8076BA90 0000C4 000C+00 0/1 0/0 0/0 .bss             @5942 */
#pragma push
#pragma force_active on
static u8 lit_5942[12];
#pragma pop

/* 8076BA90-8076BA9C 0000D0 000C+00 0/1 0/0 0/0 .bss             @5943 */
#pragma push
#pragma force_active on
static u8 lit_5943[12];
#pragma pop

/* 8076BA9C-8076BAA8 0000DC 000C+00 0/1 0/0 0/0 .bss             @5944 */
#pragma push
#pragma force_active on
static u8 lit_5944[12];
#pragma pop

/* 8076BAA8-8076BAB4 0000E8 000C+00 0/1 0/0 0/0 .bss             @5945 */
#pragma push
#pragma force_active on
static u8 lit_5945[12];
#pragma pop

/* 8076BAB4-8076BAC0 0000F4 000C+00 0/1 0/0 0/0 .bss             @5946 */
#pragma push
#pragma force_active on
static u8 lit_5946[12];
#pragma pop

/* 8076BAC0-8076BACC 000100 000C+00 0/1 0/0 0/0 .bss             @5947 */
#pragma push
#pragma force_active on
static u8 lit_5947[12];
#pragma pop

/* 8076BACC-8076BAD8 00010C 000C+00 0/1 0/0 0/0 .bss             @5948 */
#pragma push
#pragma force_active on
static u8 lit_5948[12];
#pragma pop

/* 8076BAD8-8076BAE4 000118 000C+00 0/1 0/0 0/0 .bss             @5949 */
#pragma push
#pragma force_active on
static u8 lit_5949[12];
#pragma pop

/* 8076BAE4-8076BAF0 000124 000C+00 0/1 0/0 0/0 .bss             @5950 */
#pragma push
#pragma force_active on
static u8 lit_5950[12];
#pragma pop

/* 8076BAF0-8076BAFC 000130 000C+00 0/1 0/0 0/0 .bss             @5951 */
#pragma push
#pragma force_active on
static u8 lit_5951[12];
#pragma pop

/* 8076BAFC-8076BB08 00013C 000C+00 0/1 0/0 0/0 .bss             @5952 */
#pragma push
#pragma force_active on
static u8 lit_5952[12];
#pragma pop

/* 8076BB08-8076BB14 000148 000C+00 0/1 0/0 0/0 .bss             @5953 */
#pragma push
#pragma force_active on
static u8 lit_5953[12];
#pragma pop

/* 8076BB14-8076BB20 000154 000C+00 0/1 0/0 0/0 .bss             @5954 */
#pragma push
#pragma force_active on
static u8 lit_5954[12];
#pragma pop

/* 8076BB20-8076BB2C 000160 000C+00 0/1 0/0 0/0 .bss             @5955 */
#pragma push
#pragma force_active on
static u8 lit_5955[12];
#pragma pop

/* 8076BB2C-8076BB38 00016C 000C+00 0/1 0/0 0/0 .bss             @5956 */
#pragma push
#pragma force_active on
static u8 lit_5956[12];
#pragma pop

/* 8076BB38-8076BB44 000178 000C+00 0/1 0/0 0/0 .bss             @5957 */
#pragma push
#pragma force_active on
static u8 lit_5957[12];
#pragma pop

/* 8076BB44-8076BC68 000184 0120+04 0/1 0/0 0/0 .bss             fire_eff_pos$5931 */
#pragma push
#pragma force_active on
static u8 fire_eff_pos[288 + 4 /* padding */];
#pragma pop

/* 80769324-8076A418 004344 10F4+00 2/1 0/0 0/0 .text            daE_RDB_Execute__FP11e_rdb_class */
static int daE_RDB_Execute(e_rdb_class* i_this) {
    // NONMATCHING
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->enemy;
    if (i_this->field_0xfe6 != 0) {
        demo_camera(i_this);
    } else {
        if (cDmrNowMidnaTalk()) {
            return 1;
        }

        cXyz sp64, sp70, sp7c;

        i_this->field_0x67c++;

        for (int i = 0; i < 4; i++) {
            if (i_this->field_0x6b8[i] != 0) {
                i_this->field_0x6b8[i]--;
            }
        }

        if (i_this->field_0x6c0 != 0) {
            i_this->field_0x6c0--;
        }

        if (i_this->field_0x6c2 != 0) {
            i_this->field_0x6c2--;
        }

        a_this->offHeadLockFlg();
        action(i_this);

        i_this->mAcch.CrrPos(dComIfG_Bgsp());
        mDoMtx_stack_c::transS(a_this->current.pos.x, a_this->current.pos.y, a_this->current.pos.z);
        mDoMtx_stack_c::YrotM(a_this->shape_angle.y);
        mDoMtx_stack_c::XrotM(a_this->shape_angle.x);
        mDoMtx_stack_c::ZrotM(a_this->shape_angle.z);
        f32 fVar1 = l_HIO.field_0x8 * a_this->scale.x;
        mDoMtx_stack_c::scaleM(fVar1, fVar1, fVar1);

        J3DModel* model = i_this->mpModelMorf->getModel();
        model->setBaseTRMtx(mDoMtx_stack_c::get());
        anm_se_set(i_this);
        i_this->mpModelMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(a_this)));
        i_this->mpModelMorf->modelCalc();
        PSMTXCopy(mDoMtx_stack_c::now, model->getAnmMtx(6));
        sp64.set(20.0f, 0.0f, 0.0f);
        MtxPosition(&sp64, &a_this->eyePos);
        a_this->attention_info.position = a_this->eyePos;
        a_this->attention_info.position.y += 30.0f;

        cXyz sp88(0.0f, 0.0f, 0.0f);
        if (i_this->field_0x6c0 != 0) {
            sp88.set(-20000.0f, 12000.0f, 30000.0f);
        }
        i_this->field_0x944[0].SetC(a_this->eyePos + sp88);
        i_this->field_0x944[0].SetR(35.0f);

        sp64.set(0.0f, 0.0f, 0.0f);
        PSMTXCopy(model->getAnmMtx(2), *calc_mtx);
        MtxPosition(&sp64, &sp70);
        i_this->field_0x944[1].SetC(sp70 + sp88);
        i_this->field_0x944[1].SetR(l_HIO.field_0x8 * 40.0f);

        sp64.set(0.0f, 0.0f, 0.0f);
        PSMTXCopy(model->getAnmMtx(22), *calc_mtx);
        MtxPosition(&sp64, &sp70);
        i_this->field_0x944[2].SetC(sp70 + sp88);
        i_this->field_0x944[2].SetR(l_HIO.field_0x8 * 50.0f);

        for (int i = 0; i < 3; i++) {
            dComIfG_Ccsp()->Set(&i_this->field_0x944[i]);
        }

        cMtx_YrotS(*calc_mtx, a_this->shape_angle.y);
        sp64.x = 0.0f;
        sp64.y = 0.0f;
        sp64.z = 40.0f;
        MtxPosition(&sp64, &sp70);
        sp70 += a_this->current.pos;
        
    }
}

/* 8076A418-8076A420 005438 0008+00 1/0 0/0 0/0 .text            daE_RDB_IsDelete__FP11e_rdb_class
 */
static bool daE_RDB_IsDelete(e_rdb_class* param_0) {
    return true;
}

/* 8076A420-8076A488 005440 0068+00 1/0 0/0 0/0 .text            daE_RDB_Delete__FP11e_rdb_class */
static void daE_RDB_Delete(e_rdb_class* param_0) {
    // NONMATCHING
}

/* 8076A488-8076A5FC 0054A8 0174+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8076B6B4-8076B6B8 000258 0004+00 0/1 0/0 0/0 .rodata          @6539 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6539 = -200.0f;
COMPILER_STRIP_GATE(0x8076B6B4, &lit_6539);
#pragma pop

/* 8076B6B8-8076B6BC 00025C 0004+00 0/1 0/0 0/0 .rodata          @6540 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6540 = -7625.0f;
COMPILER_STRIP_GATE(0x8076B6B8, &lit_6540);
#pragma pop

/* 8076B6BC-8076B6C0 000260 0004+00 0/1 0/0 0/0 .rodata          @6541 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6541 = -5825.0f;
COMPILER_STRIP_GATE(0x8076B6BC, &lit_6541);
#pragma pop

/* 8076B6C0-8076B6C4 000264 0004+00 0/1 0/0 0/0 .rodata          @6542 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6542 = -50.0f;
COMPILER_STRIP_GATE(0x8076B6C0, &lit_6542);
#pragma pop

/* 8076A5FC-8076AA0C 00561C 0410+00 1/0 0/0 0/0 .text            daE_RDB_Create__FP10fopAc_ac_c */
static void daE_RDB_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 8076AA0C-8076ABB8 005A2C 01AC+00 1/1 0/0 0/0 .text            __ct__11e_rdb_classFv */
e_rdb_class::e_rdb_class() {
    // NONMATCHING
}

/* 8076ABB8-8076AC00 005BD8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 8076AC00-8076AC48 005C20 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 8076AC48-8076AC90 005C68 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 8076AC90-8076AD5C 005CB0 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 8076AD5C-8076ADE0 005D7C 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 8076ADE0-8076AE3C 005E00 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 8076AE3C-8076AEAC 005E5C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 8076AEAC-8076AF1C 005ECC 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 8076AF1C-8076AF64 005F3C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 8076AFAC-8076AFE8 005FCC 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_rdb_cpp */
void __sinit_d_a_e_rdb_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x8076AFAC, __sinit_d_a_e_rdb_cpp);
#pragma pop

/* 8076AFE8-8076AFF0 006008 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_8076AFE8() {
    // NONMATCHING
}

/* 8076AFF0-8076AFF8 006010 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_8076AFF0() {
    // NONMATCHING
}

/* 8076B40C-8076B448 00642C 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 8076B6C4-8076B6C4 000268 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

AUDIO_INSTANCES

/* 8076B8F4-8076B914 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_RDB_Method */
static actor_method_class l_daE_RDB_Method = {
    (process_method_func)daE_RDB_Create,
    (process_method_func)daE_RDB_Delete,
    (process_method_func)daE_RDB_Execute,
    (process_method_func)daE_RDB_IsDelete,
    (process_method_func)daE_RDB_Draw,
};

/* 8076B914-8076B944 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_RDB */
extern actor_process_profile_definition g_profile_E_RDB = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_RDB,             // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(e_rdb_class),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  156,                    // mPriority
  &l_daE_RDB_Method,      // sub_method
  0x00044100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
