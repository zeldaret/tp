/**
 * @file d_a_obj_lv6TogeTrap.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv6TogeTrap.h"
#include "dol2asm.h"




//
// Forward References:
//

extern "C" void __ct__19daLv6TogeTrap_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__15daLv6TogeTrap_cFv();
extern "C" void CreateHeap__15daLv6TogeTrap_cFv();
extern "C" void create__15daLv6TogeTrap_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__8cM3dGLinFv();
extern "C" void searchSekizoAct__15daLv6TogeTrap_cFPvPv();
extern "C" void Execute__15daLv6TogeTrap_cFPPA3_A4_f();
extern "C" void moveLift__15daLv6TogeTrap_cFv();
extern "C" void executeType1__15daLv6TogeTrap_cFv();
extern "C" void init_modeBound__15daLv6TogeTrap_cFv();
extern "C" void modeBound__15daLv6TogeTrap_cFv();
extern "C" void init_modeBoundWait__15daLv6TogeTrap_cFv();
extern "C" void modeBoundWait__15daLv6TogeTrap_cFv();
extern "C" void init_modeAcc__15daLv6TogeTrap_cFv();
extern "C" void modeAcc__15daLv6TogeTrap_cFv();
extern "C" void init_modeMove__15daLv6TogeTrap_cFv();
extern "C" void modeMove__15daLv6TogeTrap_cFv();
extern "C" void init_modeBrk__15daLv6TogeTrap_cFv();
extern "C" void modeBrk__15daLv6TogeTrap_cFv();
extern "C" void init_modeMove2__15daLv6TogeTrap_cFv();
extern "C" void modeMove2__15daLv6TogeTrap_cFv();
extern "C" void init_modeWaitInit__15daLv6TogeTrap_cFv();
extern "C" void modeWaitInit__15daLv6TogeTrap_cFv();
extern "C" void init_modeWait__15daLv6TogeTrap_cFv();
extern "C" void modeWait__15daLv6TogeTrap_cFv();
extern "C" void executeType2__15daLv6TogeTrap_cFv();
extern "C" void init_modeWaitType2__15daLv6TogeTrap_cFv();
extern "C" void modeWaitType2__15daLv6TogeTrap_cFv();
extern "C" void init_modeMoveInitType2__15daLv6TogeTrap_cFv();
extern "C" void modeMoveInitType2__15daLv6TogeTrap_cFv();
extern "C" void init_modeAccType2__15daLv6TogeTrap_cFv();
extern "C" void modeAccType2__15daLv6TogeTrap_cFv();
extern "C" void init_modeWaitAttackType2__15daLv6TogeTrap_cFv();
extern "C" void modeWaitAttackType2__15daLv6TogeTrap_cFv();
extern "C" void init_modeRotate__15daLv6TogeTrap_cFv();
extern "C" void modeRotate__15daLv6TogeTrap_cFv();
extern "C" void init_modeBreak__15daLv6TogeTrap_cFv();
extern "C" void modeBreak__15daLv6TogeTrap_cFv();
extern "C" void setNextPoint__15daLv6TogeTrap_cFv();
extern "C" void Draw__15daLv6TogeTrap_cFv();
extern "C" void Delete__15daLv6TogeTrap_cFv();
extern "C" static void daLv6TogeTrap_Draw__FP15daLv6TogeTrap_c();
extern "C" static void daLv6TogeTrap_Execute__FP15daLv6TogeTrap_c();
extern "C" static void daLv6TogeTrap_Delete__FP15daLv6TogeTrap_c();
extern "C" static void daLv6TogeTrap_Create__FP10fopAc_ac_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__19daLv6TogeTrap_HIO_cFv();
extern "C" void __sinit_d_a_obj_lv6TogeTrap_cpp();
extern "C" u8 const mCcDObjInfo__15daLv6TogeTrap_c[48];
extern "C" u8 const mCcDObjInfo2__15daLv6TogeTrap_c[48];
extern "C" u8 const mSpeed__15daLv6TogeTrap_c[64];
extern "C" extern char const* const d_a_obj_lv6TogeTrap__stringBase0;
extern "C" u8 mCcDSph__15daLv6TogeTrap_c[64];
extern "C" u8 mCcDCyl__15daLv6TogeTrap_c[68];

//
// External References:
//

extern "C" void mDoMtx_ZXYrotS__FPA4_fsss();
extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void dPath_GetRoomPath__Fii();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool Create__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void GetAc__22dCcD_GAtTgCoCommonBaseFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void GetTgHitGObj__12dCcD_GObjInfFv();
extern "C" void GetTgHitObjSe__12dCcD_GObjInfFv();
extern "C" void getHitSeID__12dCcD_GObjInfFUci();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" bool __eq__4cXyzCFRC3Vec();
extern "C" void cM3d_InDivPos2__FPC3VecPC3VecfP3Vec();
extern "C" void cM3d_Len3dSqPntAndSegLine__FPC8cM3dGLinPC3VecP3VecPf();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void SetStartEnd__8cM3dGLinFRC4cXyzRC4cXyz();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalcPos__FP4cXyzRC4cXyzfff();
extern "C" void cLib_chaseF__FPfff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void deleteObject__14Z2SoundObjBaseFv();
extern "C" void startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase();
extern "C" void __ct__16Z2SoundObjSimpleFv();
extern "C" void __dl__FPv();
extern "C" void __ptmf_scall();
extern "C" void __cvt_fp2unsigned();
extern "C" void _savegpr_26();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_26();
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
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80C7C618-80C7C61C 000000 0004+00 11/11 0/0 0/0 .rodata          @3631 */
SECTION_RODATA static f32 const lit_3631 = 300.0f;
COMPILER_STRIP_GATE(0x80C7C618, &lit_3631);

/* 80C7C61C-80C7C620 000004 0004+00 7/17 0/0 0/0 .rodata          @3632 */
SECTION_RODATA static f32 const lit_3632 = 1.0f;
COMPILER_STRIP_GATE(0x80C7C61C, &lit_3632);

/* 80C7C620-80C7C624 000008 0004+00 0/1 0/0 0/0 .rodata          @3633 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3633 = 0.25f;
COMPILER_STRIP_GATE(0x80C7C620, &lit_3633);
#pragma pop

/* 80C7C624-80C7C628 00000C 0004+00 0/1 0/0 0/0 .rodata          @3634 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3634 = 15.0f;
COMPILER_STRIP_GATE(0x80C7C624, &lit_3634);
#pragma pop

/* 80C7C628-80C7C62C 000010 0004+00 0/2 0/0 0/0 .rodata          @3635 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3635 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C7C628, &lit_3635);
#pragma pop

/* 80C7C62C-80C7C630 000014 0004+00 0/2 0/0 0/0 .rodata          @3636 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3636 = 10.0f;
COMPILER_STRIP_GATE(0x80C7C62C, &lit_3636);
#pragma pop

/* 80C7C75C-80C7C75C 000144 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C7C75C = "L6TogeTp";
SECTION_DEAD static char const* const stringBase_80C7C765 = "L4TogeTp";
SECTION_DEAD static char const* const stringBase_80C7C76E = "L9Toge";
#pragma pop

/* 80C7C798-80C7C7D8 000020 0040+00 1/2 0/0 0/0 .data            mCcDSph__15daLv6TogeTrap_c */
SECTION_DATA u8 daLv6TogeTrap_c::mCcDSph[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80C7C7D8-80C7C81C 000060 0044+00 1/2 0/0 0/0 .data            mCcDCyl__15daLv6TogeTrap_c */
SECTION_DATA u8 daLv6TogeTrap_c::mCcDCyl[68] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80C7C81C-80C7C828 -00001 000C+00 2/3 0/0 0/0 .data            l_resNameIdx */
SECTION_DATA static void* l_resNameIdx[3] = {
    (void*)&d_a_obj_lv6TogeTrap__stringBase0,
    (void*)(((char*)&d_a_obj_lv6TogeTrap__stringBase0) + 0x9),
    (void*)(((char*)&d_a_obj_lv6TogeTrap__stringBase0) + 0x12),
};

/* 80C7C828-80C7C834 -00001 000C+00 0/1 0/0 0/0 .data            @4038 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4038[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeAcc__15daLv6TogeTrap_cFv,
};
#pragma pop

/* 80C7C834-80C7C840 -00001 000C+00 0/1 0/0 0/0 .data            @4039 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4039[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeMove__15daLv6TogeTrap_cFv,
};
#pragma pop

/* 80C7C840-80C7C84C -00001 000C+00 0/1 0/0 0/0 .data            @4040 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4040[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeMove2__15daLv6TogeTrap_cFv,
};
#pragma pop

/* 80C7C84C-80C7C858 -00001 000C+00 0/1 0/0 0/0 .data            @4041 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4041[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeBrk__15daLv6TogeTrap_cFv,
};
#pragma pop

/* 80C7C858-80C7C864 -00001 000C+00 0/1 0/0 0/0 .data            @4042 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4042[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWait__15daLv6TogeTrap_cFv,
};
#pragma pop

/* 80C7C864-80C7C870 -00001 000C+00 0/1 0/0 0/0 .data            @4043 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4043[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWaitInit__15daLv6TogeTrap_cFv,
};
#pragma pop

/* 80C7C870-80C7C87C -00001 000C+00 0/1 0/0 0/0 .data            @4044 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4044[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeBound__15daLv6TogeTrap_cFv,
};
#pragma pop

/* 80C7C87C-80C7C888 -00001 000C+00 0/1 0/0 0/0 .data            @4045 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4045[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeBoundWait__15daLv6TogeTrap_cFv,
};
#pragma pop

/* 80C7C888-80C7C894 -00001 000C+00 0/1 0/0 0/0 .data            @4046 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4046[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWaitType2__15daLv6TogeTrap_cFv,
};
#pragma pop

/* 80C7C894-80C7C8A0 -00001 000C+00 0/1 0/0 0/0 .data            @4047 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4047[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeMoveInitType2__15daLv6TogeTrap_cFv,
};
#pragma pop

/* 80C7C8A0-80C7C8AC -00001 000C+00 0/1 0/0 0/0 .data            @4048 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4048[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeAccType2__15daLv6TogeTrap_cFv,
};
#pragma pop

/* 80C7C8AC-80C7C8B8 -00001 000C+00 0/1 0/0 0/0 .data            @4049 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4049[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWaitAttackType2__15daLv6TogeTrap_cFv,
};
#pragma pop

/* 80C7C8B8-80C7C8C4 -00001 000C+00 0/1 0/0 0/0 .data            @4050 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4050[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeBreak__15daLv6TogeTrap_cFv,
};
#pragma pop

/* 80C7C8C4-80C7C8D0 -00001 000C+00 0/1 0/0 0/0 .data            @4051 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4051[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeRotate__15daLv6TogeTrap_cFv,
};
#pragma pop

/* 80C7C8D0-80C7C978 000158 00A8+00 0/1 0/0 0/0 .data            mode_proc$4037 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 mode_proc[168] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80C7C978-80C7C998 -00001 0020+00 1/0 0/0 0/0 .data            l_daLv6TogeTrap_Method */
static actor_method_class l_daLv6TogeTrap_Method = {
    (process_method_func)daLv6TogeTrap_Create__FP10fopAc_ac_c,
    (process_method_func)daLv6TogeTrap_Delete__FP15daLv6TogeTrap_c,
    (process_method_func)daLv6TogeTrap_Execute__FP15daLv6TogeTrap_c,
    0,
    (process_method_func)daLv6TogeTrap_Draw__FP15daLv6TogeTrap_c,
};

/* 80C7C998-80C7C9C8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv6TogeTrap */
extern actor_process_profile_definition g_profile_Obj_Lv6TogeTrap = {
  fpcLy_CURRENT_e,         // mLayerID
  3,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_Obj_Lv6TogeTrap,    // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daLv6TogeTrap_c), // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  622,                     // mPriority
  &l_daLv6TogeTrap_Method, // sub_method
  0x00040000,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80C7C9C8-80C7C9D4 000250 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80C7C9D4-80C7C9E0 00025C 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80C7C9E0-80C7C9EC 000268 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80C7C9EC-80C7C9F8 000274 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80C7C9F8-80C7CA04 000280 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C7CA04-80C7CA10 00028C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGLin */
SECTION_DATA extern void* __vt__8cM3dGLin[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGLinFv,
};

/* 80C7CA10-80C7CA38 000298 0028+00 1/1 0/0 0/0 .data            __vt__15daLv6TogeTrap_c */
SECTION_DATA extern void* __vt__15daLv6TogeTrap_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__15daLv6TogeTrap_cFv,
    (void*)Create__16dBgS_MoveBgActorFv,
    (void*)Execute__15daLv6TogeTrap_cFPPA3_A4_f,
    (void*)Draw__15daLv6TogeTrap_cFv,
    (void*)Delete__15daLv6TogeTrap_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80C7CA38-80C7CA44 0002C0 000C+00 2/2 0/0 0/0 .data            __vt__19daLv6TogeTrap_HIO_c */
SECTION_DATA extern void* __vt__19daLv6TogeTrap_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__19daLv6TogeTrap_HIO_cFv,
};

/* 80C7CA44-80C7CA50 0002CC 000C+00 3/3 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80C79E4C-80C79EC8 0000EC 007C+00 1/1 0/0 0/0 .text            __ct__19daLv6TogeTrap_HIO_cFv */
daLv6TogeTrap_HIO_c::daLv6TogeTrap_HIO_c() {
    // NONMATCHING
}

/* 80C79EC8-80C79F10 000168 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
// mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" void __dt__14mDoHIO_entry_cFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C7C630-80C7C660 000018 0030+00 1/1 0/0 0/0 .rodata          mCcDObjInfo__15daLv6TogeTrap_c */
SECTION_RODATA u8 const daLv6TogeTrap_c::mCcDObjInfo[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1F,
    0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x79, 0x01, 0x00, 0x01, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x0A, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C7C630, &daLv6TogeTrap_c::mCcDObjInfo);

/* 80C7C660-80C7C690 000048 0030+00 1/1 0/0 0/0 .rodata          mCcDObjInfo2__15daLv6TogeTrap_c */
SECTION_RODATA u8 const daLv6TogeTrap_c::mCcDObjInfo2[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xDA, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x0A, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C7C660, &daLv6TogeTrap_c::mCcDObjInfo2);

/* 80C7C690-80C7C6D0 000078 0040+00 0/1 0/0 0/0 .rodata          mSpeed__15daLv6TogeTrap_c */
#pragma push
#pragma force_active on
SECTION_RODATA u8 const daLv6TogeTrap_c::mSpeed[64] = {
    0x41, 0x20, 0x00, 0x00, 0x41, 0x85, 0x55, 0x55, 0x41, 0xBA, 0xAA, 0xAB, 0x41, 0xC8, 0x00, 0x00,
    0x41, 0xD5, 0x55, 0x55, 0x41, 0xE2, 0xAA, 0xAB, 0x41, 0xF0, 0x00, 0x00, 0x41, 0xFD, 0x55, 0x55,
    0x42, 0x05, 0x55, 0x55, 0x42, 0x20, 0x00, 0x00, 0x42, 0x3A, 0xAA, 0xAB, 0x42, 0x55, 0x55, 0x55,
    0x42, 0x70, 0x00, 0x00, 0x42, 0x85, 0x55, 0x55, 0x42, 0xA6, 0xAA, 0xAB, 0x40, 0x55, 0x55, 0x55,
};
COMPILER_STRIP_GATE(0x80C7C690, &daLv6TogeTrap_c::mSpeed);
#pragma pop

/* 80C7C6D0-80C7C6DC 0000B8 000C+00 1/1 0/0 0/0 .rodata          l_bmdIdx */
SECTION_RODATA static u8 const l_bmdIdx[12] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x80C7C6D0, &l_bmdIdx);

/* 80C7C6DC-80C7C6E8 0000C4 000C+00 0/0 0/0 0/0 .rodata          l_dzbIdx */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_dzbIdx[12] = {
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07,
};
COMPILER_STRIP_GATE(0x80C7C6DC, &l_dzbIdx);
#pragma pop

/* 80C7C6E8-80C7C6EC 0000D0 0004+00 9/18 0/0 0/0 .rodata          @3665 */
SECTION_RODATA static u8 const lit_3665[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C7C6E8, &lit_3665);

/* 80C79F10-80C79FE8 0001B0 00D8+00 2/2 0/0 0/0 .text            setBaseMtx__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::setBaseMtx() {
    // NONMATCHING
}

/* 80C79FE8-80C7A068 000288 0080+00 1/0 0/0 0/0 .text            CreateHeap__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C7C6EC-80C7C6F4 0000D4 0006+02 0/0 0/0 0/0 .rodata          estimateSizeTbl$3689 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const estimateSizeTbl[6 + 2 /* padding */] = {
    0x08,
    0x10,
    0x2A,
    0x00,
    0x15,
    0x40,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C7C6EC, &estimateSizeTbl);
#pragma pop

/* 80C7C6F4-80C7C6F8 0000DC 0004+00 0/2 0/0 0/0 .rodata          @3843 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3843 = 100.0f;
COMPILER_STRIP_GATE(0x80C7C6F4, &lit_3843);
#pragma pop

/* 80C7C6F8-80C7C700 0000E0 0004+04 0/1 0/0 0/0 .rodata          @3844 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3844[1 + 1 /* padding */] = {
    21.0f / 20.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80C7C6F8, &lit_3844);
#pragma pop

/* 80C7C700-80C7C708 0000E8 0008+00 0/1 0/0 0/0 .rodata          @3846 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3846[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C7C700, &lit_3846);
#pragma pop

/* 80C7C708-80C7C710 0000F0 0008+00 0/1 0/0 0/0 .rodata          @3847 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3847[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C7C708, &lit_3847);
#pragma pop

/* 80C7A068-80C7A534 000308 04CC+00 1/1 0/0 0/0 .text            create__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::create() {
    // NONMATCHING
}

/* 80C7A534-80C7A57C 0007D4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80C7A57C-80C7A5C4 00081C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80C7A5C4-80C7A60C 000864 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80C7A60C-80C7A668 0008AC 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C7A668-80C7A6B0 000908 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGLinFv */
// cM3dGLin::~cM3dGLin() {
extern "C" void __dt__8cM3dGLinFv() {
    // NONMATCHING
}

/* 80C7A6B0-80C7A700 000950 0050+00 1/1 0/0 0/0 .text searchSekizoAct__15daLv6TogeTrap_cFPvPv */
void daLv6TogeTrap_c::searchSekizoAct(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C7C710-80C7C714 0000F8 0004+00 0/1 0/0 0/0 .rodata          @4027 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4027 = 75.0f;
COMPILER_STRIP_GATE(0x80C7C710, &lit_4027);
#pragma pop

/* 80C7C714-80C7C718 0000FC 0004+00 0/1 0/0 0/0 .rodata          @4028 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4028 = 50.0f;
COMPILER_STRIP_GATE(0x80C7C714, &lit_4028);
#pragma pop

/* 80C7C718-80C7C71C 000100 0004+00 0/2 0/0 0/0 .rodata          @4029 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4029 = 30.0f;
COMPILER_STRIP_GATE(0x80C7C718, &lit_4029);
#pragma pop

/* 80C7C71C-80C7C720 000104 0004+00 0/2 0/0 0/0 .rodata          @4030 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4030 = 0x43360B61;
COMPILER_STRIP_GATE(0x80C7C71C, &lit_4030);
#pragma pop

/* 80C7CA58-80C7CA64 000008 000C+00 1/1 0/0 0/0 .bss             @3625 */
static u8 lit_3625[12];

/* 80C7CA64-80C7CA8C 000014 0028+00 9/9 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[40];

/* 80C7A700-80C7A97C 0009A0 027C+00 1/0 0/0 0/0 .text Execute__15daLv6TogeTrap_cFPPA3_A4_f */
void daLv6TogeTrap_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C7CA8C-80C7CA90 00003C 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80C7CA8C[4];

/* 80C7A97C-80C7ABC8 000C1C 024C+00 1/1 0/0 0/0 .text            moveLift__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::moveLift() {
    // NONMATCHING
}

/* 80C7ABC8-80C7ACA0 000E68 00D8+00 1/1 0/0 0/0 .text            executeType1__15daLv6TogeTrap_cFv
 */
void daLv6TogeTrap_c::executeType1() {
    // NONMATCHING
}

/* 80C7ACA0-80C7AD40 000F40 00A0+00 1/1 0/0 0/0 .text            init_modeBound__15daLv6TogeTrap_cFv
 */
void daLv6TogeTrap_c::init_modeBound() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C7C720-80C7C724 000108 0004+00 0/1 0/0 0/0 .rodata          @4114 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4114 = 5.0f;
COMPILER_STRIP_GATE(0x80C7C720, &lit_4114);
#pragma pop

/* 80C7AD40-80C7ADA4 000FE0 0064+00 1/0 0/0 0/0 .text            modeBound__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::modeBound() {
    // NONMATCHING
}

/* 80C7ADA4-80C7ADC0 001044 001C+00 1/1 0/0 0/0 .text init_modeBoundWait__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::init_modeBoundWait() {
    // NONMATCHING
}

/* 80C7ADC0-80C7AE18 001060 0058+00 1/0 0/0 0/0 .text            modeBoundWait__15daLv6TogeTrap_cFv
 */
void daLv6TogeTrap_c::modeBoundWait() {
    // NONMATCHING
}

/* 80C7AE18-80C7AE24 0010B8 000C+00 1/1 0/0 0/0 .text            init_modeAcc__15daLv6TogeTrap_cFv
 */
void daLv6TogeTrap_c::init_modeAcc() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C7C724-80C7C728 00010C 0004+00 0/4 0/0 0/0 .rodata          @4149 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4149 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C7C724, &lit_4149);
#pragma pop

/* 80C7C728-80C7C730 000110 0004+04 5/12 0/0 0/0 .rodata          @4150 */
SECTION_RODATA static f32 const lit_4150[1 + 1 /* padding */] = {
    -1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80C7C728, &lit_4150);

/* 80C7AE24-80C7AF10 0010C4 00EC+00 1/0 0/0 0/0 .text            modeAcc__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::modeAcc() {
    // NONMATCHING
}

/* 80C7AF10-80C7AF1C 0011B0 000C+00 1/1 0/0 0/0 .text            init_modeMove__15daLv6TogeTrap_cFv
 */
void daLv6TogeTrap_c::init_modeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C7C730-80C7C738 000118 0008+00 0/2 0/0 0/0 .rodata          @4232 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4232[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C7C730, &lit_4232);
#pragma pop

/* 80C7C738-80C7C740 000120 0008+00 0/2 0/0 0/0 .rodata          @4233 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4233[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C7C738, &lit_4233);
#pragma pop

/* 80C7C740-80C7C748 000128 0008+00 0/2 0/0 0/0 .rodata          @4234 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4234[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C7C740, &lit_4234);
#pragma pop

/* 80C7AF1C-80C7B234 0011BC 0318+00 1/0 0/0 0/0 .text            modeMove__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::modeMove() {
    // NONMATCHING
}

/* 80C7B234-80C7B240 0014D4 000C+00 1/1 0/0 0/0 .text            init_modeBrk__15daLv6TogeTrap_cFv
 */
void daLv6TogeTrap_c::init_modeBrk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C7C748-80C7C74C 000130 0004+00 0/1 0/0 0/0 .rodata          @4280 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4280 = 0.5f;
COMPILER_STRIP_GATE(0x80C7C748, &lit_4280);
#pragma pop

/* 80C7B240-80C7B43C 0014E0 01FC+00 1/0 0/0 0/0 .text            modeBrk__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::modeBrk() {
    // NONMATCHING
}

/* 80C7B43C-80C7B448 0016DC 000C+00 1/1 0/0 0/0 .text            init_modeMove2__15daLv6TogeTrap_cFv
 */
void daLv6TogeTrap_c::init_modeMove2() {
    // NONMATCHING
}

/* 80C7B448-80C7B518 0016E8 00D0+00 1/0 0/0 0/0 .text            modeMove2__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::modeMove2() {
    // NONMATCHING
}

/* 80C7B518-80C7B530 0017B8 0018+00 3/3 0/0 0/0 .text init_modeWaitInit__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::init_modeWaitInit() {
    // NONMATCHING
}

/* 80C7B530-80C7B600 0017D0 00D0+00 1/0 0/0 0/0 .text            modeWaitInit__15daLv6TogeTrap_cFv
 */
void daLv6TogeTrap_c::modeWaitInit() {
    // NONMATCHING
}

/* 80C7B600-80C7B60C 0018A0 000C+00 2/2 0/0 0/0 .text            init_modeWait__15daLv6TogeTrap_cFv
 */
void daLv6TogeTrap_c::init_modeWait() {
    // NONMATCHING
}

/* 80C7B60C-80C7B6D4 0018AC 00C8+00 1/0 0/0 0/0 .text            modeWait__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::modeWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C7C74C-80C7C750 000134 0004+00 1/1 0/0 0/0 .rodata          @4416 */
SECTION_RODATA static f32 const lit_4416 = 10000.0f;
COMPILER_STRIP_GATE(0x80C7C74C, &lit_4416);

/* 80C7B6D4-80C7B988 001974 02B4+00 1/1 0/0 0/0 .text            executeType2__15daLv6TogeTrap_cFv
 */
void daLv6TogeTrap_c::executeType2() {
    // NONMATCHING
}

/* 80C7B988-80C7B9A8 001C28 0020+00 2/2 0/0 0/0 .text init_modeWaitType2__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::init_modeWaitType2() {
    // NONMATCHING
}

/* 80C7B9A8-80C7BA38 001C48 0090+00 1/0 0/0 0/0 .text            modeWaitType2__15daLv6TogeTrap_cFv
 */
void daLv6TogeTrap_c::modeWaitType2() {
    // NONMATCHING
}

/* 80C7BA38-80C7BA50 001CD8 0018+00 1/1 0/0 0/0 .text init_modeMoveInitType2__15daLv6TogeTrap_cFv
 */
void daLv6TogeTrap_c::init_modeMoveInitType2() {
    // NONMATCHING
}

/* 80C7BA50-80C7BAE8 001CF0 0098+00 1/0 0/0 0/0 .text modeMoveInitType2__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::modeMoveInitType2() {
    // NONMATCHING
}

/* 80C7BAE8-80C7BAF4 001D88 000C+00 1/1 0/0 0/0 .text init_modeAccType2__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::init_modeAccType2() {
    // NONMATCHING
}

/* 80C7BAF4-80C7BC54 001D94 0160+00 1/0 0/0 0/0 .text            modeAccType2__15daLv6TogeTrap_cFv
 */
void daLv6TogeTrap_c::modeAccType2() {
    // NONMATCHING
}

/* 80C7BC54-80C7BC7C 001EF4 0028+00 2/2 0/0 0/0 .text
 * init_modeWaitAttackType2__15daLv6TogeTrap_cFv                */
void daLv6TogeTrap_c::init_modeWaitAttackType2() {
    // NONMATCHING
}

/* 80C7BC7C-80C7BD64 001F1C 00E8+00 1/0 0/0 0/0 .text modeWaitAttackType2__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::modeWaitAttackType2() {
    // NONMATCHING
}

/* 80C7BD64-80C7BD70 002004 000C+00 1/1 0/0 0/0 .text init_modeRotate__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::init_modeRotate() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C7C750-80C7C754 000138 0004+00 0/1 0/0 0/0 .rodata          @4533 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4533 = 360.0f;
COMPILER_STRIP_GATE(0x80C7C750, &lit_4533);
#pragma pop

/* 80C7C754-80C7C758 00013C 0004+00 0/1 0/0 0/0 .rodata          @4534 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4534 = 0x40490FDB;
COMPILER_STRIP_GATE(0x80C7C754, &lit_4534);
#pragma pop

/* 80C7C758-80C7C75C 000140 0004+00 0/1 0/0 0/0 .rodata          @4535 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4535 = 2.0f;
COMPILER_STRIP_GATE(0x80C7C758, &lit_4535);
#pragma pop

/* 80C7BD70-80C7BED8 002010 0168+00 1/0 0/0 0/0 .text            modeRotate__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::modeRotate() {
    // NONMATCHING
}

/* 80C7BED8-80C7BFE4 002178 010C+00 1/1 0/0 0/0 .text            init_modeBreak__15daLv6TogeTrap_cFv
 */
void daLv6TogeTrap_c::init_modeBreak() {
    // NONMATCHING
}

/* 80C7BFE4-80C7C1D8 002284 01F4+00 1/0 0/0 0/0 .text            modeBreak__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::modeBreak() {
    // NONMATCHING
}

/* 80C7C1D8-80C7C33C 002478 0164+00 2/2 0/0 0/0 .text            setNextPoint__15daLv6TogeTrap_cFv
 */
void daLv6TogeTrap_c::setNextPoint() {
    // NONMATCHING
}

/* 80C7C33C-80C7C3E0 0025DC 00A4+00 1/0 0/0 0/0 .text            Draw__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::Draw() {
    // NONMATCHING
}

/* 80C7C3E0-80C7C430 002680 0050+00 1/0 0/0 0/0 .text            Delete__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::Delete() {
    // NONMATCHING
}

/* 80C7C430-80C7C45C 0026D0 002C+00 1/0 0/0 0/0 .text daLv6TogeTrap_Draw__FP15daLv6TogeTrap_c */
static void daLv6TogeTrap_Draw(daLv6TogeTrap_c* param_0) {
    // NONMATCHING
}

/* 80C7C45C-80C7C47C 0026FC 0020+00 1/0 0/0 0/0 .text daLv6TogeTrap_Execute__FP15daLv6TogeTrap_c
 */
static void daLv6TogeTrap_Execute(daLv6TogeTrap_c* param_0) {
    // NONMATCHING
}

/* 80C7C47C-80C7C49C 00271C 0020+00 1/0 0/0 0/0 .text daLv6TogeTrap_Delete__FP15daLv6TogeTrap_c */
static void daLv6TogeTrap_Delete(daLv6TogeTrap_c* param_0) {
    // NONMATCHING
}

/* 80C7C49C-80C7C4BC 00273C 0020+00 1/0 0/0 0/0 .text daLv6TogeTrap_Create__FP10fopAc_ac_c */
static void daLv6TogeTrap_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C7C4BC-80C7C504 00275C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C7C504-80C7C560 0027A4 005C+00 2/1 0/0 0/0 .text            __dt__19daLv6TogeTrap_HIO_cFv */
daLv6TogeTrap_HIO_c::~daLv6TogeTrap_HIO_c() {
    // NONMATCHING
}

/* 80C7C560-80C7C604 002800 00A4+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_lv6TogeTrap_cpp */
void __sinit_d_a_obj_lv6TogeTrap_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80C7C560, __sinit_d_a_obj_lv6TogeTrap_cpp);
#pragma pop

/* 80C7C75C-80C7C75C 000144 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
