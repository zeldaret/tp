/**
 * @file d_a_obj_bky_rock.cpp
 * 
*/

#include "d/actor/d_a_obj_bky_rock.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" static void daBkyRock_c_createHeap__FP10fopAc_ac_c();
extern "C" void __ct__11daBkyRock_cFv();
extern "C" void __ct__Q211daBkyRock_c10_pieceDataFv();
extern "C" void __dt__8dCcD_CylFv();
extern "C" void __ct__8dCcD_CylFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__11daBkyRock_cFv();
extern "C" void create__11daBkyRock_cFv();
extern "C" void execute__11daBkyRock_cFv();
extern "C" void draw__11daBkyRock_cFv();
extern "C" void Delete__11daBkyRock_cFv();
extern "C" void setModelMtx__11daBkyRock_cFv();
extern "C" void createHeap__11daBkyRock_cFv();
extern "C" void init__11daBkyRock_cFv();
extern "C" void middleExe__11daBkyRock_cFv();
extern "C" void exeModeNoDamage__11daBkyRock_cFv();
extern "C" void exeModeDamage__11daBkyRock_cFv();
extern "C" void exeModePiece__11daBkyRock_cFv();
extern "C" void chkHitBombArrow__11daBkyRock_cFv();
extern "C" void initChangeModeBefore__11daBkyRock_cFv();
extern "C" void initChangeModeAfter__11daBkyRock_cFv();
extern "C" void pieceMove__11daBkyRock_cFv();
extern "C" void pieceMoveInit__11daBkyRock_cFv();
extern "C" void callBombEmt__11daBkyRock_cFiPCUs();
extern "C" static void daBkyRock_create__FP11daBkyRock_c();
extern "C" static void daBkyRock_Delete__FP11daBkyRock_c();
extern "C" static void daBkyRock_execute__FP11daBkyRock_c();
extern "C" static void daBkyRock_draw__FP11daBkyRock_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __sinit_d_a_obj_bky_rock_cpp();
extern "C" u8 const s_CcDCyl__11daBkyRock_c[68];
extern "C" extern char const* const d_a_obj_bky_rock__stringBase0;
extern "C" u8 s_exeProc__11daBkyRock_c[36];

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdate__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void waterCheck__11fopAcM_wt_cFPC4cXyz();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartQuake__12dVibration_cFii4cXyz();
extern "C" void StopQuake__12dVibration_cFi();
extern "C" void CheckQuake__12dVibration_cFv();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void entryObj__6dMdl_cFP10dMdl_obj_c();
extern "C" void entry__10dMdl_mng_cFP12J3DModelDataUsi();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __ct__5csXyzFsss();
extern "C" void cM_rndF__Ff();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_test();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_20();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_20();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" f32 mWaterY__11fopAcM_wt_c[1 + 1 /* padding */];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* 80BB6838-80BB6858 000078 0020+00 1/1 0/0 0/0 .text daBkyRock_c_createHeap__FP10fopAc_ac_c */
static void daBkyRock_c_createHeap(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BB8014-80BB8014 000164 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BB8014 = "BYRock";
#pragma pop

/* 80BB801C-80BB8028 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80BB8028-80BB803C 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80BB803C-80BB8040 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_bky_rock__stringBase0;

/* 80BB8040-80BB804C -00001 000C+00 0/1 0/0 0/0 .data            @3933 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3933[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)exeModeNoDamage__11daBkyRock_cFv,
};
#pragma pop

/* 80BB804C-80BB8058 -00001 000C+00 0/1 0/0 0/0 .data            @3934 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3934[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)exeModeDamage__11daBkyRock_cFv,
};
#pragma pop

/* 80BB8058-80BB8064 -00001 000C+00 0/1 0/0 0/0 .data            @3935 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3935[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)exeModePiece__11daBkyRock_cFv,
};
#pragma pop

/* 80BB8064-80BB8088 000048 0024+00 1/2 0/0 0/0 .data            s_exeProc__11daBkyRock_c */
SECTION_DATA u8 daBkyRock_c::s_exeProc[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80BB8088-80BB80A8 -00001 0020+00 1/0 0/0 0/0 .data            daBkyRock_METHODS */
static actor_method_class daBkyRock_METHODS = {
    (process_method_func)daBkyRock_create__FP11daBkyRock_c,
    (process_method_func)daBkyRock_Delete__FP11daBkyRock_c,
    (process_method_func)daBkyRock_execute__FP11daBkyRock_c,
    0,
    (process_method_func)daBkyRock_draw__FP11daBkyRock_c,
};

/* 80BB80A8-80BB80D8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_BkyRock */
extern actor_process_profile_definition g_profile_BkyRock = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_BkyRock,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daBkyRock_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  728,                    // mPriority
  &daBkyRock_METHODS,     // sub_method
  0x00044100,             // mStatus
  fopAc_ENV_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80BB80D8-80BB80E4 0000BC 000C+00 2/2 0/0 0/0 .data            __vt__11daBkyRock_c */
SECTION_DATA extern void* __vt__11daBkyRock_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daBkyRock_cFv,
};

/* 80BB6858-80BB6914 000098 00BC+00 2/2 0/0 0/0 .text            __ct__11daBkyRock_cFv */
daBkyRock_c::daBkyRock_c() {
    // NONMATCHING
}

/* 80BB6914-80BB6920 000154 000C+00 1/1 0/0 0/0 .text            __ct__Q211daBkyRock_c10_pieceDataFv
 */
daBkyRock_c::_pieceData::_pieceData() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BB80E4-80BB80F0 0000C8 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80BB80F0-80BB80FC 0000D4 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80BB80FC-80BB8108 0000E0 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80BB8108-80BB8114 0000EC 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80BB6920-80BB69EC 000160 00CC+00 2/2 0/0 0/0 .text            __dt__8dCcD_CylFv */
// dCcD_Cyl::~dCcD_Cyl() {
extern "C" void __dt__8dCcD_CylFv() {
    // NONMATCHING
}

/* 80BB69EC-80BB6A70 00022C 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_CylFv */
// dCcD_Cyl::dCcD_Cyl() {
extern "C" void __ct__8dCcD_CylFv() {
    // NONMATCHING
}

/* 80BB6A70-80BB6AB8 0002B0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80BB6AB8-80BB6B00 0002F8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80BB6B00-80BB6B5C 000340 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80BB6B5C-80BB6C4C 00039C 00F0+00 1/0 0/0 0/0 .text            __dt__11daBkyRock_cFv */
daBkyRock_c::~daBkyRock_c() {
    // NONMATCHING
}

/* 80BB6C4C-80BB6D60 00048C 0114+00 1/1 0/0 0/0 .text            create__11daBkyRock_cFv */
void daBkyRock_c::create() {
    // NONMATCHING
}

/* 80BB6D60-80BB6D84 0005A0 0024+00 1/1 0/0 0/0 .text            execute__11daBkyRock_cFv */
void daBkyRock_c::execute() {
    // NONMATCHING
}

/* 80BB6D84-80BB6EB8 0005C4 0134+00 1/1 0/0 0/0 .text            draw__11daBkyRock_cFv */
void daBkyRock_c::draw() {
    // NONMATCHING
}

/* 80BB6EB8-80BB6F64 0006F8 00AC+00 1/1 0/0 0/0 .text            Delete__11daBkyRock_cFv */
void daBkyRock_c::Delete() {
    // NONMATCHING
}

/* 80BB6F64-80BB6FD4 0007A4 0070+00 3/3 0/0 0/0 .text            setModelMtx__11daBkyRock_cFv */
void daBkyRock_c::setModelMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BB7EB0-80BB7EBC 000000 000C+00 8/8 0/0 0/0 .rodata          VIBMODE_POWER */
SECTION_RODATA static u8 const VIBMODE_POWER[12] = {
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03,
};
COMPILER_STRIP_GATE(0x80BB7EB0, &VIBMODE_POWER);

/* 80BB7EBC-80BB7EC4 00000C 0008+00 0/1 0/0 0/0 .rodata          PARTICLE_SCALE */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const PARTICLE_SCALE[8] = {
    0x00, 0x00, 0x06, 0xD6, 0x00, 0x00, 0x08, 0xE3,
};
COMPILER_STRIP_GATE(0x80BB7EBC, &PARTICLE_SCALE);
#pragma pop

/* 80BB7EC4-80BB7ECC 000014 0008+00 0/1 0/0 0/0 .rodata          PARTICLE_OFFSET_POS_Y */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const PARTICLE_OFFSET_POS_Y[8] = {
    0x00, 0x00, 0x01, 0x68, 0x00, 0x00, 0x01, 0x2C,
};
COMPILER_STRIP_GATE(0x80BB7EC4, &PARTICLE_OFFSET_POS_Y);
#pragma pop

/* 80BB7ECC-80BB7ED4 00001C 0008+00 0/1 0/0 0/0 .rodata          FIRST_PARTICLE_NAME */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const FIRST_PARTICLE_NAME[8] = {
    0x89, 0xC4, 0x89, 0xC5, 0x89, 0xC6, 0x89, 0xC7,
};
COMPILER_STRIP_GATE(0x80BB7ECC, &FIRST_PARTICLE_NAME);
#pragma pop

/* 80BB7ED4-80BB7EE0 000024 000C+00 0/1 0/0 0/0 .rodata          SECOND_PARTICLE_NAME */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const SECOND_PARTICLE_NAME[12] = {
    0x89, 0xC2, 0x89, 0xC3, 0x89, 0xC4, 0x89, 0xC5, 0x89, 0xC6, 0x89, 0xC7,
};
COMPILER_STRIP_GATE(0x80BB7ED4, &SECOND_PARTICLE_NAME);
#pragma pop

/* 80BB7EE0-80BB7F24 000030 0044+00 0/1 0/0 0/0 .rodata          s_CcDCyl__11daBkyRock_c */
#pragma push
#pragma force_active on
SECTION_RODATA u8 const daBkyRock_c::s_CcDCyl[68] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x20, 0xA0, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BB7EE0, &daBkyRock_c::s_CcDCyl);
#pragma pop

/* 80BB7F24-80BB7F3C 000074 0018+00 1/1 0/0 0/0 .rodata          BMD_IDX$3845 */
SECTION_RODATA static u8 const BMD_IDX[24] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x08,
};
COMPILER_STRIP_GATE(0x80BB7F24, &BMD_IDX);

/* 80BB6FD4-80BB7144 000814 0170+00 1/1 0/0 0/0 .text            createHeap__11daBkyRock_cFv */
void daBkyRock_c::createHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BB7F3C-80BB7F6C 00008C 0030+00 0/1 0/0 0/0 .rodata          COL_OFFSET_POS$3888 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const COL_OFFSET_POS[48] = {
    0xC2, 0xC8, 0x00, 0x00, 0xC3, 0x7A, 0x00, 0x00, 0xC2, 0xC8, 0x00, 0x00, 0x42, 0xC8, 0x00, 0x00,
    0xC3, 0x7A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BB7F3C, &COL_OFFSET_POS);
#pragma pop

/* 80BB7F6C-80BB7F7C 0000BC 0010+00 0/1 0/0 0/0 .rodata          COL_INIT_HEIGHT$3889 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const COL_INIT_HEIGHT[16] = {
    0x00, 0x00, 0x01, 0x90, 0x00, 0x00, 0x02, 0x8A, 0x00, 0x00, 0x03, 0x84, 0x00, 0x00, 0x03, 0x84,
};
COMPILER_STRIP_GATE(0x80BB7F6C, &COL_INIT_HEIGHT);
#pragma pop

/* 80BB7F7C-80BB7F8C 0000CC 0010+00 0/1 0/0 0/0 .rodata          COL_INIT_RADIUS$3890 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const COL_INIT_RADIUS[16] = {
    0x00, 0x00, 0x00, 0xFA, 0x00, 0x00, 0x02, 0x26, 0x00, 0x00, 0x02, 0x8A, 0x00, 0x00, 0x03, 0x20,
};
COMPILER_STRIP_GATE(0x80BB7F7C, &COL_INIT_RADIUS);
#pragma pop

/* 80BB7F8C-80BB7F90 0000DC 0004+00 0/1 0/0 0/0 .rodata          @3925 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3925 = 1.5f;
COMPILER_STRIP_GATE(0x80BB7F8C, &lit_3925);
#pragma pop

/* 80BB7F90-80BB7F94 0000E0 0004+00 0/1 0/0 0/0 .rodata          @3926 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3926 = -800.0f;
COMPILER_STRIP_GATE(0x80BB7F90, &lit_3926);
#pragma pop

/* 80BB7F94-80BB7F98 0000E4 0004+00 0/1 0/0 0/0 .rodata          @3927 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3927 = -500.0f;
COMPILER_STRIP_GATE(0x80BB7F94, &lit_3927);
#pragma pop

/* 80BB7F98-80BB7F9C 0000E8 0004+00 0/2 0/0 0/0 .rodata          @3928 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3928 = 800.0f;
COMPILER_STRIP_GATE(0x80BB7F98, &lit_3928);
#pragma pop

/* 80BB7F9C-80BB7FA0 0000EC 0004+00 0/1 0/0 0/0 .rodata          @3929 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3929 = 1000.0f;
COMPILER_STRIP_GATE(0x80BB7F9C, &lit_3929);
#pragma pop

/* 80BB7FA0-80BB7FA8 0000F0 0008+00 0/3 0/0 0/0 .rodata          @3931 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3931[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BB7FA0, &lit_3931);
#pragma pop

/* 80BB7144-80BB72FC 000984 01B8+00 1/1 0/0 0/0 .text            init__11daBkyRock_cFv */
void daBkyRock_c::init() {
    // NONMATCHING
}

/* 80BB72FC-80BB7364 000B3C 0068+00 1/1 0/0 0/0 .text            middleExe__11daBkyRock_cFv */
void daBkyRock_c::middleExe() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BB7FA8-80BB7FAC 0000F8 0004+00 0/5 0/0 0/0 .rodata          @3961 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3961 = 1.0f;
COMPILER_STRIP_GATE(0x80BB7FA8, &lit_3961);
#pragma pop

/* 80BB7FAC-80BB7FB0 0000FC 0004+00 0/2 0/0 0/0 .rodata          @3962 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3962 = -1.0f;
COMPILER_STRIP_GATE(0x80BB7FAC, &lit_3962);
#pragma pop

/* 80BB7364-80BB7458 000BA4 00F4+00 1/0 0/0 0/0 .text            exeModeNoDamage__11daBkyRock_cFv */
void daBkyRock_c::exeModeNoDamage() {
    // NONMATCHING
}

/* 80BB7458-80BB75D8 000C98 0180+00 1/0 0/0 0/0 .text            exeModeDamage__11daBkyRock_cFv */
void daBkyRock_c::exeModeDamage() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BB7FB0-80BB7FB4 000100 0004+00 0/3 0/0 0/0 .rodata          @4018 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4018[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80BB7FB0, &lit_4018);
#pragma pop

/* 80BB75D8-80BB7690 000E18 00B8+00 1/0 0/0 0/0 .text            exeModePiece__11daBkyRock_cFv */
void daBkyRock_c::exeModePiece() {
    // NONMATCHING
}

/* 80BB7690-80BB776C 000ED0 00DC+00 2/2 0/0 0/0 .text            chkHitBombArrow__11daBkyRock_cFv */
void daBkyRock_c::chkHitBombArrow() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BB7FB4-80BB7FBC 000104 0008+00 0/1 0/0 0/0 .rodata          VIBMODE_TIMER$4051 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const VIBMODE_TIMER[8] = {
    0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x28,
};
COMPILER_STRIP_GATE(0x80BB7FB4, &VIBMODE_TIMER);
#pragma pop

/* 80BB776C-80BB77FC 000FAC 0090+00 2/2 0/0 0/0 .text initChangeModeBefore__11daBkyRock_cFv */
void daBkyRock_c::initChangeModeBefore() {
    // NONMATCHING
}

/* 80BB77FC-80BB7818 00103C 001C+00 2/2 0/0 0/0 .text initChangeModeAfter__11daBkyRock_cFv */
void daBkyRock_c::initChangeModeAfter() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BB7FBC-80BB7FC0 00010C 0004+00 0/1 0/0 0/0 .rodata          @4086 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4086 = 150.0f;
COMPILER_STRIP_GATE(0x80BB7FBC, &lit_4086);
#pragma pop

/* 80BB7FC0-80BB7FC4 000110 0004+00 0/1 0/0 0/0 .rodata          @4087 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4087 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80BB7FC0, &lit_4087);
#pragma pop

/* 80BB7FC4-80BB7FC8 000114 0004+00 0/1 0/0 0/0 .rodata          @4088 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4088 = 15.0f;
COMPILER_STRIP_GATE(0x80BB7FC4, &lit_4088);
#pragma pop

/* 80BB7FC8-80BB7FCC 000118 0004+00 0/1 0/0 0/0 .rodata          @4089 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4089 = 2.0f;
COMPILER_STRIP_GATE(0x80BB7FC8, &lit_4089);
#pragma pop

/* 80BB7FCC-80BB7FD0 00011C 0004+00 0/1 0/0 0/0 .rodata          @4090 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4090 = 8.0f;
COMPILER_STRIP_GATE(0x80BB7FCC, &lit_4090);
#pragma pop

/* 80BB7FD0-80BB7FD4 000120 0004+00 0/1 0/0 0/0 .rodata          @4091 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4091 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x80BB7FD0, &lit_4091);
#pragma pop

/* 80BB7FD4-80BB7FD8 000124 0004+00 0/1 0/0 0/0 .rodata          @4092 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4092 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80BB7FD4, &lit_4092);
#pragma pop

/* 80BB7818-80BB7988 001058 0170+00 2/2 0/0 0/0 .text            pieceMove__11daBkyRock_cFv */
void daBkyRock_c::pieceMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BB7FD8-80BB7FE0 000128 0008+00 0/1 0/0 0/0 .rodata          DROP_OFFSET_POS$4096 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const DROP_OFFSET_POS[8] = {
    0x00, 0x00, 0x01, 0x5E, 0x00, 0x00, 0x0D, 0xAC,
};
COMPILER_STRIP_GATE(0x80BB7FD8, &DROP_OFFSET_POS);
#pragma pop

/* 80BB7FE0-80BB7FE8 000130 0008+00 0/1 0/0 0/0 .rodata          INIT_SPEED_Y_BASE$4097 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const INIT_SPEED_Y_BASE[8] = {
    0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x28,
};
COMPILER_STRIP_GATE(0x80BB7FE0, &INIT_SPEED_Y_BASE);
#pragma pop

/* 80BB7FE8-80BB7FF0 000138 0008+00 0/1 0/0 0/0 .rodata          INIT_SPEED_Y_RANGE$4098 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const INIT_SPEED_Y_RANGE[8] = {
    0x00, 0x00, 0x00, 0x3C, 0x00, 0x00, 0x00, 0x78,
};
COMPILER_STRIP_GATE(0x80BB7FE8, &INIT_SPEED_Y_RANGE);
#pragma pop

/* 80BB7FF0-80BB7FF8 000140 0008+00 0/1 0/0 0/0 .rodata          PIECE_SCALE_RANGE$4099 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const PIECE_SCALE_RANGE[8] = {
    0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x23,
};
COMPILER_STRIP_GATE(0x80BB7FF0, &PIECE_SCALE_RANGE);
#pragma pop

/* 80BB7FF8-80BB8000 000148 0008+00 0/1 0/0 0/0 .rodata          PIECE_SCALE_BASE$4100 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const PIECE_SCALE_BASE[8] = {
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x14,
};
COMPILER_STRIP_GATE(0x80BB7FF8, &PIECE_SCALE_BASE);
#pragma pop

/* 80BB8000-80BB8004 000150 0004+00 0/1 0/0 0/0 .rodata          @4120 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4120 = 500.0f;
COMPILER_STRIP_GATE(0x80BB8000, &lit_4120);
#pragma pop

/* 80BB8004-80BB8008 000154 0004+00 0/1 0/0 0/0 .rodata          @4121 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4121 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x80BB8004, &lit_4121);
#pragma pop

/* 80BB8008-80BB800C 000158 0004+00 0/1 0/0 0/0 .rodata          @4122 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4122 = 65535.0f;
COMPILER_STRIP_GATE(0x80BB8008, &lit_4122);
#pragma pop

/* 80BB800C-80BB8010 00015C 0004+00 0/1 0/0 0/0 .rodata          @4123 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4123 = 4096.0f;
COMPILER_STRIP_GATE(0x80BB800C, &lit_4123);
#pragma pop

/* 80BB7988-80BB7C18 0011C8 0290+00 1/1 0/0 0/0 .text            pieceMoveInit__11daBkyRock_cFv */
void daBkyRock_c::pieceMoveInit() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BB8010-80BB8014 000160 0004+00 0/1 0/0 0/0 .rodata          @4165 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4165 = 0x3A83126F;
COMPILER_STRIP_GATE(0x80BB8010, &lit_4165);
#pragma pop

/* 80BB7C18-80BB7D50 001458 0138+00 2/2 0/0 0/0 .text            callBombEmt__11daBkyRock_cFiPCUs */
void daBkyRock_c::callBombEmt(int param_0, u16 const* param_1) {
    // NONMATCHING
}

/* 80BB7D50-80BB7DA4 001590 0054+00 1/0 0/0 0/0 .text            daBkyRock_create__FP11daBkyRock_c
 */
static void daBkyRock_create(daBkyRock_c* param_0) {
    // NONMATCHING
}

/* 80BB7DA4-80BB7DC4 0015E4 0020+00 1/0 0/0 0/0 .text            daBkyRock_Delete__FP11daBkyRock_c
 */
static void daBkyRock_Delete(daBkyRock_c* param_0) {
    // NONMATCHING
}

/* 80BB7DC4-80BB7DE4 001604 0020+00 1/0 0/0 0/0 .text            daBkyRock_execute__FP11daBkyRock_c
 */
static void daBkyRock_execute(daBkyRock_c* param_0) {
    // NONMATCHING
}

/* 80BB7DE4-80BB7E04 001624 0020+00 1/0 0/0 0/0 .text            daBkyRock_draw__FP11daBkyRock_c */
static void daBkyRock_draw(daBkyRock_c* param_0) {
    // NONMATCHING
}

/* 80BB7E04-80BB7E4C 001644 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80BB7E4C-80BB7EA4 00168C 0058+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_bky_rock_cpp */
void __sinit_d_a_obj_bky_rock_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80BB7E4C, __sinit_d_a_obj_bky_rock_cpp);
#pragma pop

/* 80BB8014-80BB8014 000164 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
