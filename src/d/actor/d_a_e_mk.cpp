/**
 * @file d_a_e_mk.cpp
 * 
*/

#include "d/actor/d_a_e_mk.h"
#include "d/d_cc_d.h"
#include "d/d_com_inf_game.h"
#include "d/actor/d_a_obj_pillar.h"
#include "d/actor/d_a_b_bh.h"
#include "d/actor/d_a_player.h"
#include "d/d_s_play.h"
#include "dol2asm.h"
#include "d/d_camera.h"



//
// Forward References:
//

extern "C" void __ct__12daE_MK_HIO_cFv();
extern "C" static void anm_init__FP10e_mk_classifUcf();
extern "C" static void ok_anm_init__FP10e_mk_classifUcf();
extern "C" static void daE_MK_Draw__FP10e_mk_class();
extern "C" void __dt__4cXyzFv();
extern "C" static void s_obj_delete__FPvPv();
extern "C" static void s_h_sub__FPvPv();
extern "C" static void search_hasira__FP10e_mk_class();
extern "C" static void s_d_sub__FPvPv();
extern "C" static void search_db__FP10e_mk_class();
extern "C" static void e_mk_move__FP10e_mk_class();
extern "C" static void e_mk_wait__FP10e_mk_class();
extern "C" static void e_mk_shoot__FP10e_mk_class();
extern "C" static void e_mk_yoro__FP10e_mk_class();
extern "C" static void e_mk_drop__FP10e_mk_class();
extern "C" static void e_mk_damage__FP10e_mk_class();
extern "C" static void damage_check__FP10e_mk_class();
extern "C" static void e_mk_s_demo__FP10e_mk_class();
extern "C" static void e_mk_e_demo__FP10e_mk_class();
extern "C" static void e_mk_r04_demo__FP10e_mk_class();
extern "C" static void cam_3d_morf__FP10e_mk_classf();
extern "C" static void demo_camera_start__FP10e_mk_class();
extern "C" static void demo_camera_end__FP10e_mk_class();
extern "C" static void s_ks_sub__FPvPv();
extern "C" static void s_brg_sub__FPvPv();
extern "C" static void s_brg_sub2__FPvPv();
extern "C" static void demo_camera_r04__FP10e_mk_class();
extern "C" static void demo_camera_bohit__FP10e_mk_class();
extern "C" static void demo_camera__FP10e_mk_class();
extern "C" static void action__FP10e_mk_class();
extern "C" static void anm_se_set__FP10e_mk_class();
extern "C" static void daE_MK_Execute__FP10e_mk_class();
extern "C" static bool daE_MK_IsDelete__FP10e_mk_class();
extern "C" static void daE_MK_Delete__FP10e_mk_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daE_MK_Create__FP10fopAc_ac_c();
extern "C" void __ct__10e_mk_classFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12daE_MK_HIO_cFv();
extern "C" void __sinit_d_a_e_mk_cpp();
extern "C" static void func_8071C520();
extern "C" static void func_8071C528();
extern "C" extern char const* const d_a_e_mk__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss();
extern "C" void entry__13mDoExt_btpAnmFP16J3DMaterialTables();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl();
extern "C" void setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv();
extern "C" void play__14mDoExt_McaMorfFP3VecUlSc();
extern "C" void entryDL__14mDoExt_McaMorfFv();
extern "C" void modelCalc__14mDoExt_McaMorfFv();
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
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fopAcM_createItemForMidBoss__FPC4cXyziiPC5csXyzPC4cXyzii();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGp_setNextStage__FPCcsScSc();
extern "C" void dComIfGs_onOneZoneSwitch__Fii();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onDungeonItem__12dSv_memBit_cFi();
extern "C" void isDungeonItem__12dSv_memBit_cCFi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void offSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void dEv_noFinishSkipProc__FPvi();
extern "C" void setSkipProc__14dEvt_control_cFPvPFPvi_ii();
extern "C" void setPtT__14dEvt_control_cFPv();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
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
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyzsf();
extern "C" void Reset__9dCamera_cF4cXyz4cXyz();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c();
extern "C" void doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void func_80280808();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void subBgmStart__8Z2SeqMgrFUl();
extern "C" void subBgmStop__8Z2SeqMgrFv();
extern "C" void bgmStreamPrepare__8Z2SeqMgrFUl();
extern "C" void bgmStreamPlay__8Z2SeqMgrFv();
extern "C" void changeSubBgmStatus__8Z2SeqMgrFl();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
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
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" extern u8 pauseTimer__9dScnPly_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

/* 8071C7FC-8071C828 -00001 002C+00 1/1 0/0 0/0 .data            @4295 */
SECTION_DATA static void* lit_4295[11] = {
    (void*)(((char*)e_mk_move__FP10e_mk_class) + 0x60),
    (void*)(((char*)e_mk_move__FP10e_mk_class) + 0x8C),
    (void*)(((char*)e_mk_move__FP10e_mk_class) + 0x284),
    (void*)(((char*)e_mk_move__FP10e_mk_class) + 0x35C),
    (void*)(((char*)e_mk_move__FP10e_mk_class) + 0x5E8),
    (void*)(((char*)e_mk_move__FP10e_mk_class) + 0x758),
    (void*)(((char*)e_mk_move__FP10e_mk_class) + 0x8C4),
    (void*)(((char*)e_mk_move__FP10e_mk_class) + 0x8C4),
    (void*)(((char*)e_mk_move__FP10e_mk_class) + 0x8C4),
    (void*)(((char*)e_mk_move__FP10e_mk_class) + 0x8C4),
    (void*)(((char*)e_mk_move__FP10e_mk_class) + 0x874),
};

/* 8071C828-8071C87C -00001 0054+00 1/1 0/0 0/0 .data            @4437 */
SECTION_DATA static void* lit_4437[21] = {
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x7C),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0xA8),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0xF0),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x180),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x314),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x314),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x314),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x314),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x314),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x314),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x208),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x314),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x314),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x314),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x314),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x2C8),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x314),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x314),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x314),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x314),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x310),
};

/* 8071C87C-8071C8B0 -00001 0034+00 1/1 0/0 0/0 .data            @5006 */
SECTION_DATA static void* lit_5006[13] = {
    (void*)(((char*)e_mk_r04_demo__FP10e_mk_class) + 0x6C),
    (void*)(((char*)e_mk_r04_demo__FP10e_mk_class) + 0x418),
    (void*)(((char*)e_mk_r04_demo__FP10e_mk_class) + 0x98),
    (void*)(((char*)e_mk_r04_demo__FP10e_mk_class) + 0xB8),
    (void*)(((char*)e_mk_r04_demo__FP10e_mk_class) + 0xF4),
    (void*)(((char*)e_mk_r04_demo__FP10e_mk_class) + 0x150),
    (void*)(((char*)e_mk_r04_demo__FP10e_mk_class) + 0x1A8),
    (void*)(((char*)e_mk_r04_demo__FP10e_mk_class) + 0x204),
    (void*)(((char*)e_mk_r04_demo__FP10e_mk_class) + 0x250),
    (void*)(((char*)e_mk_r04_demo__FP10e_mk_class) + 0x30C),
    (void*)(((char*)e_mk_r04_demo__FP10e_mk_class) + 0x364),
    (void*)(((char*)e_mk_r04_demo__FP10e_mk_class) + 0x390),
    (void*)(((char*)e_mk_r04_demo__FP10e_mk_class) + 0x3E8),
};

/* 8071C8B0-8071C8DC -00001 002C+00 1/1 0/0 0/0 .data            @6176 */
SECTION_DATA static void* lit_6176[11] = {
    (void*)(((char*)demo_camera__FP10e_mk_class) + 0x19C),
    (void*)(((char*)demo_camera__FP10e_mk_class) + 0x60),
    (void*)(((char*)demo_camera__FP10e_mk_class) + 0x68),
    (void*)(((char*)demo_camera__FP10e_mk_class) + 0x70),
    (void*)(((char*)demo_camera__FP10e_mk_class) + 0x108),
    (void*)(((char*)demo_camera__FP10e_mk_class) + 0x19C),
    (void*)(((char*)demo_camera__FP10e_mk_class) + 0x19C),
    (void*)(((char*)demo_camera__FP10e_mk_class) + 0x19C),
    (void*)(((char*)demo_camera__FP10e_mk_class) + 0x19C),
    (void*)(((char*)demo_camera__FP10e_mk_class) + 0x19C),
    (void*)(((char*)demo_camera__FP10e_mk_class) + 0x110),
};

/* 8071C8DC-8071C96C -00001 0090+00 1/1 0/0 0/0 .data            @6244 */
SECTION_DATA static void* lit_6244[36] = {
    (void*)(((char*)action__FP10e_mk_class) + 0x78),
    (void*)(((char*)action__FP10e_mk_class) + 0x84),
    (void*)(((char*)action__FP10e_mk_class) + 0x90),
    (void*)(((char*)action__FP10e_mk_class) + 0x9C),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0xA8),
    (void*)(((char*)action__FP10e_mk_class) + 0xBC),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0xD0),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0xE0),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0xF8),
};

/* 8071C96C-8071C970 000170 0004+00 1/1 0/0 0/0 .data            bo_eno_1$6320 */
SECTION_DATA static u8 bo_eno_1[4] = {
    0x82,
    0x14,
    0x82,
    0x15,
};

/* 8071C970-8071C978 000174 0008+00 1/1 0/0 0/0 .data            bo_eno_0$6330 */
SECTION_DATA static u8 bo_eno_0[8] = {
    0x82, 0x11, 0x82, 0x12, 0x82, 0x13, 0x82, 0x0C,
};

/* 8071C978-8071C9B8 00017C 0040+00 1/1 0/0 0/0 .data            cc_sph_src$6839 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x43}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 60.0f} // mSph
    } // mSphAttr
};

/* 8071CA08-8071CA14 00020C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 8071CA14-8071CA20 000218 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8071CA20-8071CA44 000224 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8071C528,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8071C520,
};

/* 8071CA44-8071CA50 000248 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 8071CA50-8071CA5C 000254 000C+00 2/2 0/0 0/0 .data            __vt__12daE_MK_HIO_c */
SECTION_DATA extern void* __vt__12daE_MK_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_MK_HIO_cFv,
};

/* 8071412C-8071417C 0000EC 0050+00 1/1 0/0 0/0 .text            __ct__12daE_MK_HIO_cFv */
daE_MK_HIO_c::daE_MK_HIO_c() {
    field_0x4 = -1;
    mSize = 1.3f;
    mBoomerangRatio = 1.0f;
    mPlayerThrowDistMax = 1800.0f;
    mHaltAction = 0;
    mCrownPosAdjust.x = 0.0f;
    mCrownPosAdjust.y = 0.0f;
    mCrownPosAdjust.z = 0.0f;
}

/* 8071417C-80714228 00013C 00AC+00 9/9 0/0 0/0 .text            anm_init__FP10e_mk_classifUcf */
static void anm_init(e_mk_class* i_this, int param_2, f32 param_3, u8 param_4, f32 param_5) {
    i_this->mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_mk", param_2),
                                param_4 & 0xff, param_3, param_5, 0.0f, -1.0f);
    i_this->mAnm = param_2;
}

/* 80714228-807142D0 0001E8 00A8+00 2/2 0/0 0/0 .text            ok_anm_init__FP10e_mk_classifUcf */
static void ok_anm_init(e_mk_class* i_this, int param_2, f32 param_3, u8 param_4, f32 param_5) {
    i_this->field_0x5dc->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_mk", param_2),
                                param_4 & 0xff, param_3, param_5, 0.0f, -1.0f, NULL);
}

/* 807142D0-80714498 000290 01C8+00 1/0 0/0 0/0 .text            daE_MK_Draw__FP10e_mk_class */
static int daE_MK_Draw(e_mk_class* i_this) {
    J3DModel* model = i_this->mpModelMorf->getModel();
    g_env_light.settingTevStruct(0, &i_this->current.pos, &i_this->tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &i_this->tevStr);
    J3DModelData* modelData = model->getModelData();
    i_this->mBtp->entry(modelData);
    i_this->mpModelMorf->entryDL();

    cXyz sp38;
    if (i_this->field_0x6f8 != 0) {
        sp38.set(i_this->current.pos.x, i_this->current.pos.y + 50.0f, i_this->current.pos.z);
        i_this->field_0x6f0 = dComIfGd_setShadow(i_this->field_0x6f0, 1, model, &sp38, 
                                                 1200.0f, 0.0f, i_this->current.pos.y, 
                                                 i_this->mAcch.GetGroundH(), i_this->mAcch.m_gnd, 
                                                 &i_this->tevStr, 0, 1.0f, 
                                                 dDlst_shadowControl_c::getSimpleTex());
    }

    if (i_this->field_0x60c != 0) {
        model = i_this->field_0x5dc->getModel();
        g_env_light.setLightTevColorType_MAJI(model, &i_this->tevStr);
        i_this->field_0x5dc->entryDL();
        if (i_this->field_0x5e0 != 0) {
            sp38.set(i_this->field_0x5e4.x, i_this->current.pos.y + 50.0f, i_this->field_0x5e4.z);
            i_this->field_0x6f4 = dComIfGd_setShadow(i_this->field_0x6f4, 1, i_this->field_0x5dc->getModel(), 
                                                     &sp38, 500.0f, 0.0f, i_this->current.pos.y, 
                                                     i_this->mAcch.GetGroundH(), i_this->mAcch.m_gnd, 
                                                     &i_this->tevStr, 0, 1.0f, 
                                                     dDlst_shadowControl_c::getSimpleTex());
        }
    }

    if (i_this->field_0x60d != 0) {
        g_env_light.setLightTevColorType_MAJI(i_this->field_0x608, &i_this->tevStr);
        mDoExt_modelUpdateDL(i_this->field_0x608);
    }

    return 1;
}

/* 807144D4-80714534 000494 0060+00 1/1 0/0 0/0 .text            s_obj_delete__FPvPv */
static void* s_obj_delete(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor)) {
        e_mk_class* i_this = (e_mk_class*)i_actor;
        if (fopAcM_GetName(i_actor) == PROC_E_DB) {
            i_this->health = 1000;
        } else if (fopAcM_GetName(i_actor) == PROC_E_DB_LEAF) {
            fopAcM_delete(i_this);
        }
    }

    return NULL;
}

UNK_REL_BSS

/* 8071CAB4-8071CAC0 000054 000C+00 0/2 0/0 0/0 .bss             demo_jump_pos_1 */
static cXyz demo_jump_pos_1;

/* 8071CACC-8071CAD8 00006C 000C+00 0/2 0/0 0/0 .bss             demo_jump_pos_2 */
static cXyz demo_jump_pos_2;

/* 8071CAE4-8071CAF0 000084 000C+00 0/2 0/0 0/0 .bss             demo_jump_pos_3 */
static cXyz demo_jump_pos_3;

/* 8071CAFC-8071CB08 00009C 000C+00 1/6 0/0 0/0 .bss             STAGE_CENTER_POS */
static cXyz STAGE_CENTER_POS;

/* 8071CB08-8071CB0C -00001 0004+00 2/5 0/0 0/0 .bss             None */
/* 8071CB08 0002+00 data_8071CB08 STAGE_ANGLE_Y */
static s16 STAGE_ANGLE_Y;

/* 8071CB18-8071CB3C 0000B8 0024+00 1/3 0/0 0/0 .bss             l_HIO */
static daE_MK_HIO_c l_HIO;

/* 8071CB3C-8071CB8C 0000DC 0050+00 4/7 0/0 0/0 .bss             target_info */
static void* target_info[20];

/* 8071CB8C-8071CB90 00012C 0004+00 4/7 0/0 0/0 .bss             target_info_count */
static int target_info_count;

/* 80714534-807145A4 0004F4 0070+00 4/4 0/0 0/0 .text            s_h_sub__FPvPv */
static void* s_h_sub(void* i_actor, void* i_data) {
    if ((fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_Obj_Pillar) && target_info_count < 20) {
        target_info[target_info_count] = (daPillar_c*)i_actor;
        target_info_count++;
    }

    return NULL;
}

/* 807145A4-80714874 000564 02D0+00 1/1 0/0 0/0 .text            search_hasira__FP10e_mk_class */
static daPillar_c* search_hasira(e_mk_class* i_this) {
    target_info_count = 0;
    for (int i = 0; i < 20; i++) {
        target_info[i] = NULL;
    }

    fpcM_Search(s_h_sub,i_this);

    if (i_this->field_0x71d == 0) {
        i_this->field_0x71d++;
        return (daPillar_c*)target_info[5];
    }

    f32 fVar1 = 1500.0f;
    if (target_info_count != 0) {
        cXyz sp44;
        daPillar_c *pPillar;
        daPillar_c *rv = NULL;
        int iVar1 = 0;
        int i = 0;
        while (i < target_info_count) {
            pPillar = (daPillar_c*)target_info[i];
            sp44 = pPillar->current.pos - i_this->current.pos;
            f32 fVar2 = sp44.abs();
            if (fVar2 > 700.0f && fVar2 < fVar1) {
                s16 sVar1 = i_this->current.angle.y - cM_atan2s(sp44.x, sp44.z);
                if (sVar1 < 0x7000 && sVar1 > -0x7000) {
                    if (iVar1 == 0 || cM_rndF(1.0f) < 0.3f) {
                        rv = pPillar;
                    }
                    iVar1++;
                }
            }

            i++;
            if (i == target_info_count) {
                i = 0;
                fVar1 += 100.0f;
                if (fVar1 > 2000.0f) {
                    return NULL;
                }
                if (rv != NULL) {
                    return rv;
                }
            }
        }
    } else {
        return NULL;
    }

    return NULL;
}

/* 80714874-807148FC 000834 0088+00 1/1 0/0 0/0 .text            s_d_sub__FPvPv */
static void* s_d_sub(void* i_actor, void* i_data) {
    b_bh_class* diababaHand = (b_bh_class*)i_actor;
    if (((fopAc_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_DB) && diababaHand->mAction == 10)
          && (diababaHand->mMode >= 1 && target_info_count < 20)) {
        (b_bh_class*)target_info[target_info_count] = diababaHand;
        target_info_count++;
    }

    return NULL;
}

/* 807148FC-80714B78 0008BC 027C+00 1/1 0/0 0/0 .text            search_db__FP10e_mk_class */
static b_bh_class* search_db(e_mk_class* i_this) {
    target_info_count = 0;
    for (int i = 0; i < 20; i++) {
        target_info[i] = NULL;
    }

    fpcM_Search(s_d_sub,i_this);

    f32 fVar1 = 2000.0f;
    if (target_info_count != 0) {
        cXyz sp44;
        b_bh_class *pDiababaHand;
        int i = 0;
        while (i < target_info_count) {
            pDiababaHand = (b_bh_class*)target_info[i];
            sp44 = pDiababaHand->current.pos - i_this->current.pos;

            f32 fVar2 = sp44.abs();
            if ((cM_rndF(1.0f) < 0.5f && fVar2 > 500.0f) && fVar2 < fVar1) {
                return pDiababaHand;
            }
            
            i++;
            if (i == target_info_count) {
                i = 0;
                fVar1 += 50.0f;
                if (fVar1 > 5000.0f) {
                    return NULL;
                }
            }
        }
    } else {
        return NULL;
    }

    return NULL;
}

/* 80714B78-807154A8 000B38 0930+00 2/1 0/0 0/0 .text            e_mk_move__FP10e_mk_class */
static void e_mk_move(e_mk_class* i_this) {
    // NONMATCHING
    cXyz sp28;
    int frame = i_this->mpModelMorf->getFrame();
    switch(i_this->mMode) {
        case 0:
            i_this->field_0x6fa = cM_rndF(3.0f) + 2.0f;
            i_this->mMode++;
            // fallthrough
        case 1:
            i_this->field_0x6dc.set(0.0f, 0.0f, 0.0f);
            i_this->speed.set(0.0f, 0.0f, 0.0f);
            if (i_this->field_0xc30 == 2) {
                i_this->mPillar = NULL;
                target_info_count = 0;
                fpcM_Search(s_h_sub,i_this);
                if (i_this->field_0x71e == 0) {
                    sp28 = demo_jump_pos_1;
                    i_this->mPillar = (daPillar_c*)target_info[8];
                } else if (i_this->field_0x71e == 1) {
                    sp28 = demo_jump_pos_2;
                    i_this->field_0xc32++;
                    i_this->mPillar = (daPillar_c*)target_info[6];
                } else if (i_this->field_0x71e == 2) {
                    sp28 = demo_jump_pos_3;
                } else {
                    i_this->mAction = e_mk_class::ACT_E_DEMO;
                    i_this->mMode = 100;
                    i_this->gravity = 0.0f;
                    i_this->scale.x = 1.0f;
                    return;
                }

                i_this->field_0x71e++;
                i_this->field_0x5b8 = STAGE_CENTER_POS + sp28;
                sp28 = i_this->field_0x5b8 - i_this->current.pos;
                i_this->current.angle.y = cM_atan2s(sp28.x,sp28.z);
                i_this->current.angle.x = -cM_atan2s(sp28.y,JMAFastSqrt(sp28.x * sp28.x + sp28.z * sp28.z));
                anm_init(i_this, 29, 5.0f, 0, 1.0f);
                i_this->mMode = 3;
            } else {
                i_this->mPillar = (daPillar_c*)i_this->mHasira;
                i_this->mHasira = search_hasira(i_this);
                #ifdef DEBUG
                if (i_this->mHasira == NULL) {
                    OSReport("E_mk HASIRA NON \n");
                }
                #endif
                if (i_this->mHasira  != NULL) {
                    i_this->mMode++;
                // fallthrough
            case 2:
                    i_this->field_0x5b8 = i_this->mHasira->current.pos;
                    i_this->field_0x5b8.y += 800.0f;
                    if (fopAcM_gc_c::gndCheck(&i_this->field_0x5b8)) {
                        i_this->field_0x5b8.y = fopAcM_gc_c::getGroundY();
                    }

                    sp28 = i_this->field_0x5b8 - i_this->current.pos;
                    i_this->current.angle.y = cM_atan2s(sp28.x,sp28.z);
                    i_this->current.angle.x = -cM_atan2s(sp28.y,JMAFastSqrt(sp28.x * sp28.x + sp28.z * sp28.z));
                    anm_init(i_this, 29, 5.0f, 0, 1.0f);
                    i_this->mMode++;
                }
            }
            break;

    case 3:
        if (frame == 9) {
            cMtx_YrotS(*calc_mtx, i_this->current.angle.y);
            cMtx_XrotM(*calc_mtx, i_this->current.angle.x);
            sp28.x = 0.0f;
            sp28.y = 0.0f;
            sp28.z = 70.0f;
            MtxPosition(&sp28, &i_this->speed);
            i_this->field_0x6be = 1;
            i_this->field_0x6c0 = i_this->current.pos;
            i_this->field_0x6cc = i_this->field_0x5b8;

            i_this->mSound.startCreatureVoice(Z2SE_EN_MK_V_JUMP, -1);
            i_this->mSound.startCreatureSound(Z2SE_EN_MK_JUMP_WIND, 0, -1);
            if (i_this->field_0x718 != 0) {
                i_this->field_0x71b = 2;
            }

            if (i_this->mPillar != NULL) {
                sp28 = i_this->mPillar->current.pos;
                sp28.y += 500.0f;
                sp28 -= i_this->current.pos;
                if (sp28.abs() < 200.0f) {
                    i_this->mPillar->setShake(2);
                }
            }
        }

        if (i_this->mpModelMorf->isStop()) {
            anm_init(i_this, 28, 5.0f, 0, 1.0f);
            i_this->mMode++;
        }
        break;

    case 4:
        sp28 = i_this->field_0x5b8 - i_this->current.pos;
        if (sp28.abs() < 300.0f) {
            anm_init(i_this, 26, 2.0f, 0, 1.0f);
            i_this->mMode++;
            i_this->field_0x6dc = i_this->speed;
            i_this->speed.set(0.0f, 0.0f, 0.0f);
        }
        break;

    case 5:
        if (i_this->mpModelMorf->isStop() != 0) {
            i_this->field_0x6be = 0;
            if (i_this->field_0x718 != 0) {
                i_this->mMode = 10;
                i_this->field_0x718 = 0;
                anm_init(i_this, 30, 3.0f, 0, 1.0f);
            } else {
                i_this->field_0x6fa--;
                if (i_this->field_0x6fa == 0) {
                    if (cM_rndF(1.0f) < 0.75f) {
                        i_this->mAction = e_mk_class::ACT_SHOOT;
                        if ((cM_rndF(1.0f) < 0.5f && i_this->field_0x71c >= 3) || i_this->mDistToPlayer > l_HIO.mPlayerThrowDistMax) {
                            i_this->mMode = 1;
                        } else {
                            i_this->mMode = 0;
                            i_this->field_0x71c++;
                        }
                        i_this->field_0x71a = 0;
                    } else {
                        i_this->mAction = e_mk_class::ACT_WAIT;
                        i_this->mMode = 0;
                    }
                } else {
                    i_this->mMode = 1;
                }
            }
        }
        break;

    case 10:
        if (frame == 5) {
            i_this->field_0x707 = 6;
            i_this->field_0x60d = 1;
        }

        if (i_this->mpModelMorf->isStop()) {
            i_this->mMode = 1;
        }
    }


    cLib_addCalc2(&i_this->current.pos.x, i_this->field_0x5b8.x, 1.0f, fabsf(i_this->field_0x6dc.x));
    cLib_addCalc2(&i_this->current.pos.z, i_this->field_0x5b8.z, 1.0f, fabsf(i_this->field_0x6dc.z));
    cLib_addCalc2(&i_this->current.pos.y, i_this->field_0x5b8.y, 1.0f, fabsf(i_this->field_0x6dc.y));
}

/* 807154A8-80715618 001468 0170+00 1/1 0/0 0/0 .text            e_mk_wait__FP10e_mk_class */
static void e_mk_wait(e_mk_class* i_this) {
    switch (i_this->mMode) {
        case 0:
            i_this->field_0x6fc = (int)(cM_rndF(40.0f) + 40.0f);
            if (cM_rndF(1.0f) < 0.5f) {
                anm_init(i_this, 32, 10.0f, 2, 1.0f);
                i_this->mMode = 1;
            } else {
                anm_init(i_this, 33, 10.0f, 0, 1.0f);
                i_this->mMode = 2;
            }
            break;

        case 1:
            if (i_this->field_0x6fc == 0) {
                i_this->mAction = e_mk_class::ACT_MOVE;
                i_this->mMode = 0;
            }
            break;

        case 2:
            if (i_this->mpModelMorf->isStop()) {
                i_this->mAction = e_mk_class::ACT_MOVE;
                i_this->mMode = 0;
            }
    }

    cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->mAngleToPlayer, 2, 0x1000);
    if (i_this->mDistToPlayer < 800.0f) {
        i_this->mAction = e_mk_class::ACT_MOVE;
        i_this->mMode = 0;
    }
}

/* 80715618-80715B18 0015D8 0500+00 2/1 0/0 0/0 .text            e_mk_shoot__FP10e_mk_class */
static void e_mk_shoot(e_mk_class* i_this) {
    // NONMATCHING
    int frame = i_this->mpModelMorf->getFrame();
    fopAc_ac_c *actor = fopAcM_SearchByID(i_this->field_0x708);
    daPillar_c *pPillar = i_this->mHasira;
    s8 bVar5 = 0;
    switch(i_this->mMode) {
        case 0:
            i_this->field_0x70c = NULL;
            anm_init(i_this, 38, 5.0f, 0, 1.0f);
            i_this->mMode = 2;
            break;

        case 1:
            i_this->field_0x70c = search_db(i_this);
            if (i_this->field_0x70c != NULL) {
                anm_init(i_this, 39, 5.0f, 0, 1.0f);
                i_this->mMode = 10;
            } else {
                i_this->mMode = 0;
            }
            break;

    case 2:
        cLib_addCalcAngleS2(&i_this->current.angle.y,i_this->mAngleToPlayer,2,0x1000);

        if (i_this->mpModelMorf->checkFrame(15.0f)) {
            i_this->mSound.startCreatureVoice(Z2SE_EN_MK_V_THROW_BOOM, -1);
        }

        if (frame == 17) {
            i_this->field_0x707 = 7;
        }
        
        if (frame == 27) {
            i_this->field_0x707 = 1;
        }

        if (frame == 27) {
            i_this->field_0x60d = 0;
            i_this->mMode = 3;
        }
        break;

    case 3:
        if (i_this->mpModelMorf->isStop()) {
            i_this->mMode = 20;
            if (cM_rndF(1.0f) < 0.333f) {
                anm_init(i_this, 31, 10.0f, 2, 1.0f);
            }
            else {
                anm_init(i_this, 40, 10.0f, 2, 1.0f);
            }
        }
        bVar5 = 1;
        break;

    case 10:
        cXyz sp48 = i_this->field_0x70c->current.pos - i_this->current.pos;
        cLib_addCalcAngleS2(&i_this->current.angle.y, cM_atan2s(sp48.x, sp48.z), 2, 0x1000);
        if (i_this->mpModelMorf->checkFrame(15.0f)) {
            i_this->mSound.startCreatureVoice(Z2SE_EN_MK_V_THROW_BOOM, -1);
        }

        if (frame == 17) {
            i_this->field_0x707 = 7;
        }

        if (frame == 27) {
            i_this->field_0x707 = 1;
        }

        if (frame == 27) {
            i_this->field_0x60d = 0;
            i_this->mMode = 3;
        }
        break;

    case 15:
        if (i_this->mpModelMorf->isStop()) {
            i_this->mAction = e_mk_class::ACT_MOVE;
            i_this->mMode = 0;
        }
        bVar5 = 3;
        break;

    case 20:
        bVar5 = 2;
    }

    if (bVar5 != 0) {
        if ((bVar5 == 2) && (actor != NULL)) {
            cXyz sp54 = actor->current.pos - i_this->current.pos;
            cLib_addCalcAngleS2(&i_this->current.angle.y, cM_atan2s(sp54.x,sp54.z), 2, 0x800);
        }
        if (bVar5 <= 2) {
            if (i_this->field_0x707 == 5) {
                i_this->field_0x707 = 0;
                i_this->field_0x71a = 47;
            }

            if (i_this->field_0x71a == 35) {
                anm_init(i_this, 25, 5.0f, 2, 1.0f);
                i_this->mMode = 20;
            }

            if (i_this->field_0x71a == 1) {
                anm_init(i_this, 40, 10.0f, 2, 1.0f);
            }

            if (i_this->field_0x707 == 2) {
                anm_init(i_this, 9, 3.0f, 0, 0.0f);
                i_this->field_0x707 = 0;
            }

            if (i_this->field_0x707 == 3) {
                i_this->field_0x707 = 0;
                i_this->field_0x60d = 1;
                anm_init(i_this, 9, 1.0f, 0, 1.0f);
                i_this->mMode = 15;

                i_this->mSound.startCreatureVoice(Z2SE_EN_MK_V_CATCH_BOOM, -1);
                i_this->mSound.startCreatureSound(Z2SE_EN_MK_CATCH_BOOM, 0, -1);
            }
        }

        if ((pPillar != NULL) && pPillar->checkRollAttack()) {
            i_this->mAction = e_mk_class::ACT_YORO;
            i_this->mMode = 0;
            if (i_this->field_0x60d != 0) {
                i_this->field_0x6fc = 40;
            }
            else {
                i_this->field_0x6fc = 250;
            }
        }
    }
}

/* 8071CB90-8071CB94 000130 0004+00 1/2 0/0 0/0 .bss             None */
static s8 lbl_210_bss_130;

/* 80715B18-80715D2C 001AD8 0214+00 1/1 0/0 0/0 .text            e_mk_yoro__FP10e_mk_class */
static void e_mk_yoro(e_mk_class* i_this) {
    switch (i_this->mMode) {
        case 0:
            i_this->mSound.startCreatureVoiceLevel(Z2SE_EN_MK_V_LOOSE_BALANCE, -1);
            anm_init(i_this, 8, 5.0f, 0, 1.0f);
            i_this->mMode = 1;
            break;

        case 1:
            i_this->mSound.startCreatureVoiceLevel(Z2SE_EN_MK_V_LOOSE_BALANCE, -1);
            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 7, 5.0f, 2, 1.0f);
                i_this->mMode = 2;
            }
            break;

        case 2:
            i_this->mSound.startCreatureVoiceLevel(Z2SE_EN_MK_V_LOOSE_BALANCE, -1);
            if (i_this->field_0x6fc == 0) {
                i_this->mAction = e_mk_class::ACT_WAIT;
                i_this->mMode = 0;
                i_this->field_0x707 = 6;
                i_this->field_0x60d = 1;
            }

    }

    if (i_this->field_0x707 == 4) {
        i_this->field_0x707 = 0;
        i_this->mAction = e_mk_class::ACT_DROP;
        i_this->mMode = 0;

        i_this->mSound.startCreatureVoice(Z2SE_EN_MK_V_HIT_BOOM, -1);
        i_this->mSound.startCollisionSE(Z2SE_HIT_WOOD_WEAPON, 31);

        i_this->field_0x704 = 5;
        i_this->field_0x706 = 5;
        if (lbl_210_bss_130 == 0) {
            lbl_210_bss_130 = 1;
            i_this->field_0xc30 = 4;
            i_this->field_0xc32 = 1;
        }
    }
}

/* 80715D2C-807160B0 001CEC 0384+00 1/1 0/0 0/0 .text            e_mk_drop__FP10e_mk_class */
static void e_mk_drop(e_mk_class* i_this) {
    int frame = i_this->mpModelMorf->getFrame();
    switch (i_this->mMode) {
        case 0:
            anm_init(i_this, 23, 3.0f, 0, 1.0f);
            i_this->mMode = 1;
            cMtx_YrotS(*calc_mtx, i_this->shape_angle.y);
            cXyz sp24;
            sp24.x = 0.0;
            sp24.y = 30.0;
            sp24.z = -10.0;
            MtxPosition(&sp24, &i_this->speed);
            i_this->field_0x704 = 50;
            break;

        case 1:
            if (frame >= 14) {
                i_this->mpModelMorf->setPlaySpeed(0.0f);
                i_this->mMode = 2;
            }
            break;

        case 2:
            i_this->field_0x704 = 5;
            if (i_this->mAcch.ChkGroundHit()) {
                i_this->mpModelMorf->setPlaySpeed(1.0f);
                i_this->mMode = 3;
                dComIfGp_getVibration().StartShock(5, 15, cXyz(0.0f, 1.0f, 0.0f));
                i_this->mSound.startCreatureSound(Z2SE_EN_MK_FALL_GROUND, 0, -1);
                i_this->field_0x71b = 1;
                i_this->field_0x719 = 0;
                Z2GetAudioMgr()->changeSubBgmStatus(1);
                dComIfGs_onOneZoneSwitch(5, -1);
            }
            break;
            
        case 3:
            if (frame == 22 || frame == 32) {
                i_this->field_0x71b = 1;
            }

            if (frame >= 45) {
                i_this->speed.set(0.0f, 0.0f, 0.0f);
            }

            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 10, 5.0f, 2, 1.0f);
                i_this->mMode = 4;
                i_this->field_0x6fc = 150;
            }
            break;
        
        case 4:
            if (i_this->field_0x6fc == 0) {
                anm_init(i_this, 36, 5.0f, 0, 1.0f);
                i_this->mMode = 5;
                i_this->field_0x719 = 4;
                i_this->mSound.startCreatureVoice(Z2SE_EN_MK_V_AWAKE, -1);
            }
            break;

        case 5:
            if (i_this->mAnm == 35 && ((frame == 9 || (frame == 24)) || (frame == 35))) {
                i_this->field_0x71b = 2;
            }

            if (i_this->mpModelMorf->isStop()) {
                i_this->mAction = e_mk_class::ACT_MOVE;
                i_this->mMode = 2;
                i_this->field_0x6dc.set(0.0f, 0.0f, 0.0f);
                i_this->field_0x6fa = cM_rndF(3.0f) + 2.0f;
                i_this->field_0x718 = 1;
                if (i_this->health > 100) {
                    Z2GetAudioMgr()->changeSubBgmStatus(2);
                } else {
                    Z2GetAudioMgr()->changeSubBgmStatus(3);
                }
            }
    }
}

/* 807160B0-807161F8 002070 0148+00 1/1 0/0 0/0 .text            e_mk_damage__FP10e_mk_class */
static void e_mk_damage(e_mk_class* i_this) {
    switch (i_this->mMode) {
        case 0:
            i_this->field_0x719++;
            i_this->speed.set(0.0f, 0.0f, 0.0f);
            if (i_this->field_0x719 >= 4) {
                anm_init(i_this, 35, 3.0f, 0, 1.0f);
                i_this->mAction = e_mk_class::ACT_DROP;
                i_this->mMode = 5;
                i_this->field_0x704 = 60;
            } else {
                anm_init(i_this, 12, 3.0f, 0, 1.0f);
                i_this->mMode = 1;
                i_this->mSound.startCreatureVoice(Z2SE_EN_MK_V_DAMAGE, -1);
            }
            break;

        case 1:
            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this,10, 5.0f, 2, 1.0f);
                i_this->mAction = e_mk_class::ACT_DROP;
                i_this->mMode = 4;
            }
            break;
    }
}

/* 807161F8-8071637C 0021B8 0184+00 1/1 0/0 0/0 .text            damage_check__FP10e_mk_class */
static void damage_check(e_mk_class* i_this) {
    daPy_py_c *player = (daPy_py_c*)dComIfGp_getPlayer(0);
    if (i_this->field_0x704 == 0) {
        i_this->field_0x95c.Move();
        if (i_this->mAction >= 9) {
            if (i_this->field_0xad0.ChkTgHit()) {
                i_this->mAtInfo.mpCollider = i_this->field_0xad0.GetTgHitObj();
                cc_at_check(i_this, &i_this->mAtInfo);
                if (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_UNK) != 0) {
                    i_this->field_0x704 = 20;
                } else {
                    i_this->field_0x704 = 10;
                }

                if (i_this->health <= 0) {
                    fpcM_Search(s_obj_delete,i_this);
                    i_this->mAction = 30;
                    i_this->mMode = 0;
                    i_this->mSound.startCreatureVoice(Z2SE_EN_MK_V_DEAD, -1);
                    i_this->field_0x704 = 20000;
                    Z2GetAudioMgr()->subBgmStop();
                    dScnPly_c::nextPauseTimer = 0;
                } else {
                    i_this->mAction = 10;
                    i_this->mMode = 0;
                    if (player->getCutType() == daPy_py_c::CUT_TYPE_JUMP && player->checkCutJumpCancelTurn()) {
                        i_this->field_0x704 = 3;
                    }
                }
            }
        }

        if (i_this->health <= 1) {
            i_this->health = 0;
            i_this->field_0xad0.SetTgHitMark((CcG_Tg_HitMark )3);
        }
    }
}

/* 8071637C-80716780 00233C 0404+00 1/1 0/0 0/0 .text            e_mk_s_demo__FP10e_mk_class */
static void e_mk_s_demo(e_mk_class* i_this) {
    int frame = i_this->mpModelMorf->getFrame();
    i_this->field_0x704 = 5;
    switch (i_this->mMode) {
        case 0:
            anm_init(i_this, 40, 1.0f, 2, 1.0f);
            i_this->mMode = 1;
            i_this->field_0x6fc = 0;
            // fallthrough
        case 1:
            if (i_this->field_0x6fc == 0) {
                i_this->mMode = 100;
                i_this->field_0xc30 = 1;
                i_this->field_0xc32 = 1;
            }
            break;

        case 2:
            i_this->mSound.startCreatureSound(Z2SE_MK_DARK_BOOM_RESUME, 0, -1);
            anm_init(i_this, 20, 5.0f, 0, 1.0f);
            i_this->mMode = 3;
            break;

        case 3:
            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 21, 2.0f, 2, 1.0f);
                i_this->mMode = 100;
            }
            break;

        case 4:
            anm_init(i_this, 19, 1.0f, 0 ,1.0f);
            i_this->mMode = 5;
            i_this->mSound.startCreatureVoice(Z2SE_EN_MK_V_THROW_BOOM, -1);
            break;

        case 5:
            if (frame == 8) {
                i_this->field_0x707 = 1;
                Z2GetAudioMgr()->bgmStreamPlay();
            }

            if (frame == 8) {
                i_this->field_0x60d = 0;
            }
    
            if (frame == 14) {
                i_this->mMode = 6;
                i_this->field_0xc32 = 7;
                anm_init(i_this, 40, 10.0f, 2, 1.0f);
            }
            break;

        case 6:
            if (i_this->field_0x707 == 2) {
                anm_init(i_this, 9, 3.0f, 0, 0.0f);
                i_this->field_0x707 = 0;
            }

            if (i_this->field_0x707 == 3) {
                i_this->field_0x707 = 0;
                i_this->field_0x60d = 1;
                anm_init(i_this, 9, 1.0f, 0, 1.0f);
                i_this->mSound.startCreatureVoice(Z2SE_EN_MK_V_CATCH_BOOM, -1);
                i_this->mSound.startCreatureSound(Z2SE_EN_MK_CATCH_BOOM, 0, -1);
                i_this->mMode = 7;
            }
            break;

        case 7:
            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 15, 5.0f, 2, 1.0f);
                i_this->field_0x6fc = 30;
                i_this->mMode = 8;
            }
            break;

        case 8:
            if (i_this->field_0x6fc == 0) {
                anm_init(i_this, 33, 10.0f, 0, 1.0f);
                i_this->mMode = 9;
            }
            break;

        case 9:
            if (i_this->mpModelMorf->isStop()) {
                i_this->mAction = e_mk_class::ACT_MOVE;
                i_this->field_0x6fa = cM_rndF(2.0f) + 7.0f;
                i_this->mMode = 1;
                i_this->field_0xc32 = 11;
                i_this->field_0xc34 = 0;
            }
            break;

        case 100:
            return;
    }
}

/* 80716780-80716F48 002740 07C8+00 1/1 0/0 0/0 .text            e_mk_e_demo__FP10e_mk_class */
static int e_mk_e_demo(e_mk_class* i_this) {
    cXyz sp38, sp44;
    int frame = i_this->mpModelMorf->getFrame();
    int rv = 1;
    s8 cVar6 = 0;

    switch (i_this->mMode) {
        case -100:
            anm_init(i_this, 10, 5.0f, 2, 1.0f);
            i_this->mMode++;
            break;

        case 0:
            anm_init(i_this, 18, 1.0f, 0, 1.0f);
            i_this->mMode = 1;
            i_this->field_0xc30 = 2;
            i_this->field_0xc32 = 1;
            dComIfGs_onSwitch(108, fopAcM_GetRoomNo(i_this));
            break;

        case 1:
            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 17, 1.0f, 2, 1.0f);
                i_this->mMode = 2;
                i_this->current.angle.y = STAGE_ANGLE_Y + -0x4000;
                cMtx_YrotS(*calc_mtx,i_this->current.angle.y);
                sp38.x = 0.0;
                sp38.y = 0.0;
                sp38.z = -1000.0;
                MtxPosition(&sp38, &sp44);
                i_this->current.pos = STAGE_CENTER_POS + sp44;
                i_this->old.pos = STAGE_CENTER_POS + sp44;
                i_this->field_0xc32 = 4;
                i_this->field_0xc34 = 0;
                i_this->gravity = -10.0f;
            }
            break;

        case 2:
            if (i_this->mAcch.ChkGroundHit()) {
                i_this->speedF = 0.0f;
            }
    
            if (frame == 1 || frame == 18) {
                i_this->speed.y = 50.0f;
                i_this->speedF = 30.0f;
                i_this->mSound.startCreatureSound(Z2SE_EN_MK_JUMP_START, 0, -1);
            }
    
            sp38 = STAGE_CENTER_POS - i_this->current.pos;
            f32 fVar1 = JMAFastSqrt(sp38.x * sp38.x + sp38.z * sp38.z);
            if (fVar1 < 200.0f) {
                rv = 2;
                if (fVar1 < 100.0f) {
                    i_this->mMode = 3;
                    anm_init(i_this, 16, 2.0f, 0, 1.0f);
                    i_this->speedF = 0.0f;
                    i_this->gravity = 0.0f;
                    i_this->speed.y = 0.0f;
                    i_this->field_0x6fc = 40;
                    cVar6 = 60;
                    target_info_count = 0;
                    fpcM_Search(s_h_sub,i_this);
                    static_cast<daPillar_c*>(target_info[8])->setShake(1);
                }
            }
            break;

        case 3:
            rv = 2;
            i_this->field_0x5d4 = 0;
            if (i_this->field_0x6fc < 12) {
              i_this->field_0x5d8 = i_this->field_0x6fc << 1;
              if (i_this->field_0x5d8 >= 12.0f) {
                i_this->field_0x5d8 = i_this->field_0x5d8 - 12.0f;
              }
            }
            
            if (i_this->field_0x6fc == 0) {
              i_this->gravity = -0.03f;
              if (i_this->speed.y < -1.0f) {
                  anm_init(i_this, 14, 10.0f, 0, 1.0f);
                  i_this->speedF = 0.0f;
                  i_this->gravity = -2.0f;
                  i_this->mMode = 4;
              }
            }
            break;

        case 4:
            if (i_this->mAcch.ChkGroundHit()) {
                i_this->speedF = 0.0f;
                i_this->field_0x71b = 2;
                cVar6 = 30;
                i_this->mMode = 100;
                i_this->field_0x5e0 = 1;
                ok_anm_init(i_this, 43, 1.0f, 2, 1.0f);
                cMtx_YrotS(*calc_mtx, i_this->current.angle.y);
                sp38.x = 0.0f;
                sp38.y = 0.0f;
                sp38.z = -50.0f;
                MtxPosition(&sp38, &sp44);
                i_this->field_0x5e4 += sp44;
                i_this->field_0x5f0 = i_this->shape_angle;
                i_this->field_0x5f0.x = 0x4000;
                i_this->field_0x5fc = 30.0f;
                i_this->field_0x600 = -20.0f;
                i_this->field_0xc32 = 5;
                i_this->field_0xc34 = 0;
                i_this->field_0x60e = 1;
            }
            break;

        case 5:
            anm_init(i_this, 22, 1.0f, 0, 1.0f);
            i_this->field_0x5d4 = 60;
            i_this->mMode++;
            break;

        case 6:
            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 13, 5.0f, 0, 1.0f);
                i_this->mMode++;
                i_this->field_0x5d4 = 125;
                i_this->field_0xc32 = 8;
                i_this->field_0xc34 = 0;
            }
            break;

        case 7:
            if (frame == 144) {
                i_this->field_0x718 = 0;
                i_this->field_0x6fa = 100;
                i_this->field_0x6dc.set(0.0f, 0.0f, 0.0f);
                i_this->speed.set(0.0f, 0.0f, 0.0f);
                i_this->field_0x5b8 = STAGE_CENTER_POS;
                i_this->field_0x5b8.y += 500.0f;
                sp38 = i_this->field_0x5b8 - i_this->current.pos;
                i_this->current.angle.y = cM_atan2s(sp38.x, sp38.z);
                i_this->current.angle.x = -cM_atan2s(sp38.y, JMAFastSqrt(sp38.x * sp38.x + sp38.z * sp38.z));
                cMtx_YrotS(*calc_mtx, i_this->current.angle.y);
                cMtx_XrotM(*calc_mtx, i_this->current.angle.x);
                sp38.x = 0.0;
                sp38.y = 0.0;
                sp38.z = 70.0;
                MtxPosition(&sp38, &i_this->speed);
                i_this->field_0x6be = 1;
                i_this->field_0x6c0 = i_this->current.pos;
                i_this->field_0x6cc = i_this->field_0x5b8;
                i_this->mSound.startCreatureSound(Z2SE_EN_MK_JUMP_WIND, 0, -1);
                i_this->mAction = e_mk_class::ACT_MOVE;
                i_this->mMode = 4;
                return 0;
            }
            break;

        case -99:
        case 100:
            break;
    }

    cMtx_YrotS(*calc_mtx, i_this->current.angle.y);
    sp38.x = 0.0f;
    sp38.y = 0.0f;
    sp38.z = i_this->speedF;
    MtxPosition(&sp38, &sp44);
    i_this->speed.x = sp44.x;
    i_this->speed.z = sp44.z;
    if (cVar6 != 0) {
      dComIfGp_getVibration().StartShock(5, 1, cXyz(0.0f, 1.0f, 0.0f));
      i_this->mSound.startCreatureSound(Z2SE_EN_FM_FOOTNOTE, 0, -1);
      i_this->field_0xc98 = cVar6;
    }
    
    return rv;
}

/* 80716F48-80717400 002F08 04B8+00 2/1 0/0 0/0 .text            e_mk_r04_demo__FP10e_mk_class */
static void e_mk_r04_demo(e_mk_class* i_this) {
    // NONMATCHING
    int frame = i_this->mpModelMorf->getFrame();
    f32 fVar2 = 0.0f;
    i_this->field_0x704 = 5;
    switch(i_this->mMode) {
        case 0:
            anm_init(i_this, 40, 1.0f, 2, 1.0f);
            i_this->mMode = 1;
            i_this->field_0xc30 = 3;
            i_this->field_0xc32 = 1;
            break;

        case 2:
            anm_init(i_this, 34, 3.0f, 2, 1.0f);
            i_this->mMode = 3;
            break;

        case 3:
            fVar2 = 30.0f;
            if (i_this->current.pos.z > -600.0f) {
                i_this->mMode = 4;
                anm_init(i_this, 40, 5.0f, 2, 1.0f);
                i_this->field_0x6fc = 0;
            }
            break;

        case 4:
            if (i_this->field_0x6fc == 0) {
                i_this->mSound.startCreatureSound(Z2SE_MK_DARK_BOOM_RESUME, 0, -1);
                anm_init(i_this, 20, 5.0f, 0, 1.0f);
                i_this->mMode = 5;
            }
            break;

        case 5:
            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 21, 2.0f, 2, 1.0f);
                i_this->mMode = 6;
                i_this->field_0x6fc = 95;
            }
            break;

        case 6:
            if (i_this->field_0x6fc == 0) {
                anm_init(i_this, 19, 1.0f, 0, 1.0f);
                i_this->mMode = 7;
                i_this->mSound.startCreatureVoice(Z2SE_EN_MK_V_THROW_BOOM, -1);
                i_this->field_0x707 = 7;
            }
            break;

        case 7:
            if (frame == 8) {
                i_this->field_0x707 = 1;
            }

            if (frame == 8) {
                i_this->field_0x60d = 0;
            }

            if (frame == 14) {
                i_this->mMode = 8;
                anm_init(i_this, 40, 10.0f, 2, 1.0f);
            }
            break;

        case 8:
            if (i_this->field_0x707 == 2) {
                anm_init(i_this, 9, 3.0f, 0, 0.0f);
                i_this->field_0x707 = 0;
            }

            if (i_this->field_0x707 == 3) {
                i_this->field_0x707 = 0;
                i_this->field_0x60d = 1;
                anm_init(i_this, 9, 1.0f, 0, 1.0f);
                i_this->mMode = 9;

                i_this->mSound.startCreatureVoice(Z2SE_EN_MK_V_CATCH_BOOM, -1);
                i_this->mSound.startCreatureSound(Z2SE_EN_MK_CATCH_BOOM, 0, -1);
            }
            break;

        case 9:
            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 15, 5.0f, 2, 1.0f);
                i_this->field_0x6fc = 30;
                i_this->mMode = 10;
            }
            break;

        case 10:
            if (i_this->field_0x6fc == 0) {
                anm_init(i_this, 33, 10.0f, 0, 1.0f);
                i_this->mMode = 11;
            }
            break;

        case 11:
            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 34, 3.0f, 2, 1.0f);
                i_this->mMode = 12;
                i_this->field_0x6fc = 10;
            }
            break;

        case 12:
            if (i_this->field_0x6fc == 0) {
                fVar2 = 30.0f;
            }

            cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->home.angle.y + (u16)-0x8000, 2, 0x1000);
            break;
    }

    cLib_addCalc2(&i_this->speedF, fVar2, 1.0f, 5.0f);
    i_this->gravity = -10.0f;
    cMtx_YrotS(*calc_mtx, i_this->current.angle.y);
    cXyz sp2c, sp38;
    sp2c.x = 0.0f;
    sp2c.y = 0.0f;
    sp2c.z = i_this->speedF;
    MtxPosition(&sp2c, &sp38);
    i_this->speed.x = sp38.x;
    i_this->speed.z = sp38.z;
    i_this->current.pos += i_this->speed;
    i_this->speed.y += i_this->gravity;
}

/* 80717400-807174E4 0033C0 00E4+00 1/1 0/0 0/0 .text            cam_3d_morf__FP10e_mk_classf */
static void cam_3d_morf(e_mk_class* i_this, f32 param_2) {
    cLib_addCalc2(&i_this->field_0xc44.x, i_this->field_0xc5c.x, param_2, i_this->field_0xc74.x * i_this->field_0xc84);
    cLib_addCalc2(&i_this->field_0xc44.y, i_this->field_0xc5c.y, param_2, i_this->field_0xc74.y * i_this->field_0xc84);
    cLib_addCalc2(&i_this->field_0xc44.z, i_this->field_0xc5c.z, param_2, i_this->field_0xc74.z * i_this->field_0xc84);
    cLib_addCalc2(&i_this->field_0xc38.x, i_this->field_0xc50.x, param_2, i_this->field_0xc68.x * i_this->field_0xc84);
    cLib_addCalc2(&i_this->field_0xc38.y, i_this->field_0xc50.y, param_2, i_this->field_0xc68.y * i_this->field_0xc84);
    cLib_addCalc2(&i_this->field_0xc38.z, i_this->field_0xc50.z, param_2, i_this->field_0xc68.z * i_this->field_0xc84);
}

/* 807174E4-8071823C 0034A4 0D58+00 1/1 0/0 0/0 .text            demo_camera_start__FP10e_mk_class */
static void demo_camera_start(e_mk_class* i_this) {
    // NONMATCHING
    fopAc_ac_c *actor1, *actor2;
    daPy_py_c *player = (daPy_py_c*)dComIfGp_getPlayer(0);
    actor1 = fopAcM_SearchByID(i_this->field_0x708);
    camera_class *camera1 = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    camera_class *camera2 = dComIfGp_getCamera(0);
    cXyz sp34, sp40, sp4c, sp58;

    switch (i_this->field_0xc32) {
        case 0:
            break;

        case 1:
            if (!i_this->eventInfo.checkCommandDemoAccrpt()) {
                fopAcM_orderPotentialEvent(i_this, 2, 0xffff, 0);
                i_this->eventInfo.onCondition(2);
                return;
            }

            camera1->mCamera.Stop();
            i_this->field_0xc32 = 2;
            i_this->field_0xc34 = 0;
            i_this->field_0xc80 = 50.0f;
            camera1->mCamera.SetTrimSize(3);
            i_this->field_0xc90 = 2500.0f;

            daPy_getPlayerActorClass()->changeOriginalDemo();
            Z2GetAudioMgr()->bgmStreamPrepare(0x200000D);

            i_this->field_0xc38 = camera2->mCamera.mEye;
            i_this->field_0xc44 = camera2->mCamera.mCenter;
            i_this->field_0xc50.set(-271.0f, 4559.0f, -7241.0f);
            i_this->field_0xc5c.set(-70.0f, 4378.0f, -6233.0f);

            i_this->field_0xc68.x = fabsf(i_this->field_0xc50.x - i_this->field_0xc38.x);
            i_this->field_0xc68.y = fabsf(i_this->field_0xc50.y - i_this->field_0xc38.y);
            i_this->field_0xc68.z = fabsf(i_this->field_0xc50.z - i_this->field_0xc38.z);
            i_this->field_0xc74.x = fabsf(i_this->field_0xc5c.x - i_this->field_0xc44.x);
            i_this->field_0xc74.y = fabsf(i_this->field_0xc5c.y - i_this->field_0xc44.y);
            i_this->field_0xc74.z = fabsf(i_this->field_0xc5c.z - i_this->field_0xc44.z);

            dComIfGp_getEvent().startCheckSkipEdge(i_this);
            // fallthrough
        case 2:
            if (i_this->field_0xc34 == 8) {
                daPy_getPlayerActorClass()->changeDemoMode(25, 0, 0, 0);
            }

            if (i_this->field_0xc34 >= 35) {
                cam_3d_morf(i_this, 0.1f);
                cLib_addCalc2(&i_this->field_0xc84, 0.03f, 1.0f, 0.0005f);
            }

            if (i_this->field_0xc34 >= 160) {
                i_this->field_0xc34 = 0;
                i_this->field_0xc32 = 3;
            }
            break;

        case 3:
            cMtx_YrotS(*calc_mtx, STAGE_ANGLE_Y);
            sp34.x = 0.0f;
            sp34.y = 150.0f;
            sp34.z = 250.0f;
            MtxPosition(&sp34, &sp40);
            i_this->field_0xc38 = i_this->current.pos + sp40;
            i_this->field_0xc44 = i_this->current.pos;
            i_this->field_0xc44.y += 150.0f;
            if (i_this->field_0xc34 >= 60) {
                i_this->field_0xc34 = 0;
                i_this->field_0xc32 = 4;
                i_this->mMode = 2;
            }
            break;

        case 4:
            cMtx_YrotS(*calc_mtx, STAGE_ANGLE_Y);
            sp34.x = 0.0f;
            sp34.y = 150.0f;
            sp34.z = 700.0f;
            MtxPosition(&sp34, &sp40);
            i_this->field_0xc38 = i_this->current.pos + sp40;
            i_this->field_0xc44 = i_this->current.pos;
            i_this->field_0xc44.y += 230.0f;

            if (i_this->field_0xc34 == 35) {
                daPy_getPlayerActorClass()->changeDemoMode(12, 0, 1, 0);
            }

            if (i_this->field_0xc34 >= 95) {
                i_this->field_0xc34 = 0;
                i_this->field_0xc32 = 5;
                i_this->field_0xc9c = 1100.0f;
                i_this->field_0xc84 = 0.0f;
                i_this->field_0xc90 = 2500.0f;
                cMtx_YrotS(*calc_mtx, STAGE_ANGLE_Y);
                cMtx_XrotM(*calc_mtx, 0x6A4);
                sp34.x = 0.0f;
                sp34.y = 0.0f;
                sp34.z = i_this->field_0xc90;
                MtxPosition(&sp34, &sp4c);
                sp4c += i_this->current.pos;
                cMtx_YrotS(*calc_mtx, STAGE_ANGLE_Y);
                sp34.x = -300.0f;
                sp34.y = 0.0f;
                sp34.z = 0.0f;
                MtxPosition(&sp34, &sp40);
                sp4c += sp40;
                sp34.x = 100.0f;
                sp34.y = 0.0f;
                sp34.z = 200.0f;
                MtxPosition(&sp34, &sp40);
                sp40 += sp4c;
                sp40.y = player->current.pos.y;
                player->setPlayerPosAndAngle(&sp40, i_this->current.angle.y + (u16)-0x8000, 0);
            }
            break;

        case 5:
            i_this->field_0xc90 = 2450.0f;
            i_this->field_0xc9c = 500.0f;
            cMtx_YrotS(*calc_mtx, STAGE_ANGLE_Y);
            cMtx_XrotM(*calc_mtx, i_this->field_0xc9c);
            sp34.x = 0.0f;
            sp34.y = 0.0f;
            sp34.z = 3500.0f;
            MtxPosition(&sp34, &i_this->field_0xc44);
            i_this->field_0xc44 += i_this->current.pos;
            cMtx_YrotS(*calc_mtx, STAGE_ANGLE_Y);
            cMtx_XrotM(*calc_mtx, 2000);
            sp34.x = 0.0f;
            sp34.y = 0.0f;
            sp34.z = i_this->field_0xc90;
            MtxPosition(&sp34, &i_this->field_0xc38);
            i_this->field_0xc38 += i_this->current.pos;
            cMtx_YrotS(*calc_mtx, STAGE_ANGLE_Y);
            sp34.x = -300.0f;
            sp34.y = 0.0f;
            sp34.z = 0.0f;
            MtxPosition(&sp34, &sp40);
            i_this->field_0xc38 += sp40;

            if (i_this->field_0xc34 == 5) {
                daPy_getPlayerActorClass()->changeDemoMode(23, 1, 2, 0);
            }

            if (i_this->field_0xc34 >= 50) {
                i_this->field_0xc34 = 0;
                i_this->field_0xc32 = 6;
            }
            break;

        case 6:
            cMtx_YrotS(*calc_mtx, STAGE_ANGLE_Y);
            sp34.x = 0.0f;
            sp34.y = 150.0f;
            sp34.z = 700.0f;
            MtxPosition(&sp34, &sp40);
            i_this->field_0xc38 = i_this->current.pos + sp40;
            i_this->field_0xc44 = i_this->current.pos;
            i_this->field_0xc44.y += 230.0f;

            if (i_this->field_0xc34 == 2) {
                i_this->field_0x707 = 7;
            }

            if (i_this->field_0xc34 >= 10) {
                i_this->mMode = 4;
                i_this->field_0xc32 = 100;
                sp34.x = 200.0f;
                sp34.y = 0.0f;
                sp34.z = -150.0f;
                MtxPosition(&sp34, &sp40);
                sp40 += player->current.pos;
                player->setPlayerPosAndAngle(&sp40, i_this->current.angle.y + (u16)-0x8000, 0);
            }
            break;

        case 7:
            if (actor1 == NULL) break;

            i_this->field_0xc44 = actor1->current.pos;
            cMtx_YrotS(*calc_mtx, STAGE_ANGLE_Y);
            sp34.x = 300.0f;
            sp34.y = -200.0f;
            sp34.z = 1000.0f;
            MtxPosition(&sp34, &sp40);
            i_this->field_0xc38 = i_this->current.pos + sp40;
            i_this->field_0xc32 = 8;
            i_this->field_0xc34 = 0;
            // fallthrough
        case 8:
            cLib_addCalc2(&i_this->field_0xc44.x, actor1->current.pos.x, 0.2f, 100.0f);
            cLib_addCalc2(&i_this->field_0xc44.y, actor1->current.pos.y + i_this->field_0xc8c, 0.2f, 100.0f);
            cLib_addCalc2(&i_this->field_0xc44.z, actor1->current.pos.z, 0.2f, 100.0f);
            cLib_addCalc2(&i_this->field_0xc8c, -300.0f, 1.0f, 5.0f);

            i_this->field_0xc38 += (actor1->speed * 0.45f);
            i_this->field_0xc38.y -= 3.0f;
            if (i_this->field_0xc34 < 65) break;

            i_this->field_0xc32 = 9;
            i_this->field_0xc34 = 0;
            // fallthrough
        case 9:
            actor2 = fopAcM_SearchByID(i_this->mBabaChildID);
            actor1 = fopAcM_SearchByID(i_this->mBabaChildID2);
            if (i_this->field_0xc34 == 0) {
                actor2->current.pos.x = player->current.pos.x - 200.0f;
                actor2->current.pos.y = player->current.pos.y + 500.0f;
                actor2->current.pos.z = player->current.pos.z - 1200.0f;
                actor2->speed.y = 0.0f;
                actor1->current.pos.x = player->current.pos.x + 200.0f;
                actor1->current.pos.y = player->current.pos.y + 1000.0f;
                actor1->current.pos.z = player->current.pos.z - 1000.0f;
                actor1->speed.y = 0.0f;
                i_this->field_0xc44.x = actor2->current.pos.x;
                i_this->field_0xc44.z = actor2->current.pos.z;
            }

            i_this->field_0xc38.x = player->current.pos.x + 100.0f;
            i_this->field_0xc38.y = player->current.pos.y + 100.0f;
            i_this->field_0xc38.z = player->current.pos.z - 400.0f;
            i_this->field_0xc44.y = actor2->current.pos.y;

            cLib_addCalc2(&i_this->field_0xc44.x, actor2->current.pos.x + 100.0f, 0.1f, 50.0f);
            cLib_addCalc2(&i_this->field_0xc44.z, actor2->current.pos.z, 0.1f, 50.0f);

            if (i_this->field_0xc34 <= 60) {
                actor1->current.pos -= actor1->speed;
            }

            if (i_this->field_0xc34 >= 80) {
                i_this->field_0xc32 = 10;
                i_this->field_0xc34 = 0;
            }
            break;

        case 10:
            cMtx_YrotS(*calc_mtx, STAGE_ANGLE_Y);
            sp34.x = 0.0f;
            sp34.y = 150.0f;
            sp34.z = 700.0f;
            MtxPosition(&sp34, &sp40);
            i_this->field_0xc38 = i_this->current.pos + sp40;
            i_this->field_0xc44 = i_this->current.pos;
            i_this->field_0xc44.y += 230.0f;

            actor1 = fopAcM_SearchByID(i_this->mBabaChildID);
            actor2 = fopAcM_SearchByID(i_this->mBabaChildID2);
            actor1->current.pos.x = player->current.pos.x - 200.0f;
            actor1->current.pos.z = player->current.pos.z - 1200.0f;
            actor2->current.pos.x = player->current.pos.x + 200.0f;
            actor2->current.pos.z = player->current.pos.z - 1000.0f;
            break;

        case 11:
            if (i_this->field_0xc34 >= 30) {
                cMtx_YrotS(*calc_mtx, player->shape_angle.y);
                sp34.x = 0.0f;
                sp34.y = 200.0f;
                sp34.z = -400.0f;
                MtxPosition(&sp34, &i_this->field_0xc38);
                i_this->field_0xc38 += player->current.pos;
                i_this->field_0xc44 = player->current.pos;
                i_this->field_0xc44.y += 100.0f;
                i_this->field_0xc30 = 10;
                fopAcM_OffStatus(i_this, 0x4000);
                Z2GetAudioMgr()->subBgmStart(Z2BGM_BOOMERAMG_MONKEY);
            }

            actor1 = fopAcM_SearchByID(i_this->mBabaChildID);
            actor2 = fopAcM_SearchByID(i_this->mBabaChildID2);
            actor1->current.pos.x = player->current.pos.x - 200.0f;
            actor1->current.pos.z = player->current.pos.z - 1200.0f;
            actor2->current.pos.x = player->current.pos.x + 200.0f;
            actor2->current.pos.z = player->current.pos.z - 1000.0f;
            break;

        case 100:
            break;
    }

    if (dComIfGp_getEvent().checkSkipEdge()) {
        u8 uVar1 = fopAcM_GetParam(i_this) >> 16;
        if (uVar1 != 0xff) {
            dComIfGs_onSwitch(uVar1, fopAcM_GetRoomNo(i_this));
        }

        dStage_changeScene(2, 0.0f, 0, fopAcM_GetRoomNo(i_this), 0, -1);
    }
}

/* 8071823C-80719488 0041FC 124C+00 1/1 0/0 0/0 .text            demo_camera_end__FP10e_mk_class */
static void demo_camera_end(e_mk_class* i_this) {
    // NONMATCHING
    daPy_py_c *player = (daPy_py_c*)dComIfGp_getPlayer(0);
    fopAc_ac_c *actor = fopAcM_SearchByID(i_this->field_0x708);
    camera_class *camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    cXyz sp2c, sp38, sp44, sp50;

    switch (i_this->field_0xc32) {
        case 1:
            if (!i_this->eventInfo.checkCommandDemoAccrpt()) {
                fopAcM_orderPotentialEvent(i_this, 2, 0xffff, 0);
                i_this->eventInfo.onCondition(2);
                return;
            }

            camera->mCamera.Stop();
            i_this->field_0xc32 = 2;
            i_this->field_0xc34 = 0;
            i_this->field_0xc80 = 55.0f;
            camera->mCamera.SetTrimSize(3);
            daPy_getPlayerActorClass()->changeOriginalDemo();
            actor->current.pos.y += 10000.0f;
            Z2GetAudioMgr()->bgmStreamPrepare(0x200000E);
            dComIfGs_onStageMiddleBoss();
            // fallthrough
        case 2:
            cMtx_YrotS(*calc_mtx, i_this->shape_angle.y);
            sp2c.x = 0.0f;
            sp2c.y = 130.0f;
            sp2c.z = 0.0f;
            MtxPosition(&sp2c, &i_this->field_0xc44);
            i_this->field_0xc44 += i_this->current.pos;
            sp2c.x = 400.0f;
            sp2c.y = 100.0f;
            sp2c.z = 200.0f;
            MtxPosition(&sp2c, &i_this->field_0xc38);
            i_this->field_0xc38 += i_this->current.pos;
            sp2c.x = 0.0f;
            sp2c.y = 0.0f;
            sp2c.z = -300.0f;
            MtxPosition(&sp2c, &sp38);
            sp38 += i_this->current.pos;
            player->setPlayerPosAndAngle(&sp38, i_this->shape_angle.y, 0);

            if (i_this->field_0xc34 < 30) {
                return;
            }

            i_this->field_0xc32++;
            i_this->field_0xc34 = 0;
            return;

        case 3:
            cMtx_YrotS(*calc_mtx, i_this->shape_angle.y);
            sp2c.x = -300.0f;
            sp2c.y = 0.0f;
            sp2c.z = -150.0f;
            MtxPosition(&sp2c, &i_this->field_0xc44);
            i_this->field_0xc44 += i_this->current.pos;
            sp2c.x = 100.0f;
            sp2c.y = 1000.0f;
            sp2c.z = 0.0f;
            MtxPosition(&sp2c, &i_this->field_0xc38);
            i_this->field_0xc38 += i_this->current.pos;
            return;

        case 4:
            cMtx_YrotS(*calc_mtx, STAGE_ANGLE_Y);
            sp2c.x = 250.0f;
            sp2c.y = 0.0f;
            sp2c.z = -200.0f;
            MtxPosition(&sp2c, &i_this->field_0xc44);
            i_this->field_0xc44 += STAGE_CENTER_POS;
            sp2c.x = 250.0f;
            sp2c.y = 700.0f;
            sp2c.z = 300.0f;
            MtxPosition(&sp2c, &i_this->field_0xc38);
            i_this->field_0xc38 += STAGE_CENTER_POS;
            return;

        case 5:
            cMtx_YrotS(*calc_mtx, STAGE_ANGLE_Y);
            sp2c.x = 450.0f;
            sp2c.y = 0.0f;
            sp2c.z = -100.0f;
            MtxPosition(&sp2c, &i_this->field_0xc44);
            i_this->field_0xc44 += STAGE_CENTER_POS;
            sp2c.x = 250.0f;
            sp2c.y = 300.0f;
            sp2c.z = 300.0f;
            MtxPosition(&sp2c, &i_this->field_0xc38);
            i_this->field_0xc38 += STAGE_CENTER_POS;
            sp2c.x = 800.0f;
            sp2c.y = 100.0f;
            sp2c.z = 100.0f;
            MtxPosition(&sp2c, &sp38);
            sp38 += STAGE_CENTER_POS;
            i_this->field_0xc68.x = fabsf(sp38.x - i_this->field_0xc38.x) * 0.02f;
            i_this->field_0xc68.y = fabsf(sp38.y - i_this->field_0xc38.y) * 0.02f;
            i_this->field_0xc68.z = fabsf(sp38.z - i_this->field_0xc38.z) * 0.02f;
            i_this->field_0xc32 = 6;
            i_this->field_0xc84 = 0;
            sp2c.x = 1400.0f;
            sp2c.y = 0.0f;
            sp2c.z = 500.0f;
            MtxPosition(&sp2c, &sp38);
            sp38 += STAGE_CENTER_POS;
            player->setPlayerPosAndAngle(&sp38, i_this->shape_angle.y, 0);
            // fallthrough
        case 6:
            cLib_addCalc2(&i_this->field_0xc44.x, i_this->field_0x5e4.x, 0.1f, i_this->field_0xc84 * 20.0f);
            cLib_addCalc2(&i_this->field_0xc44.y, i_this->field_0x5e4.y + 30.0f, 0.1f, i_this->field_0xc84 * 20.0f);
            cLib_addCalc2(&i_this->field_0xc44.z, i_this->field_0x5e4.z, 0.1f, i_this->field_0xc84 * 20.0f);
            cMtx_YrotS(*calc_mtx, STAGE_ANGLE_Y);
            sp2c.x = 800.0f;
            sp2c.y = 100.0f;
            sp2c.z = 100.0f;
            MtxPosition(&sp2c, &sp38);

            sp38 += STAGE_CENTER_POS;
            cLib_addCalc2(&i_this->field_0xc84, 1.0f, 1.0f , 0.1f);

            if (9 < i_this->field_0xc34) {
                cLib_addCalc2(&i_this->field_0xc38.x, sp38.x, 0.1f, i_this->field_0xc68.x * i_this->field_0xc88);
                cLib_addCalc2(&i_this->field_0xc38.y, sp38.y, 0.1f, i_this->field_0xc68.y * i_this->field_0xc88);
                cLib_addCalc2(&i_this->field_0xc38.z, sp38.z, 0.1f, i_this->field_0xc68.z * i_this->field_0xc88);
                cLib_addCalc2(&i_this->field_0xc88, 1.0f, 1.0f, 0.1f);
            }
            
            if (i_this->field_0xc34 == 40) {
                Z2GetAudioMgr()->seStart(Z2SE_MK_DARK_INSECT_DEATH, &i_this->field_0x5e4, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
            }
            
            if (i_this->field_0xc34 < 90) {
                return;
            }

            if (i_this->field_0xc34 == 90) {
                sp2c.x = 1300.0f;
                sp2c.y = 0.0f;
                sp2c.z = 0.0f;
                MtxPosition(&sp2c, &sp38);
                sp38 += STAGE_CENTER_POS;
                player->setPlayerPosAndAngle(&sp38, i_this->shape_angle.y, 0);
                player->changeDemoMode(3, 1, 0, 0);
                sp2c.x = 170.0f;
                sp2c.y = 0.0f;
                sp2c.z = 0.0f;
                MtxPosition(&sp2c, &sp38);
                sp38 += i_this->field_0x5e4;
                player->changeDemoPos0(&sp38);
            }

            if (i_this->field_0xc34 == 130) {
                ok_anm_init(i_this, 42, 1.0f, 0, 1.0f);
            }

            if (i_this->field_0xc34 == 180) {
                i_this->field_0x60c = 0;
                cMtx_YrotS(*calc_mtx, i_this->shape_angle.y);
                sp2c.x = 0.0f;
                sp2c.y = 0.0f;
                sp2c.z = -20.0f;
                MtxPosition(&sp2c, &sp38);
                sp38 += i_this->field_0x5e4;
                fopAcM_createDisappear(i_this, &sp38, 5, 0, 0xff);
            }

            if (i_this->field_0xc34 != 248) {
                return;
            }

            i_this->field_0xc32++;
            i_this->field_0xc34 = 0;
            i_this->mMode = 5;
            cMtx_YrotS(*calc_mtx, STAGE_ANGLE_Y);
            sp2c.x = 300.0f;
            sp2c.y = 0.0f;
            sp2c.z = 300.0f;
            MtxPosition(&sp2c, &sp38);
            sp38 += STAGE_CENTER_POS;
            i_this->current.pos.x = sp38.x;
            i_this->current.pos.z = sp38.z;
            sp2c.x = 130.0f;
            sp2c.y = 100.0f;
            sp2c.z = 100.0f;
            MtxPosition(&sp2c, &i_this->field_0xc38);
            i_this->field_0xc38 += STAGE_CENTER_POS;
            i_this->field_0xc44 = i_this->current.pos;
            i_this->field_0xc44.y += 190.0f;
            sp2c.x = 400.0f;
            sp2c.y = 0.0f;
            sp2c.z = 700.0f;
            MtxPosition(&sp2c, &sp38);
            sp38 += STAGE_CENTER_POS;
            sp2c.x = STAGE_CENTER_POS.x - sp38.x;
            sp2c.z = STAGE_CENTER_POS.z - sp38.z;
            player->setPlayerPosAndAngle(&sp38, cM_atan2s(sp2c.x, sp2c.z), 0);
            i_this->current.angle.y = player->shape_angle.y;
            Z2GetAudioMgr()->bgmStreamPlay();
            return;

        case 8:
            cMtx_YrotS(*calc_mtx, STAGE_ANGLE_Y);
            sp2c.x = 500.0f;
            sp2c.y = 300.0f;
            sp2c.z = 0.0f;
            MtxPosition(&sp2c, &i_this->field_0xc44);
            i_this->field_0xc44 += STAGE_CENTER_POS;
            sp2c.x = 50.0f;
            sp2c.y = 70.0f;
            sp2c.z = 1100.0f;
            MtxPosition(&sp2c, &i_this->field_0xc38);
            i_this->field_0xc38 += STAGE_CENTER_POS;
            return;
        
        case 9:
            cMtx_YrotS(*calc_mtx, STAGE_ANGLE_Y);
            sp2c.x = 5500.0f;
            sp2c.y = 2300.0f;
            sp2c.z = -5000.0f;
            MtxPosition(&sp2c, &i_this->field_0xc44);
            i_this->field_0xc44 += STAGE_CENTER_POS;
            sp2c.x = 450.0f;
            sp2c.y = 370.0f;
            sp2c.z = -100.0f;
            MtxPosition(&sp2c,&i_this->field_0xc38);
            i_this->field_0xc38 += STAGE_CENTER_POS;
            if (i_this->field_0xc34 < 300) return;
            i_this->field_0xc32 = 10;
            i_this->field_0xc34 = 0;
            sp2c.x = 400.0f;
            sp2c.y = 0.0f;
            sp2c.z = 600.0f;
            MtxPosition(&sp2c, &sp38);
            sp38 += STAGE_CENTER_POS;
            sp2c.x = STAGE_CENTER_POS.x - player->current.pos.x;
            sp2c.z = STAGE_CENTER_POS.z - player->current.pos.z;
            player->setPlayerPosAndAngle(&sp38, cM_atan2s(sp2c.x, sp2c.z), 0);
            return;

        case 10:
            cMtx_YrotS(*calc_mtx, STAGE_ANGLE_Y);
            sp2c.x = 0.0f;
            sp2c.y = 300.0f;
            sp2c.z = 100.0f;
            MtxPosition(&sp2c, &i_this->field_0xc44);
            i_this->field_0xc44 += STAGE_CENTER_POS;
            sp2c.x = 800.0f;
            sp2c.y = 0.0f;;
            sp2c.z = 500.0f;
            MtxPosition(&sp2c ,&sp38);
            sp38 += STAGE_CENTER_POS;
            i_this->field_0xc74.x = fabsf(sp38.x - i_this->field_0xc44.x) * 0.01f;
            i_this->field_0xc74.y = fabsf(sp38.y - i_this->field_0xc44.y) * 0.01f;
            i_this->field_0xc74.z = fabsf(sp38.z - i_this->field_0xc44.z) * 0.01f;
            sp2c.x = 450.0f;
            sp2c.y = 70.0f;
            sp2c.z = 900.0f;
            MtxPosition(&sp2c, &i_this->field_0xc38);
            i_this->field_0xc38 += STAGE_CENTER_POS;
            sp2c.x = -150.0f;
            sp2c.y = 45.0f;
            sp2c.z = 700.0f;
            MtxPosition(&sp2c, &sp38);
            sp38 += STAGE_CENTER_POS;
            i_this->field_0xc68.x = fabsf(sp38.x - i_this->field_0xc38.x) * 0.01f;
            i_this->field_0xc68.y = fabsf(sp38.y - i_this->field_0xc38.y) * 0.01f;
            i_this->field_0xc68.z = fabsf(sp38.z - i_this->field_0xc38.z) * 0.01f;
            i_this->field_0xc84 = 0.0f;
            i_this->field_0xc32 = 11;
            // fallthrough
        case 11:
            cMtx_YrotS(*calc_mtx, STAGE_ANGLE_Y);
            sp2c.x = 800.0f;
            sp2c.y = 0.0f;
            sp2c.z = 500.0f;
            MtxPosition(&sp2c, &sp38);
            sp38 += STAGE_CENTER_POS;
            cLib_addCalc2(&i_this->field_0xc44.x, sp38.x, 0.1f, i_this->field_0xc74.x * i_this->field_0xc84);
            cLib_addCalc2(&i_this->field_0xc44.y, sp38.y, 0.1f, i_this->field_0xc74.y * i_this->field_0xc84);
            cLib_addCalc2(&i_this->field_0xc44.z, sp38.z, 0.1f, i_this->field_0xc74.z * i_this->field_0xc84);
            sp2c.x = -150.0f;
            sp2c.y = 45.0f;
            sp2c.z = 700.0f;
            MtxPosition(&sp2c, &sp38);
            sp38 += STAGE_CENTER_POS;
            cLib_addCalc2(&i_this->field_0xc38.x, sp38.x, 0.1f, i_this->field_0xc68.x * i_this->field_0xc84);
            cLib_addCalc2(&i_this->field_0xc38.y, sp38.y, 0.1f, i_this->field_0xc68.y * i_this->field_0xc84);
            cLib_addCalc2(&i_this->field_0xc38.z, sp38.z, 0.1f, i_this->field_0xc68.z * i_this->field_0xc84);
            cLib_addCalc2(&i_this->field_0xc84, 0.5f, 1.0f, 0.02f);

            if (i_this->field_0xc34 == 2) {
                fopAc_ac_c *local_b0 = fopAcM_SearchByID(i_this->field_0x708);
                sp2c.x = 50.0f;
                sp2c.y = 10.0f;
                sp2c.z = 700.0f;
                MtxPosition(&sp2c, &local_b0->current.pos);
                local_b0->current.pos += STAGE_CENTER_POS;
                local_b0->current.angle.y = 0;
                local_b0->shape_angle.y = STAGE_ANGLE_Y;
            }

            if (i_this->field_0xc34 == 200) {
                player->changeDemoMode(1, 3, 0, 0);
                player->changeDemoParam0(3);
                dComIfGp_getEvent().setPtT(actor);
            }

            if (i_this->field_0xc34 != 250) {
                return;
            }

            i_this->field_0xc32 = 20;
            i_this->field_0xc34 = 0;
            return;

        case 20:
            sp2c = actor->current.pos - player->current.pos;
            if (i_this->field_0xc34 == 3) {
                player->changeDemoMode(3, 1, 0, 0);
                cMtx_YrotS(*calc_mtx, cM_atan2s(sp2c.x, sp2c.z));
                sp2c.x = -20.0f;
                sp2c.y = 0.0f;
                sp2c.z = 200.0f;
                MtxPosition(&sp2c, &sp38);
                sp38 += player->current.pos;
                player->changeDemoPos0(&sp38);
                sp2c.z = 10000.0f;
                MtxPosition(&sp2c, &sp38);
                i_this->current.pos = sp38;
            }

            sp38 = actor->current.pos - player->eyePos;
            i_this->current.pos = player->eyePos + (sp38 * 20.0f);
            if (i_this->field_0xc34 != 20) {
                return;
            }

            actor->health = 1;
            i_this->field_0xc32 = 21;
            i_this->field_0xc34 = 0;
            i_this->field_0xc84 = 0.0f;
            return;

        case 21:
            cLib_addCalc2(&i_this->field_0xc44.y, actor->current.pos.y - 20.0f, 0.2f, i_this->field_0xc84 * 200.0f);
            cLib_addCalc2(&i_this->field_0xc44.x, actor->current.pos.x, 0.4f, i_this->field_0xc84 * 200.0f);
            cLib_addCalc2(&i_this->field_0xc44.z, actor->current.pos.z, 0.4f, i_this->field_0xc84 * 200.0f);
            cLib_addCalc2(&i_this->field_0xc38.y, player->current.pos.y + 110.0f, 0.1f, i_this->field_0xc84 * 10.0f);
            cLib_addCalc2(&i_this->field_0xc84, 1.0f, 1.0f, 0.02f);
            sp38 = actor->current.pos - player->eyePos;
            i_this->current.pos = player->eyePos + (sp38 * 20.0f);
            if (i_this->field_0xc34 < 70) {
                return;
            }

            if (i_this->field_0xc34 == 70) {
                i_this->mMsgFlow.init(i_this, 102, 0, NULL);
            }

            if (i_this->mMsgFlow.doFlow(i_this, NULL, 0) == 0) {
                return;
            }

            actor->health = 1;
            return;

        case 22:
            player->changeDemoMode(28, 0, 0, 0);
            i_this->field_0xc32++;
            i_this->field_0xc34 = 0;
            i_this->mSound.startCreatureSound(Z2SE_EN_MK_CATCH_BOOM, 0, -1);
            break;

        default:
        case 100:
            return;
    }

    cLib_addCalc2(&i_this->field_0xc44.x, player->current.pos.x, 0.4f, i_this->field_0xc84 * 200.0f);
    cLib_addCalc2(&i_this->field_0xc44.z, player->current.pos.z, 0.4f, i_this->field_0xc84 * 200.0f);

    if (i_this->field_0xc34 == 20) {
        fopAcM_createItemForMidBoss(&player->current.pos, 64, fopAcM_GetRoomNo(i_this), 0, 0, 0, -1);
        i_this->field_0xc30 = 10;
        i_this->current.pos.y += 20000.0f;
        target_info_count = 0;
        fpcM_Search(s_h_sub,i_this);
        fopAcM_delete(static_cast<fopAc_ac_c*>(target_info[0]));
        fopAcM_delete(static_cast<fopAc_ac_c*>(target_info[7]));
    }
}

/* 80719488-807194E0 005448 0058+00 2/2 0/0 0/0 .text            s_ks_sub__FPvPv */
static void s_ks_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 807194E0-80719540 0054A0 0060+00 1/1 0/0 0/0 .text            s_brg_sub__FPvPv */
static void s_brg_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80719540-80719594 005500 0054+00 1/1 0/0 0/0 .text            s_brg_sub2__FPvPv */
static void s_brg_sub2(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071C6B8-8071C6BC 000174 0004+00 0/1 0/0 0/0 .rodata          @5961 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5961 = -711.0f;
COMPILER_STRIP_GATE(0x8071C6B8, &lit_5961);
#pragma pop

/* 8071C6BC-8071C6C0 000178 0004+00 0/1 0/0 0/0 .rodata          @5962 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5962 = 3588.0f;
COMPILER_STRIP_GATE(0x8071C6BC, &lit_5962);
#pragma pop

/* 8071C6C0-8071C6C4 00017C 0004+00 0/1 0/0 0/0 .rodata          @5963 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5963 = 2730.0f;
COMPILER_STRIP_GATE(0x8071C6C0, &lit_5963);
#pragma pop

/* 8071C6C4-8071C6C8 000180 0004+00 0/1 0/0 0/0 .rodata          @5964 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5964 = 116.0f;
COMPILER_STRIP_GATE(0x8071C6C4, &lit_5964);
#pragma pop

/* 8071C6C8-8071C6CC 000184 0004+00 0/1 0/0 0/0 .rodata          @5965 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5965 = 3400.0f;
COMPILER_STRIP_GATE(0x8071C6C8, &lit_5965);
#pragma pop

/* 8071C6CC-8071C6D0 000188 0004+00 0/1 0/0 0/0 .rodata          @5966 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5966 = 4597.0f;
COMPILER_STRIP_GATE(0x8071C6CC, &lit_5966);
#pragma pop

/* 8071C6D0-8071C6D4 00018C 0004+00 0/1 0/0 0/0 .rodata          @5967 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5967 = -291.0f;
COMPILER_STRIP_GATE(0x8071C6D0, &lit_5967);
#pragma pop

/* 8071C6D4-8071C6D8 000190 0004+00 0/1 0/0 0/0 .rodata          @5968 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5968 = 3256.0f;
COMPILER_STRIP_GATE(0x8071C6D4, &lit_5968);
#pragma pop

/* 8071C6D8-8071C6DC 000194 0004+00 0/1 0/0 0/0 .rodata          @5969 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5969 = 2640.0f;
COMPILER_STRIP_GATE(0x8071C6D8, &lit_5969);
#pragma pop

/* 8071C6DC-8071C6E0 000198 0004+00 0/1 0/0 0/0 .rodata          @5970 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5970 = 1060.0f;
COMPILER_STRIP_GATE(0x8071C6DC, &lit_5970);
#pragma pop

/* 8071C6E0-8071C6E4 00019C 0004+00 0/1 0/0 0/0 .rodata          @5971 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5971 = 3795.0f;
COMPILER_STRIP_GATE(0x8071C6E0, &lit_5971);
#pragma pop

/* 8071C6E4-8071C6E8 0001A0 0004+00 0/1 0/0 0/0 .rodata          @5972 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5972 = 4086.0f;
COMPILER_STRIP_GATE(0x8071C6E4, &lit_5972);
#pragma pop

/* 8071C6E8-8071C6EC 0001A4 0004+00 0/1 0/0 0/0 .rodata          @5973 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5973 = 0x3C75C28F;
COMPILER_STRIP_GATE(0x8071C6E8, &lit_5973);
#pragma pop

/* 8071C6EC-8071C6F0 0001A8 0004+00 0/1 0/0 0/0 .rodata          @5974 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5974 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x8071C6EC, &lit_5974);
#pragma pop

/* 8071C6F0-8071C6F4 0001AC 0004+00 0/1 0/0 0/0 .rodata          @5975 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5975 = 3300.0f;
COMPILER_STRIP_GATE(0x8071C6F0, &lit_5975);
#pragma pop

/* 8071C6F4-8071C6F8 0001B0 0004+00 0/1 0/0 0/0 .rodata          @5976 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5976 = 4326.0f;
COMPILER_STRIP_GATE(0x8071C6F4, &lit_5976);
#pragma pop

/* 8071C6F8-8071C6FC 0001B4 0004+00 0/1 0/0 0/0 .rodata          @5977 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5977 = 3350.0f;
COMPILER_STRIP_GATE(0x8071C6F8, &lit_5977);
#pragma pop

/* 8071C6FC-8071C700 0001B8 0004+00 0/1 0/0 0/0 .rodata          @5978 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5978 = 220.0f;
COMPILER_STRIP_GATE(0x8071C6FC, &lit_5978);
#pragma pop

/* 8071C700-8071C704 0001BC 0004+00 0/1 0/0 0/0 .rodata          @5979 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5979 = 90.0f;
COMPILER_STRIP_GATE(0x8071C700, &lit_5979);
#pragma pop

/* 8071C704-8071C708 0001C0 0004+00 0/1 0/0 0/0 .rodata          @5980 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5980 = -477.0f;
COMPILER_STRIP_GATE(0x8071C704, &lit_5980);
#pragma pop

/* 8071C708-8071C70C 0001C4 0004+00 0/1 0/0 0/0 .rodata          @5981 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5981 = 3119.0f;
COMPILER_STRIP_GATE(0x8071C708, &lit_5981);
#pragma pop

/* 8071C70C-8071C710 0001C8 0004+00 0/1 0/0 0/0 .rodata          @5982 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5982 = 1643.0f;
COMPILER_STRIP_GATE(0x8071C70C, &lit_5982);
#pragma pop

/* 8071C710-8071C714 0001CC 0004+00 0/1 0/0 0/0 .rodata          @5983 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5983 = 1600.0f;
COMPILER_STRIP_GATE(0x8071C710, &lit_5983);
#pragma pop

/* 8071C714-8071C718 0001D0 0004+00 0/1 0/0 0/0 .rodata          @5984 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5984 = 3200.0f;
COMPILER_STRIP_GATE(0x8071C714, &lit_5984);
#pragma pop

/* 8071C718-8071C71C 0001D4 0004+00 0/1 0/0 0/0 .rodata          @5985 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5985 = 550.0f;
COMPILER_STRIP_GATE(0x8071C718, &lit_5985);
#pragma pop

/* 8071C71C-8071C720 0001D8 0004+00 0/1 0/0 0/0 .rodata          @5986 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5986 = 3373.0f;
COMPILER_STRIP_GATE(0x8071C71C, &lit_5986);
#pragma pop

/* 8071C720-8071C724 0001DC 0004+00 0/1 0/0 0/0 .rodata          @5987 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5987 = -282.0f;
COMPILER_STRIP_GATE(0x8071C720, &lit_5987);
#pragma pop

/* 8071C724-8071C728 0001E0 0004+00 0/1 0/0 0/0 .rodata          @5988 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5988 = 2534.0f;
COMPILER_STRIP_GATE(0x8071C724, &lit_5988);
#pragma pop

/* 8071C728-8071C72C 0001E4 0004+00 0/1 0/0 0/0 .rodata          @5989 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5989 = 3147.0f;
COMPILER_STRIP_GATE(0x8071C728, &lit_5989);
#pragma pop

/* 8071C72C-8071C730 0001E8 0004+00 0/1 0/0 0/0 .rodata          @5990 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5990 = 3310.0f;
COMPILER_STRIP_GATE(0x8071C72C, &lit_5990);
#pragma pop

/* 8071C730-8071C734 0001EC 0004+00 0/1 0/0 0/0 .rodata          @5991 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5991 = 3427.0f;
COMPILER_STRIP_GATE(0x8071C730, &lit_5991);
#pragma pop

/* 8071C734-8071C738 0001F0 0004+00 0/1 0/0 0/0 .rodata          @5992 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5992 = 4.0f;
COMPILER_STRIP_GATE(0x8071C734, &lit_5992);
#pragma pop

/* 8071C738-8071C73C 0001F4 0004+00 0/1 0/0 0/0 .rodata          @5993 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5993 = 3393.0f;
COMPILER_STRIP_GATE(0x8071C738, &lit_5993);
#pragma pop

/* 8071C73C-8071C740 0001F8 0004+00 0/1 0/0 0/0 .rodata          @5994 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5994 = 4180.0f;
COMPILER_STRIP_GATE(0x8071C73C, &lit_5994);
#pragma pop

/* 8071C740-8071C744 0001FC 0004+00 0/1 0/0 0/0 .rodata          @5995 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5995 = -131.0f;
COMPILER_STRIP_GATE(0x8071C740, &lit_5995);
#pragma pop

/* 8071C744-8071C748 000200 0004+00 0/1 0/0 0/0 .rodata          @5996 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5996 = 3452.0f;
COMPILER_STRIP_GATE(0x8071C744, &lit_5996);
#pragma pop

/* 8071C748-8071C74C 000204 0004+00 0/1 0/0 0/0 .rodata          @5997 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5997 = 4552.0f;
COMPILER_STRIP_GATE(0x8071C748, &lit_5997);
#pragma pop

/* 8071C74C-8071C750 000208 0004+00 0/1 0/0 0/0 .rodata          @5998 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5998 = 3422.0f;
COMPILER_STRIP_GATE(0x8071C74C, &lit_5998);
#pragma pop

/* 8071C750-8071C754 00020C 0004+00 0/1 0/0 0/0 .rodata          @5999 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5999 = 4520.0f;
COMPILER_STRIP_GATE(0x8071C750, &lit_5999);
#pragma pop

/* 8071C754-8071C758 000210 0004+00 0/1 0/0 0/0 .rodata          @6000 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6000 = 343.0f;
COMPILER_STRIP_GATE(0x8071C754, &lit_6000);
#pragma pop

/* 8071C758-8071C75C 000214 0004+00 0/1 0/0 0/0 .rodata          @6001 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6001 = 4271.0f;
COMPILER_STRIP_GATE(0x8071C758, &lit_6001);
#pragma pop

/* 80719594-8071A06C 005554 0AD8+00 1/1 0/0 0/0 .text            demo_camera_r04__FP10e_mk_class */
static void demo_camera_r04(e_mk_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071C75C-8071C760 000218 0004+00 0/2 0/0 0/0 .rodata          @6052 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6052 = -500.0f;
COMPILER_STRIP_GATE(0x8071C75C, &lit_6052);
#pragma pop

/* 8071C760-8071C764 00021C 0004+00 0/1 0/0 0/0 .rodata          @6053 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6053 = -120.0f;
COMPILER_STRIP_GATE(0x8071C760, &lit_6053);
#pragma pop

/* 8071A06C-8071A22C 00602C 01C0+00 1/1 0/0 0/0 .text            demo_camera_bohit__FP10e_mk_class
 */
static void demo_camera_bohit(e_mk_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071C7E8-8071C7E8 0002A4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8071C7ED = "D_MN05";
#pragma pop

/* 8071A22C-8071A538 0061EC 030C+00 2/1 0/0 0/0 .text            demo_camera__FP10e_mk_class */
static void demo_camera(e_mk_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071C764-8071C768 000220 0004+00 0/0 0/0 0/0 .rodata          @6175 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6175 = 7.5f;
COMPILER_STRIP_GATE(0x8071C764, &lit_6175);
#pragma pop

/* 8071C768-8071C76C 000224 0004+00 1/1 0/0 0/0 .rodata          @6243 */
SECTION_RODATA static f32 const lit_6243 = 2.5f;
COMPILER_STRIP_GATE(0x8071C768, &lit_6243);

/* 8071A538-8071A808 0064F8 02D0+00 2/1 0/0 0/0 .text            action__FP10e_mk_class */
static void action(e_mk_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071C76C-8071C770 000228 0004+00 0/1 0/0 0/0 .rodata          @6458 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6458 = 13.0f;
COMPILER_STRIP_GATE(0x8071C76C, &lit_6458);
#pragma pop

/* 8071C770-8071C774 00022C 0004+00 0/1 0/0 0/0 .rodata          @6459 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6459 = 21.0f;
COMPILER_STRIP_GATE(0x8071C770, &lit_6459);
#pragma pop

/* 8071C774-8071C778 000230 0004+00 0/1 0/0 0/0 .rodata          @6460 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6460 = 31.0f;
COMPILER_STRIP_GATE(0x8071C774, &lit_6460);
#pragma pop

/* 8071C778-8071C77C 000234 0004+00 0/1 0/0 0/0 .rodata          @6461 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6461 = 41.0f;
COMPILER_STRIP_GATE(0x8071C778, &lit_6461);
#pragma pop

/* 8071C77C-8071C780 000238 0004+00 0/1 0/0 0/0 .rodata          @6462 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6462 = 64.0f;
COMPILER_STRIP_GATE(0x8071C77C, &lit_6462);
#pragma pop

/* 8071C780-8071C784 00023C 0004+00 0/1 0/0 0/0 .rodata          @6463 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6463 = 32.0f;
COMPILER_STRIP_GATE(0x8071C780, &lit_6463);
#pragma pop

/* 8071C784-8071C788 000240 0004+00 0/1 0/0 0/0 .rodata          @6464 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6464 = 8.0f;
COMPILER_STRIP_GATE(0x8071C784, &lit_6464);
#pragma pop

/* 8071C788-8071C78C 000244 0004+00 0/1 0/0 0/0 .rodata          @6465 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6465 = 38.0f;
COMPILER_STRIP_GATE(0x8071C788, &lit_6465);
#pragma pop

/* 8071C78C-8071C790 000248 0004+00 0/1 0/0 0/0 .rodata          @6466 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6466 = 6.0f;
COMPILER_STRIP_GATE(0x8071C78C, &lit_6466);
#pragma pop

/* 8071A808-8071AF14 0067C8 070C+00 1/1 0/0 0/0 .text            anm_se_set__FP10e_mk_class */
static void anm_se_set(e_mk_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071C790-8071C794 00024C 0004+00 0/1 0/0 0/0 .rodata          @6730 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6730 = 32768.0f;
COMPILER_STRIP_GATE(0x8071C790, &lit_6730);
#pragma pop

/* 8071C794-8071C798 000250 0004+00 0/1 0/0 0/0 .rodata          @6731 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6731 = 60.0f;
COMPILER_STRIP_GATE(0x8071C794, &lit_6731);
#pragma pop

/* 8071C798-8071C79C 000254 0004+00 0/1 0/0 0/0 .rodata          @6732 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6732 = 0x413FD70A;
COMPILER_STRIP_GATE(0x8071C798, &lit_6732);
#pragma pop

/* 8071C79C-8071C7A0 000258 0004+00 0/1 0/0 0/0 .rodata          @6733 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6733 = -30.0f;
COMPILER_STRIP_GATE(0x8071C79C, &lit_6733);
#pragma pop

/* 8071C7A0-8071C7A4 00025C 0004+00 0/1 0/0 0/0 .rodata          @6734 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6734 = -2.0f / 5.0f;
COMPILER_STRIP_GATE(0x8071C7A0, &lit_6734);
#pragma pop

/* 8071C7A4-8071C7A8 000260 0004+00 0/1 0/0 0/0 .rodata          @6735 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6735 = 100000.0f;
COMPILER_STRIP_GATE(0x8071C7A4, &lit_6735);
#pragma pop

/* 8071AF14-8071B9C4 006ED4 0AB0+00 2/1 0/0 0/0 .text            daE_MK_Execute__FP10e_mk_class */
static void daE_MK_Execute(e_mk_class* param_0) {
    // NONMATCHING
}

/* 8071B9C4-8071B9CC 007984 0008+00 1/0 0/0 0/0 .text            daE_MK_IsDelete__FP10e_mk_class */
static bool daE_MK_IsDelete(e_mk_class* param_0) {
    return true;
}

/* 8071B9CC-8071BA34 00798C 0068+00 1/0 0/0 0/0 .text            daE_MK_Delete__FP10e_mk_class */
static void daE_MK_Delete(e_mk_class* param_0) {
    // NONMATCHING
}

/* 8071BA34-8071BCCC 0079F4 0298+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 8071BCCC-8071BD14 007C8C 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071C7A8-8071C7AC 000264 0004+00 0/1 0/0 0/0 .rodata          @6943 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6943 = 80.0f;
COMPILER_STRIP_GATE(0x8071C7A8, &lit_6943);
#pragma pop

/* 8071C7AC-8071C7B0 000268 0004+00 0/1 0/0 0/0 .rodata          @6944 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6944 = 3900.0f;
COMPILER_STRIP_GATE(0x8071C7AC, &lit_6944);
#pragma pop

/* 8071C7B0-8071C7B4 00026C 0004+00 0/1 0/0 0/0 .rodata          @6945 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6945 = -3000.0f;
COMPILER_STRIP_GATE(0x8071C7B0, &lit_6945);
#pragma pop

/* 8071C7B4-8071C7B8 000270 0004+00 0/1 0/0 0/0 .rodata          @6946 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6946 = -21.0f;
COMPILER_STRIP_GATE(0x8071C7B4, &lit_6946);
#pragma pop

/* 8071C7B8-8071C7BC 000274 0004+00 0/1 0/0 0/0 .rodata          @6947 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6947 = 5114.0f;
COMPILER_STRIP_GATE(0x8071C7B8, &lit_6947);
#pragma pop

/* 8071C7BC-8071C7C0 000278 0004+00 0/1 0/0 0/0 .rodata          @6948 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6948 = -4941.0f;
COMPILER_STRIP_GATE(0x8071C7BC, &lit_6948);
#pragma pop

/* 8071C7C0-8071C7C4 00027C 0004+00 0/1 0/0 0/0 .rodata          @6949 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6949 = -4401.0f;
COMPILER_STRIP_GATE(0x8071C7C0, &lit_6949);
#pragma pop

/* 8071C7C4-8071C7C8 000280 0004+00 0/1 0/0 0/0 .rodata          @6950 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6950 = -5.0f;
COMPILER_STRIP_GATE(0x8071C7C4, &lit_6950);
#pragma pop

/* 8071C7E8-8071C7E8 0002A4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8071C7F4 = "D_MN05B";
#pragma pop

/* 8071BD14-8071C190 007CD4 047C+00 1/0 0/0 0/0 .text            daE_MK_Create__FP10fopAc_ac_c */
static void daE_MK_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 8071C190-8071C2EC 008150 015C+00 1/1 0/0 0/0 .text            __ct__10e_mk_classFv */
e_mk_class::e_mk_class() {
    // NONMATCHING
}

/* 8071C2EC-8071C334 0082AC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 8071C334-8071C37C 0082F4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 8071C37C-8071C3EC 00833C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

// /* 8071C3EC-8071C434 0083AC 0048+00 2/1 0/0 0/0 .text            __dt__12daE_MK_HIO_cFv */
// daE_MK_HIO_c::~daE_MK_HIO_c() {
//     // NONMATCHING
// }

/* ############################################################################################## */
/* 8071C7C8-8071C7CC 000284 0004+00 0/1 0/0 0/0 .rodata          @7096 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7096 = 1050.0f;
COMPILER_STRIP_GATE(0x8071C7C8, &lit_7096);
#pragma pop

/* 8071C7CC-8071C7D0 000288 0004+00 0/1 0/0 0/0 .rodata          @7097 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7097 = -450.0f;
COMPILER_STRIP_GATE(0x8071C7CC, &lit_7097);
#pragma pop

/* 8071C7D0-8071C7D4 00028C 0004+00 0/1 0/0 0/0 .rodata          @7098 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7098 = 1262.0f;
COMPILER_STRIP_GATE(0x8071C7D0, &lit_7098);
#pragma pop

/* 8071C7D4-8071C7D8 000290 0004+00 0/1 0/0 0/0 .rodata          @7099 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7099 = 1030.0f;
COMPILER_STRIP_GATE(0x8071C7D4, &lit_7099);
#pragma pop

/* 8071C7D8-8071C7DC 000294 0004+00 0/1 0/0 0/0 .rodata          @7100 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7100 = -1665.0f;
COMPILER_STRIP_GATE(0x8071C7D8, &lit_7100);
#pragma pop

/* 8071C7DC-8071C7E0 000298 0004+00 0/1 0/0 0/0 .rodata          @7101 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7101 = 2400.0f;
COMPILER_STRIP_GATE(0x8071C7DC, &lit_7101);
#pragma pop

/* 8071C7E0-8071C7E4 00029C 0004+00 0/1 0/0 0/0 .rodata          @7102 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7102 = 1115.0f;
COMPILER_STRIP_GATE(0x8071C7E0, &lit_7102);
#pragma pop

/* 8071C7E4-8071C7E8 0002A0 0004+00 0/1 0/0 0/0 .rodata          @7103 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7103 = -1850.0f;
COMPILER_STRIP_GATE(0x8071C7E4, &lit_7103);
#pragma pop

/* 8071C434-8071C520 0083F4 00EC+00 0/0 1/0 0/0 .text            __sinit_d_a_e_mk_cpp */
void __sinit_d_a_e_mk_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x8071C434, __sinit_d_a_e_mk_cpp);
#pragma pop

/* 8071C520-8071C528 0084E0 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_8071C520() {
    // NONMATCHING
}

/* 8071C528-8071C530 0084E8 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_8071C528() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071CB94-8071CB98 000134 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_8071CB94[4];
#pragma pop

/* 8071CB98-8071CB9C 000138 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_8071CB98[4];
#pragma pop

/* 8071CB9C-8071CBA0 00013C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_8071CB9C[4];
#pragma pop

/* 8071CBA0-8071CBA4 000140 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8071CBA0[4];
#pragma pop

/* 8071CBA4-8071CBA8 000144 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8071CBA4[4];
#pragma pop

/* 8071CBA8-8071CBAC 000148 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8071CBA8[4];
#pragma pop

/* 8071CBAC-8071CBB0 00014C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_8071CBAC[4];
#pragma pop

/* 8071CBB0-8071CBB4 000150 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_8071CBB0[4];
#pragma pop

/* 8071CBB4-8071CBB8 000154 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_8071CBB4[4];
#pragma pop

/* 8071CBB8-8071CBBC 000158 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_8071CBB8[4];
#pragma pop

/* 8071CBBC-8071CBC0 00015C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_8071CBBC[4];
#pragma pop

/* 8071CBC0-8071CBC4 000160 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8071CBC0[4];
#pragma pop

/* 8071CBC4-8071CBC8 000164 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_8071CBC4[4];
#pragma pop

/* 8071CBC8-8071CBCC 000168 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8071CBC8[4];
#pragma pop

/* 8071CBCC-8071CBD0 00016C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8071CBCC[4];
#pragma pop

/* 8071CBD0-8071CBD4 000170 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_8071CBD0[4];
#pragma pop

/* 8071CBD4-8071CBD8 000174 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_8071CBD4[4];
#pragma pop

/* 8071CBD8-8071CBDC 000178 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8071CBD8[4];
#pragma pop

/* 8071CBDC-8071CBE0 00017C 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_8071CBDC[4];
#pragma pop

/* 8071CBE0-8071CBE4 000180 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_8071CBE0[4];
#pragma pop

/* 8071CBE4-8071CBE8 000184 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_8071CBE4[4];
#pragma pop

/* 8071CBE8-8071CBEC 000188 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8071CBE8[4];
#pragma pop

/* 8071CBEC-8071CBF0 00018C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8071CBEC[4];
#pragma pop

/* 8071CBF0-8071CBF4 000190 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8071CBF0[4];
#pragma pop

/* 8071CBF4-8071CBF8 000194 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_8071CBF4[4];
#pragma pop

/* 8071C7E8-8071C7E8 0002A4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/* 8071C9B8-8071C9D8 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_MK_Method */
static actor_method_class l_daE_MK_Method = {
    (process_method_func)daE_MK_Create,
    (process_method_func)daE_MK_Delete,
    (process_method_func)daE_MK_Execute,
    (process_method_func)daE_MK_IsDelete,
    (process_method_func)daE_MK_Draw,
};

/* 8071C9D8-8071CA08 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_MK */
extern actor_process_profile_definition g_profile_E_MK = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_MK,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(e_mk_class),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  165,                    // mPriority
  &l_daE_MK_Method,       // sub_method
  0x00040100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
