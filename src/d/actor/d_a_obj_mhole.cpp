/**
 * @file d_a_obj_mhole.cpp
 * 
*/

#include "d/actor/d_a_obj_mhole.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void searchParentSub__FPvPv();
extern "C" static void CheckCreateHeap__FP10fopAc_ac_c();
extern "C" void initBaseMtx__12daObjMHole_cFv();
extern "C" void setBaseMtx__12daObjMHole_cFv();
extern "C" void Create__12daObjMHole_cFv();
extern "C" void checkParent__12daObjMHole_cFv();
extern "C" void CreateHeap__12daObjMHole_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void create__12daObjMHole_cFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void execute__12daObjMHole_cFv();
extern "C" void effectSet__12daObjMHole_cFv();
extern "C" void effectEnd__12daObjMHole_cFv();
extern "C" void draw__12daObjMHole_cFv();
extern "C" void _delete__12daObjMHole_cFv();
extern "C" static void daObjMHole_Draw__FP12daObjMHole_c();
extern "C" static void daObjMHole_Execute__FP12daObjMHole_c();
extern "C" static void daObjMHole_Delete__FP12daObjMHole_c();
extern "C" static void daObjMHole_Create__FP10fopAc_ac_c();
extern "C" extern char const* const d_a_obj_mhole__stringBase0;

//
// External References:
//

extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_btkAnmRemove__FP12J3DModelData();
extern "C" void mDoExt_brkAnmRemove__FP12J3DModelData();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void dKyw_get_wind_vec__Fv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CpsFRC11dCcD_SrcCps();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ct__8cM3dGCpsFv();
extern "C" void Set__8cM3dGCpsFRC4cXyzRC4cXyzf();
extern "C" void JPAGetXYZRotateMtx__FsssPA4_f();
extern "C" void deleteObject__14Z2SoundObjBaseFv();
extern "C" void __ct__16Z2SoundObjSimpleFv();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void setEffectMtx__13J3DTexMtxInfoFPA4_f();
extern "C" void simpleCalcMaterial__12J3DModelDataFUsPA4_f();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_29();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Cps[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CpsAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];

//
// Declarations:
//

/* ############################################################################################## */
/* 80C93D88-80C93D90 000000 0008+00 5/5 0/0 0/0 .rodata          l_bmd */
SECTION_RODATA static u8 const l_bmd[8] = {
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05,
};
COMPILER_STRIP_GATE(0x80C93D88, &l_bmd);

/* 80C93D90-80C93D98 000008 0008+00 0/1 0/0 0/0 .rodata          l_brk */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_brk[8] = {
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08,
};
COMPILER_STRIP_GATE(0x80C93D90, &l_brk);
#pragma pop

/* 80C93D98-80C93DA0 000010 0008+00 0/1 0/0 0/0 .rodata          l_btk1 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_btk1[8] = {
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x0B,
};
COMPILER_STRIP_GATE(0x80C93D98, &l_btk1);
#pragma pop

/* 80C93DA0-80C93DA8 000018 0008+00 0/1 0/0 0/0 .rodata          l_btk2 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_btk2[8] = {
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0C,
};
COMPILER_STRIP_GATE(0x80C93DA0, &l_btk2);
#pragma pop

/* 80C93DA8-80C93DB0 000020 0008+00 0/1 0/0 0/0 .rodata          l_length */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_length[8] = {
    0x44, 0xFA, 0x00, 0x00, 0x44, 0x7A, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C93DA8, &l_length);
#pragma pop

/* 80C93DB0-80C93DB8 000028 0008+00 0/1 0/0 0/0 .rodata          l_size */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_size[8] = {
    0x43, 0x16, 0x00, 0x00, 0x43, 0xB9, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C93DB0, &l_size);
#pragma pop

/* 80C93DB8-80C93DC0 000030 0004+04 0/4 0/0 0/0 .rodata          @3656 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3656[4 + 4 /* padding */] = {
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
COMPILER_STRIP_GATE(0x80C93DB8, &lit_3656);
#pragma pop

/* 80C93DC0-80C93DC8 000038 0008+00 0/1 0/0 0/0 .rodata          @3657 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3657[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C93DC0, &lit_3657);
#pragma pop

/* 80C93DC8-80C93DD0 000040 0008+00 0/1 0/0 0/0 .rodata          @3658 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3658[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C93DC8, &lit_3658);
#pragma pop

/* 80C93DD0-80C93DD8 000048 0008+00 0/1 0/0 0/0 .rodata          @3659 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3659[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C93DD0, &lit_3659);
#pragma pop

/* 80C93DD8-80C93DE0 000050 0004+04 0/1 0/0 0/0 .rodata          @3660 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3660[1 + 1 /* padding */] = {
    10.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80C93DD8, &lit_3660);
#pragma pop

/* 80C92E58-80C92FB8 000078 0160+00 1/1 0/0 0/0 .text            searchParentSub__FPvPv */
static void searchParentSub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80C92FB8-80C92FD8 0001D8 0020+00 1/1 0/0 0/0 .text            CheckCreateHeap__FP10fopAc_ac_c */
static void CheckCreateHeap(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C92FD8-80C93014 0001F8 003C+00 1/1 0/0 0/0 .text            initBaseMtx__12daObjMHole_cFv */
void daObjMHole_c::initBaseMtx() {
    // NONMATCHING
}

/* 80C93014-80C9307C 000234 0068+00 2/2 0/0 0/0 .text            setBaseMtx__12daObjMHole_cFv */
void daObjMHole_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C93DE0-80C93DE8 000058 0008+00 1/1 0/0 0/0 .rodata          @3724 */
SECTION_RODATA static u8 const lit_3724[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C93DE0, &lit_3724);

/* 80C93E00-80C93E00 000078 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C93E00 = "ef_MgnF_L";
SECTION_DEAD static char const* const stringBase_80C93E0A = "ef_MgnF_S";
#pragma pop

/* 80C93E14-80C93E1C -00001 0008+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName[2] = {
    (void*)&d_a_obj_mhole__stringBase0,
    (void*)(((char*)&d_a_obj_mhole__stringBase0) + 0xA),
};

/* 80C93E1C-80C93E68 000008 004C+00 1/1 0/0 0/0 .data            l_cps_src */
static dCcD_SrcCps l_cps_src = {
    {
        {0x0, {{AT_TYPE_40000, 0x0, 0x1d}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x6}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, {0.0f, 1000.0f, 0.0f}, 150.0f}, // mCps
    } // mCpsAttr
};

/* 80C9307C-80C93198 00029C 011C+00 1/1 0/0 0/0 .text            Create__12daObjMHole_cFv */
void daObjMHole_c::Create() {
    // NONMATCHING
}

/* 80C93198-80C93204 0003B8 006C+00 1/1 0/0 0/0 .text            checkParent__12daObjMHole_cFv */
void daObjMHole_c::checkParent() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C93DE8-80C93DEC 000060 0004+00 0/4 0/0 0/0 .rodata          @3823 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3823 = 1.0f;
COMPILER_STRIP_GATE(0x80C93DE8, &lit_3823);
#pragma pop

/* 80C93E68-80C93E88 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjMHole_Method */
static actor_method_class l_daObjMHole_Method = {
    (process_method_func)daObjMHole_Create__FP10fopAc_ac_c,
    (process_method_func)daObjMHole_Delete__FP12daObjMHole_c,
    (process_method_func)daObjMHole_Execute__FP12daObjMHole_c,
    0,
    (process_method_func)daObjMHole_Draw__FP12daObjMHole_c,
};

/* 80C93E88-80C93EB8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_MHole */
extern actor_process_profile_definition g_profile_Obj_MHole = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_MHole,         // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daObjMHole_c),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  589,                    // mPriority
  &l_daObjMHole_Method,   // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C93EB8-80C93EC4 0000A4 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C93EC4-80C93ED0 0000B0 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80C93204-80C93498 000424 0294+00 1/1 0/0 0/0 .text            CreateHeap__12daObjMHole_cFv */
void daObjMHole_c::CreateHeap() {
    // NONMATCHING
}

/* 80C93498-80C934E0 0006B8 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80C934E0-80C93660 000700 0180+00 1/1 0/0 0/0 .text            create__12daObjMHole_cFv */
void daObjMHole_c::create() {
    // NONMATCHING
}

/* 80C93660-80C936A8 000880 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80C936A8-80C93928 0008C8 0280+00 1/1 0/0 0/0 .text            execute__12daObjMHole_cFv */
void daObjMHole_c::execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C93DEC-80C93DF4 000064 0008+00 0/1 0/0 0/0 .rodata          l_eff_id_L$4030 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_eff_id_L[8] = {
    0x86, 0xEF, 0x86, 0xF0, 0x86, 0xF1, 0x86, 0xF2,
};
COMPILER_STRIP_GATE(0x80C93DEC, &l_eff_id_L);
#pragma pop

/* 80C93DF4-80C93DFC 00006C 0008+00 0/1 0/0 0/0 .rodata          l_eff_id_S$4031 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_eff_id_S[8] = {
    0x86, 0xF3, 0x86, 0xF4, 0x86, 0xF5, 0x86, 0xF6,
};
COMPILER_STRIP_GATE(0x80C93DF4, &l_eff_id_S);
#pragma pop

/* 80C93928-80C93A88 000B48 0160+00 1/1 0/0 0/0 .text            effectSet__12daObjMHole_cFv */
void daObjMHole_c::effectSet() {
    // NONMATCHING
}

/* 80C93A88-80C93ADC 000CA8 0054+00 1/1 0/0 0/0 .text            effectEnd__12daObjMHole_cFv */
void daObjMHole_c::effectEnd() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C93DFC-80C93E00 000074 0004+00 0/1 0/0 0/0 .rodata          @4217 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4217 = -1.0f / 100.0f;
COMPILER_STRIP_GATE(0x80C93DFC, &lit_4217);
#pragma pop

/* 80C93ADC-80C93CAC 000CFC 01D0+00 1/1 0/0 0/0 .text            draw__12daObjMHole_cFv */
void daObjMHole_c::draw() {
    // NONMATCHING
}

/* 80C93CAC-80C93D00 000ECC 0054+00 1/1 0/0 0/0 .text            _delete__12daObjMHole_cFv */
void daObjMHole_c::_delete() {
    // NONMATCHING
}

/* 80C93D00-80C93D20 000F20 0020+00 1/0 0/0 0/0 .text            daObjMHole_Draw__FP12daObjMHole_c
 */
static void daObjMHole_Draw(daObjMHole_c* param_0) {
    // NONMATCHING
}

/* 80C93D20-80C93D40 000F40 0020+00 1/0 0/0 0/0 .text daObjMHole_Execute__FP12daObjMHole_c */
static void daObjMHole_Execute(daObjMHole_c* param_0) {
    // NONMATCHING
}

/* 80C93D40-80C93D60 000F60 0020+00 1/0 0/0 0/0 .text            daObjMHole_Delete__FP12daObjMHole_c
 */
static void daObjMHole_Delete(daObjMHole_c* param_0) {
    // NONMATCHING
}

/* 80C93D60-80C93D80 000F80 0020+00 1/0 0/0 0/0 .text            daObjMHole_Create__FP10fopAc_ac_c
 */
static void daObjMHole_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C93E00-80C93E00 000078 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */