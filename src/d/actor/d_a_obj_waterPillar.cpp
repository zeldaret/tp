/**
 * @file d_a_obj_waterPillar.cpp
 * 
*/

#include "d/actor/d_a_obj_waterPillar.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__16daWtPillar_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__12daWtPillar_cFv();
extern "C" void createHeapCallBack__12daWtPillar_cFP10fopAc_ac_c();
extern "C" void CreateHeap__12daWtPillar_cFv();
extern "C" void create__12daWtPillar_cFv();
extern "C" void execute__12daWtPillar_cFv();
extern "C" void actionMain__12daWtPillar_cFv();
extern "C" void effectSet__12daWtPillar_cFv();
extern "C" void effectSet2__12daWtPillar_cFv();
extern "C" void actionSwWaitInit__12daWtPillar_cFv();
extern "C" void actionSwWait__12daWtPillar_cFv();
extern "C" void eventStart__12daWtPillar_cFv();
extern "C" void actionWaitInit__12daWtPillar_cFv();
extern "C" void actionWait__12daWtPillar_cFv();
extern "C" void actionUpFirstInit__12daWtPillar_cFv();
extern "C" void actionUpFirst__12daWtPillar_cFv();
extern "C" void actionUpFirstWaitInit__12daWtPillar_cFv();
extern "C" void actionUpFirstWait__12daWtPillar_cFv();
extern "C" void actionUpInit__12daWtPillar_cFv();
extern "C" void actionUp__12daWtPillar_cFv();
extern "C" void actionUpWaitInit__12daWtPillar_cFv();
extern "C" void actionUpWait__12daWtPillar_cFv();
extern "C" void actionDownInit__12daWtPillar_cFv();
extern "C" void actionDown__12daWtPillar_cFv();
extern "C" void actionRockWaitInit__12daWtPillar_cFv();
extern "C" void actionRockWait__12daWtPillar_cFv();
extern "C" void actionRockOnInit__12daWtPillar_cFv();
extern "C" void actionRockOn__12daWtPillar_cFv();
extern "C" void actionEndInit__12daWtPillar_cFv();
extern "C" void actionEnd__12daWtPillar_cFv();
extern "C" void getPillarHeight__12daWtPillar_cFv();
extern "C" void draw__12daWtPillar_cFv();
extern "C" void _delete__12daWtPillar_cFv();
extern "C" static void daWtPillar_Draw__FP12daWtPillar_c();
extern "C" static void daWtPillar_Execute__FP12daWtPillar_c();
extern "C" static void daWtPillar_Delete__FP12daWtPillar_c();
extern "C" static void daWtPillar_Create__FP10fopAc_ac_c();
extern "C" void __dt__16daWtPillar_HIO_cFv();
extern "C" void __sinit_d_a_obj_waterPillar_cpp();
extern "C" static void func_80D2E034();
extern "C" static void func_80D2E03C();
extern "C" static void func_80D2E044();
extern "C" static void func_80D2E04C();
extern "C" void __ct__12daWtPillar_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void __dt__12daWtPillar_cFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__17dEvLib_callback_cFv();
extern "C" bool eventRun__17dEvLib_callback_cFv();
extern "C" bool eventEnd__17dEvLib_callback_cFv();
extern "C" bool eventStart__17dEvLib_callback_cFv();
extern "C" u8 const mCcDObjInfo__12daWtPillar_c[48];
extern "C" u8 const mCcDObjCoInfo__12daWtPillar_c[48];
extern "C" extern char const* const d_a_obj_waterPillar__stringBase0;
extern "C" u8 mCcDCps__12daWtPillar_c[76];
extern "C" u8 mCcDCyl__12daWtPillar_c[68];

//
// External References:
//

extern "C" void mDoMtx_ZXYrotS__FPA4_fsss();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb();
extern "C" void entry__13mDoExt_bckAnmFP12J3DModelDataf();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void eventUpdate__17dEvLib_callback_cFv();
extern "C" void orderEvent__17dEvLib_callback_cFiii();
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
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CpsFRC11dCcD_SrcCps();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void __ct__8cM3dGCpsFv();
extern "C" void __dt__8cM3dGCpsFv();
extern "C" void Set__8cM3dGCpsFRC9cM3dGCpsS();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_chaseF__FPfff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __ptmf_scall();
extern "C" void __cvt_fp2unsigned();
extern "C" void _savegpr_24();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_24();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__8dCcD_Cps[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__12cCcD_CpsAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80D2E770-80D2E774 000000 0004+00 16/16 0/0 0/0 .rodata          @3645 */
SECTION_RODATA static f32 const lit_3645 = 1.0f;
COMPILER_STRIP_GATE(0x80D2E770, &lit_3645);

/* 80D2E774-80D2E778 000004 0004+00 0/1 0/0 0/0 .rodata          @3646 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3646 = 2000.0f;
COMPILER_STRIP_GATE(0x80D2E774, &lit_3646);
#pragma pop

/* 80D2E778-80D2E77C 000008 0004+00 0/1 0/0 0/0 .rodata          @3647 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3647 = 5000.0f;
COMPILER_STRIP_GATE(0x80D2E778, &lit_3647);
#pragma pop

/* 80D2E77C-80D2E780 00000C 0004+00 0/1 0/0 0/0 .rodata          @3648 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3648 = 1000.0f;
COMPILER_STRIP_GATE(0x80D2E77C, &lit_3648);
#pragma pop

/* 80D2E780-80D2E784 000010 0004+00 0/1 0/0 0/0 .rodata          @3649 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3649 = 20.0f;
COMPILER_STRIP_GATE(0x80D2E780, &lit_3649);
#pragma pop

/* 80D2E784-80D2E788 000014 0004+00 0/1 0/0 0/0 .rodata          @3650 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3650 = 25.0f;
COMPILER_STRIP_GATE(0x80D2E784, &lit_3650);
#pragma pop

/* 80D2E788-80D2E78C 000018 0004+00 0/1 0/0 0/0 .rodata          @3651 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3651 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x80D2E788, &lit_3651);
#pragma pop

/* 80D2E78C-80D2E790 00001C 0004+00 0/2 0/0 0/0 .rodata          @3652 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3652 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80D2E78C, &lit_3652);
#pragma pop

/* 80D2E84C-80D2E858 000000 000C+00 2/2 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80D2E858-80D2E86C 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80D2E86C-80D2E884 000020 0018+00 0/1 0/0 0/0 .data            l_cull_box */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_cull_box[24] = {
    0xC1, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0xC1, 0xF0, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0x42, 0x70, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
};
#pragma pop

/* 80D2E884-80D2E8D0 000038 004C+00 1/2 0/0 0/0 .data            mCcDCps__12daWtPillar_c */
SECTION_DATA u8 daWtPillar_c::mCcDCps[76] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x44, 0x89, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x43, 0x16, 0x00, 0x00,
};

/* 80D2E8D0-80D2E914 000084 0044+00 1/2 0/0 0/0 .data            mCcDCyl__12daWtPillar_c */
SECTION_DATA u8 daWtPillar_c::mCcDCyl[68] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80D2E914-80D2E920 -00001 000C+00 0/1 0/0 0/0 .data            @3954 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3954[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionSwWait__12daWtPillar_cFv,
};
#pragma pop

/* 80D2E920-80D2E92C -00001 000C+00 0/1 0/0 0/0 .data            @3955 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3955[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionWait__12daWtPillar_cFv,
};
#pragma pop

/* 80D2E92C-80D2E938 -00001 000C+00 0/1 0/0 0/0 .data            @3956 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3956[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionUpFirst__12daWtPillar_cFv,
};
#pragma pop

/* 80D2E938-80D2E944 -00001 000C+00 0/1 0/0 0/0 .data            @3957 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3957[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionUpFirstWait__12daWtPillar_cFv,
};
#pragma pop

/* 80D2E944-80D2E950 -00001 000C+00 0/1 0/0 0/0 .data            @3958 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3958[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionUp__12daWtPillar_cFv,
};
#pragma pop

/* 80D2E950-80D2E95C -00001 000C+00 0/1 0/0 0/0 .data            @3959 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3959[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionUpWait__12daWtPillar_cFv,
};
#pragma pop

/* 80D2E95C-80D2E968 -00001 000C+00 0/1 0/0 0/0 .data            @3960 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3960[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionDown__12daWtPillar_cFv,
};
#pragma pop

/* 80D2E968-80D2E974 -00001 000C+00 0/1 0/0 0/0 .data            @3961 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3961[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionRockWait__12daWtPillar_cFv,
};
#pragma pop

/* 80D2E974-80D2E980 -00001 000C+00 0/1 0/0 0/0 .data            @3962 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3962[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionRockOn__12daWtPillar_cFv,
};
#pragma pop

/* 80D2E980-80D2E98C -00001 000C+00 0/1 0/0 0/0 .data            @3963 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3963[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionEnd__12daWtPillar_cFv,
};
#pragma pop

/* 80D2E98C-80D2EA04 000140 0078+00 0/1 0/0 0/0 .data            l_func$3953 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func[120] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80D2EA04-80D2EA14 0001B8 000E+02 1/1 0/0 0/0 .data            l_eff$3970 */
SECTION_DATA static u8 l_eff[14 + 2 /* padding */] = {
    0x86,
    0xE3,
    0x86,
    0xE4,
    0x86,
    0xE7,
    0x86,
    0xE6,
    0x86,
    0xE5,
    0x86,
    0xEB,
    0x86,
    0xEA,
    /* padding */
    0x00,
    0x00,
};

/* 80D2EA14-80D2EA34 -00001 0020+00 1/0 0/0 0/0 .data            l_daWtPillar_Method */
static actor_method_class l_daWtPillar_Method = {
    (process_method_func)daWtPillar_Create__FP10fopAc_ac_c,
    (process_method_func)daWtPillar_Delete__FP12daWtPillar_c,
    (process_method_func)daWtPillar_Execute__FP12daWtPillar_c,
    0,
    (process_method_func)daWtPillar_Draw__FP12daWtPillar_c,
};

/* 80D2EA34-80D2EA64 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_WaterPillar */
extern actor_process_profile_definition g_profile_Obj_WaterPillar = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_WaterPillar,   // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daWtPillar_c),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  520,                    // mPriority
  &l_daWtPillar_Method,   // sub_method
  0x00040000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80D2EA64-80D2EA8C 000218 0028+00 2/2 0/0 0/0 .data            __vt__12daWtPillar_c */
SECTION_DATA extern void* __vt__12daWtPillar_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D2E04C,
    (void*)func_80D2E044,
    (void*)eventRun__17dEvLib_callback_cFv,
    (void*)eventEnd__17dEvLib_callback_cFv,
    (void*)__dt__12daWtPillar_cFv,
    (void*)eventStart__12daWtPillar_cFv,
};

/* 80D2EA8C-80D2EA98 000240 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80D2EA98-80D2EAA4 00024C 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80D2EAA4-80D2EAB0 000258 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80D2EAB0-80D2EABC 000264 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80D2EABC-80D2EAC8 000270 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80D2EAC8-80D2EAEC 00027C 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D2E03C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D2E034,
};

/* 80D2EAEC-80D2EAF8 0002A0 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80D2EAF8-80D2EB10 0002AC 0018+00 3/3 0/0 0/0 .data            __vt__17dEvLib_callback_c */
SECTION_DATA extern void* __vt__17dEvLib_callback_c[6] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17dEvLib_callback_cFv,
    (void*)eventStart__17dEvLib_callback_cFv,
    (void*)eventRun__17dEvLib_callback_cFv,
    (void*)eventEnd__17dEvLib_callback_cFv,
};

/* 80D2EB10-80D2EB1C 0002C4 000C+00 2/2 0/0 0/0 .data            __vt__16daWtPillar_HIO_c */
SECTION_DATA extern void* __vt__16daWtPillar_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daWtPillar_HIO_cFv,
};

/* 80D2EB1C-80D2EB28 0002D0 000C+00 3/3 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80D2C6CC-80D2C768 0000EC 009C+00 1/1 0/0 0/0 .text            __ct__16daWtPillar_HIO_cFv */
daWtPillar_HIO_c::daWtPillar_HIO_c() {
    // NONMATCHING
}

/* 80D2C768-80D2C7B0 000188 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
// mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" void __dt__14mDoHIO_entry_cFv() {
    // NONMATCHING
}

/* 80D2C7B0-80D2C838 0001D0 0088+00 2/2 0/0 0/0 .text            setBaseMtx__12daWtPillar_cFv */
void daWtPillar_c::setBaseMtx() {
    // NONMATCHING
}

/* 80D2C838-80D2C858 000258 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__12daWtPillar_cFP10fopAc_ac_c             */
void daWtPillar_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D2E844-80D2E844 0000D4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D2E844 = "efWater";
#pragma pop

/* 80D2C858-80D2C960 000278 0108+00 1/1 0/0 0/0 .text            CreateHeap__12daWtPillar_cFv */
void daWtPillar_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D2E790-80D2E7C0 000020 0030+00 1/1 0/0 0/0 .rodata          mCcDObjInfo__12daWtPillar_c */
SECTION_RODATA u8 const daWtPillar_c::mCcDObjInfo[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1D,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D2E790, &daWtPillar_c::mCcDObjInfo);

/* 80D2E7C0-80D2E7F0 000050 0030+00 1/1 0/0 0/0 .rodata          mCcDObjCoInfo__12daWtPillar_c */
SECTION_RODATA u8 const daWtPillar_c::mCcDObjCoInfo[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x79, 0x01, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D2E7C0, &daWtPillar_c::mCcDObjCoInfo);

/* 80D2E7F0-80D2E7F4 000080 0004+00 0/2 0/0 0/0 .rodata          @3742 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3742 = 150.0f;
COMPILER_STRIP_GATE(0x80D2E7F0, &lit_3742);
#pragma pop

/* 80D2E7F4-80D2E7F8 000084 0004+00 0/3 0/0 0/0 .rodata          @3743 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3743 = 5.0f;
COMPILER_STRIP_GATE(0x80D2E7F4, &lit_3743);
#pragma pop

/* 80D2E7F8-80D2E7FC 000088 0004+00 0/1 0/0 0/0 .rodata          @3744 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3744 = 10000.0f;
COMPILER_STRIP_GATE(0x80D2E7F8, &lit_3744);
#pragma pop

/* 80D2E7FC-80D2E800 00008C 0004+00 0/4 0/0 0/0 .rodata          @3745 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3745 = 100.0f;
COMPILER_STRIP_GATE(0x80D2E7FC, &lit_3745);
#pragma pop

/* 80D2E800-80D2E808 000090 0004+04 2/11 0/0 0/0 .rodata          @3746 */
SECTION_RODATA static u8 const lit_3746[4 + 4 /* padding */] = {
    0x00,
    0x00,
    0x00,
    0x00,
    /* padding */
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D2E800, &lit_3746);

/* 80D2E808-80D2E810 000098 0008+00 0/4 0/0 0/0 .rodata          @3748 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3748[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D2E808, &lit_3748);
#pragma pop

/* 80D2C960-80D2CC0C 000380 02AC+00 1/1 0/0 0/0 .text            create__12daWtPillar_cFv */
void daWtPillar_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D2E810-80D2E814 0000A0 0004+00 0/1 0/0 0/0 .rodata          @3947 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3947 = 140.0f;
COMPILER_STRIP_GATE(0x80D2E810, &lit_3947);
#pragma pop

/* 80D2E814-80D2E818 0000A4 0004+00 0/1 0/0 0/0 .rodata          @3948 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_3948 = 0x43360B61;
COMPILER_STRIP_GATE(0x80D2E814, &lit_3948);
#pragma pop

/* 80D2EB30-80D2EB3C 000008 000C+00 1/1 0/0 0/0 .bss             @3635 */
static u8 lit_3635[12];

/* 80D2EB3C-80D2EB94 000014 0058+00 5/5 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[88];

/* 80D2CC0C-80D2CE4C 00062C 0240+00 1/1 0/0 0/0 .text            execute__12daWtPillar_cFv */
void daWtPillar_c::execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D2EB94-80D2EB98 00006C 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80D2EB94[4];

/* 80D2CE4C-80D2CF98 00086C 014C+00 1/1 0/0 0/0 .text            actionMain__12daWtPillar_cFv */
void daWtPillar_c::actionMain() {
    // NONMATCHING
}

/* 80D2CF98-80D2D278 0009B8 02E0+00 1/1 0/0 0/0 .text            effectSet__12daWtPillar_cFv */
void daWtPillar_c::effectSet() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D2E818-80D2E81C 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4088 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4088 = 500.0f;
COMPILER_STRIP_GATE(0x80D2E818, &lit_4088);
#pragma pop

/* 80D2D278-80D2D3FC 000C98 0184+00 1/1 0/0 0/0 .text            effectSet2__12daWtPillar_cFv */
void daWtPillar_c::effectSet2() {
    // NONMATCHING
}

/* 80D2D3FC-80D2D408 000E1C 000C+00 1/1 0/0 0/0 .text            actionSwWaitInit__12daWtPillar_cFv
 */
void daWtPillar_c::actionSwWaitInit() {
    // NONMATCHING
}

/* 80D2D408-80D2D488 000E28 0080+00 1/0 0/0 0/0 .text            actionSwWait__12daWtPillar_cFv */
void daWtPillar_c::actionSwWait() {
    // NONMATCHING
}

/* 80D2D488-80D2D4AC 000EA8 0024+00 2/1 0/0 0/0 .text            eventStart__12daWtPillar_cFv */
void daWtPillar_c::eventStart() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D2E81C-80D2E820 0000AC 0004+00 0/6 0/0 0/0 .rodata          @4124 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4124 = 30.0f;
COMPILER_STRIP_GATE(0x80D2E81C, &lit_4124);
#pragma pop

/* 80D2E820-80D2E824 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4125 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4125 = 0.5f;
COMPILER_STRIP_GATE(0x80D2E820, &lit_4125);
#pragma pop

/* 80D2E824-80D2E828 0000B4 0004+00 3/8 0/0 0/0 .rodata          @4126 */
SECTION_RODATA static f32 const lit_4126 = -1.0f;
COMPILER_STRIP_GATE(0x80D2E824, &lit_4126);

/* 80D2D4AC-80D2D588 000ECC 00DC+00 1/1 0/0 0/0 .text            actionWaitInit__12daWtPillar_cFv */
void daWtPillar_c::actionWaitInit() {
    // NONMATCHING
}

/* 80D2D588-80D2D5C0 000FA8 0038+00 1/0 0/0 0/0 .text            actionWait__12daWtPillar_cFv */
void daWtPillar_c::actionWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D2E828-80D2E82C 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4151 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4151 = 50.0f;
COMPILER_STRIP_GATE(0x80D2E828, &lit_4151);
#pragma pop

/* 80D2E82C-80D2E830 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4152 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4152 = 300.0f;
COMPILER_STRIP_GATE(0x80D2E82C, &lit_4152);
#pragma pop

/* 80D2D5C0-80D2D6C4 000FE0 0104+00 3/3 0/0 0/0 .text            actionUpFirstInit__12daWtPillar_cFv
 */
void daWtPillar_c::actionUpFirstInit() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D2E830-80D2E834 0000C0 0004+00 0/4 0/0 0/0 .rodata          @4161 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4161 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80D2E830, &lit_4161);
#pragma pop

/* 80D2D6C4-80D2D73C 0010E4 0078+00 1/0 0/0 0/0 .text            actionUpFirst__12daWtPillar_cFv */
void daWtPillar_c::actionUpFirst() {
    // NONMATCHING
}

/* 80D2D73C-80D2D780 00115C 0044+00 1/1 0/0 0/0 .text actionUpFirstWaitInit__12daWtPillar_cFv */
void daWtPillar_c::actionUpFirstWaitInit() {
    // NONMATCHING
}

/* 80D2D780-80D2D7B8 0011A0 0038+00 1/0 0/0 0/0 .text            actionUpFirstWait__12daWtPillar_cFv
 */
void daWtPillar_c::actionUpFirstWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D2E834-80D2E838 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4182 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4182 = -250.0f;
COMPILER_STRIP_GATE(0x80D2E834, &lit_4182);
#pragma pop

/* 80D2D7B8-80D2D850 0011D8 0098+00 1/1 0/0 0/0 .text            actionUpInit__12daWtPillar_cFv */
void daWtPillar_c::actionUpInit() {
    // NONMATCHING
}

/* 80D2D850-80D2D95C 001270 010C+00 1/0 0/0 0/0 .text            actionUp__12daWtPillar_cFv */
void daWtPillar_c::actionUp() {
    // NONMATCHING
}

/* 80D2D95C-80D2D9A0 00137C 0044+00 1/1 0/0 0/0 .text            actionUpWaitInit__12daWtPillar_cFv
 */
void daWtPillar_c::actionUpWaitInit() {
    // NONMATCHING
}

/* 80D2D9A0-80D2DA58 0013C0 00B8+00 1/0 0/0 0/0 .text            actionUpWait__12daWtPillar_cFv */
void daWtPillar_c::actionUpWait() {
    // NONMATCHING
}

/* 80D2DA58-80D2DA78 001478 0020+00 1/1 0/0 0/0 .text            actionDownInit__12daWtPillar_cFv */
void daWtPillar_c::actionDownInit() {
    // NONMATCHING
}

/* 80D2DA78-80D2DB68 001498 00F0+00 1/0 0/0 0/0 .text            actionDown__12daWtPillar_cFv */
void daWtPillar_c::actionDown() {
    // NONMATCHING
}

/* 80D2DB68-80D2DB74 001588 000C+00 2/2 0/0 0/0 .text actionRockWaitInit__12daWtPillar_cFv */
void daWtPillar_c::actionRockWaitInit() {
    // NONMATCHING
}

/* 80D2DB74-80D2DC20 001594 00AC+00 1/0 0/0 0/0 .text            actionRockWait__12daWtPillar_cFv */
void daWtPillar_c::actionRockWait() {
    // NONMATCHING
}

/* 80D2DC20-80D2DC2C 001640 000C+00 1/1 0/0 0/0 .text            actionRockOnInit__12daWtPillar_cFv
 */
void daWtPillar_c::actionRockOnInit() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D2E838-80D2E83C 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4271 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4271 = 250.0f;
COMPILER_STRIP_GATE(0x80D2E838, &lit_4271);
#pragma pop

/* 80D2E83C-80D2E840 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4272 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4272 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80D2E83C, &lit_4272);
#pragma pop

/* 80D2E840-80D2E844 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4273 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4273 = 10.0f;
COMPILER_STRIP_GATE(0x80D2E840, &lit_4273);
#pragma pop

/* 80D2DC2C-80D2DD0C 00164C 00E0+00 1/0 0/0 0/0 .text            actionRockOn__12daWtPillar_cFv */
void daWtPillar_c::actionRockOn() {
    // NONMATCHING
}

/* 80D2DD0C-80D2DD18 00172C 000C+00 1/1 0/0 0/0 .text            actionEndInit__12daWtPillar_cFv */
void daWtPillar_c::actionEndInit() {
    // NONMATCHING
}

/* 80D2DD18-80D2DDB0 001738 0098+00 1/0 0/0 0/0 .text            actionEnd__12daWtPillar_cFv */
void daWtPillar_c::actionEnd() {
    // NONMATCHING
}

/* 80D2DDB0-80D2DDB8 0017D0 0008+00 0/0 0/0 1/1 .text            getPillarHeight__12daWtPillar_cFv
 */
void daWtPillar_c::getPillarHeight() {
    // NONMATCHING
}

/* 80D2DDB8-80D2DE84 0017D8 00CC+00 1/1 0/0 0/0 .text            draw__12daWtPillar_cFv */
void daWtPillar_c::draw() {
    // NONMATCHING
}

/* 80D2DE84-80D2DEB4 0018A4 0030+00 1/1 0/0 0/0 .text            _delete__12daWtPillar_cFv */
void daWtPillar_c::_delete() {
    // NONMATCHING
}

/* 80D2DEB4-80D2DED4 0018D4 0020+00 1/0 0/0 0/0 .text            daWtPillar_Draw__FP12daWtPillar_c
 */
static void daWtPillar_Draw(daWtPillar_c* param_0) {
    // NONMATCHING
}

/* 80D2DED4-80D2DEF4 0018F4 0020+00 1/0 0/0 0/0 .text daWtPillar_Execute__FP12daWtPillar_c */
static void daWtPillar_Execute(daWtPillar_c* param_0) {
    // NONMATCHING
}

/* 80D2DEF4-80D2DF14 001914 0020+00 1/0 0/0 0/0 .text            daWtPillar_Delete__FP12daWtPillar_c
 */
static void daWtPillar_Delete(daWtPillar_c* param_0) {
    // NONMATCHING
}

/* 80D2DF14-80D2DF34 001934 0020+00 1/0 0/0 0/0 .text            daWtPillar_Create__FP10fopAc_ac_c
 */
static void daWtPillar_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80D2DF34-80D2DF90 001954 005C+00 2/1 0/0 0/0 .text            __dt__16daWtPillar_HIO_cFv */
daWtPillar_HIO_c::~daWtPillar_HIO_c() {
    // NONMATCHING
}

/* 80D2DF90-80D2E034 0019B0 00A4+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_waterPillar_cpp */
void __sinit_d_a_obj_waterPillar_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80D2DF90, __sinit_d_a_obj_waterPillar_cpp);
#pragma pop

/* 80D2E034-80D2E03C 001A54 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80D2E034() {
    // NONMATCHING
}

/* 80D2E03C-80D2E044 001A5C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80D2E03C() {
    // NONMATCHING
}

/* 80D2E044-80D2E04C 001A64 0008+00 1/0 0/0 0/0 .text            @1392@eventStart__12daWtPillar_cFv
 */
static void func_80D2E044() {
    // NONMATCHING
}

/* 80D2E04C-80D2E054 001A6C 0008+00 1/0 0/0 0/0 .text            @1392@__dt__12daWtPillar_cFv */
static void func_80D2E04C() {
    // NONMATCHING
}

/* 80D2E054-80D2E21C 001A74 01C8+00 1/1 0/0 0/0 .text            __ct__12daWtPillar_cFv */
daWtPillar_c::daWtPillar_c() {
    // NONMATCHING
}

/* 80D2E21C-80D2E264 001C3C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80D2E264-80D2E2AC 001C84 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80D2E2AC-80D2E308 001CCC 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80D2E308-80D2E378 001D28 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80D2E378-80D2E3E8 001D98 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80D2E3E8-80D2E430 001E08 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80D2E430-80D2E6B4 001E50 0284+00 2/1 0/0 0/0 .text            __dt__12daWtPillar_cFv */
daWtPillar_c::~daWtPillar_c() {
    // NONMATCHING
}

/* 80D2E6B4-80D2E6FC 0020D4 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80D2E6FC-80D2E744 00211C 0048+00 1/0 0/0 0/0 .text            __dt__17dEvLib_callback_cFv */
// dEvLib_callback_c::~dEvLib_callback_c() {
extern "C" void __dt__17dEvLib_callback_cFv() {
    // NONMATCHING
}

/* 80D2E744-80D2E74C 002164 0008+00 2/0 0/0 0/0 .text            eventRun__17dEvLib_callback_cFv */
// bool dEvLib_callback_c::eventRun() {
extern "C" bool eventRun__17dEvLib_callback_cFv() {
    return true;
}

/* 80D2E74C-80D2E754 00216C 0008+00 2/0 0/0 0/0 .text            eventEnd__17dEvLib_callback_cFv */
// bool dEvLib_callback_c::eventEnd() {
extern "C" bool eventEnd__17dEvLib_callback_cFv() {
    return true;
}

/* 80D2E754-80D2E75C 002174 0008+00 1/0 0/0 0/0 .text            eventStart__17dEvLib_callback_cFv
 */
// bool dEvLib_callback_c::eventStart() {
extern "C" bool eventStart__17dEvLib_callback_cFv() {
    return true;
}

/* 80D2E844-80D2E844 0000D4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */