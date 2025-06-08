/**
 * @file d_a_e_sm2.cpp
 * 
*/

#include "d/actor/d_a_e_sm2.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
UNK_REL_DATA;
#include "f_op/f_op_actor_enemy.h"

//
// Forward References:
//

extern "C" void __ct__13daE_SM2_HIO_cFv();
extern "C" void __dt__18fOpAcm_HIO_entry_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" static void daE_SM2_Draw__FP11e_sm2_class();
extern "C" static void size_get__FUc();
extern "C" static void sm2_delete__FP11e_sm2_class();
extern "C" static void cc_stts_init__FP11e_sm2_class();
extern "C" static void s_s_sub__FPvPv();
extern "C" static void pl_check__FP11e_sm2_classf();
extern "C" static void normal_move__FP11e_sm2_class();
extern "C" static void attack__FP11e_sm2_class();
extern "C" static void combine__FP11e_sm2_class();
extern "C" static void roof__FP11e_sm2_class();
extern "C" static void water__FP11e_sm2_class();
extern "C" static void eff_set__FP11e_sm2_classP4cXyzf();
extern "C" static void fail__FP11e_sm2_class();
extern "C" static void dmcalc__FP11e_sm2_class();
extern "C" static void damage_check__FP11e_sm2_class();
extern "C" static void action__FP11e_sm2_class();
extern "C" void __dt__14dBgS_ObjGndChkFv();
extern "C" static void col_set__FP11e_sm2_classSc();
extern "C" static void daE_SM2_Execute__FP11e_sm2_class();
extern "C" static bool daE_SM2_IsDelete__FP11e_sm2_class();
extern "C" static void daE_SM2_Delete__FP11e_sm2_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daE_SM2_Create__FP10fopAc_ac_c();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__13daE_SM2_HIO_cFv();
extern "C" void __sinit_d_a_e_sm2_cpp();
extern "C" static void func_8079D0E8();
extern "C" static void func_8079D0F0();
extern "C" static void func_8079D0F8();
extern "C" static void func_8079D100();
extern "C" static void func_8079D108();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__4cXyzFv();
extern "C" extern char const* const d_a_e_sm2__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void create__21mDoExt_invisibleModelFP8J3DModelUc();
extern "C" void entryDL__21mDoExt_invisibleModelFP4cXyz();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_effHamonSet__FPUlPC4cXyzff();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void fopKyM_createWpillar__FPC4cXyzfi();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void isFirstBit__21dSv_player_get_item_cCFUc();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void request__11dAttCatch_cFP10fopAc_ac_cUcfffsi();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
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
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void GetCoHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void checkItemGet__FUci();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ct__5csXyzFsss();
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
extern "C" void MtxTrans__FfffUc();
extern "C" void MtxScale__FfffUc();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __construct_array();
extern "C" void _savegpr_14();
extern "C" void _savegpr_19();
extern "C" void _savegpr_22();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_14();
extern "C" void _restgpr_19();
extern "C" void _restgpr_22();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
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
extern "C" extern u8 g_Counter[12 + 4 /* padding */];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 8079D76C-8079D780 000038 0014+00 1/1 0/0 0/0 .data            sc_d$4052 */
SECTION_DATA static u8 sc_d[20] = {
    0x3E, 0x80, 0x00, 0x00, 0x3E, 0xC0, 0x00, 0x00, 0x3F, 0x00,
    0x00, 0x00, 0x3F, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00,
};

/* 8079D780-8079D788 00004C 0005+03 0/1 0/0 0/0 .data            w_d$4075 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 w_d[5 + 3 /* padding */] = {
    0xC8,
    0xD2,
    0xE1,
    0xF0,
    0xFA,
    /* padding */
    0x00,
    0x00,
    0x00,
};
#pragma pop

/* 8079D788-8079D79C 000054 0014+00 0/1 0/0 0/0 .data            bg_h$4076 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 bg_h[20] = {
    0x42, 0x48, 0x00, 0x00, 0x42, 0x70, 0x00, 0x00, 0x42, 0x8C,
    0x00, 0x00, 0x42, 0x8C, 0x00, 0x00, 0x42, 0x8C, 0x00, 0x00,
};
#pragma pop

/* 8079D79C-8079D7B0 000068 0014+00 0/1 0/0 0/0 .data            bg_r$4077 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 bg_r[20] = {
    0x41, 0xA0, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0x42, 0x20,
    0x00, 0x00, 0x42, 0x20, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};
#pragma pop

/* 8079D7B0-8079D804 -00001 0054+00 1/1 0/0 0/0 .data            @4260 */
SECTION_DATA static void* lit_4260[21] = {
    (void*)(((char*)attack__FP11e_sm2_class) + 0x50),
    (void*)(((char*)attack__FP11e_sm2_class) + 0xF8),
    (void*)(((char*)attack__FP11e_sm2_class) + 0x19C),
    (void*)(((char*)attack__FP11e_sm2_class) + 0x284),
    (void*)(((char*)attack__FP11e_sm2_class) + 0x284),
    (void*)(((char*)attack__FP11e_sm2_class) + 0x284),
    (void*)(((char*)attack__FP11e_sm2_class) + 0x284),
    (void*)(((char*)attack__FP11e_sm2_class) + 0x284),
    (void*)(((char*)attack__FP11e_sm2_class) + 0x284),
    (void*)(((char*)attack__FP11e_sm2_class) + 0x284),
    (void*)(((char*)attack__FP11e_sm2_class) + 0x1E8),
    (void*)(((char*)attack__FP11e_sm2_class) + 0x284),
    (void*)(((char*)attack__FP11e_sm2_class) + 0x284),
    (void*)(((char*)attack__FP11e_sm2_class) + 0x284),
    (void*)(((char*)attack__FP11e_sm2_class) + 0x284),
    (void*)(((char*)attack__FP11e_sm2_class) + 0x284),
    (void*)(((char*)attack__FP11e_sm2_class) + 0x284),
    (void*)(((char*)attack__FP11e_sm2_class) + 0x284),
    (void*)(((char*)attack__FP11e_sm2_class) + 0x284),
    (void*)(((char*)attack__FP11e_sm2_class) + 0x284),
    (void*)(((char*)attack__FP11e_sm2_class) + 0x238),
};

/* 8079D804-8079D820 0000D0 001C+00 0/1 0/0 0/0 .data            e_prim_A$4433 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_prim_A[28] = {
    0xCF, 0xE6, 0xC8, 0x00, 0xFF, 0xA5, 0xA5, 0x00, 0x78, 0x96, 0xFF, 0x00, 0xFF, 0xDC,
    0x96, 0x00, 0xB4, 0x82, 0xD2, 0x00, 0xFF, 0xFF, 0xB4, 0x00, 0x14, 0x14, 0x14, 0x00,
};
#pragma pop

/* 8079D820-8079D83C 0000EC 001C+00 0/1 0/0 0/0 .data            e_env_A$4434 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_env_A[28] = {
    0x28, 0x32, 0x0F, 0x00, 0x50, 0x1E, 0x28, 0x00, 0x00, 0x23, 0x3C, 0x00, 0x50, 0x46,
    0x0F, 0x00, 0x0A, 0x00, 0x19, 0x00, 0x64, 0x64, 0x3C, 0x00, 0x14, 0x14, 0x14, 0x00,
};
#pragma pop

/* 8079D83C-8079D858 000108 001C+00 0/1 0/0 0/0 .data            e_prim_B$4435 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_prim_B[28] = {
    0x8C, 0xB4, 0x78, 0x00, 0xCD, 0x78, 0x87, 0x00, 0x5A, 0x82, 0xDC, 0x00, 0xFA, 0xE6,
    0x87, 0x00, 0x7D, 0x5A, 0xA0, 0x00, 0xFF, 0xFF, 0x96, 0x00, 0x14, 0x14, 0x14, 0x00,
};
#pragma pop

/* 8079D858-8079D874 000124 001C+00 0/1 0/0 0/0 .data            e_env_B$4436 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_env_B[28] = {
    0x14, 0x0F, 0x00, 0x00, 0x46, 0x14, 0x1E, 0x00, 0x00, 0x14, 0x32, 0x00, 0x46, 0x37,
    0x19, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x5A, 0x5A, 0x28, 0x00, 0x14, 0x14, 0x14, 0x00,
};
#pragma pop

/* 8079D874-8079D87C 000140 0007+01 1/1 0/0 0/0 .data            item_no$4476 */
SECTION_DATA static u8 item_no[7 + 1 /* padding */] = {
    0x7A,
    0x78,
    0x79,
    0x7B,
    0x7C,
    0x77,
    0x9F,
    /* padding */
    0x00,
};

/* 8079D87C-8079D888 000148 000A+02 1/1 0/0 0/0 .data            swsp_d$4525 */
SECTION_DATA static u8 swsp_d[10 + 2 /* padding */] = {
    0x17,
    0x70,
    0x15,
    0x7C,
    0x13,
    0x88,
    0x11,
    0x94,
    0x0F,
    0xA0,
    /* padding */
    0x00,
    0x00,
};

/* 8079D888-8079D8BC 000154 0031+03 0/1 0/0 0/0 .data            new_col_d */
#pragma push
#pragma force_active on
SECTION_DATA static u8 new_col_d[49 + 3 /* padding */] = {
    0x00,
    0x02,
    0x04,
    0x04,
    0x04,
    0x04,
    0x05,
    0x02,
    0x01,
    0x04,
    0x04,
    0x04,
    0x04,
    0x05,
    0x04,
    0x04,
    0x02,
    0x04,
    0x04,
    0x04,
    0x05,
    0x04,
    0x04,
    0x04,
    0x03,
    0x04,
    0x04,
    0x05,
    0x04,
    0x04,
    0x04,
    0x04,
    0x04,
    0x04,
    0x05,
    0x04,
    0x04,
    0x04,
    0x04,
    0x04,
    0x05,
    0x05,
    0x05,
    0x05,
    0x05,
    0x05,
    0x05,
    0x05,
    0x06,
    /* padding */
    0x00,
    0x00,
    0x00,
};
#pragma pop

/* 8079D8BC-8079D8D0 000188 0014+00 0/1 0/0 0/0 .data            bun_d$4675 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 bun_d[20] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00,
    0x00, 0x04, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x0C,
};
#pragma pop

/* 8079D8D0-8079D900 00019C 0030+00 0/1 0/0 0/0 .data            j_d$4676 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 j_d[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
};
#pragma pop

/* 8079D900-8079D918 0001CC 0018+00 0/1 0/0 0/0 .data            ya_d$4677 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 ya_d[24] = {
    0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x80, 0x00,
    0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x80, 0x00,
};
#pragma pop

/* 8079D918-8079D92C 0001E4 0014+00 0/1 0/0 0/0 .data            y_ad$4678 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 y_ad[20] = {
    0x41, 0xA0, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0x42, 0x20,
    0x00, 0x00, 0x42, 0x48, 0x00, 0x00, 0x42, 0x70, 0x00, 0x00,
};
#pragma pop

/* 8079D92C-8079D96C 0001F8 0040+00 0/0 0/0 0/0 .data            pf_d$4833 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 pf_d[64] = {
    0x3F, 0x66, 0x66, 0x66, 0x3F, 0x59, 0x99, 0x9A, 0x3F, 0x4C, 0xCC, 0xCD, 0x3F, 0x40, 0x00, 0x00,
    0x3F, 0x33, 0x33, 0x33, 0x3F, 0x26, 0x66, 0x66, 0x3F, 0x19, 0x99, 0x9A, 0x3F, 0x0C, 0xCC, 0xCD,
    0x3F, 0x00, 0x00, 0x00, 0x3F, 0x00, 0x00, 0x00, 0x3E, 0xE6, 0x66, 0x66, 0x3E, 0xCC, 0xCC, 0xCD,
    0x3E, 0xB3, 0x33, 0x33, 0x3E, 0x99, 0x99, 0x9A, 0x3E, 0x80, 0x00, 0x00, 0x3E, 0x4C, 0xCC, 0xCD,
};
#pragma pop

/* 8079D96C-8079D98C 000238 0020+00 0/0 0/0 0/0 .data            ps_d$4834 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 ps_d[32] = {
    0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x02, 0x00, 0x02, 0x00, 0x02, 0x00, 0x02,
    0x00, 0x02, 0x00, 0x02, 0x00, 0x02, 0x00, 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x03,
};
#pragma pop

/* 8079D98C-8079D99C 000258 0010+00 0/0 0/0 0/0 .data            cc_idx$4859 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 cc_idx[16] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x06,
};
#pragma pop

/* 8079D99C-8079D9AC 000268 0010+00 0/0 0/0 0/0 .data            cc_size$4860 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 cc_size[16] = {
    0x3F, 0x33, 0x33, 0x33, 0x3F, 0x80, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x3F, 0x33, 0x33, 0x33,
};
#pragma pop

/* 8079D9AC-8079D9B0 000278 0004+00 0/0 0/0 0/0 .data            key_eno$4861 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 key_eno[4] = {
    0x82,
    0x7A,
    0x82,
    0x7B,
};
#pragma pop

/* 8079D9B0-8079D9C4 00027C 0014+00 0/0 0/0 0/0 .data            asp$4888 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 asp[20] = {
    0x43, 0xFA, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00, 0x43, 0x96,
    0x00, 0x00, 0x43, 0x48, 0x00, 0x00, 0x42, 0xC8, 0x00, 0x00,
};
#pragma pop

/* 8079D9C4-8079D9D8 000290 0014+00 0/0 0/0 0/0 .data            asp2$4889 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 asp2[20] = {
    0x45, 0x5A, 0xC0, 0x00, 0x45, 0x3B, 0x80, 0x00, 0x45, 0x1C,
    0x40, 0x00, 0x44, 0xFA, 0x00, 0x00, 0x44, 0xBB, 0x80, 0x00,
};
#pragma pop

/* 8079D9D8-8079DA2C -00001 0054+00 1/1 0/0 0/0 .data            @5182 */
SECTION_DATA static void* lit_5182[21] = {
    (void*)(((char*)action__FP11e_sm2_class) + 0x90),
    (void*)(((char*)action__FP11e_sm2_class) + 0x9C),
    (void*)(((char*)action__FP11e_sm2_class) + 0xA8),
    (void*)(((char*)action__FP11e_sm2_class) + 0xFC),
    (void*)(((char*)action__FP11e_sm2_class) + 0xFC),
    (void*)(((char*)action__FP11e_sm2_class) + 0xFC),
    (void*)(((char*)action__FP11e_sm2_class) + 0xFC),
    (void*)(((char*)action__FP11e_sm2_class) + 0xFC),
    (void*)(((char*)action__FP11e_sm2_class) + 0xFC),
    (void*)(((char*)action__FP11e_sm2_class) + 0xFC),
    (void*)(((char*)action__FP11e_sm2_class) + 0xB8),
    (void*)(((char*)action__FP11e_sm2_class) + 0xD0),
    (void*)(((char*)action__FP11e_sm2_class) + 0xFC),
    (void*)(((char*)action__FP11e_sm2_class) + 0xFC),
    (void*)(((char*)action__FP11e_sm2_class) + 0xFC),
    (void*)(((char*)action__FP11e_sm2_class) + 0xFC),
    (void*)(((char*)action__FP11e_sm2_class) + 0xFC),
    (void*)(((char*)action__FP11e_sm2_class) + 0xFC),
    (void*)(((char*)action__FP11e_sm2_class) + 0xFC),
    (void*)(((char*)action__FP11e_sm2_class) + 0xFC),
    (void*)(((char*)action__FP11e_sm2_class) + 0xE8),
};

/* 8079DA2C-8079DA6C 0002F8 0040+00 1/1 0/0 0/0 .data            cc_sph_src$5433 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0xd}, {0xdafbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_SOFT_BODY, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0xa0}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 20.0f} // mSph
    } // mSphAttr
};

/* 8079DA6C-8079DA8C -00001 0020+00 1/0 0/0 0/0 .data            l_daE_SM2_Method */
static actor_method_class l_daE_SM2_Method = {
    (process_method_func)daE_SM2_Create__FP10fopAc_ac_c,
    (process_method_func)daE_SM2_Delete__FP11e_sm2_class,
    (process_method_func)daE_SM2_Execute__FP11e_sm2_class,
    (process_method_func)daE_SM2_IsDelete__FP11e_sm2_class,
    (process_method_func)daE_SM2_Draw__FP11e_sm2_class,
};

/* 8079DA8C-8079DABC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_SM2 */
extern actor_process_profile_definition g_profile_E_SM2 = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_SM2,             // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(e_sm2_class),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  128,                    // mPriority
  &l_daE_SM2_Method,      // sub_method
  0x00040120,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 8079DABC-8079DAC8 000388 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 8079DAC8-8079DAD4 000394 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 8079DAD4-8079DAE0 0003A0 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 8079DAE0-8079DAEC 0003AC 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8079DAEC-8079DAF8 0003B8 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 8079DAF8-8079DB1C 0003C4 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8079D108,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8079D100,
};

/* 8079DB1C-8079DB28 0003E8 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 8079DB28-8079DB58 0003F4 0030+00 2/2 0/0 0/0 .data            __vt__14dBgS_ObjGndChk */
SECTION_DATA extern void* __vt__14dBgS_ObjGndChk[12] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14dBgS_ObjGndChkFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8079D0E8,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8079D0F8,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8079D0F0,
};

/* 8079DB58-8079DB64 000424 000C+00 2/2 0/0 0/0 .data            __vt__13daE_SM2_HIO_c */
SECTION_DATA extern void* __vt__13daE_SM2_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daE_SM2_HIO_cFv,
};

/* 8079DB64-8079DB70 000430 000C+00 3/3 0/0 0/0 .data            __vt__18fOpAcm_HIO_entry_c */
SECTION_DATA extern void* __vt__18fOpAcm_HIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18fOpAcm_HIO_entry_cFv,
};

/* 8079DB70-8079DB7C 00043C 000C+00 4/4 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80798B4C-80798BA4 0000EC 0058+00 1/1 0/0 0/0 .text            __ct__13daE_SM2_HIO_cFv */
daE_SM2_HIO_c::daE_SM2_HIO_c() {
    // NONMATCHING
}

/* 80798BA4-80798C00 000144 005C+00 1/0 0/0 0/0 .text            __dt__18fOpAcm_HIO_entry_cFv */
// fOpAcm_HIO_entry_c::~fOpAcm_HIO_entry_c() {
extern "C" void __dt__18fOpAcm_HIO_entry_cFv() {
    // NONMATCHING
}

/* 80798C00-80798C48 0001A0 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
// mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" void __dt__14mDoHIO_entry_cFv() {
    // NONMATCHING
}

/* 80798C48-80798D90 0001E8 0148+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static void nodeCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8079D5DC-8079D5E0 00002C 0004+00 0/1 0/0 0/0 .rodata          @4040 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4040 = 217.0f;
COMPILER_STRIP_GATE(0x8079D5DC, &lit_4040);
#pragma pop

/* 8079D5E0-8079D5E4 000030 0004+00 0/6 0/0 0/0 .rodata          @4041 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4041 = 50.0f;
COMPILER_STRIP_GATE(0x8079D5E0, &lit_4041);
#pragma pop

/* 8079D5E4-8079D5E8 000034 0004+00 0/1 0/0 0/0 .rodata          @4042 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4042 = 2500.0f;
COMPILER_STRIP_GATE(0x8079D5E4, &lit_4042);
#pragma pop

/* 8079D5E8-8079D5EC 000038 0004+00 0/2 0/0 0/0 .rodata          @4043 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4043 = 700.0f;
COMPILER_STRIP_GATE(0x8079D5E8, &lit_4043);
#pragma pop

/* 80798D90-80799070 000330 02E0+00 1/0 0/0 0/0 .text            daE_SM2_Draw__FP11e_sm2_class */
static void daE_SM2_Draw(e_sm2_class* param_0) {
    // NONMATCHING
}

/* 80799070-80799084 000610 0014+00 4/4 0/0 0/0 .text            size_get__FUc */
static void size_get(u8 param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8079D5EC-8079D5F0 00003C 0004+00 0/2 0/0 0/0 .rodata          @4069 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4069 = 30.0f;
COMPILER_STRIP_GATE(0x8079D5EC, &lit_4069);
#pragma pop

/* 8079D5F0-8079D5F4 000040 0004+00 0/3 0/0 0/0 .rodata          @4070 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4070 = 60.0f;
COMPILER_STRIP_GATE(0x8079D5F0, &lit_4070);
#pragma pop

/* 80799084-80799160 000624 00DC+00 5/5 0/0 0/0 .text            sm2_delete__FP11e_sm2_class */
static void sm2_delete(e_sm2_class* param_0) {
    // NONMATCHING
}

/* 80799160-807991D4 000700 0074+00 2/2 0/0 0/0 .text            cc_stts_init__FP11e_sm2_class */
static void cc_stts_init(e_sm2_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8079D5F4-8079D5F8 000044 0004+00 0/2 0/0 0/0 .rodata          @4130 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4130 = 600.0f;
COMPILER_STRIP_GATE(0x8079D5F4, &lit_4130);
#pragma pop

/* 807991D4-80799394 000774 01C0+00 1/1 0/0 0/0 .text            s_s_sub__FPvPv */
static void s_s_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80799394-807993F4 000934 0060+00 1/1 0/0 0/0 .text            pl_check__FP11e_sm2_classf */
static void pl_check(e_sm2_class* param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8079D5F8-8079D5FC 000048 0004+00 0/1 0/0 0/0 .rodata          @4201 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4201 = 6.0f;
COMPILER_STRIP_GATE(0x8079D5F8, &lit_4201);
#pragma pop

/* 8079D5FC-8079D600 00004C 0004+00 0/3 0/0 0/0 .rodata          @4202 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4202 = 65536.0f;
COMPILER_STRIP_GATE(0x8079D5FC, &lit_4202);
#pragma pop

/* 8079D600-8079D604 000050 0004+00 0/1 0/0 0/0 .rodata          @4203 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4203 = 23.0f;
COMPILER_STRIP_GATE(0x8079D600, &lit_4203);
#pragma pop

/* 8079D604-8079D608 000054 0004+00 0/3 0/0 0/0 .rodata          @4204 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4204 = 3.0f;
COMPILER_STRIP_GATE(0x8079D604, &lit_4204);
#pragma pop

/* 8079D608-8079D60C 000058 0004+00 0/3 0/0 0/0 .rodata          @4205 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4205 = 8.0f;
COMPILER_STRIP_GATE(0x8079D608, &lit_4205);
#pragma pop

/* 8079D60C-8079D610 00005C 0004+00 0/1 0/0 0/0 .rodata          @4206 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4206 = 15.0f;
COMPILER_STRIP_GATE(0x8079D60C, &lit_4206);
#pragma pop

/* 8079D610-8079D614 000060 0004+00 0/3 0/0 0/0 .rodata          @4207 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4207 = 25.0f;
COMPILER_STRIP_GATE(0x8079D610, &lit_4207);
#pragma pop

/* 8079D614-8079D618 000064 0004+00 0/1 0/0 0/0 .rodata          @4208 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4208 = 400.0f;
COMPILER_STRIP_GATE(0x8079D614, &lit_4208);
#pragma pop

/* 8079D618-8079D61C 000068 0004+00 0/3 0/0 0/0 .rodata          @4209 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4209 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x8079D618, &lit_4209);
#pragma pop

/* 8079D61C-8079D620 00006C 0004+00 0/5 0/0 0/0 .rodata          @4210 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4210 = 0.5f;
COMPILER_STRIP_GATE(0x8079D61C, &lit_4210);
#pragma pop

/* 8079D620-8079D624 000070 0004+00 0/2 0/0 0/0 .rodata          @4211 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4211 = 13.0f / 20.0f;
COMPILER_STRIP_GATE(0x8079D620, &lit_4211);
#pragma pop

/* 8079D624-8079D628 000074 0004+00 0/2 0/0 0/0 .rodata          @4212 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4212 = 3.0f / 100.0f;
COMPILER_STRIP_GATE(0x8079D624, &lit_4212);
#pragma pop

/* 8079D628-8079D62C 000078 0004+00 0/8 0/0 0/0 .rodata          @4213 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4213 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x8079D628, &lit_4213);
#pragma pop

/* 8079D62C-8079D630 00007C 0004+00 0/1 0/0 0/0 .rodata          @4214 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4214 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x8079D62C, &lit_4214);
#pragma pop

/* 8079DB88-8079DB8C 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 8079DB8C-8079DB90 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 8079DB90-8079DB94 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 8079DB94-8079DB98 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 8079DB98-8079DB9C 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 8079DB9C-8079DBA0 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 8079DBA0-8079DBA4 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 8079DBA4-8079DBA8 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 8079DBA8-8079DBAC 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 8079DBAC-8079DBB0 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 8079DBB0-8079DBB4 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 8079DBB4-8079DBB8 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 8079DBB8-8079DBBC 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 8079DBBC-8079DBC0 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 8079DBC0-8079DBC4 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 8079DBC4-8079DBC8 000044 0001+03 0/0 0/0 0/0 .bss             @1009 */
#pragma push
#pragma force_active on
static u8 lit_1009[1 + 3 /* padding */];
#pragma pop

/* 8079DBC8-8079DBD4 000048 000C+00 0/1 0/0 0/0 .bss             @3923 */
#pragma push
#pragma force_active on
static u8 lit_3923[12];
#pragma pop

/* 8079DBD4-8079DBE4 000054 0010+00 3/4 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[16];

/* 807993F4-80799784 000994 0390+00 1/1 0/0 0/0 .text            normal_move__FP11e_sm2_class */
static void normal_move(e_sm2_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8079D630-8079D634 000080 0004+00 0/5 0/0 0/0 .rodata          @4254 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4254 = 20.0f;
COMPILER_STRIP_GATE(0x8079D630, &lit_4254);
#pragma pop

/* 8079D634-8079D638 000084 0004+00 0/4 0/0 0/0 .rodata          @4255 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4255 = 5.0f;
COMPILER_STRIP_GATE(0x8079D634, &lit_4255);
#pragma pop

/* 8079D638-8079D63C 000088 0004+00 0/1 0/0 0/0 .rodata          @4256 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4256 = 40.0f;
COMPILER_STRIP_GATE(0x8079D638, &lit_4256);
#pragma pop

/* 8079D63C-8079D640 00008C 0004+00 0/0 0/0 0/0 .rodata          @4257 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4257 = 35.0f;
COMPILER_STRIP_GATE(0x8079D63C, &lit_4257);
#pragma pop

/* 8079D640-8079D644 000090 0004+00 0/3 0/0 0/0 .rodata          @4258 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4258 = 10.0f;
COMPILER_STRIP_GATE(0x8079D640, &lit_4258);
#pragma pop

/* 8079D644-8079D648 000094 0004+00 1/3 0/0 0/0 .rodata          @4259 */
SECTION_RODATA static f32 const lit_4259 = 2.0f;
COMPILER_STRIP_GATE(0x8079D644, &lit_4259);

/* 80799784-80799A50 000D24 02CC+00 2/2 0/0 0/0 .text            attack__FP11e_sm2_class */
static void attack(e_sm2_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8079D648-8079D64C 000098 0004+00 0/1 0/0 0/0 .rodata          @4332 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4332 = 3.5f;
COMPILER_STRIP_GATE(0x8079D648, &lit_4332);
#pragma pop

/* 8079D64C-8079D650 00009C 0004+00 0/1 0/0 0/0 .rodata          @4333 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4333 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x8079D64C, &lit_4333);
#pragma pop

/* 8079D650-8079D654 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4334 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4334 = 3.0f / 25.0f;
COMPILER_STRIP_GATE(0x8079D650, &lit_4334);
#pragma pop

/* 80799A50-80799DAC 000FF0 035C+00 1/1 0/0 0/0 .text            combine__FP11e_sm2_class */
static void combine(e_sm2_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8079D654-8079D658 0000A4 0004+00 0/2 0/0 0/0 .rodata          @4409 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4409 = -150.0f;
COMPILER_STRIP_GATE(0x8079D654, &lit_4409);
#pragma pop

/* 8079D658-8079D65C 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4410 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4410 = 13.0f / 10.0f;
COMPILER_STRIP_GATE(0x8079D658, &lit_4410);
#pragma pop

/* 8079D65C-8079D660 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4411 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4411 = 13.0f / 100.0f;
COMPILER_STRIP_GATE(0x8079D65C, &lit_4411);
#pragma pop

/* 8079D660-8079D664 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4412 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4412 = 0x3B83126F;
COMPILER_STRIP_GATE(0x8079D660, &lit_4412);
#pragma pop

/* 8079D664-8079D668 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4413 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4413 = 117.0f / 100.0f;
COMPILER_STRIP_GATE(0x8079D664, &lit_4413);
#pragma pop

/* 8079D668-8079D670 0000B8 0008+00 0/2 0/0 0/0 .rodata          @4415 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4415[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8079D668, &lit_4415);
#pragma pop

/* 8079D718-8079D718 000168 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8079D718 = "D_SB07";
#pragma pop

/* 80799DAC-8079A1CC 00134C 0420+00 1/2 0/0 0/0 .text            roof__FP11e_sm2_class */
static void roof(e_sm2_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8079D670-8079D674 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4427 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4427 = -1.0f;
COMPILER_STRIP_GATE(0x8079D670, &lit_4427);
#pragma pop

/* 8079D674-8079D678 0000C4 0004+00 0/2 0/0 0/0 .rodata          @4428 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4428 = 1.5f;
COMPILER_STRIP_GATE(0x8079D674, &lit_4428);
#pragma pop

/* 8079D678-8079D67C 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4429 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4429 = 0x3BF5C28F;
COMPILER_STRIP_GATE(0x8079D678, &lit_4429);
#pragma pop

/* 8079A1CC-8079A28C 00176C 00C0+00 1/1 0/0 0/0 .text            water__FP11e_sm2_class */
static void water(e_sm2_class* param_0) {
    // NONMATCHING
}

/* 8079A28C-8079A3AC 00182C 0120+00 2/2 0/0 0/0 .text            eff_set__FP11e_sm2_classP4cXyzf */
static void eff_set(e_sm2_class* param_0, cXyz* param_1, f32 param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8079D67C-8079D680 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4502 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4502 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x8079D67C, &lit_4502);
#pragma pop

/* 8079D680-8079D684 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4503 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4503 = 11.0f / 20.0f;
COMPILER_STRIP_GATE(0x8079D680, &lit_4503);
#pragma pop

/* 8079D684-8079D688 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4504 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4504 = 1.0f / 40.0f;
COMPILER_STRIP_GATE(0x8079D684, &lit_4504);
#pragma pop

/* 8079A3AC-8079A560 00194C 01B4+00 1/1 0/0 0/0 .text            fail__FP11e_sm2_class */
static void fail(e_sm2_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8079D688-8079D68C 0000D8 0004+00 0/2 0/0 0/0 .rodata          @4638 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4638 = -5.0f;
COMPILER_STRIP_GATE(0x8079D688, &lit_4638);
#pragma pop

/* 8079D68C-8079D690 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4639 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4639 = -1.5f;
COMPILER_STRIP_GATE(0x8079D68C, &lit_4639);
#pragma pop

/* 8079D690-8079D694 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4640 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4640 = 7.0f / 5.0f;
COMPILER_STRIP_GATE(0x8079D690, &lit_4640);
#pragma pop

/* 8079D694-8079D698 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4641 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4641 = -2000.0f;
COMPILER_STRIP_GATE(0x8079D694, &lit_4641);
#pragma pop

/* 8079D698-8079D69C 0000E8 0004+00 0/1 0/0 0/0 .rodata          @4642 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4642 = -50.0f;
COMPILER_STRIP_GATE(0x8079D698, &lit_4642);
#pragma pop

/* 8079D69C-8079D6A0 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4643 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4643 = 4.0f;
COMPILER_STRIP_GATE(0x8079D69C, &lit_4643);
#pragma pop

/* 8079D6A0-8079D6A4 0000F0 0004+00 0/1 0/0 0/0 .rodata          @4644 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4644 = 6000.0f;
COMPILER_STRIP_GATE(0x8079D6A0, &lit_4644);
#pragma pop

/* 8079D6A4-8079D6A8 0000F4 0004+00 0/1 0/0 0/0 .rodata          @4645 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4645 = 1.0f / 25.0f;
COMPILER_STRIP_GATE(0x8079D6A4, &lit_4645);
#pragma pop

/* 8079D6A8-8079D6AC 0000F8 0004+00 0/1 0/0 0/0 .rodata          @4646 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4646 = -20.0f;
COMPILER_STRIP_GATE(0x8079D6A8, &lit_4646);
#pragma pop

/* 8079A560-8079A9B4 001B00 0454+00 1/1 0/0 0/0 .text            dmcalc__FP11e_sm2_class */
static void dmcalc(e_sm2_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8079D6AC-8079D6B0 0000FC 0004+00 0/1 0/0 0/0 .rodata          @4789 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4789 = 8000.0f;
COMPILER_STRIP_GATE(0x8079D6AC, &lit_4789);
#pragma pop

/* 8079A9B4-8079AF94 001F54 05E0+00 1/1 0/0 0/0 .text            damage_check__FP11e_sm2_class */
static void damage_check(e_sm2_class* param_0) {
    // NONMATCHING
}

/* 8079AF94-8079BC9C 002534 0D08+00 2/1 0/0 0/0 .text            action__FP11e_sm2_class */
static void action(e_sm2_class* param_0) {
    // NONMATCHING
}

/* 8079BC9C-8079BD14 00323C 0078+00 4/3 0/0 0/0 .text            __dt__14dBgS_ObjGndChkFv */
// dBgS_ObjGndChk::~dBgS_ObjGndChk() {
extern "C" void __dt__14dBgS_ObjGndChkFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8079D6B0-8079D6B4 000100 0004+00 0/1 0/0 0/0 .rodata          @5171 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5171 = 150.0f;
COMPILER_STRIP_GATE(0x8079D6B0, &lit_5171);
#pragma pop

/* 8079D6B4-8079D6B8 000104 0004+00 0/0 0/0 0/0 .rodata          @5172 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5172 = -100.0f;
COMPILER_STRIP_GATE(0x8079D6B4, &lit_5172);
#pragma pop

/* 8079D6B8-8079D6BC 000108 0004+00 0/0 0/0 0/0 .rodata          @5173 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5173 = -25.0f;
COMPILER_STRIP_GATE(0x8079D6B8, &lit_5173);
#pragma pop

/* 8079D6BC-8079D6C0 00010C 0004+00 0/0 0/0 0/0 .rodata          @5174 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5174 = 200.0f;
COMPILER_STRIP_GATE(0x8079D6BC, &lit_5174);
#pragma pop

/* 8079D6C0-8079D6C4 000110 0004+00 0/0 0/0 0/0 .rodata          @5175 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5175 = 500.0f;
COMPILER_STRIP_GATE(0x8079D6C0, &lit_5175);
#pragma pop

/* 8079D6C4-8079D6C8 000114 0004+00 0/0 0/0 0/0 .rodata          @5176 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5176 = 9.0f;
COMPILER_STRIP_GATE(0x8079D6C4, &lit_5176);
#pragma pop

/* 8079D6C8-8079D6CC 000118 0004+00 0/0 0/0 0/0 .rodata          @5177 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5177 = 12.0f;
COMPILER_STRIP_GATE(0x8079D6C8, &lit_5177);
#pragma pop

/* 8079D6CC-8079D6D0 00011C 0004+00 0/0 0/0 0/0 .rodata          @5178 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5178 = 0.25f;
COMPILER_STRIP_GATE(0x8079D6CC, &lit_5178);
#pragma pop

/* 8079D6D0-8079D6D4 000120 0004+00 0/0 0/0 0/0 .rodata          @5179 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5179 = 0x3BE56042;
COMPILER_STRIP_GATE(0x8079D6D0, &lit_5179);
#pragma pop

/* 8079D6D4-8079D6D8 000124 0004+00 0/0 0/0 0/0 .rodata          @5180 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5180 = 27.0f / 25.0f;
COMPILER_STRIP_GATE(0x8079D6D4, &lit_5180);
#pragma pop

/* 8079D6D8-8079D6E0 000128 0004+04 0/1 0/0 0/0 .rodata          @5181 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5181[1 + 1 /* padding */] = {
    120.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x8079D6D8, &lit_5181);
#pragma pop

/* 8079D6E0-8079D6E8 000130 0008+00 1/1 0/0 0/0 .rodata          @5184 */
SECTION_RODATA static u8 const lit_5184[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8079D6E0, &lit_5184);

/* 8079DBE4-8079DBE8 000064 0004+00 0/0 0/0 0/0 .bss             boss */
#pragma push
#pragma force_active on
static u8 boss[4];
#pragma pop

/* 8079DBE8-8079DBF4 000068 000C+00 0/1 0/0 0/0 .bss             @5187 */
#pragma push
#pragma force_active on
static u8 lit_5187[12];
#pragma pop

/* 8079DBF4-8079DC00 000074 000C+00 0/1 0/0 0/0 .bss             @5188 */
#pragma push
#pragma force_active on
static u8 lit_5188[12];
#pragma pop

/* 8079DC00-8079DC0C 000080 000C+00 0/1 0/0 0/0 .bss             @5189 */
#pragma push
#pragma force_active on
static u8 lit_5189[12];
#pragma pop

/* 8079DC0C-8079DC18 00008C 000C+00 0/1 0/0 0/0 .bss             @5190 */
#pragma push
#pragma force_active on
static u8 lit_5190[12];
#pragma pop

/* 8079DC18-8079DC24 000098 000C+00 0/1 0/0 0/0 .bss             @5191 */
#pragma push
#pragma force_active on
static u8 lit_5191[12];
#pragma pop

/* 8079DC24-8079DC30 0000A4 000C+00 0/1 0/0 0/0 .bss             @5192 */
#pragma push
#pragma force_active on
static u8 lit_5192[12];
#pragma pop

/* 8079DC30-8079DC3C 0000B0 000C+00 0/1 0/0 0/0 .bss             @5193 */
#pragma push
#pragma force_active on
static u8 lit_5193[12];
#pragma pop

/* 8079DC3C-8079DC90 0000BC 0054+00 1/2 0/0 0/0 .bss             col_d */
static u8 col_d[84];

/* 8079BD14-8079BEF0 0032B4 01DC+00 2/2 0/0 0/0 .text            col_set__FP11e_sm2_classSc */
static void col_set(e_sm2_class* param_0, s8 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8079D6E8-8079D6EC 000138 0004+00 0/1 0/0 0/0 .rodata          @5257 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5257 = 5000.0f;
COMPILER_STRIP_GATE(0x8079D6E8, &lit_5257);
#pragma pop

/* 8079BEF0-8079C120 003490 0230+00 2/1 0/0 0/0 .text            daE_SM2_Execute__FP11e_sm2_class */
static void daE_SM2_Execute(e_sm2_class* param_0) {
    // NONMATCHING
}

/* 8079C120-8079C128 0036C0 0008+00 1/0 0/0 0/0 .text            daE_SM2_IsDelete__FP11e_sm2_class
 */
static bool daE_SM2_IsDelete(e_sm2_class* param_0) {
    return true;
}

/* ############################################################################################## */
/* 8079D718-8079D718 000168 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8079D71F = "E_sm2";
#pragma pop

/* 8079C128-8079C184 0036C8 005C+00 1/0 0/0 0/0 .text            daE_SM2_Delete__FP11e_sm2_class */
static void daE_SM2_Delete(e_sm2_class* param_0) {
    // NONMATCHING
}

/* 8079C184-8079C438 003724 02B4+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 8079C438-8079C480 0039D8 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8079D6EC-8079D6F0 00013C 0004+00 0/1 0/0 0/0 .rodata          @5601 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5601 = 0x40DFF7CF;
COMPILER_STRIP_GATE(0x8079D6EC, &lit_5601);
#pragma pop

/* 8079D6F0-8079D6F4 000140 0004+00 0/1 0/0 0/0 .rodata          @5602 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5602 = -1000.0f;
COMPILER_STRIP_GATE(0x8079D6F0, &lit_5602);
#pragma pop

/* 8079D6F4-8079D6F8 000144 0004+00 0/1 0/0 0/0 .rodata          @5603 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5603 = -600.0f;
COMPILER_STRIP_GATE(0x8079D6F4, &lit_5603);
#pragma pop

/* 8079D6F8-8079D6FC 000148 0004+00 0/1 0/0 0/0 .rodata          @5604 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5604 = 1000.0f;
COMPILER_STRIP_GATE(0x8079D6F8, &lit_5604);
#pragma pop

/* 8079D718-8079D718 000168 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8079D725 = "T_ENEMY";
SECTION_DEAD static char const* const stringBase_8079D72D = "D_SB01";
#pragma pop

/* 8079C480-8079CB28 003A20 06A8+00 1/0 0/0 0/0 .text            daE_SM2_Create__FP10fopAc_ac_c */
static void daE_SM2_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 8079CB28-8079CBF4 0040C8 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 8079CBF4-8079CC78 004194 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 8079CC78-8079CCC0 004218 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 8079CCC0-8079CD08 004260 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 8079CD08-8079CD64 0042A8 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 8079CD64-8079CDD4 004304 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 8079CDD4-8079CE44 004374 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 8079CE44-8079CE48 0043E4 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 8079CE48-8079CE4C 0043E8 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 8079CE4C-8079CE94 0043EC 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 8079CE94-8079CF00 004434 006C+00 2/1 0/0 0/0 .text            __dt__13daE_SM2_HIO_cFv */
daE_SM2_HIO_c::~daE_SM2_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8079D6FC-8079D700 00014C 0004+00 0/1 0/0 0/0 .rodata          @5769 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5769 = 117.0f;
COMPILER_STRIP_GATE(0x8079D6FC, &lit_5769);
#pragma pop

/* 8079D700-8079D704 000150 0004+00 0/1 0/0 0/0 .rodata          @5770 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5770 = 170.0f;
COMPILER_STRIP_GATE(0x8079D700, &lit_5770);
#pragma pop

/* 8079D704-8079D708 000154 0004+00 0/1 0/0 0/0 .rodata          @5771 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5771 = 90.0f;
COMPILER_STRIP_GATE(0x8079D704, &lit_5771);
#pragma pop

/* 8079D708-8079D70C 000158 0004+00 0/1 0/0 0/0 .rodata          @5772 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5772 = 140.0f;
COMPILER_STRIP_GATE(0x8079D708, &lit_5772);
#pragma pop

/* 8079D70C-8079D710 00015C 0004+00 0/1 0/0 0/0 .rodata          @5773 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5773 = 80.0f;
COMPILER_STRIP_GATE(0x8079D70C, &lit_5773);
#pragma pop

/* 8079D710-8079D714 000160 0004+00 0/1 0/0 0/0 .rodata          @5774 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5774 = 130.0f;
COMPILER_STRIP_GATE(0x8079D710, &lit_5774);
#pragma pop

/* 8079D714-8079D718 000164 0004+00 0/1 0/0 0/0 .rodata          @5775 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5775 = 255.0f;
COMPILER_STRIP_GATE(0x8079D714, &lit_5775);
#pragma pop

/* 8079CF00-8079D0E8 0044A0 01E8+00 0/0 1/0 0/0 .text            __sinit_d_a_e_sm2_cpp */
void __sinit_d_a_e_sm2_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x8079CF00, __sinit_d_a_e_sm2_cpp);
#pragma pop

/* 8079D0E8-8079D0F0 004688 0008+00 1/0 0/0 0/0 .text            @20@__dt__14dBgS_ObjGndChkFv */
static void func_8079D0E8() {
    // NONMATCHING
}

/* 8079D0F0-8079D0F8 004690 0008+00 1/0 0/0 0/0 .text            @76@__dt__14dBgS_ObjGndChkFv */
static void func_8079D0F0() {
    // NONMATCHING
}

/* 8079D0F8-8079D100 004698 0008+00 1/0 0/0 0/0 .text            @60@__dt__14dBgS_ObjGndChkFv */
static void func_8079D0F8() {
    // NONMATCHING
}

/* 8079D100-8079D108 0046A0 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_8079D100() {
    // NONMATCHING
}

/* 8079D108-8079D110 0046A8 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_8079D108() {
    // NONMATCHING
}

/* 8079D524-8079D560 004AC4 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 8079D560-8079D59C 004B00 003C+00 2/2 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8079DC90-8079DC94 000110 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_8079DC90[4];
#pragma pop

/* 8079DC94-8079DC98 000114 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_8079DC94[4];
#pragma pop

/* 8079DC98-8079DC9C 000118 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_8079DC98[4];
#pragma pop

/* 8079DC9C-8079DCA0 00011C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8079DC9C[4];
#pragma pop

/* 8079DCA0-8079DCA4 000120 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8079DCA0[4];
#pragma pop

/* 8079DCA4-8079DCA8 000124 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8079DCA4[4];
#pragma pop

/* 8079DCA8-8079DCAC 000128 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_8079DCA8[4];
#pragma pop

/* 8079DCAC-8079DCB0 00012C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_8079DCAC[4];
#pragma pop

/* 8079DCB0-8079DCB4 000130 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_8079DCB0[4];
#pragma pop

/* 8079DCB4-8079DCB8 000134 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_8079DCB4[4];
#pragma pop

/* 8079DCB8-8079DCBC 000138 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_8079DCB8[4];
#pragma pop

/* 8079DCBC-8079DCC0 00013C 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8079DCBC[4];
#pragma pop

/* 8079DCC0-8079DCC4 000140 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_8079DCC0[4];
#pragma pop

/* 8079DCC4-8079DCC8 000144 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8079DCC4[4];
#pragma pop

/* 8079DCC8-8079DCCC 000148 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8079DCC8[4];
#pragma pop

/* 8079DCCC-8079DCD0 00014C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_8079DCCC[4];
#pragma pop

/* 8079DCD0-8079DCD4 000150 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_8079DCD0[4];
#pragma pop

/* 8079DCD4-8079DCD8 000154 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8079DCD4[4];
#pragma pop

/* 8079DCD8-8079DCDC 000158 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_8079DCD8[4];
#pragma pop

/* 8079DCDC-8079DCE0 00015C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_8079DCDC[4];
#pragma pop

/* 8079DCE0-8079DCE4 000160 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_8079DCE0[4];
#pragma pop

/* 8079DCE4-8079DCE8 000164 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8079DCE4[4];
#pragma pop

/* 8079DCE8-8079DCEC 000168 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8079DCE8[4];
#pragma pop

/* 8079DCEC-8079DCF0 00016C 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8079DCEC[4];
#pragma pop

/* 8079DCF0-8079DCF4 000170 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_8079DCF0[4];
#pragma pop

/* 8079D718-8079D718 000168 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
