/**
 * @file d_a_obj_mie.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_mie.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"




//
// Forward References:
//

extern "C" void __dt__11daObj_Mie_cFv();
extern "C" void create__11daObj_Mie_cFv();
extern "C" void __dt__8cM3dGLinFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void CreateHeap__11daObj_Mie_cFv();
extern "C" void Delete__11daObj_Mie_cFv();
extern "C" void Execute__11daObj_Mie_cFv();
extern "C" void Draw__11daObj_Mie_cFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void createHeapCallBack__11daObj_Mie_cFP10fopAc_ac_c();
extern "C" void srchPouyaa__11daObj_Mie_cFPvPv();
extern "C" void setEnvTevColor__11daObj_Mie_cFv();
extern "C" void setRoomNo__11daObj_Mie_cFv();
extern "C" void setMtx__11daObj_Mie_cFv();
extern "C" void calcRollAngle__11daObj_Mie_cFsi();
extern "C" void getWallAngle__11daObj_Mie_cFsPs();
extern "C" void setSmokePrtcl__11daObj_Mie_cFv();
extern "C" void setWaterPrtcl__11daObj_Mie_cFv();
extern "C" void setHamonPrtcl__11daObj_Mie_cFv();
extern "C" static void daObj_Mie_Create__FPv();
extern "C" static void daObj_Mie_Delete__FPv();
extern "C" static void daObj_Mie_Execute__FPv();
extern "C" static void daObj_Mie_Draw__FPv();
extern "C" static bool daObj_Mie_IsDelete__FPv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void func_80C959B0(void* _this, int*);
extern "C" void __sinit_d_a_obj_mie_cpp();
extern "C" void __dt__17daObj_Mie_Param_cFv();
extern "C" static void func_80C95A88();
extern "C" static void func_80C95A90();
extern "C" u8 const m__17daObj_Mie_Param_c[44];
extern "C" extern char const* const d_a_obj_mie__stringBase0;

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
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_SearchByID__FUiPP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_calcSpeed__FP10fopAc_ac_c();
extern "C" void fopAcM_posMove__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void fopAcM_effHamonSet__FPUlPC4cXyzff();
extern "C" bool fopAcM_riverStream__FP4cXyzPsPff();
extern "C" void fopAcM_carryOffRevise__FP10fopAc_ac_c();
extern "C" void fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData();
extern "C" void fopAcM_getWaterY__FPC4cXyzPf();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void forceOnEventMove__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void dPath_GetPolyRoomPathVec__FRC13cBgS_PolyInfoP4cXyzPi();
extern "C" void setSimple__21dDlst_shadowControl_cFP4cXyzffP4cXyzsfP9_GXTexObj();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void GetPolyColor__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetRoomId__4dBgSFRC13cBgS_PolyInfo();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWallR__12dBgS_AcchCirFf();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
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
extern "C" void _savegpr_27();
extern "C" void _savegpr_29();
extern "C" void _restgpr_23();
extern "C" void _restgpr_25();
extern "C" void _restgpr_27();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" void getType__13daNpc_Pouya_cFv();
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80C95B80-80C95B80 0000D4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C95B80 = "";
SECTION_DEAD static char const* const stringBase_80C95B81 = "pouyaA";
#pragma pop

/* 80C95B88-80C95B90 000000 0008+00 3/3 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[8] = {
    0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x01,
};

/* 80C95B90-80C95B98 -00001 0008+00 3/4 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[2] = {
    (void*)&d_a_obj_mie__stringBase0,
    (void*)(((char*)&d_a_obj_mie__stringBase0) + 0x1),
};

/* 80C95B98-80C95BDC 000010 0044+00 1/1 0/0 0/0 .data            l_ccDCyl */
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

/* 80C95BDC-80C95BE4 000054 0008+00 1/1 0/0 0/0 .data            emttrId$4602 */
SECTION_DATA static u8 emttrId[8] = {
    0x01, 0xB8, 0x01, 0xB9, 0x01, 0xBA, 0x01, 0xBB,
};

/* 80C95BE4-80C95C04 -00001 0020+00 1/0 0/0 0/0 .data            daObj_Mie_MethodTable */
static actor_method_class daObj_Mie_MethodTable = {
    (process_method_func)daObj_Mie_Create__FPv,
    (process_method_func)daObj_Mie_Delete__FPv,
    (process_method_func)daObj_Mie_Execute__FPv,
    (process_method_func)daObj_Mie_IsDelete__FPv,
    (process_method_func)daObj_Mie_Draw__FPv,
};

/* 80C95C04-80C95C34 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_MIE */
extern actor_process_profile_definition g_profile_OBJ_MIE = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_OBJ_MIE,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObj_Mie_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  86,                     // mPriority
  &daObj_Mie_MethodTable, // sub_method
  0x00044100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C95C34-80C95C40 0000AC 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 80C95C40-80C95C64 0000B8 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C95A90,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C95A88,
};

/* 80C95C64-80C95C70 0000DC 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80C95C70-80C95C7C 0000E8 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80C95C7C-80C95C88 0000F4 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80C95C88-80C95C94 000100 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C95C94-80C95CA0 00010C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80C95CA0-80C95CAC 000118 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGLin */
SECTION_DATA extern void* __vt__8cM3dGLin[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGLinFv,
};

/* 80C95CAC-80C95CB8 000124 000C+00 2/2 0/0 0/0 .data            __vt__11daObj_Mie_c */
SECTION_DATA extern void* __vt__11daObj_Mie_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daObj_Mie_cFv,
};

/* 80C93FCC-80C941C8 0000EC 01FC+00 1/0 0/0 0/0 .text            __dt__11daObj_Mie_cFv */
daObj_Mie_c::~daObj_Mie_c() {
    // NONMATCHING
}

/* 80C941C8-80C94398 0002E8 01D0+00 1/1 0/0 0/0 .text            create__11daObj_Mie_cFv */
void daObj_Mie_c::create() {
    // NONMATCHING
}

/* 80C94398-80C943E0 0004B8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGLinFv */
// cM3dGLin::~cM3dGLin() {
extern "C" void __dt__8cM3dGLinFv() {
    // NONMATCHING
}

/* 80C943E0-80C94428 000500 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80C94428-80C94470 000548 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80C94470-80C944E0 000590 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80C944E0-80C9453C 000600 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C9453C-80C94578 00065C 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80C94578-80C945E8 000698 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80C945E8-80C94674 000708 008C+00 1/1 0/0 0/0 .text            CreateHeap__11daObj_Mie_cFv */
void daObj_Mie_c::CreateHeap() {
    // NONMATCHING
}

/* 80C94674-80C946A8 000794 0034+00 1/1 0/0 0/0 .text            Delete__11daObj_Mie_cFv */
void daObj_Mie_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C95AAC-80C95AD8 000000 002C+00 3/3 0/0 0/0 .rodata          m__17daObj_Mie_Param_c */
SECTION_RODATA u8 const daObj_Mie_Param_c::m[44] = {
    0x00, 0x00, 0x00, 0x00, 0xC0, 0x80, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x42, 0xC8, 0x00,
    0x00, 0x43, 0x7F, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0x41, 0x60,
    0x00, 0x00, 0x42, 0x14, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00, 0x41, 0x90, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C95AAC, &daObj_Mie_Param_c::m);

/* 80C95AD8-80C95B08 00002C 0030+00 1/1 0/0 0/0 .rodata          l_ccDObjData */
SECTION_RODATA static u8 const l_ccDObjData[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x79, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C95AD8, &l_ccDObjData);

/* 80C95B08-80C95B0C 00005C 0004+00 0/2 0/0 0/0 .rodata          @4379 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4379[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C95B08, &lit_4379);
#pragma pop

/* 80C95B0C-80C95B10 000060 0004+00 0/1 0/0 0/0 .rodata          @4380 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4380 = 0x43360B61;
COMPILER_STRIP_GATE(0x80C95B0C, &lit_4380);
#pragma pop

/* 80C95B10-80C95B14 000064 0004+00 0/2 0/0 0/0 .rodata          @4381 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4381 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80C95B10, &lit_4381);
#pragma pop

/* 80C95B14-80C95B18 000068 0004+00 0/1 0/0 0/0 .rodata          @4382 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4382 = 3000.0f;
COMPILER_STRIP_GATE(0x80C95B14, &lit_4382);
#pragma pop

/* 80C95B18-80C95B1C 00006C 0004+00 0/1 0/0 0/0 .rodata          @4383 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4383 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C95B18, &lit_4383);
#pragma pop

/* 80C95B1C-80C95B20 000070 0004+00 0/1 0/0 0/0 .rodata          @4384 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4384 = 0.5f;
COMPILER_STRIP_GATE(0x80C95B1C, &lit_4384);
#pragma pop

/* 80C95B20-80C95B24 000074 0004+00 0/1 0/0 0/0 .rodata          @4385 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4385 = 2.0f;
COMPILER_STRIP_GATE(0x80C95B20, &lit_4385);
#pragma pop

/* 80C95B24-80C95B28 000078 0004+00 0/1 0/0 0/0 .rodata          @4386 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4386 = 5.5f;
COMPILER_STRIP_GATE(0x80C95B24, &lit_4386);
#pragma pop

/* 80C95B28-80C95B2C 00007C 0004+00 0/1 0/0 0/0 .rodata          @4387 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4387 = 0.75f;
COMPILER_STRIP_GATE(0x80C95B28, &lit_4387);
#pragma pop

/* 80C95B2C-80C95B30 000080 0004+00 0/1 0/0 0/0 .rodata          @4388 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4388 = 0.25f;
COMPILER_STRIP_GATE(0x80C95B2C, &lit_4388);
#pragma pop

/* 80C95B30-80C95B34 000084 0004+00 1/3 0/0 0/0 .rodata          @4389 */
SECTION_RODATA static f32 const lit_4389 = 1.0f;
COMPILER_STRIP_GATE(0x80C95B30, &lit_4389);

/* 80C95B34-80C95B38 000088 0004+00 0/1 0/0 0/0 .rodata          @4390 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4390 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C95B34, &lit_4390);
#pragma pop

/* 80C95B38-80C95B3C 00008C 0004+00 0/1 0/0 0/0 .rodata          @4391 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4391 = 2000.0f;
COMPILER_STRIP_GATE(0x80C95B38, &lit_4391);
#pragma pop

/* 80C95B3C-80C95B40 000090 0004+00 0/1 0/0 0/0 .rodata          @4392 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4392 = 1000.0f;
COMPILER_STRIP_GATE(0x80C95B3C, &lit_4392);
#pragma pop

/* 80C95B40-80C95B44 000094 0004+00 0/1 0/0 0/0 .rodata          @4393 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4393 = 1200.0f;
COMPILER_STRIP_GATE(0x80C95B40, &lit_4393);
#pragma pop

/* 80C95B44-80C95B48 000098 0004+00 0/1 0/0 0/0 .rodata          @4394 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4394 = 900.0f;
COMPILER_STRIP_GATE(0x80C95B44, &lit_4394);
#pragma pop

/* 80C95B48-80C95B4C 00009C 0004+00 1/2 0/0 0/0 .rodata          @4395 */
SECTION_RODATA static f32 const lit_4395 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80C95B48, &lit_4395);

/* 80C95B4C-80C95B50 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4396 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4396 = 100.0f;
COMPILER_STRIP_GATE(0x80C95B4C, &lit_4396);
#pragma pop

/* 80C95B50-80C95B54 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4397 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4397 = 9.0f / 20.0f;
COMPILER_STRIP_GATE(0x80C95B50, &lit_4397);
#pragma pop

/* 80C95B54-80C95B5C 0000A8 0004+04 0/1 0/0 0/0 .rodata          @4398 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4398[1 + 1 /* padding */] = {
    4.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80C95B54, &lit_4398);
#pragma pop

/* 80C95B5C-80C95B64 0000B0 0008+00 0/1 0/0 0/0 .rodata          @4400 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4400[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C95B5C, &lit_4400);
#pragma pop

/* 80C946A8-80C95140 0007C8 0A98+00 1/1 0/0 0/0 .text            Execute__11daObj_Mie_cFv */
void daObj_Mie_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C95B64-80C95B68 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4435 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4435 = 20.0f;
COMPILER_STRIP_GATE(0x80C95B64, &lit_4435);
#pragma pop

/* 80C95140-80C95290 001260 0150+00 1/1 0/0 0/0 .text            Draw__11daObj_Mie_cFv */
void daObj_Mie_c::Draw() {
    // NONMATCHING
}

/* 80C95290-80C952D8 0013B0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* 80C952D8-80C952F8 0013F8 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daObj_Mie_cFP10fopAc_ac_c              */
void daObj_Mie_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C952F8-80C9536C 001418 0074+00 1/1 0/0 0/0 .text            srchPouyaa__11daObj_Mie_cFPvPv */
void daObj_Mie_c::srchPouyaa(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80C9536C-80C953C8 00148C 005C+00 1/1 0/0 0/0 .text            setEnvTevColor__11daObj_Mie_cFv */
void daObj_Mie_c::setEnvTevColor() {
    // NONMATCHING
}

/* 80C953C8-80C9540C 0014E8 0044+00 1/1 0/0 0/0 .text            setRoomNo__11daObj_Mie_cFv */
void daObj_Mie_c::setRoomNo() {
    // NONMATCHING
}

/* 80C9540C-80C954BC 00152C 00B0+00 1/1 0/0 0/0 .text            setMtx__11daObj_Mie_cFv */
void daObj_Mie_c::setMtx() {
    // NONMATCHING
}

/* 80C954BC-80C9555C 0015DC 00A0+00 1/1 0/0 0/0 .text            calcRollAngle__11daObj_Mie_cFsi */
void daObj_Mie_c::calcRollAngle(s16 param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C95B68-80C95B6C 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4575 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4575 = -50.0f;
COMPILER_STRIP_GATE(0x80C95B68, &lit_4575);
#pragma pop

/* 80C95B6C-80C95B70 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4576 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4576 = 5.0f;
COMPILER_STRIP_GATE(0x80C95B6C, &lit_4576);
#pragma pop

/* 80C95B70-80C95B74 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4577 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4577 = 200.0f;
COMPILER_STRIP_GATE(0x80C95B70, &lit_4577);
#pragma pop

/* 80C95B74-80C95B78 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4578 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4578 = -1.0f;
COMPILER_STRIP_GATE(0x80C95B74, &lit_4578);
#pragma pop

/* 80C9555C-80C956EC 00167C 0190+00 1/1 0/0 0/0 .text            getWallAngle__11daObj_Mie_cFsPs */
void daObj_Mie_c::getWallAngle(s16 param_0, s16* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C95B78-80C95B7C 0000CC 0004+00 2/2 0/0 0/0 .rodata          @4594 */
SECTION_RODATA static f32 const lit_4594 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C95B78, &lit_4594);

/* 80C956EC-80C95768 00180C 007C+00 1/1 0/0 0/0 .text            setSmokePrtcl__11daObj_Mie_cFv */
void daObj_Mie_c::setSmokePrtcl() {
    // NONMATCHING
}

/* 80C95D10-80C95D1C 000048 000C+00 1/1 0/0 0/0 .bss             @3822 */
static u8 lit_3822[12];

/* 80C95D1C-80C95D20 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80C95D20-80C95D30 000058 000C+04 0/1 0/0 0/0 .bss             @4599 */
#pragma push
#pragma force_active on
static u8 lit_4599[12 + 4 /* padding */];
#pragma pop

/* 80C95D30-80C95D3C 000068 000C+00 0/1 0/0 0/0 .bss             scl$4598 */
#pragma push
#pragma force_active on
static u8 scl[12];
#pragma pop

/* 80C95768-80C95890 001888 0128+00 1/1 0/0 0/0 .text            setWaterPrtcl__11daObj_Mie_cFv */
void daObj_Mie_c::setWaterPrtcl() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C95B7C-80C95B80 0000D0 0004+00 1/1 0/0 0/0 .rodata          @4641 */
SECTION_RODATA static f32 const lit_4641 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C95B7C, &lit_4641);

/* 80C95890-80C958E0 0019B0 0050+00 1/1 0/0 0/0 .text            setHamonPrtcl__11daObj_Mie_cFv */
void daObj_Mie_c::setHamonPrtcl() {
    // NONMATCHING
}

/* 80C958E0-80C95900 001A00 0020+00 1/0 0/0 0/0 .text            daObj_Mie_Create__FPv */
static void daObj_Mie_Create(void* param_0) {
    // NONMATCHING
}

/* 80C95900-80C95920 001A20 0020+00 1/0 0/0 0/0 .text            daObj_Mie_Delete__FPv */
static void daObj_Mie_Delete(void* param_0) {
    // NONMATCHING
}

/* 80C95920-80C95940 001A40 0020+00 1/0 0/0 0/0 .text            daObj_Mie_Execute__FPv */
static void daObj_Mie_Execute(void* param_0) {
    // NONMATCHING
}

/* 80C95940-80C95960 001A60 0020+00 1/0 0/0 0/0 .text            daObj_Mie_Draw__FPv */
static void daObj_Mie_Draw(void* param_0) {
    // NONMATCHING
}

/* 80C95960-80C95968 001A80 0008+00 1/0 0/0 0/0 .text            daObj_Mie_IsDelete__FPv */
static bool daObj_Mie_IsDelete(void* param_0) {
    return true;
}

/* 80C95968-80C959B0 001A88 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C959B0-80C959CC 001AD0 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_80C959B0(void* _this, int* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C95CB8-80C95CC4 000130 000C+00 2/2 0/0 0/0 .data            __vt__17daObj_Mie_Param_c */
SECTION_DATA extern void* __vt__17daObj_Mie_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daObj_Mie_Param_cFv,
};

/* 80C959CC-80C95A40 001AEC 0074+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_mie_cpp */
void __sinit_d_a_obj_mie_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80C959CC, __sinit_d_a_obj_mie_cpp);
#pragma pop

/* 80C95A40-80C95A88 001B60 0048+00 2/1 0/0 0/0 .text            __dt__17daObj_Mie_Param_cFv */
daObj_Mie_Param_c::~daObj_Mie_Param_c() {
    // NONMATCHING
}

/* 80C95A88-80C95A90 001BA8 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80C95A88() {
    // NONMATCHING
}

/* 80C95A90-80C95A98 001BB0 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80C95A90() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C95D3C-80C95D40 000074 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80C95D3C[4];
#pragma pop

/* 80C95D40-80C95D44 000078 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80C95D40[4];
#pragma pop

/* 80C95D44-80C95D48 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80C95D44[4];
#pragma pop

/* 80C95D48-80C95D4C 000080 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80C95D48[4];
#pragma pop

/* 80C95D4C-80C95D50 000084 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80C95D4C[4];
#pragma pop

/* 80C95D50-80C95D54 000088 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80C95D50[4];
#pragma pop

/* 80C95D54-80C95D58 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80C95D54[4];
#pragma pop

/* 80C95D58-80C95D5C 000090 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80C95D58[4];
#pragma pop

/* 80C95D5C-80C95D60 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80C95D5C[4];
#pragma pop

/* 80C95D60-80C95D64 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80C95D60[4];
#pragma pop

/* 80C95D64-80C95D68 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80C95D64[4];
#pragma pop

/* 80C95D68-80C95D6C 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80C95D68[4];
#pragma pop

/* 80C95D6C-80C95D70 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80C95D6C[4];
#pragma pop

/* 80C95D70-80C95D74 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80C95D70[4];
#pragma pop

/* 80C95D74-80C95D78 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80C95D74[4];
#pragma pop

/* 80C95D78-80C95D7C 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80C95D78[4];
#pragma pop

/* 80C95D7C-80C95D80 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80C95D7C[4];
#pragma pop

/* 80C95D80-80C95D84 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80C95D80[4];
#pragma pop

/* 80C95D84-80C95D88 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80C95D84[4];
#pragma pop

/* 80C95D88-80C95D8C 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80C95D88[4];
#pragma pop

/* 80C95D8C-80C95D90 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80C95D8C[4];
#pragma pop

/* 80C95D90-80C95D94 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80C95D90[4];
#pragma pop

/* 80C95D94-80C95D98 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80C95D94[4];
#pragma pop

/* 80C95D98-80C95D9C 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80C95D98[4];
#pragma pop

/* 80C95D9C-80C95DA0 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80C95D9C[4];
#pragma pop

/* 80C95B80-80C95B80 0000D4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
