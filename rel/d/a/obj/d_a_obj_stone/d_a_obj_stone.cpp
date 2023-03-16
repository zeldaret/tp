/**
 * d_a_obj_stone.cpp
 * Actor - Object Stone
 * 
 * Small and large rocks used in Death Mountain
 * 
 */

#include "rel/d/a/obj/d_a_obj_stone/d_a_obj_stone.h"
#include "dol2asm.h"
#include "dolphin/types.h"
#include "SSystem/SComponent/c_math.h"
#include "JSystem/JMath/JMath.h"

//
// Forward References:
//

extern "C" static void bound__FP4cXyzRC13cBgS_PolyInfof();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" static void CheckCreateHeap__FP10fopAc_ac_c();
extern "C" void initBaseMtx__12daObjStone_cFv();
extern "C" void setBaseMtx__12daObjStone_cFv();
extern "C" void Create__12daObjStone_cFv();
extern "C" void CreateHeap__12daObjStone_cFv();
extern "C" void create__12daObjStone_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void execute__12daObjStone_cFv();
extern "C" void mode_proc_call__12daObjStone_cFv();
extern "C" void __dt__14dBgS_ObjGndChkFv();
extern "C" void init_modePutWait__12daObjStone_cFv();
extern "C" void modePutWait__12daObjStone_cFv();
extern "C" void init_modeWait__12daObjStone_cFv();
extern "C" void modeWait__12daObjStone_cFv();
extern "C" void init_modeDrop__12daObjStone_cFv();
extern "C" void modeDrop__12daObjStone_cFv();
extern "C" void init_modeCarry__12daObjStone_cFv();
extern "C" void modeCarry__12daObjStone_cFv();
extern "C" void init_modeWalk__12daObjStone_cFv();
extern "C" void modeWalk__12daObjStone_cFv();
extern "C" void init_modePushWolfNonBreak__12daObjStone_cFv();
extern "C" void init_modeYogan__12daObjStone_cFv();
extern "C" void modeYogan__12daObjStone_cFv();
extern "C" void init_modeBreak__12daObjStone_cFv();
extern "C" void modeBreak__12daObjStone_cFv();
extern "C" void CrrPos__12daObjStone_cFv();
extern "C" void createItem__12daObjStone_cFv();
extern "C" void calcRotBaseMtx__12daObjStone_cFPs();
extern "C" void checkRollAngle__12daObjStone_cFv();
extern "C" void set_carry_eff__12daObjStone_cFv();
extern "C" void effect_delete__12daObjStone_cFb();
extern "C" void draw__12daObjStone_cFv();
extern "C" void _delete__12daObjStone_cFv();
extern "C" static void daObjStone_Draw__FP12daObjStone_c();
extern "C" static void daObjStone_Execute__FP12daObjStone_c();
extern "C" static void daObjStone_Delete__FP12daObjStone_c();
extern "C" static void daObjStone_Create__FP10fopAc_ac_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" static void func_80CECA84();
extern "C" static void func_80CECA8C();
extern "C" static void func_80CECA94();
extern "C" static void func_80CECA9C();
extern "C" static void func_80CECAA4();
extern "C" extern char const* const d_a_obj_stone__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void quatM__14mDoMtx_stack_cFPC10Quaternion();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeSphere__FP10fopAc_ac_cffff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_createItemFromTable__FPC4cXyziiiPC5csXyziPC4cXyzPfPfb();
extern "C" void fopAcM_createItem__FPC4cXyziiiPC5csXyzPC4cXyzi();
extern "C" void fopAcM_cancelCarryNow__FP10fopAc_ac_c();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void fopAcM_effHamonSet__FPUlPC4cXyzff();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void fopKyM_createWpillar__FPC4cXyzfi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj();
extern "C" void offActor__10dSv_info_cFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
setModel__18dPa_modelEcallBackFP14JPABaseEmitterP12J3DModelDataRC12dKy_tevstr_cUcPvUcUc();
extern "C" void forceOnEventMove__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void ClrObj__16dBgS_PolyPassChkFv();
extern "C" void SetBomb__16dBgS_PolyPassChkFv();
extern "C" void GetAc__22dCcD_GAtTgCoCommonBaseFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void GetTgHitObjSe__12dCcD_GObjInfFv();
extern "C" void getHitSeID__12dCcD_GObjInfFUci();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void normalizeRS__4cXyzFv();
extern "C" void __ct__5csXyzFsss();
extern "C" void cM_atan2s__Fff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_chaseF__FPfff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void deleteObject__14Z2SoundObjBaseFv();
extern "C" void startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase();
extern "C" void __ct__16Z2SoundObjSimpleFv();
extern "C" void __dl__FPv();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_19();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mGndCheck__11fopAcM_gc_c[84];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" f32 Zero__4cXyz[3];
extern "C" u8 BaseX__4cXyz[12];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 mEcallback__18dPa_modelEcallBack[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" extern u8 data_80CECE10[4];

//
// Declarations:
//

/* ############################################################################################## */
/* 80CECAB4-80CECABC 000000 0008+00 14/14 0/0 0/0 .rodata          l_bmdIdx */
const static int l_bmdIdx[2] = {
    3, 
    3
};
COMPILER_STRIP_GATE(0x80CECAB4, &l_bmdIdx);

/* 80CECABC-80CECAFC 000008 0040+00 0/1 0/0 0/0 .rodata          l_sph_src */
#pragma push
#pragma force_active on
const static dCcD_SrcSph l_sph_src = {
    {
        {0, {{AT_TYPE_THROW_OBJ, 0x03, 0x13}, {3640327679, 0x11}, 0x79}},
        {dCcD_SE_THROW_OBJ, 0, 0, 0, {0x08}},
        {dCcD_SE_NONE, 0x02, 0, 0, {0x03}},
        {0},
    },
    {
        {0.0f, 0.0f, 0.0f},
        50.0f,
    },
};
COMPILER_STRIP_GATE(0x80CECABC, &l_sph_src);
#pragma pop

/* 80CECAFC-80CECB04 000048 0008+00 0/3 0/0 0/0 .rodata          l_r */
#pragma push
#pragma force_active on
// radius
const static f32 l_r[2] = {
    30.0f, 
    50.0f,
};
COMPILER_STRIP_GATE(0x80CECAFC, &l_r);
#pragma pop

/* 80CECB04-80CECB0C 000050 0008+00 0/1 0/0 0/0 .rodata          l_rolling_speedF */
#pragma push
#pragma force_active on
const static f32 l_rolling_speedF[2] = {
    9.0f,
    9.0f
};
COMPILER_STRIP_GATE(0x80CECB04, &l_rolling_speedF);
#pragma pop

/* 80CECB0C-80CECB14 000058 0008+00 0/0 0/0 0/0 .rodata          l_rolling_time */
#pragma push
#pragma force_active on
const static u32 l_rolling_time[2] = {
    0x0000001E, 
    0x00000017,
};
COMPILER_STRIP_GATE(0x80CECB0C, &l_rolling_time);
#pragma pop

/* 80CECB14-80CECB1C 000060 0008+00 1/2 0/0 0/0 .rodata          l_initial_offsetY */
const static f32 l_initial_offsetY[2] = {
    10.0f,
    20.0f
};
COMPILER_STRIP_GATE(0x80CECB14, &l_initial_offsetY);

/* 80CECB1C-80CECB24 000068 0008+00 0/3 0/0 0/0 .rodata          l_put_offsetY */
#pragma push
#pragma force_active on
const static f32 l_put_offsetY[2] = {
    20.0f,
    30.0f
};
COMPILER_STRIP_GATE(0x80CECB1C, &l_put_offsetY);
#pragma pop

/* 80CECB24-80CECB28 000070 0002+02 1/2 0/0 0/0 .rodata          l_weight */
const static u8 l_weight[2] = {
    0x78,
    0xC8
};
COMPILER_STRIP_GATE(0x80CECB24, &l_weight);

/* 80CECB28-80CECB30 000074 0008+00 0/1 0/0 0/0 .rodata          l_speedH */
#pragma push
#pragma force_active on
const static f32 l_speedH[2] = {
    36.0f, 
    43.0f,
};
COMPILER_STRIP_GATE(0x80CECB28, &l_speedH);
#pragma pop

/* 80CECB30-80CECB38 00007C 0008+00 0/1 0/0 0/0 .rodata          l_speedV */
#pragma push
#pragma force_active on
const static f32 l_speedV[2] = {
    27.0f, 
    22.0f,
};
COMPILER_STRIP_GATE(0x80CECB30, &l_speedV);
#pragma pop

/* 80CECB38-80CECB40 000084 0008+00 0/1 0/0 0/0 .rodata          l_water_speedH */
#pragma push
#pragma force_active on
const static f32 l_water_speedH[2] = {
    5.0f, 
    5.0f,
};
COMPILER_STRIP_GATE(0x80CECB38, &l_water_speedH);
#pragma pop

/* 80CECB40-80CECB48 00008C 0008+00 0/1 0/0 0/0 .rodata          l_water_speedV */
#pragma push
#pragma force_active on
const static f32 l_water_speedV[2] = {
    5.0f, 
    5.0f,
};
COMPILER_STRIP_GATE(0x80CECB40, &l_water_speedV);
#pragma pop

/* 80CECB48-80CECB50 000094 0008+00 0/1 0/0 0/0 .rodata          l_water_resist */
#pragma push
#pragma force_active on
const static f32 l_water_resist[2] = {
    0.02f, 
    0.02f,
};
COMPILER_STRIP_GATE(0x80CECB48, &l_water_resist);
#pragma pop

/* 80CECB50-80CECB58 00009C 0008+00 0/1 0/0 0/0 .rodata          l_water_walk_resist */
#pragma push
#pragma force_active on
const static f32 l_water_walk_resist[2] = {
    0.15f, 
    0.15f,
};
COMPILER_STRIP_GATE(0x80CECB50, &l_water_walk_resist);
#pragma pop

/* 80CECB58-80CECB60 0000A4 0008+00 0/2 0/0 0/0 .rodata          l_buoyancy */
#pragma push
#pragma force_active on
const static f32 l_buoyancy[2] = {
    5.9f, 
    5.9f,
};
COMPILER_STRIP_GATE(0x80CECB58, &l_buoyancy);
#pragma pop

/* 80CECB60-80CECB68 0000AC 0008+00 1/1 0/0 0/0 .rodata          l_shadow_size */
const static f32 l_shadow_size[2] = {
    40.0f,
    65.0f
};
COMPILER_STRIP_GATE(0x80CECB60, &l_shadow_size);

/* 80CECB68-80CECB70 0000B4 0008+00 0/1 0/0 0/0 .rodata          l_wpillar_scl */
#pragma push
#pragma force_active on
const static f32 l_wpillar_scl[2] = {
    0.65f, 
    1.1f,
};
COMPILER_STRIP_GATE(0x80CECB68, &l_wpillar_scl);
#pragma pop

/* 80CECB70-80CECB78 0000BC 0008+00 0/1 0/0 0/0 .rodata          l_hamon_scl */
#pragma push
#pragma force_active on
const static f32 l_hamon_scl[2] = {
    0.7f, 
    1.2f,
};
COMPILER_STRIP_GATE(0x80CECB70, &l_hamon_scl);
#pragma pop

/* 80CECB78-80CECB80 0000C4 0008+00 0/1 0/0 0/0 .rodata          l_yogan_eff_scl */
#pragma push
#pragma force_active on
const static f32 l_yogan_eff_scl[2] = {
    0.6f, 
    1.1f,
};
COMPILER_STRIP_GATE(0x80CECB78, &l_yogan_eff_scl);
#pragma pop

/* 80CECB80-80CECB88 0000CC 0008+00 0/1 0/0 0/0 .rodata          l_wall_h */
#pragma push
#pragma force_active on
const static f32 l_wall_h[2] = {
    30.0f, 
    50.0f,
};
COMPILER_STRIP_GATE(0x80CECB80, &l_wall_h);
#pragma pop

/* 80CECB88-80CECB90 0000D4 0008+00 0/1 0/0 0/0 .rodata          l_wall_r */
#pragma push
#pragma force_active on
const static f32 l_wall_r[2] = {
    30.0f, 
    50.0f
};
COMPILER_STRIP_GATE(0x80CECB88, &l_wall_r);
#pragma pop

/* 80CECB90-80CECB94 0000DC 0004+00 0/1 0/0 0/0 .rodata          l_rot_angle */
#pragma push
#pragma force_active on
const static s16 l_rot_angle[2] = {
    35,
    18
};
COMPILER_STRIP_GATE(0x80CECB90, &l_rot_angle);
#pragma pop

/* 80CECB94-80CECB98 0000E0 0004+00 0/1 0/0 0/0 .rodata          l_walk_rot_angle */
#pragma push
#pragma force_active on
const static s16 l_walk_rot_angle[2] = {
    40,
    40
}; 
COMPILER_STRIP_GATE(0x80CECB94, &l_walk_rot_angle);
#pragma pop

/* 80CECB98-80CECB9C 0000E4 0004+00 0/7 0/0 0/0 .rodata          @3746 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3746[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CECB98, &lit_3746);
#pragma pop

/* 80CECB9C-80CECBA4 0000E8 0008+00 0/4 0/0 0/0 .rodata          @3747 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3747[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CECB9C, &lit_3747);
#pragma pop

/* 80CECBA4-80CECBAC 0000F0 0008+00 0/4 0/0 0/0 .rodata          @3748 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3748[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CECBA4, &lit_3748);
#pragma pop

/* 80CECBAC-80CECBB4 0000F8 0008+00 0/4 0/0 0/0 .rodata          @3749 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3749[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CECBAC, &lit_3749);
#pragma pop

/* 80CECC54-80CECC60 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80CECC60-80CECC74 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80CECC74-80CECC7C -00001 0008+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName[2] = {
    "D_Srock", // small rock
    "D_Brock", // big rock
};

/* 80CECC7C-80CECC88 -00001 000C+00 0/1 0/0 0/0 .data            @4015 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4015[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWait__12daObjStone_cFv,
};
#pragma pop

/* 80CECC88-80CECC94 -00001 000C+00 0/1 0/0 0/0 .data            @4016 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4016[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeDrop__12daObjStone_cFv,
};
#pragma pop

/* 80CECC94-80CECCA0 -00001 000C+00 0/1 0/0 0/0 .data            @4017 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4017[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeCarry__12daObjStone_cFv,
};
#pragma pop

/* 80CECCA0-80CECCAC -00001 000C+00 0/1 0/0 0/0 .data            @4018 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4018[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modePutWait__12daObjStone_cFv,
};
#pragma pop

/* 80CECCAC-80CECCB8 -00001 000C+00 0/1 0/0 0/0 .data            @4019 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4019[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWalk__12daObjStone_cFv,
};
#pragma pop

/* 80CECCB8-80CECCC4 -00001 000C+00 0/1 0/0 0/0 .data            @4020 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4020[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeBreak__12daObjStone_cFv,
};
#pragma pop

/* 80CECCC4-80CECCD0 -00001 000C+00 0/1 0/0 0/0 .data            @4021 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4021[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeYogan__12daObjStone_cFv,
};
#pragma pop

/* 80CECCD0-80CECD24 00007C 0054+00 0/1 0/0 0/0 .data            l_func$4014 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func[84] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80CECD24-80CECD44 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjStone_Method */
static actor_method_class l_daObjStone_Method = {
    (process_method_func)daObjStone_Create__FP10fopAc_ac_c,
    (process_method_func)daObjStone_Delete__FP12daObjStone_c,
    (process_method_func)daObjStone_Execute__FP12daObjStone_c,
    (process_method_func)0,
    (process_method_func)daObjStone_Draw__FP12daObjStone_c
};

/* 80CECD44-80CECD74 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Stone */
extern actor_process_profile_definition g_profile_Obj_Stone = {
    -3,                      // mLayerID  
    8,                       // mListID
    -3,                      // mListPrio 
    PROC_Obj_Stone,          // mProcName             
    0,                       // padding 
    &g_fpcLf_Method.mBase,   // mSubMtd                    
    sizeof(daObjStone_c),    // mSize                    
    0,                       // mSizeOther
    0,                       // mParameters       
    &g_fopAc_Method.base,    // mSubMtd                   
    0x01FF,                  // mPriority     
    0,                       // padding
    0,                       // padding 
    &l_daObjStone_Method,    // mSubMtd                   
    0x00040100,              // mStatus          
    0,                       // mActorType
    23,                      // mCullType 
    0,                       // padding
    0,                       // padding
};

/* 80CECD74-80CECDA4 000120 0030+00 2/2 0/0 0/0 .data            __vt__14dBgS_ObjGndChk */
SECTION_DATA extern void* __vt__14dBgS_ObjGndChk[12] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14dBgS_ObjGndChkFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80CECA94,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80CECAA4,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80CECA9C,
};

/* 80CECDA4-80CECDB0 000150 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80CECDB0-80CECDBC 00015C 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80CECDBC-80CECDC8 000168 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80CECDC8-80CECDD4 000174 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80CECDD4-80CECDE0 000180 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80CECDE0-80CECE04 00018C 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80CECA8C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80CECA84,
};

/* 80CECE04-80CECE10 0001B0 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 80CE9078-80CE935C 000078 02E4+00 1/1 0/0 0/0 .text            bound__FP4cXyzRC13cBgS_PolyInfof */
#ifdef NONMATCHING
// matches with literals
static f32 bound(cXyz* param_0, cBgS_PolyInfo const& param_1, f32 param_2) {
    cM3dGPla plane;
    f32 ret;
    if (dComIfG_Bgsp().GetTriPla(param_1,&plane)) {
        cXyz pos;
        f32 abs = param_0->abs();

        C_VECReflect(param_0,(Vec*)&plane,&pos);
        *param_0 = pos * abs * param_2;

        return param_0->absXZ();
    } else {
        return 0.0f;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void bound(cXyz* param_0, cBgS_PolyInfo const& param_1, f32 param_2) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_stone/d_a_obj_stone/bound__FP4cXyzRC13cBgS_PolyInfof.s"
}
#pragma pop
#endif

/* 80CE935C-80CE93A4 00035C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGPla::~cM3dGPla() {
extern "C" asm void __dt__8cM3dGPlaFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_stone/d_a_obj_stone/__dt__8cM3dGPlaFv.s"
}
#pragma pop

/* 80CE93A4-80CE93C4 0003A4 0020+00 1/1 0/0 0/0 .text            CheckCreateHeap__FP10fopAc_ac_c */
static bool CheckCreateHeap(fopAc_ac_c* i_this) {
    return static_cast<daObjStone_c*>(i_this)->CreateHeap();
}

/* 80CE93C4-80CE9468 0003C4 00A4+00 1/1 0/0 0/0 .text            initBaseMtx__12daObjStone_cFv */
void daObjStone_c::initBaseMtx() {
    field_0x0910 = cXyz::Zero;
    field_0x091c = 0;
    field_0x0930 = ZeroQuat;
    field_0x0920 = field_0x0930;
    mpModel->setBaseScale(mScale);
    setBaseMtx();
}

/* 80CE9468-80CE9540 000468 00D8+00 2/2 0/0 0/0 .text            setBaseMtx__12daObjStone_cFv */
void daObjStone_c::setBaseMtx() {
    mDoMtx_quatMultiply(&field_0x0920,&field_0x0930,&field_0x0920);
    mDoMtx_stack_c::transS(current.pos.x,current.pos.y+mInitialOffsetY,current.pos.z);
    mDoMtx_stack_c::quatM(&field_0x0920);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x,shape_angle.y,shape_angle.z);
    mDoMtx_stack_c::ZXYrotM(mShapeAngle);
    mpModel->i_setBaseTRMtx(mDoMtx_stack_c::get());
    field_0x0930 = field_0x0920;
    field_0x0920 = ZeroQuat;
}

/* ############################################################################################## */
/* 80CECBB4-80CECBB8 000100 0004+00 0/1 0/0 0/0 .rodata          @3844 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3844 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x80CECBB4, &lit_3844);
#pragma pop

/* 80CECBB8-80CECBBC 000104 0004+00 2/8 0/0 0/0 .rodata          @3845 */
SECTION_RODATA static f32 const lit_3845 = 1.0f;
COMPILER_STRIP_GATE(0x80CECBB8, &lit_3845);

/* 80CE9540-80CE97C0 000540 0280+00 1/1 0/0 0/0 .text            Create__12daObjStone_cFv */
#ifdef NONMATCHING
// matches with literals
int daObjStone_c::Create() {
    mShapeAngle = shape_angle;
    shape_angle.setall(0);

    fopAcM_SetMtx(this,mpModel->getBaseTRMtx());

    // set chkCirlce wall bounds
    mChkCircle.SetWall(l_wall_h[mStoneType],l_wall_r[mStoneType]);

    // setup chkobj
    mChkObj.Set(&fopAcM_GetPosition_p(this),&fopAcM_GetOldPosition_p(this),this,1,&mChkCircle,&fopAcM_GetSpeed_p(this),0,0);
    mChkObj.SetWtrChkMode(2);
    mChkObj.ClrObj();
    mChkObj.SetBomb();

    mStatus.Init(l_weight[mStoneType],0xFF,this);

    // setup collider
    mCollider.Set(l_sph_src);
    mCollider.SetR(l_r[mStoneType]);
    mCollider.SetStts(&mStatus);

    if (mStoneType == OBJ_STONE_TYPE_SMALL) {
        mCollider.SetAtAtp(2);
    }

    fopAcM_setCullSizeSphere(this,0.0f,0.0f,0.0f,l_r[mStoneType]*1.2f);
    cLib_onBit(mAttentionInfo.mFlags,16);
    mAttentionInfo.field_0x4[0] = 0x2A;
    fopAcM_OnCarryType(this,fopAcM_CARRY_LIGHT);

    cXyz other_pos = current.pos;

    mChkObj.CrrPos(dComIfG_Bgsp());
    current.pos = other_pos;
    mInitialOffsetY = 0.0f;
    field_0x094d = 0x1E;

    // Set heavy carry type if big stone
    if (mStoneType == OBJ_STONE_TYPE_BIG) {
        fopAcM_OnCarryType(this,fopAcM_CARRY_HEAVY);
    }

    init_modePutWait();
    initBaseMtx();

    u8 stoneType = mStoneType;

    cXyz pos = current.pos;
    pos.y += 1.0f;

    // Create the mark actor that goes under the stone
    fopAcM_createChild(PROC_Obj_StoneMark,fopAcM_GetID(this),stoneType,&pos,fopAcM_GetRoomNo(this),&shape_angle,&mScale,-1,0);

    mSound.init(&current.pos,1);
    mLastPosY = current.pos.y;

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjStone_c::Create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_stone/d_a_obj_stone/Create__12daObjStone_cFv.s"
}
#pragma pop
#endif

/* 80CE97C0-80CE9840 0007C0 0080+00 1/1 0/0 0/0 .text            CreateHeap__12daObjStone_cFv */
bool daObjStone_c::CreateHeap() {
    mpModel = mDoExt_J3DModel__create((J3DModelData*)dComIfG_getObjectRes(l_arcName[mStoneType],l_bmdIdx[mStoneType]),0x80000,0x11000084);
    return mpModel != NULL;
}

/* 80CE9840-80CE99D4 000840 0194+00 1/1 0/0 0/0 .text            create__12daObjStone_cFv */
#ifdef NONMATCHING
// matches, but too many destructors being generated
int daObjStone_c::create() {
    if (!fopAcM_CheckCondition(this, 8)) {
        new (this) daObjStone_c();
        fopAcM_OnCondition(this, 8);
    }

    mStoneType = getType();

    int phase = dComIfG_resLoad(&mPhase,l_arcName[mStoneType]);

    if (phase == cPhs_COMPLEATE_e) {
        // Allocate solid heap on GAME and load rock's model into it
        if (!fopAcM_entrySolidHeap(this,(heapCallbackFunc)CheckCreateHeap,0x860)) {
            return cPhs_ERROR_e;
        }

        // Load everything else?
        if (!Create()) {
            return cPhs_ERROR_e;
        }
    }

    return phase;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjStone_c::create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_stone/d_a_obj_stone/func_80CE9840.s"
}
#pragma pop
#endif

/* 80CE99D4-80CE9A1C 0009D4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGSph::~cM3dGSph() {
extern "C" asm void __dt__8cM3dGSphFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_stone/d_a_obj_stone/__dt__8cM3dGSphFv.s"
}
#pragma pop

/* 80CE9A1C-80CE9A64 000A1C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_stone/d_a_obj_stone/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80CE9A64-80CE9AC0 000A64 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_stone/d_a_obj_stone/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 80CE9AC0-80CE9B30 000AC0 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_stone/d_a_obj_stone/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 80CE9B30-80CE9BA0 000B30 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_stone/d_a_obj_stone/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80CECBBC-80CECBC0 000108 0004+00 1/3 0/0 0/0 .rodata          @4010 */
SECTION_RODATA static f32 const lit_4010 = -6.0f;
COMPILER_STRIP_GATE(0x80CECBBC, &lit_4010);

/* 80CE9BA0-80CE9CF8 000BA0 0158+00 1/1 0/0 0/0 .text            execute__12daObjStone_cFv */
#ifdef NONMATCHING
// matches but cXyz destructor being generated after this function
int daObjStone_c::execute() {
    cXyz pos;

    mStatus.SetWeight(l_weight[this->mStoneType]);
    fopAcM_SetGravity(this,FLOAT_LABEL(lit_4010));
    mode_proc_call();

    if (mCollider.ChkTgHit() && mCollider.GetTgHitObj()) {
        mSound.startCollisionSE(mCollider.GetTgHitObjHitSeID(1),2,0);
    }

    mSound.framework(0,dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    mAttentionInfo.mPosition = current.pos;
    mEyePos = mAttentionInfo.mPosition;

    setBaseMtx();
    pos = current.pos;
    pos.y += mInitialOffsetY;
    
    mCollider.SetC(pos);
    dComIfG_Ccsp()->Set(&mCollider);
    mChkObj.OffLineCheck();
    field_0x094f = mIsInWater;
    effect_delete(false);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjStone_c::execute() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_stone/d_a_obj_stone/execute__12daObjStone_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80CECBC0-80CECBC4 00010C 0004+00 0/1 0/0 0/0 .rodata          @4632 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4632 = 2.0f;
COMPILER_STRIP_GATE(0x80CECBC0, &lit_4632);
#pragma pop

/* 80CECBC4-80CECBC8 000110 0004+00 0/1 0/0 0/0 .rodata          @4633 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4633 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80CECBC4, &lit_4633);
#pragma pop

/* 80CECBC8-80CECBCC 000114 0004+00 0/5 0/0 0/0 .rodata          @4634 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4634 = 0.5f;
COMPILER_STRIP_GATE(0x80CECBC8, &lit_4634);
#pragma pop

/* 80CECBCC-80CECBD0 000118 0004+00 0/2 0/0 0/0 .rodata          @4635 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4635 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80CECBCC, &lit_4635);
#pragma pop

/* 80CECBD0-80CECBD4 00011C 0004+00 0/1 0/0 0/0 .rodata          @4636 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4636 = -100000.0f;
COMPILER_STRIP_GATE(0x80CECBD0, &lit_4636);
#pragma pop

/* 80CECBD4-80CECBD8 000120 0004+00 0/3 0/0 0/0 .rodata          @4637 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4637 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80CECBD4, &lit_4637);
#pragma pop

/* 80CECBD8-80CECBDC 000124 0004+00 0/1 0/0 0/0 .rodata          @4638 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4638 = 60.0f;
COMPILER_STRIP_GATE(0x80CECBD8, &lit_4638);
#pragma pop

/* 80CECBDC-80CECBE0 000128 0004+00 0/1 0/0 0/0 .rodata          @4639 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4639 = 100.0f;
COMPILER_STRIP_GATE(0x80CECBDC, &lit_4639);
#pragma pop

/* 80CECBE0-80CECBE4 00012C 0004+00 1/4 0/0 0/0 .rodata          @4640 */
SECTION_RODATA static f32 const lit_4640 = -1.0f;
COMPILER_STRIP_GATE(0x80CECBE0, &lit_4640);

/* 80CECBE4-80CECBE8 000130 0004+00 0/1 0/0 0/0 .rodata          @4641 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4641 = 90.0f;
COMPILER_STRIP_GATE(0x80CECBE4, &lit_4641);
#pragma pop

/* 80CECBE8-80CECBEC 000134 0004+00 0/2 0/0 0/0 .rodata          @4642 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4642 = -10.0f;
COMPILER_STRIP_GATE(0x80CECBE8, &lit_4642);
#pragma pop

/* 80CECBEC-80CECBF0 000138 0004+00 0/3 0/0 0/0 .rodata          @4643 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4643 = 10.0f;
COMPILER_STRIP_GATE(0x80CECBEC, &lit_4643);
#pragma pop

/* 80CECBF0-80CECBF4 00013C 0004+00 0/3 0/0 0/0 .rodata          @4644 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4644 = 50.0f;
COMPILER_STRIP_GATE(0x80CECBF0, &lit_4644);
#pragma pop

/* 80CE9CF8-80CEAF10 000CF8 1218+00 1/1 0/0 0/0 .text            mode_proc_call__12daObjStone_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjStone_c::mode_proc_call() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_stone/d_a_obj_stone/mode_proc_call__12daObjStone_cFv.s"
}
#pragma pop

/* 80CEAF10-80CEAF88 001F10 0078+00 4/3 0/0 0/0 .text            __dt__14dBgS_ObjGndChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjGndChk::~dBgS_ObjGndChk() {
extern "C" asm void __dt__14dBgS_ObjGndChkFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_stone/d_a_obj_stone/__dt__14dBgS_ObjGndChkFv.s"
}
#pragma pop

/* 80CEAF88-80CEAFD8 001F88 0050+00 1/1 0/0 0/0 .text            init_modePutWait__12daObjStone_cFv
 */
void daObjStone_c::init_modePutWait() {
    mCollider.OffAtSPrmBit(1);
    mCollider.OnCoSPrmBit(1);
    cLib_onBit(mAttentionInfo.mFlags,16);
    mInitialOffsetY = l_initial_offsetY[mStoneType];
    mMode = 0;
    field_0x0907 = 3;
}

/* 80CEAFD8-80CEAFE8 001FD8 0010+00 1/0 0/0 0/0 .text            modePutWait__12daObjStone_cFv */
void daObjStone_c::modePutWait() {
    mMode++;
}

/* 80CEAFE8-80CEB01C 001FE8 0034+00 2/2 0/0 0/0 .text            init_modeWait__12daObjStone_cFv */
void daObjStone_c::init_modeWait() {
    mCollider.OffAtSPrmBit(1);
    mCollider.OnCoSPrmBit(1);
    cLib_onBit(mAttentionInfo.mFlags,16);
    mMode = 0;
    field_0x0907 = 0;
}

/* ############################################################################################## */
/* 80CECBF4-80CECBF8 000140 0004+00 0/1 0/0 0/0 .rodata          @4678 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4678 = 19.0f / 20.0f;
COMPILER_STRIP_GATE(0x80CECBF4, &lit_4678);
#pragma pop

/* 80CECBF8-80CECBFC 000144 0004+00 0/2 0/0 0/0 .rodata          @4679 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4679 = 8.0f;
COMPILER_STRIP_GATE(0x80CECBF8, &lit_4679);
#pragma pop

/* 80CEB01C-80CEB0B8 00201C 009C+00 1/0 0/0 0/0 .text            modeWait__12daObjStone_cFv */
void daObjStone_c::modeWait() {
    mMode++;
    speedF *= FLOAT_LABEL(lit_4678);

    fopAcM_posMoveF(this,mStatus.GetCCMoveP());
    cLib_chaseF(&mInitialOffsetY,l_put_offsetY[mStoneType],FLOAT_LABEL(lit_4679));

    if (mMode > 5 && checkRollAngle()) {
        init_modeWalk();
    }
}

/* 80CEB0B8-80CEB0F8 0020B8 0040+00 1/1 0/0 0/0 .text            init_modeDrop__12daObjStone_cFv */
void daObjStone_c::init_modeDrop() {
    mCollider.OnAtSPrmBit(1);
    mCollider.OnCoSPrmBit(1);
    cLib_offBit(mAttentionInfo.mFlags,16);
    mMode = 0;
    mLastPosY = current.pos.y;
    field_0x0907 = 1;
}

/* 80CEB0F8-80CEB35C 0020F8 0264+00 1/0 0/0 0/0 .text            modeDrop__12daObjStone_cFv */
#ifdef NONMATCHING
// matches with literals
void daObjStone_c::modeDrop() {
    cXyz pos2, pos;
    mMode++;
    mChkObj.OnLineCheck();

    if (mIsInWater != 0) {
        mCollider.OffAtSPrmBit(1);
        mChkObj.ChkGroundHit() ? cLib_onBit(mAttentionInfo.mFlags,16) : cLib_offBit(mAttentionInfo.mFlags,16);

        pos2.x = speedF * cM_ssin(current.angle.y);
        pos2.y = speed.y;
        pos2.z = speedF * cM_scos(current.angle.y);

        pos = pos2;
        pos.x = -pos.x * l_water_resist[mStoneType];
        pos.y = -pos.y * l_water_resist[mStoneType];
        pos.z = -pos.z * l_water_resist[mStoneType];
        
        
        pos2 += pos;
        speedF = sqrtf(pos2.x*pos2.x + pos2.z*pos2.z);
        speed.y = pos2.y;

        fopAcM_SetGravity(this,-6.0f + l_buoyancy[mStoneType]);
    }

    fopAcM_posMoveF(this,mStatus.GetCCMoveP());
    mLastSpeedY = speed.y;
    calcRotBaseMtx(0);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjStone_c::modeDrop() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_stone/d_a_obj_stone/modeDrop__12daObjStone_cFv.s"
}
#pragma pop
#endif

/* 80CEB35C-80CEB480 00235C 0124+00 1/1 0/0 0/0 .text            init_modeCarry__12daObjStone_cFv */
#ifdef NONMATCHING
// matches with literals
void daObjStone_c::init_modeCarry() {
    mCollider.OffCoSPrmBit(1);
    mCollider.OffAtSPrmBit(1);
    fopAcM_SetModel(this,mpModel);
    mMode = 0;
    field_0x0950 = field_0x0907;
    if (mIsInWater == 0) {
        if (mStoneType == OBJ_STONE_TYPE_BIG) {
            fopAcM_seStart(this,Z2SE_OBJ_CMN_L_ROCK_LIFT,0); // literals inline
        } else {
            fopAcM_seStart(this,Z2SE_OBJ_CMN_ROCK_LIFT,0); // literals inline
        }
    }
    
    field_0x0907 = 2;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjStone_c::init_modeCarry() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_stone/d_a_obj_stone/init_modeCarry__12daObjStone_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80CECBFC-80CECC00 000148 0004+00 0/1 0/0 0/0 .rodata          @4829 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4829 = 0.25f;
COMPILER_STRIP_GATE(0x80CECBFC, &lit_4829);
#pragma pop

/* 80CEB480-80CEB6E8 002480 0268+00 1/0 0/0 0/0 .text            modeCarry__12daObjStone_cFv */
#ifdef NONMATCHING
// matches with literals
void daObjStone_c::modeCarry() {
    mMode++;

    if (mMode == 8 && mStoneType == OBJ_STONE_TYPE_SMALL) {
        mInitialOffsetY = l_r[mStoneType];
        set_carry_eff();
    }

    if (mMode == 17 && mStoneType == OBJ_STONE_TYPE_BIG) {
        mInitialOffsetY = l_r[mStoneType];
        set_carry_eff();
    }

    if (field_0x0908 == 0) {
        if (mStoneType == OBJ_STONE_TYPE_BIG) {
            if (mMode == 21) {
                createItem();
                field_0x0908 = 1;
            }
        } else if (mMode == 14) {
            createItem();
            field_0x0908 = 1;
        }
    }

    if ((mStoneType == OBJ_STONE_TYPE_SMALL && mMode > 8) ||  (mStoneType == OBJ_STONE_TYPE_BIG && mMode > 17)) { 
        f32 frame_rate = daPy_getLinkPlayerActorClass()->getBaseAnimeFrameRate() * 0.25f;
        mDoMtx_quatSlerp(&field_0x0930, &ZeroQuat, &field_0x0930, frame_rate);
    }

    if (!fopAcM_checkCarryNow(this)) {
        if (speedF != 0.0f) {
            mChkObj.CrrPos(dComIfG_Bgsp());
            mIsInWater = mChkObj.ChkWaterIn();

            if (!mIsInWater) {
                speedF = l_speedH[mStoneType];
                speed.y = l_speedV[mStoneType];
            } else {
                speedF = l_water_speedH[mStoneType];
                speed.y = l_water_speedV[mStoneType];

                if (speed.y < -10.0f)
                    speed.y = -10.0f;
                
                if (speed.y > 10.0f)
                    speed.y = 10.0f;

                if (speedF > 10.0f)
                    speedF = 10.0f;
            }
            mInitialOffsetY = l_r[mStoneType];
            init_modeDrop();
        } else {
            mLastPosY = current.pos.y;
            init_modeWait();
        }

        model = 0;
    }
    
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjStone_c::modeCarry() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_stone/d_a_obj_stone/modeCarry__12daObjStone_cFv.s"
}
#pragma pop
#endif

/* 80CEB6E8-80CEB720 0026E8 0038+00 2/2 0/0 0/0 .text            init_modeWalk__12daObjStone_cFv */
void daObjStone_c::init_modeWalk() {
    mCollider.OffAtSPrmBit(1);
    mCollider.OnCoSPrmBit(1);
    cLib_onBit(mAttentionInfo.mFlags,16);
    mMode = 0;
    field_0x0907 = 4;
}

/* ############################################################################################## */
/* 80CECC00-80CECC04 00014C 0004+00 0/2 0/0 0/0 .rodata          @5018 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5018 = 0x467BBBBC;
COMPILER_STRIP_GATE(0x80CECC00, &lit_5018);
#pragma pop

/* 80CECC04-80CECC08 000150 0004+00 0/1 0/0 0/0 .rodata          @5019 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5019 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x80CECC04, &lit_5019);
#pragma pop

/* 80CECC08-80CECC0C 000154 0004+00 0/1 0/0 0/0 .rodata          @5020 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5020 = 0x3C23D70B;
COMPILER_STRIP_GATE(0x80CECC08, &lit_5020);
#pragma pop

/* 80CECC0C-80CECC10 000158 0004+00 0/1 0/0 0/0 .rodata          @5021 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5021 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x80CECC0C, &lit_5021);
#pragma pop

/* 80CEB720-80CEBCDC 002720 05BC+00 1/0 0/0 0/0 .text            modeWalk__12daObjStone_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjStone_c::modeWalk() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_stone/d_a_obj_stone/modeWalk__12daObjStone_cFv.s"
}
#pragma pop

/* 80CEBCDC-80CEBE24 002CDC 0148+00 1/1 0/0 0/0 .text init_modePushWolfNonBreak__12daObjStone_cFv
 */
#ifdef NONMATCHING
// matches with literals
void daObjStone_c::init_modePushWolfNonBreak() {
    mCollider.OffAtSPrmBit(1);
    mCollider.OnCoSPrmBit(1);
    fopAcM_cancelCarryNow(this);
    current.angle.y = daPy_getPlayerActorClass()->current.angle.y;
    speedF = l_rolling_speedF[mStoneType];
    field_0x0950 = field_0x0907;
    mMode = 0;

    if (mIsInWater == 0) {
        if (mStoneType == OBJ_STONE_TYPE_BIG) {
            fopAcM_seStart(this,Z2SE_OBJ_CMN_L_ROCK_ROLL,0); // literals inline
        } else {
            fopAcM_seStart(this,Z2SE_OBJ_CMN_ROCK_ROLL,0); // literals inline
        }
    }

    field_0x0907 = 4;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjStone_c::init_modePushWolfNonBreak() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_stone/d_a_obj_stone/init_modePushWolfNonBreak__12daObjStone_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80CECC10-80CECC14 00015C 0004+00 0/1 0/0 0/0 .rodata          @5063 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5063 = -2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80CECC10, &lit_5063);
#pragma pop

/* 80CECC14-80CECC18 000160 0004+00 0/1 0/0 0/0 .rodata          @5064 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5064 = -2.0f;
COMPILER_STRIP_GATE(0x80CECC14, &lit_5064);
#pragma pop

/* 80CEBE24-80CEBE84 002E24 0060+00 1/1 0/0 0/0 .text            init_modeYogan__12daObjStone_cFv */
void daObjStone_c::init_modeYogan() {
    mCollider.OffAtSPrmBit(1);
    mCollider.OnCoSPrmBit(1);
    mInitialOffsetY = l_initial_offsetY[mStoneType];
    mMode = 0;
    fopAcM_SetGravity(this,FLOAT_LABEL(lit_5063));
    fopAcM_SetMaxFallSpeed(this,FLOAT_LABEL(lit_5064));
    current.pos.y = mChkObj.m_wtr.GetHeight();
    field_0x0907 = 6;
}

/* ############################################################################################## */
/* 80CECC18-80CECC1C 000164 0004+00 1/1 0/0 0/0 .rodata          @5074 */
SECTION_RODATA static f32 const lit_5074 = 200.0f;
COMPILER_STRIP_GATE(0x80CECC18, &lit_5074);

/* 80CECC1C-80CECC20 000168 0004+00 1/1 0/0 0/0 .rodata          @5075 */
SECTION_RODATA static f32 const lit_5075 = 13.0f / 20.0f;
COMPILER_STRIP_GATE(0x80CECC1C, &lit_5075);

/* 80CEBE84-80CEBF1C 002E84 0098+00 1/0 0/0 0/0 .text            modeYogan__12daObjStone_cFv */
void daObjStone_c::modeYogan() {
    f32 height = mChkObj.m_wtr.GetHeight();
    f32 pos_y = FLOAT_LABEL(lit_5074) + current.pos.y;

    bool pos_check = height > pos_y;
    bool gnd_landing = mChkObj.ChkGroundLanding();

    speedF *= FLOAT_LABEL(lit_5075);
    fopAcM_posMoveF(this,0);
    
    if (pos_check || gnd_landing) {
        fopAcM_delete(this);
    }

    mMode++;
}

/* ############################################################################################## */
/* 80CECC20-80CECC2C 00016C 0006+06 0/1 0/0 0/0 .rodata          l_eff_id$5089 */
#pragma push
#pragma force_active on
const static u8 l_eff_id[10] = {
    0x85,
    0x9B,
    0x85,
    0x9C,
    0x85,
    0x9D,
};
COMPILER_STRIP_GATE(0x80CECC20, &l_eff_id);
#pragma pop

/* 80CECC3C-80CECC3C 000188 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CECC4C = "Always";
#pragma pop

/* 80CEBF1C-80CEC180 002F1C 0264+00 1/1 0/0 0/0 .text            init_modeBreak__12daObjStone_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjStone_c::init_modeBreak() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_stone/d_a_obj_stone/init_modeBreak__12daObjStone_cFv.s"
}
#pragma pop

/* 80CEC180-80CEC1AC 003180 002C+00 1/0 0/0 0/0 .text            modeBreak__12daObjStone_cFv */
void daObjStone_c::modeBreak() {
    mMode++;
    fopAcM_delete(this);
}

/* 80CEC1AC-80CEC264 0031AC 00B8+00 1/1 0/0 0/0 .text            CrrPos__12daObjStone_cFv */
void daObjStone_c::CrrPos() {
    bool check1 = false;
    bool check2 = false;

    cXyz pos = current.pos;
    u8 mode = field_0x0907;
    
    
    if (mode == 2) {
        check1 = true;
        pos = current.pos;
        
    }

    if (field_0x0907 == 3) {
        check2 = true;
    }

    if (!check2) {
        mChkObj.CrrPos(dComIfG_Bgsp());  
    } 
    
    if (check1) {
        current.pos = pos;
    }
}

/* 80CEC264-80CEC33C 003264 00D8+00 3/3 0/0 0/0 .text            createItem__12daObjStone_cFv */
#ifdef NONMATCHING
// matches but generates extra destructor
void daObjStone_c::createItem() {
    int item_no = getItemNo();
    int item_bit = getItemBit();
    
    csXyz angle(0,orig.angle.y,0);
    u8 item_type = getItemType();

    if (item_type == 0) {
        cXyz pos(orig.pos);
        fopAcM_createItem(&pos,item_no,item_bit,fopAcM_GetHomeRoomNo(this),&angle,0,8);
    } else {
        fopAcM_createItemFromTable(&orig.pos,item_no,item_bit,fopAcM_GetHomeRoomNo(this),&angle,8,0,0,0,false);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjStone_c::createItem() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_stone/d_a_obj_stone/createItem__12daObjStone_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80CECC2C-80CECC34 000178 0008+00 0/1 0/0 0/0 .rodata          @5256 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5256[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CECC2C, &lit_5256);
#pragma pop

/* 80CEC33C-80CEC5BC 00333C 0280+00 2/2 0/0 0/0 .text            calcRotBaseMtx__12daObjStone_cFPs
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjStone_c::calcRotBaseMtx(s16* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_stone/d_a_obj_stone/calcRotBaseMtx__12daObjStone_cFPs.s"
}
#pragma pop

/* 80CEC5BC-80CEC6D8 0035BC 011C+00 1/1 0/0 0/0 .text            checkRollAngle__12daObjStone_cFv */
#ifdef NONMATCHING
// matches but cM3dGPla dtor will be generated in wrong place until TU is finished (due to bound function float literal inlines)
int daObjStone_c::checkRollAngle() {
    cXyz pos = current.pos;
    pos.y += FLOAT_LABEL(lit_4644);
    cM3dGPla plane;

    bool gnd_chk = fopAcM_gc_c::gndCheck(&pos);
    bool triPla = dComIfG_Bgsp().GetTriPla(*(dBgS_GndChk*)&fopAcM_gc_c::mGndCheck,&plane); // there's an inline here but it can be used until fopAcM_gc_c::mGndCheck is properly setup
    f32 ground_y = fopAcM_gc_c::getGroundY();

    if (gnd_chk && FLOAT_LABEL(lit_4637) != ground_y && triPla) {
        f32 tmp2 = cM_scos(i_cM_deg2s(FLOAT_LABEL(lit_5018))); // not sure what happened here. debug implies there's a multiply happening in cM_deg2s, but retail has no such instructions

        cXyz pos2 = plane.mNormal;

        if (pos2.y < tmp2) {
            return 1;
        }

    }

    return 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjStone_c::checkRollAngle() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_stone/d_a_obj_stone/checkRollAngle__12daObjStone_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80CECC34-80CECC3C 000180 0006+02 0/1 0/0 0/0 .rodata          l_carry_eff_id$5307 */
#pragma push
#pragma force_active on
const static u16 l_carry_eff_id[3] = {
    0x859E,
    0x859F,
    0x85A0
};
COMPILER_STRIP_GATE(0x80CECC34, &l_carry_eff_id);
#pragma pop

/* 80CEC6D8-80CEC7DC 0036D8 0104+00 1/1 0/0 0/0 .text            set_carry_eff__12daObjStone_cFv */
#ifdef NONMATCHING
// matches with literals
void daObjStone_c::set_carry_eff() {
    cXyz pos;

    if (mStoneType == 1) {
        pos.setAll(FLOAT_LABEL(lit_3845));
    } else {
        pos.setAll(FLOAT_LABEL(lit_4634));
    }

    if (field_0x0950 == 3) {
        for (int i = 0; i < 3; i++) {
            field_0x0964[i] = dComIfGp_particle_set(l_carry_eff_id[i],
                                &current.pos,0,&pos,0xFF,0,0xFFFFFFFF,
                                0,0,0); // float literal inline
            if (field_0x0964[i] != 0) {
                field_0x0964[i]->becomeImmortalEmitter();
            }
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjStone_c::set_carry_eff() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_stone/d_a_obj_stone/set_carry_eff__12daObjStone_cFv.s"
}
#pragma pop
#endif

/* 80CEC7DC-80CEC888 0037DC 00AC+00 2/2 0/0 0/0 .text            effect_delete__12daObjStone_cFb */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjStone_c::effect_delete(bool param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_stone/d_a_obj_stone/effect_delete__12daObjStone_cFb.s"
}
#pragma pop

/* 80CEC888-80CEC948 003888 00C0+00 1/1 0/0 0/0 .text            draw__12daObjStone_cFv */
int daObjStone_c::draw() {
    g_env_light.settingTevStruct(8,&current.pos,&mTevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel,&mTevStr);
    mDoExt_modelUpdateDL(mpModel);

    if (!model) {
        f32 shadow_size = l_shadow_size[mStoneType];
        GXTexObj* pTex = dDlst_shadowControl_c::getSimpleTex();
        cXyz pos = current.pos;

        dComIfGd_setSimpleShadow(&pos,
                        mChkObj.GetGroundH(),
                        shadow_size,
                        mChkObj.m_gnd,
                        0,
                        FLOAT_LABEL(lit_3845),
                        pTex);
    }
    return 1;
}

/* 80CEC948-80CEC9BC 003948 0074+00 1/1 0/0 0/0 .text            _delete__12daObjStone_cFv */
int daObjStone_c::_delete() {
    mSound.deleteObject();
    u16 setid = fopAcM_GetSetId(this);
    fopAcM_offActor(this,setid);
    effect_delete(true);
    dComIfG_resDelete(&mPhase,l_arcName[mStoneType]);
    return 1;
}

/* 80CEC9BC-80CEC9DC 0039BC 0020+00 1/0 0/0 0/0 .text            daObjStone_Draw__FP12daObjStone_c
 */
static int daObjStone_Draw(daObjStone_c* i_this) {
    return i_this->draw();
}

/* 80CEC9DC-80CEC9FC 0039DC 0020+00 1/0 0/0 0/0 .text daObjStone_Execute__FP12daObjStone_c */
static int daObjStone_Execute(daObjStone_c* i_this) {
    return i_this->execute();
}

/* 80CEC9FC-80CECA1C 0039FC 0020+00 1/0 0/0 0/0 .text            daObjStone_Delete__FP12daObjStone_c
 */
static int daObjStone_Delete(daObjStone_c* i_this) {
    return i_this->_delete();
}

/* 80CECA1C-80CECA3C 003A1C 0020+00 1/0 0/0 0/0 .text            daObjStone_Create__FP10fopAc_ac_c
 */
static int daObjStone_Create(fopAc_ac_c* param_0) {
    return static_cast<daObjStone_c*>(param_0)->create();
}

/* 80CECA3C-80CECA84 003A3C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_stone/d_a_obj_stone/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 80CECA84-80CECA8C 003A84 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80CECA84() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_stone/d_a_obj_stone/func_80CECA84.s"
}
#pragma pop

/* 80CECA8C-80CECA94 003A8C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80CECA8C() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_stone/d_a_obj_stone/func_80CECA8C.s"
}
#pragma pop

/* 80CECA94-80CECA9C 003A94 0008+00 1/0 0/0 0/0 .text            @20@__dt__14dBgS_ObjGndChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80CECA94() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_stone/d_a_obj_stone/func_80CECA94.s"
}
#pragma pop

/* 80CECA9C-80CECAA4 003A9C 0008+00 1/0 0/0 0/0 .text            @76@__dt__14dBgS_ObjGndChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80CECA9C() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_stone/d_a_obj_stone/func_80CECA9C.s"
}
#pragma pop

/* 80CECAA4-80CECAAC 003AA4 0008+00 1/0 0/0 0/0 .text            @60@__dt__14dBgS_ObjGndChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80CECAA4() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_stone/d_a_obj_stone/func_80CECAA4.s"
}
#pragma pop

/* 80CECC3C-80CECC3C 000188 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
