/**
 * @file d_a_obj_rope_bridge.cpp
 * 
*/

#include "d/actor/d_a_obj_rope_bridge.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void initBaseMtx__14daObjRBridge_cFv();
extern "C" void setBaseMtx__14daObjRBridge_cFv();
extern "C" void checkE3Special__14daObjRBridge_cFv();
extern "C" void setStPos__14daObjRBridge_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void initLinePos__14daObjRBridge_cFv();
extern "C" void setLinePos__14daObjRBridge_cFv();
extern "C" void getLinePosSt__14daObjRBridge_cFP4cXyz();
extern "C" void getLinePosBrg__14daObjRBridge_cFiP4cXyz();
extern "C" void checkTight__14daObjRBridge_cFv();
extern "C" void Create__14daObjRBridge_cFv();
extern "C" void CreateHeap__14daObjRBridge_cFv();
extern "C" void __ct__4cXyzFv();
extern "C" void create1st__14daObjRBridge_cFv();
extern "C" void Execute__14daObjRBridge_cFPPA3_A4_f();
extern "C" void action__14daObjRBridge_cFv();
extern "C" void init_wait__14daObjRBridge_cFv();
extern "C" void mode_wait__14daObjRBridge_cFv();
extern "C" void init_cut__14daObjRBridge_cFv();
extern "C" void mode_cut__14daObjRBridge_cFv();
extern "C" void init_end__14daObjRBridge_cFv();
extern "C" void mode_end__14daObjRBridge_cFv();
extern "C" void Draw__14daObjRBridge_cFv();
extern "C" void checkHimoCulling__14daObjRBridge_cFv();
extern "C" void Delete__14daObjRBridge_cFv();
extern "C" static void daObjRBridge_create1st__FP14daObjRBridge_c();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__8dCcD_CpsFv();
extern "C" void __ct__8dCcD_CpsFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" static void daObjRBridge_MoveBGDelete__FP14daObjRBridge_c();
extern "C" static void daObjRBridge_MoveBGExecute__FP14daObjRBridge_c();
extern "C" static void daObjRBridge_MoveBGDraw__FP14daObjRBridge_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" extern char const* const d_a_obj_rope_bridge__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi();
extern "C" void update__19mDoExt_3DlineMat1_cFifR8_GXColorUsP12dKy_tevstr_c();
extern "C" void setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_checkCullingBox__FPA4_fffffff();
extern "C" void lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void request__10dAttLook_cFP10fopAc_ac_cfffsi();
extern "C" void dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CpsFRC11dCcD_SrcCps();
extern "C" void CalcTgVec__8dCcD_CpsFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void normalizeZP__4cXyzFv();
extern "C" void __ct__8cM3dGCpsFv();
extern "C" void __dt__8cM3dGCpsFv();
extern "C" void Set__8cM3dGCpsFRC4cXyzRC4cXyzf();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void deleteObject__14Z2SoundObjBaseFv();
extern "C" void startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase();
extern "C" void __ct__16Z2SoundObjSimpleFv();
extern "C" void* __nw__FUl();
extern "C" void* __nwa__FUl();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void __construct_new_array();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_22();
extern "C" void _savegpr_23();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
extern "C" void _restgpr_23();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__19mDoExt_3DlineMat1_c[5];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__8dCcD_Cps[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CpsAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mLineCheck__11fopAcM_lc_c[112];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" extern u8 mStayNo__20dStage_roomControl_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" extern u8 data_805980F8[4];

//
// Declarations:
//

/* 80595E38-80595ED8 000078 00A0+00 1/1 0/0 0/0 .text            initBaseMtx__14daObjRBridge_cFv */
void daObjRBridge_c::initBaseMtx() {
    // NONMATCHING
}

/* 80595ED8-80595F84 000118 00AC+00 2/2 0/0 0/0 .text            setBaseMtx__14daObjRBridge_cFv */
void daObjRBridge_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80597E40-80597E40 0000C4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80597E40 = "L_RopeB_S";
SECTION_DEAD static char const* const stringBase_80597E4A = "L_RopeB_L";
SECTION_DEAD static char const* const stringBase_80597E54 = "L_Ropest";
SECTION_DEAD static char const* const stringBase_80597E5D = "D_MN54";
#pragma pop

/* 80595F84-80595FE0 0001C4 005C+00 2/2 0/0 0/0 .text            checkE3Special__14daObjRBridge_cFv
 */
void daObjRBridge_c::checkE3Special() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80597D7C-80597D84 000000 0008+00 9/9 0/0 0/0 .rodata          l_brgBmdIdx */
SECTION_RODATA static u8 const l_brgBmdIdx[8] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x80597D7C, &l_brgBmdIdx);

/* 80597D84-80597D8C 000008 0008+00 1/1 0/0 0/0 .rodata          l_brgDzbIdx */
SECTION_RODATA static u8 const l_brgDzbIdx[8] = {
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07,
};
COMPILER_STRIP_GATE(0x80597D84, &l_brgDzbIdx);

/* 80597D8C-80597D94 000010 0008+00 0/0 0/0 0/0 .rodata          l_brg_height */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_brg_height[8] = {
    0x44, 0x16, 0x00, 0x00, 0x44, 0x96, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80597D8C, &l_brg_height);
#pragma pop

/* 80597D94-80597D9C 000018 0008+00 0/1 0/0 0/0 .rodata          l_rope_length */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_rope_length[8] = {
    0x43, 0x96, 0x00, 0x00, 0x43, 0xE1, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80597D94, &l_rope_length);
#pragma pop

/* 80597D9C-80597DA4 000020 0008+00 0/2 0/0 0/0 .rodata          l_himo_thick */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_himo_thick[8] = {
    0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00, 0xDC,
};
COMPILER_STRIP_GATE(0x80597D9C, &l_himo_thick);
#pragma pop

/* 80597DA4-80597DAC 000028 0008+00 1/1 0/0 0/0 .rodata          l_heap_size */
SECTION_RODATA static u8 const l_heap_size[8] = {
    0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x25, 0x00,
};
COMPILER_STRIP_GATE(0x80597DA4, &l_heap_size);

/* 80597DAC-80597DC4 000030 0018+00 1/1 0/0 0/0 .rodata          l_rope_cullbox_offset */
SECTION_RODATA static u8 const l_rope_cullbox_offset[24] = {
    0x00, 0x00, 0x00, 0x00, 0x44, 0x09, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x44, 0x89, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80597DAC, &l_rope_cullbox_offset);

/* 80597DC4-80597DDC 000048 0018+00 1/1 0/0 0/0 .rodata          l_rope_cullbox */
SECTION_RODATA static u8 const l_rope_cullbox[24] = {
    0xC3, 0xAF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC3, 0xAF, 0x00, 0x00,
    0x43, 0xAF, 0x00, 0x00, 0x43, 0xAF, 0x00, 0x00, 0x43, 0xAF, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80597DC4, &l_rope_cullbox);

/* 80597DDC-80597DE4 000060 0008+00 0/1 0/0 0/0 .rodata          @3669 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3669[8] = {
    0x44, 0x53, 0x40, 0x00, 0x44, 0xC8, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80597DDC, &lit_3669);
#pragma pop

/* 80597DE4-80597DE8 000068 0004+00 0/6 0/0 0/0 .rodata          @3696 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3696[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80597DE4, &lit_3696);
#pragma pop

/* 80597DE8-80597DEC 00006C 0004+00 0/2 0/0 0/0 .rodata          @3697 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3697 = 100.0f;
COMPILER_STRIP_GATE(0x80597DE8, &lit_3697);
#pragma pop

/* 80597DEC-80597DF0 000070 0004+00 0/1 0/0 0/0 .rodata          @3698 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3698 = -1500.0f;
COMPILER_STRIP_GATE(0x80597DEC, &lit_3698);
#pragma pop

/* 80595FE0-80596130 000220 0150+00 1/1 0/0 0/0 .text            setStPos__14daObjRBridge_cFv */
void daObjRBridge_c::setStPos() {
    // NONMATCHING
}

/* 80596130-8059616C 000370 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80597DF0-80597DF4 000074 0004+00 0/1 0/0 0/0 .rodata          @3824 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3824 = 15.0f;
COMPILER_STRIP_GATE(0x80597DF0, &lit_3824);
#pragma pop

/* 80597DF4-80597DF8 000078 0004+00 0/2 0/0 0/0 .rodata          @3825 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3825 = 30.0f;
COMPILER_STRIP_GATE(0x80597DF4, &lit_3825);
#pragma pop

/* 8059616C-805963C4 0003AC 0258+00 1/1 0/0 0/0 .text            initLinePos__14daObjRBridge_cFv */
void daObjRBridge_c::initLinePos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80597DF8-80597DFC 00007C 0004+00 0/1 0/0 0/0 .rodata          @3998 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_3998 = 0xBC23D708;
COMPILER_STRIP_GATE(0x80597DF8, &lit_3998);
#pragma pop

/* 80597DFC-80597E04 000080 0004+04 0/3 0/0 0/0 .rodata          @3999 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3999[1 + 1 /* padding */] = {
    1.0f / 10.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80597DFC, &lit_3999);
#pragma pop

/* 805963C4-80596768 000604 03A4+00 1/1 0/0 0/0 .text            setLinePos__14daObjRBridge_cFv */
void daObjRBridge_c::setLinePos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80597E64-80597E70 000000 000C+00 3/3 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80597E70-80597E84 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80597E84-80597E8C -00001 0008+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName[2] = {
    (void*)&d_a_obj_rope_bridge__stringBase0,
    (void*)(((char*)&d_a_obj_rope_bridge__stringBase0) + 0xA),
};

/* 80597E8C-80597E90 -00001 0004+00 3/3 0/0 0/0 .data            l_ropeArcName */
SECTION_DATA static void* l_ropeArcName =
    (void*)(((char*)&d_a_obj_rope_bridge__stringBase0) + 0x14);

/* 80597E90-80597EA8 00002C 0018+00 1/1 0/0 0/0 .data            l_rope_offsetL */
SECTION_DATA static u8 l_rope_offsetL[24] = {
    0xC2, 0xF0, 0x00, 0x00, 0x44, 0x91, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x42, 0xF0, 0x00, 0x00, 0x44, 0x91, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80597EA8-80597EC0 000044 0018+00 1/1 0/0 0/0 .data            l_rope_offsetS */
SECTION_DATA static u8 l_rope_offsetS[24] = {
    0xC2, 0xF0, 0x00, 0x00, 0x44, 0x0F, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x42, 0xF0, 0x00, 0x00, 0x44, 0x0F, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80597EC0-80597ECC 00005C 000C+00 1/1 0/0 0/0 .data            l_rope_offsetSt */
SECTION_DATA static u8 l_rope_offsetSt[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x8C, 0x00, 0x00,
};

/* 80596768-805967E4 0009A8 007C+00 4/4 0/0 0/0 .text getLinePosSt__14daObjRBridge_cFP4cXyz */
void daObjRBridge_c::getLinePosSt(cXyz* param_0) {
    // NONMATCHING
}

/* 805967E4-8059689C 000A24 00B8+00 4/4 0/0 0/0 .text getLinePosBrg__14daObjRBridge_cFiP4cXyz */
void daObjRBridge_c::getLinePosBrg(int param_0, cXyz* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80597E04-80597E0C 000088 0008+00 0/1 0/0 0/0 .rodata          @4060 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4060[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80597E04, &lit_4060);
#pragma pop

/* 80597E0C-80597E14 000090 0008+00 0/1 0/0 0/0 .rodata          @4061 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4061[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80597E0C, &lit_4061);
#pragma pop

/* 80597E14-80597E1C 000098 0008+00 0/1 0/0 0/0 .rodata          @4062 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4062[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80597E14, &lit_4062);
#pragma pop

/* 8059689C-805969FC 000ADC 0160+00 1/1 0/0 0/0 .text            checkTight__14daObjRBridge_cFv */
void daObjRBridge_c::checkTight() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80597ECC-80597EE4 000068 0018+00 0/1 0/0 0/0 .data            l_cull_sizeS */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_cull_sizeS[24] = {
    0xC3, 0x7A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC2, 0xC8, 0x00, 0x00,
    0x43, 0x7A, 0x00, 0x00, 0x44, 0x89, 0x80, 0x00, 0x44, 0x7A, 0x00, 0x00,
};
#pragma pop

/* 80597EE4-80597EFC 000080 0018+00 0/1 0/0 0/0 .data            l_cull_sizeL */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_cull_sizeL[24] = {
    0xC3, 0xC8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC2, 0xC8, 0x00, 0x00,
    0x43, 0xC8, 0x00, 0x00, 0x44, 0xBB, 0x80, 0x00, 0x44, 0xBB, 0x80, 0x00,
};
#pragma pop

/* 80597EFC-80597F04 000098 0008+00 0/1 0/0 0/0 .data            l_att_disXZ */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_att_disXZ[8] = {
    0x44, 0xFA, 0x00, 0x00, 0x44, 0xFA, 0x00, 0x00,
};
#pragma pop

/* 80597F04-80597F0C 0000A0 0008+00 0/1 0/0 0/0 .data            l_att_high */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_att_high[8] = {
    0x44, 0x7A, 0x00, 0x00, 0x44, 0xFA, 0x00, 0x00,
};
#pragma pop

/* 80597F0C-80597F14 0000A8 0008+00 0/1 0/0 0/0 .data            l_att_low */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_att_low[8] = {
    0xC3, 0xFA, 0x00, 0x00, 0xC3, 0xFA, 0x00, 0x00,
};
#pragma pop

/* 80597F14-80597F18 0000B0 0004+00 0/1 0/0 0/0 .data            l_att_ang */
#pragma push
#pragma force_active on
SECTION_DATA static u32 l_att_ang = 0x60006000;
#pragma pop

/* 80597F18-80597F58 0000B4 0040+00 0/1 0/0 0/0 .data            l_sph_src */
#pragma push
#pragma force_active on
static dCcD_SrcSph l_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x2002, 0x11}, 0x18}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_METAL, 0x2, 0x0, 0x0, 0x1}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 80597F58-80597F98 0000F4 0040+00 0/1 0/0 0/0 .data            l_sph_src2 */
#pragma push
#pragma force_active on
static dCcD_SrcSph l_sph_src2 = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x0, 0x10}, 0x19}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_METAL, 0x2, 0x0, 0x0, 0x1}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 80597F98-80597FE4 000134 004C+00 0/1 0/0 0/0 .data            l_cps_src */
#pragma push
#pragma force_active on
static dCcD_SrcCps l_cps_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x2002, 0x11}, 0x0}}, // mObj
        {dCcD_SE_SWORD, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, {0.0f, 0.0f, 0.0f}, 50.0f}, // mCps
    } // mCpsAttr
};
#pragma pop

/* 805969FC-80596B88 000C3C 018C+00 1/0 0/0 0/0 .text            Create__14daObjRBridge_cFv */
void daObjRBridge_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80597FE4-80597FF0 -00001 000C+00 0/1 0/0 0/0 .data            @4218 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4218[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_wait__14daObjRBridge_cFv,
};
#pragma pop

/* 80597FF0-80597FFC -00001 000C+00 0/1 0/0 0/0 .data            @4219 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4219[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_cut__14daObjRBridge_cFv,
};
#pragma pop

/* 80597FFC-80598008 -00001 000C+00 0/1 0/0 0/0 .data            @4220 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4220[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_end__14daObjRBridge_cFv,
};
#pragma pop

/* 80598008-8059802C 0001A4 0024+00 0/1 0/0 0/0 .data            mode_proc$4217 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 mode_proc[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 8059802C-80598034 0001C8 0008+00 1/1 0/0 0/0 .data            l_fall_start_se$4321 */
SECTION_DATA static u8 l_fall_start_se[8] = {
    0x00, 0x08, 0x01, 0x44, 0x00, 0x08, 0x01, 0x46,
};

/* 80598034-8059803C 0001D0 0008+00 1/1 0/0 0/0 .data            l_fall_end_se$4322 */
SECTION_DATA static u8 l_fall_end_se[8] = {
    0x00, 0x08, 0x01, 0x45, 0x00, 0x08, 0x01, 0x47,
};

/* 8059803C-8059805C -00001 0020+00 1/0 0/0 0/0 .data            daObjRBridge_METHODS */
static actor_method_class daObjRBridge_METHODS = {
    (process_method_func)daObjRBridge_create1st__FP14daObjRBridge_c,
    (process_method_func)daObjRBridge_MoveBGDelete__FP14daObjRBridge_c,
    (process_method_func)daObjRBridge_MoveBGExecute__FP14daObjRBridge_c,
    0,
    (process_method_func)daObjRBridge_MoveBGDraw__FP14daObjRBridge_c,
};

/* 8059805C-8059808C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_RopeBridge */
extern actor_process_profile_definition g_profile_Obj_RopeBridge = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_RopeBridge,    // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daObjRBridge_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  16,                     // mPriority
  &daObjRBridge_METHODS,  // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 8059808C-80598098 000228 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80598098-805980A4 000234 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 805980A4-805980B0 000240 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 805980B0-805980BC 00024C 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 805980BC-805980D0 000258 0014+00 1/1 0/0 0/0 .data            __vt__18mDoExt_3DlineMat_c */
SECTION_DATA extern void* __vt__18mDoExt_3DlineMat_c[5] = {
    (void*)NULL /* RTTI */, (void*)NULL, (void*)NULL, (void*)NULL, (void*)NULL,
};

/* 80596B88-80596DE8 000DC8 0260+00 1/0 0/0 0/0 .text            CreateHeap__14daObjRBridge_cFv */
void daObjRBridge_c::CreateHeap() {
    // NONMATCHING
}

/* 80596DE8-80596DEC 001028 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80596DEC-80596EBC 00102C 00D0+00 1/1 0/0 0/0 .text            create1st__14daObjRBridge_cFv */
void daObjRBridge_c::create1st() {
    // NONMATCHING
}

/* 80596EBC-80596FA8 0010FC 00EC+00 1/0 0/0 0/0 .text            Execute__14daObjRBridge_cFPPA3_A4_f
 */
void daObjRBridge_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80597E1C-80597E20 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4239 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4239 = 40.0f;
COMPILER_STRIP_GATE(0x80597E1C, &lit_4239);
#pragma pop

/* 80596FA8-8059715C 0011E8 01B4+00 1/1 0/0 0/0 .text            action__14daObjRBridge_cFv */
void daObjRBridge_c::action() {
    // NONMATCHING
}

/* 8059715C-80597170 00139C 0014+00 1/1 0/0 0/0 .text            init_wait__14daObjRBridge_cFv */
void daObjRBridge_c::init_wait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80597E20-80597E24 0000A4 0004+00 1/3 0/0 0/0 .rodata          @4310 */
SECTION_RODATA static f32 const lit_4310 = 1.0f;
COMPILER_STRIP_GATE(0x80597E20, &lit_4310);

/* 80597E24-80597E2C 0000A8 0004+04 0/2 0/0 0/0 .rodata          @4311 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4311[1 + 1 /* padding */] = {
    -1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80597E24, &lit_4311);
#pragma pop

/* 80597E2C-80597E34 0000B0 0008+00 0/3 0/0 0/0 .rodata          @4313 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4313[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80597E2C, &lit_4313);
#pragma pop

/* 80597170-805973BC 0013B0 024C+00 1/0 0/0 0/0 .text            mode_wait__14daObjRBridge_cFv */
void daObjRBridge_c::mode_wait() {
    // NONMATCHING
}

/* 805973BC-805973E4 0015FC 0028+00 1/1 0/0 0/0 .text            init_cut__14daObjRBridge_cFv */
void daObjRBridge_c::init_cut() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80597E34-80597E38 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4356 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4356 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80597E34, &lit_4356);
#pragma pop

/* 80597E38-80597E3C 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4357 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4357 = 3.0f / 20.0f;
COMPILER_STRIP_GATE(0x80597E38, &lit_4357);
#pragma pop

/* 805973E4-805975E8 001624 0204+00 1/0 0/0 0/0 .text            mode_cut__14daObjRBridge_cFv */
void daObjRBridge_c::mode_cut() {
    // NONMATCHING
}

/* 805975E8-805975F4 001828 000C+00 2/2 0/0 0/0 .text            init_end__14daObjRBridge_cFv */
void daObjRBridge_c::init_end() {
    // NONMATCHING
}

/* 805975F4-805975F8 001834 0004+00 1/0 0/0 0/0 .text            mode_end__14daObjRBridge_cFv */
void daObjRBridge_c::mode_end() {
    /* empty function */
}

/* ############################################################################################## */
/* 80597E3C-80597E40 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4385 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4385[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80597E3C, &lit_4385);
#pragma pop

/* 805975F8-805977D0 001838 01D8+00 1/0 0/0 0/0 .text            Draw__14daObjRBridge_cFv */
void daObjRBridge_c::Draw() {
    // NONMATCHING
}

/* 805977D0-805978BC 001A10 00EC+00 1/1 0/0 0/0 .text checkHimoCulling__14daObjRBridge_cFv */
void daObjRBridge_c::checkHimoCulling() {
    // NONMATCHING
}

/* 805978BC-80597920 001AFC 0064+00 1/0 0/0 0/0 .text            Delete__14daObjRBridge_cFv */
void daObjRBridge_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805980D0-805980F8 00026C 0028+00 1/1 0/0 0/0 .data            __vt__14daObjRBridge_c */
SECTION_DATA extern void* __vt__14daObjRBridge_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__14daObjRBridge_cFv,
    (void*)Create__14daObjRBridge_cFv,
    (void*)Execute__14daObjRBridge_cFPPA3_A4_f,
    (void*)Draw__14daObjRBridge_cFv,
    (void*)Delete__14daObjRBridge_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80597920-80597A90 001B60 0170+00 1/0 0/0 0/0 .text daObjRBridge_create1st__FP14daObjRBridge_c
 */
static void daObjRBridge_create1st(daObjRBridge_c* param_0) {
    // NONMATCHING
}

/* 80597A90-80597AD8 001CD0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80597AD8-80597B20 001D18 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80597B20-80597BE4 001D60 00C4+00 1/1 0/0 0/0 .text            __dt__8dCcD_CpsFv */
// dCcD_Cps::~dCcD_Cps() {
extern "C" void __dt__8dCcD_CpsFv() {
    // NONMATCHING
}

/* 80597BE4-80597C64 001E24 0080+00 1/1 0/0 0/0 .text            __ct__8dCcD_CpsFv */
// dCcD_Cps::dCcD_Cps() {
extern "C" void __ct__8dCcD_CpsFv() {
    // NONMATCHING
}

/* 80597C64-80597CC0 001EA4 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80597CC0-80597CE0 001F00 0020+00 1/0 0/0 0/0 .text
 * daObjRBridge_MoveBGDelete__FP14daObjRBridge_c                */
static void daObjRBridge_MoveBGDelete(daObjRBridge_c* param_0) {
    // NONMATCHING
}

/* 80597CE0-80597D00 001F20 0020+00 1/0 0/0 0/0 .text
 * daObjRBridge_MoveBGExecute__FP14daObjRBridge_c               */
static void daObjRBridge_MoveBGExecute(daObjRBridge_c* param_0) {
    // NONMATCHING
}

/* 80597D00-80597D2C 001F40 002C+00 1/0 0/0 0/0 .text daObjRBridge_MoveBGDraw__FP14daObjRBridge_c
 */
static void daObjRBridge_MoveBGDraw(daObjRBridge_c* param_0) {
    // NONMATCHING
}

/* 80597D2C-80597D74 001F6C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80597E40-80597E40 0000C4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */