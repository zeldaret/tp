/**
 * @file d_a_e_tt.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_e_tt.h"
#include "dol2asm.h"
#include "f_op/f_op_actor_enemy.h"



//
// Forward References:
//

extern "C" void __ct__12daE_TT_HIO_cFv();
extern "C" void ctrlJoint__8daE_TT_cFP8J3DJointP8J3DModel();
extern "C" void JointCallBack__8daE_TT_cFP8J3DJointi();
extern "C" void draw__8daE_TT_cFv();
extern "C" static void daE_TT_Draw__FP8daE_TT_c();
extern "C" void setBck__8daE_TT_cFiUcff();
extern "C" void calcHitGroundSpeed__8daE_TT_cFv();
extern "C" void setActionMode__8daE_TT_cFii();
extern "C" void getCutType__8daE_TT_cFv();
extern "C" void damage_check__8daE_TT_cFv();
extern "C" void checkWaterSurface__8daE_TT_cFv();
extern "C" void checkFootGround__8daE_TT_cFv();
extern "C" void setBodyLandEffect__8daE_TT_cFv();
extern "C" void setWaterEffect__8daE_TT_cFv();
extern "C" void setDeathEyeEffect__8daE_TT_cFv();
extern "C" void setDeathFootEffect__8daE_TT_cFv();
extern "C" void checkPlayerSearch__8daE_TT_cFv();
extern "C" void executeWait__8daE_TT_cFv();
extern "C" void executeChase__8daE_TT_cFv();
extern "C" void executeAttack__8daE_TT_cFv();
extern "C" void setDamageInit__8daE_TT_cFv();
extern "C" void executeDamage__8daE_TT_cFv();
extern "C" void executeDeath__8daE_TT_cFv();
extern "C" void executeOutRange__8daE_TT_cFv();
extern "C" void executeFirstAttack__8daE_TT_cFv();
extern "C" void action__8daE_TT_cFv();
extern "C" void mtx_set__8daE_TT_cFi();
extern "C" void cc_set__8daE_TT_cFv();
extern "C" void execute__8daE_TT_cFv();
extern "C" static void daE_TT_Execute__FP8daE_TT_c();
extern "C" static bool daE_TT_IsDelete__FP8daE_TT_c();
extern "C" void _delete__8daE_TT_cFv();
extern "C" static void daE_TT_Delete__FP8daE_TT_c();
extern "C" void CreateHeap__8daE_TT_cFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void create__8daE_TT_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__14dBgS_ObjGndChkFv();
extern "C" static void daE_TT_Create__FP8daE_TT_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_TT_HIO_cFv();
extern "C" void __sinit_d_a_e_tt_cpp();
extern "C" static void func_807C1B2C();
extern "C" static void func_807C1B34();
extern "C" static void func_807C1B3C();
extern "C" static void func_807C1B44();
extern "C" static void func_807C1B4C();
extern "C" void __dt__4cXyzFv();
extern "C" extern char const* const d_a_e_tt__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void mDoMtx_MtxToRot__FPA4_CfP5csXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void waterCheck__11fopAcM_wt_cFPC4cXyz();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
setPoly__13dPa_control_cFUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
setPoly__13dPa_control_cFUlUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void __ct__21dBgS_CamLinChk_NorWtrFv();
extern "C" void __dt__21dBgS_CamLinChk_NorWtrFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rnd__Fv();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC3Vec();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void func_80280808();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void _savegpr_15();
extern "C" void _savegpr_19();
extern "C" void _savegpr_22();
extern "C" void _savegpr_26();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_15();
extern "C" void _restgpr_19();
extern "C" void _restgpr_22();
extern "C" void _restgpr_26();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__18dBgS_ObjGndChk_All[12];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mWaterCheck__11fopAcM_wt_c[84 + 4 /* padding */];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" f32 mWaterY__11fopAcM_wt_c[1 + 1 /* padding */];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 807C1FE4-807C1FE8 00002C 0004+00 2/3 0/0 0/0 .rodata          @3929 */
SECTION_RODATA static f32 const lit_3929 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x807C1FE4, &lit_3929);

/* 807C1FE8-807C1FEC 000030 0004+00 0/1 0/0 0/0 .rodata          @3930 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3930 = 1300.0f;
COMPILER_STRIP_GATE(0x807C1FE8, &lit_3930);
#pragma pop

/* 807C1FEC-807C1FF0 000034 0004+00 0/1 0/0 0/0 .rodata          @3931 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3931 = 400.0f;
COMPILER_STRIP_GATE(0x807C1FEC, &lit_3931);
#pragma pop

/* 807C1FF0-807C1FF4 000038 0004+00 0/1 0/0 0/0 .rodata          @3932 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3932 = 8192.0f;
COMPILER_STRIP_GATE(0x807C1FF0, &lit_3932);
#pragma pop

/* 807C2100-807C2140 000038 0040+00 1/1 0/0 0/0 .data            cc_tt_src__22@unnamed@d_a_e_tt_cpp@
 */
SECTION_DATA static u8 data_807C2100[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D,
    0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x75, 0x09, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};

/* 807C2140-807C2180 000078 0040+00 0/0 0/0 0/0 .data cc_tt_eye_src__22@unnamed@d_a_e_tt_cpp@ */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_807C2140[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};
#pragma pop

/* 807C2180-807C21B8 -00001 0038+00 1/1 0/0 0/0 .data            @3973 */
SECTION_DATA static void* lit_3973[14] = {
    (void*)(((char*)ctrlJoint__8daE_TT_cFP8J3DJointP8J3DModel) + 0x60),
    (void*)(((char*)ctrlJoint__8daE_TT_cFP8J3DJointP8J3DModel) + 0xAC),
    (void*)(((char*)ctrlJoint__8daE_TT_cFP8J3DJointP8J3DModel) + 0xAC),
    (void*)(((char*)ctrlJoint__8daE_TT_cFP8J3DJointP8J3DModel) + 0xAC),
    (void*)(((char*)ctrlJoint__8daE_TT_cFP8J3DJointP8J3DModel) + 0x74),
    (void*)(((char*)ctrlJoint__8daE_TT_cFP8J3DJointP8J3DModel) + 0xAC),
    (void*)(((char*)ctrlJoint__8daE_TT_cFP8J3DJointP8J3DModel) + 0xAC),
    (void*)(((char*)ctrlJoint__8daE_TT_cFP8J3DJointP8J3DModel) + 0xAC),
    (void*)(((char*)ctrlJoint__8daE_TT_cFP8J3DJointP8J3DModel) + 0xAC),
    (void*)(((char*)ctrlJoint__8daE_TT_cFP8J3DJointP8J3DModel) + 0x88),
    (void*)(((char*)ctrlJoint__8daE_TT_cFP8J3DJointP8J3DModel) + 0xAC),
    (void*)(((char*)ctrlJoint__8daE_TT_cFP8J3DJointP8J3DModel) + 0xAC),
    (void*)(((char*)ctrlJoint__8daE_TT_cFP8J3DJointP8J3DModel) + 0xAC),
    (void*)(((char*)ctrlJoint__8daE_TT_cFP8J3DJointP8J3DModel) + 0x9C),
};

/* 807C21B8-807C21C8 0000F0 0010+00 1/1 0/0 0/0 .data            foot_jnt_no$4152 */
SECTION_DATA static u8 foot_jnt_no_4152[16] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x11,
};

/* 807C21C8-807C21D0 000100 0008+00 1/1 0/0 0/0 .data            w_eff_id$4272 */
SECTION_DATA static u8 w_eff_id_4272[8] = {
    0x01, 0xB8, 0x01, 0xB9, 0x01, 0xBA, 0x01, 0xBB,
};

/* 807C21D0-807C21D8 000108 0006+02 1/1 0/0 0/0 .data            w_eff_id$4305 */
SECTION_DATA static u8 w_eff_id_4305[6 + 2 /* padding */] = {
    0x01,
    0xB9,
    0x01,
    0xBA,
    0x01,
    0xBB,
    /* padding */
    0x00,
    0x00,
};

/* 807C21D8-807C21E8 000110 0010+00 1/1 0/0 0/0 .data            foot_jnt_no$4306 */
SECTION_DATA static u8 foot_jnt_no_4306[16] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x11,
};

/* 807C21E8-807C220C -00001 0024+00 1/1 0/0 0/0 .data            @4800 */
SECTION_DATA static void* lit_4800[9] = {
    (void*)(((char*)executeWait__8daE_TT_cFv) + 0x44),
    (void*)(((char*)executeWait__8daE_TT_cFv) + 0x374),
    (void*)(((char*)executeWait__8daE_TT_cFv) + 0x5D0),
    (void*)(((char*)executeWait__8daE_TT_cFv) + 0x5D0),
    (void*)(((char*)executeWait__8daE_TT_cFv) + 0x5D0),
    (void*)(((char*)executeWait__8daE_TT_cFv) + 0x434),
    (void*)(((char*)executeWait__8daE_TT_cFv) + 0x4DC),
    (void*)(((char*)executeWait__8daE_TT_cFv) + 0x530),
    (void*)(((char*)executeWait__8daE_TT_cFv) + 0x56C),
};

/* 807C220C-807C2238 -00001 002C+00 1/1 0/0 0/0 .data            @4941 */
SECTION_DATA static void* lit_4941[11] = {
    (void*)(((char*)executeChase__8daE_TT_cFv) + 0x60),
    (void*)(((char*)executeChase__8daE_TT_cFv) + 0x90),
    (void*)(((char*)executeChase__8daE_TT_cFv) + 0x59C),
    (void*)(((char*)executeChase__8daE_TT_cFv) + 0x59C),
    (void*)(((char*)executeChase__8daE_TT_cFv) + 0x59C),
    (void*)(((char*)executeChase__8daE_TT_cFv) + 0x36C),
    (void*)(((char*)executeChase__8daE_TT_cFv) + 0x4A4),
    (void*)(((char*)executeChase__8daE_TT_cFv) + 0x4F8),
    (void*)(((char*)executeChase__8daE_TT_cFv) + 0x538),
    (void*)(((char*)executeChase__8daE_TT_cFv) + 0x59C),
    (void*)(((char*)executeChase__8daE_TT_cFv) + 0x68),
};

/* 807C2238-807C2254 -00001 001C+00 1/1 0/0 0/0 .data            @5104 */
SECTION_DATA static void* lit_5104[7] = {
    (void*)(((char*)executeDamage__8daE_TT_cFv) + 0x44),
    (void*)(((char*)executeDamage__8daE_TT_cFv) + 0x90),
    (void*)(((char*)executeDamage__8daE_TT_cFv) + 0xDC),
    (void*)(((char*)executeDamage__8daE_TT_cFv) + 0x128),
    (void*)(((char*)executeDamage__8daE_TT_cFv) + 0x174),
    (void*)(((char*)executeDamage__8daE_TT_cFv) + 0x1C0),
    (void*)(((char*)executeDamage__8daE_TT_cFv) + 0x1CC),
};

/* 807C2254-807C2290 -00001 003C+00 1/1 0/0 0/0 .data            @5450 */
SECTION_DATA static void* lit_5450[15] = {
    (void*)(((char*)executeFirstAttack__8daE_TT_cFv) + 0x70),
    (void*)(((char*)executeFirstAttack__8daE_TT_cFv) + 0x94),
    (void*)(((char*)executeFirstAttack__8daE_TT_cFv) + 0x6D8),
    (void*)(((char*)executeFirstAttack__8daE_TT_cFv) + 0x6D8),
    (void*)(((char*)executeFirstAttack__8daE_TT_cFv) + 0x6D8),
    (void*)(((char*)executeFirstAttack__8daE_TT_cFv) + 0x6D8),
    (void*)(((char*)executeFirstAttack__8daE_TT_cFv) + 0x6D8),
    (void*)(((char*)executeFirstAttack__8daE_TT_cFv) + 0x6D8),
    (void*)(((char*)executeFirstAttack__8daE_TT_cFv) + 0x6D8),
    (void*)(((char*)executeFirstAttack__8daE_TT_cFv) + 0x6D8),
    (void*)(((char*)executeFirstAttack__8daE_TT_cFv) + 0x6D8),
    (void*)(((char*)executeFirstAttack__8daE_TT_cFv) + 0x208),
    (void*)(((char*)executeFirstAttack__8daE_TT_cFv) + 0x598),
    (void*)(((char*)executeFirstAttack__8daE_TT_cFv) + 0x5E8),
    (void*)(((char*)executeFirstAttack__8daE_TT_cFv) + 0x644),
};

/* 807C2290-807C22AC -00001 001C+00 1/1 0/0 0/0 .data            @5482 */
SECTION_DATA static void* lit_5482[7] = {
    (void*)(((char*)action__8daE_TT_cFv) + 0x74), (void*)(((char*)action__8daE_TT_cFv) + 0x80),
    (void*)(((char*)action__8daE_TT_cFv) + 0x90), (void*)(((char*)action__8daE_TT_cFv) + 0xA0),
    (void*)(((char*)action__8daE_TT_cFv) + 0xAC), (void*)(((char*)action__8daE_TT_cFv) + 0xB8),
    (void*)(((char*)action__8daE_TT_cFv) + 0xC4),
};

/* 807C22AC-807C22CC -00001 0020+00 1/0 0/0 0/0 .data            l_daE_TT_Method */
static actor_method_class l_daE_TT_Method = {
    (process_method_func)daE_TT_Create__FP8daE_TT_c,
    (process_method_func)daE_TT_Delete__FP8daE_TT_c,
    (process_method_func)daE_TT_Execute__FP8daE_TT_c,
    (process_method_func)daE_TT_IsDelete__FP8daE_TT_c,
    (process_method_func)daE_TT_Draw__FP8daE_TT_c,
};

/* 807C22CC-807C22FC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_TT */
extern actor_process_profile_definition g_profile_E_TT = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_TT,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daE_TT_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  208,                    // mPriority
  &l_daE_TT_Method,       // sub_method
  0x00040100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 807C22FC-807C2308 000234 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 807C2308-807C2314 000240 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 807C2314-807C2320 00024C 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 807C2320-807C232C 000258 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 807C232C-807C2338 000264 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 807C2338-807C235C 000270 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807C1B4C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807C1B44,
};

/* 807C235C-807C238C 000294 0030+00 2/2 0/0 0/0 .data            __vt__14dBgS_ObjGndChk */
SECTION_DATA extern void* __vt__14dBgS_ObjGndChk[12] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14dBgS_ObjGndChkFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807C1B2C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807C1B3C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807C1B34,
};

/* 807C238C-807C2398 0002C4 000C+00 2/2 0/0 0/0 .data            __vt__12daE_TT_HIO_c */
SECTION_DATA extern void* __vt__12daE_TT_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_TT_HIO_cFv,
};

/* 807BD7AC-807BD7EC 0000EC 0040+00 1/1 0/0 0/0 .text            __ct__12daE_TT_HIO_cFv */
daE_TT_HIO_c::daE_TT_HIO_c() {
    // NONMATCHING
}

/* 807BD7EC-807BD8E0 00012C 00F4+00 2/1 0/0 0/0 .text ctrlJoint__8daE_TT_cFP8J3DJointP8J3DModel */
void daE_TT_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 807BD8E0-807BD92C 000220 004C+00 1/1 0/0 0/0 .text JointCallBack__8daE_TT_cFP8J3DJointi */
void daE_TT_c::JointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807C1FF4-807C1FF8 00003C 0004+00 0/1 0/0 0/0 .rodata          @4017 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4017 = 700.0f;
COMPILER_STRIP_GATE(0x807C1FF4, &lit_4017);
#pragma pop

/* 807BD92C-807BDAC0 00026C 0194+00 1/1 0/0 0/0 .text            draw__8daE_TT_cFv */
void daE_TT_c::draw() {
    // NONMATCHING
}

/* 807BDAC0-807BDAE0 000400 0020+00 1/0 0/0 0/0 .text            daE_TT_Draw__FP8daE_TT_c */
static void daE_TT_Draw(daE_TT_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807C1FF8-807C1FFC 000040 0004+00 1/1 0/0 0/0 .rodata          @4031 */
SECTION_RODATA static f32 const lit_4031 = -1.0f;
COMPILER_STRIP_GATE(0x807C1FF8, &lit_4031);

/* 807C20B0-807C20B0 0000F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_807C20B0 = "E_TT";
#pragma pop

/* 807BDAE0-807BDB84 000420 00A4+00 7/7 0/0 0/0 .text            setBck__8daE_TT_cFiUcff */
void daE_TT_c::setBck(int param_0, u8 param_1, f32 param_2, f32 param_3) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807C1FFC-807C2000 000044 0004+00 0/2 0/0 0/0 .rodata          @4041 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4041 = 10.0f;
COMPILER_STRIP_GATE(0x807C1FFC, &lit_4041);
#pragma pop

/* 807C2000-807C2004 000048 0004+00 0/2 0/0 0/0 .rodata          @4042 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4042 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x807C2000, &lit_4042);
#pragma pop

/* 807BDB84-807BDBE4 0004C4 0060+00 4/4 0/0 0/0 .text            calcHitGroundSpeed__8daE_TT_cFv */
void daE_TT_c::calcHitGroundSpeed() {
    // NONMATCHING
}

/* 807C23E0-807C23EC 000048 000C+00 1/1 0/0 0/0 .bss             @3924 */
static u8 lit_3924[12];

/* 807C23EC-807C2404 000054 0018+00 7/7 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[24];

/* 807C2404-807C2408 00006C 0004+00 4/4 0/0 0/0 .bss             m_attack_tt */
static u8 m_attack_tt[4];

/* 807BDBE4-807BDC10 000524 002C+00 8/8 0/0 0/0 .text            setActionMode__8daE_TT_cFii */
void daE_TT_c::setActionMode(int param_0, int param_1) {
    // NONMATCHING
}

/* 807BDC10-807BDC50 000550 0040+00 1/1 0/0 0/0 .text            getCutType__8daE_TT_cFv */
void daE_TT_c::getCutType() {
    // NONMATCHING
}

/* 807BDC50-807BDE5C 000590 020C+00 1/1 0/0 0/0 .text            damage_check__8daE_TT_cFv */
void daE_TT_c::damage_check() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807C2004-807C2008 00004C 0004+00 0/4 0/0 0/0 .rodata          @4145 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4145 = 500.0f;
COMPILER_STRIP_GATE(0x807C2004, &lit_4145);
#pragma pop

/* 807C2008-807C200C 000050 0004+00 0/1 0/0 0/0 .rodata          @4146 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4146 = -1000000000.0f;
COMPILER_STRIP_GATE(0x807C2008, &lit_4146);
#pragma pop

/* 807BDE5C-807BDF60 00079C 0104+00 1/1 0/0 0/0 .text            checkWaterSurface__8daE_TT_cFv */
void daE_TT_c::checkWaterSurface() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807C200C-807C2010 000054 0004+00 0/2 0/0 0/0 .rodata          @4258 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4258 = 0.75f;
COMPILER_STRIP_GATE(0x807C200C, &lit_4258);
#pragma pop

/* 807C2010-807C2014 000058 0004+00 0/3 0/0 0/0 .rodata          @4259 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4259 = -20.0f;
COMPILER_STRIP_GATE(0x807C2010, &lit_4259);
#pragma pop

/* 807C2014-807C2018 00005C 0004+00 0/1 0/0 0/0 .rodata          @4260 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4260 = 90.0f;
COMPILER_STRIP_GATE(0x807C2014, &lit_4260);
#pragma pop

/* 807C2018-807C201C 000060 0004+00 0/3 0/0 0/0 .rodata          @4261 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4261 = 30.0f;
COMPILER_STRIP_GATE(0x807C2018, &lit_4261);
#pragma pop

/* 807C201C-807C2020 000064 0004+00 0/2 0/0 0/0 .rodata          @4262 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4262 = 50.0f;
COMPILER_STRIP_GATE(0x807C201C, &lit_4262);
#pragma pop

/* 807C2020-807C2024 000068 0004+00 0/3 0/0 0/0 .rodata          @4263 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4263 = 40.0f;
COMPILER_STRIP_GATE(0x807C2020, &lit_4263);
#pragma pop

/* 807C2024-807C2028 00006C 0004+00 0/3 0/0 0/0 .rodata          @4264 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4264 = -10.0f;
COMPILER_STRIP_GATE(0x807C2024, &lit_4264);
#pragma pop

/* 807C2408-807C2418 000070 000C+04 0/1 0/0 0/0 .bss             @4154 */
#pragma push
#pragma force_active on
static u8 lit_4154[12 + 4 /* padding */];
#pragma pop

/* 807C2418-807C2424 000080 000C+00 0/1 0/0 0/0 .bss             sc$4153 */
#pragma push
#pragma force_active on
static u8 sc_4153[12];
#pragma pop

/* 807BDF60-807BE2A8 0008A0 0348+00 1/1 0/0 0/0 .text            checkFootGround__8daE_TT_cFv */
void daE_TT_c::checkFootGround() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807C2028-807C202C 000070 0004+00 1/2 0/0 0/0 .rodata          @4297 */
SECTION_RODATA static f32 const lit_4297 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x807C2028, &lit_4297);

/* 807C2424-807C2434 00008C 000C+04 0/1 0/0 0/0 .bss             @4269 */
#pragma push
#pragma force_active on
static u8 lit_4269[12 + 4 /* padding */];
#pragma pop

/* 807C2434-807C2440 00009C 000C+00 0/1 0/0 0/0 .bss             sc$4268 */
#pragma push
#pragma force_active on
static u8 sc_4268[12];
#pragma pop

/* 807BE2A8-807BE438 000BE8 0190+00 1/1 0/0 0/0 .text            setBodyLandEffect__8daE_TT_cFv */
void daE_TT_c::setBodyLandEffect() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807C202C-807C2030 000074 0004+00 0/3 0/0 0/0 .rodata          @4394 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4394 = 120.0f;
COMPILER_STRIP_GATE(0x807C202C, &lit_4394);
#pragma pop

/* 807C2030-807C2034 000078 0004+00 0/4 0/0 0/0 .rodata          @4395 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4395 = 20.0f;
COMPILER_STRIP_GATE(0x807C2030, &lit_4395);
#pragma pop

/* 807C2440-807C2450 0000A8 000C+04 0/1 0/0 0/0 .bss             @4302 */
#pragma push
#pragma force_active on
static u8 lit_4302[12 + 4 /* padding */];
#pragma pop

/* 807C2450-807C245C 0000B8 000C+00 0/1 0/0 0/0 .bss             sc$4301 */
#pragma push
#pragma force_active on
static u8 sc_4301[12];
#pragma pop

/* 807BE438-807BE708 000D78 02D0+00 4/4 0/0 0/0 .text            setWaterEffect__8daE_TT_cFv */
void daE_TT_c::setWaterEffect() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807C245C-807C246C 0000C4 000C+04 0/1 0/0 0/0 .bss             @4400 */
#pragma push
#pragma force_active on
static u8 lit_4400[12 + 4 /* padding */];
#pragma pop

/* 807C246C-807C2478 0000D4 000C+00 0/1 0/0 0/0 .bss             sc$4399 */
#pragma push
#pragma force_active on
static u8 sc_4399[12];
#pragma pop

/* 807BE708-807BE99C 001048 0294+00 1/1 0/0 0/0 .text            setDeathEyeEffect__8daE_TT_cFv */
void daE_TT_c::setDeathEyeEffect() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807C2478-807C2488 0000E0 000C+04 0/1 0/0 0/0 .bss             @4489 */
#pragma push
#pragma force_active on
static u8 lit_4489[12 + 4 /* padding */];
#pragma pop

/* 807C2488-807C2494 0000F0 000C+00 0/1 0/0 0/0 .bss             sc$4488 */
#pragma push
#pragma force_active on
static u8 sc_4488[12];
#pragma pop

/* 807BE99C-807BEBAC 0012DC 0210+00 1/1 0/0 0/0 .text            setDeathFootEffect__8daE_TT_cFv */
void daE_TT_c::setDeathFootEffect() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807C2034-807C2038 00007C 0004+00 0/1 0/0 0/0 .rodata          @4633 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4633 = 300.0f;
COMPILER_STRIP_GATE(0x807C2034, &lit_4633);
#pragma pop

/* 807BEBAC-807BED70 0014EC 01C4+00 5/5 0/0 0/0 .text            checkPlayerSearch__8daE_TT_cFv */
void daE_TT_c::checkPlayerSearch() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807C2038-807C203C 000080 0004+00 0/4 0/0 0/0 .rodata          @4790 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4790 = -5.0f;
COMPILER_STRIP_GATE(0x807C2038, &lit_4790);
#pragma pop

/* 807C203C-807C2040 000084 0004+00 0/7 0/0 0/0 .rodata          @4791 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4791 = 3.0f;
COMPILER_STRIP_GATE(0x807C203C, &lit_4791);
#pragma pop

/* 807C2040-807C2044 000088 0004+00 0/2 0/0 0/0 .rodata          @4792 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4792 = 200.0f;
COMPILER_STRIP_GATE(0x807C2040, &lit_4792);
#pragma pop

/* 807C2044-807C2048 00008C 0004+00 0/1 0/0 0/0 .rodata          @4793 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4793 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x807C2044, &lit_4793);
#pragma pop

/* 807C2048-807C204C 000090 0004+00 0/1 0/0 0/0 .rodata          @4794 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4794 = 12288.0f;
COMPILER_STRIP_GATE(0x807C2048, &lit_4794);
#pragma pop

/* 807BED70-807BF358 0016B0 05E8+00 2/1 0/0 0/0 .text            executeWait__8daE_TT_cFv */
void daE_TT_c::executeWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807C204C-807C2050 000094 0004+00 0/0 0/0 0/0 .rodata          @4795 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4795 = 4.0f;
COMPILER_STRIP_GATE(0x807C204C, &lit_4795);
#pragma pop

/* 807C2050-807C2054 000098 0004+00 1/1 0/0 0/0 .rodata          @4796 */
SECTION_RODATA static f32 const lit_4796 = 15.0f;
COMPILER_STRIP_GATE(0x807C2050, &lit_4796);

/* 807C2054-807C2058 00009C 0004+00 0/1 0/0 0/0 .rodata          @4797 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4797 = 35.0f;
COMPILER_STRIP_GATE(0x807C2054, &lit_4797);
#pragma pop

/* 807C2058-807C205C 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4798 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4798 = 5.0f;
COMPILER_STRIP_GATE(0x807C2058, &lit_4798);
#pragma pop

/* 807C205C-807C2060 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4799 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4799 = 1.5f;
COMPILER_STRIP_GATE(0x807C205C, &lit_4799);
#pragma pop

/* 807C2060-807C2068 0000A8 0004+04 0/0 0/0 0/0 .rodata          @4940 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4940[1 + 1 /* padding */] = {
    250.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x807C2060, &lit_4940);
#pragma pop

/* 807C2068-807C2070 0000B0 0008+00 0/3 0/0 0/0 .rodata          @4943 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4943[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x807C2068, &lit_4943);
#pragma pop

/* 807BF358-807BF914 001C98 05BC+00 2/1 0/0 0/0 .text            executeChase__8daE_TT_cFv */
void daE_TT_c::executeChase() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807C2070-807C2074 0000B8 0004+00 0/1 0/0 0/0 .rodata          @5054 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5054 = 85.0f;
COMPILER_STRIP_GATE(0x807C2070, &lit_5054);
#pragma pop

/* 807C2074-807C2078 0000BC 0004+00 0/1 0/0 0/0 .rodata          @5055 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5055 = 17.0f;
COMPILER_STRIP_GATE(0x807C2074, &lit_5055);
#pragma pop

/* 807C2078-807C207C 0000C0 0004+00 0/1 0/0 0/0 .rodata          @5056 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5056 = -3.0f;
COMPILER_STRIP_GATE(0x807C2078, &lit_5056);
#pragma pop

/* 807BF914-807BFD38 002254 0424+00 1/1 0/0 0/0 .text            executeAttack__8daE_TT_cFv */
void daE_TT_c::executeAttack() {
    // NONMATCHING
}

/* 807BFD38-807BFD60 002678 0028+00 1/1 0/0 0/0 .text            setDamageInit__8daE_TT_cFv */
void daE_TT_c::setDamageInit() {
    // NONMATCHING
}

/* 807BFD60-807BFFF4 0026A0 0294+00 2/1 0/0 0/0 .text            executeDamage__8daE_TT_cFv */
void daE_TT_c::executeDamage() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807C207C-807C2080 0000C4 0004+00 0/1 0/0 0/0 .rodata          @5103 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5103 = 2.0f;
COMPILER_STRIP_GATE(0x807C207C, &lit_5103);
#pragma pop

/* 807C2080-807C2084 0000C8 0004+00 0/1 0/0 0/0 .rodata          @5178 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5178 = 18.0f;
COMPILER_STRIP_GATE(0x807C2080, &lit_5178);
#pragma pop

/* 807C2084-807C2088 0000CC 0004+00 0/1 0/0 0/0 .rodata          @5179 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5179 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x807C2084, &lit_5179);
#pragma pop

/* 807BFFF4-807C033C 002934 0348+00 1/1 0/0 0/0 .text            executeDeath__8daE_TT_cFv */
void daE_TT_c::executeDeath() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807C2088-807C208C 0000D0 0004+00 0/1 0/0 0/0 .rodata          @5218 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5218 = 2000.0f;
COMPILER_STRIP_GATE(0x807C2088, &lit_5218);
#pragma pop

/* 807C033C-807C0530 002C7C 01F4+00 1/1 0/0 0/0 .text            executeOutRange__8daE_TT_cFv */
void daE_TT_c::executeOutRange() {
    // NONMATCHING
}

/* 807C0530-807C0C28 002E70 06F8+00 2/1 0/0 0/0 .text            executeFirstAttack__8daE_TT_cFv */
void daE_TT_c::executeFirstAttack() {
    // NONMATCHING
}

/* 807C0C28-807C0E10 003568 01E8+00 2/1 0/0 0/0 .text            action__8daE_TT_cFv */
void daE_TT_c::action() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807C208C-807C2090 0000D4 0004+00 0/0 0/0 0/0 .rodata          @5447 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5447 = 65.0f;
COMPILER_STRIP_GATE(0x807C208C, &lit_5447);
#pragma pop

/* 807C2090-807C2094 0000D8 0004+00 0/0 0/0 0/0 .rodata          @5448 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5448 = 13.0f;
COMPILER_STRIP_GATE(0x807C2090, &lit_5448);
#pragma pop

/* 807C2094-807C2098 0000DC 0004+00 0/1 0/0 0/0 .rodata          @5449 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5449 = 80.0f;
COMPILER_STRIP_GATE(0x807C2094, &lit_5449);
#pragma pop

/* 807C2098-807C209C 0000E0 0004+00 1/1 0/0 0/0 .rodata          @5507 */
SECTION_RODATA static f32 const lit_5507 = 3000.0f;
COMPILER_STRIP_GATE(0x807C2098, &lit_5507);

/* 807C0E10-807C0EE8 003750 00D8+00 2/2 0/0 0/0 .text            mtx_set__8daE_TT_cFi */
void daE_TT_c::mtx_set(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807C209C-807C20A0 0000E4 0004+00 0/1 0/0 0/0 .rodata          @5546 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5546 = 55.0f;
COMPILER_STRIP_GATE(0x807C209C, &lit_5546);
#pragma pop

/* 807C0EE8-807C1024 003828 013C+00 1/1 0/0 0/0 .text            cc_set__8daE_TT_cFv */
void daE_TT_c::cc_set() {
    // NONMATCHING
}

/* 807C1024-807C113C 003964 0118+00 1/1 0/0 0/0 .text            execute__8daE_TT_cFv */
void daE_TT_c::execute() {
    // NONMATCHING
}

/* 807C113C-807C115C 003A7C 0020+00 1/0 0/0 0/0 .text            daE_TT_Execute__FP8daE_TT_c */
static void daE_TT_Execute(daE_TT_c* param_0) {
    // NONMATCHING
}

/* 807C115C-807C1164 003A9C 0008+00 1/0 0/0 0/0 .text            daE_TT_IsDelete__FP8daE_TT_c */
static bool daE_TT_IsDelete(daE_TT_c* param_0) {
    return true;
}

/* 807C1164-807C11FC 003AA4 0098+00 1/1 0/0 0/0 .text            _delete__8daE_TT_cFv */
void daE_TT_c::_delete() {
    // NONMATCHING
}

/* 807C11FC-807C121C 003B3C 0020+00 1/0 0/0 0/0 .text            daE_TT_Delete__FP8daE_TT_c */
static void daE_TT_Delete(daE_TT_c* param_0) {
    // NONMATCHING
}

/* 807C121C-807C1394 003B5C 0178+00 1/1 0/0 0/0 .text            CreateHeap__8daE_TT_cFv */
void daE_TT_c::CreateHeap() {
    // NONMATCHING
}

/* 807C1394-807C13B4 003CD4 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807C20A0-807C20A8 0000E8 0004+04 0/1 0/0 0/0 .rodata          @5789 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5789[1 + 1 /* padding */] = {
    -200.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x807C20A0, &lit_5789);
#pragma pop

/* 807C20A8-807C20B0 0000F0 0008+00 0/1 0/0 0/0 .rodata          @5791 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5791[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x807C20A8, &lit_5791);
#pragma pop

/* 807C20B0-807C20B0 0000F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_807C20B5 = "E_TTR";
SECTION_DEAD static char const* const stringBase_807C20BB = "E_TTB";
SECTION_DEAD static char const* const stringBase_807C20C1 = "E_tt";
#pragma pop

/* 807C13B4-807C17FC 003CF4 0448+00 1/1 0/0 0/0 .text            create__8daE_TT_cFv */
void daE_TT_c::create() {
    // NONMATCHING
}

/* 807C17FC-807C1844 00413C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 807C1844-807C188C 004184 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 807C188C-807C18E8 0041CC 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 807C18E8-807C1958 004228 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 807C1958-807C19C8 004298 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 807C19C8-807C1A40 004308 0078+00 4/3 0/0 0/0 .text            __dt__14dBgS_ObjGndChkFv */
// dBgS_ObjGndChk::~dBgS_ObjGndChk() {
extern "C" void __dt__14dBgS_ObjGndChkFv() {
    // NONMATCHING
}

/* 807C1A40-807C1A60 004380 0020+00 1/0 0/0 0/0 .text            daE_TT_Create__FP8daE_TT_c */
static void daE_TT_Create(daE_TT_c* param_0) {
    // NONMATCHING
}

/* 807C1A60-807C1AA8 0043A0 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 807C1AA8-807C1AF0 0043E8 0048+00 2/1 0/0 0/0 .text            __dt__12daE_TT_HIO_cFv */
daE_TT_HIO_c::~daE_TT_HIO_c() {
    // NONMATCHING
}

/* 807C1AF0-807C1B2C 004430 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_tt_cpp */
void __sinit_d_a_e_tt_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x807C1AF0, __sinit_d_a_e_tt_cpp);
#pragma pop

/* 807C1B2C-807C1B34 00446C 0008+00 1/0 0/0 0/0 .text            @20@__dt__14dBgS_ObjGndChkFv */
static void func_807C1B2C() {
    // NONMATCHING
}

/* 807C1B34-807C1B3C 004474 0008+00 1/0 0/0 0/0 .text            @76@__dt__14dBgS_ObjGndChkFv */
static void func_807C1B34() {
    // NONMATCHING
}

/* 807C1B3C-807C1B44 00447C 0008+00 1/0 0/0 0/0 .text            @60@__dt__14dBgS_ObjGndChkFv */
static void func_807C1B3C() {
    // NONMATCHING
}

/* 807C1B44-807C1B4C 004484 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_807C1B44() {
    // NONMATCHING
}

/* 807C1B4C-807C1B54 00448C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_807C1B4C() {
    // NONMATCHING
}

/* 807C1F68-807C1FA4 0048A8 003C+00 5/5 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807C2494-807C2498 0000FC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_807C2494[4];
#pragma pop

/* 807C2498-807C249C 000100 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_807C2498[4];
#pragma pop

/* 807C249C-807C24A0 000104 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_807C249C[4];
#pragma pop

/* 807C24A0-807C24A4 000108 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_807C24A0[4];
#pragma pop

/* 807C24A4-807C24A8 00010C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807C24A4[4];
#pragma pop

/* 807C24A8-807C24AC 000110 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807C24A8[4];
#pragma pop

/* 807C24AC-807C24B0 000114 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_807C24AC[4];
#pragma pop

/* 807C24B0-807C24B4 000118 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_807C24B0[4];
#pragma pop

/* 807C24B4-807C24B8 00011C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_807C24B4[4];
#pragma pop

/* 807C24B8-807C24BC 000120 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_807C24B8[4];
#pragma pop

/* 807C24BC-807C24C0 000124 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_807C24BC[4];
#pragma pop

/* 807C24C0-807C24C4 000128 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_807C24C0[4];
#pragma pop

/* 807C24C4-807C24C8 00012C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_807C24C4[4];
#pragma pop

/* 807C24C8-807C24CC 000130 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807C24C8[4];
#pragma pop

/* 807C24CC-807C24D0 000134 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_807C24CC[4];
#pragma pop

/* 807C24D0-807C24D4 000138 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_807C24D0[4];
#pragma pop

/* 807C24D4-807C24D8 00013C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_807C24D4[4];
#pragma pop

/* 807C24D8-807C24DC 000140 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_807C24D8[4];
#pragma pop

/* 807C24DC-807C24E0 000144 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_807C24DC[4];
#pragma pop

/* 807C24E0-807C24E4 000148 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_807C24E0[4];
#pragma pop

/* 807C24E4-807C24E8 00014C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_807C24E4[4];
#pragma pop

/* 807C24E8-807C24EC 000150 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807C24E8[4];
#pragma pop

/* 807C24EC-807C24F0 000154 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807C24EC[4];
#pragma pop

/* 807C24F0-807C24F4 000158 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807C24F0[4];
#pragma pop

/* 807C24F4-807C24F8 00015C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_807C24F4[4];
#pragma pop

/* 807C20B0-807C20B0 0000F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
