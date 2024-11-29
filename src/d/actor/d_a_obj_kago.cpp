/**
 * @file d_a_obj_kago.cpp
 * 
*/

#include "d/actor/d_a_obj_kago.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"




//
// Forward References:
//

extern "C" void __dt__12daObj_Kago_cFv();
extern "C" void __dt__8dCcD_CylFv();
extern "C" void create__12daObj_Kago_cFv();
extern "C" void __dt__8cM3dGLinFv();
extern "C" void __ct__8dCcD_CylFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void CreateHeap__12daObj_Kago_cFv();
extern "C" void Delete__12daObj_Kago_cFv();
extern "C" void Execute__12daObj_Kago_cFv();
extern "C" void Draw__12daObj_Kago_cFv();
extern "C" void createHeapCallBack__12daObj_Kago_cFP10fopAc_ac_c();
extern "C" void isDelete__12daObj_Kago_cFv();
extern "C" void setEnvTevColor__12daObj_Kago_cFv();
extern "C" void setRoomNo__12daObj_Kago_cFv();
extern "C" void reset__12daObj_Kago_cFv();
extern "C" void setMtx__12daObj_Kago_cFv();
extern "C" void getWallAngle__12daObj_Kago_cFsPs();
extern "C" void setGoalPosAndAngle__12daObj_Kago_cFv();
extern "C" void setSmokePrtcl__12daObj_Kago_cFv();
extern "C" void setWaterPrtcl__12daObj_Kago_cFv();
extern "C" void setHamonPrtcl__12daObj_Kago_cFv();
extern "C" static void daObj_Kago_Create__FPv();
extern "C" static void daObj_Kago_Delete__FPv();
extern "C" static void daObj_Kago_Execute__FPv();
extern "C" static void daObj_Kago_Draw__FPv();
extern "C" static bool daObj_Kago_IsDelete__FPv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void func_80C33B84(void* _this, int*);
extern "C" void __sinit_d_a_obj_kago_cpp();
extern "C" void __dt__18daObj_Kago_Param_cFv();
extern "C" static void func_80C33C5C();
extern "C" static void func_80C33C64();
extern "C" u8 const m__18daObj_Kago_Param_c[44];
extern "C" extern char const* const d_a_obj_kago__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_SearchByID__FUiPP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_calcSpeed__FP10fopAc_ac_c();
extern "C" void fopAcM_posMove__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void fopAcM_effHamonSet__FPUlPC4cXyzff();
extern "C" void fopAcM_carryOffRevise__FP10fopAc_ac_c();
extern "C" void fopAcM_getWaterY__FPC4cXyzPf();
extern "C" void fopAcM_getWaterStream__FPC4cXyzRC13cBgS_PolyInfoP4cXyzPii();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void forceOnEventMove__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GetPolyColor__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetRoomId__4dBgSFRC13cBgS_PolyInfo();
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
extern "C" void GetAc__22dCcD_GAtTgCoCommonBaseFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void daNpcT_onEvtBit__FUl();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void daNpcT_onTmpBit__FUl();
extern "C" void daNpcT_offTmpBit__FUl();
extern "C" void daNpcT_chkTmpBit__FUl();
extern "C" void daNpcF_getGroundAngle__FP13cBgS_PolyInfos();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void normalizeZP__4cXyzFv();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndFX__Ff();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void __dl__FPv();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_27();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_27();
extern "C" u8 const mCcDObjData__8daNpcT_c[48];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80C33D94-80C33D94 000114 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C33D94 = "";
SECTION_DEAD static char const* const stringBase_80C33D95 = "uri_kago";
#pragma pop

/* 80C33DA0-80C33DAC 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80C33DAC-80C33DC0 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80C33DC0-80C33DD0 000020 0010+00 2/3 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[16] = {
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x01,
};

/* 80C33DD0-80C33DD8 -00001 0008+00 2/4 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[2] = {
    (void*)&d_a_obj_kago__stringBase0,
    (void*)(((char*)&d_a_obj_kago__stringBase0) + 0x1),
};

/* 80C33DD8-80C33E1C 000038 0044+00 1/2 0/0 0/0 .data            l_ccDCyl */
static dCcD_SrcCyl l_ccDCyl = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        0.0f, // mRadius
        0.0f // mHeight
    } // mCyl
};

/* 80C33E1C-80C33E24 00007C 0008+00 1/1 0/0 0/0 .data            emttrId$4731 */
SECTION_DATA static u8 emttrId[8] = {
    0x01, 0xB8, 0x01, 0xB9, 0x01, 0xBA, 0x01, 0xBB,
};

/* 80C33E24-80C33E44 -00001 0020+00 1/0 0/0 0/0 .data            daObj_Kago_MethodTable */
static actor_method_class daObj_Kago_MethodTable = {
    (process_method_func)daObj_Kago_Create__FPv,
    (process_method_func)daObj_Kago_Delete__FPv,
    (process_method_func)daObj_Kago_Execute__FPv,
    (process_method_func)daObj_Kago_IsDelete__FPv,
    (process_method_func)daObj_Kago_Draw__FPv,
};

/* 80C33E44-80C33E74 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_KAGO */
extern actor_process_profile_definition g_profile_OBJ_KAGO = {
  fpcLy_CURRENT_e,         // mLayerID
  8,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_OBJ_KAGO,           // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daObj_Kago_c),    // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  717,                     // mPriority
  &daObj_Kago_MethodTable, // sub_method
  0x00044100,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80C33E74-80C33E80 0000D4 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C33E80-80C33E8C 0000E0 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80C33E8C-80C33EB0 0000EC 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C33C64,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C33C5C,
};

/* 80C33EB0-80C33EBC 000110 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80C33EBC-80C33EC8 00011C 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80C33EC8-80C33ED4 000128 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80C33ED4-80C33EE0 000134 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGLin */
SECTION_DATA extern void* __vt__8cM3dGLin[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGLinFv,
};

/* 80C33EE0-80C33EEC 000140 000C+00 2/2 0/0 0/0 .data            __vt__12daObj_Kago_c */
SECTION_DATA extern void* __vt__12daObj_Kago_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daObj_Kago_cFv,
};

/* 80C31AEC-80C31C90 0000EC 01A4+00 1/0 0/0 0/0 .text            __dt__12daObj_Kago_cFv */
daObj_Kago_c::~daObj_Kago_c() {
    // NONMATCHING
}

/* 80C31C90-80C31D5C 000290 00CC+00 2/2 0/0 0/0 .text            __dt__8dCcD_CylFv */
// dCcD_Cyl::~dCcD_Cyl() {
extern "C" void __dt__8dCcD_CylFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C33C80-80C33CAC 000000 002C+00 5/5 0/0 0/0 .rodata          m__18daObj_Kago_Param_c */
SECTION_RODATA u8 const daObj_Kago_Param_c::m[44] = {
    0x00, 0x00, 0x00, 0x00, 0xC0, 0xA0, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00,
    0x00, 0x42, 0x92, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0x41, 0xC0, 0x00, 0x00, 0x41, 0xF0,
    0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0x42, 0x5C, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C33C80, &daObj_Kago_Param_c::m);

/* 80C33CAC-80C33CDC 00002C 0030+00 0/0 0/0 0/0 .rodata          l_ccDObjData */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_ccDObjData[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x79, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C33CAC, &l_ccDObjData);
#pragma pop

/* 80C33CDC-80C33CF0 00005C 0014+00 0/1 0/0 0/0 .rodata          heapSize$3870 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const heapSize[20] = {
    0x00, 0x00, 0x08, 0x20, 0x00, 0x00, 0x08, 0x20, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x08, 0x20, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C33CDC, &heapSize);
#pragma pop

/* 80C33CF0-80C33CF4 000070 0004+00 0/1 0/0 0/0 .rodata          @3963 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3963 = -100.0f;
COMPILER_STRIP_GATE(0x80C33CF0, &lit_3963);
#pragma pop

/* 80C33CF4-80C33CF8 000074 0004+00 0/2 0/0 0/0 .rodata          @3964 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3964 = -50.0f;
COMPILER_STRIP_GATE(0x80C33CF4, &lit_3964);
#pragma pop

/* 80C33CF8-80C33CFC 000078 0004+00 0/2 0/0 0/0 .rodata          @3965 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3965 = 100.0f;
COMPILER_STRIP_GATE(0x80C33CF8, &lit_3965);
#pragma pop

/* 80C33CFC-80C33D00 00007C 0004+00 0/3 0/0 0/0 .rodata          @3966 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3966 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80C33CFC, &lit_3966);
#pragma pop

/* 80C31D5C-80C320FC 00035C 03A0+00 1/1 0/0 0/0 .text            create__12daObj_Kago_cFv */
void daObj_Kago_c::create() {
    // NONMATCHING
}

/* 80C320FC-80C32144 0006FC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGLinFv */
// cM3dGLin::~cM3dGLin() {
extern "C" void __dt__8cM3dGLinFv() {
    // NONMATCHING
}

/* 80C32144-80C321C8 000744 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_CylFv */
// dCcD_Cyl::dCcD_Cyl() {
extern "C" void __ct__8dCcD_CylFv() {
    // NONMATCHING
}

/* 80C321C8-80C32210 0007C8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80C32210-80C32258 000810 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80C32258-80C322C8 000858 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80C322C8-80C32324 0008C8 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C32324-80C32360 000924 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80C32360-80C323D0 000960 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80C323D0-80C324B0 0009D0 00E0+00 1/1 0/0 0/0 .text            CreateHeap__12daObj_Kago_cFv */
void daObj_Kago_c::CreateHeap() {
    // NONMATCHING
}

/* 80C324B0-80C324E4 000AB0 0034+00 1/1 0/0 0/0 .text            Delete__12daObj_Kago_cFv */
void daObj_Kago_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C33D00-80C33D04 000080 0004+00 0/1 0/0 0/0 .rodata          @4523 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4523 = 50.0f;
COMPILER_STRIP_GATE(0x80C33D00, &lit_4523);
#pragma pop

/* 80C33D04-80C33D08 000084 0004+00 0/2 0/0 0/0 .rodata          @4524 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4524[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C33D04, &lit_4524);
#pragma pop

/* 80C33D08-80C33D0C 000088 0004+00 0/1 0/0 0/0 .rodata          @4525 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4525 = 0x43360B61;
COMPILER_STRIP_GATE(0x80C33D08, &lit_4525);
#pragma pop

/* 80C33D0C-80C33D10 00008C 0004+00 0/1 0/0 0/0 .rodata          @4526 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4526 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C33D0C, &lit_4526);
#pragma pop

/* 80C33D10-80C33D14 000090 0004+00 0/1 0/0 0/0 .rodata          @4527 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4527 = 0.5f;
COMPILER_STRIP_GATE(0x80C33D10, &lit_4527);
#pragma pop

/* 80C33D14-80C33D18 000094 0004+00 0/1 0/0 0/0 .rodata          @4528 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4528 = 3000.0f;
COMPILER_STRIP_GATE(0x80C33D14, &lit_4528);
#pragma pop

/* 80C33D18-80C33D1C 000098 0004+00 0/1 0/0 0/0 .rodata          @4529 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4529 = 31.0f / 20.0f;
COMPILER_STRIP_GATE(0x80C33D18, &lit_4529);
#pragma pop

/* 80C33D1C-80C33D20 00009C 0004+00 0/1 0/0 0/0 .rodata          @4530 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4530 = 3.0f / 20.0f;
COMPILER_STRIP_GATE(0x80C33D1C, &lit_4530);
#pragma pop

/* 80C33D20-80C33D24 0000A0 0004+00 3/5 0/0 0/0 .rodata          @4531 */
SECTION_RODATA static f32 const lit_4531 = 1.0f;
COMPILER_STRIP_GATE(0x80C33D20, &lit_4531);

/* 80C33D24-80C33D28 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4532 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4532 = 0.75f;
COMPILER_STRIP_GATE(0x80C33D24, &lit_4532);
#pragma pop

/* 80C33D28-80C33D2C 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4533 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4533 = 2000.0f;
COMPILER_STRIP_GATE(0x80C33D28, &lit_4533);
#pragma pop

/* 80C33D2C-80C33D30 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4534 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4534 = 2.0f;
COMPILER_STRIP_GATE(0x80C33D2C, &lit_4534);
#pragma pop

/* 80C33D30-80C33D34 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4535 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4535 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C33D30, &lit_4535);
#pragma pop

/* 80C33D34-80C33D38 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4536 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4536 = 11.0f;
COMPILER_STRIP_GATE(0x80C33D34, &lit_4536);
#pragma pop

/* 80C33D38-80C33D3C 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4537 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4537 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C33D38, &lit_4537);
#pragma pop

/* 80C33D3C-80C33D40 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4538 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4538 = 1000.0f;
COMPILER_STRIP_GATE(0x80C33D3C, &lit_4538);
#pragma pop

/* 80C33D40-80C33D44 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4539 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4539 = -30.0f;
COMPILER_STRIP_GATE(0x80C33D40, &lit_4539);
#pragma pop

/* 80C33D44-80C33D48 0000C4 0004+00 1/2 0/0 0/0 .rodata          @4540 */
SECTION_RODATA static f32 const lit_4540 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C33D44, &lit_4540);

/* 80C33D48-80C33D4C 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4541 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4541 = -2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C33D48, &lit_4541);
#pragma pop

/* 80C33D4C-80C33D50 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4542 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4542 = 1200.0f;
COMPILER_STRIP_GATE(0x80C33D4C, &lit_4542);
#pragma pop

/* 80C33D50-80C33D54 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4543 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4543 = 900.0f;
COMPILER_STRIP_GATE(0x80C33D50, &lit_4543);
#pragma pop

/* 80C33D54-80C33D58 0000D4 0004+00 1/2 0/0 0/0 .rodata          @4544 */
SECTION_RODATA static f32 const lit_4544 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80C33D54, &lit_4544);

/* 80C33D58-80C33D5C 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4545 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4545 = 0.25f;
COMPILER_STRIP_GATE(0x80C33D58, &lit_4545);
#pragma pop

/* 80C33D5C-80C33D60 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4546 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4546 = 30.0f;
COMPILER_STRIP_GATE(0x80C33D5C, &lit_4546);
#pragma pop

/* 80C33D60-80C33D64 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4547 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4547 = 33.0f / 100.0f;
COMPILER_STRIP_GATE(0x80C33D60, &lit_4547);
#pragma pop

/* 80C33D64-80C33D68 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4548 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4548 = -14.0f;
COMPILER_STRIP_GATE(0x80C33D64, &lit_4548);
#pragma pop

/* 80C33D68-80C33D70 0000E8 0004+04 0/1 0/0 0/0 .rodata          @4549 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4549[1 + 1 /* padding */] = {
    24.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80C33D68, &lit_4549);
#pragma pop

/* 80C33D70-80C33D78 0000F0 0008+00 0/1 0/0 0/0 .rodata          @4551 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4551[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C33D70, &lit_4551);
#pragma pop

/* 80C324E4-80C332D0 000AE4 0DEC+00 2/2 0/0 0/0 .text            Execute__12daObj_Kago_cFv */
void daObj_Kago_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C33D78-80C33D7C 0000F8 0004+00 0/1 0/0 0/0 .rodata          @4576 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4576 = 20.0f;
COMPILER_STRIP_GATE(0x80C33D78, &lit_4576);
#pragma pop

/* 80C332D0-80C333F0 0018D0 0120+00 1/1 0/0 0/0 .text            Draw__12daObj_Kago_cFv */
void daObj_Kago_c::Draw() {
    // NONMATCHING
}

/* 80C333F0-80C33410 0019F0 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__12daObj_Kago_cFP10fopAc_ac_c             */
void daObj_Kago_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C33410-80C334B4 001A10 00A4+00 2/2 0/0 0/0 .text            isDelete__12daObj_Kago_cFv */
void daObj_Kago_c::isDelete() {
    // NONMATCHING
}

/* 80C334B4-80C33510 001AB4 005C+00 2/2 0/0 0/0 .text            setEnvTevColor__12daObj_Kago_cFv */
void daObj_Kago_c::setEnvTevColor() {
    // NONMATCHING
}

/* 80C33510-80C33554 001B10 0044+00 2/2 0/0 0/0 .text            setRoomNo__12daObj_Kago_cFv */
void daObj_Kago_c::setRoomNo() {
    // NONMATCHING
}

/* 80C33554-80C3359C 001B54 0048+00 1/1 0/0 0/0 .text            reset__12daObj_Kago_cFv */
void daObj_Kago_c::reset() {
    // NONMATCHING
}

/* 80C3359C-80C33620 001B9C 0084+00 1/1 0/0 0/0 .text            setMtx__12daObj_Kago_cFv */
void daObj_Kago_c::setMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C33D7C-80C33D80 0000FC 0004+00 0/1 0/0 0/0 .rodata          @4679 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4679 = 5.0f;
COMPILER_STRIP_GATE(0x80C33D7C, &lit_4679);
#pragma pop

/* 80C33D80-80C33D84 000100 0004+00 0/1 0/0 0/0 .rodata          @4680 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4680 = 200.0f;
COMPILER_STRIP_GATE(0x80C33D80, &lit_4680);
#pragma pop

/* 80C33D84-80C33D88 000104 0004+00 0/1 0/0 0/0 .rodata          @4681 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4681 = -1.0f;
COMPILER_STRIP_GATE(0x80C33D84, &lit_4681);
#pragma pop

/* 80C33620-80C337B0 001C20 0190+00 1/1 0/0 0/0 .text            getWallAngle__12daObj_Kago_cFsPs */
void daObj_Kago_c::getWallAngle(s16 param_0, s16* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C33D88-80C33D8C 000108 0004+00 0/1 0/0 0/0 .rodata          @4706 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4706 = 1593.0f;
COMPILER_STRIP_GATE(0x80C33D88, &lit_4706);
#pragma pop

/* 80C33D8C-80C33D90 00010C 0004+00 0/1 0/0 0/0 .rodata          @4707 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4707 = 659.0f;
COMPILER_STRIP_GATE(0x80C33D8C, &lit_4707);
#pragma pop

/* 80C33D90-80C33D94 000110 0004+00 0/1 0/0 0/0 .rodata          @4708 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4708 = -334.0f;
COMPILER_STRIP_GATE(0x80C33D90, &lit_4708);
#pragma pop

/* 80C33F00-80C33F04 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80C33F04-80C33F08 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80C33F08-80C33F0C 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80C33F0C-80C33F10 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80C33F10-80C33F14 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80C33F14-80C33F18 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80C33F18-80C33F1C 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 80C33F1C-80C33F20 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80C33F20-80C33F24 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80C33F24-80C33F28 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80C33F28-80C33F2C 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 80C33F2C-80C33F30 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80C33F30-80C33F34 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80C33F34-80C33F38 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80C33F38-80C33F3C 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 80C33F3C-80C33F40 000044 0001+03 0/0 0/0 0/0 .bss             @1009 */
#pragma push
#pragma force_active on
static u8 lit_1009[1 + 3 /* padding */];
#pragma pop

/* 80C33F40-80C33F4C 000048 000C+00 1/1 0/0 0/0 .bss             @3815 */
static u8 lit_3815[12];

/* 80C33F4C-80C33F50 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80C33F50-80C33F60 000058 000C+04 0/1 0/0 0/0 .bss             @4686 */
#pragma push
#pragma force_active on
static u8 lit_4686[12 + 4 /* padding */];
#pragma pop

/* 80C33F60-80C33F6C 000068 000C+00 0/1 0/0 0/0 .bss             pos$4685 */
#pragma push
#pragma force_active on
static u8 pos[12];
#pragma pop

/* 80C33F6C-80C33F70 000074 0002+02 0/1 0/0 0/0 .bss             angle$4689 */
#pragma push
#pragma force_active on
static u8 angle[2 + 2 /* padding */];
#pragma pop

/* 80C337B0-80C338D0 001DB0 0120+00 1/1 0/0 0/0 .text setGoalPosAndAngle__12daObj_Kago_cFv */
void daObj_Kago_c::setGoalPosAndAngle() {
    // NONMATCHING
}

/* 80C338D0-80C33958 001ED0 0088+00 1/1 0/0 0/0 .text            setSmokePrtcl__12daObj_Kago_cFv */
void daObj_Kago_c::setSmokePrtcl() {
    // NONMATCHING
}

/* 80C33958-80C33A58 001F58 0100+00 1/1 0/0 0/0 .text            setWaterPrtcl__12daObj_Kago_cFv */
void daObj_Kago_c::setWaterPrtcl() {
    // NONMATCHING
}

/* 80C33A58-80C33AB4 002058 005C+00 1/1 0/0 0/0 .text            setHamonPrtcl__12daObj_Kago_cFv */
void daObj_Kago_c::setHamonPrtcl() {
    // NONMATCHING
}

/* 80C33AB4-80C33AD4 0020B4 0020+00 1/0 0/0 0/0 .text            daObj_Kago_Create__FPv */
static void daObj_Kago_Create(void* param_0) {
    // NONMATCHING
}

/* 80C33AD4-80C33AF4 0020D4 0020+00 1/0 0/0 0/0 .text            daObj_Kago_Delete__FPv */
static void daObj_Kago_Delete(void* param_0) {
    // NONMATCHING
}

/* 80C33AF4-80C33B14 0020F4 0020+00 1/0 0/0 0/0 .text            daObj_Kago_Execute__FPv */
static void daObj_Kago_Execute(void* param_0) {
    // NONMATCHING
}

/* 80C33B14-80C33B34 002114 0020+00 1/0 0/0 0/0 .text            daObj_Kago_Draw__FPv */
static void daObj_Kago_Draw(void* param_0) {
    // NONMATCHING
}

/* 80C33B34-80C33B3C 002134 0008+00 1/0 0/0 0/0 .text            daObj_Kago_IsDelete__FPv */
static bool daObj_Kago_IsDelete(void* param_0) {
    return true;
}

/* 80C33B3C-80C33B84 00213C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C33B84-80C33BA0 002184 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_80C33B84(void* _this, int* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C33EEC-80C33EF8 00014C 000C+00 2/2 0/0 0/0 .data            __vt__18daObj_Kago_Param_c */
SECTION_DATA extern void* __vt__18daObj_Kago_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daObj_Kago_Param_cFv,
};

/* 80C33BA0-80C33C14 0021A0 0074+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_kago_cpp */
void __sinit_d_a_obj_kago_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80C33BA0, __sinit_d_a_obj_kago_cpp);
#pragma pop

/* 80C33C14-80C33C5C 002214 0048+00 2/1 0/0 0/0 .text            __dt__18daObj_Kago_Param_cFv */
daObj_Kago_Param_c::~daObj_Kago_Param_c() {
    // NONMATCHING
}

/* 80C33C5C-80C33C64 00225C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80C33C5C() {
    // NONMATCHING
}

/* 80C33C64-80C33C6C 002264 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80C33C64() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C33F70-80C33F74 000078 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80C33F70[4];
#pragma pop

/* 80C33F74-80C33F78 00007C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80C33F74[4];
#pragma pop

/* 80C33F78-80C33F7C 000080 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80C33F78[4];
#pragma pop

/* 80C33F7C-80C33F80 000084 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80C33F7C[4];
#pragma pop

/* 80C33F80-80C33F84 000088 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80C33F80[4];
#pragma pop

/* 80C33F84-80C33F88 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80C33F84[4];
#pragma pop

/* 80C33F88-80C33F8C 000090 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80C33F88[4];
#pragma pop

/* 80C33F8C-80C33F90 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80C33F8C[4];
#pragma pop

/* 80C33F90-80C33F94 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80C33F90[4];
#pragma pop

/* 80C33F94-80C33F98 00009C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80C33F94[4];
#pragma pop

/* 80C33F98-80C33F9C 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80C33F98[4];
#pragma pop

/* 80C33F9C-80C33FA0 0000A4 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80C33F9C[4];
#pragma pop

/* 80C33FA0-80C33FA4 0000A8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80C33FA0[4];
#pragma pop

/* 80C33FA4-80C33FA8 0000AC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80C33FA4[4];
#pragma pop

/* 80C33FA8-80C33FAC 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80C33FA8[4];
#pragma pop

/* 80C33FAC-80C33FB0 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80C33FAC[4];
#pragma pop

/* 80C33FB0-80C33FB4 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80C33FB0[4];
#pragma pop

/* 80C33FB4-80C33FB8 0000BC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80C33FB4[4];
#pragma pop

/* 80C33FB8-80C33FBC 0000C0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80C33FB8[4];
#pragma pop

/* 80C33FBC-80C33FC0 0000C4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80C33FBC[4];
#pragma pop

/* 80C33FC0-80C33FC4 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80C33FC0[4];
#pragma pop

/* 80C33FC4-80C33FC8 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80C33FC4[4];
#pragma pop

/* 80C33FC8-80C33FCC 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80C33FC8[4];
#pragma pop

/* 80C33FCC-80C33FD0 0000D4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80C33FCC[4];
#pragma pop

/* 80C33FD0-80C33FD4 0000D8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80C33FD0[4];
#pragma pop

/* 80C33D94-80C33D94 000114 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
