/**
 * @file d_a_obj_pumpkin.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_pumpkin.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"




//
// Forward References:
//

extern "C" void __dt__15daObj_Pumpkin_cFv();
extern "C" void create__15daObj_Pumpkin_cFv();
extern "C" void __dt__8cM3dGLinFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void CreateHeap__15daObj_Pumpkin_cFv();
extern "C" void Delete__15daObj_Pumpkin_cFv();
extern "C" void Execute__15daObj_Pumpkin_cFv();
extern "C" void Draw__15daObj_Pumpkin_cFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void createHeapCallBack__15daObj_Pumpkin_cFP10fopAc_ac_c();
extern "C" void isDelete__15daObj_Pumpkin_cFv();
extern "C" void setEnvTevColor__15daObj_Pumpkin_cFv();
extern "C" void setRoomNo__15daObj_Pumpkin_cFv();
extern "C" void reset__15daObj_Pumpkin_cFv();
extern "C" void setMtx__15daObj_Pumpkin_cFv();
extern "C" void calcRollAngle__15daObj_Pumpkin_cFsi();
extern "C" void getWallAngle__15daObj_Pumpkin_cFsPs();
extern "C" void setSmokePrtcl__15daObj_Pumpkin_cFv();
extern "C" void setWaterPrtcl__15daObj_Pumpkin_cFv();
extern "C" void setHamonPrtcl__15daObj_Pumpkin_cFv();
extern "C" void crash__15daObj_Pumpkin_cFv();
extern "C" static void daObj_Pumpkin_Create__FPv();
extern "C" static void daObj_Pumpkin_Delete__FPv();
extern "C" static void daObj_Pumpkin_Execute__FPv();
extern "C" static void daObj_Pumpkin_Draw__FPv();
extern "C" static bool daObj_Pumpkin_IsDelete__FPv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void func_80CB8274(void* _this, int*);
extern "C" void __sinit_d_a_obj_pumpkin_cpp();
extern "C" void __dt__21daObj_Pumpkin_Param_cFv();
extern "C" static void func_80CB834C();
extern "C" static void func_80CB8354();
extern "C" u8 const m__21daObj_Pumpkin_Param_c[52];
extern "C" extern char const* const d_a_obj_pumpkin__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_SearchByID__FUiPP10fopAc_ac_c();
extern "C" void fopAcM_SearchByName__FsPP10fopAc_ac_c();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_calcSpeed__FP10fopAc_ac_c();
extern "C" void fopAcM_posMove__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_createItemFromTable__FPC4cXyziiiPC5csXyziPC4cXyzPfPfb();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void fopAcM_effHamonSet__FPUlPC4cXyzff();
extern "C" void fopAcM_carryOffRevise__FP10fopAc_ac_c();
extern "C" void fopAcM_getWaterY__FPC4cXyzPf();
extern "C" void fopAcM_getWaterStream__FPC4cXyzRC13cBgS_PolyInfoP4cXyzPii();
extern "C" void fpcEx_IsExist__FUi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void forceOnEventMove__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void setSimple__21dDlst_shadowControl_cFP4cXyzffP4cXyzsfP9_GXTexObj();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void GetPolyColor__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetRoomId__4dBgSFRC13cBgS_PolyInfo();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWallR__12dBgS_AcchCirFf();
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
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitGObj__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void GetCoHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void chkPointInArea__8daNpcT_cF4cXyz4cXyzfffs();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void daNpcT_onTmpBit__FUl();
extern "C" void daNpcF_getGroundAngle__FP13cBgS_PolyInfos();
extern "C" void initOffset__20daPy_boomerangMove_cFPC4cXyz();
extern "C" void posMove__20daPy_boomerangMove_cFP4cXyzPsP10fopAc_ac_cs();
extern "C" void bgCheckAfterOffset__20daPy_boomerangMove_cFPC4cXyz();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void ClrCcMove__9cCcD_SttsFv();
extern "C" void GetAc__8cCcD_ObjFv();
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
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_29();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" u8 const m__19daNpc_Jagar_Param_c[160];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80CB8460-80CB8460 0000F0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CB8460 = "";
SECTION_DEAD static char const* const stringBase_80CB8461 = "pumpkin";
#pragma pop

/* 80CB848C-80CB8494 000020 0008+00 2/3 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[8] = {
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x01,
};

/* 80CB8494-80CB849C -00001 0008+00 2/4 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[2] = {
    (void*)&d_a_obj_pumpkin__stringBase0,
    (void*)(((char*)&d_a_obj_pumpkin__stringBase0) + 0x1),
};

/* 80CB849C-80CB84E0 000030 0044+00 1/2 0/0 0/0 .data            l_ccDCyl */
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

/* 80CB84E0-80CB84E8 000074 0008+00 1/1 0/0 0/0 .data            emttrId$5110 */
SECTION_DATA static u8 emttrId[8] = {
    0x01, 0xB8, 0x01, 0xB9, 0x01, 0xBA, 0x01, 0xBB,
};

/* 80CB84E8-80CB8508 -00001 0020+00 1/0 0/0 0/0 .data            daObj_Pumpkin_MethodTable */
static actor_method_class daObj_Pumpkin_MethodTable = {
    (process_method_func)daObj_Pumpkin_Create__FPv,
    (process_method_func)daObj_Pumpkin_Delete__FPv,
    (process_method_func)daObj_Pumpkin_Execute__FPv,
    (process_method_func)daObj_Pumpkin_IsDelete__FPv,
    (process_method_func)daObj_Pumpkin_Draw__FPv,
};

/* 80CB8508-80CB8538 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_PUMPKIN */
extern actor_process_profile_definition g_profile_OBJ_PUMPKIN = {
  fpcLy_CURRENT_e,            // mLayerID
  8,                          // mListID
  fpcPi_CURRENT_e,            // mListPrio
  PROC_OBJ_PUMPKIN,           // mProcName
  &g_fpcLf_Method.base,      // sub_method
  sizeof(daObj_Pumpkin_c),    // mSize
  0,                          // mSizeOther
  0,                          // mParameters
  &g_fopAc_Method.base,       // sub_method
  716,                        // mPriority
  &daObj_Pumpkin_MethodTable, // sub_method
  0x00044100,                 // mStatus
  fopAc_ACTOR_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,     // cullType
};

/* 80CB8538-80CB8544 0000CC 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 80CB8544-80CB8568 0000D8 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80CB8354,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80CB834C,
};

/* 80CB8568-80CB8574 0000FC 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80CB8574-80CB8580 000108 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80CB8580-80CB858C 000114 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80CB858C-80CB8598 000120 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80CB8598-80CB85A4 00012C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80CB85A4-80CB85B0 000138 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGLin */
SECTION_DATA extern void* __vt__8cM3dGLin[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGLinFv,
};

/* 80CB85B0-80CB85BC 000144 000C+00 2/2 0/0 0/0 .data            __vt__15daObj_Pumpkin_c */
SECTION_DATA extern void* __vt__15daObj_Pumpkin_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daObj_Pumpkin_cFv,
};

/* 80CB578C-80CB5A04 0000EC 0278+00 1/0 0/0 0/0 .text            __dt__15daObj_Pumpkin_cFv */
daObj_Pumpkin_c::~daObj_Pumpkin_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CB8370-80CB83A4 000000 0034+00 5/5 0/0 0/0 .rodata          m__21daObj_Pumpkin_Param_c */
SECTION_RODATA u8 const daObj_Pumpkin_Param_c::m[52] = {
    0x00, 0x00, 0x00, 0x00, 0xC0, 0xA0, 0x00, 0x00, 0x3F, 0xB3, 0x33, 0x33, 0x42,
    0xC8, 0x00, 0x00, 0x42, 0x92, 0x00, 0x00, 0x41, 0xC0, 0x00, 0x00, 0x41, 0x40,
    0x00, 0x00, 0x41, 0xC0, 0x00, 0x00, 0x42, 0x14, 0x00, 0x00, 0x42, 0x34, 0x00,
    0x00, 0x41, 0x90, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x14, 0x00, 0x14,
};
COMPILER_STRIP_GATE(0x80CB8370, &daObj_Pumpkin_Param_c::m);

/* 80CB83A4-80CB83D4 000034 0030+00 1/1 0/0 0/0 .rodata          l_ccDObjData */
SECTION_RODATA static u8 const l_ccDObjData[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x79, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CB83A4, &l_ccDObjData);

/* 80CB83D4-80CB83D8 000064 0004+00 0/2 0/0 0/0 .rodata          @4022 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4022 = -50.0f;
COMPILER_STRIP_GATE(0x80CB83D4, &lit_4022);
#pragma pop

/* 80CB83D8-80CB83DC 000068 0004+00 0/2 0/0 0/0 .rodata          @4023 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4023 = 50.0f;
COMPILER_STRIP_GATE(0x80CB83D8, &lit_4023);
#pragma pop

/* 80CB5A04-80CB5D74 000364 0370+00 1/1 0/0 0/0 .text            create__15daObj_Pumpkin_cFv */
void daObj_Pumpkin_c::create() {
    // NONMATCHING
}

/* 80CB5D74-80CB5DBC 0006D4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGLinFv */
// cM3dGLin::~cM3dGLin() {
extern "C" void __dt__8cM3dGLinFv() {
    // NONMATCHING
}

/* 80CB5DBC-80CB5E04 00071C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80CB5E04-80CB5E4C 000764 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80CB5E4C-80CB5EBC 0007AC 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80CB5EBC-80CB5F18 00081C 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80CB5F18-80CB5F88 000878 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80CB5F88-80CB6018 0008E8 0090+00 1/1 0/0 0/0 .text            CreateHeap__15daObj_Pumpkin_cFv */
void daObj_Pumpkin_c::CreateHeap() {
    // NONMATCHING
}

/* 80CB6018-80CB604C 000978 0034+00 1/1 0/0 0/0 .text            Delete__15daObj_Pumpkin_cFv */
void daObj_Pumpkin_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CB83DC-80CB83E0 00006C 0004+00 1/4 0/0 0/0 .rodata          @4860 */
SECTION_RODATA static f32 const lit_4860 = 1.0f;
COMPILER_STRIP_GATE(0x80CB83DC, &lit_4860);

/* 80CB83E0-80CB83E4 000070 0004+00 0/1 0/0 0/0 .rodata          @4861 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4861 = 9.0f / 5.0f;
COMPILER_STRIP_GATE(0x80CB83E0, &lit_4861);
#pragma pop

/* 80CB83E4-80CB83E8 000074 0004+00 0/3 0/0 0/0 .rodata          @4862 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4862[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CB83E4, &lit_4862);
#pragma pop

/* 80CB83E8-80CB83EC 000078 0004+00 0/1 0/0 0/0 .rodata          @4863 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4863 = 0.5f;
COMPILER_STRIP_GATE(0x80CB83E8, &lit_4863);
#pragma pop

/* 80CB83EC-80CB83F0 00007C 0004+00 0/3 0/0 0/0 .rodata          @4864 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4864 = -1.0f;
COMPILER_STRIP_GATE(0x80CB83EC, &lit_4864);
#pragma pop

/* 80CB83F0-80CB83F4 000080 0004+00 0/1 0/0 0/0 .rodata          @4865 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4865 = 0x43360B61;
COMPILER_STRIP_GATE(0x80CB83F0, &lit_4865);
#pragma pop

/* 80CB83F4-80CB83F8 000084 0004+00 0/2 0/0 0/0 .rodata          @4866 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4866 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80CB83F4, &lit_4866);
#pragma pop

/* 80CB83F8-80CB83FC 000088 0004+00 0/1 0/0 0/0 .rodata          @4867 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4867 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80CB83F8, &lit_4867);
#pragma pop

/* 80CB83FC-80CB8400 00008C 0004+00 0/1 0/0 0/0 .rodata          @4868 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4868 = 3000.0f;
COMPILER_STRIP_GATE(0x80CB83FC, &lit_4868);
#pragma pop

/* 80CB8400-80CB8404 000090 0004+00 0/1 0/0 0/0 .rodata          @4869 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4869 = 31.0f / 20.0f;
COMPILER_STRIP_GATE(0x80CB8400, &lit_4869);
#pragma pop

/* 80CB8404-80CB8408 000094 0004+00 0/1 0/0 0/0 .rodata          @4870 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4870 = 3.0f / 20.0f;
COMPILER_STRIP_GATE(0x80CB8404, &lit_4870);
#pragma pop

/* 80CB8408-80CB840C 000098 0004+00 0/1 0/0 0/0 .rodata          @4871 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4871 = 0.75f;
COMPILER_STRIP_GATE(0x80CB8408, &lit_4871);
#pragma pop

/* 80CB840C-80CB8410 00009C 0004+00 0/1 0/0 0/0 .rodata          @4872 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4872 = 2000.0f;
COMPILER_STRIP_GATE(0x80CB840C, &lit_4872);
#pragma pop

/* 80CB8410-80CB8414 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4873 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4873 = 2.0f;
COMPILER_STRIP_GATE(0x80CB8410, &lit_4873);
#pragma pop

/* 80CB8414-80CB8418 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4874 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4874 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x80CB8414, &lit_4874);
#pragma pop

/* 80CB8418-80CB841C 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4875 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4875 = 11.0f;
COMPILER_STRIP_GATE(0x80CB8418, &lit_4875);
#pragma pop

/* 80CB841C-80CB8420 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4876 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4876 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80CB841C, &lit_4876);
#pragma pop

/* 80CB8420-80CB8424 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4877 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4877 = -500.0f;
COMPILER_STRIP_GATE(0x80CB8420, &lit_4877);
#pragma pop

/* 80CB8424-80CB8428 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4878 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4878 = -250.0f;
COMPILER_STRIP_GATE(0x80CB8424, &lit_4878);
#pragma pop

/* 80CB8428-80CB842C 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4879 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4879 = 1200.0f;
COMPILER_STRIP_GATE(0x80CB8428, &lit_4879);
#pragma pop

/* 80CB842C-80CB8430 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4880 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4880 = 900.0f;
COMPILER_STRIP_GATE(0x80CB842C, &lit_4880);
#pragma pop

/* 80CB8430-80CB8434 0000C0 0004+00 1/2 0/0 0/0 .rodata          @4881 */
SECTION_RODATA static f32 const lit_4881 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80CB8430, &lit_4881);

/* 80CB8434-80CB8438 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4882 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4882 = 100.0f;
COMPILER_STRIP_GATE(0x80CB8434, &lit_4882);
#pragma pop

/* 80CB8438-80CB843C 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4883 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4883 = 0.25f;
COMPILER_STRIP_GATE(0x80CB8438, &lit_4883);
#pragma pop

/* 80CB843C-80CB8440 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4884 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4884 = 30.0f;
COMPILER_STRIP_GATE(0x80CB843C, &lit_4884);
#pragma pop

/* 80CB8440-80CB8444 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4885 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4885 = 33.0f / 100.0f;
COMPILER_STRIP_GATE(0x80CB8440, &lit_4885);
#pragma pop

/* 80CB8444-80CB8448 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4886 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4886 = 6.0f;
COMPILER_STRIP_GATE(0x80CB8444, &lit_4886);
#pragma pop

/* 80CB8448-80CB8450 0000D8 0008+00 1/2 0/0 0/0 .rodata          @4888 */
SECTION_RODATA static u8 const lit_4888[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CB8448, &lit_4888);

/* 80CB604C-80CB7638 0009AC 15EC+00 1/1 0/0 0/0 .text            Execute__15daObj_Pumpkin_cFv */
void daObj_Pumpkin_c::Execute() {
    // NONMATCHING
}

/* 80CB7638-80CB77DC 001F98 01A4+00 1/1 0/0 0/0 .text            Draw__15daObj_Pumpkin_cFv */
void daObj_Pumpkin_c::Draw() {
    // NONMATCHING
}

/* 80CB77DC-80CB7824 00213C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* 80CB7824-80CB7844 002184 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__15daObj_Pumpkin_cFP10fopAc_ac_c          */
void daObj_Pumpkin_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80CB7844-80CB78C8 0021A4 0084+00 1/1 0/0 0/0 .text            isDelete__15daObj_Pumpkin_cFv */
void daObj_Pumpkin_c::isDelete() {
    // NONMATCHING
}

/* 80CB78C8-80CB7924 002228 005C+00 1/1 0/0 0/0 .text            setEnvTevColor__15daObj_Pumpkin_cFv
 */
void daObj_Pumpkin_c::setEnvTevColor() {
    // NONMATCHING
}

/* 80CB7924-80CB7968 002284 0044+00 1/1 0/0 0/0 .text            setRoomNo__15daObj_Pumpkin_cFv */
void daObj_Pumpkin_c::setRoomNo() {
    // NONMATCHING
}

/* 80CB7968-80CB79DC 0022C8 0074+00 2/2 0/0 0/0 .text            reset__15daObj_Pumpkin_cFv */
void daObj_Pumpkin_c::reset() {
    // NONMATCHING
}

/* 80CB79DC-80CB7AE4 00233C 0108+00 2/2 0/0 0/0 .text            setMtx__15daObj_Pumpkin_cFv */
void daObj_Pumpkin_c::setMtx() {
    // NONMATCHING
}

/* 80CB7AE4-80CB7B84 002444 00A0+00 1/1 0/0 0/0 .text            calcRollAngle__15daObj_Pumpkin_cFsi
 */
void daObj_Pumpkin_c::calcRollAngle(s16 param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CB8450-80CB8454 0000E0 0004+00 0/1 0/0 0/0 .rodata          @5089 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5089 = 5.0f;
COMPILER_STRIP_GATE(0x80CB8450, &lit_5089);
#pragma pop

/* 80CB8454-80CB8458 0000E4 0004+00 0/1 0/0 0/0 .rodata          @5090 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5090 = 200.0f;
COMPILER_STRIP_GATE(0x80CB8454, &lit_5090);
#pragma pop

/* 80CB7B84-80CB7D14 0024E4 0190+00 1/1 0/0 0/0 .text            getWallAngle__15daObj_Pumpkin_cFsPs
 */
void daObj_Pumpkin_c::getWallAngle(s16 param_0, s16* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CB8458-80CB845C 0000E8 0004+00 2/2 0/0 0/0 .rodata          @5106 */
SECTION_RODATA static f32 const lit_5106 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80CB8458, &lit_5106);

/* 80CB7D14-80CB7D98 002674 0084+00 1/1 0/0 0/0 .text            setSmokePrtcl__15daObj_Pumpkin_cFv
 */
void daObj_Pumpkin_c::setSmokePrtcl() {
    // NONMATCHING
}

/* 80CB7D98-80CB7E98 0026F8 0100+00 1/1 0/0 0/0 .text            setWaterPrtcl__15daObj_Pumpkin_cFv
 */
void daObj_Pumpkin_c::setWaterPrtcl() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CB845C-80CB8460 0000EC 0004+00 1/1 0/0 0/0 .rodata          @5155 */
SECTION_RODATA static f32 const lit_5155 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80CB845C, &lit_5155);

/* 80CB7E98-80CB7EF4 0027F8 005C+00 1/1 0/0 0/0 .text            setHamonPrtcl__15daObj_Pumpkin_cFv
 */
void daObj_Pumpkin_c::setHamonPrtcl() {
    // NONMATCHING
}

/* 80CB7EF4-80CB81A4 002854 02B0+00 1/1 0/0 0/0 .text            crash__15daObj_Pumpkin_cFv */
void daObj_Pumpkin_c::crash() {
    // NONMATCHING
}

/* 80CB81A4-80CB81C4 002B04 0020+00 1/0 0/0 0/0 .text            daObj_Pumpkin_Create__FPv */
static void daObj_Pumpkin_Create(void* param_0) {
    // NONMATCHING
}

/* 80CB81C4-80CB81E4 002B24 0020+00 1/0 0/0 0/0 .text            daObj_Pumpkin_Delete__FPv */
static void daObj_Pumpkin_Delete(void* param_0) {
    // NONMATCHING
}

/* 80CB81E4-80CB8204 002B44 0020+00 1/0 0/0 0/0 .text            daObj_Pumpkin_Execute__FPv */
static void daObj_Pumpkin_Execute(void* param_0) {
    // NONMATCHING
}

/* 80CB8204-80CB8224 002B64 0020+00 1/0 0/0 0/0 .text            daObj_Pumpkin_Draw__FPv */
static void daObj_Pumpkin_Draw(void* param_0) {
    // NONMATCHING
}

/* 80CB8224-80CB822C 002B84 0008+00 1/0 0/0 0/0 .text            daObj_Pumpkin_IsDelete__FPv */
static bool daObj_Pumpkin_IsDelete(void* param_0) {
    return true;
}

/* 80CB822C-80CB8274 002B8C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80CB8274-80CB8290 002BD4 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_80CB8274(void* _this, int* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CB85BC-80CB85C8 000150 000C+00 2/2 0/0 0/0 .data            __vt__21daObj_Pumpkin_Param_c */
SECTION_DATA extern void* __vt__21daObj_Pumpkin_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__21daObj_Pumpkin_Param_cFv,
};

/* 80CB85D0-80CB85DC 000008 000C+00 1/1 0/0 0/0 .bss             @3860 */
static u8 lit_3860[12];

/* 80CB85DC-80CB85E0 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80CB8290-80CB8304 002BF0 0074+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_pumpkin_cpp */
void __sinit_d_a_obj_pumpkin_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80CB8290, __sinit_d_a_obj_pumpkin_cpp);
#pragma pop

/* 80CB8304-80CB834C 002C64 0048+00 2/1 0/0 0/0 .text            __dt__21daObj_Pumpkin_Param_cFv */
daObj_Pumpkin_Param_c::~daObj_Pumpkin_Param_c() {
    // NONMATCHING
}

/* 80CB834C-80CB8354 002CAC 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80CB834C() {
    // NONMATCHING
}

/* 80CB8354-80CB835C 002CB4 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80CB8354() {
    // NONMATCHING
}

/* 80CB8460-80CB8460 0000F0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
