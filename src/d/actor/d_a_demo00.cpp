/**
 * @file d_a_demo00.cpp
 * 
*/

#include "d/actor/d_a_demo00.h"
#include "JSystem/JKernel/JKRSolidHeap.h"
#include "SSystem/SComponent/c_counter.h"
#include "d/d_com_inf_game.h"
#include "d/d_kankyo_rain.h"
#include "dol2asm.h"
#include "d/d_camera.h"
#include "m_Do/m_Do_graphic.h"
#include "m_Do/m_Do_ext.h"
#include "d/d_demo.h"
#include "Z2AudioLib/Z2Instances.h"





//
// Forward References:
//

extern "C" void reset__16daDemo00_resID_cFv();
extern "C" void reset__16daDemo00_model_cFv();
extern "C" void __dt__10daDemo00_cFv();
extern "C" void __dt__12demo_s1_ke_sFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" static void get_foward_angle__FP4cXyzP4cXyzPsPs();
extern "C" void setBaseMtx__10daDemo00_cFv();
extern "C" void setShadowSize__10daDemo00_cFv();
extern "C" static void awaCheck__FP8J3DModel();
extern "C" static void createHeapCallBack__FP10fopAc_ac_c();
extern "C" void createHeap__10daDemo00_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void actStandby__10daDemo00_cFP13dDemo_actor_c();
extern "C" void actPerformance__10daDemo00_cFP13dDemo_actor_c();
extern "C" void actLeaving__10daDemo00_cFP13dDemo_actor_c();
extern "C" static void mDad00_changeXluMaterial__FP11J3DMateriali();
extern "C" static void teduna_calc__FP4cXyzP4cXyzP4cXyzsi();
extern "C" static void teduna_draw__FP8J3DModelP19mDoExt_3DlineMat1_cP12dKy_tevstr_ciiii();
extern "C" static void teduna_ganon_hand_set__FP8J3DModelii();
extern "C" static void ke_control__FP10daDemo00_cP12demo_s1_ke_sif();
extern "C" static void ke_move__FP10daDemo00_cP19mDoExt_3DlineMat0_cP12demo_s1_ke_sif();
extern "C" static void ke_set__FP10daDemo00_c();
extern "C" static void daDemo00_Draw__FP10daDemo00_c();
extern "C" void draw__10daDemo00_cFv();
extern "C" static void daDemo00_Execute__FP10daDemo00_c();
extern "C" void execute__10daDemo00_cFv();
extern "C" static bool daDemo00_IsDelete__FP10daDemo00_c();
extern "C" static void daDemo00_Delete__FP10daDemo00_c();
extern "C" static void daDemo00_Create__FP10fopAc_ac_c();
extern "C" void __ct__12demo_s1_ke_sFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __sinit_d_a_demo00_cpp();
extern "C" void func_804A87DC();
extern "C" void func_804A8814();
extern "C" extern char const* const d_a_demo00__stringBase0;

//
// External References:
//

extern "C" void fadeOut__13mDoGph_gInf_cFfR8_GXColor();
extern "C" void fadeOut__13mDoGph_gInf_cFf();
extern "C" void mDoMtx_XYZrotM__FPA4_fsss();
extern "C" void mDoMtx_XrotS__FPA4_fs();
extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_bpkAnmFP16J3DMaterialTableP11J3DAnmColoriifss();
extern "C" void entry__13mDoExt_bpkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss();
extern "C" void entry__13mDoExt_btpAnmFP16J3DMaterialTables();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_blkAnmFP13J3DDeformDataP13J3DAnmClusteriifss();
extern "C" void mDoExt_modelTexturePatch__FP12J3DModelData();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void create__21mDoExt_invisibleModelFP8J3DModelUc();
extern "C" void entryDL__21mDoExt_invisibleModelFP4cXyz();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void updateDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void init__19mDoExt_3DlineMat0_cFUsUsi();
extern "C" void update__19mDoExt_3DlineMat0_cFiR8_GXColorP12dKy_tevstr_c();
extern "C" void init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi();
extern "C" void update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c();
extern "C" void setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void mDoLib_project__FP3VecP3Vec();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc();
extern "C" void fopAcM_DeleteHeap__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_getPolygonAngle__FPC8cM3dGPlas();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void daMP_c_THPPlayerPlay__6daMP_cFv();
extern "C" void daMP_c_THPPlayerPause__6daMP_cFv();
extern "C" void onEventBit__11dSv_event_cFUs();
extern "C" void getDemoIDData__13dDemo_actor_cFPiPiPiPUsPUc();
extern "C" void dDemo_setDemoData__FP10fopAc_ac_cUcP14mDoExt_McaMorfPCciPUsUlSc();
extern "C" void getActor__14dDemo_object_cFUc();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getIDRes__14dRes_control_cFPCcUsP11dRes_info_ci();
extern "C" void
setWaterRipple__13dPa_control_cFPUlR13cBgS_PolyInfoPC4cXyzfPC12dKy_tevstr_cPC4cXyzSc();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void dKyw_rain_set__Fi();
extern "C" void dKyr_get_vectle_calc__FP4cXyzP4cXyzP4cXyz();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void StartQuake__12dVibration_cFii4cXyz();
extern "C" void StopQuake__12dVibration_cFi();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __ct__18dBgS_CamGndChk_WtrFv();
extern "C" void __dt__18dBgS_CamGndChk_WtrFv();
extern "C" void execItemGet__FUc();
extern "C" void StartBlure__9dCamera_cFiP10fopAc_ac_cff();
extern "C" void dCam_getBody__Fv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_change_colpat__FUc();
extern "C" void dKy_tevstr_init__FP12dKy_tevstr_cScUc();
extern "C" void dKy_BossSpotLight_set__FP4cXyzfffP8_GXColorfUcUc();
extern "C" void dKy_pol_sound_get__FPC13cBgS_PolyInfo();
extern "C" void dKy_bg_MAxx_proc__FPv();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" bool __ne__4cXyzCFRC3Vec();
extern "C" void atan2sX_Z__4cXyzCFv();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_initRnd2__Fiii();
extern "C" void cM_rndF2__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void cBgW_CheckBGround__Ff();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void MtxPush__Fv();
extern "C" void MtxPull__Fv();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void __dt__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void getName__10JUTNameTabCFUs();
extern "C" void setDeformData__8J3DModelFP13J3DDeformDataUl();
extern "C" void setSkinDeform__8J3DModelFP13J3DSkinDeformUl();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __ct__13J3DSkinDeformFv();
extern "C" void removeMatColorAnimator__16J3DMaterialTableFP11J3DAnmColor();
extern "C" void removeTexNoAnimator__16J3DMaterialTableFP16J3DAnmTexPattern();
extern "C" void removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey();
extern "C" void removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_19();
extern "C" void _savegpr_22();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_22();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 const tempBitLabels__20dSv_event_tmp_flag_c[370 + 2 /* padding */];
extern "C" extern void* __vt__19mDoExt_3DlineMat1_c[5];
extern "C" extern void* __vt__19mDoExt_3DlineMat0_c[5];
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mWaterCheck__11fopAcM_wt_c[84 + 4 /* padding */];
extern "C" u8 mDemoArcName__20dStage_roomControl_c[10 + 2 /* padding */];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mFrameBufferTimg__13mDoGph_gInf_c[4];
extern "C" u8 m_object__7dDemo_c[4];
extern "C" void __register_global_object();

//
// Declarations:
//

/* 804A430C-804A4338 0000EC 002C+00 3/3 0/0 0/0 .text            reset__16daDemo00_resID_cFv */
void daDemo00_resID_c::reset() {
    mShapeID = -1;
    field_0x4 = -1;
    field_0x8 = -1;
    field_0xc = -1;
    field_0x10 = -1;
    field_0x14 = -1;
    field_0x18 = -1;
    field_0x1c = -1;
    field_0x20 = -1;
}

/* 804A4338-804A4388 000118 0050+00 1/1 0/0 0/0 .text            reset__16daDemo00_model_cFv */
void daDemo00_model_c::reset() {
    // NONMATCHING
    field_0x0.reset();
    mID.mShapeID = 0;
    mID.field_0xc = 0;
    mID.field_0x10 = 0;
    mID.field_0x14 = 0;
    mID.field_0x8 = 0;
    mID.field_0x18 = 0;
    mID.field_0x1c = 0;
    mID.field_0x20 = 0;
}

/* 804A4388-804A4420 000168 0098+00 1/1 0/0 0/0 .text            __dt__10daDemo00_cFv */
daDemo00_c::~daDemo00_c() {
    if (heap != NULL) {
        if (mpModelMorf != NULL) {
            mpModelMorf->stopZelAnime();
        }
    }
}

/* 804A4420-804A449C 000200 007C+00 2/2 0/0 0/0 .text            __dt__12demo_s1_ke_sFv */
demo_s1_ke_s::~demo_s1_ke_s() {}

/* ############################################################################################## */
/* 804A8998-804A8998 000138 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_804A8998 = "V_24_tri_joint";
#pragma pop

UNK_REL_DATA;

/* 804A89E0-804A89F8 -00001 0018+00 0/0 0/0 0/0 .data            l_lightData */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_lightData[6] = {
    (void*)0x01010000, (void*)&d_a_demo00__stringBase0,
    (void*)0x00010000, (void*)NULL,
    (void*)0x00010000, (void*)NULL,
};
#pragma pop

/* 804A89F8-804A8A04 -00001 000C+00 1/1 0/0 0/0 .data            @4662 */
SECTION_DATA static void* lit_4662[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actStandby__10daDemo00_cFP13dDemo_actor_c,
};

/* 804A8A04-804A8A10 -00001 000C+00 1/1 0/0 0/0 .data            @4676 */
SECTION_DATA static void* lit_4676[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actPerformance__10daDemo00_cFP13dDemo_actor_c,
};

/* 804A8A10-804A8A1C -00001 000C+00 1/1 0/0 0/0 .data            @4725 */
SECTION_DATA static void* lit_4725[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actLeaving__10daDemo00_cFP13dDemo_actor_c,
};

/* 804A8A1C-804A8A28 -00001 000C+00 1/1 0/0 0/0 .data            @4999 */
SECTION_DATA static void* lit_4999[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actStandby__10daDemo00_cFP13dDemo_actor_c,
};

/* 804A8A28-804A8A2C 000068 0004+00 0/1 0/0 0/0 .data            l_blendInfoOPA$5172 */
// static J3DBlendInfo l_blendInfoOPA[4] = {
//     0,
//     1,
//     0,
//     3,
// };

/* 804A8A2C-804A8A30 00006C 0004+00 0/1 0/0 0/0 .data            l_blendInfo$5173 */
// static J3DBlendInfo l_blendInfo = {
//     1,
//     4,
//     5,
//     3,
// };

// /* 804A8A30-804A8A34 000070 0004+00 0/1 0/0 0/0 .data            l_zmodeInfoOPA$5174 */
// static J3DZModeInfo l_zmodeInfoOPA[4] = {
//     1,
//     2,
//     1,
//     0,
// };

// /* 804A8A34-804A8A38 000074 0004+00 0/1 0/0 0/0 .data            l_zmodeInfo$5175 */
// static J3DZModeInfo l_zmodeInfo = {
//     1,
//     3,
//     0,
//     0,
// };

/* 804A8A38-804A8A3C 000078 0004+00 1/1 0/0 0/0 .data            l_color$5341 */
// static GXColor l_color = {
//     0x14, 0x0F, 0x00, 0xFF,
// };

/* 804A8A3C-804A8A68 00007C 002C+00 1/1 0/0 0/0 .data            ke_za$5515 */
SECTION_DATA static u8 ke_za[44] = {
    0xFC, 0xE0, 0xFE, 0x70, 0x00, 0x00, 0x01, 0x90, 0x03, 0x20, 0xFC, 0xE0, 0xFE, 0x70, 0x00,
    0x00, 0x01, 0x90, 0x03, 0x20, 0xFC, 0xE0, 0xFE, 0x70, 0x00, 0x00, 0x01, 0x90, 0x03, 0x20,
    0x04, 0xB0, 0xFC, 0xE0, 0xFE, 0x70, 0x00, 0x00, 0x01, 0x90, 0x03, 0x20, 0x04, 0xB0,
};

/* 804A8A68-804A8A8C -00001 0024+00 1/1 0/0 0/0 .data            @6401 */
SECTION_DATA static void* lit_6401[9] = {
    (void*)(((char*)execute__10daDemo00_cFv) + 0x7B0),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x714),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x728),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x734),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x75C),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x784),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x790),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x79C),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x7A8),
};

/* 804A8A8C-804A8AC8 -00001 003C+00 1/1 0/0 0/0 .data            @6400 */
SECTION_DATA static void* lit_6400[15] = {
    (void*)(((char*)execute__10daDemo00_cFv) + 0x7B0),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x4D4),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x4E0),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x4EC),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x4F8),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x504),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x510),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x51C),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x528),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x534),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x540),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x54C),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x558),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x564),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x570),
};

/* 804A8AC8-804A8AF4 -00001 002C+00 1/1 0/0 0/0 .data            @6399 */
SECTION_DATA static void* lit_6399[11] = {
    (void*)(((char*)execute__10daDemo00_cFv) + 0x3F8),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x404),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x410),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x41C),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x428),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x434),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x440),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x44C),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x458),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x464),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x470),
};

/* 804A8AF4-804A8B10 -00001 001C+00 1/1 0/0 0/0 .data            @6398 */
SECTION_DATA static void* lit_6398[7] = {
    (void*)(((char*)execute__10daDemo00_cFv) + 0x384),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x390),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x39C),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x3A8),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x3B4),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x3C0),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x3CC),
};

/* 804A8B10-804A8B2C -00001 001C+00 1/1 0/0 0/0 .data            @6396 */
SECTION_DATA static void* lit_6396[7] = {
    (void*)(((char*)execute__10daDemo00_cFv) + 0x7B0),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x128),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x134),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x140),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x14C),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x158),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x164),
};

/* 804A8B2C-804A8B94 -00001 0068+00 1/1 0/0 0/0 .data            @6395 */
SECTION_DATA static void* lit_6395[26] = {
    (void*)(((char*)execute__10daDemo00_cFv) + 0x7B0),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x108),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x170),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x1A8),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x1C4),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x1C4),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x1C4),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x1C4),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x2A4),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x330),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x350),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x364),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x3D8),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x47C),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x484),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x48C),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x4AC),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x4B4),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x57C),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x588),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x590),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x598),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x5A4),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x5AC),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x5B4),
    (void*)(((char*)execute__10daDemo00_cFv) + 0x5C0),
};

/* 804A8BE4-804A8BF8 000224 0014+00 1/1 0/0 0/0 .data            __vt__18mDoExt_3DlineMat_c */
SECTION_DATA extern void* __vt__18mDoExt_3DlineMat_c[5] = {
    (void*)NULL /* RTTI */, (void*)NULL, (void*)NULL, (void*)NULL, (void*)NULL,
};

/* 804A8BF8-804A8C04 000238 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 804A4520-804A45A0 000300 0080+00 1/1 0/0 0/0 .text            get_foward_angle__FP4cXyzP4cXyzPsPs */
static void get_foward_angle(cXyz* param_1, cXyz* param_2, s16* param_3, s16* param_4) {
    // NONMATCHING
    cXyz sp38;

    dKyr_get_vectle_calc(param_1, param_2, &sp38);
    *param_3 = cM_atan2s(JMAFastSqrt(sp38.x * sp38.x + sp38.z * sp38.z), sp38.y);
    *param_4 = sp38.atan2sX_Z();
}

/* 804A45A0-804A4948 000380 03A8+00 2/2 0/0 0/0 .text            setBaseMtx__10daDemo00_cFv */
void daDemo00_c::setBaseMtx() {
    // NONMATCHING
    s16 sVar1, sVar2;
    cXyz sp38;
    BOOL bVar1 = FALSE;
    cM3dGPla plane;

    if (tevStr.mInitTimer == 1) {
        field_0x574 = shape_angle;
    }

    sp38 = current.pos;

    if (field_0x6a2 != 0 || field_0x6a3 != 0) {
        cXyz sp44(current.pos.x, current.pos.y + 1000.0f, current.pos.z);
        mGndChk->SetPos(&sp44);
        sp38.y = dComIfG_Bgsp().GroundCross(mGndChk);
    }

    if (field_0x6a4 != 0 && field_0x568.x != 10000000.0f) {
        if (current.pos != field_0x568) {
            if (current.pos.abs(field_0x568) >= 1.5f) {
                get_foward_angle(&field_0x568, &current.pos, &sVar1, &sVar2);
                shape_angle.x = field_0x574.x = sVar1;
                shape_angle.y = field_0x574.y = sVar2;
            }
        } else {
            shape_angle.x = field_0x574.x;
            shape_angle.y = field_0x574.y;
        }
    }

    field_0x568 = current.pos;

    if (field_0x6a3 != 0) {
        if (sp38.y != -1000000000.0f) {
            bVar1 = dComIfG_Bgsp().GetTriPla(*mGndChk, &plane);
        }

        if (bVar1 && cBgW_CheckBGround(plane.mNormal.y)) {
            shape_angle.x = fopAcM_getPolygonAngle(&plane, shape_angle.y);
        }
    }

    if (tevStr.mInitTimer != 0 || field_0x6a3 == 0) {
        current.angle = shape_angle;
    } else {
        cLib_addCalcAngleS2(&current.angle.x, shape_angle.x, 4, 0x2000);
        cLib_addCalcAngleS2(&current.angle.y, shape_angle.y, 4, 0x2000);
        cLib_addCalcAngleS2(&current.angle.z, shape_angle.z, 4, 0x2000);
    }

    mDoMtx_stack_c::transS(sp38.x, sp38.y, sp38.z);
    mDoMtx_stack_c::XYZrotM(current.angle.x, current.angle.y, current.angle.z);
    field_0x5d4->setBaseTRMtx(mDoMtx_stack_c::get());
    field_0x5d4->setBaseScale(scale);
}

/* 804A4948-804A4D48 000728 0400+00 1/1 0/0 0/0 .text            setShadowSize__10daDemo00_cFv */
void daDemo00_c::setShadowSize() {
    // NONMATCHING
    J3DModelData* modelData = field_0x5d4->getModelData();
    cXyz sp98(100000000.0f, 100000000.0f, 100000000.0f);
    cXyz spa4(-100000000.0f, -100000000.0f, -100000000.0f);

    for (u16 i = 0; i < modelData->getJointNum(); i++) {
        J3DJoint* jntNodeP = modelData->getJointNodePointer(i);
        if (jntNodeP->getKind() == 0) {
            cXyz spb0, spbc;
            cMtx_multVec(field_0x5d4->getAnmMtx(i), jntNodeP->getMin(), &spb0);
            cMtx_multVec(field_0x5d4->getAnmMtx(i), jntNodeP->getMin(), &spbc);

            if (spb0.x < sp98.x) {
                sp98.x = spb0.x;
            }

            if (spb0.y < sp98.y) {
                sp98.y = spb0.y;
            }

            if (spb0.z < sp98.z) {
                sp98.z = spb0.z;
            }

            if (spa4.x < spbc.x) {
                spa4.x = spbc.x;
            }

            if (spa4.y < spbc.y) {
                spa4.y = spbc.y;
            }

            if (spa4.z < spbc.z) {
                spa4.z = spbc.z;
            }
        }
    }

    *field_0x5ec[1] = (spa4.x + sp98.x) * 0.5f;
    *field_0x5ec[2] = (spa4.y + sp98.y) * 0.5f;
    *field_0x5ec[3] = (spa4.z + sp98.z) * 0.5f;
    cXyz spc8(spa4 - sp98);
    *field_0x5ec[7] = spc8.abs() * 3.0f;
    *field_0x5ec[8] = spc8.absXZ() * 0.25f;
}

/* 804A4D48-804A4F54 000B28 020C+00 1/1 0/0 0/0 .text            awaCheck__FP8J3DModel */
static BOOL awaCheck(J3DModel* i_model) {
    J3DModelData* modelData = i_model->getModelData();
    J3DTexture* texture = modelData->getTexture();

    if (texture != NULL) {
        JUTNameTab* nameTab = modelData->getTextureName();
        if (nameTab != NULL) {
            for (u16 i = 0; i < texture->getNum(); i++) {
                const char* name = nameTab->getName(i);
                if (strcmp(name, "B_dummy") == 0 || strcmp(name, "cy_kankyo") == 0) {
                    J3DSkinDeform* skinDeform = new J3DSkinDeform();
                    if (skinDeform == NULL) {
                        return FALSE;
                    }

                    if (i_model->setSkinDeform(skinDeform, 1) != 0) {
                        return FALSE;
                    }

                    if (strcmp(name, "B_dummy") == 0) {
                        texture->setResTIMG(i, *mDoGph_gInf_c::getFrameBufferTimg());
                        mDoExt_modelTexturePatch(modelData);
                    }
                }
            }
        }
    }

    return TRUE;
}

/* 804A4F54-804A4F74 000D34 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__FP10fopAc_ac_c */
static int createHeapCallBack(fopAc_ac_c* a_this) {
    daDemo00_c* i_this = (daDemo00_c*)a_this;
    return i_this->createHeap();
}

/* 804A4F74-804A5750 000D54 07DC+00 1/1 0/0 0/0 .text            createHeap__10daDemo00_cFv */
int daDemo00_c::createHeap() {
    // NONMATCHING
    if (mModel.mID.mShapeID != -1) {
        J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectIDRes(dStage_roomControl_c::getDemoArcName(), (u16)mModel.mID.mShapeID);
        mDoExt_bckAnmRemove(modelData);

        #ifdef DEBUG
        if (modelData == NULL) {
            OS_REPORT("\ngetDemoArcName=[%s]", dStage_roomControl_c::getDemoArcName());
            OS_REPORT("\nmModel.mID.mShapeID=[%d]\n", mModel.mID.mShapeID);
            JUT_ASSERT(441, modelData != 0);
        }
        #endif

        u32 uVar1 = 0x11000084;
        for (int i = 0; i < modelData->getShapeNum(); i++) {
            if (modelData->getShapeNodePointer(i)->getTexMtxLoadType() == 0x2000) {
                field_0x6ad = 1;
                break;
            }
        }

        if (mModel.mID.field_0xc != -1) {
            mpBtpAnm = new mDoExt_btpAnm();
            if (mpBtpAnm == NULL) {
                return 0;
            }

            J3DAnmTexPattern* i_btk = (J3DAnmTexPattern*)dComIfG_getObjectIDRes(dStage_roomControl_c::getDemoArcName(), (u16)mModel.mID.field_0xc);
            if (i_btk == NULL) {
                OS_REPORT("ESC_WARNING指定btpアニメーションが見つかりません！(%d)\n", mModel.mID.field_0xc); // ESC_WARNING: The specified BTP animation could not be found! (%d)
                return 1;
            }

            if (mpBtpAnm->init(modelData, i_btk, 1, -1, 1.0f, 0, -1) == 0) {
                return 0;
            }

            uVar1 = 0x15020084;
        }

        if (mModel.mID.field_0x10 != -1) {
            mpBtkAnm = new mDoExt_btkAnm();
            if (mpBtkAnm == NULL) {
                return 0;
            }

            J3DAnmTextureSRTKey* key = (J3DAnmTextureSRTKey*)dComIfG_getObjectIDRes(dStage_roomControl_c::getDemoArcName(), (u16)mModel.mID.field_0x10);
            if (key == NULL) {
                OS_REPORT("ESC_WARNING指定btkアニメーションが見つかりません！(%d)\n", mModel.mID.field_0x10); // ESC_WARNING: The specified btk animation could not be found! (%d)
                return 1;
            }

            if (mpBtkAnm->init(modelData, key, 1, -1, 1.0f, 0, -1) == 0) {
                return 0;
            }

            if ((mModel.mID.field_0x10 & 0x10000000U) != 0) {
                uVar1 |= 0x1200;
            } else {
                uVar1 |= 0x200;
            }
        }

        if (mModel.mID.field_0x14 != -1) {
            mpBrkAnm = new mDoExt_brkAnm();
            if (mpBrkAnm == NULL) {
                return 0;
            }

            J3DAnmTevRegKey* regKey = (J3DAnmTevRegKey*)dComIfG_getObjectIDRes(dStage_roomControl_c::getDemoArcName(), (u16)mModel.mID.field_0x14);
            if (regKey == NULL) {
                OS_REPORT("ESC_WARNING指定brkアニメーションが見つかりません！(%d)\n", mModel.mID.field_0x14); // ESC_WARNING: The specified brk animation could not be found! (%d)
                return 1;
            }

            if (mpBrkAnm->init(modelData, regKey, 1, -1, 1.0f, 0, -1) == 0) {
                return 0;
            }
        }

        if (mModel.mID.field_0x8 != -1) {
            mpBpkAnm = new mDoExt_bpkAnm();
            if (mpBpkAnm == NULL) {
                return 0;
            }

            J3DAnmColor* anm_color = (J3DAnmColor*)dComIfG_getObjectIDRes(dStage_roomControl_c::getDemoArcName(), (u16)mModel.mID.field_0x8);
            if (anm_color == NULL) {
                OS_REPORT("ESC_WARNING指定brkアニメーションが見つかりません！(%d)\n", mModel.mID.field_0x8); // ESC_WARNING: The specified brk animation could not be found! (%d)
                return 1;
            }

            if (mpBpkAnm->init(modelData, anm_color, 1, -1, 1.0f, 0, -1) == 0) {
                return 0;
            }

            uVar1 |= 1;
        }

        if (mModel.mID.field_0x4 == -1) {
            mpModelMorf = NULL;
            if (field_0x6ad == 0) {
                field_0x5d4 = mDoExt_J3DModel__create(modelData, 0x80000, uVar1);
            } else {
                field_0x5d4 = mDoExt_J3DModel__create(modelData, 0, uVar1);
            }

            if (field_0x5d4 == NULL) {
                return 0;
            }
        } else {
            J3DAnmTransform* anm = (J3DAnmTransform*)dComIfG_getObjectIDRes(dStage_roomControl_c::getDemoArcName(), (u16)mModel.mID.field_0x4);
            JUT_ASSERT(580, anm != 0);

            if (field_0x6a5 != 0) {
                uVar1 |= 0x20000000;
            }

            if (field_0x6ad == 0) {
                mpModelMorf = new mDoExt_McaMorfSO(modelData, NULL, NULL, anm, -1, 1.0f, 0, -1, &mSound, 0x80000, uVar1);
            } else {
                mpModelMorf = new mDoExt_McaMorfSO(modelData, NULL, NULL, anm, -1, 1.0f, 0, -1, &mSound, 0, uVar1);
            }

            if (mpModelMorf == NULL || mpModelMorf->getModel() == NULL) {
                return 0;
            }

            field_0x5d4 = mpModelMorf->getModel();

            if (!awaCheck(field_0x5d4)) {
                return 0;
            }
        }

        if (field_0x6b4 != 0) {
            field_0x5d8 = new mDoExt_invisibleModel();
            if (field_0x5d8 == NULL) {
                return 0;
            }

            if (field_0x5d8->create(field_0x5d4, 1) == 0) {
                return 0;
            }
        } else {
            field_0x5d8 = NULL;
        }

        field_0x5d8 = NULL;
        mModel.mID.field_0x18 = 1;
        if (mModel.mID.field_0x18 != -1) {
            // field_0x5ec = new (f32**)();
            field_0x5d4->calc();
            setShadowSize();
        }

        mGndChk = new dBgS_GndChk();
        if (mGndChk == NULL) {
            return 0;
        }
        mGndChk->OffWall();

        if (mModel.mID.field_0x1c != -1) {
            mDeformData = (J3DDeformData*)dComIfG_getObjectIDRes(dStage_roomControl_c::getDemoArcName(), (u16)mModel.mID.field_0x1c);
            JUT_ASSERT(687, mModel.mDeformData != 0);

            if (mModel.mID.field_0x20 != -1) {
                mpBlkAnm = new mDoExt_blkAnm();
                if (mpBlkAnm == NULL) {
                    return 0;
                }

                J3DAnmCluster* anm_cluster = (J3DAnmCluster*)dComIfG_getObjectIDRes(dStage_roomControl_c::getDemoArcName(), (u16)mModel.mID.field_0x20);
                if (anm_cluster == NULL) {
                    OS_REPORT("ESC_WARNING指定blkアニメーションが見つかりません！(%d)\n", field_0x5ac.field_0x20); // ESC_WARNING: Specified blk animation not found! (%d)
                } else {
                    if (mpBlkAnm->init(mDeformData, anm_cluster, 1, -1, 1.0f, 0, -1) == 0) {
                        return 0;
                    }
                }
            }

            if (field_0x5d4->setDeformData(mDeformData, 1) != 0) {
                return 0;
            }
        }
    }

    if (field_0x6a7 >= 0 && field_0x6a7 <= 5) {
        if (field_0x6bc.init(1, 0x20, (ResTIMG*)dComIfG_getObjectRes("Always", 0x54), 1) == 0) {
            return 0;
        }

        f32* pfVar1 = field_0x6bc.getSize(0);
        for (int i = 0; i < 32; i++) {
            if (field_0x6a7 >= 2 && field_0x6a7 <= 4) {
                *pfVar1 = 5.0f;
            } else {
                *pfVar1 = 3.0f;
            }
            pfVar1++;
        }
    }

    if (field_0x6a7 == 8 && field_0x2900.init(0x16, 0x10, 1) == 0) {
        return 0;
    }

    return 1;
}

/* 804A5798-804A594C 001578 01B4+00 2/0 0/0 0/0 .text actStandby__10daDemo00_cFP13dDemo_actor_c */
int daDemo00_c::actStandby(dDemo_actor_c* actor) {
    // NONMATCHING
    if (mModel.field_0x0.mShapeID != -1) {
        mModel.mID = mModel.field_0x0;
        if (fopAcM_entrySolidHeap(this, createHeapCallBack, 0x9004c5e0)) {
            OS_REPORT("汎用くん確保ヒープサイズ %d\n", heap->getHeapSize());

            if (field_0x5d4 != NULL) {
                // dDemo_setDemoData(this, 42, NULL, NULL, 0, NULL, 0, 0);
                setBaseMtx();
                fopAcM_SetMtx(this, field_0x5d4->getBaseTRMtx());
                actor->setModel(field_0x5d4);

                if (mpModelMorf != NULL) {
                    actor->setAnmFrameMax(mpModelMorf->getEndFrame());
                }
            }

            setAction(&daDemo00_c::actPerformance);
            action(actor);
        }
    } else {
        if (field_0x6aa == 1 || field_0x6ab >= 0 || field_0x6b8 != 0 || field_0x6ae != 0) {
            // dDemo_setDemoData(this, 0x8E, NULL, NULL, 0, NULL, 0, 0);
        }
    }

    return 1;
}

/* 804A594C-804A604C 00172C 0700+00 1/0 0/0 0/0 .text            actPerformance__10daDemo00_cFP13dDemo_actor_c */
int daDemo00_c::actPerformance(dDemo_actor_c* actor) {
    // NONMATCHING
    f32 fVar1;
    int i_attribute;
    if (mModel.mID.mShapeID != mModel.field_0x0.mShapeID) {
        mModel.reset();
        setAction(&daDemo00_c::actLeaving);
    } else {
        if (field_0x5d4 != NULL) {
            if (mpModelMorf != NULL && mModel.mID.field_0x4 != mModel.field_0x0.field_0x4) {
                J3DAnmTransform* anm = (J3DAnmTransform*)dComIfG_getObjectIDRes(dStage_roomControl_c::getDemoArcName(), (u16)mModel.field_0x0.field_0x4);
                if (anm == NULL) {
                    OS_REPORT("ESC_WARNING指定bckアニメーションが見つかりません！(%d)\n", mModel.field_0x0.field_0x4); // ESC_WARNING: Specified bck animation not found! (%d)
                    return 1;
                }

                fVar1 = 0.0f;
                if (actor->checkEnable(0x80)) {
                    fVar1 = actor->getAnmTransition();
                }
                mpModelMorf->setAnm(anm, -1, fVar1, 1.0f, 0.0f, -1.0f);
                mModel.mID.field_0x4 = mModel.field_0x0.field_0x4;
            }

            if (mModel.mID.field_0xc != mModel.field_0x0.field_0xc) {
                J3DAnmTexPattern* anmTexPattern = (J3DAnmTexPattern*)dComIfG_getObjectIDRes(dStage_roomControl_c::getDemoArcName(), (u16)mModel.field_0x0.field_0xc);
                if (anmTexPattern == NULL) {
                    OS_REPORT("ESC_WARNING指定btpアニメーションが見つかりません！(%d)\n", mModel.field_0x0.field_0xc); // ESC_WARNING: The specified btp animation could not be found! (%d)
                    return 1;
                }

                mpBtpAnm->init(field_0x5d4->getModelData(), anmTexPattern, 1, -1, 1.0f, 0, -1);
                mModel.mID.field_0xc = mModel.field_0x0.field_0xc;
            }

            if (mModel.mID.field_0x10 != mModel.field_0x0.field_0x10) {
                J3DAnmTextureSRTKey* key = (J3DAnmTextureSRTKey*)dComIfG_getObjectIDRes(dStage_roomControl_c::getDemoArcName(), (u16)mModel.field_0x0.field_0x10);
                if (key == NULL) {
                    OS_REPORT("ESC_WARNING指定btkアニメーションが見つかりません！(%d)\n", mModel.field_0x0.field_0x10); // ESC_WARNING: The specified btk animation could not be found! (%d)
                    return 1;
                }

                mpBtkAnm->init(field_0x5d4->getModelData(), key, 1, -1, 1.0f, 0, -1);
                mModel.mID.field_0x10 = mModel.field_0x0.field_0x10;
            }

            if (mModel.mID.field_0x14 != mModel.field_0x0.field_0x14) {
                J3DAnmTevRegKey* anmTev = (J3DAnmTevRegKey*)dComIfG_getObjectIDRes(dStage_roomControl_c::getDemoArcName(), (u16)mModel.field_0x0.field_0x14);
                if (anmTev == NULL) {
                    OS_REPORT("ESC_WARNING指定brkアニメーションが見つかりません！(%d)\n", mModel.field_0x0.field_0x14); // ESC_WARNING: The specified brk animation could not be found! (%d)
                    return 1;
                }

                if ((mModel.mID.field_0x14 & 0x10000000) != 0) {
                    fVar1 = mpBrkAnm->getFrame();
                } else {
                    fVar1 = 0.0f;
                }

                if ((mModel.mID.field_0x14 & 0x10000000) != 0) {
                    i_attribute = 2;
                } else {
                    i_attribute = -1;
                }

                mpBrkAnm->init(field_0x5d4->getModelData(), anmTev, 1, i_attribute, 1.0f, fVar1, -1);
                mModel.mID.field_0x14 = mModel.field_0x0.field_0x14;
            }

            if (mModel.mID.field_0x8 != mModel.field_0x0.field_0x8) {
                J3DAnmColor* anm_color = (J3DAnmColor*)dComIfG_getObjectIDRes(dStage_roomControl_c::getDemoArcName(), (u16)mModel.field_0x0.field_0x8);
                if (anm_color == NULL) {
                    OS_REPORT("ESC_WARNING指定bpkアニメーションが見つかりません！(%d)\n", mModel.field_0x0.field_0x8); // ESC_WARNING: The specified bpk animation could not be found! (%d)
                    return 1;
                }

                if ((mModel.mID.field_0x14 & 0x10000000) != 0) {
                    fVar1 = mpBpkAnm->getFrame();
                } else {
                    fVar1 = 0.0f;
                }

                if ((mModel.mID.field_0x14 & 0x10000000) != 0) {
                    i_attribute = 2;
                } else {
                    i_attribute = -1;
                }

                mpBpkAnm->init(field_0x5d4->getModelData(), anm_color, 1, i_attribute, 1.0f, fVar1, -1);
                mModel.mID.field_0x8 = mModel.field_0x0.field_0x8;
            }

            if (mModel.mID.field_0x20 != mModel.field_0x0.field_0x20) {
                JUT_ASSERT(1049, mModel.mDeformData != 0 && mModel.mBlkAnm != 0);

                J3DAnmCluster* anmCluster = (J3DAnmCluster*)dComIfG_getObjectIDRes(dStage_roomControl_c::getDemoArcName(), (u16)mModel.field_0x0.field_0x20);
                if (anmCluster == NULL) {
                    OS_REPORT("ESC_WARNING指定btpアニメーションが見つかりません！(%d)\n", mModel.field_0x0.field_0x20); // ESC_WARNING: The specified btp animation could not be found! (%d)
                    return 1;
                }

                mpBlkAnm->init(mDeformData, anmCluster, 1, -1, 1.0f, 0, -1);
                mModel.mID.field_0x20 = mModel.field_0x0.field_0x20;
            }

            // dDemo_setDemoData(this, 0x2a, 0, 0, 0, 0, 0, 0);
            cXyz sp70;
            if (mGndChk != NULL) {
                sp70.set(current.pos.x, current.pos.y + 100.0f, current.pos.z);
                mGndChk->SetPos(&sp70);
                dComIfG_Bgsp().GroundCross(mGndChk);
                field_0x6a1 = 1;
            }

            setBaseMtx();

            if (!actor->checkEnable(0x40)) {
                if (mpModelMorf != NULL) {
                    mpModelMorf->play(0, 0);
                } else if (mpBtpAnm != NULL) {
                    mpBtpAnm->play();
                } else if (mpBtkAnm != NULL) {
                    mpBtkAnm->play();
                } else if (mpBrkAnm != NULL) {
                    mpBrkAnm->play();
                } else if (mpBpkAnm != NULL) {
                    mpBpkAnm->play();
                } else if (mpBlkAnm != NULL) {
                    mpBlkAnm->play();
                }
            } else {
                fVar1 = actor->getAnmFrame();
                if (fVar1 <= 1.0f) {
                    if (mpModelMorf != NULL) {
                        mpModelMorf->setFrameF(fVar1);
                    }

                    if (mpBtpAnm != NULL) {
                        mpBtpAnm->setFrame(fVar1);
                    }

                    if (mpBtkAnm != NULL) {
                        if ((mModel.mID.field_0x10 & 0x10000000) != 0) {
                            mpBtkAnm->play();
                        } else {
                            mpBtkAnm->setFrame(fVar1);
                        }
                    }

                    if (mpBrkAnm != NULL) {
                        if ((mModel.mID.field_0x14 & 0x10000000) != 0) {
                            mpBrkAnm->play();
                        } else {
                            mpBrkAnm->setFrame(fVar1);
                        }
                    }

                    if (mpBpkAnm != NULL) {
                        if ((mModel.mID.field_0x8 & 0x10000000) != 0) {
                            mpBpkAnm->play();
                        } else {
                            mpBpkAnm->setFrame(fVar1);
                        }
                    }

                    if (mpBlkAnm != NULL) {
                        if ((mModel.mID.field_0x20 & 0x10000000) != 0) {
                            mpBlkAnm->play();
                        } else {
                            mpBlkAnm->setFrame(fVar1);
                        }
                    }
                } else {
                    f32 fVar2 = fVar1 - 1.0f;
                    if (mpModelMorf != NULL) {
                        mpModelMorf->setFrameF(fVar1 - 1.0f);
                        if (mGndChk != NULL && field_0x6a1 != 0) {
                            
                        }
                    }
                }
            }
        }
    }
}

/* 804A604C-804A60B0 001E2C 0064+00 1/0 0/0 0/0 .text            actLeaving__10daDemo00_cFP13dDemo_actor_c */
int daDemo00_c::actLeaving(dDemo_actor_c* actor) {
    // NONMATCHING
    if (mpModelMorf != NULL) {
        mpModelMorf->stopZelAnime();
    }

    fopAcM_DeleteHeap(this);
    setAction(&daDemo00_c::actStandby);
    return 1;
}

/* 804A60B0-804A61F0 001E90 0140+00 1/1 0/0 0/0 .text            mDad00_changeXluMaterial__FP11J3DMateriali */
static void mDad00_changeXluMaterial(J3DMaterial* i_material, int param_2) {
    // NONMATCHING
    static J3DBlendInfo l_blendInfoOPA = {
        0,
        1,
        0,
        3,
    };
    static J3DBlendInfo l_blendInfo = {
        1,
        4,
        5,
        3,
    };
    static J3DZModeInfo l_zmodeInfoOPA = {
        1,
        2,
        1,
        0,
    };
    static J3DZModeInfo l_zmodeInfo = {
        1,
        3,
        0,
        0,
    };

    i_material->change();

    if (param_2 == 0) {
        i_material->setMaterialMode(4);
        i_material->getPEBlock()->getBlend()->setBlendInfo(l_blendInfo);
        i_material->getPEBlock()->getZMode()->setZModeInfo(l_zmodeInfo);
    } else {
        i_material->setMaterialMode(1);
        i_material->getPEBlock()->getBlend()->setBlendInfo(l_blendInfoOPA);
        i_material->getPEBlock()->getZMode()->setZModeInfo(l_zmodeInfoOPA);
    }
}

/* 804A61F0-804A6428 001FD0 0238+00 1/1 0/0 0/0 .text            teduna_calc__FP4cXyzP4cXyzP4cXyzsi */
static void teduna_calc(cXyz* param_1, cXyz* param_2, cXyz* param_3, s16 param_4, int param_5) {
    // NONMATCHING
    cXyz sp70(*param_1 - *param_2);
    f32 fVar1 = 6.0f;
    cXyz sp7c, sp88;

    mDoMtx_stack_c::YrotS(param_4);

    if (param_5 == 5) {
        sp7c.set(0.0f, -5.0f, 130.0f);
        fVar1 = 1.0f;
    } else if (param_5 == 5) {
        sp7c.set(0.0f, -30.0f, 78.0f);
    } else {
        sp7c.set(0.0f, -30.0f, 60.0f);
    }

    mDoMtx_stack_c::multVec(&sp7c, &sp88);

    for (int i = 0; i < 16; i++) {
        *param_3 = *param_1 - (sp70 * (i / 15.0f));
        f32 fVar2 = cM_ssin((i / 15.0f) * 32768.0f);
        *param_3 += sp88 * fVar2;
        param_3->y += fVar2 * (fVar1 * cM_ssin(g_Counter.mCounter0 * 0x9C4 + i * 0x640));
        param_3++;
    }
}

UNK_REL_BSS;

/* 804A8C64-804A8D24 000054 00C0+00 1/3 0/0 0/0 .bss             teduna_posL */
static cXyz teduna_posL[16];

/* 804A8D30-804A8DF0 000120 00C0+00 1/3 0/0 0/0 .bss             teduna_posR */
static cXyz teduna_posR[16];

/* 804A8DFC-804A8E08 0001EC 000C+00 2/4 0/0 0/0 .bss             S_ganon_left_hand_pos */
static cXyz S_ganon_left_hand_pos;

/* 804A8E14-804A8E20 000204 000C+00 2/4 0/0 0/0 .bss             S_ganon_right_hand_pos */
static cXyz S_ganon_right_hand_pos;

/* 804A6428-804A6868 002208 0440+00 1/1 0/0 0/0 .text            teduna_draw__FP8J3DModelP19mDoExt_3DlineMat1_cP12dKy_tevstr_ciiii */
static void teduna_draw(J3DModel* i_model, mDoExt_3DlineMat1_c* param_2, dKy_tevstr_c* param_3, int param_4, int param_5, int param_6, int param_7) {
    // NONMATCHING
    static GXColor l_color = {
        0x14, 0x0F, 0x00, 0xFF,
    };

    cXyz sp38, sp44, sp50;
    s16 sVar1 = 0;
    if (param_7 == 4) {
        sVar1 = -0x3875;
    } else if (param_7 == 5) {
        sVar1 = -7000;
    }

    MTXCopy(i_model->getAnmMtx(param_6), mDoMtx_stack_c::get());

    if (param_7 == 5) {
        sp38.set(0.0f, 9.0f, 15.0f);
    } else if (param_7 == 2 || param_7 == 3 || param_7 == 4) {
        sp38.set(107.0f, -32.0f, -68.0f);
    } else {
        sp38.set(79.0f, -26.0f, -48.0f);
    }

    mDoMtx_stack_c::multVec(&sp38, &sp44);

    if (param_7 == 5) {
        sp50 = S_ganon_left_hand_pos;
    } else {
        MTXCopy(i_model->getAnmMtx(param_4), mDoMtx_stack_c::get());

        if (param_7 == 1) {
            sp38.set(61.0f, 18.0f, 0.0f);
        } else if (param_7 == 3) {
            sp38.set(191.0f, 28.0f, -80.0f);
        } else {
            sp38.set(0.0f, 0.0f, 0.0f);
        }

        mDoMtx_stack_c::multVec(&sp38, &sp50);
    }

    teduna_calc(&sp44, &sp50, teduna_posL, sVar1 + cM_atan2s(sp44.x - sp50.x, sp44.z - sp50.z) + 0x6000, param_7);
    MTXCopy(i_model->getAnmMtx(param_6), mDoMtx_stack_c::get());

    if (param_7 == 5) {
        sp38.set(0.0f, 9.0f, -15.0f);
    } else if (param_7 == 2 || param_7 == 3 || param_7 == 4) {
        sp38.set(107.0f, -32.0f, 68.0f);
    } else {
        sp38.set(79.0f, -26.0f, 48.0f);
    }

    mDoMtx_stack_c::multVec(&sp38, &sp44);

    if (param_7 == 5) {
        sp50 = S_ganon_right_hand_pos;
    } else {
        MTXCopy(i_model->getAnmMtx(param_5), mDoMtx_stack_c::get());

        if (param_7 == 1) {
            sp38.set(61.0f, 18.0f, 0.0f);
        } else if (param_7 == 4) {
            sp38.set(40.0f, -12.0f, 40.0f);
        } else {
            sp38.set(0.0f, 0.0f, 0.0f);
        }

        mDoMtx_stack_c::multVec(&sp38, &sp50);
    }

    teduna_calc(&sp44, &sp50, teduna_posR, sVar1 + cM_atan2s(sp44.x - sp50.x, sp44.z - sp50.z) + 0x6000, param_7);
    cXyz* pcVar1 = teduna_posL;
    cXyz* pcVar2 = param_2->getPos(0);
    for (int i = 0; i < 16; i++) {
        pcVar2 = pcVar1;
        pcVar2++;
        pcVar1++;
    }

    pcVar1 = teduna_posR;
    pcVar2 = param_2->getPos(0);
    pcVar2 += 31;
    for (int i = 0; i < 16; i++) {
        pcVar2 = pcVar1;
        pcVar2--;
        pcVar1++;
    }

    param_2->update(0x20, l_color, param_3);
    dComIfGd_set3DlineMat(param_2);
}

/* 804A6868-804A692C 002648 00C4+00 1/1 0/0 0/0 .text teduna_ganon_hand_set__FP8J3DModelii */
static void teduna_ganon_hand_set(J3DModel* i_model, int param_2, int param_3) {
    // NONMATCHING
    cXyz sp20;

    MTXCopy(i_model->getAnmMtx(param_2), mDoMtx_stack_c::get());
    sp20.set(0.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::multVec(&sp20, &S_ganon_left_hand_pos);

    MTXCopy(i_model->getAnmMtx(param_3), mDoMtx_stack_c::get());
    sp20.set(0.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::multVec(&sp20, &S_ganon_right_hand_pos);
}

/* 804A692C-804A6C48 00270C 031C+00 1/1 0/0 0/0 .text ke_control__FP10daDemo00_cP12demo_s1_ke_sif */
static void ke_control(daDemo00_c* i_this, demo_s1_ke_s* param_2, int param_3, f32 param_4) {
    // NONMATCHING
    cXyz spa4, spb0;
    cXyz* pcVar1 = param_2->field_0x0;
    cXyz* pcVar2 = param_2->field_0xc0;

    spa4.x = 0.0f;
    spa4.y = 0.0f;
    spa4.z = param_4;

    cXyz spbc;
    s16 sVar1 = cM_rndF2(65536.0f);
    f32 fVar1 = 3.0f;
    f32 fVar2 = i_this->current.pos.y;
    f32 fVar3 = 0.8f;

    if (i_this->field_0x6b3 != 0) {
        fVar3 = 0.0f;
    }

    for (int i = 0; pcVar1++, pcVar2++, i < 16; i++) {
        f32 fVar4 = fVar1 * cM_ssin(sVar1 + i * 7000);
        f32 fVar5 = cM_ssin(sVar1 + i * 6000 + 10000);
        f32 fVar6 = (16 - i) * 0.1f;

        spbc.x = pcVar2->x + fVar4 + param_2->field_0x180.x * fVar6;
        spbc.y = pcVar2->y + param_2->field_0x180.y * fVar6;
        spbc.z = pcVar2->z + (fVar1 * fVar5) + param_2->field_0x180.z * fVar6;
        fVar6 = spbc.x + (pcVar1->x - pcVar1[-1].x);
        fVar5 = spbc.z + (pcVar1->z - pcVar1[-1].z);
        fVar4 = pcVar1->y + spbc.y + -12.0f;

        if (fVar4 < fVar2) {
            fVar4 = fVar2;
        }

        f32 fVar7 = fVar4 - pcVar1[-1].y;

        cMtx_XrotS(*calc_mtx, -cM_atan2s(fVar7, fVar5));
        cMtx_YrotM(*calc_mtx, cM_atan2s(fVar6, JMAFastSqrt(fVar4 * fVar4 + fVar5 * fVar5)));
        MtxPosition(&spa4, &spb0);
        
        pcVar2 = pcVar1;
        pcVar1->x = pcVar1[-1].x + spb0.x;
        pcVar1->y = pcVar1[-1].y + spb0.y;
        pcVar1->z = pcVar1[-1].z + spb0.z;
        pcVar2->x = fVar3 * (pcVar1->x - pcVar2->x);
        pcVar2->y = fVar3 * (pcVar1->y - pcVar2->y);
        pcVar2->z = fVar3 * (pcVar1->x - pcVar2->z);
    }

}

/* ############################################################################################## */
/* 804A8940-804A8944 0000E0 0004+00 0/1 0/0 0/0 .rodata          @5509 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5509 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x804A8940, &lit_5509);
#pragma pop

/* 804A8944-804A8948 0000E4 0004+00 0/1 0/0 0/0 .rodata          @5510 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5510 = 3.5f;
COMPILER_STRIP_GATE(0x804A8944, &lit_5510);
#pragma pop

/* 804A8948-804A894C 0000E8 0004+00 0/1 0/0 0/0 .rodata          @5511 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5511 = 9.0f / 5.0f;
COMPILER_STRIP_GATE(0x804A8948, &lit_5511);
#pragma pop

/* 804A6C48-804A6D20 002A28 00D8+00 1/1 0/0 0/0 .text
 * ke_move__FP10daDemo00_cP19mDoExt_3DlineMat0_cP12demo_s1_ke_sif */
static void ke_move(daDemo00_c* param_0, mDoExt_3DlineMat0_c* param_1, demo_s1_ke_s* param_2,
                        int param_3, f32 param_4) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804A894C-804A8950 0000EC 0004+00 0/1 0/0 0/0 .rodata          @5560 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5560 = 2000.0f;
COMPILER_STRIP_GATE(0x804A894C, &lit_5560);
#pragma pop

/* 804A8950-804A8954 0000F0 0004+00 0/1 0/0 0/0 .rodata          @5561 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5561 = 7.5f;
COMPILER_STRIP_GATE(0x804A8950, &lit_5561);
#pragma pop

/* 804A8954-804A8958 0000F4 0004+00 0/1 0/0 0/0 .rodata          @5562 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5562 = 2.25f;
COMPILER_STRIP_GATE(0x804A8954, &lit_5562);
#pragma pop

/* 804A8958-804A895C 0000F8 0004+00 0/1 0/0 0/0 .rodata          @5563 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5563 = 10.0f;
COMPILER_STRIP_GATE(0x804A8958, &lit_5563);
#pragma pop

/* 804A895C-804A8960 0000FC 0004+00 0/1 0/0 0/0 .rodata          @5564 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5564 = 8.0f;
COMPILER_STRIP_GATE(0x804A895C, &lit_5564);
#pragma pop

/* 804A8960-804A8964 000100 0004+00 0/1 0/0 0/0 .rodata          @5565 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5565 = 30.0f;
COMPILER_STRIP_GATE(0x804A8960, &lit_5565);
#pragma pop

/* 804A8964-804A8968 000104 0004+00 0/1 0/0 0/0 .rodata          @5566 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5566 = 35.0f;
COMPILER_STRIP_GATE(0x804A8964, &lit_5566);
#pragma pop

/* 804A6D20-804A6F74 002B00 0254+00 1/1 0/0 0/0 .text            ke_set__FP10daDemo00_c */
static void ke_set(daDemo00_c* param_0) {
    // NONMATCHING
}

/* 804A6F74-804A6F94 002D54 0020+00 1/0 0/0 0/0 .text            daDemo00_Draw__FP10daDemo00_c */
static void daDemo00_Draw(daDemo00_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804A8968-804A896C 000108 0004+00 0/1 0/0 0/0 .rodata          @6201 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6201 = 200.0f;
COMPILER_STRIP_GATE(0x804A8968, &lit_6201);
#pragma pop

/* 804A896C-804A8970 00010C 0004+00 0/1 0/0 0/0 .rodata          @6202 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6202 = -700.0f;
COMPILER_STRIP_GATE(0x804A896C, &lit_6202);
#pragma pop

/* 804A8970-804A8974 000110 0004+00 0/1 0/0 0/0 .rodata          @6203 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6203 = 1600.0f;
COMPILER_STRIP_GATE(0x804A8970, &lit_6203);
#pragma pop

/* 804A8974-804A8978 000114 0004+00 0/1 0/0 0/0 .rodata          @6204 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6204 = -200.0f;
COMPILER_STRIP_GATE(0x804A8974, &lit_6204);
#pragma pop

/* 804A8978-804A897C 000118 0004+00 0/1 0/0 0/0 .rodata          @6205 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6205 = 600.0f;
COMPILER_STRIP_GATE(0x804A8978, &lit_6205);
#pragma pop

/* 804A897C-804A8980 00011C 0004+00 0/1 0/0 0/0 .rodata          @6206 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6206 = 50.0f;
COMPILER_STRIP_GATE(0x804A897C, &lit_6206);
#pragma pop

/* 804A8980-804A8984 000120 0004+00 0/1 0/0 0/0 .rodata          @6207 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6207 = 2.0f;
COMPILER_STRIP_GATE(0x804A8980, &lit_6207);
#pragma pop

/* 804A8984-804A8988 000124 0004+00 0/1 0/0 0/0 .rodata          @6208 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6208 = 10000.0f;
COMPILER_STRIP_GATE(0x804A8984, &lit_6208);
#pragma pop

/* 804A8988-804A898C 000128 0004+00 0/1 0/0 0/0 .rodata          @6209 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6209 = 17.0f / 20.0f;
COMPILER_STRIP_GATE(0x804A8988, &lit_6209);
#pragma pop

/* 804A898C-804A8990 00012C 0004+00 0/1 0/0 0/0 .rodata          @6210 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6210 = 0x38D1B717;
COMPILER_STRIP_GATE(0x804A898C, &lit_6210);
#pragma pop

/* 804A6F94-804A7B88 002D74 0BF4+00 1/1 0/0 0/0 .text            draw__10daDemo00_cFv */
void daDemo00_c::draw() {
    // NONMATCHING
}

/* 804A7B88-804A7BA8 003968 0020+00 1/0 0/0 0/0 .text            daDemo00_Execute__FP10daDemo00_c */
static void daDemo00_Execute(daDemo00_c* param_0) {
    // NONMATCHING
}

/* 804A7BA8-804A84AC 003988 0904+00 7/1 0/0 0/0 .text            execute__10daDemo00_cFv */
void daDemo00_c::execute() {
    // NONMATCHING
}

/* 804A84AC-804A84B4 00428C 0008+00 1/0 0/0 0/0 .text            daDemo00_IsDelete__FP10daDemo00_c
 */
static bool daDemo00_IsDelete(daDemo00_c* param_0) {
    return true;
}

/* 804A84B4-804A84DC 004294 0028+00 1/0 0/0 0/0 .text            daDemo00_Delete__FP10daDemo00_c */
static void daDemo00_Delete(daDemo00_c* param_0) {
    // NONMATCHING
}

/* 804A84DC-804A86B4 0042BC 01D8+00 1/0 0/0 0/0 .text            daDemo00_Create__FP10fopAc_ac_c */
static void daDemo00_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 804A86B4-804A871C 004494 0068+00 1/1 0/0 0/0 .text            __ct__12demo_s1_ke_sFv */
demo_s1_ke_s::demo_s1_ke_s() {
    // NONMATCHING
}

/* 804A871C-804A8720 0044FC 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 804A8720-804A87DC 004500 00BC+00 0/0 1/0 0/0 .text            __sinit_d_a_demo00_cpp */
void __sinit_d_a_demo00_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x804A8720, __sinit_d_a_demo00_cpp);
#pragma pop

/* 804A87DC-804A8814 0045BC 0038+00 1/1 0/0 0/0 .text            __arraydtor$5213 */
void func_804A87DC() {
    // NONMATCHING
}

/* 804A8814-804A884C 0045F4 0038+00 1/1 0/0 0/0 .text            __arraydtor$5211 */
void func_804A8814() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804A8990-804A8994 000130 0004+00 0/0 0/0 0/0 .rodata          @6393 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6393 = 0x43360B61;
COMPILER_STRIP_GATE(0x804A8990, &lit_6393);
#pragma pop

/* 804A8994-804A8998 000134 0004+00 0/0 0/0 0/0 .rodata          @6394 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6394 = 90.0f;
COMPILER_STRIP_GATE(0x804A8994, &lit_6394);
#pragma pop

AUDIO_INSTANCES;

/* 804A8998-804A8998 000138 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/* 804A8B94-804A8BB4 -00001 0020+00 1/0 0/0 0/0 .data            l_daDemo00_Method */
static actor_method_class l_daDemo00_Method = {
    (process_method_func)daDemo00_Create,
    (process_method_func)daDemo00_Delete,
    (process_method_func)daDemo00_Execute,
    (process_method_func)daDemo00_IsDelete,
    (process_method_func)daDemo00_Draw,
};

/* 804A8BB4-804A8BE4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_DEMO00 */
extern actor_process_profile_definition g_profile_DEMO00 = {
  fpcLy_CURRENT_e,       // mLayerID
  7,                     // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_DEMO00,           // mProcName
  &g_fpcLf_Method.base, // sub_method
  sizeof(daDemo00_c),    // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  685,                   // mPriority
  &l_daDemo00_Method,    // sub_method
  0x00044000,            // mStatus
  fopAc_ACTOR_e,         // mActorType
  fopAc_CULLBOX_0_e,     // cullType
};
