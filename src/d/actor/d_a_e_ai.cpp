/**
 * @file d_a_e_ai.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_e_ai.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "f_op/f_op_actor_enemy.h"


//
// Forward References:
//

extern "C" void __ct__12daE_AI_HIO_cFv();
extern "C" void initCcCylinder__10e_ai_classFv();
extern "C" void setCcCylinder__10e_ai_classFv();
extern "C" void anm_init__10e_ai_classFifUcf();
extern "C" void Draw__10e_ai_classFv();
extern "C" void player_way_check__10e_ai_classFv();
extern "C" void other_bg_check__10e_ai_classFP10fopAc_ac_c();
extern "C" void pl_check__10e_ai_classFfs();
extern "C" void damage_check__10e_ai_classFv();
extern "C" void e_ai_damage__10e_ai_classFv();
extern "C" void e_ai_attack__10e_ai_classFv();
extern "C" void e_ai_move__10e_ai_classFv();
extern "C" void e_ai_wait__10e_ai_classFv();
extern "C" void e_ai_return__10e_ai_classFv();
extern "C" void action__10e_ai_classFv();
extern "C" void PlayerWaySet__10e_ai_classFv();
extern "C" void AttentionSet__10e_ai_classFv();
extern "C" void Execute__10e_ai_classFv();
extern "C" void setBaseMtx__10e_ai_classFv();
extern "C" void Delete__10e_ai_classFv();
extern "C" static void daE_AI_Draw__FP10e_ai_class();
extern "C" static void daE_AI_Execute__FP10e_ai_class();
extern "C" static bool daE_AI_IsDelete__FP10e_ai_class();
extern "C" static void daE_AI_Delete__FP10e_ai_class();
extern "C" void CreateHeap__10e_ai_classFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void Create__10e_ai_classFv();
extern "C" void __ct__10e_ai_classFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" static void daE_AI_Create__FP10fopAc_ac_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_AI_HIO_cFv();
extern "C" void __sinit_d_a_e_ai_cpp();
extern "C" static void func_8067BFC4();
extern "C" static void func_8067BFCC();
extern "C" extern char const* const d_a_e_ai__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
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
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
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
extern "C" void getHitSeID__12dCcD_GObjInfFUci();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey();
extern "C" void _savegpr_19();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
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
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 8067C428-8067C42C 00002C 0004+00 0/1 0/0 0/0 .rodata          @3810 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3810 = 20.0f;
COMPILER_STRIP_GATE(0x8067C428, &lit_3810);
#pragma pop

/* 8067C42C-8067C430 000030 0004+00 0/1 0/0 0/0 .rodata          @3811 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3811 = 700.0f;
COMPILER_STRIP_GATE(0x8067C42C, &lit_3811);
#pragma pop

/* 8067C430-8067C434 000034 0004+00 0/1 0/0 0/0 .rodata          @3812 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3812 = 350.0f;
COMPILER_STRIP_GATE(0x8067C430, &lit_3812);
#pragma pop

/* 8067C434-8067C438 000038 0004+00 0/1 0/0 0/0 .rodata          @3813 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3813 = 190.0f;
COMPILER_STRIP_GATE(0x8067C434, &lit_3813);
#pragma pop

/* 8067C578-8067C5BC 000038 0044+00 1/1 0/0 0/0 .data            cc_cyl_src$3819 */
static dCcD_SrcCyl cc_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xdafbf9ff, 0x43}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        80.0f, // mRadius
        250.0f // mHeight
    } // mCyl
};

/* 8067C5BC-8067C5DC -00001 0020+00 1/0 0/0 0/0 .data            l_daE_AI_Method */
static actor_method_class l_daE_AI_Method = {
    (process_method_func)daE_AI_Create__FP10fopAc_ac_c,
    (process_method_func)daE_AI_Delete__FP10e_ai_class,
    (process_method_func)daE_AI_Execute__FP10e_ai_class,
    (process_method_func)daE_AI_IsDelete__FP10e_ai_class,
    (process_method_func)daE_AI_Draw__FP10e_ai_class,
};

/* 8067C5DC-8067C60C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_AI */
extern actor_process_profile_definition g_profile_E_AI = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_AI,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(e_ai_class),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  112,                    // mPriority
  &l_daE_AI_Method,       // sub_method
  0x00040100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 8067C60C-8067C618 0000CC 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 8067C618-8067C624 0000D8 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 8067C624-8067C630 0000E4 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 8067C630-8067C63C 0000F0 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 8067C63C-8067C648 0000FC 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 8067C648-8067C654 000108 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8067C654-8067C678 000114 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8067BFCC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8067BFC4,
};

/* 8067C678-8067C684 000138 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 8067C684-8067C690 000144 000C+00 2/2 0/0 0/0 .data            __vt__12daE_AI_HIO_c */
SECTION_DATA extern void* __vt__12daE_AI_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_AI_HIO_cFv,
};

/* 8067916C-806791BC 0000EC 0050+00 1/1 0/0 0/0 .text            __ct__12daE_AI_HIO_cFv */
daE_AI_HIO_c::daE_AI_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8067C438-8067C478 00003C 0040+00 1/1 0/0 0/0 .rodata          at_sph_src$3817 */
const static dCcD_SrcSph at_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x2, 0xd}, {0x0, 0x0}, 0x75}}, // mObj
        {dCcD_SE_STONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 30.0f} // mSph
    } // mSphAttr
};

/* 8067C478-8067C4B8 00007C 0040+00 1/1 0/0 0/0 .rodata          shield_sph_src$3818 */
const static dCcD_SrcSph shield_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x0, 0x0}, 0x75}}, // mObj
        {dCcD_SE_STONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 30.0f} // mSph
    } // mSphAttr
};

/* 806791BC-80679284 00013C 00C8+00 1/1 0/0 0/0 .text            initCcCylinder__10e_ai_classFv */
void e_ai_class::initCcCylinder() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8067C4B8-8067C4BC 0000BC 0004+00 0/4 0/0 0/0 .rodata          @3848 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3848 = 50.0f;
COMPILER_STRIP_GATE(0x8067C4B8, &lit_3848);
#pragma pop

/* 80679284-80679350 000204 00CC+00 1/1 0/0 0/0 .text            setCcCylinder__10e_ai_classFv */
void e_ai_class::setCcCylinder() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8067C4BC-8067C4C0 0000C0 0004+00 1/1 0/0 0/0 .rodata          @3854 */
SECTION_RODATA static f32 const lit_3854 = -1.0f;
COMPILER_STRIP_GATE(0x8067C4BC, &lit_3854);

/* 8067C538-8067C538 00013C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8067C538 = "E_AI";
#pragma pop

/* 80679350-806793FC 0002D0 00AC+00 6/6 0/0 0/0 .text            anm_init__10e_ai_classFifUcf */
void e_ai_class::anm_init(int param_0, f32 param_1, u8 param_2, f32 param_3) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8067C4C0-8067C4C4 0000C4 0004+00 0/1 0/0 0/0 .rodata          @3887 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3887 = 1000.0f;
COMPILER_STRIP_GATE(0x8067C4C0, &lit_3887);
#pragma pop

/* 806793FC-806794F4 00037C 00F8+00 1/1 0/0 0/0 .text            Draw__10e_ai_classFv */
void e_ai_class::Draw() {
    // NONMATCHING
}

/* 806794F4-80679538 000474 0044+00 1/1 0/0 0/0 .text            player_way_check__10e_ai_classFv */
void e_ai_class::player_way_check() {
    // NONMATCHING
}

/* 80679538-80679610 0004B8 00D8+00 1/1 0/0 0/0 .text other_bg_check__10e_ai_classFP10fopAc_ac_c
 */
void e_ai_class::other_bg_check(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80679610-8067968C 000590 007C+00 2/2 0/0 0/0 .text            pl_check__10e_ai_classFfs */
void e_ai_class::pl_check(f32 param_0, s16 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8067C4C4-8067C4C8 0000C8 0004+00 0/2 0/0 0/0 .rodata          @4111 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4111 = 80.0f;
COMPILER_STRIP_GATE(0x8067C4C4, &lit_4111);
#pragma pop

/* 8067C4C8-8067C4CC 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4112 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4112 = -60.0f;
COMPILER_STRIP_GATE(0x8067C4C8, &lit_4112);
#pragma pop

/* 8067C4CC-8067C4D0 0000D0 0004+00 0/4 0/0 0/0 .rodata          @4113 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4113 = 5.0f;
COMPILER_STRIP_GATE(0x8067C4CC, &lit_4113);
#pragma pop

/* 8067968C-80679DC8 00060C 073C+00 1/1 0/0 0/0 .text            damage_check__10e_ai_classFv */
void e_ai_class::damage_check() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8067C4D0-8067C4D4 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4256 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4256 = 40.0f;
COMPILER_STRIP_GATE(0x8067C4D0, &lit_4256);
#pragma pop

/* 8067C4D4-8067C4D8 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4257 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4257 = 4.0f;
COMPILER_STRIP_GATE(0x8067C4D4, &lit_4257);
#pragma pop

/* 8067C4D8-8067C4DC 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4258 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4258 = 7.0f;
COMPILER_STRIP_GATE(0x8067C4D8, &lit_4258);
#pragma pop

/* 8067C4DC-8067C4E0 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4259 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4259 = -20.0f;
COMPILER_STRIP_GATE(0x8067C4DC, &lit_4259);
#pragma pop

/* 8067C4E0-8067C4E4 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4260 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4260 = 10.0f;
COMPILER_STRIP_GATE(0x8067C4E0, &lit_4260);
#pragma pop

/* 8067C4E4-8067C4E8 0000E8 0004+00 0/4 0/0 0/0 .rodata          @4261 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4261 = 0.5f;
COMPILER_STRIP_GATE(0x8067C4E4, &lit_4261);
#pragma pop

/* 8067C4E8-8067C4EC 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4262 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4262 = 2000.0f;
COMPILER_STRIP_GATE(0x8067C4E8, &lit_4262);
#pragma pop

/* 8067C4EC-8067C4F0 0000F0 0004+00 0/3 0/0 0/0 .rodata          @4263 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4263 = 25.0f;
COMPILER_STRIP_GATE(0x8067C4EC, &lit_4263);
#pragma pop

/* 8067C698-8067C69C 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_8067C698[4];

/* 8067C69C-8067C6A8 00000C 000C+00 1/1 0/0 0/0 .bss             @3805 */
static u8 lit_3805[12];

/* 8067C6A8-8067C6C8 000018 0020+00 7/7 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[32];

/* 80679DC8-8067A2CC 000D48 0504+00 1/1 0/0 0/0 .text            e_ai_damage__10e_ai_classFv */
void e_ai_class::e_ai_damage() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8067C4F0-8067C4F4 0000F4 0004+00 0/1 0/0 0/0 .rodata          @4316 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4316 = 15.0f;
COMPILER_STRIP_GATE(0x8067C4F0, &lit_4316);
#pragma pop

/* 8067A2CC-8067A54C 00124C 0280+00 1/1 0/0 0/0 .text            e_ai_attack__10e_ai_classFv */
void e_ai_class::e_ai_attack() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8067C4F4-8067C4FC 0000F8 0004+04 0/1 0/0 0/0 .rodata          @4437 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4437[1 + 1 /* padding */] = {
    500.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x8067C4F4, &lit_4437);
#pragma pop

/* 8067C4FC-8067C504 000100 0008+00 0/2 0/0 0/0 .rodata          @4439 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4439[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8067C4FC, &lit_4439);
#pragma pop

/* 8067A54C-8067AA48 0014CC 04FC+00 1/1 0/0 0/0 .text            e_ai_move__10e_ai_classFv */
void e_ai_class::e_ai_move() {
    // NONMATCHING
}

/* 8067AA48-8067ACA0 0019C8 0258+00 1/1 0/0 0/0 .text            e_ai_wait__10e_ai_classFv */
void e_ai_class::e_ai_wait() {
    // NONMATCHING
}

/* 8067ACA0-8067B024 001C20 0384+00 1/1 0/0 0/0 .text            e_ai_return__10e_ai_classFv */
void e_ai_class::e_ai_return() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8067C504-8067C508 000108 0004+00 0/2 0/0 0/0 .rodata          @4636 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4636 = 200.0f;
COMPILER_STRIP_GATE(0x8067C504, &lit_4636);
#pragma pop

/* 8067B024-8067B2B0 001FA4 028C+00 1/1 0/0 0/0 .text            action__10e_ai_classFv */
void e_ai_class::action() {
    // NONMATCHING
}

/* 8067B2B0-8067B31C 002230 006C+00 1/1 0/0 0/0 .text            PlayerWaySet__10e_ai_classFv */
void e_ai_class::PlayerWaySet() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8067C508-8067C50C 00010C 0004+00 1/1 0/0 0/0 .rodata          @4661 */
SECTION_RODATA static f32 const lit_4661 = 130.0f;
COMPILER_STRIP_GATE(0x8067C508, &lit_4661);

/* 8067B31C-8067B378 00229C 005C+00 1/1 0/0 0/0 .text            AttentionSet__10e_ai_classFv */
void e_ai_class::AttentionSet() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8067C50C-8067C510 000110 0004+00 0/1 0/0 0/0 .rodata          @4719 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4719 = 1.5f;
COMPILER_STRIP_GATE(0x8067C50C, &lit_4719);
#pragma pop

/* 8067C510-8067C514 000114 0004+00 0/1 0/0 0/0 .rodata          @4720 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4720 = -130.0f;
COMPILER_STRIP_GATE(0x8067C510, &lit_4720);
#pragma pop

/* 8067C514-8067C518 000118 0004+00 0/1 0/0 0/0 .rodata          @4721 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4721 = -150.0f;
COMPILER_STRIP_GATE(0x8067C514, &lit_4721);
#pragma pop

/* 8067C518-8067C51C 00011C 0004+00 0/1 0/0 0/0 .rodata          @4722 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4722 = -30000.0f;
COMPILER_STRIP_GATE(0x8067C518, &lit_4722);
#pragma pop

/* 8067C51C-8067C520 000120 0004+00 0/1 0/0 0/0 .rodata          @4723 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4723 = 20000.0f;
COMPILER_STRIP_GATE(0x8067C51C, &lit_4723);
#pragma pop

/* 8067C520-8067C524 000124 0004+00 0/1 0/0 0/0 .rodata          @4724 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4724 = 15000.0f;
COMPILER_STRIP_GATE(0x8067C520, &lit_4724);
#pragma pop

/* 8067B378-8067B598 0022F8 0220+00 1/1 0/0 0/0 .text            Execute__10e_ai_classFv */
void e_ai_class::Execute() {
    // NONMATCHING
}

/* 8067B598-8067B620 002518 0088+00 1/1 0/0 0/0 .text            setBaseMtx__10e_ai_classFv */
void e_ai_class::setBaseMtx() {
    // NONMATCHING
}

/* 8067B620-8067B688 0025A0 0068+00 1/1 0/0 0/0 .text            Delete__10e_ai_classFv */
void e_ai_class::Delete() {
    // NONMATCHING
}

/* 8067B688-8067B6A8 002608 0020+00 1/0 0/0 0/0 .text            daE_AI_Draw__FP10e_ai_class */
static void daE_AI_Draw(e_ai_class* param_0) {
    // NONMATCHING
}

/* 8067B6A8-8067B6C8 002628 0020+00 2/1 0/0 0/0 .text            daE_AI_Execute__FP10e_ai_class */
static void daE_AI_Execute(e_ai_class* param_0) {
    // NONMATCHING
}

/* 8067B6C8-8067B6D0 002648 0008+00 1/0 0/0 0/0 .text            daE_AI_IsDelete__FP10e_ai_class */
static bool daE_AI_IsDelete(e_ai_class* param_0) {
    return true;
}

/* 8067B6D0-8067B6F0 002650 0020+00 1/0 0/0 0/0 .text            daE_AI_Delete__FP10e_ai_class */
static void daE_AI_Delete(e_ai_class* param_0) {
    // NONMATCHING
}

/* 8067B6F0-8067B87C 002670 018C+00 1/1 0/0 0/0 .text            CreateHeap__10e_ai_classFv */
void e_ai_class::CreateHeap() {
    // NONMATCHING
}

/* 8067B87C-8067B8C4 0027FC 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 8067B8C4-8067B8E4 002844 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8067C524-8067C528 000128 0004+00 0/1 0/0 0/0 .rodata          @4886 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4886 = -200.0f;
COMPILER_STRIP_GATE(0x8067C524, &lit_4886);
#pragma pop

/* 8067C528-8067C52C 00012C 0004+00 0/1 0/0 0/0 .rodata          @4887 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4887 = -300.0f;
COMPILER_STRIP_GATE(0x8067C528, &lit_4887);
#pragma pop

/* 8067C52C-8067C530 000130 0004+00 0/1 0/0 0/0 .rodata          @4888 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4888 = 300.0f;
COMPILER_STRIP_GATE(0x8067C52C, &lit_4888);
#pragma pop

/* 8067C530-8067C534 000134 0004+00 0/1 0/0 0/0 .rodata          @4889 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4889 = 150.0f;
COMPILER_STRIP_GATE(0x8067C530, &lit_4889);
#pragma pop

/* 8067C534-8067C538 000138 0004+00 0/1 0/0 0/0 .rodata          @4890 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4890 = -10.0f;
COMPILER_STRIP_GATE(0x8067C534, &lit_4890);
#pragma pop

/* 8067B8E4-8067BAEC 002864 0208+00 1/1 0/0 0/0 .text            Create__10e_ai_classFv */
void e_ai_class::Create() {
    // NONMATCHING
}

/* 8067BAEC-8067BCC4 002A6C 01D8+00 1/1 0/0 0/0 .text            __ct__10e_ai_classFv */
e_ai_class::e_ai_class() {
    // NONMATCHING
}

/* 8067BCC4-8067BD0C 002C44 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 8067BD0C-8067BD54 002C8C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 8067BD54-8067BD9C 002CD4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 8067BD9C-8067BDF8 002D1C 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 8067BDF8-8067BE68 002D78 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 8067BE68-8067BED8 002DE8 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 8067BED8-8067BEF8 002E58 0020+00 1/0 0/0 0/0 .text            daE_AI_Create__FP10fopAc_ac_c */
static void daE_AI_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 8067BEF8-8067BF40 002E78 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 8067BF40-8067BF88 002EC0 0048+00 2/1 0/0 0/0 .text            __dt__12daE_AI_HIO_cFv */
daE_AI_HIO_c::~daE_AI_HIO_c() {
    // NONMATCHING
}

/* 8067BF88-8067BFC4 002F08 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_ai_cpp */
void __sinit_d_a_e_ai_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x8067BF88, __sinit_d_a_e_ai_cpp);
#pragma pop

/* 8067BFC4-8067BFCC 002F44 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_8067BFC4() {
    // NONMATCHING
}

/* 8067BFCC-8067BFD4 002F4C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_8067BFCC() {
    // NONMATCHING
}

/* 8067C538-8067C538 00013C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
