/**
 * @file d_a_obj_brg.cpp
 * 
*/

#include "rel/d/a/obj/d_a_obj_brg/d_a_obj_brg.h"
#include "d/cc/d_cc_d.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" static void ride_call_back__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c();
extern "C" void __dt__4cXyzFv();
extern "C" static void daObj_Brg_Draw__FP13obj_brg_class();
extern "C" static void control1__FP13obj_brg_classP4br_s();
extern "C" static void control2__FP13obj_brg_classP4br_s();
extern "C" static void control3__FP13obj_brg_classP4br_s();
extern "C" static void cut_control1__FP13obj_brg_classP4br_s();
extern "C" static void cut_control2__FP13obj_brg_classP4br_s();
extern "C" static void himo_cut_control1__FP13obj_brg_classP4cXyzf();
extern "C" static void obj_brg_move__FP13obj_brg_class();
extern "C" static void daObj_Brg_Execute__FP13obj_brg_class();
extern "C" static void daObj_Brg_IsDelete__FP13obj_brg_class();
extern "C" static void daObj_Brg_Delete__FP13obj_brg_class();
extern "C" static void CreateInit__FP10fopAc_ac_c();
extern "C" static void CallbackCreateHeap__FP10fopAc_ac_c();
extern "C" static void daObj_Brg_Create__FP10fopAc_ac_c();
extern "C" void __dt__8dCcD_CylFv();
extern "C" void __ct__8dCcD_CylFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__4br_sFv();
extern "C" void __ct__4br_sFv();
extern "C" void __ct__11J3DLightObjFv();
extern "C" void __ct__4cXyzFv();
extern "C" extern char const* const d_a_obj_brg__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi();
extern "C" void update__19mDoExt_3DlineMat1_cFifR8_GXColorUsP12dKy_tevstr_c();
extern "C" void update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c();
extern "C" void setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void dPath_GetRoomPath__Fii();
extern "C" void dKyw_get_AllWind_vec__FP4cXyzP4cXyzPf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
extern "C" void Set__6dBgWSvFP6cBgD_tUl();
extern "C" void CopyBackVtx__6dBgWSvFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void at_power_check__FP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxTrans__FfffUc();
extern "C" void MtxScale__FfffUc();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void MtxPush__Fv();
extern "C" void MtxPull__Fv();
extern "C" void func_802807E0();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void __as__12J3DLightInfoFRC12J3DLightInfo();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __cvt_fp2unsigned();
extern "C" void _savegpr_17();
extern "C" void _savegpr_18();
extern "C" void _savegpr_20();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_28();
extern "C" void _restgpr_17();
extern "C" void _restgpr_18();
extern "C" void _restgpr_20();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_28();
extern "C" extern void* __vt__19mDoExt_3DlineMat1_c[5];
extern "C" extern void* __vt__6dBgWSv[65 + 1 /* padding */];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern void* calc_mtx[1 + 1 /* padding */];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80BC2148-80BC214C 000000 0004+00 13/13 0/0 0/0 .rodata          @3896 */
SECTION_RODATA static u8 const lit_3896[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80BC2148, &lit_3896);

/* 80BC214C-80BC2150 000004 0004+00 0/1 0/0 0/0 .rodata          @3897 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3897 = 51.0f;
COMPILER_STRIP_GATE(0x80BC214C, &lit_3897);
#pragma pop

/* 80BC2150-80BC2154 000008 0004+00 0/1 0/0 0/0 .rodata          @3898 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3898 = -0.5f;
COMPILER_STRIP_GATE(0x80BC2150, &lit_3898);
#pragma pop

/* 80BC2154-80BC2158 00000C 0004+00 0/1 0/0 0/0 .rodata          @3899 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3899 = 17.0f / 20.0f;
COMPILER_STRIP_GATE(0x80BC2154, &lit_3899);
#pragma pop

/* 80BC2158-80BC215C 000010 0004+00 0/5 0/0 0/0 .rodata          @3900 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3900 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80BC2158, &lit_3900);
#pragma pop

/* 80BC215C-80BC2160 000014 0004+00 0/7 0/0 0/0 .rodata          @3901 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3901 = 1.0f;
COMPILER_STRIP_GATE(0x80BC215C, &lit_3901);
#pragma pop

/* 80BC2160-80BC2164 000018 0004+00 0/1 0/0 0/0 .rodata          @3902 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3902 = -5.0f;
COMPILER_STRIP_GATE(0x80BC2160, &lit_3902);
#pragma pop

/* 80BC2164-80BC2168 00001C 0004+00 0/2 0/0 0/0 .rodata          @3903 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3903 = 100.0f;
COMPILER_STRIP_GATE(0x80BC2164, &lit_3903);
#pragma pop

/* 80BC2168-80BC216C 000020 0004+00 0/2 0/0 0/0 .rodata          @3904 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3904 = -31.0f;
COMPILER_STRIP_GATE(0x80BC2168, &lit_3904);
#pragma pop

/* 80BC216C-80BC2170 000024 0004+00 0/1 0/0 0/0 .rodata          @3905 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3905 = 70.0f;
COMPILER_STRIP_GATE(0x80BC216C, &lit_3905);
#pragma pop

/* 80BC2170-80BC2174 000028 0004+00 0/1 0/0 0/0 .rodata          @3906 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3906 = -20.0f;
COMPILER_STRIP_GATE(0x80BC2170, &lit_3906);
#pragma pop

/* 80BC2174-80BC2178 00002C 0004+00 0/7 0/0 0/0 .rodata          @3907 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3907 = 50.0f;
COMPILER_STRIP_GATE(0x80BC2174, &lit_3907);
#pragma pop

/* 80BC2178-80BC217C 000030 0004+00 0/1 0/0 0/0 .rodata          @3908 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3908 = -10.0f;
COMPILER_STRIP_GATE(0x80BC2178, &lit_3908);
#pragma pop

/* 80BC217C-80BC2180 000034 0004+00 0/2 0/0 0/0 .rodata          @3909 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3909 = 3.0f / 100.0f;
COMPILER_STRIP_GATE(0x80BC217C, &lit_3909);
#pragma pop

/* 80BC2180-80BC2188 000038 0008+00 0/3 0/0 0/0 .rodata          @3910 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3910[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BC2180, &lit_3910);
#pragma pop

/* 80BC2188-80BC2190 000040 0008+00 0/3 0/0 0/0 .rodata          @3911 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3911[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BC2188, &lit_3911);
#pragma pop

/* 80BC2190-80BC2198 000048 0008+00 0/3 0/0 0/0 .rodata          @3912 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3912[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BC2190, &lit_3912);
#pragma pop

/* 80BC2198-80BC219C 000050 0004+00 0/2 0/0 0/0 .rodata          @3913 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3913 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80BC2198, &lit_3913);
#pragma pop

/* 80BC219C-80BC21A0 000054 0004+00 0/1 0/0 0/0 .rodata          @3914 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3914 = 20.0f;
COMPILER_STRIP_GATE(0x80BC219C, &lit_3914);
#pragma pop

/* 80BC21A0-80BC21A4 000058 0004+00 0/5 0/0 0/0 .rodata          @3915 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3915 = 0.5f;
COMPILER_STRIP_GATE(0x80BC21A0, &lit_3915);
#pragma pop

/* 80BBC90C-80BBCCFC 0000EC 03F0+00 1/1 0/0 0/0 .text
 * ride_call_back__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c            */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void ride_call_back(dBgW* param_0, fopAc_ac_c* param_1, fopAc_ac_c* param_2) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_brg/d_a_obj_brg/ride_call_back__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c.s"
}
#pragma pop

/* 80BBCCFC-80BBCD38 0004DC 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cXyz::~cXyz() {
extern "C" asm void __dt__4cXyzFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_brg/d_a_obj_brg/__dt__4cXyzFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BC21A4-80BC21A8 00005C 0004+00 0/4 0/0 0/0 .rodata          @4200 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4200 = 5.0f;
COMPILER_STRIP_GATE(0x80BC21A4, &lit_4200);
#pragma pop

/* 80BC21A8-80BC21AC 000060 0004+00 0/4 0/0 0/0 .rodata          @4201 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4201 = 3.0f;
COMPILER_STRIP_GATE(0x80BC21A8, &lit_4201);
#pragma pop

/* 80BC21AC-80BC21B0 000064 0004+00 0/1 0/0 0/0 .rodata          @4202 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4202 = 0.25f;
COMPILER_STRIP_GATE(0x80BC21AC, &lit_4202);
#pragma pop

/* 80BC21B0-80BC21B4 000068 0004+00 0/1 0/0 0/0 .rodata          @4203 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4203 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80BC21B0, &lit_4203);
#pragma pop

/* 80BC21B4-80BC21B8 00006C 0004+00 0/2 0/0 0/0 .rodata          @4204 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4204 = -150.0f;
COMPILER_STRIP_GATE(0x80BC21B4, &lit_4204);
#pragma pop

/* 80BC21B8-80BC21BC 000070 0004+00 0/1 0/0 0/0 .rodata          @4205 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4205 = 430.0f;
COMPILER_STRIP_GATE(0x80BC21B8, &lit_4205);
#pragma pop

/* 80BC21BC-80BC21C0 000074 0004+00 0/1 0/0 0/0 .rodata          @4206 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4206 = -250.0f;
COMPILER_STRIP_GATE(0x80BC21BC, &lit_4206);
#pragma pop

/* 80BC21C0-80BC21C4 000078 0004+00 0/1 0/0 0/0 .rodata          @4207 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4207 = -650.0f;
COMPILER_STRIP_GATE(0x80BC21C0, &lit_4207);
#pragma pop

/* 80BC21C4-80BC21C8 00007C 0004+00 0/1 0/0 0/0 .rodata          @4208 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4208 = 1330.0f;
COMPILER_STRIP_GATE(0x80BC21C4, &lit_4208);
#pragma pop

/* 80BC21C8-80BC21CC 000080 0004+00 0/1 0/0 0/0 .rodata          @4209 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4209 = -950.0f;
COMPILER_STRIP_GATE(0x80BC21C8, &lit_4209);
#pragma pop

/* 80BC21CC-80BC21D0 000084 0004+00 0/1 0/0 0/0 .rodata          @4210 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4210 = -120.0f;
COMPILER_STRIP_GATE(0x80BC21CC, &lit_4210);
#pragma pop

/* 80BC21D0-80BC21D4 000088 0004+00 0/2 0/0 0/0 .rodata          @4211 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4211 = 350.0f;
COMPILER_STRIP_GATE(0x80BC21D0, &lit_4211);
#pragma pop

/* 80BC21D4-80BC21D8 00008C 0004+00 0/2 0/0 0/0 .rodata          @4212 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4212 = -80.0f;
COMPILER_STRIP_GATE(0x80BC21D4, &lit_4212);
#pragma pop

/* 80BC21D8-80BC21DC 000090 0004+00 0/1 0/0 0/0 .rodata          @4213 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4213 = 450.0f;
COMPILER_STRIP_GATE(0x80BC21D8, &lit_4213);
#pragma pop

/* 80BC21DC-80BC21E0 000094 0004+00 0/1 0/0 0/0 .rodata          @4214 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4214 = 1350.0f;
COMPILER_STRIP_GATE(0x80BC21DC, &lit_4214);
#pragma pop

/* 80BC21E0-80BC21E4 000098 0004+00 0/1 0/0 0/0 .rodata          @4215 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4215 = 1050.0f;
COMPILER_STRIP_GATE(0x80BC21E0, &lit_4215);
#pragma pop

/* 80BC21E4-80BC21E8 00009C 0004+00 0/2 0/0 0/0 .rodata          @4216 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4216 = 110.0f;
COMPILER_STRIP_GATE(0x80BC21E4, &lit_4216);
#pragma pop

/* 80BC21E8-80BC21EC 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4217 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4217 = 370.0f;
COMPILER_STRIP_GATE(0x80BC21E8, &lit_4217);
#pragma pop

/* 80BC21EC-80BC21F0 0000A4 0004+00 0/4 0/0 0/0 .rodata          @4218 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4218 = -1.0f;
COMPILER_STRIP_GATE(0x80BC21EC, &lit_4218);
#pragma pop

/* 80BC21F0-80BC21F4 0000A8 0004+00 0/3 0/0 0/0 .rodata          @4219 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4219 = 10.0f;
COMPILER_STRIP_GATE(0x80BC21F0, &lit_4219);
#pragma pop

/* 80BC21F4-80BC21F8 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4220 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4220 = 6.5f;
COMPILER_STRIP_GATE(0x80BC21F4, &lit_4220);
#pragma pop

/* 80BC21F8-80BC2200 0000B0 0008+00 0/5 0/0 0/0 .rodata          @4222 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4222[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BC21F8, &lit_4222);
#pragma pop

/* 80BC23A4-80BC23A8 000000 0004+00 1/1 0/0 0/0 .data            l_color$4002 */
SECTION_DATA static u8 l_color_4002[4] = {
    0x96,
    0x96,
    0x96,
    0xFF,
};

/* 80BC23A8-80BC23AC 000004 0004+00 1/1 0/0 0/0 .data            l_color$4042 */
SECTION_DATA static u8 l_color_4042[4] = {
    0x96,
    0x96,
    0x96,
    0xFF,
};

/* 80BBCD38-80BBD740 000518 0A08+00 1/0 0/0 0/0 .text            daObj_Brg_Draw__FP13obj_brg_class
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObj_Brg_Draw(obj_brg_class* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_brg/d_a_obj_brg/daObj_Brg_Draw__FP13obj_brg_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BC24E8-80BC24EC 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80BC24EC-80BC24F0 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80BC24F0-80BC24F4 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80BC24F4-80BC24F8 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80BC24F8-80BC24FC 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80BC24FC-80BC2500 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80BC2500-80BC2504 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 80BC2504-80BC2508 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80BC2508-80BC250C 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80BC250C-80BC2510 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80BC2510-80BC2514 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 80BC2514-80BC2518 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80BC2518-80BC251C 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80BC251C-80BC2520 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80BC2520-80BC2524 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 80BC2524-80BC2528 -00001 0004+00 5/5 0/0 0/0 .bss             None */
/* 80BC2524 0001+01 data_80BC2524 @1009 */
/* 80BC2526 0002+00 data_80BC2526 wy */
static u8 struct_80BC2524[4];

/* 80BBD740-80BBDA64 000F20 0324+00 1/1 0/0 0/0 .text            control1__FP13obj_brg_classP4br_s
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void control1(obj_brg_class* param_0, br_s* param_1) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_brg/d_a_obj_brg/control1__FP13obj_brg_classP4br_s.s"
}
#pragma pop

/* 80BBDA64-80BBDC28 001244 01C4+00 1/1 0/0 0/0 .text            control2__FP13obj_brg_classP4br_s
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void control2(obj_brg_class* param_0, br_s* param_1) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_brg/d_a_obj_brg/control2__FP13obj_brg_classP4br_s.s"
}
#pragma pop

/* 80BBDC28-80BBDCE8 001408 00C0+00 1/1 0/0 0/0 .text            control3__FP13obj_brg_classP4br_s
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void control3(obj_brg_class* param_0, br_s* param_1) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_brg/d_a_obj_brg/control3__FP13obj_brg_classP4br_s.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BC2200-80BC2204 0000B8 0004+00 0/4 0/0 0/0 .rodata          @4391 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4391 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80BC2200, &lit_4391);
#pragma pop

/* 80BC2204-80BC2208 0000BC 0004+00 0/2 0/0 0/0 .rodata          @4392 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4392 = 3000.0f;
COMPILER_STRIP_GATE(0x80BC2204, &lit_4392);
#pragma pop

/* 80BC2208-80BC220C 0000C0 0004+00 0/3 0/0 0/0 .rodata          @4393 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4393 = 30.0f;
COMPILER_STRIP_GATE(0x80BC2208, &lit_4393);
#pragma pop

/* 80BBDCE8-80BBE008 0014C8 0320+00 1/1 0/0 0/0 .text cut_control1__FP13obj_brg_classP4br_s */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void cut_control1(obj_brg_class* param_0, br_s* param_1) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_brg/d_a_obj_brg/cut_control1__FP13obj_brg_classP4br_s.s"
}
#pragma pop

/* 80BBE008-80BBE338 0017E8 0330+00 1/1 0/0 0/0 .text cut_control2__FP13obj_brg_classP4br_s */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void cut_control2(obj_brg_class* param_0, br_s* param_1) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_brg/d_a_obj_brg/cut_control2__FP13obj_brg_classP4br_s.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BC220C-80BC2210 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4499 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4499 = 7.0f;
COMPILER_STRIP_GATE(0x80BC220C, &lit_4499);
#pragma pop

/* 80BBE338-80BBE578 001B18 0240+00 1/1 0/0 0/0 .text himo_cut_control1__FP13obj_brg_classP4cXyzf
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void himo_cut_control1(obj_brg_class* param_0, cXyz* param_1, f32 param_2) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_brg/d_a_obj_brg/himo_cut_control1__FP13obj_brg_classP4cXyzf.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BC2210-80BC2214 0000C8 0004+00 0/2 0/0 0/0 .rodata          @4903 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4903 = 0x40490FDB;
COMPILER_STRIP_GATE(0x80BC2210, &lit_4903);
#pragma pop

/* 80BC2214-80BC2218 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4904 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4904 = -2.0f;
COMPILER_STRIP_GATE(0x80BC2214, &lit_4904);
#pragma pop

/* 80BC2218-80BC221C 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4905 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4905 = 0.75f;
COMPILER_STRIP_GATE(0x80BC2218, &lit_4905);
#pragma pop

/* 80BC221C-80BC2220 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4906 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4906 = 7000.0f;
COMPILER_STRIP_GATE(0x80BC221C, &lit_4906);
#pragma pop

/* 80BC2220-80BC2224 0000D8 0004+00 0/2 0/0 0/0 .rodata          @4907 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4907 = -30.0f;
COMPILER_STRIP_GATE(0x80BC2220, &lit_4907);
#pragma pop

/* 80BC2224-80BC2228 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4908 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4908 = -7000.0f;
COMPILER_STRIP_GATE(0x80BC2224, &lit_4908);
#pragma pop

/* 80BC2228-80BC222C 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4909 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4909 = 15.0f;
COMPILER_STRIP_GATE(0x80BC2228, &lit_4909);
#pragma pop

/* 80BC222C-80BC2230 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4910 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4910 = -200.0f;
COMPILER_STRIP_GATE(0x80BC222C, &lit_4910);
#pragma pop

/* 80BC2230-80BC2234 0000E8 0004+00 0/2 0/0 0/0 .rodata          @4911 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4911 = 150.0f;
COMPILER_STRIP_GATE(0x80BC2230, &lit_4911);
#pragma pop

/* 80BC2234-80BC2238 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4912 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4912 = -15.0f;
COMPILER_STRIP_GATE(0x80BC2234, &lit_4912);
#pragma pop

/* 80BC2238-80BC223C 0000F0 0004+00 0/2 0/0 0/0 .rodata          @4913 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4913 = 4000.0f;
COMPILER_STRIP_GATE(0x80BC2238, &lit_4913);
#pragma pop

/* 80BC223C-80BC2240 0000F4 0004+00 0/2 0/0 0/0 .rodata          @4914 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4914 = -50.0f;
COMPILER_STRIP_GATE(0x80BC223C, &lit_4914);
#pragma pop

/* 80BC2240-80BC2244 0000F8 0004+00 0/1 0/0 0/0 .rodata          @4915 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4915 = -10000.0f;
COMPILER_STRIP_GATE(0x80BC2240, &lit_4915);
#pragma pop

/* 80BC2244-80BC2248 0000FC 0004+00 0/1 0/0 0/0 .rodata          @4916 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4916 = 80.0f;
COMPILER_STRIP_GATE(0x80BC2244, &lit_4916);
#pragma pop

/* 80BC2248-80BC224C 000100 0004+00 0/1 0/0 0/0 .rodata          @4917 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4917 = 3200.0f;
COMPILER_STRIP_GATE(0x80BC2248, &lit_4917);
#pragma pop

/* 80BC224C-80BC2250 000104 0004+00 0/1 0/0 0/0 .rodata          @4918 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4918 = 60.0f;
COMPILER_STRIP_GATE(0x80BC224C, &lit_4918);
#pragma pop

/* 80BC2250-80BC2254 000108 0004+00 0/1 0/0 0/0 .rodata          @4919 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4919 = 1600.0f;
COMPILER_STRIP_GATE(0x80BC2250, &lit_4919);
#pragma pop

/* 80BC23AC-80BC23D8 000008 002C+00 1/1 0/0 0/0 .data            ita_z_p */
SECTION_DATA static u8 ita_z_p[44] = {
    0x3D, 0xCC, 0xCC, 0xCD, 0x3E, 0x99, 0x99, 0x9A, 0x3F, 0x00, 0x00, 0x00, 0x3F, 0x40, 0x00,
    0x00, 0x3F, 0x66, 0x66, 0x66, 0x3F, 0x80, 0x00, 0x00, 0x3F, 0x66, 0x66, 0x66, 0x3F, 0x40,
    0x00, 0x00, 0x3F, 0x00, 0x00, 0x00, 0x3E, 0x99, 0x99, 0x9A, 0x3D, 0xCC, 0xCC, 0xCD,
};

/* 80BBE578-80BBF21C 001D58 0CA4+00 1/1 0/0 0/0 .text            obj_brg_move__FP13obj_brg_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void obj_brg_move(obj_brg_class* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_brg/d_a_obj_brg/obj_brg_move__FP13obj_brg_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BC2254-80BC2258 00010C 0004+00 0/1 0/0 0/0 .rodata          @5486 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5486 = 5500.0f;
COMPILER_STRIP_GATE(0x80BC2254, &lit_5486);
#pragma pop

/* 80BC2258-80BC225C 000110 0004+00 0/1 0/0 0/0 .rodata          @5487 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5487 = 2000.0f;
COMPILER_STRIP_GATE(0x80BC2258, &lit_5487);
#pragma pop

/* 80BC225C-80BC2260 000114 0004+00 0/1 0/0 0/0 .rodata          @5488 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5488 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80BC225C, &lit_5488);
#pragma pop

/* 80BC2260-80BC2264 000118 0004+00 0/1 0/0 0/0 .rodata          @5489 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5489 = 1000.0f;
COMPILER_STRIP_GATE(0x80BC2260, &lit_5489);
#pragma pop

/* 80BC2264-80BC2268 00011C 0004+00 0/1 0/0 0/0 .rodata          @5490 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5490 = 250.0f;
COMPILER_STRIP_GATE(0x80BC2264, &lit_5490);
#pragma pop

/* 80BC2268-80BC226C 000120 0004+00 0/1 0/0 0/0 .rodata          @5491 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5491 = 600.0f;
COMPILER_STRIP_GATE(0x80BC2268, &lit_5491);
#pragma pop

/* 80BC226C-80BC2270 000124 0004+00 0/2 0/0 0/0 .rodata          @5492 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5492 = 200.0f;
COMPILER_STRIP_GATE(0x80BC226C, &lit_5492);
#pragma pop

/* 80BC2270-80BC2274 000128 0004+00 0/1 0/0 0/0 .rodata          @5493 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5493 = -300.0f;
COMPILER_STRIP_GATE(0x80BC2270, &lit_5493);
#pragma pop

/* 80BC2274-80BC2278 00012C 0004+00 0/1 0/0 0/0 .rodata          @5494 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5494 = -100.0f;
COMPILER_STRIP_GATE(0x80BC2274, &lit_5494);
#pragma pop

/* 80BC2278-80BC227C 000130 0004+00 0/1 0/0 0/0 .rodata          @5495 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5495 = 99.0f;
COMPILER_STRIP_GATE(0x80BC2278, &lit_5495);
#pragma pop

/* 80BC227C-80BC2280 000134 0004+00 0/1 0/0 0/0 .rodata          @5496 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5496 = 66.0f;
COMPILER_STRIP_GATE(0x80BC227C, &lit_5496);
#pragma pop

/* 80BC2280-80BC2284 000138 0004+00 0/2 0/0 0/0 .rodata          @5497 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5497 = 2.0f;
COMPILER_STRIP_GATE(0x80BC2280, &lit_5497);
#pragma pop

/* 80BC2284-80BC2288 00013C 0004+00 0/1 0/0 0/0 .rodata          @5498 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5498 = 10000.0f;
COMPILER_STRIP_GATE(0x80BC2284, &lit_5498);
#pragma pop

/* 80BC2288-80BC228C 000140 0004+00 0/1 0/0 0/0 .rodata          @5499 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5499 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80BC2288, &lit_5499);
#pragma pop

/* 80BC228C-80BC2290 000144 0004+00 0/1 0/0 0/0 .rodata          @5500 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5500 = -3.0f;
COMPILER_STRIP_GATE(0x80BC228C, &lit_5500);
#pragma pop

/* 80BC2290-80BC2294 000148 0004+00 0/1 0/0 0/0 .rodata          @5501 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5501 = 3.0f / 20.0f;
COMPILER_STRIP_GATE(0x80BC2290, &lit_5501);
#pragma pop

/* 80BC2294-80BC2298 00014C 0004+00 0/1 0/0 0/0 .rodata          @5502 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5502 = 25.0f;
COMPILER_STRIP_GATE(0x80BC2294, &lit_5502);
#pragma pop

/* 80BC2298-80BC229C 000150 0004+00 0/1 0/0 0/0 .rodata          @5503 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5503 = 16.0f;
COMPILER_STRIP_GATE(0x80BC2298, &lit_5503);
#pragma pop

/* 80BC229C-80BC22A0 000154 0004+00 0/1 0/0 0/0 .rodata          @5504 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5504 = -40.0f;
COMPILER_STRIP_GATE(0x80BC229C, &lit_5504);
#pragma pop

/* 80BBF21C-80BC0834 0029FC 1618+00 2/1 0/0 0/0 .text daObj_Brg_Execute__FP13obj_brg_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObj_Brg_Execute(obj_brg_class* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_brg/d_a_obj_brg/daObj_Brg_Execute__FP13obj_brg_class.s"
}
#pragma pop

/* 80BC0834-80BC0854 004014 0020+00 1/0 0/0 0/0 .text daObj_Brg_IsDelete__FP13obj_brg_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObj_Brg_IsDelete(obj_brg_class* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_brg/d_a_obj_brg/daObj_Brg_IsDelete__FP13obj_brg_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BC238C-80BC238C 000244 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BC238C = "Obj_brg";
#pragma pop

/* 80BC0854-80BC08B0 004034 005C+00 1/0 0/0 0/0 .text            daObj_Brg_Delete__FP13obj_brg_class
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObj_Brg_Delete(obj_brg_class* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_brg/d_a_obj_brg/daObj_Brg_Delete__FP13obj_brg_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BC22A0-80BC22A4 000158 0004+00 0/1 0/0 0/0 .rodata          @5566 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5566 = 400.0f;
COMPILER_STRIP_GATE(0x80BC22A0, &lit_5566);
#pragma pop

/* 80BC22A4-80BC22A8 00015C 0004+00 0/1 0/0 0/0 .rodata          @5567 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5567 = 500.0f;
COMPILER_STRIP_GATE(0x80BC22A4, &lit_5567);
#pragma pop

/* 80BC23D8-80BC241C 000034 0044+00 1/1 0/0 0/0 .data            himo_cyl_src$5532 */
static dCcD_SrcCyl himo_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0xff, 0x0, 0x0, 0x1}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        5.0f, // mRadius
        1000.0f // mHeight
    } // mCyl
};

/* 80BC241C-80BC2460 000078 0044+00 1/1 0/0 0/0 .data            wire_cyl_src$5533 */
static dCcD_SrcCyl wire_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_METAL, 0x2, 0x0, 0x0, 0x3}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        5.0f, // mRadius
        1000.0f // mHeight
    } // mCyl
};

/* 80BC08B0-80BC0A40 004090 0190+00 1/1 0/0 0/0 .text            CreateInit__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void CreateInit(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_brg/d_a_obj_brg/CreateInit__FP10fopAc_ac_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BC22A8-80BC22B4 000160 000C+00 0/1 0/0 0/0 .rodata          obj_brg_bmd$5576 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const obj_brg_bmd[12] = {
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x07,
};
COMPILER_STRIP_GATE(0x80BC22A8, &obj_brg_bmd);
#pragma pop

/* 80BC22B4-80BC22B8 00016C 0004+00 0/2 0/0 0/0 .rodata          @5716 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5716 = 1.5f;
COMPILER_STRIP_GATE(0x80BC22B4, &lit_5716);
#pragma pop

/* 80BC22B8-80BC22BC 000170 0004+00 0/1 0/0 0/0 .rodata          @5717 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5717 = 2.5f;
COMPILER_STRIP_GATE(0x80BC22B8, &lit_5717);
#pragma pop

/* 80BC0A40-80BC1050 004220 0610+00 1/1 0/0 0/0 .text            CallbackCreateHeap__FP10fopAc_ac_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void CallbackCreateHeap(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_brg/d_a_obj_brg/CallbackCreateHeap__FP10fopAc_ac_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BC22BC-80BC22C0 000174 0004+00 0/1 0/0 0/0 .rodata          @6206 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6206 = 11741.0f;
COMPILER_STRIP_GATE(0x80BC22BC, &lit_6206);
#pragma pop

/* 80BC22C0-80BC22C4 000178 0004+00 0/1 0/0 0/0 .rodata          @6207 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6207 = 3742.0f;
COMPILER_STRIP_GATE(0x80BC22C0, &lit_6207);
#pragma pop

/* 80BC22C4-80BC22C8 00017C 0004+00 0/1 0/0 0/0 .rodata          @6208 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6208 = 3735.0f;
COMPILER_STRIP_GATE(0x80BC22C4, &lit_6208);
#pragma pop

/* 80BC22C8-80BC22CC 000180 0004+00 0/1 0/0 0/0 .rodata          @6209 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6209 = 12656.0f;
COMPILER_STRIP_GATE(0x80BC22C8, &lit_6209);
#pragma pop

/* 80BC22CC-80BC22D0 000184 0004+00 0/1 0/0 0/0 .rodata          @6210 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6210 = 3732.0f;
COMPILER_STRIP_GATE(0x80BC22CC, &lit_6210);
#pragma pop

/* 80BC22D0-80BC22D4 000188 0004+00 0/1 0/0 0/0 .rodata          @6211 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6211 = 3425.0f;
COMPILER_STRIP_GATE(0x80BC22D0, &lit_6211);
#pragma pop

/* 80BC22D4-80BC22D8 00018C 0004+00 0/1 0/0 0/0 .rodata          @6212 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6212 = 3285.0f;
COMPILER_STRIP_GATE(0x80BC22D4, &lit_6212);
#pragma pop

/* 80BC22D8-80BC22DC 000190 0004+00 0/1 0/0 0/0 .rodata          @6213 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6213 = 3270.0f;
COMPILER_STRIP_GATE(0x80BC22D8, &lit_6213);
#pragma pop

/* 80BC22DC-80BC22E0 000194 0004+00 0/1 0/0 0/0 .rodata          @6214 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6214 = 1095.0f;
COMPILER_STRIP_GATE(0x80BC22DC, &lit_6214);
#pragma pop

/* 80BC22E0-80BC22E4 000198 0004+00 0/1 0/0 0/0 .rodata          @6215 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6215 = 1300.0f;
COMPILER_STRIP_GATE(0x80BC22E0, &lit_6215);
#pragma pop

/* 80BC22E4-80BC22E8 00019C 0004+00 0/1 0/0 0/0 .rodata          @6216 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6216 = 47.0f;
COMPILER_STRIP_GATE(0x80BC22E4, &lit_6216);
#pragma pop

/* 80BC22E8-80BC22EC 0001A0 0004+00 0/1 0/0 0/0 .rodata          @6217 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6217 = 334.0f;
COMPILER_STRIP_GATE(0x80BC22E8, &lit_6217);
#pragma pop

/* 80BC22EC-80BC22F0 0001A4 0004+00 0/1 0/0 0/0 .rodata          @6218 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6218 = 249.0f;
COMPILER_STRIP_GATE(0x80BC22EC, &lit_6218);
#pragma pop

/* 80BC22F0-80BC22F4 0001A8 0004+00 0/1 0/0 0/0 .rodata          @6219 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6219 = -11868.0f;
COMPILER_STRIP_GATE(0x80BC22F0, &lit_6219);
#pragma pop

/* 80BC22F4-80BC22F8 0001AC 0004+00 0/1 0/0 0/0 .rodata          @6220 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6220 = 180.0f;
COMPILER_STRIP_GATE(0x80BC22F4, &lit_6220);
#pragma pop

/* 80BC22F8-80BC22FC 0001B0 0004+00 0/1 0/0 0/0 .rodata          @6221 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6221 = -12082.0f;
COMPILER_STRIP_GATE(0x80BC22F8, &lit_6221);
#pragma pop

/* 80BC22FC-80BC2300 0001B4 0004+00 0/1 0/0 0/0 .rodata          @6222 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6222 = 114.0f;
COMPILER_STRIP_GATE(0x80BC22FC, &lit_6222);
#pragma pop

/* 80BC2300-80BC2304 0001B8 0004+00 0/1 0/0 0/0 .rodata          @6223 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6223 = -12297.0f;
COMPILER_STRIP_GATE(0x80BC2300, &lit_6223);
#pragma pop

/* 80BC2304-80BC2308 0001BC 0004+00 0/1 0/0 0/0 .rodata          @6224 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6224 = -12512.0f;
COMPILER_STRIP_GATE(0x80BC2304, &lit_6224);
#pragma pop

/* 80BC2308-80BC230C 0001C0 0004+00 0/1 0/0 0/0 .rodata          @6225 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6225 = -9.0f;
COMPILER_STRIP_GATE(0x80BC2308, &lit_6225);
#pragma pop

/* 80BC230C-80BC2310 0001C4 0004+00 0/1 0/0 0/0 .rodata          @6226 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6226 = -12729.0f;
COMPILER_STRIP_GATE(0x80BC230C, &lit_6226);
#pragma pop

/* 80BC2310-80BC2314 0001C8 0004+00 0/1 0/0 0/0 .rodata          @6227 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6227 = -63.0f;
COMPILER_STRIP_GATE(0x80BC2310, &lit_6227);
#pragma pop

/* 80BC2314-80BC2318 0001CC 0004+00 0/1 0/0 0/0 .rodata          @6228 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6228 = -12948.0f;
COMPILER_STRIP_GATE(0x80BC2314, &lit_6228);
#pragma pop

/* 80BC2318-80BC231C 0001D0 0004+00 0/1 0/0 0/0 .rodata          @6229 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6229 = -111.0f;
COMPILER_STRIP_GATE(0x80BC2318, &lit_6229);
#pragma pop

/* 80BC231C-80BC2320 0001D4 0004+00 0/1 0/0 0/0 .rodata          @6230 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6230 = -13168.0f;
COMPILER_STRIP_GATE(0x80BC231C, &lit_6230);
#pragma pop

/* 80BC2320-80BC2324 0001D8 0004+00 0/1 0/0 0/0 .rodata          @6231 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6231 = -13389.0f;
COMPILER_STRIP_GATE(0x80BC2320, &lit_6231);
#pragma pop

/* 80BC2324-80BC2328 0001DC 0004+00 0/1 0/0 0/0 .rodata          @6232 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6232 = -181.0f;
COMPILER_STRIP_GATE(0x80BC2324, &lit_6232);
#pragma pop

/* 80BC2328-80BC232C 0001E0 0004+00 0/1 0/0 0/0 .rodata          @6233 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6233 = -13612.0f;
COMPILER_STRIP_GATE(0x80BC2328, &lit_6233);
#pragma pop

/* 80BC232C-80BC2330 0001E4 0004+00 0/1 0/0 0/0 .rodata          @6234 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6234 = -203.0f;
COMPILER_STRIP_GATE(0x80BC232C, &lit_6234);
#pragma pop

/* 80BC2330-80BC2334 0001E8 0004+00 0/1 0/0 0/0 .rodata          @6235 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6235 = -13836.0f;
COMPILER_STRIP_GATE(0x80BC2330, &lit_6235);
#pragma pop

/* 80BC2334-80BC2338 0001EC 0004+00 0/1 0/0 0/0 .rodata          @6236 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6236 = -215.0f;
COMPILER_STRIP_GATE(0x80BC2334, &lit_6236);
#pragma pop

/* 80BC2338-80BC233C 0001F0 0004+00 0/1 0/0 0/0 .rodata          @6237 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6237 = -14061.0f;
COMPILER_STRIP_GATE(0x80BC2338, &lit_6237);
#pragma pop

/* 80BC233C-80BC2340 0001F4 0004+00 0/1 0/0 0/0 .rodata          @6238 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6238 = -217.0f;
COMPILER_STRIP_GATE(0x80BC233C, &lit_6238);
#pragma pop

/* 80BC2340-80BC2344 0001F8 0004+00 0/1 0/0 0/0 .rodata          @6239 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6239 = -14286.0f;
COMPILER_STRIP_GATE(0x80BC2340, &lit_6239);
#pragma pop

/* 80BC2344-80BC2348 0001FC 0004+00 0/1 0/0 0/0 .rodata          @6240 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6240 = -208.0f;
COMPILER_STRIP_GATE(0x80BC2344, &lit_6240);
#pragma pop

/* 80BC2348-80BC234C 000200 0004+00 0/1 0/0 0/0 .rodata          @6241 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6241 = -14511.0f;
COMPILER_STRIP_GATE(0x80BC2348, &lit_6241);
#pragma pop

/* 80BC234C-80BC2350 000204 0004+00 0/1 0/0 0/0 .rodata          @6242 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6242 = -190.0f;
COMPILER_STRIP_GATE(0x80BC234C, &lit_6242);
#pragma pop

/* 80BC2350-80BC2354 000208 0004+00 0/1 0/0 0/0 .rodata          @6243 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6243 = -14735.0f;
COMPILER_STRIP_GATE(0x80BC2350, &lit_6243);
#pragma pop

/* 80BC2354-80BC2358 00020C 0004+00 0/1 0/0 0/0 .rodata          @6244 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6244 = -162.0f;
COMPILER_STRIP_GATE(0x80BC2354, &lit_6244);
#pragma pop

/* 80BC2358-80BC235C 000210 0004+00 0/1 0/0 0/0 .rodata          @6245 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6245 = -14958.0f;
COMPILER_STRIP_GATE(0x80BC2358, &lit_6245);
#pragma pop

/* 80BC235C-80BC2360 000214 0004+00 0/1 0/0 0/0 .rodata          @6246 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6246 = -126.0f;
COMPILER_STRIP_GATE(0x80BC235C, &lit_6246);
#pragma pop

/* 80BC2360-80BC2364 000218 0004+00 0/1 0/0 0/0 .rodata          @6247 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6247 = -15180.0f;
COMPILER_STRIP_GATE(0x80BC2360, &lit_6247);
#pragma pop

/* 80BC2364-80BC2368 00021C 0004+00 0/1 0/0 0/0 .rodata          @6248 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6248 = -82.0f;
COMPILER_STRIP_GATE(0x80BC2364, &lit_6248);
#pragma pop

/* 80BC2368-80BC236C 000220 0004+00 0/1 0/0 0/0 .rodata          @6249 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6249 = -15401.0f;
COMPILER_STRIP_GATE(0x80BC2368, &lit_6249);
#pragma pop

/* 80BC236C-80BC2370 000224 0004+00 0/1 0/0 0/0 .rodata          @6250 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6250 = -15620.0f;
COMPILER_STRIP_GATE(0x80BC236C, &lit_6250);
#pragma pop

/* 80BC2370-80BC2374 000228 0004+00 0/1 0/0 0/0 .rodata          @6251 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6251 = 24.0f;
COMPILER_STRIP_GATE(0x80BC2370, &lit_6251);
#pragma pop

/* 80BC2374-80BC2378 00022C 0004+00 0/1 0/0 0/0 .rodata          @6252 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6252 = -15838.0f;
COMPILER_STRIP_GATE(0x80BC2374, &lit_6252);
#pragma pop

/* 80BC2378-80BC237C 000230 0004+00 0/1 0/0 0/0 .rodata          @6253 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6253 = 85.0f;
COMPILER_STRIP_GATE(0x80BC2378, &lit_6253);
#pragma pop

/* 80BC237C-80BC2380 000234 0004+00 0/1 0/0 0/0 .rodata          @6254 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6254 = -16054.0f;
COMPILER_STRIP_GATE(0x80BC237C, &lit_6254);
#pragma pop

/* 80BC2380-80BC2384 000238 0004+00 0/1 0/0 0/0 .rodata          @6255 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6255 = -16270.0f;
COMPILER_STRIP_GATE(0x80BC2380, &lit_6255);
#pragma pop

/* 80BC2384-80BC2388 00023C 0004+00 0/1 0/0 0/0 .rodata          @6256 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6256 = 216.0f;
COMPILER_STRIP_GATE(0x80BC2384, &lit_6256);
#pragma pop

/* 80BC2388-80BC238C 000240 0004+00 0/1 0/0 0/0 .rodata          @6257 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6257 = -16485.0f;
COMPILER_STRIP_GATE(0x80BC2388, &lit_6257);
#pragma pop

/* 80BC238C-80BC238C 000244 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BC2394 = "F_SP104";
SECTION_DEAD static char const* const stringBase_80BC239C = "D_MN05";
#pragma pop

/* 80BC2460-80BC2480 -00001 0020+00 1/0 0/0 0/0 .data            l_daObj_Brg_Method */
static actor_method_class l_daObj_Brg_Method = {
    (process_method_func)daObj_Brg_Create__FP10fopAc_ac_c,
    (process_method_func)daObj_Brg_Delete__FP13obj_brg_class,
    (process_method_func)daObj_Brg_Execute__FP13obj_brg_class,
    (process_method_func)daObj_Brg_IsDelete__FP13obj_brg_class,
    (process_method_func)daObj_Brg_Draw__FP13obj_brg_class,
};

/* 80BC2480-80BC24B0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_BRG */
extern actor_process_profile_definition g_profile_OBJ_BRG = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_OBJ_BRG,           // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(obj_brg_class),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  54,                     // mPriority
  &l_daObj_Brg_Method,    // sub_method
  0x00044000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80BC24B0-80BC24BC 00010C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80BC24BC-80BC24C8 000118 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80BC24C8-80BC24DC 000124 0014+00 2/2 0/0 0/0 .data            __vt__18mDoExt_3DlineMat_c */
SECTION_DATA extern void* __vt__18mDoExt_3DlineMat_c[5] = {
    (void*)NULL /* RTTI */, (void*)NULL, (void*)NULL, (void*)NULL, (void*)NULL,
};

/* 80BC2528-80BC2538 000048 000C+04 0/1 0/0 0/0 .bss             @5786 */
#pragma push
#pragma force_active on
static u8 lit_5786[12 + 4 /* padding */];
#pragma pop

/* 80BC2538-80BC2544 000058 000C+00 0/1 0/0 0/0 .bss             @5789 */
#pragma push
#pragma force_active on
static u8 lit_5789[12];
#pragma pop

/* 80BC2544-80BC2550 000064 000C+00 0/1 0/0 0/0 .bss             @5790 */
#pragma push
#pragma force_active on
static u8 lit_5790[12];
#pragma pop

/* 80BC2550-80BC255C 000070 000C+00 0/1 0/0 0/0 .bss             @5791 */
#pragma push
#pragma force_active on
static u8 lit_5791[12];
#pragma pop

/* 80BC255C-80BC2568 00007C 000C+00 0/1 0/0 0/0 .bss             @5792 */
#pragma push
#pragma force_active on
static u8 lit_5792[12];
#pragma pop

/* 80BC2568-80BC2574 000088 000C+00 0/1 0/0 0/0 .bss             @5793 */
#pragma push
#pragma force_active on
static u8 lit_5793[12];
#pragma pop

/* 80BC2574-80BC2580 000094 000C+00 0/1 0/0 0/0 .bss             @5794 */
#pragma push
#pragma force_active on
static u8 lit_5794[12];
#pragma pop

/* 80BC2580-80BC258C 0000A0 000C+00 0/1 0/0 0/0 .bss             @5795 */
#pragma push
#pragma force_active on
static u8 lit_5795[12];
#pragma pop

/* 80BC258C-80BC2598 0000AC 000C+00 0/1 0/0 0/0 .bss             @5796 */
#pragma push
#pragma force_active on
static u8 lit_5796[12];
#pragma pop

/* 80BC2598-80BC25A4 0000B8 000C+00 0/1 0/0 0/0 .bss             @5797 */
#pragma push
#pragma force_active on
static u8 lit_5797[12];
#pragma pop

/* 80BC25A4-80BC25B0 0000C4 000C+00 0/1 0/0 0/0 .bss             @5798 */
#pragma push
#pragma force_active on
static u8 lit_5798[12];
#pragma pop

/* 80BC25B0-80BC25BC 0000D0 000C+00 0/1 0/0 0/0 .bss             @5799 */
#pragma push
#pragma force_active on
static u8 lit_5799[12];
#pragma pop

/* 80BC25BC-80BC25C8 0000DC 000C+00 0/1 0/0 0/0 .bss             @5800 */
#pragma push
#pragma force_active on
static u8 lit_5800[12];
#pragma pop

/* 80BC25C8-80BC25D4 0000E8 000C+00 0/1 0/0 0/0 .bss             @5801 */
#pragma push
#pragma force_active on
static u8 lit_5801[12];
#pragma pop

/* 80BC25D4-80BC25E0 0000F4 000C+00 0/1 0/0 0/0 .bss             @5802 */
#pragma push
#pragma force_active on
static u8 lit_5802[12];
#pragma pop

/* 80BC25E0-80BC25EC 000100 000C+00 0/1 0/0 0/0 .bss             @5803 */
#pragma push
#pragma force_active on
static u8 lit_5803[12];
#pragma pop

/* 80BC25EC-80BC25F8 00010C 000C+00 0/1 0/0 0/0 .bss             @5804 */
#pragma push
#pragma force_active on
static u8 lit_5804[12];
#pragma pop

/* 80BC25F8-80BC2604 000118 000C+00 0/1 0/0 0/0 .bss             @5805 */
#pragma push
#pragma force_active on
static u8 lit_5805[12];
#pragma pop

/* 80BC2604-80BC2610 000124 000C+00 0/1 0/0 0/0 .bss             @5806 */
#pragma push
#pragma force_active on
static u8 lit_5806[12];
#pragma pop

/* 80BC2610-80BC261C 000130 000C+00 0/1 0/0 0/0 .bss             @5807 */
#pragma push
#pragma force_active on
static u8 lit_5807[12];
#pragma pop

/* 80BC261C-80BC2628 00013C 000C+00 0/1 0/0 0/0 .bss             @5808 */
#pragma push
#pragma force_active on
static u8 lit_5808[12];
#pragma pop

/* 80BC2628-80BC2634 000148 000C+00 0/1 0/0 0/0 .bss             @5809 */
#pragma push
#pragma force_active on
static u8 lit_5809[12];
#pragma pop

/* 80BC2634-80BC273C 000154 0108+00 0/1 0/0 0/0 .bss             brg_init_pos$5785 */
#pragma push
#pragma force_active on
static u8 brg_init_pos[264];
#pragma pop

/* 80BC1050-80BC1D74 004830 0D24+00 1/0 0/0 0/0 .text            daObj_Brg_Create__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObj_Brg_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_brg/d_a_obj_brg/daObj_Brg_Create__FP10fopAc_ac_c.s"
}
#pragma pop

/* 80BC1D74-80BC1E40 005554 00CC+00 3/3 0/0 0/0 .text            __dt__8dCcD_CylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_Cyl::~dCcD_Cyl() {
extern "C" asm void __dt__8dCcD_CylFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_brg/d_a_obj_brg/__dt__8dCcD_CylFv.s"
}
#pragma pop

/* 80BC1E40-80BC1EC4 005620 0084+00 2/2 0/0 0/0 .text            __ct__8dCcD_CylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_Cyl::dCcD_Cyl() {
extern "C" asm void __ct__8dCcD_CylFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_brg/d_a_obj_brg/__ct__8dCcD_CylFv.s"
}
#pragma pop

/* 80BC1EC4-80BC1F0C 0056A4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGCyl::~cM3dGCyl() {
extern "C" asm void __dt__8cM3dGCylFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_brg/d_a_obj_brg/__dt__8cM3dGCylFv.s"
}
#pragma pop

/* 80BC1F0C-80BC1F54 0056EC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_brg/d_a_obj_brg/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80BC1F54-80BC2000 005734 00AC+00 1/1 0/0 0/0 .text            __dt__4br_sFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void __dt__4br_sFv() {
// asm br_s::~br_s() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_brg/d_a_obj_brg/__dt__4br_sFv.s"
}
#pragma pop

/* 80BC2000-80BC20FC 0057E0 00FC+00 1/1 0/0 0/0 .text            __ct__4br_sFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void __ct__4br_sFv() {
// asm br_s::br_s() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_brg/d_a_obj_brg/__ct__4br_sFv.s"
}
#pragma pop

/* 80BC20FC-80BC2134 0058DC 0038+00 1/1 0/0 0/0 .text            __ct__11J3DLightObjFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DLightObj::J3DLightObj() {
extern "C" asm void __ct__11J3DLightObjFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_brg/d_a_obj_brg/__ct__11J3DLightObjFv.s"
}
#pragma pop

/* 80BC2134-80BC2138 005914 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" asm void __ct__4cXyzFv() {
    /* empty function */
}

/* ############################################################################################## */
/* 80BC273C-80BC2740 00025C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80BC273C[4];
#pragma pop

/* 80BC2740-80BC2744 000260 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80BC2740[4];
#pragma pop

/* 80BC2744-80BC2748 000264 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80BC2744[4];
#pragma pop

/* 80BC2748-80BC274C 000268 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80BC2748[4];
#pragma pop

/* 80BC274C-80BC2750 00026C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80BC274C[4];
#pragma pop

/* 80BC2750-80BC2754 000270 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80BC2750[4];
#pragma pop

/* 80BC2754-80BC2758 000274 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80BC2754[4];
#pragma pop

/* 80BC2758-80BC275C 000278 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80BC2758[4];
#pragma pop

/* 80BC275C-80BC2760 00027C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80BC275C[4];
#pragma pop

/* 80BC2760-80BC2764 000280 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80BC2760[4];
#pragma pop

/* 80BC2764-80BC2768 000284 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80BC2764[4];
#pragma pop

/* 80BC2768-80BC276C 000288 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80BC2768[4];
#pragma pop

/* 80BC276C-80BC2770 00028C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80BC276C[4];
#pragma pop

/* 80BC2770-80BC2774 000290 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80BC2770[4];
#pragma pop

/* 80BC2774-80BC2778 000294 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80BC2774[4];
#pragma pop

/* 80BC2778-80BC277C 000298 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80BC2778[4];
#pragma pop

/* 80BC277C-80BC2780 00029C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80BC277C[4];
#pragma pop

/* 80BC2780-80BC2784 0002A0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80BC2780[4];
#pragma pop

/* 80BC2784-80BC2788 0002A4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80BC2784[4];
#pragma pop

/* 80BC2788-80BC278C 0002A8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80BC2788[4];
#pragma pop

/* 80BC278C-80BC2790 0002AC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80BC278C[4];
#pragma pop

/* 80BC2790-80BC2794 0002B0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80BC2790[4];
#pragma pop

/* 80BC2794-80BC2798 0002B4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80BC2794[4];
#pragma pop

/* 80BC2798-80BC279C 0002B8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80BC2798[4];
#pragma pop

/* 80BC279C-80BC27A0 0002BC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80BC279C[4];
#pragma pop

/* 80BC238C-80BC238C 000244 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
