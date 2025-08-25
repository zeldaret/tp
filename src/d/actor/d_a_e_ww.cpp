/**
 * @file d_a_e_ww.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_e_ww.h"
#include "dol2asm.h"
#include "f_op/f_op_actor_enemy.h"



//
// Forward References:
//

extern "C" void __ct__12daE_WW_HIO_cFv();
extern "C" void ctrlJoint__8daE_WW_cFP8J3DJointP8J3DModel();
extern "C" void JointCallBack__8daE_WW_cFP8J3DJointi();
extern "C" void setHeadAngle__8daE_WW_cFv();
extern "C" void draw__8daE_WW_cFv();
extern "C" static void daE_WW_Draw__FP8daE_WW_c();
extern "C" void setBck__8daE_WW_cFiUcff();
extern "C" void checkBck__8daE_WW_cFi();
extern "C" void setActionMode__8daE_WW_cFii();
extern "C" void damage_check__8daE_WW_cFv();
extern "C" void setRandamNumber__8daE_WW_cFv();
extern "C" void getNearPlayerAngle__8daE_WW_cFv();
extern "C" void setGroundAngle__8daE_WW_cFv();
extern "C" void checkCreateBg__8daE_WW_cF4cXyz();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void checkAttackWall__8daE_WW_cFv();
extern "C" void setBlurEffect__8daE_WW_cFv();
extern "C" void setAppearEffect__8daE_WW_cFv();
extern "C" void __dt__14dBgS_ObjGndChkFv();
extern "C" static void s_child_ww__FPvPv();
extern "C" static void s_obj_sub__FPvPv();
extern "C" void checkSideStep__8daE_WW_cFv();
extern "C" static void s_attack_ww__FPvPv();
extern "C" void createWolf__8daE_WW_cF4cXyzUc();
extern "C" void executeMaster__8daE_WW_cFv();
extern "C" void executeWait__8daE_WW_cFv();
extern "C" void calcJumpSpeed__8daE_WW_cFv();
extern "C" void executeAttack__8daE_WW_cFv();
extern "C" void checkAttackStart__8daE_WW_cFv();
extern "C" void executeChase__8daE_WW_cFv();
extern "C" void executeDamage__8daE_WW_cFv();
extern "C" void checkMoveOut__8daE_WW_cFv();
extern "C" void executeMoveOut__8daE_WW_cFv();
extern "C" void checkWalkStart__8daE_WW_cFv();
extern "C" void executeWalk__8daE_WW_cFv();
extern "C" void eWW_posMoveF__8daE_WW_cFv();
extern "C" void action__8daE_WW_cFv();
extern "C" void mtx_set__8daE_WW_cFv();
extern "C" void cc_set__8daE_WW_cFv();
extern "C" void execute__8daE_WW_cFv();
extern "C" static void daE_WW_Execute__FP8daE_WW_c();
extern "C" void calcMoveDir__8daE_WW_cFPss();
extern "C" static bool daE_WW_IsDelete__FP8daE_WW_c();
extern "C" void _delete__8daE_WW_cFv();
extern "C" static void daE_WW_Delete__FP8daE_WW_c();
extern "C" void CreateHeap__8daE_WW_cFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void create__8daE_WW_cFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" static void daE_WW_Create__FP8daE_WW_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_WW_HIO_cFv();
extern "C" void __sinit_d_a_e_ww_cpp();
extern "C" static void func_807EF2CC();
extern "C" static void func_807EF2D4();
extern "C" static void func_807EF2DC();
extern "C" static void func_807EF2E4();
extern "C" static void func_807EF2EC();
extern "C" void __dt__4cXyzFv();
extern "C" void checkNowWolf__9daPy_py_cFv();
extern "C" extern char const* const d_a_e_ww__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
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
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_SearchByID__FUiPP10fopAc_ac_c();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcM_IsCreating__FUi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
setPoly__13dPa_control_cFUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void GetSpecialCode__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void __dt__18dBgS_ObjGndChk_AllFv();
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
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ct__5csXyzFsss();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rnd__Fv();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC3Vec();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
extern "C" void cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz();
extern "C" void func_80280808();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __construct_array();
extern "C" void _savegpr_19();
extern "C" void _savegpr_25();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_25();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__18dBgS_ObjGndChk_All[12];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 807EF79C-807EF7A0 00002C 0004+00 0/3 0/0 0/0 .rodata          @3926 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3926 = 150.0f;
COMPILER_STRIP_GATE(0x807EF79C, &lit_3926);
#pragma pop

/* 807EF7A0-807EF7A4 000030 0004+00 0/1 0/0 0/0 .rodata          @3927 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3927 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x807EF7A0, &lit_3927);
#pragma pop

/* 807EF7A4-807EF7A8 000034 0004+00 0/3 0/0 0/0 .rodata          @3928 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3928 = 0.5f;
COMPILER_STRIP_GATE(0x807EF7A4, &lit_3928);
#pragma pop

/* 807EF7A8-807EF7AC 000038 0004+00 0/4 0/0 0/0 .rodata          @3929 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3929 = 40.0f;
COMPILER_STRIP_GATE(0x807EF7A8, &lit_3929);
#pragma pop

/* 807EF7AC-807EF7B0 00003C 0004+00 0/3 0/0 0/0 .rodata          @3930 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3930 = 25.0f;
COMPILER_STRIP_GATE(0x807EF7AC, &lit_3930);
#pragma pop

/* 807EF904-807EF944 000038 0040+00 1/1 0/0 0/0 .data            cc_ww_src__22@unnamed@d_a_e_ww_cpp@
 */
SECTION_DATA static u8 data_807EF904[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x75, 0x09, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};

/* 807EF944-807EF984 000078 0040+00 1/1 0/0 0/0 .data cc_ww_tg_src__22@unnamed@d_a_e_ww_cpp@ */
SECTION_DATA static u8 data_807EF944[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};

/* 807EF984-807EF9F0 -00001 006C+00 1/1 0/0 0/0 .data            @5116 */
SECTION_DATA static void* lit_5116[27] = {
    (void*)(((char*)executeAttack__8daE_WW_cFv) + 0x58),
    (void*)(((char*)executeAttack__8daE_WW_cFv) + 0x9C),
    (void*)(((char*)executeAttack__8daE_WW_cFv) + 0x7E8),
    (void*)(((char*)executeAttack__8daE_WW_cFv) + 0x7E8),
    (void*)(((char*)executeAttack__8daE_WW_cFv) + 0x7E8),
    (void*)(((char*)executeAttack__8daE_WW_cFv) + 0x7E8),
    (void*)(((char*)executeAttack__8daE_WW_cFv) + 0x7E8),
    (void*)(((char*)executeAttack__8daE_WW_cFv) + 0x7E8),
    (void*)(((char*)executeAttack__8daE_WW_cFv) + 0x7E8),
    (void*)(((char*)executeAttack__8daE_WW_cFv) + 0x7E8),
    (void*)(((char*)executeAttack__8daE_WW_cFv) + 0x1F0),
    (void*)(((char*)executeAttack__8daE_WW_cFv) + 0x2CC),
    (void*)(((char*)executeAttack__8daE_WW_cFv) + 0x348),
    (void*)(((char*)executeAttack__8daE_WW_cFv) + 0x7E8),
    (void*)(((char*)executeAttack__8daE_WW_cFv) + 0x7E8),
    (void*)(((char*)executeAttack__8daE_WW_cFv) + 0x7E8),
    (void*)(((char*)executeAttack__8daE_WW_cFv) + 0x7E8),
    (void*)(((char*)executeAttack__8daE_WW_cFv) + 0x7E8),
    (void*)(((char*)executeAttack__8daE_WW_cFv) + 0x7E8),
    (void*)(((char*)executeAttack__8daE_WW_cFv) + 0x7E8),
    (void*)(((char*)executeAttack__8daE_WW_cFv) + 0x464),
    (void*)(((char*)executeAttack__8daE_WW_cFv) + 0x5C0),
    (void*)(((char*)executeAttack__8daE_WW_cFv) + 0x624),
    (void*)(((char*)executeAttack__8daE_WW_cFv) + 0x7E8),
    (void*)(((char*)executeAttack__8daE_WW_cFv) + 0x7E8),
    (void*)(((char*)executeAttack__8daE_WW_cFv) + 0x6BC),
    (void*)(((char*)executeAttack__8daE_WW_cFv) + 0x6BC),
};

/* 807EF9F0-807EFA64 -00001 0074+00 1/1 0/0 0/0 .data            @6010 */
SECTION_DATA static void* lit_6010[29] = {
    (void*)(((char*)executeMoveOut__8daE_WW_cFv) + 0x70),
    (void*)(((char*)executeMoveOut__8daE_WW_cFv) + 0xE40),
    (void*)(((char*)executeMoveOut__8daE_WW_cFv) + 0xE40),
    (void*)(((char*)executeMoveOut__8daE_WW_cFv) + 0xE40),
    (void*)(((char*)executeMoveOut__8daE_WW_cFv) + 0xE40),
    (void*)(((char*)executeMoveOut__8daE_WW_cFv) + 0xE40),
    (void*)(((char*)executeMoveOut__8daE_WW_cFv) + 0xE40),
    (void*)(((char*)executeMoveOut__8daE_WW_cFv) + 0xE40),
    (void*)(((char*)executeMoveOut__8daE_WW_cFv) + 0xE40),
    (void*)(((char*)executeMoveOut__8daE_WW_cFv) + 0xE40),
    (void*)(((char*)executeMoveOut__8daE_WW_cFv) + 0xA0),
    (void*)(((char*)executeMoveOut__8daE_WW_cFv) + 0x5C8),
    (void*)(((char*)executeMoveOut__8daE_WW_cFv) + 0x604),
    (void*)(((char*)executeMoveOut__8daE_WW_cFv) + 0xE40),
    (void*)(((char*)executeMoveOut__8daE_WW_cFv) + 0xE40),
    (void*)(((char*)executeMoveOut__8daE_WW_cFv) + 0x8F4),
    (void*)(((char*)executeMoveOut__8daE_WW_cFv) + 0x96C),
    (void*)(((char*)executeMoveOut__8daE_WW_cFv) + 0xE40),
    (void*)(((char*)executeMoveOut__8daE_WW_cFv) + 0xE40),
    (void*)(((char*)executeMoveOut__8daE_WW_cFv) + 0xE40),
    (void*)(((char*)executeMoveOut__8daE_WW_cFv) + 0xE40),
    (void*)(((char*)executeMoveOut__8daE_WW_cFv) + 0xE40),
    (void*)(((char*)executeMoveOut__8daE_WW_cFv) + 0xE40),
    (void*)(((char*)executeMoveOut__8daE_WW_cFv) + 0xE40),
    (void*)(((char*)executeMoveOut__8daE_WW_cFv) + 0xE40),
    (void*)(((char*)executeMoveOut__8daE_WW_cFv) + 0xC64),
    (void*)(((char*)executeMoveOut__8daE_WW_cFv) + 0xE40),
    (void*)(((char*)executeMoveOut__8daE_WW_cFv) + 0xD3C),
    (void*)(((char*)executeMoveOut__8daE_WW_cFv) + 0xDB8),
};

/* 807EFA64-807EFA80 -00001 001C+00 1/1 0/0 0/0 .data            @6441 */
SECTION_DATA static void* lit_6441[7] = {
    (void*)(((char*)action__8daE_WW_cFv) + 0x7C), (void*)(((char*)action__8daE_WW_cFv) + 0x88),
    (void*)(((char*)action__8daE_WW_cFv) + 0x94), (void*)(((char*)action__8daE_WW_cFv) + 0xA4),
    (void*)(((char*)action__8daE_WW_cFv) + 0xB4), (void*)(((char*)action__8daE_WW_cFv) + 0xC4),
    (void*)(((char*)action__8daE_WW_cFv) + 0xD0),
};

/* 807EFA80-807EFAA0 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_WW_Method */
static actor_method_class l_daE_WW_Method = {
    (process_method_func)daE_WW_Create__FP8daE_WW_c,
    (process_method_func)daE_WW_Delete__FP8daE_WW_c,
    (process_method_func)daE_WW_Execute__FP8daE_WW_c,
    (process_method_func)daE_WW_IsDelete__FP8daE_WW_c,
    (process_method_func)daE_WW_Draw__FP8daE_WW_c,
};

/* 807EFAA0-807EFAD0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_WW */
extern actor_process_profile_definition g_profile_E_WW = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_WW,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daE_WW_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  209,                    // mPriority
  &l_daE_WW_Method,       // sub_method
  0x00044100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 807EFAD0-807EFADC 000204 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 807EFADC-807EFAE8 000210 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 807EFAE8-807EFAF4 00021C 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 807EFAF4-807EFB00 000228 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 807EFB00-807EFB0C 000234 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 807EFB0C-807EFB30 000240 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807EF2EC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807EF2E4,
};

/* 807EFB30-807EFB60 000264 0030+00 2/2 0/0 0/0 .data            __vt__14dBgS_ObjGndChk */
SECTION_DATA extern void* __vt__14dBgS_ObjGndChk[12] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14dBgS_ObjGndChkFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807EF2CC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807EF2DC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807EF2D4,
};

/* 807EFB60-807EFB6C 000294 000C+00 5/5 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 807EFB6C-807EFB78 0002A0 000C+00 2/2 0/0 0/0 .data            __vt__12daE_WW_HIO_c */
SECTION_DATA extern void* __vt__12daE_WW_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_WW_HIO_cFv,
};

/* 807E76EC-807E7748 0000EC 005C+00 1/1 0/0 0/0 .text            __ct__12daE_WW_HIO_cFv */
daE_WW_HIO_c::daE_WW_HIO_c() {
    // NONMATCHING
}

/* 807E7748-807E7800 000148 00B8+00 1/1 0/0 0/0 .text ctrlJoint__8daE_WW_cFP8J3DJointP8J3DModel */
void daE_WW_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 807E7800-807E784C 000200 004C+00 1/1 0/0 0/0 .text JointCallBack__8daE_WW_cFP8J3DJointi */
void daE_WW_c::JointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 807E784C-807E79D4 00024C 0188+00 1/1 0/0 0/0 .text            setHeadAngle__8daE_WW_cFv */
void daE_WW_c::setHeadAngle() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807EF7B0-807EF7B4 000040 0004+00 0/3 0/0 0/0 .rodata          @4038 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4038 = 700.0f;
COMPILER_STRIP_GATE(0x807EF7B0, &lit_4038);
#pragma pop

/* 807E79D4-807E7ABC 0003D4 00E8+00 1/1 0/0 0/0 .text            draw__8daE_WW_cFv */
void daE_WW_c::draw() {
    // NONMATCHING
}

/* 807E7ABC-807E7ADC 0004BC 0020+00 1/0 0/0 0/0 .text            daE_WW_Draw__FP8daE_WW_c */
static void daE_WW_Draw(daE_WW_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807EF7B4-807EF7B8 000044 0004+00 1/1 0/0 0/0 .rodata          @4048 */
SECTION_RODATA static f32 const lit_4048 = -1.0f;
COMPILER_STRIP_GATE(0x807EF7B4, &lit_4048);

/* 807EF8B8-807EF8B8 000148 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_807EF8B8 = "E_WW";
#pragma pop

/* 807E7ADC-807E7B80 0004DC 00A4+00 6/6 0/0 0/0 .text            setBck__8daE_WW_cFiUcff */
void daE_WW_c::setBck(int param_0, u8 param_1, f32 param_2, f32 param_3) {
    // NONMATCHING
}

/* 807E7B80-807E7BDC 000580 005C+00 1/1 0/0 0/0 .text            checkBck__8daE_WW_cFi */
void daE_WW_c::checkBck(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807EF7B8-807EF7BC 000048 0004+00 1/3 0/0 0/0 .rodata          @4066 */
SECTION_RODATA static f32 const lit_4066 = -5.0f;
COMPILER_STRIP_GATE(0x807EF7B8, &lit_4066);

/* 807E7BDC-807E7C20 0005DC 0044+00 11/11 0/0 0/0 .text            setActionMode__8daE_WW_cFii */
void daE_WW_c::setActionMode(int param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807EF7BC-807EF7C0 00004C 0004+00 0/2 0/0 0/0 .rodata          @4138 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4138 = -10.0f;
COMPILER_STRIP_GATE(0x807EF7BC, &lit_4138);
#pragma pop

/* 807EF7C0-807EF7C4 000050 0004+00 0/2 0/0 0/0 .rodata          @4139 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4139 = -20.0f;
COMPILER_STRIP_GATE(0x807EF7C0, &lit_4139);
#pragma pop

/* 807E7C20-807E7E74 000620 0254+00 1/1 0/0 0/0 .text            damage_check__8daE_WW_cFv */
void daE_WW_c::damage_check() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807EF7C4-807EF7C8 000054 0004+00 0/1 0/0 0/0 .rodata          @4166 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4166 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x807EF7C4, &lit_4166);
#pragma pop

/* 807EF7C8-807EF7CC 000058 0004+00 0/1 0/0 0/0 .rodata          @4167 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4167 = 8.0f;
COMPILER_STRIP_GATE(0x807EF7C8, &lit_4167);
#pragma pop

/* 807EF7CC-807EF7D0 00005C 0004+00 0/8 0/0 0/0 .rodata          @4168 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4168 = 3.0f;
COMPILER_STRIP_GATE(0x807EF7CC, &lit_4168);
#pragma pop

/* 807EF7D0-807EF7D8 000060 0008+00 1/5 0/0 0/0 .rodata          @4170 */
SECTION_RODATA static u8 const lit_4170[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x807EF7D0, &lit_4170);

/* 807E7E74-807E7FCC 000874 0158+00 1/1 0/0 0/0 .text            setRandamNumber__8daE_WW_cFv */
void daE_WW_c::setRandamNumber() {
    // NONMATCHING
}

/* 807E7FCC-807E804C 0009CC 0080+00 2/2 0/0 0/0 .text            getNearPlayerAngle__8daE_WW_cFv */
void daE_WW_c::getNearPlayerAngle() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807EF7D8-807EF7DC 000068 0004+00 1/6 0/0 0/0 .rodata          @4248 */
SECTION_RODATA static f32 const lit_4248 = -1000000000.0f;
COMPILER_STRIP_GATE(0x807EF7D8, &lit_4248);

/* 807EF7DC-807EF7E0 00006C 0004+00 0/1 0/0 0/0 .rodata          @4249 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4249 = 50.0f;
COMPILER_STRIP_GATE(0x807EF7DC, &lit_4249);
#pragma pop

/* 807E804C-807E830C 000A4C 02C0+00 1/1 0/0 0/0 .text            setGroundAngle__8daE_WW_cFv */
void daE_WW_c::setGroundAngle() {
    // NONMATCHING
}

/* 807E830C-807E8518 000D0C 020C+00 3/3 0/0 0/0 .text            checkCreateBg__8daE_WW_cF4cXyz */
void daE_WW_c::checkCreateBg(cXyz param_0) {
    // NONMATCHING
}

/* 807E8518-807E8560 000F18 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* 807E8560-807E8624 000F60 00C4+00 3/3 0/0 0/0 .text            checkAttackWall__8daE_WW_cFv */
void daE_WW_c::checkAttackWall() {
    // NONMATCHING
}

/* 807E8624-807E8700 001024 00DC+00 1/1 0/0 0/0 .text            setBlurEffect__8daE_WW_cFv */
void daE_WW_c::setBlurEffect() {
    // NONMATCHING
}

/* 807E8700-807E8A08 001100 0308+00 2/2 0/0 0/0 .text            setAppearEffect__8daE_WW_cFv */
void daE_WW_c::setAppearEffect() {
    // NONMATCHING
}

/* 807E8A08-807E8A80 001408 0078+00 4/3 0/0 0/0 .text            __dt__14dBgS_ObjGndChkFv */
// dBgS_ObjGndChk::~dBgS_ObjGndChk() {
extern "C" void __dt__14dBgS_ObjGndChkFv() {
    // NONMATCHING
}

/* 807EFBC0-807EFBCC 000048 000C+00 0/1 0/0 0/0 .bss             @3921 */
#pragma push
#pragma force_active on
static u8 lit_3921[12];
#pragma pop

/* 807EFBCC-807EFBF4 000054 0028+00 7/8 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[40];

/* 807EFBF4-807EFBF8 00007C 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_807EFBF4[4];

/* 807E8A80-807E8B2C 001480 00AC+00 1/1 0/0 0/0 .text            s_child_ww__FPvPv */
static void s_child_ww(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807EF7E0-807EF7E4 000070 0004+00 0/6 0/0 0/0 .rodata          @4507 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4507 = 500.0f;
COMPILER_STRIP_GATE(0x807EF7E0, &lit_4507);
#pragma pop

/* 807E8B2C-807E8C54 00152C 0128+00 1/1 0/0 0/0 .text            s_obj_sub__FPvPv */
static s32 s_obj_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 807E8C54-807E8E6C 001654 0218+00 4/4 0/0 0/0 .text            checkSideStep__8daE_WW_cFv */
void daE_WW_c::checkSideStep() {
    // NONMATCHING
}

/* 807E8E6C-807E8EEC 00186C 0080+00 1/1 0/0 0/0 .text            s_attack_ww__FPvPv */
static void s_attack_ww(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807EF7E4-807EF7E8 000074 0004+00 1/1 0/0 0/0 .rodata          @4621 */
SECTION_RODATA static f32 const lit_4621 = 4096.0f;
COMPILER_STRIP_GATE(0x807EF7E4, &lit_4621);

/* 807E8EEC-807E905C 0018EC 0170+00 2/2 0/0 0/0 .text            createWolf__8daE_WW_cF4cXyzUc */
void daE_WW_c::createWolf(cXyz param_0, u8 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807EF7E8-807EF7EC 000078 0004+00 0/1 0/0 0/0 .rodata          @4824 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4824 = 2500.0f;
COMPILER_STRIP_GATE(0x807EF7E8, &lit_4824);
#pragma pop

/* 807EF7EC-807EF7F0 00007C 0004+00 0/2 0/0 0/0 .rodata          @4825 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4825 = 3000.0f;
COMPILER_STRIP_GATE(0x807EF7EC, &lit_4825);
#pragma pop

/* 807EF7F0-807EF7F4 000080 0004+00 0/5 0/0 0/0 .rodata          @4826 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4826 = 200.0f;
COMPILER_STRIP_GATE(0x807EF7F0, &lit_4826);
#pragma pop

/* 807EFBF8-807EFC04 000080 000C+00 0/1 0/0 0/0 .bss             @4585 */
#pragma push
#pragma force_active on
static u8 lit_4585[12];
#pragma pop

/* 807EFC04-807EFC10 00008C 000C+00 0/1 0/0 0/0 .bss             @4586 */
#pragma push
#pragma force_active on
static u8 lit_4586[12];
#pragma pop

/* 807EFC10-807EFC1C 000098 000C+00 0/1 0/0 0/0 .bss             @4587 */
#pragma push
#pragma force_active on
static u8 lit_4587[12];
#pragma pop

/* 807EFC1C-807EFC28 0000A4 000C+00 0/1 0/0 0/0 .bss             @4588 */
#pragma push
#pragma force_active on
static u8 lit_4588[12];
#pragma pop

/* 807EFC28-807EFC34 0000B0 000C+00 0/1 0/0 0/0 .bss             @4589 */
#pragma push
#pragma force_active on
static u8 lit_4589[12];
#pragma pop

/* 807EFC34-807EFC40 0000BC 000C+00 0/1 0/0 0/0 .bss             @4590 */
#pragma push
#pragma force_active on
static u8 lit_4590[12];
#pragma pop

/* 807EFC40-807EFC4C 0000C8 000C+00 0/1 0/0 0/0 .bss             @4591 */
#pragma push
#pragma force_active on
static u8 lit_4591[12];
#pragma pop

/* 807EFC4C-807EFC58 0000D4 000C+00 0/1 0/0 0/0 .bss             @4592 */
#pragma push
#pragma force_active on
static u8 lit_4592[12];
#pragma pop

/* 807EFC58-807EFC64 0000E0 000C+00 0/1 0/0 0/0 .bss             @4593 */
#pragma push
#pragma force_active on
static u8 lit_4593[12];
#pragma pop

/* 807EFC64-807EFC70 0000EC 000C+00 0/1 0/0 0/0 .bss             @4594 */
#pragma push
#pragma force_active on
static u8 lit_4594[12];
#pragma pop

/* 807EFC70-807EFC7C 0000F8 000C+00 0/1 0/0 0/0 .bss             @4595 */
#pragma push
#pragma force_active on
static u8 lit_4595[12];
#pragma pop

/* 807EFC7C-807EFC88 000104 000C+00 0/1 0/0 0/0 .bss             @4596 */
#pragma push
#pragma force_active on
static u8 lit_4596[12];
#pragma pop

/* 807EFC88-807EFC94 000110 000C+00 0/1 0/0 0/0 .bss             @4597 */
#pragma push
#pragma force_active on
static u8 lit_4597[12];
#pragma pop

/* 807EFC94-807EFCA0 00011C 000C+00 0/1 0/0 0/0 .bss             @4598 */
#pragma push
#pragma force_active on
static u8 lit_4598[12];
#pragma pop

/* 807EFCA0-807EFCAC 000128 000C+00 0/1 0/0 0/0 .bss             @4599 */
#pragma push
#pragma force_active on
static u8 lit_4599[12];
#pragma pop

/* 807EFCAC-807EFD60 000134 00B4+00 1/2 0/0 0/0 .bss             create_pos */
static u8 create_pos[180];

/* 807E905C-807E972C 001A5C 06D0+00 1/1 0/0 0/0 .text            executeMaster__8daE_WW_cFv */
void daE_WW_c::executeMaster() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807EF7F4-807EF7F8 000084 0004+00 0/2 0/0 0/0 .rodata          @4884 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4884 = 15.0f;
COMPILER_STRIP_GATE(0x807EF7F4, &lit_4884);
#pragma pop

/* 807EF7F8-807EF7FC 000088 0004+00 0/6 0/0 0/0 .rodata          @4885 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4885 = 20.0f;
COMPILER_STRIP_GATE(0x807EF7F8, &lit_4885);
#pragma pop

/* 807EF7FC-807EF800 00008C 0004+00 0/1 0/0 0/0 .rodata          @4886 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4886 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x807EF7FC, &lit_4886);
#pragma pop

/* 807EF800-807EF804 000090 0004+00 0/4 0/0 0/0 .rodata          @4887 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4887 = 30.0f;
COMPILER_STRIP_GATE(0x807EF800, &lit_4887);
#pragma pop

/* 807E972C-807E99B8 00212C 028C+00 1/1 0/0 0/0 .text            executeWait__8daE_WW_cFv */
void daE_WW_c::executeWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807EF804-807EF808 000094 0004+00 0/1 0/0 0/0 .rodata          @4942 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4942 = 35.0f;
COMPILER_STRIP_GATE(0x807EF804, &lit_4942);
#pragma pop

/* 807EF808-807EF80C 000098 0004+00 0/1 0/0 0/0 .rodata          @4943 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4943 = -35.0f;
COMPILER_STRIP_GATE(0x807EF808, &lit_4943);
#pragma pop

/* 807EF80C-807EF810 00009C 0004+00 0/1 0/0 0/0 .rodata          @4944 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4944 = 17.0f;
COMPILER_STRIP_GATE(0x807EF80C, &lit_4944);
#pragma pop

/* 807EF810-807EF814 0000A0 0004+00 0/2 0/0 0/0 .rodata          @4945 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4945 = -3.0f;
COMPILER_STRIP_GATE(0x807EF810, &lit_4945);
#pragma pop

/* 807E99B8-807E9C1C 0023B8 0264+00 1/1 0/0 0/0 .text            calcJumpSpeed__8daE_WW_cFv */
void daE_WW_c::calcJumpSpeed() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807EF814-807EF818 0000A4 0004+00 0/2 0/0 0/0 .rodata          @5110 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5110 = 800.0f;
COMPILER_STRIP_GATE(0x807EF814, &lit_5110);
#pragma pop

/* 807EF818-807EF81C 0000A8 0004+00 0/3 0/0 0/0 .rodata          @5111 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5111 = 5.0f;
COMPILER_STRIP_GATE(0x807EF818, &lit_5111);
#pragma pop

/* 807E9C1C-807EA474 00261C 0858+00 2/1 0/0 0/0 .text            executeAttack__8daE_WW_cFv */
void daE_WW_c::executeAttack() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807EF81C-807EF820 0000AC 0004+00 0/1 0/0 0/0 .rodata          @5112 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5112 = 2000.0f;
COMPILER_STRIP_GATE(0x807EF81C, &lit_5112);
#pragma pop

/* 807EF820-807EF824 0000B0 0004+00 0/2 0/0 0/0 .rodata          @5113 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5113 = 1000.0f;
COMPILER_STRIP_GATE(0x807EF820, &lit_5113);
#pragma pop

/* 807EF824-807EF828 0000B4 0004+00 0/0 0/0 0/0 .rodata          @5114 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5114 = 18.0f;
COMPILER_STRIP_GATE(0x807EF824, &lit_5114);
#pragma pop

/* 807EF828-807EF82C 0000B8 0004+00 0/2 0/0 0/0 .rodata          @5115 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5115 = 2.0f;
COMPILER_STRIP_GATE(0x807EF828, &lit_5115);
#pragma pop

/* 807EF82C-807EF830 0000BC 0004+00 0/3 0/0 0/0 .rodata          @5256 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5256 = 1400.0f;
COMPILER_STRIP_GATE(0x807EF82C, &lit_5256);
#pragma pop

/* 807EA474-807EA870 002E74 03FC+00 2/2 0/0 0/0 .text            checkAttackStart__8daE_WW_cFv */
void daE_WW_c::checkAttackStart() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807EF830-807EF834 0000C0 0004+00 0/2 0/0 0/0 .rodata          @5522 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5522 = 1500.0f;
COMPILER_STRIP_GATE(0x807EF830, &lit_5522);
#pragma pop

/* 807EF834-807EF838 0000C4 0004+00 0/1 0/0 0/0 .rodata          @5523 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5523 = 1.5f;
COMPILER_STRIP_GATE(0x807EF834, &lit_5523);
#pragma pop

/* 807EF838-807EF83C 0000C8 0004+00 0/3 0/0 0/0 .rodata          @5524 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5524 = 1200.0f;
COMPILER_STRIP_GATE(0x807EF838, &lit_5524);
#pragma pop

/* 807EF83C-807EF840 0000CC 0004+00 0/2 0/0 0/0 .rodata          @5525 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5525 = -40.0f;
COMPILER_STRIP_GATE(0x807EF83C, &lit_5525);
#pragma pop

/* 807EF840-807EF844 0000D0 0004+00 0/3 0/0 0/0 .rodata          @5526 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5526 = 1800.0f;
COMPILER_STRIP_GATE(0x807EF840, &lit_5526);
#pragma pop

/* 807EF844-807EF848 0000D4 0004+00 0/3 0/0 0/0 .rodata          @5527 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5527 = 10.0f;
COMPILER_STRIP_GATE(0x807EF844, &lit_5527);
#pragma pop

/* 807EF848-807EF84C 0000D8 0004+00 0/2 0/0 0/0 .rodata          @5528 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5528 = 1600.0f;
COMPILER_STRIP_GATE(0x807EF848, &lit_5528);
#pragma pop

/* 807EA870-807EB650 003270 0DE0+00 1/1 0/0 0/0 .text            executeChase__8daE_WW_cFv */
void daE_WW_c::executeChase() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807EF84C-807EF850 0000DC 0004+00 0/1 0/0 0/0 .rodata          @5607 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5607 = 14.0f;
COMPILER_STRIP_GATE(0x807EF84C, &lit_5607);
#pragma pop

/* 807EF850-807EF854 0000E0 0004+00 0/1 0/0 0/0 .rodata          @5608 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5608 = 21.0f;
COMPILER_STRIP_GATE(0x807EF850, &lit_5608);
#pragma pop

/* 807EB650-807EB964 004050 0314+00 1/1 0/0 0/0 .text            executeDamage__8daE_WW_cFv */
void daE_WW_c::executeDamage() {
    // NONMATCHING
}

/* 807EB964-807EBAE0 004364 017C+00 3/3 0/0 0/0 .text            checkMoveOut__8daE_WW_cFv */
void daE_WW_c::checkMoveOut() {
    // NONMATCHING
}

/* 807EBAE0-807EC940 0044E0 0E60+00 2/1 0/0 0/0 .text            executeMoveOut__8daE_WW_cFv */
void daE_WW_c::executeMoveOut() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807EF854-807EF858 0000E4 0004+00 0/1 0/0 0/0 .rodata          @6190 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6190 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x807EF854, &lit_6190);
#pragma pop

/* 807EF858-807EF85C 0000E8 0004+00 0/1 0/0 0/0 .rodata          @6191 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6191 = 3072.0f;
COMPILER_STRIP_GATE(0x807EF858, &lit_6191);
#pragma pop

/* 807EF85C-807EF860 0000EC 0004+00 0/1 0/0 0/0 .rodata          @6192 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6192 = 1024.0f;
COMPILER_STRIP_GATE(0x807EF85C, &lit_6192);
#pragma pop

/* 807EF860-807EF864 0000F0 0004+00 0/1 0/0 0/0 .rodata          @6193 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6193 = 1700.0f;
COMPILER_STRIP_GATE(0x807EF860, &lit_6193);
#pragma pop

/* 807EF864-807EF868 0000F4 0004+00 0/1 0/0 0/0 .rodata          @6194 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6194 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x807EF864, &lit_6194);
#pragma pop

/* 807EC940-807ECE58 005340 0518+00 2/2 0/0 0/0 .text            checkWalkStart__8daE_WW_cFv */
void daE_WW_c::checkWalkStart() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807EF868-807EF86C 0000F8 0004+00 0/3 0/0 0/0 .rodata          @6359 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6359 = 300.0f;
COMPILER_STRIP_GATE(0x807EF868, &lit_6359);
#pragma pop

/* 807ECE58-807ED674 005858 081C+00 1/1 0/0 0/0 .text            executeWalk__8daE_WW_cFv */
void daE_WW_c::executeWalk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807EF86C-807EF870 0000FC 0004+00 0/1 0/0 0/0 .rodata          @6385 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6385 = -30.0f;
COMPILER_STRIP_GATE(0x807EF86C, &lit_6385);
#pragma pop

/* 807ED674-807ED78C 006074 0118+00 1/1 0/0 0/0 .text            eWW_posMoveF__8daE_WW_cFv */
void daE_WW_c::eWW_posMoveF() {
    // NONMATCHING
}

/* 807ED78C-807EDA78 00618C 02EC+00 2/1 0/0 0/0 .text            action__8daE_WW_cFv */
void daE_WW_c::action() {
    // NONMATCHING
}

/* 807EDA78-807EDB00 006478 0088+00 1/1 0/0 0/0 .text            mtx_set__8daE_WW_cFv */
void daE_WW_c::mtx_set() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807EF870-807EF874 000100 0004+00 0/0 0/0 0/0 .rodata          @6439 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6439 = 6.0f;
COMPILER_STRIP_GATE(0x807EF870, &lit_6439);
#pragma pop

/* 807EF874-807EF878 000104 0004+00 0/0 0/0 0/0 .rodata          @6440 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6440 = 13.0f;
COMPILER_STRIP_GATE(0x807EF874, &lit_6440);
#pragma pop

/* 807EF878-807EF87C 000108 0004+00 0/1 0/0 0/0 .rodata          @6500 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6500 = 70.0f;
COMPILER_STRIP_GATE(0x807EF878, &lit_6500);
#pragma pop

/* 807EDB00-807EDCC4 006500 01C4+00 1/1 0/0 0/0 .text            cc_set__8daE_WW_cFv */
void daE_WW_c::cc_set() {
    // NONMATCHING
}

/* 807EDCC4-807EDE6C 0066C4 01A8+00 1/1 0/0 0/0 .text            execute__8daE_WW_cFv */
void daE_WW_c::execute() {
    // NONMATCHING
}

/* 807EDE6C-807EDE8C 00686C 0020+00 2/1 0/0 0/0 .text            daE_WW_Execute__FP8daE_WW_c */
static void daE_WW_Execute(daE_WW_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807EF87C-807EF884 00010C 0006+02 0/1 0/0 0/0 .rodata          @6556 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6556[6 + 2 /* padding */] = {
    0x00,
    0x00,
    0xE0,
    0x00,
    0x20,
    0x00,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x807EF87C, &lit_6556);
#pragma pop

/* 807EF8B8-807EF8B8 000148 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_807EF8BD = "D_MN11";
#pragma pop

/* 807EDE8C-807EE438 00688C 05AC+00 2/2 0/0 0/0 .text            calcMoveDir__8daE_WW_cFPss */
void daE_WW_c::calcMoveDir(s16* param_0, s16 param_1) {
    // NONMATCHING
}

/* 807EE438-807EE440 006E38 0008+00 1/0 0/0 0/0 .text            daE_WW_IsDelete__FP8daE_WW_c */
static bool daE_WW_IsDelete(daE_WW_c* param_0) {
    return true;
}

/* 807EE440-807EE4B4 006E40 0074+00 1/1 0/0 0/0 .text            _delete__8daE_WW_cFv */
void daE_WW_c::_delete() {
    // NONMATCHING
}

/* 807EE4B4-807EE4D4 006EB4 0020+00 1/0 0/0 0/0 .text            daE_WW_Delete__FP8daE_WW_c */
static void daE_WW_Delete(daE_WW_c* param_0) {
    // NONMATCHING
}

/* 807EE4D4-807EE61C 006ED4 0148+00 1/1 0/0 0/0 .text            CreateHeap__8daE_WW_cFv */
void daE_WW_c::CreateHeap() {
    // NONMATCHING
}

/* 807EE61C-807EE63C 00701C 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807EF884-807EF888 000114 0004+00 0/2 0/0 0/0 .rodata          @6946 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6946 = -200.0f;
COMPILER_STRIP_GATE(0x807EF884, &lit_6946);
#pragma pop

/* 807EF888-807EF88C 000118 0004+00 0/1 0/0 0/0 .rodata          @6947 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6947 = 65.0f;
COMPILER_STRIP_GATE(0x807EF888, &lit_6947);
#pragma pop

/* 807EF88C-807EF890 00011C 0004+00 0/1 0/0 0/0 .rodata          @6948 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6948 = 130.0f;
COMPILER_STRIP_GATE(0x807EF88C, &lit_6948);
#pragma pop

/* 807EF890-807EF898 000120 0008+00 0/1 0/0 0/0 .rodata          @6950 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6950[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x807EF890, &lit_6950);
#pragma pop

/* 807EF8B8-807EF8B8 000148 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_807EF8C4 = "E_ww";
#pragma pop

/* 807EE63C-807EEB38 00703C 04FC+00 1/1 0/0 0/0 .text            create__8daE_WW_cFv */
void daE_WW_c::create() {
    // NONMATCHING
}

/* 807EEB38-807EEC04 007538 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 807EEC04-807EEC88 007604 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 807EEC88-807EECD0 007688 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 807EECD0-807EED18 0076D0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 807EED18-807EED74 007718 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 807EED74-807EEDE4 007774 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 807EEDE4-807EEE54 0077E4 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 807EEE54-807EEE74 007854 0020+00 1/0 0/0 0/0 .text            daE_WW_Create__FP8daE_WW_c */
static void daE_WW_Create(daE_WW_c* param_0) {
    // NONMATCHING
}

/* 807EEE74-807EEEBC 007874 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 807EEEBC-807EEF04 0078BC 0048+00 2/1 0/0 0/0 .text            __dt__12daE_WW_HIO_cFv */
daE_WW_HIO_c::~daE_WW_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807EF898-807EF89C 000128 0004+00 0/1 0/0 0/0 .rodata          @7175 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7175 = -700.0f;
COMPILER_STRIP_GATE(0x807EF898, &lit_7175);
#pragma pop

/* 807EF89C-807EF8A0 00012C 0004+00 0/1 0/0 0/0 .rodata          @7176 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7176 = -1000.0f;
COMPILER_STRIP_GATE(0x807EF89C, &lit_7176);
#pragma pop

/* 807EF8A0-807EF8A4 000130 0004+00 0/1 0/0 0/0 .rodata          @7177 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7177 = -300.0f;
COMPILER_STRIP_GATE(0x807EF8A0, &lit_7177);
#pragma pop

/* 807EF8A4-807EF8A8 000134 0004+00 0/1 0/0 0/0 .rodata          @7178 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7178 = -100.0f;
COMPILER_STRIP_GATE(0x807EF8A4, &lit_7178);
#pragma pop

/* 807EF8A8-807EF8AC 000138 0004+00 0/1 0/0 0/0 .rodata          @7179 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7179 = 400.0f;
COMPILER_STRIP_GATE(0x807EF8A8, &lit_7179);
#pragma pop

/* 807EF8AC-807EF8B0 00013C 0004+00 0/1 0/0 0/0 .rodata          @7180 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7180 = -400.0f;
COMPILER_STRIP_GATE(0x807EF8AC, &lit_7180);
#pragma pop

/* 807EF8B0-807EF8B4 000140 0004+00 0/1 0/0 0/0 .rodata          @7181 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7181 = 250.0f;
COMPILER_STRIP_GATE(0x807EF8B0, &lit_7181);
#pragma pop

/* 807EF8B4-807EF8B8 000144 0004+00 0/1 0/0 0/0 .rodata          @7182 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7182 = -250.0f;
COMPILER_STRIP_GATE(0x807EF8B4, &lit_7182);
#pragma pop

/* 807EEF04-807EF2CC 007904 03C8+00 0/0 1/0 0/0 .text            __sinit_d_a_e_ww_cpp */
void __sinit_d_a_e_ww_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x807EEF04, __sinit_d_a_e_ww_cpp);
#pragma pop

/* 807EF2CC-807EF2D4 007CCC 0008+00 1/0 0/0 0/0 .text            @20@__dt__14dBgS_ObjGndChkFv */
static void func_807EF2CC() {
    // NONMATCHING
}

/* 807EF2D4-807EF2DC 007CD4 0008+00 1/0 0/0 0/0 .text            @76@__dt__14dBgS_ObjGndChkFv */
static void func_807EF2D4() {
    // NONMATCHING
}

/* 807EF2DC-807EF2E4 007CDC 0008+00 1/0 0/0 0/0 .text            @60@__dt__14dBgS_ObjGndChkFv */
static void func_807EF2DC() {
    // NONMATCHING
}

/* 807EF2E4-807EF2EC 007CE4 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_807EF2E4() {
    // NONMATCHING
}

/* 807EF2EC-807EF2F4 007CEC 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_807EF2EC() {
    // NONMATCHING
}

/* 807EF708-807EF744 008108 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 807EF744-807EF75C 008144 0018+00 2/2 0/0 0/0 .text            checkNowWolf__9daPy_py_cFv */
// void daPy_py_c::checkNowWolf() {
extern "C" void checkNowWolf__9daPy_py_cFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807EFD60-807EFD64 0001E8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_807EFD60[4];
#pragma pop

/* 807EFD64-807EFD68 0001EC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_807EFD64[4];
#pragma pop

/* 807EFD68-807EFD6C 0001F0 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_807EFD68[4];
#pragma pop

/* 807EFD6C-807EFD70 0001F4 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_807EFD6C[4];
#pragma pop

/* 807EFD70-807EFD74 0001F8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807EFD70[4];
#pragma pop

/* 807EFD74-807EFD78 0001FC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807EFD74[4];
#pragma pop

/* 807EFD78-807EFD7C 000200 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_807EFD78[4];
#pragma pop

/* 807EFD7C-807EFD80 000204 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_807EFD7C[4];
#pragma pop

/* 807EFD80-807EFD84 000208 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_807EFD80[4];
#pragma pop

/* 807EFD84-807EFD88 00020C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_807EFD84[4];
#pragma pop

/* 807EFD88-807EFD8C 000210 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_807EFD88[4];
#pragma pop

/* 807EFD8C-807EFD90 000214 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_807EFD8C[4];
#pragma pop

/* 807EFD90-807EFD94 000218 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_807EFD90[4];
#pragma pop

/* 807EFD94-807EFD98 00021C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807EFD94[4];
#pragma pop

/* 807EFD98-807EFD9C 000220 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_807EFD98[4];
#pragma pop

/* 807EFD9C-807EFDA0 000224 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_807EFD9C[4];
#pragma pop

/* 807EFDA0-807EFDA4 000228 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_807EFDA0[4];
#pragma pop

/* 807EFDA4-807EFDA8 00022C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_807EFDA4[4];
#pragma pop

/* 807EFDA8-807EFDAC 000230 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_807EFDA8[4];
#pragma pop

/* 807EFDAC-807EFDB0 000234 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_807EFDAC[4];
#pragma pop

/* 807EFDB0-807EFDB4 000238 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_807EFDB0[4];
#pragma pop

/* 807EFDB4-807EFDB8 00023C 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807EFDB4[4];
#pragma pop

/* 807EFDB8-807EFDBC 000240 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807EFDB8[4];
#pragma pop

/* 807EFDBC-807EFDC0 000244 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807EFDBC[4];
#pragma pop

/* 807EFDC0-807EFDC4 000248 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_807EFDC0[4];
#pragma pop

/* 807EF8B8-807EF8B8 000148 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
