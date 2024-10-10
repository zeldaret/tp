/**
 * @file d_a_obj_yel_bag.cpp
 * 
*/

#include "d/actor/d_a_obj_yel_bag.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__12daObj_YBag_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12daObj_YBag_cFv();
extern "C" void create__12daObj_YBag_cFv();
extern "C" void CreateHeap__12daObj_YBag_cFv();
extern "C" void Delete__12daObj_YBag_cFv();
extern "C" void Execute__12daObj_YBag_cFv();
extern "C" void Draw__12daObj_YBag_cFv();
extern "C" void createHeapCallBack__12daObj_YBag_cFP10fopAc_ac_c();
extern "C" bool getTypeFromParam__12daObj_YBag_cFv();
extern "C" bool isDelete__12daObj_YBag_cFv();
extern "C" void setEnvTevColor__12daObj_YBag_cFv();
extern "C" void setRoomNo__12daObj_YBag_cFv();
extern "C" void reset__12daObj_YBag_cFv();
extern "C" void setMtx__12daObj_YBag_cFv();
extern "C" void calcRollAngle__12daObj_YBag_cFsi();
extern "C" void getWallAngle__12daObj_YBag_cFsPs();
extern "C" void setSmokePrtcl__12daObj_YBag_cFv();
extern "C" void setWaterPrtcl__12daObj_YBag_cFv();
extern "C" void setHamonPrtcl__12daObj_YBag_cFv();
extern "C" static void daObj_YBag_Create__FPv();
extern "C" static void daObj_YBag_Delete__FPv();
extern "C" static void daObj_YBag_Execute__FPv();
extern "C" static void daObj_YBag_Draw__FPv();
extern "C" static bool daObj_YBag_IsDelete__FPv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void func_80D3DB90(void* _this, int*);
extern "C" void __sinit_d_a_obj_yel_bag_cpp();
extern "C" void __dt__18daObj_YBag_Param_cFv();
extern "C" static void func_80D3DC68();
extern "C" static void func_80D3DC70();
extern "C" u8 const mCcDObjInfo__12daObj_YBag_c[48];
extern "C" u8 const m__18daObj_YBag_Param_c[44];
extern "C" extern char const* const d_a_obj_yel_bag__stringBase0;
extern "C" u8 mCcDCyl__12daObj_YBag_c[68];

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
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
extern "C" bool fopAcM_riverStream__FP4cXyzPsPff();
extern "C" void fopAcM_carryOffRevise__FP10fopAc_ac_c();
extern "C" void fopAcM_getWaterY__FPC4cXyzPf();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void forceOnEventMove__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void dPath_GetPolyRoomPathVec__FRC13cBgS_PolyInfoP4cXyzPi();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GetPolyColor__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetRoomId__4dBgSFRC13cBgS_PolyInfo();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWallR__12dBgS_AcchCirFf();
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
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
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
extern "C" void _savegpr_23();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_29();
extern "C" void _restgpr_23();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_29();
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
/* 80D3DD6C-80D3DD6C 0000E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D3DD6C = "yel_bag";
#pragma pop

/* 80D3DD74-80D3DD80 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80D3DD80-80D3DD94 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80D3DD94-80D3DD9C 000020 0008+00 1/1 0/0 0/0 .data            l_bmdGetParamList */
SECTION_DATA static u8 l_bmdGetParamList[8] = {
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
};

/* 80D3DD9C-80D3DDA8 000028 000C+00 1/0 0/0 0/0 .data            l_loadRes_YBAG0 */
SECTION_DATA static u8 l_loadRes_YBAG0[12] = {
    0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 80D3DDA8-80D3DDB0 -00001 0008+00 1/2 0/0 0/0 .data            l_loadRes_list */
SECTION_DATA static void* l_loadRes_list[2] = {
    (void*)&l_loadRes_YBAG0,
    (void*)&l_loadRes_YBAG0,
};

/* 80D3DDB0-80D3DDB4 -00001 0004+00 2/4 0/0 0/0 .data            l_resNames */
SECTION_DATA static void* l_resNames = (void*)&d_a_obj_yel_bag__stringBase0;

/* 80D3DDB4-80D3DDF8 000040 0044+00 1/2 0/0 0/0 .data            mCcDCyl__12daObj_YBag_c */
SECTION_DATA u8 daObj_YBag_c::mCcDCyl[68] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80D3DDF8-80D3DE00 000084 0008+00 1/1 0/0 0/0 .data            emttrId$4511 */
SECTION_DATA static u8 emttrId[8] = {
    0x01, 0xB8, 0x01, 0xB9, 0x01, 0xBA, 0x01, 0xBB,
};

/* 80D3DE00-80D3DE20 -00001 0020+00 1/0 0/0 0/0 .data            daObj_YBag_MethodTable */
static actor_method_class daObj_YBag_MethodTable = {
    (process_method_func)daObj_YBag_Create__FPv,
    (process_method_func)daObj_YBag_Delete__FPv,
    (process_method_func)daObj_YBag_Execute__FPv,
    (process_method_func)daObj_YBag_IsDelete__FPv,
    (process_method_func)daObj_YBag_Draw__FPv,
};

/* 80D3DE20-80D3DE50 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_YBAG */
extern actor_process_profile_definition g_profile_OBJ_YBAG = {
  fpcLy_CURRENT_e,         // mLayerID
  8,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_OBJ_YBAG,           // mProcName
  &g_fpcLf_Method.mBase,   // sub_method
  sizeof(daObj_YBag_c),    // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  715,                     // mPriority
  &daObj_YBag_MethodTable, // sub_method
  0x00044100,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80D3DE50-80D3DE5C 0000DC 000C+00 2/2 0/0 0/0 .data            __vt__12daObj_YBag_c */
SECTION_DATA extern void* __vt__12daObj_YBag_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daObj_YBag_cFv,
};

/* 80D3DE5C-80D3DE68 0000E8 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80D3DE68-80D3DE74 0000F4 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80D3DE74-80D3DE80 000100 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80D3DE80-80D3DE8C 00010C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80D3DE8C-80D3DE98 000118 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80D3DE98-80D3DEBC 000124 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D3DC70,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D3DC68,
};

/* 80D3C0EC-80D3C200 0000EC 0114+00 1/1 0/0 0/0 .text            __ct__12daObj_YBag_cFv */
daObj_YBag_c::daObj_YBag_c() {
    // NONMATCHING
}

/* 80D3C200-80D3C248 000200 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80D3C248-80D3C290 000248 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80D3C290-80D3C300 000290 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80D3C300-80D3C35C 000300 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80D3C35C-80D3C398 00035C 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80D3C398-80D3C408 000398 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80D3C408-80D3C610 000408 0208+00 1/0 0/0 0/0 .text            __dt__12daObj_YBag_cFv */
daObj_YBag_c::~daObj_YBag_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D3DC8C-80D3DCBC 000000 0030+00 4/4 0/0 0/0 .rodata          mCcDObjInfo__12daObj_YBag_c */
SECTION_RODATA u8 const daObj_YBag_c::mCcDObjInfo[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x79, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D3DC8C, &daObj_YBag_c::mCcDObjInfo);

/* 80D3DCBC-80D3DCE8 000030 002C+00 0/3 0/0 0/0 .rodata          m__18daObj_YBag_Param_c */
#pragma push
#pragma force_active on
SECTION_RODATA u8 const daObj_YBag_Param_c::m[44] = {
    0x00, 0x00, 0x00, 0x00, 0xC0, 0x80, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00,
    0x00, 0x43, 0x7F, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00, 0x41, 0x20,
    0x00, 0x00, 0x42, 0x24, 0x00, 0x00, 0x42, 0x00, 0x00, 0x00, 0x40, 0x40, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D3DCBC, &daObj_YBag_Param_c::m);
#pragma pop

/* 80D3DCE8-80D3DCEC 00005C 0004+00 0/1 0/0 0/0 .rodata          @4021 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4021 = -300.0f;
COMPILER_STRIP_GATE(0x80D3DCE8, &lit_4021);
#pragma pop

/* 80D3DCEC-80D3DCF0 000060 0004+00 0/2 0/0 0/0 .rodata          @4022 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4022 = -50.0f;
COMPILER_STRIP_GATE(0x80D3DCEC, &lit_4022);
#pragma pop

/* 80D3DCF0-80D3DCF4 000064 0004+00 0/1 0/0 0/0 .rodata          @4023 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4023 = 300.0f;
COMPILER_STRIP_GATE(0x80D3DCF0, &lit_4023);
#pragma pop

/* 80D3DCF4-80D3DCF8 000068 0004+00 0/1 0/0 0/0 .rodata          @4024 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4024 = 450.0f;
COMPILER_STRIP_GATE(0x80D3DCF4, &lit_4024);
#pragma pop

/* 80D3C610-80D3C898 000610 0288+00 1/1 0/0 0/0 .text            create__12daObj_YBag_cFv */
void daObj_YBag_c::create() {
    // NONMATCHING
}

/* 80D3C898-80D3C93C 000898 00A4+00 1/1 0/0 0/0 .text            CreateHeap__12daObj_YBag_cFv */
void daObj_YBag_c::CreateHeap() {
    // NONMATCHING
}

/* 80D3C93C-80D3C970 00093C 0034+00 1/1 0/0 0/0 .text            Delete__12daObj_YBag_cFv */
void daObj_YBag_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D3DCF8-80D3DCFC 00006C 0004+00 1/3 0/0 0/0 .rodata          @4312 */
SECTION_RODATA static u8 const lit_4312[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D3DCF8, &lit_4312);

/* 80D3DCFC-80D3DD00 000070 0004+00 0/1 0/0 0/0 .rodata          @4313 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4313 = 0x43360B61;
COMPILER_STRIP_GATE(0x80D3DCFC, &lit_4313);
#pragma pop

/* 80D3DD00-80D3DD04 000074 0004+00 0/2 0/0 0/0 .rodata          @4314 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4314 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80D3DD00, &lit_4314);
#pragma pop

/* 80D3DD04-80D3DD08 000078 0004+00 0/1 0/0 0/0 .rodata          @4315 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4315 = 3000.0f;
COMPILER_STRIP_GATE(0x80D3DD04, &lit_4315);
#pragma pop

/* 80D3DD08-80D3DD0C 00007C 0004+00 0/1 0/0 0/0 .rodata          @4316 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4316 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80D3DD08, &lit_4316);
#pragma pop

/* 80D3DD0C-80D3DD10 000080 0004+00 0/1 0/0 0/0 .rodata          @4317 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4317 = 2.0f;
COMPILER_STRIP_GATE(0x80D3DD0C, &lit_4317);
#pragma pop

/* 80D3DD10-80D3DD14 000084 0004+00 0/1 0/0 0/0 .rodata          @4318 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4318 = 0.5f;
COMPILER_STRIP_GATE(0x80D3DD10, &lit_4318);
#pragma pop

/* 80D3DD14-80D3DD18 000088 0004+00 0/1 0/0 0/0 .rodata          @4319 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4319 = 5.5f;
COMPILER_STRIP_GATE(0x80D3DD14, &lit_4319);
#pragma pop

/* 80D3DD18-80D3DD1C 00008C 0004+00 0/1 0/0 0/0 .rodata          @4320 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4320 = 0.75f;
COMPILER_STRIP_GATE(0x80D3DD18, &lit_4320);
#pragma pop

/* 80D3DD1C-80D3DD20 000090 0004+00 0/1 0/0 0/0 .rodata          @4321 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4321 = 0.25f;
COMPILER_STRIP_GATE(0x80D3DD1C, &lit_4321);
#pragma pop

/* 80D3DD20-80D3DD24 000094 0004+00 1/3 0/0 0/0 .rodata          @4322 */
SECTION_RODATA static f32 const lit_4322 = 1.0f;
COMPILER_STRIP_GATE(0x80D3DD20, &lit_4322);

/* 80D3DD24-80D3DD28 000098 0004+00 0/1 0/0 0/0 .rodata          @4323 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4323 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80D3DD24, &lit_4323);
#pragma pop

/* 80D3DD28-80D3DD2C 00009C 0004+00 0/1 0/0 0/0 .rodata          @4324 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4324 = 2000.0f;
COMPILER_STRIP_GATE(0x80D3DD28, &lit_4324);
#pragma pop

/* 80D3DD2C-80D3DD30 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4325 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4325 = 1000.0f;
COMPILER_STRIP_GATE(0x80D3DD2C, &lit_4325);
#pragma pop

/* 80D3DD30-80D3DD34 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4326 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4326 = -30.0f;
COMPILER_STRIP_GATE(0x80D3DD30, &lit_4326);
#pragma pop

/* 80D3DD34-80D3DD38 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4327 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4327 = 1200.0f;
COMPILER_STRIP_GATE(0x80D3DD34, &lit_4327);
#pragma pop

/* 80D3DD38-80D3DD3C 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4328 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4328 = 900.0f;
COMPILER_STRIP_GATE(0x80D3DD38, &lit_4328);
#pragma pop

/* 80D3DD3C-80D3DD40 0000B0 0004+00 1/2 0/0 0/0 .rodata          @4329 */
SECTION_RODATA static f32 const lit_4329 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80D3DD3C, &lit_4329);

/* 80D3DD40-80D3DD44 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4330 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4330 = 100.0f;
COMPILER_STRIP_GATE(0x80D3DD40, &lit_4330);
#pragma pop

/* 80D3DD44-80D3DD48 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4331 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4331 = 9.0f / 20.0f;
COMPILER_STRIP_GATE(0x80D3DD44, &lit_4331);
#pragma pop

/* 80D3DD48-80D3DD4C 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4332 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4332 = 4.0f;
COMPILER_STRIP_GATE(0x80D3DD48, &lit_4332);
#pragma pop

/* 80D3DD4C-80D3DD54 0000C0 0008+00 1/2 0/0 0/0 .rodata          @4334 */
SECTION_RODATA static u8 const lit_4334[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D3DD4C, &lit_4334);

/* 80D3C970-80D3D32C 000970 09BC+00 2/2 0/0 0/0 .text            Execute__12daObj_YBag_cFv */
void daObj_YBag_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D3DD54-80D3DD58 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4351 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4351 = 20.0f;
COMPILER_STRIP_GATE(0x80D3DD54, &lit_4351);
#pragma pop

/* 80D3D32C-80D3D438 00132C 010C+00 1/1 0/0 0/0 .text            Draw__12daObj_YBag_cFv */
void daObj_YBag_c::Draw() {
    // NONMATCHING
}

/* 80D3D438-80D3D458 001438 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__12daObj_YBag_cFP10fopAc_ac_c             */
void daObj_YBag_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80D3D458-80D3D460 001458 0008+00 1/1 0/0 0/0 .text            getTypeFromParam__12daObj_YBag_cFv
 */
bool daObj_YBag_c::getTypeFromParam() {
    return false;
}

/* 80D3D460-80D3D468 001460 0008+00 1/1 0/0 0/0 .text            isDelete__12daObj_YBag_cFv */
bool daObj_YBag_c::isDelete() {
    return false;
}

/* 80D3D468-80D3D4C4 001468 005C+00 2/2 0/0 0/0 .text            setEnvTevColor__12daObj_YBag_cFv */
void daObj_YBag_c::setEnvTevColor() {
    // NONMATCHING
}

/* 80D3D4C4-80D3D508 0014C4 0044+00 2/2 0/0 0/0 .text            setRoomNo__12daObj_YBag_cFv */
void daObj_YBag_c::setRoomNo() {
    // NONMATCHING
}

/* 80D3D508-80D3D5C8 001508 00C0+00 1/1 0/0 0/0 .text            reset__12daObj_YBag_cFv */
void daObj_YBag_c::reset() {
    // NONMATCHING
}

/* 80D3D5C8-80D3D69C 0015C8 00D4+00 1/1 0/0 0/0 .text            setMtx__12daObj_YBag_cFv */
void daObj_YBag_c::setMtx() {
    // NONMATCHING
}

/* 80D3D69C-80D3D73C 00169C 00A0+00 1/1 0/0 0/0 .text            calcRollAngle__12daObj_YBag_cFsi */
void daObj_YBag_c::calcRollAngle(s16 param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D3DD58-80D3DD5C 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4485 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4485 = 5.0f;
COMPILER_STRIP_GATE(0x80D3DD58, &lit_4485);
#pragma pop

/* 80D3DD5C-80D3DD60 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4486 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4486 = 200.0f;
COMPILER_STRIP_GATE(0x80D3DD5C, &lit_4486);
#pragma pop

/* 80D3DD60-80D3DD64 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4487 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4487 = -1.0f;
COMPILER_STRIP_GATE(0x80D3DD60, &lit_4487);
#pragma pop

/* 80D3D73C-80D3D8CC 00173C 0190+00 1/1 0/0 0/0 .text            getWallAngle__12daObj_YBag_cFsPs */
void daObj_YBag_c::getWallAngle(s16 param_0, s16* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D3DD64-80D3DD68 0000D8 0004+00 2/2 0/0 0/0 .rodata          @4503 */
SECTION_RODATA static f32 const lit_4503 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80D3DD64, &lit_4503);

/* 80D3D8CC-80D3D948 0018CC 007C+00 1/1 0/0 0/0 .text            setSmokePrtcl__12daObj_YBag_cFv */
void daObj_YBag_c::setSmokePrtcl() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D3DED0-80D3DED4 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80D3DED4-80D3DED8 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80D3DED8-80D3DEDC 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80D3DEDC-80D3DEE0 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80D3DEE0-80D3DEE4 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80D3DEE4-80D3DEE8 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80D3DEE8-80D3DEEC 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 80D3DEEC-80D3DEF0 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80D3DEF0-80D3DEF4 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80D3DEF4-80D3DEF8 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80D3DEF8-80D3DEFC 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 80D3DEFC-80D3DF00 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80D3DF00-80D3DF04 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80D3DF04-80D3DF08 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80D3DF08-80D3DF0C 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 80D3DF0C-80D3DF10 000044 0001+03 0/0 0/0 0/0 .bss             @1009 */
#pragma push
#pragma force_active on
static u8 lit_1009[1 + 3 /* padding */];
#pragma pop

/* 80D3DF10-80D3DF1C 000048 000C+00 1/1 0/0 0/0 .bss             @3802 */
static u8 lit_3802[12];

/* 80D3DF1C-80D3DF20 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80D3DF20-80D3DF30 000058 000C+04 0/1 0/0 0/0 .bss             @4508 */
#pragma push
#pragma force_active on
static u8 lit_4508[12 + 4 /* padding */];
#pragma pop

/* 80D3DF30-80D3DF3C 000068 000C+00 0/1 0/0 0/0 .bss             scl$4507 */
#pragma push
#pragma force_active on
static u8 scl[12];
#pragma pop

/* 80D3D948-80D3DA70 001948 0128+00 1/1 0/0 0/0 .text            setWaterPrtcl__12daObj_YBag_cFv */
void daObj_YBag_c::setWaterPrtcl() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D3DD68-80D3DD6C 0000DC 0004+00 1/1 0/0 0/0 .rodata          @4550 */
SECTION_RODATA static f32 const lit_4550 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80D3DD68, &lit_4550);

/* 80D3DA70-80D3DAC0 001A70 0050+00 1/1 0/0 0/0 .text            setHamonPrtcl__12daObj_YBag_cFv */
void daObj_YBag_c::setHamonPrtcl() {
    // NONMATCHING
}

/* 80D3DAC0-80D3DAE0 001AC0 0020+00 1/0 0/0 0/0 .text            daObj_YBag_Create__FPv */
static void daObj_YBag_Create(void* param_0) {
    // NONMATCHING
}

/* 80D3DAE0-80D3DB00 001AE0 0020+00 1/0 0/0 0/0 .text            daObj_YBag_Delete__FPv */
static void daObj_YBag_Delete(void* param_0) {
    // NONMATCHING
}

/* 80D3DB00-80D3DB20 001B00 0020+00 1/0 0/0 0/0 .text            daObj_YBag_Execute__FPv */
static void daObj_YBag_Execute(void* param_0) {
    // NONMATCHING
}

/* 80D3DB20-80D3DB40 001B20 0020+00 1/0 0/0 0/0 .text            daObj_YBag_Draw__FPv */
static void daObj_YBag_Draw(void* param_0) {
    // NONMATCHING
}

/* 80D3DB40-80D3DB48 001B40 0008+00 1/0 0/0 0/0 .text            daObj_YBag_IsDelete__FPv */
static bool daObj_YBag_IsDelete(void* param_0) {
    return true;
}

/* 80D3DB48-80D3DB90 001B48 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80D3DB90-80D3DBAC 001B90 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_80D3DB90(void* _this, int* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D3DEBC-80D3DEC8 000148 000C+00 2/2 0/0 0/0 .data            __vt__18daObj_YBag_Param_c */
SECTION_DATA extern void* __vt__18daObj_YBag_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daObj_YBag_Param_cFv,
};

/* 80D3DBAC-80D3DC20 001BAC 0074+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_yel_bag_cpp */
void __sinit_d_a_obj_yel_bag_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80D3DBAC, __sinit_d_a_obj_yel_bag_cpp);
#pragma pop

/* 80D3DC20-80D3DC68 001C20 0048+00 2/1 0/0 0/0 .text            __dt__18daObj_YBag_Param_cFv */
daObj_YBag_Param_c::~daObj_YBag_Param_c() {
    // NONMATCHING
}

/* 80D3DC68-80D3DC70 001C68 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80D3DC68() {
    // NONMATCHING
}

/* 80D3DC70-80D3DC78 001C70 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80D3DC70() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D3DF3C-80D3DF40 000074 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80D3DF3C[4];
#pragma pop

/* 80D3DF40-80D3DF44 000078 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80D3DF40[4];
#pragma pop

/* 80D3DF44-80D3DF48 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80D3DF44[4];
#pragma pop

/* 80D3DF48-80D3DF4C 000080 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80D3DF48[4];
#pragma pop

/* 80D3DF4C-80D3DF50 000084 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80D3DF4C[4];
#pragma pop

/* 80D3DF50-80D3DF54 000088 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80D3DF50[4];
#pragma pop

/* 80D3DF54-80D3DF58 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80D3DF54[4];
#pragma pop

/* 80D3DF58-80D3DF5C 000090 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80D3DF58[4];
#pragma pop

/* 80D3DF5C-80D3DF60 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80D3DF5C[4];
#pragma pop

/* 80D3DF60-80D3DF64 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80D3DF60[4];
#pragma pop

/* 80D3DF64-80D3DF68 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80D3DF64[4];
#pragma pop

/* 80D3DF68-80D3DF6C 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80D3DF68[4];
#pragma pop

/* 80D3DF6C-80D3DF70 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80D3DF6C[4];
#pragma pop

/* 80D3DF70-80D3DF74 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80D3DF70[4];
#pragma pop

/* 80D3DF74-80D3DF78 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80D3DF74[4];
#pragma pop

/* 80D3DF78-80D3DF7C 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80D3DF78[4];
#pragma pop

/* 80D3DF7C-80D3DF80 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80D3DF7C[4];
#pragma pop

/* 80D3DF80-80D3DF84 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80D3DF80[4];
#pragma pop

/* 80D3DF84-80D3DF88 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80D3DF84[4];
#pragma pop

/* 80D3DF88-80D3DF8C 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80D3DF88[4];
#pragma pop

/* 80D3DF8C-80D3DF90 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80D3DF8C[4];
#pragma pop

/* 80D3DF90-80D3DF94 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80D3DF90[4];
#pragma pop

/* 80D3DF94-80D3DF98 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80D3DF94[4];
#pragma pop

/* 80D3DF98-80D3DF9C 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80D3DF98[4];
#pragma pop

/* 80D3DF9C-80D3DFA0 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80D3DF9C[4];
#pragma pop

/* 80D3DD6C-80D3DD6C 0000E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */