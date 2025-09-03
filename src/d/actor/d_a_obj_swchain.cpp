/**
 * @file d_a_obj_swchain.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_swchain.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void CheckCreateHeap__FP10fopAc_ac_c();
extern "C" static void GetActorName__FR13cBgS_PolyInfo();
extern "C" void Create__14daObjSwChain_cFv();
extern "C" void CreateHeap__14daObjSwChain_cFv();
extern "C" void __dt__Q214daObjSwChain_c7chain_sFv();
extern "C" void __ct__Q214daObjSwChain_c7chain_sFv();
extern "C" void create1st__14daObjSwChain_cFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void execute__14daObjSwChain_cFv();
extern "C" void getChainBasePos__14daObjSwChain_cFP4cXyz();
extern "C" void chain_control__14daObjSwChain_cFv();
extern "C" void chain_control2__14daObjSwChain_cFv();
extern "C" void initChainMtx__14daObjSwChain_cFv();
extern "C" void setChainMtx__14daObjSwChain_cFv();
extern "C" void chain_count_control__14daObjSwChain_cFv();
extern "C" void setTension__14daObjSwChain_cFv();
extern "C" void getTopChainNo__14daObjSwChain_cFv();
extern "C" void checkPlayerPull__14daObjSwChain_cFv();
extern "C" void draw__14daObjSwChain_cFv();
extern "C" void _delete__14daObjSwChain_cFv();
extern "C" static void daObjSwChain_Draw__FP14daObjSwChain_c();
extern "C" static void daObjSwChain_Execute__FP14daObjSwChain_c();
extern "C" static void daObjSwChain_Delete__FP14daObjSwChain_c();
extern "C" static void daObjSwChain_Create__FP10fopAc_ac_c();
extern "C" void func_80CFB69C(void* _this, u8*);
extern "C" static void func_80CFB6B8();
extern "C" static void func_80CFB6C0();
extern "C" void getRightHandPos__9daPy_py_cCFv();
extern "C" extern char const* const d_a_obj_swchain__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeSphere__FP10fopAc_ac_cffff();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void offSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void GetActorPointer__4cBgSCFi();
extern "C" void ChkPolySafe__4cBgSFRC13cBgS_PolyInfo();
extern "C" void ChkMoveBG_NoDABg__4dBgSFRC13cBgS_PolyInfo();
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
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void create__6dMdl_cFP12J3DModelDataUsP12dKy_tevstr_c();
extern "C" void entryObj__6dMdl_cFP10dMdl_obj_c();
extern "C" void setFmChainPos__9daPy_py_cFP10fopAc_ac_cP4cXyzi();
extern "C" void setPlayerSe__9daPy_py_cFUl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void ClrCcMove__9cCcD_SttsFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void normalizeZP__4cXyzFv();
extern "C" void atan2sX_Z__4cXyzCFv();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nwa__FUl();
extern "C" void __dl__FPv();
extern "C" void __construct_new_array();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_29();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__6dMdl_c[5 + 1 /* padding */];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" extern void* __vt__9J3DPacket[5];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mGndCheck__11fopAcM_gc_c[84];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* 80CF86B8-80CF86D8 000078 0020+00 1/1 0/0 0/0 .text            CheckCreateHeap__FP10fopAc_ac_c */
static void CheckCreateHeap(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80CF86D8-80CF8768 000098 0090+00 2/2 0/0 0/0 .text            GetActorName__FR13cBgS_PolyInfo */
static void GetActorName(cBgS_PolyInfo& param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CFB6EC-80CFB6F0 000000 0004+00 10/10 0/0 0/0 .rodata          @3734 */
SECTION_RODATA static u8 const lit_3734[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CFB6EC, &lit_3734);

/* 80CFB6F0-80CFB6F4 000004 0004+00 0/1 0/0 0/0 .rodata          @3735 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3735 = 40.0f;
COMPILER_STRIP_GATE(0x80CFB6F0, &lit_3735);
#pragma pop

/* 80CFB6F4-80CFB6F8 000008 0004+00 0/6 0/0 0/0 .rodata          @3736 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3736 = 35.0f;
COMPILER_STRIP_GATE(0x80CFB6F4, &lit_3736);
#pragma pop

/* 80CFB6F8-80CFB6FC 00000C 0004+00 0/1 0/0 0/0 .rodata          @3737 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3737 = 50.0f;
COMPILER_STRIP_GATE(0x80CFB6F8, &lit_3737);
#pragma pop

/* 80CFB6FC-80CFB704 000010 0008+00 0/3 0/0 0/0 .rodata          @3739 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3739[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CFB6FC, &lit_3739);
#pragma pop

/* 80CFB790-80CFB790 0000A4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CFB790 = "P_Chain";
#pragma pop

/* 80CFB798-80CFB79C -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_swchain__stringBase0;

/* 80CFB79C-80CFB7DC 000004 0040+00 1/1 0/0 0/0 .data            l_sph_src */
static dCcD_SrcSph l_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x4000, 0x11}, 0x58}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 50.0f} // mSph
    } // mSphAttr
};

/* 80CFB7DC-80CFB81C 000044 0040+00 1/1 0/0 0/0 .data            l_sph_srcCo */
static dCcD_SrcSph l_sph_srcCo = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x0, 0x10}, 0x49}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 50.0f} // mSph
    } // mSphAttr
};

/* 80CF8768-80CF89C0 000128 0258+00 1/1 0/0 0/0 .text            Create__14daObjSwChain_cFv */
void daObjSwChain_c::Create() {
    // NONMATCHING
}

/* 80CF89C0-80CF8B00 000380 0140+00 1/1 0/0 0/0 .text            CreateHeap__14daObjSwChain_cFv */
void daObjSwChain_c::CreateHeap() {
    // NONMATCHING
}

/* 80CF8B00-80CF8B3C 0004C0 003C+00 1/1 0/0 0/0 .text            __dt__Q214daObjSwChain_c7chain_sFv
 */
daObjSwChain_c::chain_s::~chain_s() {
    // NONMATCHING
}

/* 80CF8B3C-80CF8B48 0004FC 000C+00 1/1 0/0 0/0 .text            __ct__Q214daObjSwChain_c7chain_sFv
 */
daObjSwChain_c::chain_s::chain_s() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CFB81C-80CFB83C -00001 0020+00 1/0 0/0 0/0 .data            l_daObjSwChain_Method */
static actor_method_class l_daObjSwChain_Method = {
    (process_method_func)daObjSwChain_Create__FP10fopAc_ac_c,
    (process_method_func)daObjSwChain_Delete__FP14daObjSwChain_c,
    (process_method_func)daObjSwChain_Execute__FP14daObjSwChain_c,
    0,
    (process_method_func)daObjSwChain_Draw__FP14daObjSwChain_c,
};

/* 80CFB83C-80CFB86C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_SwChain */
extern actor_process_profile_definition g_profile_Obj_SwChain = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_SwChain,       // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjSwChain_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  615,                    // mPriority
  &l_daObjSwChain_Method, // sub_method
  0x000C0000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80CFB86C-80CFB890 0000D4 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80CFB6C0,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80CFB6B8,
};

/* 80CFB890-80CFB89C 0000F8 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80CFB89C-80CFB8A8 000104 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80CF8B48-80CF8DD0 000508 0288+00 1/1 0/0 0/0 .text            create1st__14daObjSwChain_cFv */
void daObjSwChain_c::create1st() {
    // NONMATCHING
}

/* 80CF8DD0-80CF8E40 000790 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80CF8E40-80CF8E88 000800 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80CF8E88-80CF8ED0 000848 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CFB704-80CFB70C 000018 0008+00 0/5 0/0 0/0 .rodata          @4120 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4120[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CFB704, &lit_4120);
#pragma pop

/* 80CFB70C-80CFB714 000020 0008+00 0/5 0/0 0/0 .rodata          @4121 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4121[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CFB70C, &lit_4121);
#pragma pop

/* 80CFB714-80CFB71C 000028 0008+00 0/5 0/0 0/0 .rodata          @4122 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4122[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CFB714, &lit_4122);
#pragma pop

/* 80CFB71C-80CFB720 000030 0004+00 0/1 0/0 0/0 .rodata          @4123 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4123 = 30.0f;
COMPILER_STRIP_GATE(0x80CFB71C, &lit_4123);
#pragma pop

/* 80CFB720-80CFB724 000034 0004+00 0/3 0/0 0/0 .rodata          @4124 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4124 = 15.0f;
COMPILER_STRIP_GATE(0x80CFB720, &lit_4124);
#pragma pop

/* 80CFB724-80CFB728 000038 0004+00 0/1 0/0 0/0 .rodata          @4125 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4125 = 2.0f;
COMPILER_STRIP_GATE(0x80CFB724, &lit_4125);
#pragma pop

/* 80CF8ED0-80CF94E4 000890 0614+00 1/1 0/0 0/0 .text            execute__14daObjSwChain_cFv */
void daObjSwChain_c::execute() {
    // NONMATCHING
}

/* 80CF94E4-80CF9500 000EA4 001C+00 1/1 0/0 0/0 .text getChainBasePos__14daObjSwChain_cFP4cXyz */
void daObjSwChain_c::getChainBasePos(cXyz* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CFB728-80CFB72C 00003C 0004+00 0/1 0/0 0/0 .rodata          @4258 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4258 = -6.0f;
COMPILER_STRIP_GATE(0x80CFB728, &lit_4258);
#pragma pop

/* 80CFB72C-80CFB730 000040 0004+00 0/3 0/0 0/0 .rodata          @4259 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4259 = 0.5f;
COMPILER_STRIP_GATE(0x80CFB72C, &lit_4259);
#pragma pop

/* 80CFB730-80CFB734 000044 0004+00 0/1 0/0 0/0 .rodata          @4260 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4260 = 0x3DCCCCCC;
COMPILER_STRIP_GATE(0x80CFB730, &lit_4260);
#pragma pop

/* 80CFB734-80CFB738 000048 0004+00 0/1 0/0 0/0 .rodata          @4261 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4261 = 5.0f;
COMPILER_STRIP_GATE(0x80CFB734, &lit_4261);
#pragma pop

/* 80CFB738-80CFB73C 00004C 0004+00 0/2 0/0 0/0 .rodata          @4262 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4262 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80CFB738, &lit_4262);
#pragma pop

/* 80CFB73C-80CFB740 000050 0004+00 0/3 0/0 0/0 .rodata          @4263 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4263 = 1.0f;
COMPILER_STRIP_GATE(0x80CFB73C, &lit_4263);
#pragma pop

/* 80CFB740-80CFB744 000054 0004+00 0/2 0/0 0/0 .rodata          @4264 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4264 = 100.0f;
COMPILER_STRIP_GATE(0x80CFB740, &lit_4264);
#pragma pop

/* 80CFB744-80CFB748 000058 0004+00 0/3 0/0 0/0 .rodata          @4265 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4265 = 8.0f;
COMPILER_STRIP_GATE(0x80CFB744, &lit_4265);
#pragma pop

/* 80CF9500-80CF99C0 000EC0 04C0+00 1/1 0/0 0/0 .text            chain_control__14daObjSwChain_cFv
 */
void daObjSwChain_c::chain_control() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CFB748-80CFB74C 00005C 0004+00 0/1 0/0 0/0 .rodata          @4457 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4457 = 12.0f;
COMPILER_STRIP_GATE(0x80CFB748, &lit_4457);
#pragma pop

/* 80CFB74C-80CFB750 000060 0004+00 0/1 0/0 0/0 .rodata          @4458 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4458 = 7.0f;
COMPILER_STRIP_GATE(0x80CFB74C, &lit_4458);
#pragma pop

/* 80CFB750-80CFB754 000064 0004+00 0/1 0/0 0/0 .rodata          @4459 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4459 = 60.0f;
COMPILER_STRIP_GATE(0x80CFB750, &lit_4459);
#pragma pop

/* 80CFB754-80CFB758 000068 0004+00 0/1 0/0 0/0 .rodata          @4460 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4460 = -10.0f;
COMPILER_STRIP_GATE(0x80CFB754, &lit_4460);
#pragma pop

/* 80CFB758-80CFB75C 00006C 0004+00 0/1 0/0 0/0 .rodata          @4461 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4461 = 25.0f;
COMPILER_STRIP_GATE(0x80CFB758, &lit_4461);
#pragma pop

/* 80CF99C0-80CFA05C 001380 069C+00 1/1 0/0 0/0 .text            chain_control2__14daObjSwChain_cFv
 */
void daObjSwChain_c::chain_control2() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CFB75C-80CFB760 000070 0004+00 1/1 0/0 0/0 .rodata          @4479 */
SECTION_RODATA static f32 const lit_4479 = 16384.0f;
COMPILER_STRIP_GATE(0x80CFB75C, &lit_4479);

/* 80CFA05C-80CFA124 001A1C 00C8+00 1/1 0/0 0/0 .text            initChainMtx__14daObjSwChain_cFv */
void daObjSwChain_c::initChainMtx() {
    // NONMATCHING
}

/* 80CFA124-80CFA4A8 001AE4 0384+00 2/2 0/0 0/0 .text            setChainMtx__14daObjSwChain_cFv */
void daObjSwChain_c::setChainMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CFB760-80CFB764 000074 0004+00 0/1 0/0 0/0 .rodata          @4848 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4848 = 105.0f;
COMPILER_STRIP_GATE(0x80CFB760, &lit_4848);
#pragma pop

/* 80CFB764-80CFB768 000078 0004+00 0/1 0/0 0/0 .rodata          @4849 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4849 = -1.0f;
COMPILER_STRIP_GATE(0x80CFB764, &lit_4849);
#pragma pop

/* 80CFB768-80CFB76C 00007C 0004+00 0/1 0/0 0/0 .rodata          @4850 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4850 = 17.5f;
COMPILER_STRIP_GATE(0x80CFB768, &lit_4850);
#pragma pop

/* 80CFB76C-80CFB770 000080 0004+00 0/1 0/0 0/0 .rodata          @4851 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4851 = 10.0f;
COMPILER_STRIP_GATE(0x80CFB76C, &lit_4851);
#pragma pop

/* 80CFB770-80CFB774 000084 0004+00 0/1 0/0 0/0 .rodata          @4852 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4852 = 1.5f;
COMPILER_STRIP_GATE(0x80CFB770, &lit_4852);
#pragma pop

/* 80CFB774-80CFB778 000088 0004+00 0/1 0/0 0/0 .rodata          @4853 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4853 = 6.0f;
COMPILER_STRIP_GATE(0x80CFB774, &lit_4853);
#pragma pop

/* 80CFB778-80CFB77C 00008C 0004+00 0/1 0/0 0/0 .rodata          @4854 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4854 = 9.0f;
COMPILER_STRIP_GATE(0x80CFB778, &lit_4854);
#pragma pop

/* 80CFB77C-80CFB780 000090 0004+00 0/2 0/0 0/0 .rodata          @4855 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4855 = 13.0f;
COMPILER_STRIP_GATE(0x80CFB77C, &lit_4855);
#pragma pop

/* 80CFB780-80CFB784 000094 0004+00 0/2 0/0 0/0 .rodata          @4856 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4856 = 20.0f;
COMPILER_STRIP_GATE(0x80CFB780, &lit_4856);
#pragma pop

/* 80CFA4A8-80CFAD50 001E68 08A8+00 1/1 0/0 0/0 .text chain_count_control__14daObjSwChain_cFv */
void daObjSwChain_c::chain_count_control() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CFB784-80CFB788 000098 0004+00 0/1 0/0 0/0 .rodata          @5043 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5043 = 0x3F333334;
COMPILER_STRIP_GATE(0x80CFB784, &lit_5043);
#pragma pop

/* 80CFB788-80CFB78C 00009C 0004+00 0/1 0/0 0/0 .rodata          @5044 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5044 = 21.0f / 10.0f;
COMPILER_STRIP_GATE(0x80CFB788, &lit_5044);
#pragma pop

/* 80CFB78C-80CFB790 0000A0 0004+00 0/1 0/0 0/0 .rodata          @5045 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5045 = 7000.0f;
COMPILER_STRIP_GATE(0x80CFB78C, &lit_5045);
#pragma pop

/* 80CFAD50-80CFB450 002710 0700+00 1/1 0/0 0/0 .text            setTension__14daObjSwChain_cFv */
void daObjSwChain_c::setTension() {
    // NONMATCHING
}

/* 80CFB450-80CFB464 002E10 0014+00 8/8 0/0 0/0 .text            getTopChainNo__14daObjSwChain_cFv
 */
void daObjSwChain_c::getTopChainNo() {
    // NONMATCHING
}

/* 80CFB464-80CFB53C 002E24 00D8+00 1/1 0/0 0/0 .text            checkPlayerPull__14daObjSwChain_cFv
 */
void daObjSwChain_c::checkPlayerPull() {
    // NONMATCHING
}

/* 80CFB53C-80CFB5E8 002EFC 00AC+00 1/1 0/0 0/0 .text            draw__14daObjSwChain_cFv */
void daObjSwChain_c::draw() {
    // NONMATCHING
}

/* 80CFB5E8-80CFB61C 002FA8 0034+00 1/1 0/0 0/0 .text            _delete__14daObjSwChain_cFv */
void daObjSwChain_c::_delete() {
    // NONMATCHING
}

/* 80CFB61C-80CFB63C 002FDC 0020+00 1/0 0/0 0/0 .text daObjSwChain_Draw__FP14daObjSwChain_c */
static void daObjSwChain_Draw(daObjSwChain_c* param_0) {
    // NONMATCHING
}

/* 80CFB63C-80CFB65C 002FFC 0020+00 1/0 0/0 0/0 .text daObjSwChain_Execute__FP14daObjSwChain_c */
static void daObjSwChain_Execute(daObjSwChain_c* param_0) {
    // NONMATCHING
}

/* 80CFB65C-80CFB67C 00301C 0020+00 1/0 0/0 0/0 .text daObjSwChain_Delete__FP14daObjSwChain_c */
static void daObjSwChain_Delete(daObjSwChain_c* param_0) {
    // NONMATCHING
}

/* 80CFB67C-80CFB69C 00303C 0020+00 1/0 0/0 0/0 .text            daObjSwChain_Create__FP10fopAc_ac_c
 */
static void daObjSwChain_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80CFB69C-80CFB6B8 00305C 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<Uc>__FPUc */
extern "C" void func_80CFB69C(void* _this, u8* param_0) {
    // NONMATCHING
}

/* 80CFB6B8-80CFB6C0 003078 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80CFB6B8() {
    // NONMATCHING
}

/* 80CFB6C0-80CFB6C8 003080 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80CFB6C0() {
    // NONMATCHING
}

/* 80CFB6C8-80CFB6E4 003088 001C+00 1/1 0/0 0/0 .text            getRightHandPos__9daPy_py_cCFv */
// void daPy_py_c::getRightHandPos() const {
extern "C" void getRightHandPos__9daPy_py_cCFv() {
    // NONMATCHING
}

/* 80CFB790-80CFB790 0000A4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
