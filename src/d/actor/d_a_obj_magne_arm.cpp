/**
 * @file d_a_obj_magne_arm.cpp
 * 
*/

#include "d/actor/d_a_obj_magne_arm.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void getBpartsOffset__11daObjMarm_cFP4cXyz();
extern "C" void getDpartsOffset__11daObjMarm_cFP4cXyz();
extern "C" void getEpartsOffset__11daObjMarm_cFP4cXyz();
extern "C" void getFpartsOffset__11daObjMarm_cFP4cXyz();
extern "C" void getRopeStartPos__11daObjMarm_cFP4cXyz();
extern "C" void initBaseMtx__11daObjMarm_cFv();
extern "C" void setBaseMtx__11daObjMarm_cFv();
extern "C" static void rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c();
extern "C" void Create__11daObjMarm_cFv();
extern "C" void CreateHeap__11daObjMarm_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void phase_0__11daObjMarm_cFv();
extern "C" void phase_1__11daObjMarm_cFv();
extern "C" void phase_2__11daObjMarm_cFv();
extern "C" void create1st__11daObjMarm_cFv();
extern "C" void Execute__11daObjMarm_cFPPA3_A4_f();
extern "C" void action__11daObjMarm_cFv();
extern "C" void init_typeA_modeWait__11daObjMarm_cFv();
extern "C" void typeA_modeWait__11daObjMarm_cFv();
extern "C" void init_typeA_modeMholeOn__11daObjMarm_cFv();
extern "C" void typeA_modeMholeOn__11daObjMarm_cFv();
extern "C" void typeA_modeLiftUp__11daObjMarm_cFv();
extern "C" void typeA_modeLiftDown__11daObjMarm_cFv();
extern "C" void init_typeA_modeRotate__11daObjMarm_cFv();
extern "C" void typeA_modeRotate__11daObjMarm_cFv();
extern "C" void typeA_modeEnd__11daObjMarm_cFv();
extern "C" void init_typeB_modeWait__11daObjMarm_cFv();
extern "C" void typeB_modeWait__11daObjMarm_cFv();
extern "C" void init_typeB_modeMholeOn__11daObjMarm_cFv();
extern "C" void typeB_modeMholeOn__11daObjMarm_cFv();
extern "C" void init_typeB_modeLiftUp__11daObjMarm_cFv();
extern "C" void typeB_modeLiftUp__11daObjMarm_cFv();
extern "C" void typeB_modeLiftDown__11daObjMarm_cFv();
extern "C" void init_typeB_modeRotate__11daObjMarm_cFv();
extern "C" void typeB_modeRotate__11daObjMarm_cFv();
extern "C" void typeB_modeEnd__11daObjMarm_cFv();
extern "C" void init_typeC_modeWait__11daObjMarm_cFv();
extern "C" void typeC_modeWait__11daObjMarm_cFv();
extern "C" void init_typeC_modeMholeOn__11daObjMarm_cFv();
extern "C" void typeC_modeMholeOn__11daObjMarm_cFv();
extern "C" void init_typeC_modeLiftUp__11daObjMarm_cFv();
extern "C" void typeC_modeLiftUp__11daObjMarm_cFv();
extern "C" void init_typeC_modeLiftDown__11daObjMarm_cFv();
extern "C" void typeC_modeLiftDown__11daObjMarm_cFv();
extern "C" void init_typeC_modeRotate__11daObjMarm_cFv();
extern "C" void typeC_modeRotate__11daObjMarm_cFv();
extern "C" void typeC_modeEnd__11daObjMarm_cFv();
extern "C" void init_typeD_modeWait__11daObjMarm_cFv();
extern "C" void typeD_modeWait__11daObjMarm_cFv();
extern "C" void init_typeD_modeMholeOn__11daObjMarm_cFv();
extern "C" void typeD_modeMholeOn__11daObjMarm_cFv();
extern "C" void init_typeD_modeLiftUp__11daObjMarm_cFv();
extern "C" void typeD_modeLiftUp__11daObjMarm_cFv();
extern "C" void init_typeD_modeLiftDown__11daObjMarm_cFv();
extern "C" void typeD_modeLiftDown__11daObjMarm_cFv();
extern "C" void init_typeD_modeRotate__11daObjMarm_cFv();
extern "C" void typeD_modeRotate__11daObjMarm_cFv();
extern "C" void typeD_modeEnd__11daObjMarm_cFv();
extern "C" void setMagneHoleEffect__11daObjMarm_cFv();
extern "C" void endMagneHoleEffect__11daObjMarm_cFv();
extern "C" void calcHimo__11daObjMarm_cFv();
extern "C" void seStart_MOVESTART__11daObjMarm_cFv();
extern "C" void seStartLevel_MOVE__11daObjMarm_cFv();
extern "C" void seStart_STOP__11daObjMarm_cFv();
extern "C" void seStartLevel_UP__11daObjMarm_cFv();
extern "C" void seStartLevel_DOWN__11daObjMarm_cFv();
extern "C" void seStart_SWING__11daObjMarm_cFv();
extern "C" void Draw__11daObjMarm_cFv();
extern "C" void debugDraw__11daObjMarm_cFv();
extern "C" void Delete__11daObjMarm_cFv();
extern "C" static void daObjMarm_create1st__FP11daObjMarm_c();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" static void daObjMarm_MoveBGDelete__FP11daObjMarm_c();
extern "C" static void daObjMarm_MoveBGExecute__FP11daObjMarm_c();
extern "C" static void daObjMarm_MoveBGDraw__FP11daObjMarm_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void func_80592814(void* _this, u8*);
extern "C" static void func_80592830();
extern "C" static void func_80592838();
extern "C" extern char const* const d_a_obj_magne_arm__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_btkAnmRemove__FP12J3DModelData();
extern "C" void mDoExt_brkAnmRemove__FP12J3DModelData();
extern "C" void init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi();
extern "C" void update__19mDoExt_3DlineMat1_cFifR8_GXColorUsP12dKy_tevstr_c();
extern "C" void setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void request__10dAttLook_cFP10fopAc_ac_cfffsi();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ct__5csXyzFsss();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__19mDoExt_3DlineMat1_c[5];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mGndCheck__11fopAcM_gc_c[84];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* ############################################################################################## */
/* 80592848-80592854 000000 000C+00 15/15 0/0 0/0 .rodata          l_magne_scale */
SECTION_RODATA static u8 const l_magne_scale[12] = {
    0x40, 0x40, 0x00, 0x00, 0x40, 0x09, 0x99, 0x9A, 0x40, 0x40, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80592848, &l_magne_scale);

/* 80592854-80592864 00000C 0010+00 0/4 0/0 0/0 .rodata          l_trans */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_trans[16] = {
    0x00, 0x00, 0x00, 0x00, 0x44, 0x83, 0x40, 0x00, 0x43, 0xE1, 0x00, 0x00, 0x44, 0x61, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80592854, &l_trans);
#pragma pop

/* 80592864-80592874 00001C 0010+00 0/1 0/0 0/0 .rodata          l_down_length */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_down_length[16] = {
    0x44, 0x89, 0x80, 0x00, 0x44, 0x48, 0x00, 0x00, 0x44, 0x89, 0x80, 0x00, 0x44, 0x48, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80592864, &l_down_length);
#pragma pop

/* 80592874-8059287C 00002C 0008+00 0/6 0/0 0/0 .rodata          l_roll_speed */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_roll_speed[8] = {
    0x00, 0xC8, 0x00, 0xC8, 0x00, 0xC8, 0x03, 0xE8,
};
COMPILER_STRIP_GATE(0x80592874, &l_roll_speed);
#pragma pop

/* 8059287C-80592880 000034 0004+00 4/4 0/0 0/0 .rodata          l_stop_timer */
SECTION_RODATA static u32 const l_stop_timer = 0x3C3C3C3C;
COMPILER_STRIP_GATE(0x8059287C, &l_stop_timer);

/* 80592880-80592888 000038 0008+00 0/4 0/0 0/0 .rodata          l_rot_speedY */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_rot_speedY[8] = {
    0x00, 0xC8, 0x00, 0xC8, 0x00, 0xC8, 0x00, 0xC8,
};
COMPILER_STRIP_GATE(0x80592880, &l_rot_speedY);
#pragma pop

/* 80592888-80592894 000040 000C+00 1/1 0/0 0/0 .rodata          l_offsetB$3648 */
SECTION_RODATA static u8 const l_offsetB_3648[12] = {
    0xC3, 0x16, 0x00, 0x00, 0x44, 0x96, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80592888, &l_offsetB_3648);

/* 8058F358-8058F3D4 000078 007C+00 1/1 0/0 0/0 .text getBpartsOffset__11daObjMarm_cFP4cXyz */
void daObjMarm_c::getBpartsOffset(cXyz* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80592894-805928A0 00004C 000C+00 1/1 0/0 0/0 .rodata          l_offsetD$3657 */
SECTION_RODATA static u8 const l_offsetD_3657[12] = {
    0x00, 0x00, 0x00, 0x00, 0x45, 0x1C, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80592894, &l_offsetD_3657);

/* 8058F3D4-8058F46C 0000F4 0098+00 1/1 0/0 0/0 .text getDpartsOffset__11daObjMarm_cFP4cXyz */
void daObjMarm_c::getDpartsOffset(cXyz* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805928A0-805928AC 000058 000C+00 1/1 0/0 0/0 .rodata          l_offsetE$3668 */
SECTION_RODATA static u8 const l_offsetE_3668[12] = {
    0x00, 0x00, 0x00, 0x00, 0x45, 0x1C, 0x40, 0x00, 0x44, 0xB6, 0x80, 0x00,
};
COMPILER_STRIP_GATE(0x805928A0, &l_offsetE_3668);

/* 8058F46C-8058F504 00018C 0098+00 3/3 0/0 0/0 .text getEpartsOffset__11daObjMarm_cFP4cXyz */
void daObjMarm_c::getEpartsOffset(cXyz* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805928AC-805928B8 000064 000C+00 0/1 0/0 0/0 .rodata          l_offsetF$3679 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_offsetF_3679[12] = {
    0x00, 0x00, 0x00, 0x00, 0x45, 0x1C, 0x40, 0x00, 0x44, 0xDE, 0x80, 0x00,
};
COMPILER_STRIP_GATE(0x805928AC, &l_offsetF_3679);
#pragma pop

/* 805928B8-805928C0 000070 0004+04 0/1 0/0 0/0 .rodata          @3689 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3689[1 + 1 /* padding */] = {
    2.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x805928B8, &lit_3689);
#pragma pop

/* 805928C0-805928C8 000078 0008+00 0/7 0/0 0/0 .rodata          @3691 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3691[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805928C0, &lit_3691);
#pragma pop

/* 8058F504-8058F610 000224 010C+00 4/4 0/0 0/0 .text getFpartsOffset__11daObjMarm_cFP4cXyz */
void daObjMarm_c::getFpartsOffset(cXyz* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805928C8-805928CC 000080 0004+00 1/8 0/0 0/0 .rodata          @3706 */
SECTION_RODATA static u8 const lit_3706[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x805928C8, &lit_3706);

/* 805928CC-805928D0 000084 0004+00 1/2 0/0 0/0 .rodata          @3707 */
SECTION_RODATA static f32 const lit_3707 = 320.0f;
COMPILER_STRIP_GATE(0x805928CC, &lit_3707);

/* 8058F610-8058F6B4 000330 00A4+00 1/1 0/0 0/0 .text getRopeStartPos__11daObjMarm_cFP4cXyz */
void daObjMarm_c::getRopeStartPos(cXyz* param_0) {
    // NONMATCHING
}

/* 8058F6B4-8058F77C 0003D4 00C8+00 1/1 0/0 0/0 .text            initBaseMtx__11daObjMarm_cFv */
void daObjMarm_c::initBaseMtx() {
    // NONMATCHING
}

/* 8058F77C-8058FA38 00049C 02BC+00 2/2 0/0 0/0 .text            setBaseMtx__11daObjMarm_cFv */
void daObjMarm_c::setBaseMtx() {
    // NONMATCHING
}

/* 8058FA38-8058FA50 000758 0018+00 1/1 0/0 0/0 .text
 * rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c              */
static void rideCallBack(dBgW* param_0, fopAc_ac_c* param_1, fopAc_ac_c* param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805928D0-805928DC 000088 000C+00 0/0 0/0 0/0 .rodata          l_offsetB$3735 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_offsetB_3735[12] = {
    0xC3, 0x16, 0x00, 0x00, 0x44, 0x96, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805928D0, &l_offsetB_3735);
#pragma pop

/* 805928DC-805928E8 000094 000C+00 0/0 0/0 0/0 .rodata          l_offsetD$3736 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_offsetD_3736[12] = {
    0x00, 0x00, 0x00, 0x00, 0x45, 0x1C, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805928DC, &l_offsetD_3736);
#pragma pop

/* 805928E8-805928F4 0000A0 000C+00 0/0 0/0 0/0 .rodata          l_offsetE$3737 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_offsetE_3737[12] = {
    0x00, 0x00, 0x00, 0x00, 0x45, 0x1C, 0x40, 0x00, 0x44, 0xB6, 0x80, 0x00,
};
COMPILER_STRIP_GATE(0x805928E8, &l_offsetE_3737);
#pragma pop

/* 805928F4-80592900 0000AC 000C+00 0/0 0/0 0/0 .rodata          l_offsetF$3738 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_offsetF_3738[12] = {
    0x00, 0x00, 0x00, 0x00, 0x44, 0x7A, 0x00, 0x00, 0x44, 0xDC, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805928F4, &l_offsetF_3738);
#pragma pop

/* 80592900-80592904 0000B8 0004+00 0/2 0/0 0/0 .rodata          @3874 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3874 = 25.5f;
COMPILER_STRIP_GATE(0x80592900, &lit_3874);
#pragma pop

/* 80592904-80592908 0000BC 0004+00 0/1 0/0 0/0 .rodata          @3875 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3875 = 30.0f;
COMPILER_STRIP_GATE(0x80592904, &lit_3875);
#pragma pop

/* 80592908-8059290C 0000C0 0004+00 1/3 0/0 0/0 .rodata          @3876 */
SECTION_RODATA static f32 const lit_3876 = 10.0f;
COMPILER_STRIP_GATE(0x80592908, &lit_3876);

/* 80592970-80592970 000128 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80592970 = "D_Marm";
#pragma pop

/* 80592980-8059298C 000000 000C+00 3/3 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8059298C-805929A0 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
#pragma push
#pragma force_active on
SECTION_DATA static u32 lit_1787[1 + 4 /* padding */] = {
    0x02000201,
    /* padding */
    0x40080000,
    0x00000000,
    0x3FE00000,
    0x00000000,
};
#pragma pop

/* 805929A0-805929A4 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_magne_arm__stringBase0;

/* 805929A4-805929BC 000024 0018+00 1/1 0/0 0/0 .data            l_cull_box */
SECTION_DATA static u8 l_cull_box[24] = {
    0xC3, 0xFA, 0x00, 0x00, 0xC5, 0x3B, 0x80, 0x00, 0xC3, 0xFA, 0x00, 0x00,
    0x43, 0xFA, 0x00, 0x00, 0x45, 0x3B, 0x80, 0x00, 0x45, 0x1C, 0x40, 0x00,
};

/* 805929BC-805929D4 00003C 0018+00 1/1 0/0 0/0 .data            l_cull_box2 */
SECTION_DATA static u8 l_cull_box2[24] = {
    0xC3, 0xFA, 0x00, 0x00, 0xC5, 0x7A, 0x00, 0x00, 0xC3, 0xFA, 0x00, 0x00,
    0x43, 0xFA, 0x00, 0x00, 0x45, 0x3B, 0x80, 0x00, 0x45, 0x1C, 0x40, 0x00,
};

/* 8058FA50-8058FCF8 000770 02A8+00 1/0 0/0 0/0 .text            Create__11daObjMarm_cFv */
void daObjMarm_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8059290C-80592910 0000C4 0004+00 8/9 0/0 0/0 .rodata          @4010 */
SECTION_RODATA static f32 const lit_4010 = 1.0f;
COMPILER_STRIP_GATE(0x8059290C, &lit_4010);

/* 805929D4-805929D8 000054 0004+00 0/1 0/0 0/0 .data            l_att_disXZ */
#pragma push
#pragma force_active on
SECTION_DATA static f32 l_att_disXZ = 3000.0f;
#pragma pop

/* 805929D8-805929DC 000058 0004+00 0/1 0/0 0/0 .data            l_att_high */
#pragma push
#pragma force_active on
SECTION_DATA static f32 l_att_high = 2000.0f;
#pragma pop

/* 805929DC-805929E0 00005C 0004+00 0/1 0/0 0/0 .data            l_att_low */
#pragma push
#pragma force_active on
SECTION_DATA static f32 l_att_low = -500.0f;
#pragma pop

/* 805929E0-805929E4 000060 0002+02 0/1 0/0 0/0 .data            l_att_ang */
#pragma push
#pragma force_active on
SECTION_DATA static u16 l_att_ang[1 + 1 /* padding */] = {
    0x6000,
    /* padding */
    0x0000,
};
#pragma pop

/* 805929E4-805929F0 -00001 000C+00 0/1 0/0 0/0 .data            @4083 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4083[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)phase_0__11daObjMarm_cFv,
};
#pragma pop

/* 805929F0-805929FC -00001 000C+00 0/1 0/0 0/0 .data            @4084 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4084[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)phase_1__11daObjMarm_cFv,
};
#pragma pop

/* 805929FC-80592A08 -00001 000C+00 0/1 0/0 0/0 .data            @4085 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4085[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)phase_2__11daObjMarm_cFv,
};
#pragma pop

/* 80592A08-80592A2C 000088 0024+00 0/1 0/0 0/0 .data            l_ct_func$4082 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_ct_func[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80592A2C-80592A38 -00001 000C+00 0/1 0/0 0/0 .data            @4171 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4171[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)typeA_modeWait__11daObjMarm_cFv,
};
#pragma pop

/* 80592A38-80592A44 -00001 000C+00 0/1 0/0 0/0 .data            @4172 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4172[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)typeA_modeMholeOn__11daObjMarm_cFv,
};
#pragma pop

/* 80592A44-80592A50 -00001 000C+00 0/1 0/0 0/0 .data            @4173 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4173[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)typeA_modeLiftUp__11daObjMarm_cFv,
};
#pragma pop

/* 80592A50-80592A5C -00001 000C+00 0/1 0/0 0/0 .data            @4174 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4174[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)typeA_modeLiftDown__11daObjMarm_cFv,
};
#pragma pop

/* 80592A5C-80592A68 -00001 000C+00 0/1 0/0 0/0 .data            @4175 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4175[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)typeA_modeRotate__11daObjMarm_cFv,
};
#pragma pop

/* 80592A68-80592A74 -00001 000C+00 0/1 0/0 0/0 .data            @4176 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4176[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)typeA_modeEnd__11daObjMarm_cFv,
};
#pragma pop

/* 80592A74-80592ABC 0000F4 0048+00 0/1 0/0 0/0 .data            l_func_typeA$4170 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func_typeA[72] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80592ABC-80592AC8 -00001 000C+00 0/1 0/0 0/0 .data            @4180 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4180[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)typeB_modeWait__11daObjMarm_cFv,
};
#pragma pop

/* 80592AC8-80592AD4 -00001 000C+00 0/1 0/0 0/0 .data            @4181 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4181[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)typeB_modeMholeOn__11daObjMarm_cFv,
};
#pragma pop

/* 80592AD4-80592AE0 -00001 000C+00 0/1 0/0 0/0 .data            @4182 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4182[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)typeB_modeLiftUp__11daObjMarm_cFv,
};
#pragma pop

/* 80592AE0-80592AEC -00001 000C+00 0/1 0/0 0/0 .data            @4183 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4183[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)typeB_modeLiftDown__11daObjMarm_cFv,
};
#pragma pop

/* 80592AEC-80592AF8 -00001 000C+00 0/1 0/0 0/0 .data            @4184 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4184[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)typeB_modeRotate__11daObjMarm_cFv,
};
#pragma pop

/* 80592AF8-80592B04 -00001 000C+00 0/1 0/0 0/0 .data            @4185 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4185[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)typeB_modeEnd__11daObjMarm_cFv,
};
#pragma pop

/* 80592B04-80592B4C 000184 0048+00 0/1 0/0 0/0 .data            l_func_typeB$4179 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func_typeB[72] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80592B4C-80592B58 -00001 000C+00 0/1 0/0 0/0 .data            @4189 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4189[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)typeC_modeWait__11daObjMarm_cFv,
};
#pragma pop

/* 80592B58-80592B64 -00001 000C+00 0/1 0/0 0/0 .data            @4190 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4190[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)typeC_modeMholeOn__11daObjMarm_cFv,
};
#pragma pop

/* 80592B64-80592B70 -00001 000C+00 0/1 0/0 0/0 .data            @4191 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4191[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)typeC_modeLiftUp__11daObjMarm_cFv,
};
#pragma pop

/* 80592B70-80592B7C -00001 000C+00 0/1 0/0 0/0 .data            @4192 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4192[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)typeC_modeLiftDown__11daObjMarm_cFv,
};
#pragma pop

/* 80592B7C-80592B88 -00001 000C+00 0/1 0/0 0/0 .data            @4193 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4193[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)typeC_modeRotate__11daObjMarm_cFv,
};
#pragma pop

/* 80592B88-80592B94 -00001 000C+00 0/1 0/0 0/0 .data            @4194 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4194[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)typeC_modeEnd__11daObjMarm_cFv,
};
#pragma pop

/* 80592B94-80592BDC 000214 0048+00 0/1 0/0 0/0 .data            l_func_typeC$4188 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func_typeC[72] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80592BDC-80592BE8 -00001 000C+00 0/1 0/0 0/0 .data            @4198 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4198[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)typeD_modeWait__11daObjMarm_cFv,
};
#pragma pop

/* 80592BE8-80592BF4 -00001 000C+00 0/1 0/0 0/0 .data            @4199 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4199[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)typeD_modeMholeOn__11daObjMarm_cFv,
};
#pragma pop

/* 80592BF4-80592C00 -00001 000C+00 0/1 0/0 0/0 .data            @4200 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4200[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)typeD_modeLiftUp__11daObjMarm_cFv,
};
#pragma pop

/* 80592C00-80592C0C -00001 000C+00 0/1 0/0 0/0 .data            @4201 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4201[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)typeD_modeLiftDown__11daObjMarm_cFv,
};
#pragma pop

/* 80592C0C-80592C18 -00001 000C+00 0/1 0/0 0/0 .data            @4202 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4202[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)typeD_modeRotate__11daObjMarm_cFv,
};
#pragma pop

/* 80592C18-80592C24 -00001 000C+00 0/1 0/0 0/0 .data            @4203 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4203[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)typeD_modeEnd__11daObjMarm_cFv,
};
#pragma pop

/* 80592C24-80592C6C 0002A4 0048+00 0/1 0/0 0/0 .data            l_func_typeD$4197 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func_typeD[72] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80592C6C-80592C8C -00001 0020+00 1/0 0/0 0/0 .data            daObjMarm_METHODS */
static actor_method_class daObjMarm_METHODS = {
    (process_method_func)daObjMarm_create1st__FP11daObjMarm_c,
    (process_method_func)daObjMarm_MoveBGDelete__FP11daObjMarm_c,
    (process_method_func)daObjMarm_MoveBGExecute__FP11daObjMarm_c,
    0,
    (process_method_func)daObjMarm_MoveBGDraw__FP11daObjMarm_c,
};

/* 80592C8C-80592CBC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_MagneArm */
extern actor_process_profile_definition g_profile_Obj_MagneArm = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_MagneArm,      // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daObjMarm_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  614,                    // mPriority
  &daObjMarm_METHODS,     // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80592CBC-80592CC8 00033C 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80592CC8-80592CD4 000348 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80592CD4-80592CE0 000354 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80592CE0-80592CEC 000360 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80592CEC-80592CF8 00036C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80592CF8-80592D1C 000378 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80592838,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80592830,
};

/* 80592D1C-80592D30 00039C 0014+00 1/1 0/0 0/0 .data            __vt__18mDoExt_3DlineMat_c */
SECTION_DATA extern void* __vt__18mDoExt_3DlineMat_c[5] = {
    (void*)NULL /* RTTI */, (void*)NULL, (void*)NULL, (void*)NULL, (void*)NULL,
};

/* 80592D30-80592D3C 0003B0 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 8058FCF8-805901FC 000A18 0504+00 1/0 0/0 0/0 .text            CreateHeap__11daObjMarm_cFv */
void daObjMarm_c::CreateHeap() {
    // NONMATCHING
}

/* 805901FC-80590244 000F1C 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80590244-805902D8 000F64 0094+00 1/0 0/0 0/0 .text            phase_0__11daObjMarm_cFv */
void daObjMarm_c::phase_0() {
    // NONMATCHING
}

/* 805902D8-80590364 000FF8 008C+00 1/0 0/0 0/0 .text            phase_1__11daObjMarm_cFv */
void daObjMarm_c::phase_1() {
    // NONMATCHING
}

/* 80590364-80590460 001084 00FC+00 1/0 0/0 0/0 .text            phase_2__11daObjMarm_cFv */
void daObjMarm_c::phase_2() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80592D68-80592D6C 000000 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80592D6C-80592D70 000004 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80592D70-80592D74 000008 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80592D74-80592D78 00000C 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80592D78-80592D7C 000010 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80592D7C-80592D80 000014 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80592D80-80592D84 000018 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 80592D84-80592D88 00001C 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80592D88-80592D8C 000020 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80592D8C-80592D90 000024 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80592D90-80592D94 000028 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 80592D94-80592D98 00002C 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80592D98-80592D9C 000030 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80592D9C-80592DA0 000034 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80592DA0-80592DA4 000038 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 80592DA4-80592DAC -00001 0008+00 1/1 0/0 0/0 .bss             None */
/* 80592DA4 0001+00 data_80592DA4 @1009 */
/* 80592DA5 0007+00 data_80592DA5 None */
static u8 struct_80592DA4[8];

/* 80590460-80590504 001180 00A4+00 1/1 0/0 0/0 .text            create1st__11daObjMarm_cFv */
void daObjMarm_c::create1st() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80592910-80592914 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4160 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4160 = -700.0f;
COMPILER_STRIP_GATE(0x80592910, &lit_4160);
#pragma pop

/* 80592914-80592918 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4161 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4161 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80592914, &lit_4161);
#pragma pop

/* 80592918-8059291C 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4162 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4162 = 20.0f;
COMPILER_STRIP_GATE(0x80592918, &lit_4162);
#pragma pop

/* 8059291C-80592920 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4163 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4163 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x8059291C, &lit_4163);
#pragma pop

/* 80590504-80590818 001224 0314+00 1/0 0/0 0/0 .text            Execute__11daObjMarm_cFPPA3_A4_f */
void daObjMarm_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 80590818-80590B7C 001538 0364+00 1/1 0/0 0/0 .text            action__11daObjMarm_cFv */
void daObjMarm_c::action() {
    // NONMATCHING
}

/* 80590B7C-80590B8C 00189C 0010+00 1/1 0/0 0/0 .text init_typeA_modeWait__11daObjMarm_cFv */
void daObjMarm_c::init_typeA_modeWait() {
    // NONMATCHING
}

/* 80590B8C-80590BE0 0018AC 0054+00 1/0 0/0 0/0 .text            typeA_modeWait__11daObjMarm_cFv */
void daObjMarm_c::typeA_modeWait() {
    // NONMATCHING
}

/* 80590BE0-80590C48 001900 0068+00 1/1 0/0 0/0 .text init_typeA_modeMholeOn__11daObjMarm_cFv */
void daObjMarm_c::init_typeA_modeMholeOn() {
    // NONMATCHING
}

/* 80590C48-80590C68 001968 0020+00 1/0 0/0 0/0 .text            typeA_modeMholeOn__11daObjMarm_cFv
 */
void daObjMarm_c::typeA_modeMholeOn() {
    // NONMATCHING
}

/* 80590C68-80590C6C 001988 0004+00 1/0 0/0 0/0 .text            typeA_modeLiftUp__11daObjMarm_cFv
 */
void daObjMarm_c::typeA_modeLiftUp() {
    /* empty function */
}

/* 80590C6C-80590C70 00198C 0004+00 1/0 0/0 0/0 .text            typeA_modeLiftDown__11daObjMarm_cFv
 */
void daObjMarm_c::typeA_modeLiftDown() {
    /* empty function */
}

/* ############################################################################################## */
/* 80592920-80592928 0000D8 0004+04 4/4 0/0 0/0 .rodata          @4264 */
SECTION_RODATA static f32 const lit_4264[1 + 1 /* padding */] = {
    1.5f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80592920, &lit_4264);

/* 80592928-80592930 0000E0 0008+00 4/4 0/0 0/0 .rodata          @4266 */
SECTION_RODATA static u8 const lit_4266[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80592928, &lit_4266);

/* 80590C70-80590CE4 001990 0074+00 2/2 0/0 0/0 .text init_typeA_modeRotate__11daObjMarm_cFv */
void daObjMarm_c::init_typeA_modeRotate() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80592930-80592934 0000E8 0004+00 0/4 0/0 0/0 .rodata          @4289 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4289 = 150.0f;
COMPILER_STRIP_GATE(0x80592930, &lit_4289);
#pragma pop

/* 80592934-80592938 0000EC 0004+00 0/4 0/0 0/0 .rodata          @4290 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4290 = 800.0f;
COMPILER_STRIP_GATE(0x80592934, &lit_4290);
#pragma pop

/* 80590CE4-80590E24 001A04 0140+00 1/0 0/0 0/0 .text            typeA_modeRotate__11daObjMarm_cFv
 */
void daObjMarm_c::typeA_modeRotate() {
    // NONMATCHING
}

/* 80590E24-80590E28 001B44 0004+00 1/0 0/0 0/0 .text            typeA_modeEnd__11daObjMarm_cFv */
void daObjMarm_c::typeA_modeEnd() {
    /* empty function */
}

/* 80590E28-80590E38 001B48 0010+00 1/1 0/0 0/0 .text init_typeB_modeWait__11daObjMarm_cFv */
void daObjMarm_c::init_typeB_modeWait() {
    // NONMATCHING
}

/* 80590E38-80590E8C 001B58 0054+00 1/0 0/0 0/0 .text            typeB_modeWait__11daObjMarm_cFv */
void daObjMarm_c::typeB_modeWait() {
    // NONMATCHING
}

/* 80590E8C-80590EF4 001BAC 0068+00 1/1 0/0 0/0 .text init_typeB_modeMholeOn__11daObjMarm_cFv */
void daObjMarm_c::init_typeB_modeMholeOn() {
    // NONMATCHING
}

/* 80590EF4-80590F14 001C14 0020+00 1/0 0/0 0/0 .text            typeB_modeMholeOn__11daObjMarm_cFv
 */
void daObjMarm_c::typeB_modeMholeOn() {
    // NONMATCHING
}

/* 80590F14-80590F30 001C34 001C+00 1/1 0/0 0/0 .text init_typeB_modeLiftUp__11daObjMarm_cFv */
void daObjMarm_c::init_typeB_modeLiftUp() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80592938-8059293C 0000F0 0004+00 0/6 0/0 0/0 .rodata          @4341 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4341 = 0x44EB9E95;
COMPILER_STRIP_GATE(0x80592938, &lit_4341);
#pragma pop

/* 8059293C-80592940 0000F4 0004+00 0/6 0/0 0/0 .rodata          @4342 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4342 = 65536.0f;
COMPILER_STRIP_GATE(0x8059293C, &lit_4342);
#pragma pop

/* 80590F30-80591004 001C50 00D4+00 1/0 0/0 0/0 .text            typeB_modeLiftUp__11daObjMarm_cFv
 */
void daObjMarm_c::typeB_modeLiftUp() {
    // NONMATCHING
}

/* 80591004-805910E8 001D24 00E4+00 1/0 0/0 0/0 .text            typeB_modeLiftDown__11daObjMarm_cFv
 */
void daObjMarm_c::typeB_modeLiftDown() {
    // NONMATCHING
}

/* 805910E8-80591160 001E08 0078+00 4/4 0/0 0/0 .text init_typeB_modeRotate__11daObjMarm_cFv */
void daObjMarm_c::init_typeB_modeRotate() {
    // NONMATCHING
}

/* 80591160-805912AC 001E80 014C+00 1/0 0/0 0/0 .text            typeB_modeRotate__11daObjMarm_cFv
 */
void daObjMarm_c::typeB_modeRotate() {
    // NONMATCHING
}

/* 805912AC-805912B0 001FCC 0004+00 1/0 0/0 0/0 .text            typeB_modeEnd__11daObjMarm_cFv */
void daObjMarm_c::typeB_modeEnd() {
    /* empty function */
}

/* 805912B0-805912C0 001FD0 0010+00 1/1 0/0 0/0 .text init_typeC_modeWait__11daObjMarm_cFv */
void daObjMarm_c::init_typeC_modeWait() {
    // NONMATCHING
}

/* 805912C0-80591314 001FE0 0054+00 1/0 0/0 0/0 .text            typeC_modeWait__11daObjMarm_cFv */
void daObjMarm_c::typeC_modeWait() {
    // NONMATCHING
}

/* 80591314-8059137C 002034 0068+00 1/1 0/0 0/0 .text init_typeC_modeMholeOn__11daObjMarm_cFv */
void daObjMarm_c::init_typeC_modeMholeOn() {
    // NONMATCHING
}

/* 8059137C-8059139C 00209C 0020+00 1/0 0/0 0/0 .text            typeC_modeMholeOn__11daObjMarm_cFv
 */
void daObjMarm_c::typeC_modeMholeOn() {
    // NONMATCHING
}

/* 8059139C-805913B8 0020BC 001C+00 2/2 0/0 0/0 .text init_typeC_modeLiftUp__11daObjMarm_cFv */
void daObjMarm_c::init_typeC_modeLiftUp() {
    // NONMATCHING
}

/* 805913B8-8059148C 0020D8 00D4+00 1/0 0/0 0/0 .text            typeC_modeLiftUp__11daObjMarm_cFv
 */
void daObjMarm_c::typeC_modeLiftUp() {
    // NONMATCHING
}

/* 8059148C-805914A8 0021AC 001C+00 1/1 0/0 0/0 .text init_typeC_modeLiftDown__11daObjMarm_cFv */
void daObjMarm_c::init_typeC_modeLiftDown() {
    // NONMATCHING
}

/* 805914A8-8059158C 0021C8 00E4+00 1/0 0/0 0/0 .text            typeC_modeLiftDown__11daObjMarm_cFv
 */
void daObjMarm_c::typeC_modeLiftDown() {
    // NONMATCHING
}

/* 8059158C-80591604 0022AC 0078+00 1/1 0/0 0/0 .text init_typeC_modeRotate__11daObjMarm_cFv */
void daObjMarm_c::init_typeC_modeRotate() {
    // NONMATCHING
}

/* 80591604-80591750 002324 014C+00 1/0 0/0 0/0 .text            typeC_modeRotate__11daObjMarm_cFv
 */
void daObjMarm_c::typeC_modeRotate() {
    // NONMATCHING
}

/* 80591750-80591754 002470 0004+00 1/0 0/0 0/0 .text            typeC_modeEnd__11daObjMarm_cFv */
void daObjMarm_c::typeC_modeEnd() {
    /* empty function */
}

/* 80591754-80591764 002474 0010+00 1/1 0/0 0/0 .text init_typeD_modeWait__11daObjMarm_cFv */
void daObjMarm_c::init_typeD_modeWait() {
    // NONMATCHING
}

/* 80591764-805917B8 002484 0054+00 1/0 0/0 0/0 .text            typeD_modeWait__11daObjMarm_cFv */
void daObjMarm_c::typeD_modeWait() {
    // NONMATCHING
}

/* 805917B8-80591820 0024D8 0068+00 1/1 0/0 0/0 .text init_typeD_modeMholeOn__11daObjMarm_cFv */
void daObjMarm_c::init_typeD_modeMholeOn() {
    // NONMATCHING
}

/* 80591820-80591840 002540 0020+00 1/0 0/0 0/0 .text            typeD_modeMholeOn__11daObjMarm_cFv
 */
void daObjMarm_c::typeD_modeMholeOn() {
    // NONMATCHING
}

/* 80591840-8059185C 002560 001C+00 1/1 0/0 0/0 .text init_typeD_modeLiftUp__11daObjMarm_cFv */
void daObjMarm_c::init_typeD_modeLiftUp() {
    // NONMATCHING
}

/* 8059185C-80591930 00257C 00D4+00 1/0 0/0 0/0 .text            typeD_modeLiftUp__11daObjMarm_cFv
 */
void daObjMarm_c::typeD_modeLiftUp() {
    // NONMATCHING
}

/* 80591930-8059194C 002650 001C+00 1/1 0/0 0/0 .text init_typeD_modeLiftDown__11daObjMarm_cFv */
void daObjMarm_c::init_typeD_modeLiftDown() {
    // NONMATCHING
}

/* 8059194C-80591A30 00266C 00E4+00 1/0 0/0 0/0 .text            typeD_modeLiftDown__11daObjMarm_cFv
 */
void daObjMarm_c::typeD_modeLiftDown() {
    // NONMATCHING
}

/* 80591A30-80591AA8 002750 0078+00 3/3 0/0 0/0 .text init_typeD_modeRotate__11daObjMarm_cFv */
void daObjMarm_c::init_typeD_modeRotate() {
    // NONMATCHING
}

/* 80591AA8-80591BF4 0027C8 014C+00 1/0 0/0 0/0 .text            typeD_modeRotate__11daObjMarm_cFv
 */
void daObjMarm_c::typeD_modeRotate() {
    // NONMATCHING
}

/* 80591BF4-80591BF8 002914 0004+00 1/0 0/0 0/0 .text            typeD_modeEnd__11daObjMarm_cFv */
void daObjMarm_c::typeD_modeEnd() {
    /* empty function */
}

/* 80591BF8-80591BFC 002918 0004+00 8/8 0/0 0/0 .text            setMagneHoleEffect__11daObjMarm_cFv
 */
void daObjMarm_c::setMagneHoleEffect() {
    /* empty function */
}

/* 80591BFC-80591C38 00291C 003C+00 5/5 0/0 0/0 .text            endMagneHoleEffect__11daObjMarm_cFv
 */
void daObjMarm_c::endMagneHoleEffect() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80592940-80592944 0000F8 0004+00 0/1 0/0 0/0 .rodata          @4669 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4669 = 200.0f;
COMPILER_STRIP_GATE(0x80592940, &lit_4669);
#pragma pop

/* 80592944-80592948 0000FC 0004+00 0/1 0/0 0/0 .rodata          @4670 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4670 = 250.0f;
COMPILER_STRIP_GATE(0x80592944, &lit_4670);
#pragma pop

/* 80592948-8059294C 000100 0004+00 0/1 0/0 0/0 .rodata          @4671 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4671 = 330.0f;
COMPILER_STRIP_GATE(0x80592948, &lit_4671);
#pragma pop

/* 8059294C-80592950 000104 0004+00 0/1 0/0 0/0 .rodata          @4672 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4672 = 230.0f;
COMPILER_STRIP_GATE(0x8059294C, &lit_4672);
#pragma pop

/* 80592950-80592954 000108 0004+00 0/1 0/0 0/0 .rodata          @4673 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4673 = -200.0f;
COMPILER_STRIP_GATE(0x80592950, &lit_4673);
#pragma pop

/* 80592954-80592958 00010C 0004+00 0/1 0/0 0/0 .rodata          @4674 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4674 = 50.0f;
COMPILER_STRIP_GATE(0x80592954, &lit_4674);
#pragma pop

/* 80592958-8059295C 000110 0004+00 0/2 0/0 0/0 .rodata          @4675 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4675 = -800.0f;
COMPILER_STRIP_GATE(0x80592958, &lit_4675);
#pragma pop

/* 80591C38-80591E18 002958 01E0+00 2/2 0/0 0/0 .text            calcHimo__11daObjMarm_cFv */
void daObjMarm_c::calcHimo() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8059295C-80592960 000114 0004+00 6/6 0/0 0/0 .rodata          @4684 */
SECTION_RODATA static f32 const lit_4684 = -1.0f;
COMPILER_STRIP_GATE(0x8059295C, &lit_4684);

/* 80591E18-80591E80 002B38 0068+00 4/4 0/0 0/0 .text            seStart_MOVESTART__11daObjMarm_cFv
 */
void daObjMarm_c::seStart_MOVESTART() {
    // NONMATCHING
}

/* 80591E80-80591EE8 002BA0 0068+00 4/4 0/0 0/0 .text            seStartLevel_MOVE__11daObjMarm_cFv
 */
void daObjMarm_c::seStartLevel_MOVE() {
    // NONMATCHING
}

/* 80591EE8-80591F50 002C08 0068+00 4/4 0/0 0/0 .text            seStart_STOP__11daObjMarm_cFv */
void daObjMarm_c::seStart_STOP() {
    // NONMATCHING
}

/* 80591F50-80591FB8 002C70 0068+00 3/3 0/0 0/0 .text            seStartLevel_UP__11daObjMarm_cFv */
void daObjMarm_c::seStartLevel_UP() {
    // NONMATCHING
}

/* 80591FB8-80592020 002CD8 0068+00 3/3 0/0 0/0 .text            seStartLevel_DOWN__11daObjMarm_cFv
 */
void daObjMarm_c::seStartLevel_DOWN() {
    // NONMATCHING
}

/* 80592020-80592088 002D40 0068+00 4/4 0/0 0/0 .text            seStart_SWING__11daObjMarm_cFv */
void daObjMarm_c::seStart_SWING() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80592960-80592964 000118 0004+00 0/1 0/0 0/0 .rodata          @4728 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4728[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80592960, &lit_4728);
#pragma pop

/* 80592964-80592968 00011C 0004+00 0/1 0/0 0/0 .rodata          @4822 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4822 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80592964, &lit_4822);
#pragma pop

/* 80592968-8059296C 000120 0004+00 0/1 0/0 0/0 .rodata          @4823 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4823 = 1500.0f;
COMPILER_STRIP_GATE(0x80592968, &lit_4823);
#pragma pop

/* 8059296C-80592970 000124 0004+00 0/1 0/0 0/0 .rodata          @4824 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4824 = 450.0f;
COMPILER_STRIP_GATE(0x8059296C, &lit_4824);
#pragma pop

/* 80592088-805923C4 002DA8 033C+00 1/0 0/0 0/0 .text            Draw__11daObjMarm_cFv */
void daObjMarm_c::Draw() {
    // NONMATCHING
}

/* 805923C4-805923C8 0030E4 0004+00 1/1 0/0 0/0 .text            debugDraw__11daObjMarm_cFv */
void daObjMarm_c::debugDraw() {
    /* empty function */
}

/* 805923C8-80592468 0030E8 00A0+00 1/0 0/0 0/0 .text            Delete__11daObjMarm_cFv */
void daObjMarm_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80592D3C-80592D64 0003BC 0028+00 1/1 0/0 0/0 .data            __vt__11daObjMarm_c */
SECTION_DATA extern void* __vt__11daObjMarm_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__11daObjMarm_cFv,
    (void*)Create__11daObjMarm_cFv,
    (void*)Execute__11daObjMarm_cFPPA3_A4_f,
    (void*)Draw__11daObjMarm_cFv,
    (void*)Delete__11daObjMarm_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80592468-80592594 003188 012C+00 1/0 0/0 0/0 .text daObjMarm_create1st__FP11daObjMarm_c */
static void daObjMarm_create1st(daObjMarm_c* param_0) {
    // NONMATCHING
}

/* 80592594-805925DC 0032B4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 805925DC-80592624 0032FC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80592624-80592680 003344 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80592680-805926F0 0033A0 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 805926F0-80592760 003410 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80592760-80592780 003480 0020+00 1/0 0/0 0/0 .text daObjMarm_MoveBGDelete__FP11daObjMarm_c */
static void daObjMarm_MoveBGDelete(daObjMarm_c* param_0) {
    // NONMATCHING
}

/* 80592780-805927A0 0034A0 0020+00 1/0 0/0 0/0 .text daObjMarm_MoveBGExecute__FP11daObjMarm_c */
static void daObjMarm_MoveBGExecute(daObjMarm_c* param_0) {
    // NONMATCHING
}

/* 805927A0-805927CC 0034C0 002C+00 1/0 0/0 0/0 .text daObjMarm_MoveBGDraw__FP11daObjMarm_c */
static void daObjMarm_MoveBGDraw(daObjMarm_c* param_0) {
    // NONMATCHING
}

/* 805927CC-80592814 0034EC 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80592814-80592830 003534 001C+00 10/10 0/0 0/0 .text            cLib_calcTimer<Uc>__FPUc */
extern "C" void func_80592814(void* _this, u8* param_0) {
    // NONMATCHING
}

/* 80592830-80592838 003550 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80592830() {
    // NONMATCHING
}

/* 80592838-80592840 003558 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80592838() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80592977-8059297E 00012F 0007+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80592977 = "D_MN54";
#pragma pop

/* 80592DAC-80592DB0 000044 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80592DAC[4];
#pragma pop

/* 80592DB0-80592DB4 000048 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80592DB0[4];
#pragma pop

/* 80592DB4-80592DB8 00004C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80592DB4[4];
#pragma pop

/* 80592DB8-80592DBC 000050 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80592DB8[4];
#pragma pop

/* 80592DBC-80592DC0 000054 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80592DBC[4];
#pragma pop

/* 80592DC0-80592DC4 000058 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80592DC0[4];
#pragma pop

/* 80592DC4-80592DC8 00005C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80592DC4[4];
#pragma pop

/* 80592DC8-80592DCC 000060 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80592DC8[4];
#pragma pop

/* 80592DCC-80592DD0 000064 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80592DCC[4];
#pragma pop

/* 80592DD0-80592DD4 000068 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80592DD0[4];
#pragma pop

/* 80592DD4-80592DD8 00006C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80592DD4[4];
#pragma pop

/* 80592DD8-80592DDC 000070 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80592DD8[4];
#pragma pop

/* 80592DDC-80592DE0 000074 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80592DDC[4];
#pragma pop

/* 80592DE0-80592DE4 000078 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80592DE0[4];
#pragma pop

/* 80592DE4-80592DE8 00007C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80592DE4[4];
#pragma pop

/* 80592DE8-80592DEC 000080 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80592DE8[4];
#pragma pop

/* 80592DEC-80592DF0 000084 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80592DEC[4];
#pragma pop

/* 80592DF0-80592DF4 000088 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80592DF0[4];
#pragma pop

/* 80592DF4-80592DF8 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80592DF4[4];
#pragma pop

/* 80592DF8-80592DFC 000090 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80592DF8[4];
#pragma pop

/* 80592DFC-80592E00 000094 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80592DFC[4];
#pragma pop

/* 80592E00-80592E04 000098 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80592E00[4];
#pragma pop

/* 80592E04-80592E08 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80592E04[4];
#pragma pop

/* 80592E08-80592E0C 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80592E08[4];
#pragma pop

/* 80592E0C-80592E10 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80592E0C[4];
#pragma pop

/* 80592970-80592970 000128 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */