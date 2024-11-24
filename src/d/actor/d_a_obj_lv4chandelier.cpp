/**
 * @file d_a_obj_lv4chandelier.cpp
 * 
*/

#include "d/actor/d_a_obj_lv4chandelier.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c();
extern "C" void create1st__14daObjLv4Chan_cFv();
extern "C" void setMtxChain__14daObjLv4Chan_cFPQ214daObjLv4Chan_c8ChainPosP10dMdl_obj_ci();
extern "C" void setMtx__14daObjLv4Chan_cFv();
extern "C" void rideActor__14daObjLv4Chan_cFP10fopAc_ac_c();
extern "C" void CreateHeap__14daObjLv4Chan_cFv();
extern "C" static void searchSwChain__FPvPv();
extern "C" void Create__14daObjLv4Chan_cFv();
extern "C" void constraintChain__14daObjLv4Chan_cFPQ214daObjLv4Chan_c8ChainPosi();
extern "C" void constraintBase__14daObjLv4Chan_cFv();
extern "C" void calcVec__14daObjLv4Chan_cFPQ214daObjLv4Chan_c8ChainPosi();
extern "C" void chkGnd__14daObjLv4Chan_cFv();
extern "C" void Execute__14daObjLv4Chan_cFPPA3_A4_f();
extern "C" void Draw__14daObjLv4Chan_cFv();
extern "C" void Delete__14daObjLv4Chan_cFv();
extern "C" static void daObjLv4Chan_create1st__FP14daObjLv4Chan_c();
extern "C" void __dt__14dBgS_ObjGndChkFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" static void daObjLv4Chan_MoveBGDelete__FP14daObjLv4Chan_c();
extern "C" static void daObjLv4Chan_MoveBGExecute__FP14daObjLv4Chan_c();
extern "C" static void daObjLv4Chan_MoveBGDraw__FP14daObjLv4Chan_c();
extern "C" static void func_80C66540();
extern "C" static void func_80C66548();
extern "C" static void func_80C66550();
extern "C" void __ct__10dMdl_obj_cFv();
extern "C" void __dt__Q214daObjLv4Chan_c8ChainPosFv();
extern "C" void __ct__Q214daObjLv4Chan_c8ChainPosFv();
extern "C" void checkTight__14daObjSwChain_cFv();
extern "C" extern char const* const d_a_obj_lv4chandelier__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void dKyw_get_wind_vecpow__Fv();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void getHitSeID__12dCcD_GObjInfFUci();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void entryObj__6dMdl_cFP10dMdl_obj_c();
extern "C" void entry__10dMdl_mng_cFP12J3DModelDataUsi();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void normalize__4cXyzFv();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void cM3d_VectorProduct__FPC4cXyzPC4cXyzPC4cXyzP4cXyz();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nwa__FUl();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void __construct_new_array();
extern "C" void _savegpr_18();
extern "C" void _savegpr_21();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_29();
extern "C" void _restgpr_18();
extern "C" void _restgpr_21();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" f32 Zero__4cXyz[3];
extern "C" u8 BaseY__4cXyz[12];
extern "C" u8 BaseZ__4cXyz[12];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* 80C63338-80C63360 000078 0028+00 1/1 0/0 0/0 .text
 * rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c              */
static void rideCallBack(dBgW* param_0, fopAc_ac_c* param_1, fopAc_ac_c* param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C66984-80C66984 000124 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C66984 = "P_Lv4Chan";
#pragma pop

/* 80C66990-80C66994 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_lv4chandelier__stringBase0;

/* 80C63360-80C634CC 0000A0 016C+00 1/1 0/0 0/0 .text            create1st__14daObjLv4Chan_cFv */
void daObjLv4Chan_c::create1st() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C66860-80C66868 000000 0008+00 10/10 0/0 0/0 .rodata          l_bmdidx */
SECTION_RODATA static u8 const l_bmdidx[8] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05,
};
COMPILER_STRIP_GATE(0x80C66860, &l_bmdidx);

/* 80C66868-80C6686C 000008 0004+00 0/4 0/0 0/0 .rodata          @3767 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3767 = -1.0f;
COMPILER_STRIP_GATE(0x80C66868, &lit_3767);
#pragma pop

/* 80C6686C-80C66870 00000C 0004+00 0/6 0/0 0/0 .rodata          @3768 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3768 = 1.0f;
COMPILER_STRIP_GATE(0x80C6686C, &lit_3768);
#pragma pop

/* 80C66870-80C66874 000010 0004+00 0/1 0/0 0/0 .rodata          @3769 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_3769 = 0x3FC90FDB;
COMPILER_STRIP_GATE(0x80C66870, &lit_3769);
#pragma pop

/* 80C634CC-80C636B4 00020C 01E8+00 1/1 0/0 0/0 .text
 * setMtxChain__14daObjLv4Chan_cFPQ214daObjLv4Chan_c8ChainPosP10dMdl_obj_ci */
void daObjLv4Chan_c::setMtxChain(daObjLv4Chan_c::ChainPos* param_0, dMdl_obj_c* param_1,
                                     int param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C66874-80C66878 000014 0004+00 0/1 0/0 0/0 .rodata          @3834 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3834 = -150.0f;
COMPILER_STRIP_GATE(0x80C66874, &lit_3834);
#pragma pop

/* 80C66878-80C6687C 000018 0004+00 0/6 0/0 0/0 .rodata          @3835 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3835[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C66878, &lit_3835);
#pragma pop

/* 80C6687C-80C66880 00001C 0004+00 0/2 0/0 0/0 .rodata          @3836 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3836 = 1.0f / 3.0f;
COMPILER_STRIP_GATE(0x80C6687C, &lit_3836);
#pragma pop

/* 80C636B4-80C639B4 0003F4 0300+00 2/2 0/0 0/0 .text            setMtx__14daObjLv4Chan_cFv */
void daObjLv4Chan_c::setMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C66880-80C66884 000020 0004+00 0/1 0/0 0/0 .rodata          @3888 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3888 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x80C66880, &lit_3888);
#pragma pop

/* 80C66884-80C66888 000024 0004+00 0/1 0/0 0/0 .rodata          @3889 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3889 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C66884, &lit_3889);
#pragma pop

/* 80C66888-80C6688C 000028 0004+00 0/1 0/0 0/0 .rodata          @3890 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_3890 = 0x3BF5C28F;
COMPILER_STRIP_GATE(0x80C66888, &lit_3890);
#pragma pop

/* 80C6688C-80C66890 00002C 0004+00 0/1 0/0 0/0 .rodata          @3891 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3891 = 1.0f / 40.0f;
COMPILER_STRIP_GATE(0x80C6688C, &lit_3891);
#pragma pop

/* 80C639B4-80C63CFC 0006F4 0348+00 1/1 0/0 0/0 .text rideActor__14daObjLv4Chan_cFP10fopAc_ac_c */
void daObjLv4Chan_c::rideActor(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C63CFC-80C63F34 000A3C 0238+00 1/0 0/0 0/0 .text            CreateHeap__14daObjLv4Chan_cFv */
void daObjLv4Chan_c::CreateHeap() {
    // NONMATCHING
}

/* 80C63F34-80C63FA8 000C74 0074+00 1/1 0/0 0/0 .text            searchSwChain__FPvPv */
static void searchSwChain(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C66890-80C66894 000030 0004+00 0/2 0/0 0/0 .rodata          @4080 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4080 = 0xC3231EB8;
COMPILER_STRIP_GATE(0x80C66890, &lit_4080);
#pragma pop

/* 80C66894-80C66898 000034 0004+00 0/2 0/0 0/0 .rodata          @4081 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4081 = 0xC38D451F;
COMPILER_STRIP_GATE(0x80C66894, &lit_4081);
#pragma pop

/* 80C66898-80C6689C 000038 0004+00 0/2 0/0 0/0 .rodata          @4082 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4082 = 0x438D451F;
COMPILER_STRIP_GATE(0x80C66898, &lit_4082);
#pragma pop

/* 80C6689C-80C668A0 00003C 0004+00 0/2 0/0 0/0 .rodata          @4083 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4083 = 326.25f;
COMPILER_STRIP_GATE(0x80C6689C, &lit_4083);
#pragma pop

/* 80C668A0-80C668A4 000040 0004+00 0/4 0/0 0/0 .rodata          @4084 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4084 = 35.0f;
COMPILER_STRIP_GATE(0x80C668A0, &lit_4084);
#pragma pop

/* 80C668A4-80C668A8 000044 0004+00 0/1 0/0 0/0 .rodata          @4085 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4085 = -800.0f;
COMPILER_STRIP_GATE(0x80C668A4, &lit_4085);
#pragma pop

/* 80C668A8-80C668AC 000048 0004+00 0/1 0/0 0/0 .rodata          @4086 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4086 = 40.0f;
COMPILER_STRIP_GATE(0x80C668A8, &lit_4086);
#pragma pop

/* 80C668AC-80C668B0 00004C 0004+00 0/1 0/0 0/0 .rodata          @4087 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4087 = 1700.0f;
COMPILER_STRIP_GATE(0x80C668AC, &lit_4087);
#pragma pop

/* 80C668B0-80C668B4 000050 0004+00 0/1 0/0 0/0 .rodata          @4088 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4088 = -600.0f;
COMPILER_STRIP_GATE(0x80C668B0, &lit_4088);
#pragma pop

/* 80C668B4-80C668B8 000054 0004+00 0/1 0/0 0/0 .rodata          @4089 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4089 = 800.0f;
COMPILER_STRIP_GATE(0x80C668B4, &lit_4089);
#pragma pop

/* 80C668B8-80C668BC 000058 0004+00 0/2 0/0 0/0 .rodata          @4090 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4090 = 10.0f;
COMPILER_STRIP_GATE(0x80C668B8, &lit_4090);
#pragma pop

/* 80C668BC-80C668C0 00005C 0004+00 0/1 0/0 0/0 .rodata          @4091 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4091 = 600.0f;
COMPILER_STRIP_GATE(0x80C668BC, &lit_4091);
#pragma pop

/* 80C668C0-80C668C8 000060 0008+00 0/3 0/0 0/0 .rodata          @4093 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4093[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C668C0, &lit_4093);
#pragma pop

/* 80C66994-80C669D4 000004 0040+00 1/1 0/0 0/0 .data            cc_sph_src */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x11}, 0x79}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x5, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 80C63FA8-80C6449C 000CE8 04F4+00 1/0 0/0 0/0 .text            Create__14daObjLv4Chan_cFv */
void daObjLv4Chan_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C668C8-80C668CC 000068 0004+00 0/1 0/0 0/0 .rodata          @4154 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4154 = 0xBF350481;
COMPILER_STRIP_GATE(0x80C668C8, &lit_4154);
#pragma pop

/* 80C668CC-80C668D0 00006C 0004+00 0/1 0/0 0/0 .rodata          @4155 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4155 = 1225.0f;
COMPILER_STRIP_GATE(0x80C668CC, &lit_4155);
#pragma pop

/* 80C6449C-80C64668 0011DC 01CC+00 1/1 0/0 0/0 .text
 * constraintChain__14daObjLv4Chan_cFPQ214daObjLv4Chan_c8ChainPosi */
void daObjLv4Chan_c::constraintChain(daObjLv4Chan_c::ChainPos* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C668D0-80C668DC 000070 000C+00 0/1 0/0 0/0 .rodata          l_pos0 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_pos0[12] = {
    0xC3, 0x23, 0x1E, 0xB8, 0x43, 0x16, 0x00, 0x00, 0xC3, 0x8D, 0x45, 0x1F,
};
COMPILER_STRIP_GATE(0x80C668D0, &l_pos0);
#pragma pop

/* 80C668DC-80C668E8 00007C 000C+00 0/1 0/0 0/0 .rodata          l_pos1 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_pos1[12] = {
    0xC3, 0x23, 0x1E, 0xB8, 0x43, 0x16, 0x00, 0x00, 0x43, 0x8D, 0x45, 0x1F,
};
COMPILER_STRIP_GATE(0x80C668DC, &l_pos1);
#pragma pop

/* 80C668E8-80C668F4 000088 000C+00 0/1 0/0 0/0 .rodata          l_pos2 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_pos2[12] = {
    0x43, 0xA3, 0x20, 0x00, 0x43, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C668E8, &l_pos2);
#pragma pop

/* 80C668F4-80C668F8 000094 0004+00 0/2 0/0 0/0 .rodata          @4190 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4190 = 0.5f;
COMPILER_STRIP_GATE(0x80C668F4, &lit_4190);
#pragma pop

/* 80C64668-80C647FC 0013A8 0194+00 1/1 0/0 0/0 .text            constraintBase__14daObjLv4Chan_cFv
 */
void daObjLv4Chan_c::constraintBase() {
    // NONMATCHING
}

/* 80C647FC-80C64878 00153C 007C+00 1/1 0/0 0/0 .text
 * calcVec__14daObjLv4Chan_cFPQ214daObjLv4Chan_c8ChainPosi      */
void daObjLv4Chan_c::calcVec(daObjLv4Chan_c::ChainPos* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C668F8-80C668FC 000098 0004+00 1/1 0/0 0/0 .rodata          @4220 */
SECTION_RODATA static f32 const lit_4220 = 300.0f;
COMPILER_STRIP_GATE(0x80C668F8, &lit_4220);

/* 80C64878-80C648F4 0015B8 007C+00 2/2 0/0 0/0 .text            chkGnd__14daObjLv4Chan_cFv */
void daObjLv4Chan_c::chkGnd() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C668FC-80C66924 00009C 0028+00 0/1 0/0 0/0 .rodata          l_curve */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_curve[40] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x80C668FC, &l_curve);
#pragma pop

/* 80C66924-80C66928 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4843 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4843 = 0.125f;
COMPILER_STRIP_GATE(0x80C66924, &lit_4843);
#pragma pop

/* 80C66928-80C6692C 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4844 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4844 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C66928, &lit_4844);
#pragma pop

/* 80C6692C-80C66930 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4845 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4845 = 3.0f;
COMPILER_STRIP_GATE(0x80C6692C, &lit_4845);
#pragma pop

/* 80C66930-80C66934 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4846 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4846 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80C66930, &lit_4846);
#pragma pop

/* 80C66934-80C66938 0000D4 0004+00 0/2 0/0 0/0 .rodata          @4847 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4847 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C66934, &lit_4847);
#pragma pop

/* 80C66938-80C6693C 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4848 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4848 = 6.0f;
COMPILER_STRIP_GATE(0x80C66938, &lit_4848);
#pragma pop

/* 80C6693C-80C66940 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4849 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4849 = 15.0f;
COMPILER_STRIP_GATE(0x80C6693C, &lit_4849);
#pragma pop

/* 80C66940-80C66944 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4850 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4850 = -4.0f;
COMPILER_STRIP_GATE(0x80C66940, &lit_4850);
#pragma pop

/* 80C66944-80C66948 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4851 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4851 = 0xBF5DB22D;
COMPILER_STRIP_GATE(0x80C66944, &lit_4851);
#pragma pop

/* 80C66948-80C66950 0000E8 0004+04 0/1 0/0 0/0 .rodata          @4852 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4852[1 + 1 /* padding */] = {
    0x3B449BA6,
    /* padding */
    0x00000000,
};
COMPILER_STRIP_GATE(0x80C66948, &lit_4852);
#pragma pop

/* 80C648F4-80C65F04 001634 1610+00 1/0 0/0 0/0 .text            Execute__14daObjLv4Chan_cFPPA3_A4_f
 */
void daObjLv4Chan_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C66950-80C66958 0000F0 0008+00 0/1 0/0 0/0 .rodata          @4926 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4926[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C66950, &lit_4926);
#pragma pop

/* 80C66958-80C66960 0000F8 0008+00 0/1 0/0 0/0 .rodata          @4927 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4927[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C66958, &lit_4927);
#pragma pop

/* 80C66960-80C66968 000100 0008+00 0/1 0/0 0/0 .rodata          @4928 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4928[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C66960, &lit_4928);
#pragma pop

/* 80C66968-80C6696C 000108 0004+00 0/1 0/0 0/0 .rodata          @4982 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4982 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80C66968, &lit_4982);
#pragma pop

/* 80C6696C-80C66970 00010C 0004+00 0/1 0/0 0/0 .rodata          @4983 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4983 = -1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C6696C, &lit_4983);
#pragma pop

/* 80C66970-80C66974 000110 0004+00 0/1 0/0 0/0 .rodata          @4984 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4984 = 500.0f;
COMPILER_STRIP_GATE(0x80C66970, &lit_4984);
#pragma pop

/* 80C66974-80C66978 000114 0004+00 0/1 0/0 0/0 .rodata          @4985 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4985 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C66974, &lit_4985);
#pragma pop

/* 80C66978-80C6697C 000118 0004+00 0/1 0/0 0/0 .rodata          @4986 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4986 = 2000.0f;
COMPILER_STRIP_GATE(0x80C66978, &lit_4986);
#pragma pop

/* 80C6697C-80C66980 00011C 0004+00 0/1 0/0 0/0 .rodata          @4987 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4987 = 1600.0f;
COMPILER_STRIP_GATE(0x80C6697C, &lit_4987);
#pragma pop

/* 80C66980-80C66984 000120 0004+00 0/1 0/0 0/0 .rodata          @4988 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4988 = 160.0f;
COMPILER_STRIP_GATE(0x80C66980, &lit_4988);
#pragma pop

/* 80C65F04-80C66114 002C44 0210+00 1/0 0/0 0/0 .text            Draw__14daObjLv4Chan_cFv */
void daObjLv4Chan_c::Draw() {
    // NONMATCHING
}

/* 80C66114-80C66150 002E54 003C+00 1/0 0/0 0/0 .text            Delete__14daObjLv4Chan_cFv */
void daObjLv4Chan_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C669D4-80C669F4 -00001 0020+00 1/0 0/0 0/0 .data            daObjLv4Chan_METHODS */
static actor_method_class daObjLv4Chan_METHODS = {
    (process_method_func)daObjLv4Chan_create1st__FP14daObjLv4Chan_c,
    (process_method_func)daObjLv4Chan_MoveBGDelete__FP14daObjLv4Chan_c,
    (process_method_func)daObjLv4Chan_MoveBGExecute__FP14daObjLv4Chan_c,
    0,
    (process_method_func)daObjLv4Chan_MoveBGDraw__FP14daObjLv4Chan_c,
};

/* 80C669F4-80C66A24 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv4Chan */
extern actor_process_profile_definition g_profile_Obj_Lv4Chan = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Lv4Chan,       // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjLv4Chan_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  674,                    // mPriority
  &daObjLv4Chan_METHODS,  // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C66A24-80C66A30 000094 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C66A30-80C66A3C 0000A0 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80C66A3C-80C66A6C 0000AC 0030+00 2/2 0/0 0/0 .data            __vt__14dBgS_ObjGndChk */
SECTION_DATA extern void* __vt__14dBgS_ObjGndChk[12] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14dBgS_ObjGndChkFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C66540,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C66550,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C66548,
};

/* 80C66A6C-80C66A94 0000DC 0028+00 1/1 0/0 0/0 .data            __vt__14daObjLv4Chan_c */
SECTION_DATA extern void* __vt__14daObjLv4Chan_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__14daObjLv4Chan_cFv,
    (void*)Create__14daObjLv4Chan_cFv,
    (void*)Execute__14daObjLv4Chan_cFPPA3_A4_f,
    (void*)Draw__14daObjLv4Chan_cFv,
    (void*)Delete__14daObjLv4Chan_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80C66150-80C6627C 002E90 012C+00 1/0 0/0 0/0 .text daObjLv4Chan_create1st__FP14daObjLv4Chan_c
 */
static void daObjLv4Chan_create1st(daObjLv4Chan_c* param_0) {
    // NONMATCHING
}

/* 80C6627C-80C662F4 002FBC 0078+00 4/3 0/0 0/0 .text            __dt__14dBgS_ObjGndChkFv */
// dBgS_ObjGndChk::~dBgS_ObjGndChk() {
extern "C" void __dt__14dBgS_ObjGndChkFv() {
    // NONMATCHING
}

/* 80C662F4-80C663C0 003034 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80C663C0-80C66444 003100 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80C66444-80C6648C 003184 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80C6648C-80C664D4 0031CC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80C664D4-80C664F4 003214 0020+00 1/0 0/0 0/0 .text
 * daObjLv4Chan_MoveBGDelete__FP14daObjLv4Chan_c                */
static void daObjLv4Chan_MoveBGDelete(daObjLv4Chan_c* param_0) {
    // NONMATCHING
}

/* 80C664F4-80C66514 003234 0020+00 1/0 0/0 0/0 .text
 * daObjLv4Chan_MoveBGExecute__FP14daObjLv4Chan_c               */
static void daObjLv4Chan_MoveBGExecute(daObjLv4Chan_c* param_0) {
    // NONMATCHING
}

/* 80C66514-80C66540 003254 002C+00 1/0 0/0 0/0 .text daObjLv4Chan_MoveBGDraw__FP14daObjLv4Chan_c
 */
static void daObjLv4Chan_MoveBGDraw(daObjLv4Chan_c* param_0) {
    // NONMATCHING
}

/* 80C66540-80C66548 003280 0008+00 1/0 0/0 0/0 .text            @20@__dt__14dBgS_ObjGndChkFv */
static void func_80C66540() {
    // NONMATCHING
}

/* 80C66548-80C66550 003288 0008+00 1/0 0/0 0/0 .text            @76@__dt__14dBgS_ObjGndChkFv */
static void func_80C66548() {
    // NONMATCHING
}

/* 80C66550-80C66558 003290 0008+00 1/0 0/0 0/0 .text            @60@__dt__14dBgS_ObjGndChkFv */
static void func_80C66550() {
    // NONMATCHING
}

/* 80C66558-80C66564 003298 000C+00 1/1 0/0 0/0 .text            __ct__10dMdl_obj_cFv */
// dMdl_obj_c::dMdl_obj_c() {
extern "C" void __ct__10dMdl_obj_cFv() {
    // NONMATCHING
}

/* 80C66564-80C665A0 0032A4 003C+00 1/1 0/0 0/0 .text            __dt__Q214daObjLv4Chan_c8ChainPosFv
 */
daObjLv4Chan_c::ChainPos::~ChainPos() {
    // NONMATCHING
}

/* 80C665A0-80C665A4 0032E0 0004+00 1/1 0/0 0/0 .text            __ct__Q214daObjLv4Chan_c8ChainPosFv
 */
daObjLv4Chan_c::ChainPos::ChainPos() {
    /* empty function */
}

/* 80C665A4-80C66858 0032E4 02B4+00 1/1 0/0 0/0 .text            checkTight__14daObjSwChain_cFv */
void daObjSwChain_c::checkTight() {
    // NONMATCHING
}

/* 80C66984-80C66984 000124 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
