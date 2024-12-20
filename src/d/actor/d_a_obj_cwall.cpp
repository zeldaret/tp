/**
 * @file d_a_obj_cwall.cpp
 * 
*/

#include "d/actor/d_a_obj_cwall.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void initBaseMtx__12daObjCwall_cFv();
extern "C" void setBaseMtx__12daObjCwall_cFv();
extern "C" void Create__12daObjCwall_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void CreateHeap__12daObjCwall_cFv();
extern "C" void __dt__Q212daObjCwall_c7chain_sFv();
extern "C" void __ct__Q212daObjCwall_c7chain_sFv();
extern "C" void create1st__12daObjCwall_cFv();
extern "C" void Execute__12daObjCwall_cFPPA3_A4_f();
extern "C" void setTension__12daObjCwall_cFv();
extern "C" void calcSePos__12daObjCwall_cFv();
extern "C" void getChainBasePos__12daObjCwall_cFP4cXyz();
extern "C" void setChainMtx__12daObjCwall_cFv();
extern "C" void chain_control__12daObjCwall_cFv();
extern "C" void chain_control2__12daObjCwall_cFv();
extern "C" void block_mode_proc_call__12daObjCwall_cFv();
extern "C" void initWait__12daObjCwall_cFv();
extern "C" void modeWait__12daObjCwall_cFv();
extern "C" void initWalk__12daObjCwall_cFv();
extern "C" void modeWalk__12daObjCwall_cFv();
extern "C" void initClose__12daObjCwall_cFv();
extern "C" void modeClose__12daObjCwall_cFv();
extern "C" void setPower__12daObjCwall_cFfPs();
extern "C" void checkWall__12daObjCwall_cFv();
extern "C" void checkPullNow__12daObjCwall_cFv();
extern "C" void checkPull__12daObjCwall_cFv();
extern "C" void Draw__12daObjCwall_cFv();
extern "C" void Delete__12daObjCwall_cFv();
extern "C" static void daObjCwall_create1st__FP12daObjCwall_c();
extern "C" void __ct__4cXyzFv();
extern "C" void __ct__8dCcD_CylFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8dCcD_CylFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" static void daObjCwall_MoveBGDelete__FP12daObjCwall_c();
extern "C" static void daObjCwall_MoveBGExecute__FP12daObjCwall_c();
extern "C" static void daObjCwall_MoveBGDraw__FP12daObjCwall_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void func_80BD9EAC(void* _this, s16*);
extern "C" void func_80BD9EC8(void* _this, u8*);
extern "C" void __sinit_d_a_obj_cwall_cpp();
extern "C" void getRightHandPos__9daPy_py_cCFv();
extern "C" extern char const* const d_a_obj_cwall__stringBase0;

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
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void StartShock__12dVibration_cFii4cXyz();
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
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void setFmChainPos__9daPy_py_cFP10fopAc_ac_cP4cXyzi();
extern "C" void setPlayerSe__9daPy_py_cFUl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void normalizeZP__4cXyzFv();
extern "C" void atan2sX_Z__4cXyzCFv();
extern "C" void cM_atan2s__Fff();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chasePos__FP4cXyzRC4cXyzf();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nwa__FUl();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void __construct_new_array();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_22();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
extern "C" void _restgpr_25();
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
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" f32 Zero__4cXyz[3];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* 80BD6A4C-80BD6A88 0000EC 003C+00 1/1 0/0 0/0 .text            initBaseMtx__12daObjCwall_cFv */
void daObjCwall_c::initBaseMtx() {
    // NONMATCHING
}

/* 80BD6A88-80BD6AEC 000128 0064+00 2/2 0/0 0/0 .text            setBaseMtx__12daObjCwall_cFv */
void daObjCwall_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD9FA4-80BD9FAC 000000 0008+00 11/11 0/0 0/0 .rodata          l_wallBmd */
SECTION_RODATA static u8 const l_wallBmd[8] = {
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05,
};
COMPILER_STRIP_GATE(0x80BD9FA4, &l_wallBmd);

/* 80BD9FAC-80BD9FB4 000008 0008+00 0/1 0/0 0/0 .rodata          l_chainBmd */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_chainBmd[8] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x80BD9FAC, &l_chainBmd);
#pragma pop

/* 80BD9FB4-80BD9FBC 000010 0008+00 0/1 0/0 0/0 .rodata          l_handleBmd */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_handleBmd[8] = {
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06,
};
COMPILER_STRIP_GATE(0x80BD9FB4, &l_handleBmd);
#pragma pop

/* 80BD9FBC-80BD9FC4 000018 0008+00 1/1 0/0 0/0 .rodata          l_dzb */
SECTION_RODATA static u8 const l_dzb[8] = {
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x09,
};
COMPILER_STRIP_GATE(0x80BD9FBC, &l_dzb);

/* 80BD9FC4-80BD9FCC 000020 0008+00 1/1 0/0 0/0 .rodata          l_heap_size */
SECTION_RODATA static u8 const l_heap_size[8] = {
    0x00, 0x00, 0x46, 0x00, 0x00, 0x00, 0x5F, 0x00,
};
COMPILER_STRIP_GATE(0x80BD9FC4, &l_heap_size);

/* 80BD9FCC-80BD9FD8 000028 000C+00 0/1 0/0 0/0 .rodata          l_top_co_offset */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_top_co_offset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC4, 0x16, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BD9FCC, &l_top_co_offset);
#pragma pop

/* 80BD9FD8-80BD9FE4 000034 000C+00 0/1 0/0 0/0 .rodata          l_check_min */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_check_min[12] = {
    0xC2, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0xA0, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BD9FD8, &l_check_min);
#pragma pop

/* 80BD9FE4-80BD9FF0 000040 000C+00 0/1 0/0 0/0 .rodata          l_check_max */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_check_max[12] = {
    0x42, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0xA0, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BD9FE4, &l_check_max);
#pragma pop

/* 80BD9FF0-80BD9FFC 00004C 000C+00 0/1 0/0 0/0 .rodata          l_check_min_wolf */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_check_min_wolf[12] = {
    0xC2, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BD9FF0, &l_check_min_wolf);
#pragma pop

/* 80BD9FFC-80BDA008 000058 000C+00 0/1 0/0 0/0 .rodata          l_check_max_wolf */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_check_max_wolf[12] = {
    0x42, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x43, 0x20, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BD9FFC, &l_check_max_wolf);
#pragma pop

/* 80BDA008-80BDA00C 000064 0004+00 7/17 0/0 0/0 .rodata          @3829 */
SECTION_RODATA static u8 const lit_3829[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80BDA008, &lit_3829);

/* 80BDA00C-80BDA014 000068 0004+04 1/1 0/0 0/0 .rodata          @3830 */
SECTION_RODATA static f32 const lit_3830[1 + 1 /* padding */] = {
    50.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80BDA00C, &lit_3830);

/* 80BDA0AC-80BDA0AC 000108 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BDA0AC = "P_Cwall";
SECTION_DEAD static char const* const stringBase_80BDA0B4 = "P_L4Cwall";
#pragma pop

/* 80BDA0C0-80BDA0CC 000000 000C+00 2/2 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80BDA0CC-80BDA0E0 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80BDA0E0-80BDA0E8 -00001 0008+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName[2] = {
    (void*)&d_a_obj_cwall__stringBase0,
    (void*)(((char*)&d_a_obj_cwall__stringBase0) + 0x8),
};

/* 80BDA0E8-80BDA100 000028 0018+00 0/1 0/0 0/0 .data            l_cull_box */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_cull_box[24] = {
    0xC3, 0x96, 0x00, 0x00, 0xC2, 0xC8, 0x00, 0x00, 0xC4, 0x22, 0x80, 0x00,
    0x43, 0x96, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00,
};
#pragma pop

/* 80BDA100-80BDA130 000040 0030+00 1/1 0/0 0/0 .data            l_side_co_offset */
SECTION_DATA static u8 l_side_co_offset[48] = {
    0xC3, 0x7F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0xF0, 0x00, 0x00, 0xC3, 0x07, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0xC1, 0xF0, 0x00, 0x00, 0x43, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xC1, 0xF0, 0x00, 0x00, 0x43, 0x7F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0xF0, 0x00, 0x00,
};

/* 80BDA130-80BDA174 000070 0044+00 0/1 0/0 0/0 .data            l_cyl_src */
#pragma push
#pragma force_active on
static dCcD_SrcCyl l_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x0, 0x0}, 0x79}}, // mObj
        {dCcD_SE_NONE, 0x1, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x6}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        70.0f, // mRadius
        450.0f // mHeight
    } // mCyl
};
#pragma pop

/* 80BDA174-80BDA1B8 0000B4 0044+00 0/1 0/0 0/0 .data            l_cyl_src2 */
#pragma push
#pragma force_active on
static dCcD_SrcCyl l_cyl_src2 = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x0, 0x0}, 0x19}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x6}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        60.0f, // mRadius
        300.0f // mHeight
    } // mCyl
};
#pragma pop

/* 80BDA1B8-80BDA1F8 0000F8 0040+00 0/1 0/0 0/0 .data            l_sph_src */
#pragma push
#pragma force_active on
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
#pragma pop

/* 80BD6AEC-80BD6CCC 00018C 01E0+00 1/0 0/0 0/0 .text            Create__12daObjCwall_cFv */
void daObjCwall_c::Create() {
    // NONMATCHING
}

/* 80BD6CCC-80BD6D08 00036C 003C+00 2/2 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80BD6D08-80BD6E94 0003A8 018C+00 1/0 0/0 0/0 .text            CreateHeap__12daObjCwall_cFv */
void daObjCwall_c::CreateHeap() {
    // NONMATCHING
}

/* 80BD6E94-80BD6ED0 000534 003C+00 1/1 0/0 0/0 .text            __dt__Q212daObjCwall_c7chain_sFv */
daObjCwall_c::chain_s::~chain_s() {
    // NONMATCHING
}

/* 80BD6ED0-80BD6ED4 000570 0004+00 1/1 0/0 0/0 .text            __ct__Q212daObjCwall_c7chain_sFv */
daObjCwall_c::chain_s::chain_s() {
    /* empty function */
}

/* 80BD6ED4-80BD6F80 000574 00AC+00 1/1 0/0 0/0 .text            create1st__12daObjCwall_cFv */
void daObjCwall_c::create1st() {
    // NONMATCHING
}

/* 80BD6F80-80BD7288 000620 0308+00 1/0 0/0 0/0 .text            Execute__12daObjCwall_cFPPA3_A4_f
 */
void daObjCwall_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BDA014-80BDA01C 000070 0008+00 0/6 0/0 0/0 .rodata          @4114 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4114[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BDA014, &lit_4114);
#pragma pop

/* 80BDA01C-80BDA024 000078 0008+00 0/6 0/0 0/0 .rodata          @4115 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4115[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BDA01C, &lit_4115);
#pragma pop

/* 80BDA024-80BDA02C 000080 0008+00 0/6 0/0 0/0 .rodata          @4116 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4116[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BDA024, &lit_4116);
#pragma pop

/* 80BDA02C-80BDA030 000088 0004+00 0/1 0/0 0/0 .rodata          @4117 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4117 = 338.0f;
COMPILER_STRIP_GATE(0x80BDA02C, &lit_4117);
#pragma pop

/* 80BDA030-80BDA034 00008C 0004+00 0/1 0/0 0/0 .rodata          @4118 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4118 = 208.0f;
COMPILER_STRIP_GATE(0x80BDA030, &lit_4118);
#pragma pop

/* 80BDA034-80BDA038 000090 0004+00 0/1 0/0 0/0 .rodata          @4119 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4119 = 168.0f;
COMPILER_STRIP_GATE(0x80BDA034, &lit_4119);
#pragma pop

/* 80BD7288-80BD7718 000928 0490+00 1/1 0/0 0/0 .text            setTension__12daObjCwall_cFv */
void daObjCwall_c::setTension() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BDA038-80BDA03C 000094 0004+00 1/1 0/0 0/0 .rodata          @4130 */
SECTION_RODATA static f32 const lit_4130 = 300.0f;
COMPILER_STRIP_GATE(0x80BDA038, &lit_4130);

/* 80BD7718-80BD7788 000DB8 0070+00 2/2 0/0 0/0 .text            calcSePos__12daObjCwall_cFv */
void daObjCwall_c::calcSePos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BDA300-80BDA304 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80BDA304-80BDA308 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80BDA308-80BDA30C 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80BDA30C-80BDA310 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80BDA310-80BDA314 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80BDA314-80BDA318 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80BDA318-80BDA31C 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 80BDA31C-80BDA320 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80BDA320-80BDA324 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80BDA324-80BDA328 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80BDA328-80BDA32C 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 80BDA32C-80BDA330 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80BDA330-80BDA334 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80BDA334-80BDA338 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80BDA338-80BDA33C 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 80BDA33C-80BDA340 000044 0001+03 0/0 0/0 0/0 .bss             @1009 */
#pragma push
#pragma force_active on
static u8 lit_1009[1 + 3 /* padding */];
#pragma pop

/* 80BDA340-80BDA34C 000048 000C+00 0/1 0/0 0/0 .bss             @3759 */
#pragma push
#pragma force_active on
static u8 lit_3759[12];
#pragma pop

/* 80BDA34C-80BDA358 000054 000C+00 1/2 0/0 0/0 .bss             l_chainOffset */
static u8 l_chainOffset[12];

/* 80BD7788-80BD7804 000E28 007C+00 5/5 0/0 0/0 .text getChainBasePos__12daObjCwall_cFP4cXyz */
void daObjCwall_c::getChainBasePos(cXyz* param_0) {
    // NONMATCHING
}

/* 80BD7804-80BD7AD4 000EA4 02D0+00 1/1 0/0 0/0 .text            setChainMtx__12daObjCwall_cFv */
void daObjCwall_c::setChainMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BDA03C-80BDA040 000098 0004+00 0/1 0/0 0/0 .rodata          @4316 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4316 = -6.0f;
COMPILER_STRIP_GATE(0x80BDA03C, &lit_4316);
#pragma pop

/* 80BDA040-80BDA044 00009C 0004+00 0/3 0/0 0/0 .rodata          @4317 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4317 = 5.0f;
COMPILER_STRIP_GATE(0x80BDA040, &lit_4317);
#pragma pop

/* 80BDA044-80BDA048 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4318 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4318 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80BDA044, &lit_4318);
#pragma pop

/* 80BDA048-80BDA04C 0000A4 0004+00 0/2 0/0 0/0 .rodata          @4319 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4319 = 100.0f;
COMPILER_STRIP_GATE(0x80BDA048, &lit_4319);
#pragma pop

/* 80BDA04C-80BDA050 0000A8 0004+00 0/2 0/0 0/0 .rodata          @4320 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4320 = 15.0f;
COMPILER_STRIP_GATE(0x80BDA04C, &lit_4320);
#pragma pop

/* 80BDA050-80BDA054 0000AC 0004+00 0/2 0/0 0/0 .rodata          @4321 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4321 = 38.0f;
COMPILER_STRIP_GATE(0x80BDA050, &lit_4321);
#pragma pop

/* 80BDA054-80BDA058 0000B0 0004+00 0/2 0/0 0/0 .rodata          @4322 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4322 = 8.0f;
COMPILER_STRIP_GATE(0x80BDA054, &lit_4322);
#pragma pop

/* 80BDA058-80BDA05C 0000B4 0004+00 0/3 0/0 0/0 .rodata          @4323 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4323 = 0.5f;
COMPILER_STRIP_GATE(0x80BDA058, &lit_4323);
#pragma pop

/* 80BD7AD4-80BD7ED8 001174 0404+00 1/1 0/0 0/0 .text            chain_control__12daObjCwall_cFv */
void daObjCwall_c::chain_control() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BDA05C-80BDA060 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4486 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4486 = 60.0f;
COMPILER_STRIP_GATE(0x80BDA05C, &lit_4486);
#pragma pop

/* 80BDA060-80BDA064 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4487 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4487 = -10.0f;
COMPILER_STRIP_GATE(0x80BDA060, &lit_4487);
#pragma pop

/* 80BDA064-80BDA068 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4488 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4488 = 25.0f;
COMPILER_STRIP_GATE(0x80BDA064, &lit_4488);
#pragma pop

/* 80BDA068-80BDA06C 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4489 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4489 = 10.0f;
COMPILER_STRIP_GATE(0x80BDA068, &lit_4489);
#pragma pop

/* 80BDA06C-80BDA070 0000C8 0004+00 0/2 0/0 0/0 .rodata          @4490 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4490 = 188.0f;
COMPILER_STRIP_GATE(0x80BDA06C, &lit_4490);
#pragma pop

/* 80BDA070-80BDA074 0000CC 0004+00 0/2 0/0 0/0 .rodata          @4491 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4491 = 6.0f;
COMPILER_STRIP_GATE(0x80BDA070, &lit_4491);
#pragma pop

/* 80BD7ED8-80BD84C0 001578 05E8+00 1/1 0/0 0/0 .text            chain_control2__12daObjCwall_cFv */
void daObjCwall_c::chain_control2() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BDA1F8-80BDA204 -00001 000C+00 0/1 0/0 0/0 .data            @4501 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4501[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWait__12daObjCwall_cFv,
};
#pragma pop

/* 80BDA204-80BDA210 -00001 000C+00 0/1 0/0 0/0 .data            @4502 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4502[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWalk__12daObjCwall_cFv,
};
#pragma pop

/* 80BDA210-80BDA21C -00001 000C+00 0/1 0/0 0/0 .data            @4503 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4503[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeClose__12daObjCwall_cFv,
};
#pragma pop

/* 80BDA21C-80BDA240 00015C 0024+00 0/1 0/0 0/0 .data            l_func$4500 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80BDA358-80BDA364 000060 000C+00 0/1 0/0 0/0 .bss             @3760 */
#pragma push
#pragma force_active on
static u8 lit_3760[12];
#pragma pop

/* 80BDA364-80BDA370 00006C 000C+00 0/1 0/0 0/0 .bss             l_smokeSetOffset */
#pragma push
#pragma force_active on
static u8 l_smokeSetOffset[12];
#pragma pop

/* 80BDA370-80BDA374 000078 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80BDA370[4];

/* 80BD84C0-80BD8594 001B60 00D4+00 1/1 0/0 0/0 .text block_mode_proc_call__12daObjCwall_cFv */
void daObjCwall_c::block_mode_proc_call() {
    // NONMATCHING
}

/* 80BD8594-80BD85C0 001C34 002C+00 2/2 0/0 0/0 .text            initWait__12daObjCwall_cFv */
void daObjCwall_c::initWait() {
    // NONMATCHING
}

/* 80BD85C0-80BD8748 001C60 0188+00 1/0 0/0 0/0 .text            modeWait__12daObjCwall_cFv */
void daObjCwall_c::modeWait() {
    // NONMATCHING
}

/* 80BD8748-80BD8778 001DE8 0030+00 2/2 0/0 0/0 .text            initWalk__12daObjCwall_cFv */
void daObjCwall_c::initWalk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BDA074-80BDA078 0000D0 0004+00 0/3 0/0 0/0 .rodata          @4665 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4665 = 1.0f;
COMPILER_STRIP_GATE(0x80BDA074, &lit_4665);
#pragma pop

/* 80BDA078-80BDA07C 0000D4 0004+00 0/2 0/0 0/0 .rodata          @4666 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4666 = 75.0f;
COMPILER_STRIP_GATE(0x80BDA078, &lit_4666);
#pragma pop

/* 80BDA07C-80BDA084 0000D8 0004+04 0/2 0/0 0/0 .rodata          @4667 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4667[1 + 1 /* padding */] = {
    -1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80BDA07C, &lit_4667);
#pragma pop

/* 80BDA084-80BDA08C 0000E0 0008+00 0/1 0/0 0/0 .rodata          @4669 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4669[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BDA084, &lit_4669);
#pragma pop

/* 80BD8778-80BD8BC8 001E18 0450+00 1/0 0/0 0/0 .text            modeWalk__12daObjCwall_cFv */
void daObjCwall_c::modeWalk() {
    // NONMATCHING
}

/* 80BD8BC8-80BD8BF0 002268 0028+00 1/1 0/0 0/0 .text            initClose__12daObjCwall_cFv */
void daObjCwall_c::initClose() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BDA08C-80BDA090 0000E8 0004+00 0/1 0/0 0/0 .rodata          @4884 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4884 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x80BDA08C, &lit_4884);
#pragma pop

/* 80BDA090-80BDA094 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4885 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4885 = 1.5f;
COMPILER_STRIP_GATE(0x80BDA090, &lit_4885);
#pragma pop

/* 80BD8BF0-80BD935C 002290 076C+00 1/0 0/0 0/0 .text            modeClose__12daObjCwall_cFv */
void daObjCwall_c::modeClose() {
    // NONMATCHING
}

/* 80BD935C-80BD9414 0029FC 00B8+00 2/2 0/0 0/0 .text            setPower__12daObjCwall_cFfPs */
void daObjCwall_c::setPower(f32 param_0, s16* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BDA094-80BDA098 0000F0 0004+00 0/1 0/0 0/0 .rodata          @4961 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4961 = -95.0f;
COMPILER_STRIP_GATE(0x80BDA094, &lit_4961);
#pragma pop

/* 80BDA098-80BDA09C 0000F4 0004+00 0/1 0/0 0/0 .rodata          @4962 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4962 = 95.0f;
COMPILER_STRIP_GATE(0x80BDA098, &lit_4962);
#pragma pop

/* 80BD9414-80BD95A0 002AB4 018C+00 1/1 0/0 0/0 .text            checkWall__12daObjCwall_cFv */
void daObjCwall_c::checkWall() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BDA09C-80BDA0A0 0000F8 0004+00 0/1 0/0 0/0 .rodata          @5019 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5019 = 290.0f;
COMPILER_STRIP_GATE(0x80BDA09C, &lit_5019);
#pragma pop

/* 80BD95A0-80BD977C 002C40 01DC+00 2/2 0/0 0/0 .text            checkPullNow__12daObjCwall_cFv */
void daObjCwall_c::checkPullNow() {
    // NONMATCHING
}

/* 80BD977C-80BD9848 002E1C 00CC+00 2/2 0/0 0/0 .text            checkPull__12daObjCwall_cFv */
void daObjCwall_c::checkPull() {
    // NONMATCHING
}

/* 80BD9848-80BD9948 002EE8 0100+00 1/0 0/0 0/0 .text            Draw__12daObjCwall_cFv */
void daObjCwall_c::Draw() {
    // NONMATCHING
}

/* 80BD9948-80BD9988 002FE8 0040+00 1/0 0/0 0/0 .text            Delete__12daObjCwall_cFv */
void daObjCwall_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BDA240-80BDA260 -00001 0020+00 1/0 0/0 0/0 .data            daObjCwall_METHODS */
static actor_method_class daObjCwall_METHODS = {
    (process_method_func)daObjCwall_create1st__FP12daObjCwall_c,
    (process_method_func)daObjCwall_MoveBGDelete__FP12daObjCwall_c,
    (process_method_func)daObjCwall_MoveBGExecute__FP12daObjCwall_c,
    0,
    (process_method_func)daObjCwall_MoveBGDraw__FP12daObjCwall_c,
};

/* 80BDA260-80BDA290 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_ChainWall */
extern actor_process_profile_definition g_profile_Obj_ChainWall = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_ChainWall,     // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjCwall_c),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  598,                    // mPriority
  &daObjCwall_METHODS,    // sub_method
  0x000C0000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80BDA290-80BDA29C 0001D0 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80BDA29C-80BDA2A8 0001DC 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80BDA2A8-80BDA2B4 0001E8 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80BDA2B4-80BDA2C0 0001F4 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80BDA2C0-80BDA2CC 000200 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80BDA2CC-80BDA2F4 00020C 0028+00 1/1 0/0 0/0 .data            __vt__12daObjCwall_c */
SECTION_DATA extern void* __vt__12daObjCwall_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__12daObjCwall_cFv,
    (void*)Create__12daObjCwall_cFv,
    (void*)Execute__12daObjCwall_cFPPA3_A4_f,
    (void*)Draw__12daObjCwall_cFv,
    (void*)Delete__12daObjCwall_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80BD9988-80BD9B70 003028 01E8+00 1/0 0/0 0/0 .text daObjCwall_create1st__FP12daObjCwall_c */
static void daObjCwall_create1st(daObjCwall_c* param_0) {
    // NONMATCHING
}

/* 80BD9B70-80BD9B74 003210 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80BD9B74-80BD9BF8 003214 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_CylFv */
// dCcD_Cyl::dCcD_Cyl() {
extern "C" void __ct__8dCcD_CylFv() {
    // NONMATCHING
}

/* 80BD9BF8-80BD9C40 003298 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80BD9C40-80BD9D0C 0032E0 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_CylFv */
// dCcD_Cyl::~dCcD_Cyl() {
extern "C" void __dt__8dCcD_CylFv() {
    // NONMATCHING
}

/* 80BD9D0C-80BD9D54 0033AC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80BD9D54-80BD9D9C 0033F4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80BD9D9C-80BD9DF8 00343C 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80BD9DF8-80BD9E18 003498 0020+00 1/0 0/0 0/0 .text daObjCwall_MoveBGDelete__FP12daObjCwall_c */
static void daObjCwall_MoveBGDelete(daObjCwall_c* param_0) {
    // NONMATCHING
}

/* 80BD9E18-80BD9E38 0034B8 0020+00 1/0 0/0 0/0 .text daObjCwall_MoveBGExecute__FP12daObjCwall_c
 */
static void daObjCwall_MoveBGExecute(daObjCwall_c* param_0) {
    // NONMATCHING
}

/* 80BD9E38-80BD9E64 0034D8 002C+00 1/0 0/0 0/0 .text daObjCwall_MoveBGDraw__FP12daObjCwall_c */
static void daObjCwall_MoveBGDraw(daObjCwall_c* param_0) {
    // NONMATCHING
}

/* 80BD9E64-80BD9EAC 003504 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80BD9EAC-80BD9EC8 00354C 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<s>__FPs */
extern "C" void func_80BD9EAC(void* _this, s16* param_0) {
    // NONMATCHING
}

/* 80BD9EC8-80BD9EE4 003568 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<Uc>__FPUc */
extern "C" void func_80BD9EC8(void* _this, u8* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BDA0A0-80BDA0A4 0000FC 0004+00 0/1 0/0 0/0 .rodata          @5316 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5316 = 105.0f;
COMPILER_STRIP_GATE(0x80BDA0A0, &lit_5316);
#pragma pop

/* 80BDA0A4-80BDA0A8 000100 0004+00 0/1 0/0 0/0 .rodata          @5317 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5317 = 30.0f;
COMPILER_STRIP_GATE(0x80BDA0A4, &lit_5317);
#pragma pop

/* 80BDA0A8-80BDA0AC 000104 0004+00 0/1 0/0 0/0 .rodata          @5318 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5318 = -200.0f;
COMPILER_STRIP_GATE(0x80BDA0A8, &lit_5318);
#pragma pop

/* 80BD9EE4-80BD9F74 003584 0090+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_cwall_cpp */
void __sinit_d_a_obj_cwall_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80BD9EE4, __sinit_d_a_obj_cwall_cpp);
#pragma pop

/* 80BD9F74-80BD9F90 003614 001C+00 1/1 0/0 0/0 .text            getRightHandPos__9daPy_py_cCFv */
// void daPy_py_c::getRightHandPos() const {
extern "C" void getRightHandPos__9daPy_py_cCFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BDA374-80BDA378 00007C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80BDA374[4];
#pragma pop

/* 80BDA378-80BDA37C 000080 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80BDA378[4];
#pragma pop

/* 80BDA37C-80BDA380 000084 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80BDA37C[4];
#pragma pop

/* 80BDA380-80BDA384 000088 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80BDA380[4];
#pragma pop

/* 80BDA384-80BDA388 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80BDA384[4];
#pragma pop

/* 80BDA388-80BDA38C 000090 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80BDA388[4];
#pragma pop

/* 80BDA38C-80BDA390 000094 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80BDA38C[4];
#pragma pop

/* 80BDA390-80BDA394 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80BDA390[4];
#pragma pop

/* 80BDA394-80BDA398 00009C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80BDA394[4];
#pragma pop

/* 80BDA398-80BDA39C 0000A0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80BDA398[4];
#pragma pop

/* 80BDA39C-80BDA3A0 0000A4 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80BDA39C[4];
#pragma pop

/* 80BDA3A0-80BDA3A4 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80BDA3A0[4];
#pragma pop

/* 80BDA3A4-80BDA3A8 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80BDA3A4[4];
#pragma pop

/* 80BDA3A8-80BDA3AC 0000B0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80BDA3A8[4];
#pragma pop

/* 80BDA3AC-80BDA3B0 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80BDA3AC[4];
#pragma pop

/* 80BDA3B0-80BDA3B4 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80BDA3B0[4];
#pragma pop

/* 80BDA3B4-80BDA3B8 0000BC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80BDA3B4[4];
#pragma pop

/* 80BDA3B8-80BDA3BC 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80BDA3B8[4];
#pragma pop

/* 80BDA3BC-80BDA3C0 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80BDA3BC[4];
#pragma pop

/* 80BDA3C0-80BDA3C4 0000C8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80BDA3C0[4];
#pragma pop

/* 80BDA3C4-80BDA3C8 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80BDA3C4[4];
#pragma pop

/* 80BDA3C8-80BDA3CC 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80BDA3C8[4];
#pragma pop

/* 80BDA3CC-80BDA3D0 0000D4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80BDA3CC[4];
#pragma pop

/* 80BDA3D0-80BDA3D4 0000D8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80BDA3D0[4];
#pragma pop

/* 80BDA3D4-80BDA3D8 0000DC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80BDA3D4[4];
#pragma pop

/* 80BDA0AC-80BDA0AC 000108 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
