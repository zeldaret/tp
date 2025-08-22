/**
 * @file d_a_obj_bemos.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_bemos.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "d/d_camera.h"

//
// Forward References:
//

extern "C" void PPCallBack__9daObjBm_cFP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel();
extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" void initBaseMtx__9daObjBm_cFv();
extern "C" void setBaseMtx__9daObjBm_cFv();
extern "C" void Create__9daObjBm_cFv();
extern "C" void CreateHeap__9daObjBm_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void create1st__9daObjBm_cFv();
extern "C" void Execute__9daObjBm_cFPPA3_A4_f();
extern "C" void main_proc_call__9daObjBm_cFv();
extern "C" void initActionEnBemos__9daObjBm_cFv();
extern "C" void initActionObjBemos__9daObjBm_cFv();
extern "C" void actionEnBemos__9daObjBm_cFv();
extern "C" void actionObjBemos__9daObjBm_cFv();
extern "C" void setCrawCO__9daObjBm_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void calcBeamPos__9daObjBm_cFv();
extern "C" void calcBeamLenAndAt__9daObjBm_cFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void checkFindPlayer__9daObjBm_cFv();
extern "C" void checkSearchPlayer__9daObjBm_cFv();
extern "C" void getSearchDistance__9daObjBm_cFv();
extern "C" void getBeamSearchDistance__9daObjBm_cFv();
extern "C" void effect_proc__9daObjBm_cFv();
extern "C" void effectWait__9daObjBm_cFv();
extern "C" void initEffectSet0__9daObjBm_cFv();
extern "C" void effectSet0__9daObjBm_cFv();
extern "C" void effectSet1__9daObjBm_cFv();
extern "C" void effectEnd__9daObjBm_cFv();
extern "C" void check_to_walk__9daObjBm_cFv();
extern "C" void mode_wait_init__9daObjBm_cFv();
extern "C" void mode_wait__9daObjBm_cFv();
extern "C" void mode_walk_init__9daObjBm_cFv();
extern "C" void mode_walk__9daObjBm_cFv();
extern "C" void mode_afl__9daObjBm_cFv();
extern "C" void mode_dead_init__9daObjBm_cFv();
extern "C" void mode_dead__9daObjBm_cFv();
extern "C" void clr_moment_cnt__9daObjBm_cFv();
extern "C" void __ct__Q29daObjBm_c5Bgc_cFv();
extern "C" void __ct__4cXyzFv();
extern "C" void wall_pos__Q29daObjBm_c5Bgc_cFPC10fopAc_ac_cPCQ29daObjBm_c8BgcSrc_cisf();
extern "C" void chk_wall_pre__Q29daObjBm_c5Bgc_cFPC10fopAc_ac_cPCQ29daObjBm_c8BgcSrc_cis();
extern "C" void initActionSwWait__9daObjBm_cFv();
extern "C" void actionSwWait__9daObjBm_cFv();
extern "C" void initActionWarning__9daObjBm_cFv();
extern "C" void actionWarning__9daObjBm_cFv();
extern "C" void initActionFindPlayer__9daObjBm_cFv();
extern "C" void actionFindPlayer__9daObjBm_cFv();
extern "C" void initActionAttack__9daObjBm_cFv();
extern "C" void actionAttack__9daObjBm_cFv();
extern "C" void initActionDead__9daObjBm_cFv();
extern "C" void actionDead__9daObjBm_cFv();
extern "C" void Draw__9daObjBm_cFv();
extern "C" void Delete__9daObjBm_cFv();
extern "C" static void daObjBm_create1st__FP9daObjBm_c();
extern "C" void __dt__8dCcD_CylFv();
extern "C" void __ct__8dCcD_CylFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" static void daObjBm_MoveBGDelete__FP9daObjBm_c();
extern "C" static void daObjBm_MoveBGExecute__FP9daObjBm_c();
extern "C" static void daObjBm_MoveBGDraw__FP9daObjBm_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void func_80BB3490(void* _this, u16*);
extern "C" void func_80BB34AC(void* _this, u8*);
extern "C" void __sinit_d_a_obj_bemos_cpp();
extern "C" void func_80BB35A8();
extern "C" void __dt__11dBgS_WtrChkFv();
extern "C" void func_80BB3658();
extern "C" void __dt__14dBgS_ObjGndChkFv();
extern "C" void __ct__14dBgS_ObjGndChkFv();
extern "C" static void func_80BB3764();
extern "C" static void func_80BB376C();
extern "C" static void func_80BB3774();
extern "C" static void func_80BB377C();
extern "C" static void func_80BB3784();
extern "C" static void func_80BB378C();
extern "C" static void func_80BB3794();
extern "C" static void func_80BB379C();
extern "C" u8 const M_dir_base__9daObjBm_c[8];
extern "C" u8 const M_lin20__Q29daObjBm_c5Bgc_c[368];
extern "C" extern char const* const d_a_obj_bemos__stringBase0;
extern "C" u8 M_lin5__Q29daObjBm_c5Bgc_c[80];
extern "C" u8 M_gnd_work__Q29daObjBm_c5Bgc_c[1932];
extern "C" u8 M_wrt_work__Q29daObjBm_c5Bgc_c[84];
extern "C" u8 M_wall_work__Q29daObjBm_c5Bgc_c[2576];

//
// External References:
//

extern "C" void mDoMtx_XYZrotM__FPA4_fsss();
extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoMtx_XrotS__FPA4_fs();
extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void transM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb();
extern "C" void entry__13mDoExt_bckAnmFP12J3DModelDataf();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_btkAnmRemove__FP12J3DModelData();
extern "C" void mDoExt_brkAnmRemove__FP12J3DModelData();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void dBgS_MoveBGProc_Trans__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void __ct__14dBgS_ObjLinChkFv();
extern "C" void __dt__14dBgS_ObjLinChkFv();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void __dt__14dBgS_SplGrpChkFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__11dBgS_WtrChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CpsFRC11dCcD_SrcCps();
extern "C" void CalcAtVec__8dCcD_CpsFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void ForceLockOn__9dCamera_cFP10fopAc_ac_c();
extern "C" void dCam_getBody__Fv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void normalizeZP__4cXyzFv();
extern "C" bool __ne__4cXyzCFRC3Vec();
extern "C" void __ct__5csXyzFsss();
extern "C" void cM_atan2s__Fff();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void cBgW_CheckBGround__Ff();
extern "C" void cM3d_CalcVecAngle__FRC3VecPsPs();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void __ct__8cM3dGCpsFv();
extern "C" void Set__8cM3dGCpsFRC4cXyzRC4cXyzf();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chasePos__FP4cXyzRC4cXyzf();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void func_802807E0();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void deleteObject__14Z2SoundObjBaseFv();
extern "C" void __ct__16Z2SoundObjSimpleFv();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void getName__10JUTNameTabCFUs();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_14();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_14();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__8dCcD_Cps[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__12cCcD_CpsAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mLineCheck__11fopAcM_lc_c[112];
extern "C" f32 Zero__4cXyz[3];
extern "C" u8 BaseY__4cXyz[12];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* 80BAE36C-80BAE4A8 0000EC 013C+00 1/1 0/0 0/0 .text
 * PPCallBack__9daObjBm_cFP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel */
void daObjBm_c::PPCallBack(fopAc_ac_c* param_0, fopAc_ac_c* param_1, s16 param_2,
                               dBgW_Base::PushPullLabel param_3) {
    // NONMATCHING
}

/* 80BAE4A8-80BAE5FC 000228 0154+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static void nodeCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BB37B8-80BB37C4 000000 000C+00 13/13 0/0 0/0 .rodata          l_eye_offset */
SECTION_RODATA static u8 const l_eye_offset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x43, 0xA5, 0x00, 0x00, 0x42, 0x96, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BB37B8, &l_eye_offset);

/* 80BB37C4-80BB37D0 00000C 000C+00 0/1 0/0 0/0 .rodata          l_high_beam_offset */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_high_beam_offset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x43, 0x7F, 0x00, 0x00, 0x42, 0x82, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BB37C4, &l_high_beam_offset);
#pragma pop

/* 80BB37D0-80BB37DC 000018 000C+00 0/1 0/0 0/0 .rodata          l_mid_beam_offset */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_mid_beam_offset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x43, 0x4D, 0x00, 0x00, 0x42, 0x82, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BB37D0, &l_mid_beam_offset);
#pragma pop

/* 80BB37DC-80BB37E8 000024 000C+00 0/1 0/0 0/0 .rodata          l_low_beam_offset */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_low_beam_offset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x43, 0x20, 0x00, 0x00, 0x42, 0x82, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BB37DC, &l_low_beam_offset);
#pragma pop

/* 80BB37E8-80BB3818 000030 0030+00 1/1 0/0 0/0 .rodata          l_craw_offset */
SECTION_RODATA static u8 const l_craw_offset[48] = {
    0xC2, 0xBE, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0xBE, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xC2, 0xBE, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0xBE, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BB37E8, &l_craw_offset);

/* 80BB3818-80BB3820 000060 0008+00 1/2 0/0 0/0 .rodata          M_dir_base__9daObjBm_c */
SECTION_RODATA u8 const daObjBm_c::M_dir_base[8] = {
    0x00, 0x00, 0x40, 0x00, 0x80, 0x00, 0xC0, 0x00,
};
COMPILER_STRIP_GATE(0x80BB3818, &daObjBm_c::M_dir_base);

/* 80BB3820-80BB3824 000068 0004+00 1/3 0/0 0/0 .rodata          @3933 */
SECTION_RODATA static f32 const lit_3933 = 0.5f;
COMPILER_STRIP_GATE(0x80BB3820, &lit_3933);

/* 80BB3824-80BB3828 00006C 0004+00 8/16 0/0 0/0 .rodata          @3934 */
SECTION_RODATA static f32 const lit_3934 = 1.0f;
COMPILER_STRIP_GATE(0x80BB3824, &lit_3934);

/* 80BAE5FC-80BAE68C 00037C 0090+00 1/1 0/0 0/0 .text            initBaseMtx__9daObjBm_cFv */
void daObjBm_c::initBaseMtx() {
    // NONMATCHING
}

/* 80BAE68C-80BAE778 00040C 00EC+00 2/2 0/0 0/0 .text            setBaseMtx__9daObjBm_cFv */
void daObjBm_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BB3828-80BB3830 000070 0008+00 2/4 0/0 0/0 .rodata          @4106 */
SECTION_RODATA static u8 const lit_4106[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BB3828, &lit_4106);

/* 80BB3A40-80BB3A40 000288 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BB3A40 = "Obj_bm";
SECTION_DEAD static char const* const stringBase_80BB3A47 = "bmEye";
SECTION_DEAD static char const* const stringBase_80BB3A4D = "head";
SECTION_DEAD static char const* const stringBase_80BB3A52 = "cogRed";
SECTION_DEAD static char const* const stringBase_80BB3A59 = "cogBlue";
SECTION_DEAD static char const* const stringBase_80BB3A61 = "cogGreen";
SECTION_DEAD static char const* const stringBase_80BB3A6A = "cogYellow";
#pragma pop

/* 80BB3A94-80BB3A98 -00001 0004+00 8/9 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_bemos__stringBase0;

/* 80BB3A98-80BB3A9C -00001 0004+00 0/1 0/0 0/0 .data            l_eye_matName */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_eye_matName = (void*)(((char*)&d_a_obj_bemos__stringBase0) + 0x7);
#pragma pop

/* 80BB3A9C-80BB3AA0 -00001 0004+00 0/1 0/0 0/0 .data            l_head_joint */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_head_joint = (void*)(((char*)&d_a_obj_bemos__stringBase0) + 0xD);
#pragma pop

/* 80BB3AA0-80BB3AA4 -00001 0004+00 0/1 0/0 0/0 .data            l_bigGear_joint */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_bigGear_joint = (void*)(((char*)&d_a_obj_bemos__stringBase0) + 0x12);
#pragma pop

/* 80BB3AA4-80BB3AA8 -00001 0004+00 0/1 0/0 0/0 .data            l_smallGear0_joint */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_smallGear0_joint = (void*)(((char*)&d_a_obj_bemos__stringBase0) + 0x19);
#pragma pop

/* 80BB3AA8-80BB3AAC -00001 0004+00 0/1 0/0 0/0 .data            l_smallGear1_joint */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_smallGear1_joint = (void*)(((char*)&d_a_obj_bemos__stringBase0) + 0x21);
#pragma pop

/* 80BB3AAC-80BB3AB0 -00001 0004+00 0/1 0/0 0/0 .data            l_smallGear2_joint */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_smallGear2_joint = (void*)(((char*)&d_a_obj_bemos__stringBase0) + 0x2A);
#pragma pop

/* 80BB3AB0-80BB3AC4 00003C 0014+00 0/2 0/0 0/0 .data            l_joint_table */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_joint_table[20] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80BB3AC4-80BB3ADC 000050 0018+00 0/1 0/0 0/0 .data            l_cull_box */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_cull_box[24] = {
    0xC4, 0x96, 0x00, 0x00, 0xC2, 0xC8, 0x00, 0x00, 0xC4, 0x96, 0x00, 0x00,
    0x44, 0x96, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00, 0x44, 0x96, 0x00, 0x00,
};
#pragma pop

/* 80BB3ADC-80BB3B1C 000068 0040+00 0/1 0/0 0/0 .data            l_sph_src */
#pragma push
#pragma force_active on
static dCcD_SrcSph l_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x402020, 0x11}, 0x58}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 50.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 80BB3B1C-80BB3B68 0000A8 004C+00 0/1 0/0 0/0 .data            l_cps_src */
#pragma push
#pragma force_active on
static dCcD_SrcCps l_cps_src = {
    {
        {0x0, {{0x100, 0x1, 0x1d}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_SWORD, 0x0, 0x0, 0x1, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, {0.0f, 0.0f, 0.0f}, 20.0f}, // mCps
    } // mCpsAttr
};
#pragma pop

/* 80BB3B68-80BB3BAC 0000F4 0044+00 0/1 0/0 0/0 .data            l_cyl_src */
#pragma push
#pragma force_active on
static dCcD_SrcCyl l_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x1f}, {0x0, 0x0}, 0x79}}, // mObj
        {dCcD_SE_NONE, 0x1, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x6}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        15.0f, // mRadius
        60.0f // mHeight
    } // mCyl
};
#pragma pop

/* 80BAE778-80BAEADC 0004F8 0364+00 1/0 0/0 0/0 .text            Create__9daObjBm_cFv */
int daObjBm_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BB3830-80BB3834 000078 0004+00 9/19 0/0 0/0 .rodata          @4250 */
SECTION_RODATA static u8 const lit_4250[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80BB3830, &lit_4250);

/* 80BB3BAC-80BB3BB8 -00001 000C+00 0/1 0/0 0/0 .data            @4298 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4298[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionEnBemos__9daObjBm_cFv,
};
#pragma pop

/* 80BB3BB8-80BB3BC4 -00001 000C+00 0/1 0/0 0/0 .data            @4299 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4299[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionObjBemos__9daObjBm_cFv,
};
#pragma pop

/* 80BB3BC4-80BB3BDC 000150 0018+00 0/1 0/0 0/0 .data            l_func$4297 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func_4297[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80BB3BDC-80BB3BE8 -00001 000C+00 0/1 0/0 0/0 .data            @4354 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4354[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionSwWait__9daObjBm_cFv,
};
#pragma pop

/* 80BB3BE8-80BB3BF4 -00001 000C+00 0/1 0/0 0/0 .data            @4355 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4355[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionWarning__9daObjBm_cFv,
};
#pragma pop

/* 80BB3BF4-80BB3C00 -00001 000C+00 0/1 0/0 0/0 .data            @4356 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4356[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionFindPlayer__9daObjBm_cFv,
};
#pragma pop

/* 80BB3C00-80BB3C0C -00001 000C+00 0/1 0/0 0/0 .data            @4357 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4357[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionAttack__9daObjBm_cFv,
};
#pragma pop

/* 80BB3C0C-80BB3C18 -00001 000C+00 0/1 0/0 0/0 .data            @4358 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4358[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionDead__9daObjBm_cFv,
};
#pragma pop

/* 80BB3C18-80BB3C54 0001A4 003C+00 0/1 0/0 0/0 .data            l_func$4353 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func_4353[60] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80BB3C54-80BB3C60 -00001 000C+00 0/1 0/0 0/0 .data            @4407 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4407[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_wait__9daObjBm_cFv,
};
#pragma pop

/* 80BB3C60-80BB3C6C -00001 000C+00 0/1 0/0 0/0 .data            @4408 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4408[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_walk__9daObjBm_cFv,
};
#pragma pop

/* 80BB3C6C-80BB3C78 -00001 000C+00 0/1 0/0 0/0 .data            @4409 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4409[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_afl__9daObjBm_cFv,
};
#pragma pop

/* 80BB3C78-80BB3C84 -00001 000C+00 0/1 0/0 0/0 .data            @4410 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4410[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_dead__9daObjBm_cFv,
};
#pragma pop

/* 80BB3C84-80BB3CB4 000210 0030+00 0/1 0/0 0/0 .data            mode_proc$4406 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 mode_proc[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80BB3CB4-80BB3CC0 -00001 000C+00 0/1 0/0 0/0 .data            @4733 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4733[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)effectWait__9daObjBm_cFv,
};
#pragma pop

/* 80BB3CC0-80BB3CCC -00001 000C+00 0/1 0/0 0/0 .data            @4734 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4734[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)effectSet0__9daObjBm_cFv,
};
#pragma pop

/* 80BB3CCC-80BB3CD8 -00001 000C+00 0/1 0/0 0/0 .data            @4735 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4735[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)effectSet1__9daObjBm_cFv,
};
#pragma pop

/* 80BB3CD8-80BB3CE4 -00001 000C+00 0/1 0/0 0/0 .data            @4736 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4736[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)effectEnd__9daObjBm_cFv,
};
#pragma pop

/* 80BB3CE4-80BB3D14 000270 0030+00 0/1 0/0 0/0 .data            l_eff_func$4732 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_eff_func[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80BB3D14-80BB3D64 0002A0 0050+00 2/2 0/0 0/0 .data            M_lin5__Q29daObjBm_c5Bgc_c */
SECTION_DATA u8 daObjBm_c::Bgc_c::M_lin5[80] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xBF, 0x00, 0x00, 0x00, 0xBF, 0x00, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00,
    0x3F, 0x00, 0x00, 0x00, 0xBF, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00,
    0x3F, 0x00, 0x00, 0x00, 0x3F, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00,
    0xBF, 0x00, 0x00, 0x00, 0x3F, 0x00, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00,
};

/* 80BB3D64-80BB3D84 -00001 0020+00 1/1 0/0 0/0 .data            @6065 */
SECTION_DATA static void* lit_6065[8] = {
    (void*)(((char*)actionDead__9daObjBm_cFv) + 0x44),
    (void*)(((char*)actionDead__9daObjBm_cFv) + 0x60),
    (void*)(((char*)actionDead__9daObjBm_cFv) + 0xE4),
    (void*)(((char*)actionDead__9daObjBm_cFv) + 0x174),
    (void*)(((char*)actionDead__9daObjBm_cFv) + 0x188),
    (void*)(((char*)actionDead__9daObjBm_cFv) + 0x1FC),
    (void*)(((char*)actionDead__9daObjBm_cFv) + 0x2DC),
    (void*)(((char*)actionDead__9daObjBm_cFv) + 0x34C),
};

/* 80BB3D84-80BB3DA4 -00001 0020+00 1/0 0/0 0/0 .data            daObjBm_METHODS */
static actor_method_class daObjBm_METHODS = {
    (process_method_func)daObjBm_create1st__FP9daObjBm_c,
    (process_method_func)daObjBm_MoveBGDelete__FP9daObjBm_c,
    (process_method_func)daObjBm_MoveBGExecute__FP9daObjBm_c,
    0,
    (process_method_func)daObjBm_MoveBGDraw__FP9daObjBm_c,
};

/* 80BB3DA4-80BB3DD4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Bemos */
extern actor_process_profile_definition g_profile_Obj_Bemos = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Bemos,         // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjBm_c),      // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  604,                    // mPriority
  &daObjBm_METHODS,       // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80BB3DD4-80BB3DE0 000360 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80BB3DE0-80BB3DEC 00036C 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80BB3DEC-80BB3DF8 000378 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80BB3DF8-80BB3E04 000384 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80BB3E04-80BB3E10 000390 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80BB3E10-80BB3E1C 00039C 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80BB3E1C-80BB3E40 0003A8 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80BB379C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80BB3794,
};

/* 80BB3E40-80BB3E4C 0003CC 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 80BB3E4C-80BB3E58 0003D8 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80BAEADC-80BAEF90 00085C 04B4+00 1/0 0/0 0/0 .text            CreateHeap__9daObjBm_cFv */
int daObjBm_c::CreateHeap() {
    // NONMATCHING
}

/* 80BAEF90-80BAEFD8 000D10 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80BAEFD8-80BAF09C 000D58 00C4+00 1/1 0/0 0/0 .text            create1st__9daObjBm_cFv */
void daObjBm_c::create1st() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BB3834-80BB3838 00007C 0004+00 0/1 0/0 0/0 .rodata          @4291 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4291 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80BB3834, &lit_4291);
#pragma pop

/* 80BB3838-80BB383C 000080 0004+00 2/3 0/0 0/0 .rodata          @4292 */
SECTION_RODATA static f32 const lit_4292 = 50.0f;
COMPILER_STRIP_GATE(0x80BB3838, &lit_4292);

/* 80BB383C-80BB3840 000084 0004+00 0/1 0/0 0/0 .rodata          @4293 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4293 = 10.0f;
COMPILER_STRIP_GATE(0x80BB383C, &lit_4293);
#pragma pop

/* 80BAF09C-80BAF29C 000E1C 0200+00 1/0 0/0 0/0 .text            Execute__9daObjBm_cFPPA3_A4_f */
int daObjBm_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 80BAF29C-80BAF328 00101C 008C+00 1/1 0/0 0/0 .text            main_proc_call__9daObjBm_cFv */
void daObjBm_c::main_proc_call() {
    // NONMATCHING
}

/* 80BAF328-80BAF37C 0010A8 0054+00 1/1 0/0 0/0 .text            initActionEnBemos__9daObjBm_cFv */
void daObjBm_c::initActionEnBemos() {
    // NONMATCHING
}

/* 80BAF37C-80BAF46C 0010FC 00F0+00 2/2 0/0 0/0 .text            initActionObjBemos__9daObjBm_cFv */
void daObjBm_c::initActionObjBemos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BB3840-80BB3844 000088 0004+00 3/5 0/0 0/0 .rodata          @4402 */
SECTION_RODATA static f32 const lit_4402 = -1.0f;
COMPILER_STRIP_GATE(0x80BB3840, &lit_4402);

/* 80BAF46C-80BAF750 0011EC 02E4+00 1/0 0/0 0/0 .text            actionEnBemos__9daObjBm_cFv */
void daObjBm_c::actionEnBemos() {
    // NONMATCHING
}

/* 80BAF750-80BAF80C 0014D0 00BC+00 1/0 0/0 0/0 .text            actionObjBemos__9daObjBm_cFv */
void daObjBm_c::actionObjBemos() {
    // NONMATCHING
}

/* 80BAF80C-80BAF8BC 00158C 00B0+00 1/1 0/0 0/0 .text            setCrawCO__9daObjBm_cFv */
void daObjBm_c::setCrawCO() {
    // NONMATCHING
}

/* 80BAF8BC-80BAF8F8 00163C 003C+00 2/2 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BB3844-80BB3848 00008C 0004+00 0/1 0/0 0/0 .rodata          @4515 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4515 = 600.0f;
COMPILER_STRIP_GATE(0x80BB3844, &lit_4515);
#pragma pop

/* 80BB3848-80BB384C 000090 0004+00 1/2 0/0 0/0 .rodata          @4516 */
SECTION_RODATA static f32 const lit_4516 = 300.0f;
COMPILER_STRIP_GATE(0x80BB3848, &lit_4516);

/* 80BB384C-80BB3850 000094 0004+00 0/2 0/0 0/0 .rodata          @4517 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4517 = 5.0f;
COMPILER_STRIP_GATE(0x80BB384C, &lit_4517);
#pragma pop

/* 80BB3850-80BB3858 000098 0008+00 0/2 0/0 0/0 .rodata          @4518 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4518[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BB3850, &lit_4518);
#pragma pop

/* 80BB3858-80BB3860 0000A0 0008+00 0/2 0/0 0/0 .rodata          @4519 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4519[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BB3858, &lit_4519);
#pragma pop

/* 80BB3860-80BB3868 0000A8 0008+00 0/2 0/0 0/0 .rodata          @4520 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4520[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BB3860, &lit_4520);
#pragma pop

/* 80BAF8F8-80BAFC08 001678 0310+00 1/1 0/0 0/0 .text            calcBeamPos__9daObjBm_cFv */
void daObjBm_c::calcBeamPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BB3868-80BB386C 0000B0 0004+00 0/2 0/0 0/0 .rodata          @4628 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4628 = 1200.0f;
COMPILER_STRIP_GATE(0x80BB3868, &lit_4628);
#pragma pop

/* 80BB386C-80BB3870 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4629 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4629 = 20.0f;
COMPILER_STRIP_GATE(0x80BB386C, &lit_4629);
#pragma pop

/* 80BB3870-80BB3874 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4630 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4630 = 60.0f;
COMPILER_STRIP_GATE(0x80BB3870, &lit_4630);
#pragma pop

/* 80BAFC08-80BAFF60 001988 0358+00 1/1 0/0 0/0 .text            calcBeamLenAndAt__9daObjBm_cFv */
void daObjBm_c::calcBeamLenAndAt() {
    // NONMATCHING
}

/* 80BAFF60-80BAFFA8 001CE0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* 80BAFFA8-80BB0104 001D28 015C+00 1/1 0/0 0/0 .text            checkFindPlayer__9daObjBm_cFv */
void daObjBm_c::checkFindPlayer() {
    // NONMATCHING
}

/* 80BB0104-80BB0260 001E84 015C+00 1/1 0/0 0/0 .text            checkSearchPlayer__9daObjBm_cFv */
void daObjBm_c::checkSearchPlayer() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BB3874-80BB3878 0000BC 0004+00 2/2 0/0 0/0 .rodata          @4714 */
SECTION_RODATA static f32 const lit_4714 = 1000.0f;
COMPILER_STRIP_GATE(0x80BB3874, &lit_4714);

/* 80BB3878-80BB3880 0000C0 0008+00 2/2 0/0 0/0 .rodata          @4716 */
SECTION_RODATA static u8 const lit_4716[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BB3878, &lit_4716);

/* 80BB0260-80BB02B8 001FE0 0058+00 2/2 0/0 0/0 .text            getSearchDistance__9daObjBm_cFv */
void daObjBm_c::getSearchDistance() {
    // NONMATCHING
}

/* 80BB02B8-80BB0310 002038 0058+00 1/1 0/0 0/0 .text            getBeamSearchDistance__9daObjBm_cFv
 */
void daObjBm_c::getBeamSearchDistance() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BB3F28-80BB3F2C 000048 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80BB3F28[4];

/* 80BB0310-80BB0580 002090 0270+00 1/1 0/0 0/0 .text            effect_proc__9daObjBm_cFv */
void daObjBm_c::effect_proc() {
    // NONMATCHING
}

/* 80BB0580-80BB0584 002300 0004+00 1/0 0/0 0/0 .text            effectWait__9daObjBm_cFv */
void daObjBm_c::effectWait() {
    /* empty function */
}

/* ############################################################################################## */
/* 80BB3880-80BB3884 0000C8 0004+00 0/1 0/0 0/0 .rodata          eff_id_f$4818 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const eff_id_f[4] = {
    0x84,
    0x50,
    0x84,
    0x51,
};
COMPILER_STRIP_GATE(0x80BB3880, &eff_id_f);
#pragma pop

/* 80BB3884-80BB388C 0000CC 0008+00 0/1 0/0 0/0 .rodata          hit_eff_id$4819 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const hit_eff_id[8] = {
    0x85, 0xA2, 0x85, 0xA3, 0x85, 0xA4, 0x85, 0xA5,
};
COMPILER_STRIP_GATE(0x80BB3884, &hit_eff_id);
#pragma pop

/* 80BB0584-80BB0718 002304 0194+00 1/1 0/0 0/0 .text            initEffectSet0__9daObjBm_cFv */
void daObjBm_c::initEffectSet0() {
    // NONMATCHING
}

/* 80BB0718-80BB071C 002498 0004+00 1/0 0/0 0/0 .text            effectSet0__9daObjBm_cFv */
void daObjBm_c::effectSet0() {
    /* empty function */
}

/* 80BB071C-80BB0720 00249C 0004+00 1/0 0/0 0/0 .text            effectSet1__9daObjBm_cFv */
void daObjBm_c::effectSet1() {
    /* empty function */
}

/* 80BB0720-80BB0724 0024A0 0004+00 1/0 0/0 0/0 .text            effectEnd__9daObjBm_cFv */
void daObjBm_c::effectEnd() {
    /* empty function */
}

/* 80BB0724-80BB0824 0024A4 0100+00 1/1 0/0 0/0 .text            check_to_walk__9daObjBm_cFv */
void daObjBm_c::check_to_walk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BB388C-80BB3890 0000D4 0004+00 1/1 0/0 0/0 .rodata          @4936 */
SECTION_RODATA static f32 const lit_4936 = -4.0f;
COMPILER_STRIP_GATE(0x80BB388C, &lit_4936);

/* 80BB0824-80BB0888 0025A4 0064+00 1/1 0/0 0/0 .text            mode_wait_init__9daObjBm_cFv */
void daObjBm_c::mode_wait_init() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BB3890-80BB3894 0000D8 0004+00 0/2 0/0 0/0 .rodata          @4960 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4960 = 75.0f;
COMPILER_STRIP_GATE(0x80BB3890, &lit_4960);
#pragma pop

/* 80BB3894-80BB3898 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4961 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4961 = 0x451D89D9;
COMPILER_STRIP_GATE(0x80BB3894, &lit_4961);
#pragma pop

/* 80BB0888-80BB09C8 002608 0140+00 2/1 0/0 0/0 .text            mode_wait__9daObjBm_cFv */
void daObjBm_c::mode_wait() {
    // NONMATCHING
}

/* 80BB09C8-80BB09E0 002748 0018+00 1/1 0/0 0/0 .text            mode_walk_init__9daObjBm_cFv */
void daObjBm_c::mode_walk_init() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BB3F2C-80BB3F3C 00004C 000C+04 0/1 0/0 0/0 .bss             @4973 */
#pragma push
#pragma force_active on
static u8 lit_4973[12 + 4 /* padding */];
#pragma pop

/* 80BB3F3C-80BB3F48 00005C 000C+00 0/1 0/0 0/0 .bss             @4976 */
#pragma push
#pragma force_active on
static u8 lit_4976[12];
#pragma pop

/* 80BB3F48-80BB3F54 000068 000C+00 0/1 0/0 0/0 .bss             @4977 */
#pragma push
#pragma force_active on
static u8 lit_4977[12];
#pragma pop

/* 80BB3F54-80BB3F60 000074 000C+00 0/1 0/0 0/0 .bss             @4978 */
#pragma push
#pragma force_active on
static u8 lit_4978[12];
#pragma pop

/* 80BB3F60-80BB3F90 000080 0030+00 0/1 0/0 0/0 .bss             dir_vec$4972 */
#pragma push
#pragma force_active on
static u8 dir_vec[48];
#pragma pop

/* 80BB09E0-80BB0DA8 002760 03C8+00 1/0 0/0 0/0 .text            mode_walk__9daObjBm_cFv */
void daObjBm_c::mode_walk() {
    // NONMATCHING
}

/* 80BB0DA8-80BB0DC0 002B28 0018+00 1/0 0/0 0/0 .text            mode_afl__9daObjBm_cFv */
void daObjBm_c::mode_afl() {
    // NONMATCHING
}

/* 80BB0DC0-80BB0DE4 002B40 0024+00 2/2 0/0 0/0 .text            mode_dead_init__9daObjBm_cFv */
void daObjBm_c::mode_dead_init() {
    // NONMATCHING
}

/* 80BB0DE4-80BB0DE8 002B64 0004+00 1/0 0/0 0/0 .text            mode_dead__9daObjBm_cFv */
void daObjBm_c::mode_dead() {
    /* empty function */
}

/* 80BB0DE8-80BB0E0C 002B68 0024+00 2/2 0/0 0/0 .text            clr_moment_cnt__9daObjBm_cFv */
void daObjBm_c::clr_moment_cnt() {
    // NONMATCHING
}

/* 80BB0E0C-80BB0ED0 002B8C 00C4+00 1/1 0/0 0/0 .text            __ct__Q29daObjBm_c5Bgc_cFv */
daObjBm_c::Bgc_c::Bgc_c() {
    // NONMATCHING
}

/* 80BB0ED0-80BB0ED4 002C50 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* ############################################################################################## */
/* 80BB3898-80BB3A08 0000E0 0170+00 0/0 0/0 0/0 .rodata          M_lin20__Q29daObjBm_c5Bgc_c */
#pragma push
#pragma force_active on
SECTION_RODATA u8 const daObjBm_c::Bgc_c::M_lin20[368] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xBE, 0x80, 0x00, 0x00, 0xBE, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xBF, 0x00, 0x00, 0x00, 0xBF, 0x00, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0xBF, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00,
    0xBF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00,
    0x3E, 0x80, 0x00, 0x00, 0xBE, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0xBF, 0x00, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00,
    0x3F, 0x00, 0x00, 0x00, 0xBF, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00,
    0x3F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00,
    0x3E, 0x80, 0x00, 0x00, 0x3E, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00,
    0x3F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00,
    0x3F, 0x00, 0x00, 0x00, 0x3F, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x3F, 0x00, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00,
    0xBE, 0x80, 0x00, 0x00, 0x3E, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xBF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x3F, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00,
    0xBF, 0x00, 0x00, 0x00, 0x3F, 0x00, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00,
    0xBF, 0x40, 0x00, 0x00, 0x3E, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xBF, 0x40, 0x00, 0x00, 0xBE, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BB3898, &daObjBm_c::Bgc_c::M_lin20);
#pragma pop

/* 80BB3A08-80BB3A0C 000250 0004+00 0/0 0/0 0/0 .rodata          @5157 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5157 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80BB3A08, &lit_5157);
#pragma pop

/* 80BB3A0C-80BB3A10 000254 0004+00 0/2 0/0 0/0 .rodata          @5158 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5158 = 200.0f;
COMPILER_STRIP_GATE(0x80BB3A0C, &lit_5158);
#pragma pop

/* 80BB3A10-80BB3A14 000258 0004+00 0/1 0/0 0/0 .rodata          @5234 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5234 = 100.0f;
COMPILER_STRIP_GATE(0x80BB3A10, &lit_5234);
#pragma pop

/* 80BB3A14-80BB3A18 00025C 0004+00 0/1 0/0 0/0 .rodata          @5235 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5235 = 400.0f;
COMPILER_STRIP_GATE(0x80BB3A14, &lit_5235);
#pragma pop

/* 80BB3F90-80BB3F9C 0000B0 000C+00 0/1 0/0 0/0 .bss             @5101 */
#pragma push
#pragma force_active on
static u8 lit_5101[12];
#pragma pop

/* 80BB3F9C-80BB4728 0000BC 078C+00 1/2 0/0 0/0 .bss             M_gnd_work__Q29daObjBm_c5Bgc_c */
u8 daObjBm_c::Bgc_c::M_gnd_work[1932];

/* 80BB4728-80BB4734 000848 000C+00 0/1 0/0 0/0 .bss             @5102 */
#pragma push
#pragma force_active on
static u8 lit_5102[12];
#pragma pop

/* 80BB4734-80BB4788 000854 0054+00 0/1 0/0 0/0 .bss             M_wrt_work__Q29daObjBm_c5Bgc_c */
#pragma push
#pragma force_active on
u8 daObjBm_c::Bgc_c::M_wrt_work[84];
#pragma pop

/* 80BB4788-80BB4794 0008A8 000C+00 0/1 0/0 0/0 .bss             @5104 */
#pragma push
#pragma force_active on
static u8 lit_5104[12];
#pragma pop

/* 80BB4794-80BB51A4 0008B4 0A10+00 2/3 0/0 0/0 .bss             M_wall_work__Q29daObjBm_c5Bgc_c */
u8 daObjBm_c::Bgc_c::M_wall_work[2576];

/* 80BB0ED4-80BB1154 002C54 0280+00 1/1 0/0 0/0 .text
 * wall_pos__Q29daObjBm_c5Bgc_cFPC10fopAc_ac_cPCQ29daObjBm_c8BgcSrc_cisf */
void daObjBm_c::Bgc_c::wall_pos(fopAc_ac_c const* param_0, daObjBm_c::BgcSrc_c const* param_1,
                                    int param_2, s16 param_3, f32 param_4) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BB3A18-80BB3A1C 000260 0004+00 1/1 0/0 0/0 .rodata          @5242 */
SECTION_RODATA static f32 const lit_5242 = 76.0f;
COMPILER_STRIP_GATE(0x80BB3A18, &lit_5242);

/* 80BB1154-80BB1194 002ED4 0040+00 2/2 0/0 0/0 .text
 * chk_wall_pre__Q29daObjBm_c5Bgc_cFPC10fopAc_ac_cPCQ29daObjBm_c8BgcSrc_cis */
void daObjBm_c::Bgc_c::chk_wall_pre(fopAc_ac_c const* param_0,
                                        daObjBm_c::BgcSrc_c const* param_1, int param_2,
                                        s16 param_3) {
    // NONMATCHING
}

/* 80BB1194-80BB11D4 002F14 0040+00 1/1 0/0 0/0 .text            initActionSwWait__9daObjBm_cFv */
void daObjBm_c::initActionSwWait() {
    // NONMATCHING
}

/* 80BB11D4-80BB14C8 002F54 02F4+00 1/0 0/0 0/0 .text            actionSwWait__9daObjBm_cFv */
void daObjBm_c::actionSwWait() {
    // NONMATCHING
}

/* 80BB14C8-80BB154C 003248 0084+00 3/3 0/0 0/0 .text            initActionWarning__9daObjBm_cFv */
void daObjBm_c::initActionWarning() {
    // NONMATCHING
}

/* 80BB154C-80BB1654 0032CC 0108+00 1/0 0/0 0/0 .text            actionWarning__9daObjBm_cFv */
void daObjBm_c::actionWarning() {
    // NONMATCHING
}

/* 80BB1654-80BB1814 0033D4 01C0+00 1/1 0/0 0/0 .text            initActionFindPlayer__9daObjBm_cFv
 */
void daObjBm_c::initActionFindPlayer() {
    // NONMATCHING
}

/* 80BB1814-80BB1960 003594 014C+00 1/0 0/0 0/0 .text            actionFindPlayer__9daObjBm_cFv */
void daObjBm_c::actionFindPlayer() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BB3A1C-80BB3A20 000264 0004+00 0/0 0/0 0/0 .rodata          @5299 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5299 = 110.0f;
COMPILER_STRIP_GATE(0x80BB3A1C, &lit_5299);
#pragma pop

/* 80BB3A20-80BB3A24 000268 0004+00 0/1 0/0 0/0 .rodata          l_eff_id$5506 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_eff_id_5506[4] = {
    0x84,
    0x67,
    0x84,
    0x68,
};
COMPILER_STRIP_GATE(0x80BB3A20, &l_eff_id_5506);
#pragma pop

/* 80BB3A24-80BB3A28 00026C 0004+00 0/1 0/0 0/0 .rodata          @5564 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5564 = 6.5f;
COMPILER_STRIP_GATE(0x80BB3A24, &lit_5564);
#pragma pop

/* 80BB3A28-80BB3A2C 000270 0004+00 0/1 0/0 0/0 .rodata          @5565 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5565 = 32.0f;
COMPILER_STRIP_GATE(0x80BB3A28, &lit_5565);
#pragma pop

/* 80BB1960-80BB1BD0 0036E0 0270+00 1/1 0/0 0/0 .text            initActionAttack__9daObjBm_cFv */
void daObjBm_c::initActionAttack() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BB3A2C-80BB3A30 000274 0004+00 0/1 0/0 0/0 .rodata          l_eff_id$5631 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_eff_id_5631[4] = {
    0x84,
    0x62,
    0x84,
    0x63,
};
COMPILER_STRIP_GATE(0x80BB3A2C, &l_eff_id_5631);
#pragma pop

/* 80BB3A30-80BB3A38 000278 0006+02 0/1 0/0 0/0 .rodata          l_eff_id2$5639 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_eff_id2[6 + 2 /* padding */] = {
    0x84,
    0x65,
    0x84,
    0x66,
    0x84,
    0x6B,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80BB3A30, &l_eff_id2);
#pragma pop

/* 80BB3A38-80BB3A3C 000280 0004+00 0/1 0/0 0/0 .rodata          @5875 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5875 = 15.0f;
COMPILER_STRIP_GATE(0x80BB3A38, &lit_5875);
#pragma pop

/* 80BB3A3C-80BB3A40 000284 0004+00 0/1 0/0 0/0 .rodata          @5876 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5876 = 2.0f;
COMPILER_STRIP_GATE(0x80BB3A3C, &lit_5876);
#pragma pop

/* 80BB1BD0-80BB248C 003950 08BC+00 1/0 0/0 0/0 .text            actionAttack__9daObjBm_cFv */
void daObjBm_c::actionAttack() {
    // NONMATCHING
}

/* 80BB248C-80BB2700 00420C 0274+00 1/1 0/0 0/0 .text            initActionDead__9daObjBm_cFv */
void daObjBm_c::initActionDead() {
    // NONMATCHING
}

/* 80BB2700-80BB2AB0 004480 03B0+00 2/0 0/0 0/0 .text            actionDead__9daObjBm_cFv */
void daObjBm_c::actionDead() {
    // NONMATCHING
}

/* 80BB2AB0-80BB2C8C 004830 01DC+00 1/0 0/0 0/0 .text            Draw__9daObjBm_cFv */
int daObjBm_c::Draw() {
    // NONMATCHING
}

/* 80BB2C8C-80BB2EB8 004A0C 022C+00 1/0 0/0 0/0 .text            Delete__9daObjBm_cFv */
int daObjBm_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BB3E58-80BB3E80 0003E4 0028+00 1/1 0/0 0/0 .data            __vt__9daObjBm_c */
SECTION_DATA extern void* __vt__9daObjBm_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__9daObjBm_cFv,
    (void*)Create__9daObjBm_cFv,
    (void*)Execute__9daObjBm_cFPPA3_A4_f,
    (void*)Draw__9daObjBm_cFv,
    (void*)Delete__9daObjBm_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80BB2EB8-80BB3078 004C38 01C0+00 1/0 0/0 0/0 .text            daObjBm_create1st__FP9daObjBm_c */
static void daObjBm_create1st(daObjBm_c* param_0) {
    // NONMATCHING
}

/* 80BB3078-80BB3144 004DF8 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_CylFv */
// dCcD_Cyl::~dCcD_Cyl() {
extern "C" void __dt__8dCcD_CylFv() {
    // NONMATCHING
}

/* 80BB3144-80BB31C8 004EC4 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_CylFv */
// dCcD_Cyl::dCcD_Cyl() {
extern "C" void __ct__8dCcD_CylFv() {
    // NONMATCHING
}

/* 80BB31C8-80BB3210 004F48 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80BB3210-80BB3258 004F90 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80BB3258-80BB32A0 004FD8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80BB32A0-80BB32FC 005020 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80BB32FC-80BB336C 00507C 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80BB336C-80BB33DC 0050EC 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80BB33DC-80BB33FC 00515C 0020+00 1/0 0/0 0/0 .text            daObjBm_MoveBGDelete__FP9daObjBm_c
 */
static void daObjBm_MoveBGDelete(daObjBm_c* param_0) {
    // NONMATCHING
}

/* 80BB33FC-80BB341C 00517C 0020+00 1/0 0/0 0/0 .text            daObjBm_MoveBGExecute__FP9daObjBm_c
 */
static void daObjBm_MoveBGExecute(daObjBm_c* param_0) {
    // NONMATCHING
}

/* 80BB341C-80BB3448 00519C 002C+00 1/0 0/0 0/0 .text            daObjBm_MoveBGDraw__FP9daObjBm_c */
static void daObjBm_MoveBGDraw(daObjBm_c* param_0) {
    // NONMATCHING
}

/* 80BB3448-80BB3490 0051C8 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80BB3490-80BB34AC 005210 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<Us>__FPUs */
extern "C" void func_80BB3490(void* _this, u16* param_0) {
    // NONMATCHING
}

/* 80BB34AC-80BB34C8 00522C 001C+00 4/4 0/0 0/0 .text            cLib_calcTimer<Uc>__FPUc */
extern "C" void func_80BB34AC(void* _this, u8* param_0) {
    // NONMATCHING
}

/* 80BB34C8-80BB35A8 005248 00E0+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_bemos_cpp */
void __sinit_d_a_obj_bemos_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80BB34C8, __sinit_d_a_obj_bemos_cpp);
#pragma pop

/* 80BB35A8-80BB35E0 005328 0038+00 1/1 0/0 0/0 .text            __arraydtor$5103 */
void func_80BB35A8() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BB3E80-80BB3EB0 00040C 0030+00 2/2 0/0 0/0 .data            __vt__14dBgS_ObjGndChk */
SECTION_DATA extern void* __vt__14dBgS_ObjGndChk[12] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14dBgS_ObjGndChkFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80BB377C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80BB378C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80BB3784,
};

/* 80BB3EB0-80BB3EE0 00043C 0030+00 1/1 0/0 0/0 .data            __vt__11dBgS_WtrChk */
SECTION_DATA extern void* __vt__11dBgS_WtrChk[12] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11dBgS_WtrChkFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80BB3764,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80BB3774,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80BB376C,
};

/* 80BB35E0-80BB3658 005360 0078+00 5/4 0/0 0/0 .text            __dt__11dBgS_WtrChkFv */
// dBgS_WtrChk::~dBgS_WtrChk() {
extern "C" void __dt__11dBgS_WtrChkFv() {
    // NONMATCHING
}

/* 80BB3658-80BB3690 0053D8 0038+00 1/1 0/0 0/0 .text            __arraydtor$5100 */
void func_80BB3658() {
    // NONMATCHING
}

/* 80BB3690-80BB3708 005410 0078+00 6/5 0/0 0/0 .text            __dt__14dBgS_ObjGndChkFv */
// dBgS_ObjGndChk::~dBgS_ObjGndChk() {
extern "C" void __dt__14dBgS_ObjGndChkFv() {
    // NONMATCHING
}

/* 80BB3708-80BB3764 005488 005C+00 1/1 0/0 0/0 .text            __ct__14dBgS_ObjGndChkFv */
// dBgS_ObjGndChk::dBgS_ObjGndChk() {
extern "C" void __ct__14dBgS_ObjGndChkFv() {
    // NONMATCHING
}

/* 80BB3764-80BB376C 0054E4 0008+00 1/0 0/0 0/0 .text            @16@__dt__11dBgS_WtrChkFv */
static void func_80BB3764() {
    // NONMATCHING
}

/* 80BB376C-80BB3774 0054EC 0008+00 1/0 0/0 0/0 .text            @52@__dt__11dBgS_WtrChkFv */
static void func_80BB376C() {
    // NONMATCHING
}

/* 80BB3774-80BB377C 0054F4 0008+00 1/0 0/0 0/0 .text            @36@__dt__11dBgS_WtrChkFv */
static void func_80BB3774() {
    // NONMATCHING
}

/* 80BB377C-80BB3784 0054FC 0008+00 1/0 0/0 0/0 .text            @20@__dt__14dBgS_ObjGndChkFv */
static void func_80BB377C() {
    // NONMATCHING
}

/* 80BB3784-80BB378C 005504 0008+00 1/0 0/0 0/0 .text            @76@__dt__14dBgS_ObjGndChkFv */
static void func_80BB3784() {
    // NONMATCHING
}

/* 80BB378C-80BB3794 00550C 0008+00 1/0 0/0 0/0 .text            @60@__dt__14dBgS_ObjGndChkFv */
static void func_80BB378C() {
    // NONMATCHING
}

/* 80BB3794-80BB379C 005514 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80BB3794() {
    // NONMATCHING
}

/* 80BB379C-80BB37A4 00551C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80BB379C() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BB51A4-80BB51B4 0012C4 000C+04 0/0 0/0 0/0 .bss             @5249 */
#pragma push
#pragma force_active on
static u8 lit_5249[12 + 4 /* padding */];
#pragma pop

/* 80BB51B4-80BB5224 0012D4 0070+00 0/0 0/0 0/0 .bss             touch_work$5248 */
#pragma push
#pragma force_active on
static u8 touch_work[112];
#pragma pop

/* 80BB5224-80BB5228 001344 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80BB5224[4];
#pragma pop

/* 80BB5228-80BB522C 001348 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80BB5228[4];
#pragma pop

/* 80BB522C-80BB5230 00134C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80BB522C[4];
#pragma pop

/* 80BB5230-80BB5234 001350 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80BB5230[4];
#pragma pop

/* 80BB5234-80BB5238 001354 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80BB5234[4];
#pragma pop

/* 80BB5238-80BB523C 001358 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80BB5238[4];
#pragma pop

/* 80BB523C-80BB5240 00135C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80BB523C[4];
#pragma pop

/* 80BB5240-80BB5244 001360 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80BB5240[4];
#pragma pop

/* 80BB5244-80BB5248 001364 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80BB5244[4];
#pragma pop

/* 80BB5248-80BB524C 001368 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80BB5248[4];
#pragma pop

/* 80BB524C-80BB5250 00136C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80BB524C[4];
#pragma pop

/* 80BB5250-80BB5254 001370 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80BB5250[4];
#pragma pop

/* 80BB5254-80BB5258 001374 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80BB5254[4];
#pragma pop

/* 80BB5258-80BB525C 001378 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80BB5258[4];
#pragma pop

/* 80BB525C-80BB5260 00137C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80BB525C[4];
#pragma pop

/* 80BB5260-80BB5264 001380 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80BB5260[4];
#pragma pop

/* 80BB5264-80BB5268 001384 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80BB5264[4];
#pragma pop

/* 80BB5268-80BB526C 001388 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80BB5268[4];
#pragma pop

/* 80BB526C-80BB5270 00138C 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80BB526C[4];
#pragma pop

/* 80BB5270-80BB5274 001390 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80BB5270[4];
#pragma pop

/* 80BB5274-80BB5278 001394 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80BB5274[4];
#pragma pop

/* 80BB5278-80BB527C 001398 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80BB5278[4];
#pragma pop

/* 80BB527C-80BB5280 00139C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80BB527C[4];
#pragma pop

/* 80BB5280-80BB5284 0013A0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80BB5280[4];
#pragma pop

/* 80BB5284-80BB5288 0013A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80BB5284[4];
#pragma pop

/* 80BB3A40-80BB3A40 000288 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
