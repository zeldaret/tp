/**
 * @file d_a_e_ws.cpp
 * 
*/

#include "d/actor/d_a_e_ws.h"
#include "dol2asm.h"
UNK_REL_DATA;
#include "f_op/f_op_actor_enemy.h"


//
// Forward References:
//

extern "C" void __ct__12daE_WS_HIO_cFv();
extern "C" void draw__8daE_WS_cFv();
extern "C" static void daE_WS_Draw__FP8daE_WS_c();
extern "C" void setBck__8daE_WS_cFiUcff();
extern "C" void setFootSound__8daE_WS_cFv();
extern "C" void setActionMode__8daE_WS_cFi();
extern "C" void calcTargetDist__8daE_WS_cF4cXyz4cXyz();
extern "C" void calcTargetAngle__8daE_WS_cF4cXyz4cXyz();
extern "C" void checkInSearchRange__8daE_WS_cF4cXyz4cXyz();
extern "C" void checkPlayerPos__8daE_WS_cFv();
extern "C" void checkAttackEnd__8daE_WS_cFv();
extern "C" void executeWait__8daE_WS_cFv();
extern "C" void executeAttack__8daE_WS_cFv();
extern "C" void executeDown__8daE_WS_cFv();
extern "C" void executeWindDown__8daE_WS_cFv();
extern "C" void damage_check__8daE_WS_cFv();
extern "C" void action__8daE_WS_cFv();
extern "C" void mtx_set__8daE_WS_cFv();
extern "C" void cc_set__8daE_WS_cFv();
extern "C" void execute__8daE_WS_cFv();
extern "C" static void daE_WS_Execute__FP8daE_WS_c();
extern "C" void checkInitialWall__8daE_WS_cFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void checkBeforeBg__8daE_WS_cFs();
extern "C" void checkWall__8daE_WS_cFv();
extern "C" static bool daE_WS_IsDelete__FP8daE_WS_c();
extern "C" void _delete__8daE_WS_cFv();
extern "C" static void daE_WS_Delete__FP8daE_WS_c();
extern "C" void CreateHeap__8daE_WS_cFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void create__8daE_WS_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" static void daE_WS_Create__FP8daE_WS_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_WS_HIO_cFv();
extern "C" void __sinit_d_a_e_ws_cpp();
extern "C" static void func_807E6EC8();
extern "C" static void func_807E6ED0();
extern "C" extern char const* const d_a_e_ws__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotS__FPA4_fs();
extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
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
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void GetWallCode__4dBgSFRC13cBgS_PolyInfo();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetGroundUpY__9dBgS_AcchFf();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void GetAtHitObj__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz();
extern "C" void cLib_distanceAngleS__Fss();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void _savegpr_19();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
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
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 807E732C-807E7330 00002C 0004+00 0/2 0/0 0/0 .rodata          @3823 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3823 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x807E732C, &lit_3823);
#pragma pop

/* 807E7330-807E7334 000030 0004+00 0/3 0/0 0/0 .rodata          @3824 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3824 = 50.0f;
COMPILER_STRIP_GATE(0x807E7330, &lit_3824);
#pragma pop

/* 807E7334-807E7338 000034 0004+00 0/1 0/0 0/0 .rodata          @3825 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3825 = 300.0f;
COMPILER_STRIP_GATE(0x807E7334, &lit_3825);
#pragma pop

/* 807E7338-807E733C 000038 0004+00 1/4 0/0 0/0 .rodata          @3826 */
SECTION_RODATA static f32 const lit_3826 = 200.0f;
COMPILER_STRIP_GATE(0x807E7338, &lit_3826);

/* 807E733C-807E7340 00003C 0004+00 0/1 0/0 0/0 .rodata          @3827 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3827 = 270.0f;
COMPILER_STRIP_GATE(0x807E733C, &lit_3827);
#pragma pop

/* 807E7340-807E7344 000040 0004+00 0/1 0/0 0/0 .rodata          @3828 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3828 = 18200.0f;
COMPILER_STRIP_GATE(0x807E7340, &lit_3828);
#pragma pop

/* 807E7344-807E7348 000044 0004+00 0/1 0/0 0/0 .rodata          @3829 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3829 = 10.0f;
COMPILER_STRIP_GATE(0x807E7344, &lit_3829);
#pragma pop

/* 807E7448-807E7488 000038 0040+00 1/1 0/0 0/0 .data            cc_ws_src__22@unnamed@d_a_e_ws_cpp@
 */
SECTION_DATA static u8 data_807E7448[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D,
    0xD8, 0xF9, 0xFD, 0xF5, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x75, 0x09, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};

/* 807E7488-807E74C8 000078 0040+00 1/1 0/0 0/0 .data cc_bokkuri_src__22@unnamed@d_a_e_ws_cpp@ */
SECTION_DATA static u8 data_807E7488[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x02, 0x00, 0x08, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};

/* 807E74C8-807E74E4 -00001 001C+00 1/1 0/0 0/0 .data            @4268 */
SECTION_DATA static void* lit_4268[7] = {
    (void*)(((char*)executeWait__8daE_WS_cFv) + 0x88),
    (void*)(((char*)executeWait__8daE_WS_cFv) + 0xC8),
    (void*)(((char*)executeWait__8daE_WS_cFv) + 0xE0),
    (void*)(((char*)executeWait__8daE_WS_cFv) + 0x22C),
    (void*)(((char*)executeWait__8daE_WS_cFv) + 0x278),
    (void*)(((char*)executeWait__8daE_WS_cFv) + 0x290),
    (void*)(((char*)executeWait__8daE_WS_cFv) + 0x2D8),
};

/* 807E74E4-807E7504 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_WS_Method */
static actor_method_class l_daE_WS_Method = {
    (process_method_func)daE_WS_Create__FP8daE_WS_c,
    (process_method_func)daE_WS_Delete__FP8daE_WS_c,
    (process_method_func)daE_WS_Execute__FP8daE_WS_c,
    (process_method_func)daE_WS_IsDelete__FP8daE_WS_c,
    (process_method_func)daE_WS_Draw__FP8daE_WS_c,
};

/* 807E7504-807E7534 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_WS */
extern actor_process_profile_definition g_profile_E_WS = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_WS,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daE_WS_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  200,                    // mPriority
  &l_daE_WS_Method,       // sub_method
  0x00050100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 807E7534-807E7540 000124 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 807E7540-807E754C 000130 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 807E754C-807E7558 00013C 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 807E7558-807E7564 000148 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 807E7564-807E7570 000154 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 807E7570-807E7594 000160 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807E6ED0,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807E6EC8,
};

/* 807E7594-807E75A0 000184 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 807E75A0-807E75AC 000190 000C+00 2/2 0/0 0/0 .data            __vt__12daE_WS_HIO_c */
SECTION_DATA extern void* __vt__12daE_WS_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_WS_HIO_cFv,
};

/* 807E3A0C-807E3A6C 0000EC 0060+00 1/1 0/0 0/0 .text            __ct__12daE_WS_HIO_cFv */
daE_WS_HIO_c::daE_WS_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E7348-807E734C 000048 0004+00 0/1 0/0 0/0 .rodata          @3871 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3871 = 400.0f;
COMPILER_STRIP_GATE(0x807E7348, &lit_3871);
#pragma pop

/* 807E3A6C-807E3C00 00014C 0194+00 1/1 0/0 0/0 .text            draw__8daE_WS_cFv */
void daE_WS_c::draw() {
    // NONMATCHING
}

/* 807E3C00-807E3C20 0002E0 0020+00 1/0 0/0 0/0 .text            daE_WS_Draw__FP8daE_WS_c */
static void daE_WS_Draw(daE_WS_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E734C-807E7350 00004C 0004+00 1/1 0/0 0/0 .rodata          @3885 */
SECTION_RODATA static f32 const lit_3885 = -1.0f;
COMPILER_STRIP_GATE(0x807E734C, &lit_3885);

/* 807E7404-807E7404 000104 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_807E7404 = "E_WS";
#pragma pop

/* 807E3C20-807E3CC4 000300 00A4+00 4/4 0/0 0/0 .text            setBck__8daE_WS_cFiUcff */
void daE_WS_c::setBck(int param_0, u8 param_1, f32 param_2, f32 param_3) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E7350-807E7354 000050 0004+00 0/1 0/0 0/0 .rodata          @3952 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3952 = 4.5f;
COMPILER_STRIP_GATE(0x807E7350, &lit_3952);
#pragma pop

/* 807E7354-807E7358 000054 0004+00 0/2 0/0 0/0 .rodata          @3953 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3953 = 7.5f;
COMPILER_STRIP_GATE(0x807E7354, &lit_3953);
#pragma pop

/* 807E7358-807E735C 000058 0004+00 0/1 0/0 0/0 .rodata          @3954 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3954 = 9.0f;
COMPILER_STRIP_GATE(0x807E7358, &lit_3954);
#pragma pop

/* 807E735C-807E7360 00005C 0004+00 0/1 0/0 0/0 .rodata          @3955 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3955 = 13.5f;
COMPILER_STRIP_GATE(0x807E735C, &lit_3955);
#pragma pop

/* 807E7360-807E7364 000060 0004+00 0/1 0/0 0/0 .rodata          @3956 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3956 = 16.0f;
COMPILER_STRIP_GATE(0x807E7360, &lit_3956);
#pragma pop

/* 807E7364-807E7368 000064 0004+00 0/1 0/0 0/0 .rodata          @3957 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3957 = 19.0f;
COMPILER_STRIP_GATE(0x807E7364, &lit_3957);
#pragma pop

/* 807E7368-807E736C 000068 0004+00 0/1 0/0 0/0 .rodata          @3958 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3958 = 23.5f;
COMPILER_STRIP_GATE(0x807E7368, &lit_3958);
#pragma pop

/* 807E736C-807E7370 00006C 0004+00 0/2 0/0 0/0 .rodata          @3959 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3959 = 25.0f;
COMPILER_STRIP_GATE(0x807E736C, &lit_3959);
#pragma pop

/* 807E7370-807E7374 000070 0004+00 0/1 0/0 0/0 .rodata          @3960 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3960 = 28.0f;
COMPILER_STRIP_GATE(0x807E7370, &lit_3960);
#pragma pop

/* 807E7374-807E7378 000074 0004+00 0/1 0/0 0/0 .rodata          @3961 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3961 = 32.5f;
COMPILER_STRIP_GATE(0x807E7374, &lit_3961);
#pragma pop

/* 807E7378-807E737C 000078 0004+00 0/1 0/0 0/0 .rodata          @3962 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3962 = 36.0f;
COMPILER_STRIP_GATE(0x807E7378, &lit_3962);
#pragma pop

/* 807E737C-807E7380 00007C 0004+00 0/1 0/0 0/0 .rodata          @3963 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3963 = 39.5f;
COMPILER_STRIP_GATE(0x807E737C, &lit_3963);
#pragma pop

/* 807E7380-807E7384 000080 0004+00 1/3 0/0 0/0 .rodata          @3964 */
SECTION_RODATA static f32 const lit_3964 = 0.5f;
COMPILER_STRIP_GATE(0x807E7380, &lit_3964);

/* 807E7384-807E7388 000084 0004+00 0/1 0/0 0/0 .rodata          @3965 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3965 = 6.0f;
COMPILER_STRIP_GATE(0x807E7384, &lit_3965);
#pragma pop

/* 807E7388-807E738C 000088 0004+00 0/1 0/0 0/0 .rodata          @3966 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3966 = 11.0f;
COMPILER_STRIP_GATE(0x807E7388, &lit_3966);
#pragma pop

/* 807E738C-807E7390 00008C 0004+00 0/1 0/0 0/0 .rodata          @3967 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3967 = 21.0f;
COMPILER_STRIP_GATE(0x807E738C, &lit_3967);
#pragma pop

/* 807E7390-807E7394 000090 0004+00 0/1 0/0 0/0 .rodata          @3968 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3968 = 26.5f;
COMPILER_STRIP_GATE(0x807E7390, &lit_3968);
#pragma pop

/* 807E7394-807E7398 000094 0004+00 0/1 0/0 0/0 .rodata          @3969 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3969 = 31.0f;
COMPILER_STRIP_GATE(0x807E7394, &lit_3969);
#pragma pop

/* 807E3CC4-807E3F90 0003A4 02CC+00 2/2 0/0 0/0 .text            setFootSound__8daE_WS_cFv */
void daE_WS_c::setFootSound() {
    // NONMATCHING
}

/* 807E3F90-807E3FAC 000670 001C+00 5/5 0/0 0/0 .text            setActionMode__8daE_WS_cFi */
void daE_WS_c::setActionMode(int param_0) {
    // NONMATCHING
}

/* 807E3FAC-807E40C8 00068C 011C+00 4/4 0/0 0/0 .text calcTargetDist__8daE_WS_cF4cXyz4cXyz */
void daE_WS_c::calcTargetDist(cXyz param_0, cXyz param_1) {
    // NONMATCHING
}

/* 807E40C8-807E416C 0007A8 00A4+00 3/3 0/0 0/0 .text calcTargetAngle__8daE_WS_cF4cXyz4cXyz */
void daE_WS_c::calcTargetAngle(cXyz param_0, cXyz param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E75B8-807E75BC 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_807E75B8[4];

/* 807E75BC-807E75C8 00000C 000C+00 1/1 0/0 0/0 .bss             @3818 */
static u8 lit_3818[12];

/* 807E75C8-807E75F0 000018 0028+00 7/7 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[40];

/* 807E416C-807E4224 00084C 00B8+00 3/3 0/0 0/0 .text checkInSearchRange__8daE_WS_cF4cXyz4cXyz */
void daE_WS_c::checkInSearchRange(cXyz param_0, cXyz param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E7398-807E73A0 000098 0004+04 0/1 0/0 0/0 .rodata          @4145 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4145[1 + 1 /* padding */] = {
    150.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x807E7398, &lit_4145);
#pragma pop

/* 807E73A0-807E73A8 0000A0 0008+00 0/1 0/0 0/0 .rodata          @4147 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4147[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x807E73A0, &lit_4147);
#pragma pop

/* 807E4224-807E4568 000904 0344+00 1/1 0/0 0/0 .text            checkPlayerPos__8daE_WS_cFv */
void daE_WS_c::checkPlayerPos() {
    // NONMATCHING
}

/* 807E4568-807E470C 000C48 01A4+00 1/1 0/0 0/0 .text            checkAttackEnd__8daE_WS_cFv */
void daE_WS_c::checkAttackEnd() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E73A8-807E73AC 0000A8 0004+00 0/4 0/0 0/0 .rodata          @4263 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4263 = 3.0f;
COMPILER_STRIP_GATE(0x807E73A8, &lit_4263);
#pragma pop

/* 807E470C-807E4AB8 000DEC 03AC+00 2/1 0/0 0/0 .text            executeWait__8daE_WS_cFv */
void daE_WS_c::executeWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E73AC-807E73B0 0000AC 0004+00 0/0 0/0 0/0 .rodata          @4264 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4264 = 32768.0f;
COMPILER_STRIP_GATE(0x807E73AC, &lit_4264);
#pragma pop

/* 807E73B0-807E73B4 0000B0 0004+00 0/0 0/0 0/0 .rodata          @4265 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4265 = 12.0f / 5.0f;
COMPILER_STRIP_GATE(0x807E73B0, &lit_4265);
#pragma pop

/* 807E73B4-807E73B8 0000B4 0004+00 0/0 0/0 0/0 .rodata          @4266 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4266 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x807E73B4, &lit_4266);
#pragma pop

/* 807E73B8-807E73BC 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4267 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4267 = 20.0f;
COMPILER_STRIP_GATE(0x807E73B8, &lit_4267);
#pragma pop

/* 807E73BC-807E73C0 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4366 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4366 = 3.5f;
COMPILER_STRIP_GATE(0x807E73BC, &lit_4366);
#pragma pop

/* 807E4AB8-807E4E68 001198 03B0+00 1/1 0/0 0/0 .text            executeAttack__8daE_WS_cFv */
void daE_WS_c::executeAttack() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E73C0-807E73C4 0000C0 0004+00 0/2 0/0 0/0 .rodata          @4442 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4442 = 4.0f;
COMPILER_STRIP_GATE(0x807E73C0, &lit_4442);
#pragma pop

/* 807E73C4-807E73C8 0000C4 0004+00 0/2 0/0 0/0 .rodata          @4443 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4443 = 5.0f;
COMPILER_STRIP_GATE(0x807E73C4, &lit_4443);
#pragma pop

/* 807E73C8-807E73CC 0000C8 0004+00 0/2 0/0 0/0 .rodata          @4444 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4444 = -3.0f;
COMPILER_STRIP_GATE(0x807E73C8, &lit_4444);
#pragma pop

/* 807E73CC-807E73D0 0000CC 0004+00 0/2 0/0 0/0 .rodata          @4445 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4445 = 2.0f;
COMPILER_STRIP_GATE(0x807E73CC, &lit_4445);
#pragma pop

/* 807E73D0-807E73D4 0000D0 0004+00 0/2 0/0 0/0 .rodata          @4446 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4446 = 12.0f;
COMPILER_STRIP_GATE(0x807E73D0, &lit_4446);
#pragma pop

/* 807E73D4-807E73D8 0000D4 0004+00 0/2 0/0 0/0 .rodata          @4447 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4447 = -20.0f;
COMPILER_STRIP_GATE(0x807E73D4, &lit_4447);
#pragma pop

/* 807E73D8-807E73DC 0000D8 0004+00 0/2 0/0 0/0 .rodata          @4448 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4448 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x807E73D8, &lit_4448);
#pragma pop

/* 807E4E68-807E5294 001548 042C+00 1/1 0/0 0/0 .text            executeDown__8daE_WS_cFv */
void daE_WS_c::executeDown() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E73DC-807E73E0 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4507 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4507 = 30.0f;
COMPILER_STRIP_GATE(0x807E73DC, &lit_4507);
#pragma pop

/* 807E5294-807E56D0 001974 043C+00 1/1 0/0 0/0 .text            executeWindDown__8daE_WS_cFv */
void daE_WS_c::executeWindDown() {
    // NONMATCHING
}

/* 807E56D0-807E58AC 001DB0 01DC+00 1/1 0/0 0/0 .text            damage_check__8daE_WS_cFv */
void daE_WS_c::damage_check() {
    // NONMATCHING
}

/* 807E58AC-807E5A3C 001F8C 0190+00 1/1 0/0 0/0 .text            action__8daE_WS_cFv */
void daE_WS_c::action() {
    // NONMATCHING
}

/* 807E5A3C-807E5AAC 00211C 0070+00 2/2 0/0 0/0 .text            mtx_set__8daE_WS_cFv */
void daE_WS_c::mtx_set() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E73E0-807E73E4 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4632 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4632 = 15.0f;
COMPILER_STRIP_GATE(0x807E73E0, &lit_4632);
#pragma pop

/* 807E73E4-807E73E8 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4633 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4633 = 90.0f;
COMPILER_STRIP_GATE(0x807E73E4, &lit_4633);
#pragma pop

/* 807E73E8-807E73EC 0000E8 0004+00 0/1 0/0 0/0 .rodata          @4634 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4634 = -15.0f;
COMPILER_STRIP_GATE(0x807E73E8, &lit_4634);
#pragma pop

/* 807E73EC-807E73F0 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4635 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4635 = -10.0f;
COMPILER_STRIP_GATE(0x807E73EC, &lit_4635);
#pragma pop

/* 807E73F0-807E73F4 0000F0 0004+00 0/1 0/0 0/0 .rodata          @4636 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4636 = 35.0f;
COMPILER_STRIP_GATE(0x807E73F0, &lit_4636);
#pragma pop

/* 807E73F4-807E73F8 0000F4 0004+00 0/1 0/0 0/0 .rodata          @4637 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4637 = 60.0f;
COMPILER_STRIP_GATE(0x807E73F4, &lit_4637);
#pragma pop

/* 807E5AAC-807E5C0C 00218C 0160+00 1/1 0/0 0/0 .text            cc_set__8daE_WS_cFv */
void daE_WS_c::cc_set() {
    // NONMATCHING
}

/* 807E5C0C-807E5CB8 0022EC 00AC+00 1/1 0/0 0/0 .text            execute__8daE_WS_cFv */
void daE_WS_c::execute() {
    // NONMATCHING
}

/* 807E5CB8-807E5CD8 002398 0020+00 1/0 0/0 0/0 .text            daE_WS_Execute__FP8daE_WS_c */
static void daE_WS_Execute(daE_WS_c* param_0) {
    // NONMATCHING
}

/* 807E5CD8-807E5F70 0023B8 0298+00 1/1 0/0 0/0 .text            checkInitialWall__8daE_WS_cFv */
void daE_WS_c::checkInitialWall() {
    // NONMATCHING
}

/* 807E5F70-807E5FB8 002650 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E73F8-807E73FC 0000F8 0004+00 0/1 0/0 0/0 .rodata          @4908 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4908 = -40.0f;
COMPILER_STRIP_GATE(0x807E73F8, &lit_4908);
#pragma pop

/* 807E5FB8-807E63F8 002698 0440+00 3/3 0/0 0/0 .text            checkBeforeBg__8daE_WS_cFs */
void daE_WS_c::checkBeforeBg(s16 param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E73FC-807E7400 0000FC 0004+00 0/1 0/0 0/0 .rodata          @4989 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4989 = -150.0f;
COMPILER_STRIP_GATE(0x807E73FC, &lit_4989);
#pragma pop

/* 807E63F8-807E66AC 002AD8 02B4+00 1/1 0/0 0/0 .text            checkWall__8daE_WS_cFv */
void daE_WS_c::checkWall() {
    // NONMATCHING
}

/* 807E66AC-807E66B4 002D8C 0008+00 1/0 0/0 0/0 .text            daE_WS_IsDelete__FP8daE_WS_c */
static bool daE_WS_IsDelete(daE_WS_c* param_0) {
    return true;
}

/* 807E66B4-807E6728 002D94 0074+00 1/1 0/0 0/0 .text            _delete__8daE_WS_cFv */
void daE_WS_c::_delete() {
    // NONMATCHING
}

/* 807E6728-807E6748 002E08 0020+00 1/0 0/0 0/0 .text            daE_WS_Delete__FP8daE_WS_c */
static void daE_WS_Delete(daE_WS_c* param_0) {
    // NONMATCHING
}

/* 807E6748-807E6840 002E28 00F8+00 1/1 0/0 0/0 .text            CreateHeap__8daE_WS_cFv */
void daE_WS_c::CreateHeap() {
    // NONMATCHING
}

/* 807E6840-807E6860 002F20 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E7400-807E7404 000100 0004+00 0/1 0/0 0/0 .rodata          @5154 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5154 = -200.0f;
COMPILER_STRIP_GATE(0x807E7400, &lit_5154);
#pragma pop

/* 807E7404-807E7404 000104 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_807E7409 = "E_ws";
#pragma pop

/* 807E6860-807E6C10 002F40 03B0+00 1/1 0/0 0/0 .text            create__8daE_WS_cFv */
void daE_WS_c::create() {
    // NONMATCHING
}

/* 807E6C10-807E6C58 0032F0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 807E6C58-807E6CA0 003338 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 807E6CA0-807E6CFC 003380 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 807E6CFC-807E6D6C 0033DC 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 807E6D6C-807E6DDC 00344C 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 807E6DDC-807E6DFC 0034BC 0020+00 1/0 0/0 0/0 .text            daE_WS_Create__FP8daE_WS_c */
static void daE_WS_Create(daE_WS_c* param_0) {
    // NONMATCHING
}

/* 807E6DFC-807E6E44 0034DC 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 807E6E44-807E6E8C 003524 0048+00 2/1 0/0 0/0 .text            __dt__12daE_WS_HIO_cFv */
daE_WS_HIO_c::~daE_WS_HIO_c() {
    // NONMATCHING
}

/* 807E6E8C-807E6EC8 00356C 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_ws_cpp */
void __sinit_d_a_e_ws_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x807E6E8C, __sinit_d_a_e_ws_cpp);
#pragma pop

/* 807E6EC8-807E6ED0 0035A8 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_807E6EC8() {
    // NONMATCHING
}

/* 807E6ED0-807E6ED8 0035B0 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_807E6ED0() {
    // NONMATCHING
}

/* 807E7404-807E7404 000104 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
