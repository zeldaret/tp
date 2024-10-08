/**
 * @file d_a_npc_tkj2.cpp
 * 
*/

#include "d/actor/d_a_npc_tkj2.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __ct__16daNpc_Tkj2_HIO_cFv();
extern "C" static void anm_init__FP14npc_tkj2_classifUcf();
extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" static void daNpc_Tkj2_Draw__FP14npc_tkj2_class();
extern "C" static void npc_tkj2_carry_check__FP14npc_tkj2_class();
extern "C" static void mode_init_boomCarry__FP14npc_tkj2_class();
extern "C" static void Wind_effect__FP14npc_tkj2_class();
extern "C" static void CheckRoof__FP14npc_tkj2_class();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" static void CheckWall__FP14npc_tkj2_classs();
extern "C" static void GndCheck2__FP14npc_tkj2_class();
extern "C" void __dt__14dBgS_ObjGndChkFv();
extern "C" static void GndCheck__FP14npc_tkj2_class4cXyz();
extern "C" static void npc_tkj2_normal__FP14npc_tkj2_class();
extern "C" static void return_pos_get__FP14npc_tkj2_class();
extern "C" static void npc_tkj2_carry__FP14npc_tkj2_class();
extern "C" static void npc_tkj2_fly__FP14npc_tkj2_class();
extern "C" static void npc_tkj2_drop__FP14npc_tkj2_class();
extern "C" static void npc_tkj2_return__FP14npc_tkj2_class();
extern "C" static void ObjHit__FP14npc_tkj2_class();
extern "C" static void action__FP14npc_tkj2_class();
extern "C" static void daNpc_Tkj2_Execute__FP14npc_tkj2_class();
extern "C" static bool daNpc_Tkj2_IsDelete__FP14npc_tkj2_class();
extern "C" static void daNpc_Tkj2_Delete__FP14npc_tkj2_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daNpc_Tkj2_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__16daNpc_Tkj2_HIO_cFv();
extern "C" void __sinit_d_a_npc_tkj2_cpp();
extern "C" static void func_80B142A0();
extern "C" static void func_80B142A8();
extern "C" static void func_80B142B0();
extern "C" static void func_80B142B8();
extern "C" static void func_80B142C0();
extern "C" extern char const* const d_a_npc_tkj2__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotS__14mDoMtx_stack_cFRC5csXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss();
extern "C" void entry__13mDoExt_btpAnmFP16J3DMaterialTables();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_wayBgCheck__FPC10fopAc_ac_cff();
extern "C" void fopAcM_carryOffRevise__FP10fopAc_ac_c();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void ClrMoveBGOnly__9dBgS_AcchFv();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void GetTgHitGObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void initOffset__20daPy_boomerangMove_cFPC4cXyz();
extern "C" void posMove__20daPy_boomerangMove_cFP4cXyzPsP10fopAc_ac_cs();
extern "C" void bgCheckAfterOffset__20daPy_boomerangMove_cFPC4cXyz();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void ClrCcMove__9cCcD_SttsFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void _savegpr_25();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_25();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80B142DC-80B142E0 000000 0004+00 16/16 0/0 0/0 .rodata          @3648 */
SECTION_RODATA static f32 const lit_3648 = 1.0f;
COMPILER_STRIP_GATE(0x80B142DC, &lit_3648);

/* 80B142E0-80B142E4 000004 0004+00 1/6 0/0 0/0 .rodata          @3649 */
SECTION_RODATA static f32 const lit_3649 = 2.0f;
COMPILER_STRIP_GATE(0x80B142E0, &lit_3649);

/* 80B143B8-80B143D4 -00001 001C+00 1/1 0/0 0/0 .data            @4761 */
SECTION_DATA static void* lit_4761[7] = {
    (void*)(((char*)action__FP14npc_tkj2_class) + 0xC8),
    (void*)(((char*)action__FP14npc_tkj2_class) + 0x128),
    (void*)(((char*)action__FP14npc_tkj2_class) + 0x138),
    (void*)(((char*)action__FP14npc_tkj2_class) + 0x144),
    (void*)(((char*)action__FP14npc_tkj2_class) + 0x284),
    (void*)(((char*)action__FP14npc_tkj2_class) + 0x28C),
    (void*)(((char*)action__FP14npc_tkj2_class) + 0x210),
};

/* 80B143D4-80B14414 00001C 0040+00 1/1 0/0 0/0 .data            cc_sph_src$4995 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x14202, 0x11}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 20.0f} // mSph
    } // mSphAttr
};

/* 80B14414-80B14434 -00001 0020+00 1/0 0/0 0/0 .data            l_daNpc_Tkj2_Method */
static actor_method_class l_daNpc_Tkj2_Method = {
    (process_method_func)daNpc_Tkj2_Create__FP10fopAc_ac_c,
    (process_method_func)daNpc_Tkj2_Delete__FP14npc_tkj2_class,
    (process_method_func)daNpc_Tkj2_Execute__FP14npc_tkj2_class,
    (process_method_func)daNpc_Tkj2_IsDelete__FP14npc_tkj2_class,
    (process_method_func)daNpc_Tkj2_Draw__FP14npc_tkj2_class,
};

/* 80B14434-80B14464 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_TKJ2 */
extern actor_process_profile_definition g_profile_NPC_TKJ2 = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_TKJ2,          // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(npc_tkj2_class), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  696,                    // mPriority
  &l_daNpc_Tkj2_Method,   // sub_method
  0x000C4000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_0_e,      // cullType
};

/* 80B14464-80B14470 0000AC 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80B14470-80B1447C 0000B8 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80B1447C-80B144A0 0000C4 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B142C0,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B142B8,
};

/* 80B144A0-80B144AC 0000E8 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80B144AC-80B144DC 0000F4 0030+00 2/2 0/0 0/0 .data            __vt__14dBgS_ObjGndChk */
SECTION_DATA extern void* __vt__14dBgS_ObjGndChk[12] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14dBgS_ObjGndChkFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B142A0,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B142B0,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B142A8,
};

/* 80B144DC-80B144E8 000124 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 80B144E8-80B144F4 000130 000C+00 2/2 0/0 0/0 .data            __vt__16daNpc_Tkj2_HIO_c */
SECTION_DATA extern void* __vt__16daNpc_Tkj2_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daNpc_Tkj2_HIO_cFv,
};

/* 80B10DEC-80B10E20 0000EC 0034+00 1/1 0/0 0/0 .text            __ct__16daNpc_Tkj2_HIO_cFv */
daNpc_Tkj2_HIO_c::daNpc_Tkj2_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B142E4-80B142E8 000008 0004+00 2/14 0/0 0/0 .rodata          @3663 */
SECTION_RODATA static u8 const lit_3663[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B142E4, &lit_3663);

/* 80B142E8-80B142EC 00000C 0004+00 1/2 0/0 0/0 .rodata          @3664 */
SECTION_RODATA static f32 const lit_3664 = -1.0f;
COMPILER_STRIP_GATE(0x80B142E8, &lit_3664);

/* 80B143AC-80B143AC 0000D0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B143AC = "Tkj2";
#pragma pop

/* 80B10E20-80B10ECC 000120 00AC+00 6/6 0/0 0/0 .text            anm_init__FP14npc_tkj2_classifUcf
 */
static void anm_init(npc_tkj2_class* param_0, int param_1, f32 param_2, u8 param_3,
                         f32 param_4) {
    // NONMATCHING
}

/* 80B10ECC-80B1101C 0001CC 0150+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static void nodeCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B142EC-80B142F0 000010 0004+00 1/8 0/0 0/0 .rodata          @3740 */
SECTION_RODATA static f32 const lit_3740 = 100.0f;
COMPILER_STRIP_GATE(0x80B142EC, &lit_3740);

/* 80B142F0-80B142F4 000014 0004+00 0/1 0/0 0/0 .rodata          @3741 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3741 = 400.0f;
COMPILER_STRIP_GATE(0x80B142F0, &lit_3741);
#pragma pop

/* 80B142F4-80B142F8 000018 0004+00 0/2 0/0 0/0 .rodata          @3742 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3742 = 40.0f;
COMPILER_STRIP_GATE(0x80B142F4, &lit_3742);
#pragma pop

/* 80B1101C-80B11130 00031C 0114+00 1/0 0/0 0/0 .text            daNpc_Tkj2_Draw__FP14npc_tkj2_class
 */
static void daNpc_Tkj2_Draw(npc_tkj2_class* param_0) {
    // NONMATCHING
}

/* 80B11130-80B1119C 000430 006C+00 1/1 0/0 0/0 .text npc_tkj2_carry_check__FP14npc_tkj2_class */
static void npc_tkj2_carry_check(npc_tkj2_class* param_0) {
    // NONMATCHING
}

/* 80B1119C-80B111F4 00049C 0058+00 1/1 0/0 0/0 .text mode_init_boomCarry__FP14npc_tkj2_class */
static void mode_init_boomCarry(npc_tkj2_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B142F8-80B142FC 00001C 0004+00 0/3 0/0 0/0 .rodata          @3804 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3804 = 5.0f;
COMPILER_STRIP_GATE(0x80B142F8, &lit_3804);
#pragma pop

/* 80B142FC-80B14300 000020 0004+00 0/7 0/0 0/0 .rodata          @3805 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3805 = 20.0f;
COMPILER_STRIP_GATE(0x80B142FC, &lit_3805);
#pragma pop

/* 80B14300-80B14304 000024 0004+00 0/2 0/0 0/0 .rodata          @3806 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3806 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80B14300, &lit_3806);
#pragma pop

/* 80B111F4-80B1142C 0004F4 0238+00 1/1 0/0 0/0 .text            Wind_effect__FP14npc_tkj2_class */
static void Wind_effect(npc_tkj2_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B14304-80B14308 000028 0004+00 0/3 0/0 0/0 .rodata          @3878 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3878 = 50.0f;
COMPILER_STRIP_GATE(0x80B14304, &lit_3878);
#pragma pop

/* 80B14308-80B1430C 00002C 0004+00 0/1 0/0 0/0 .rodata          @3879 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3879 = 1000.0f;
COMPILER_STRIP_GATE(0x80B14308, &lit_3879);
#pragma pop

/* 80B1430C-80B14314 000030 0008+00 0/3 0/0 0/0 .rodata          @3880 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3880[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B1430C, &lit_3880);
#pragma pop

/* 80B14314-80B1431C 000038 0008+00 0/3 0/0 0/0 .rodata          @3881 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3881[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B14314, &lit_3881);
#pragma pop

/* 80B1431C-80B14324 000040 0008+00 0/3 0/0 0/0 .rodata          @3882 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3882[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B1431C, &lit_3882);
#pragma pop

/* 80B1142C-80B1169C 00072C 0270+00 1/1 0/0 0/0 .text            CheckRoof__FP14npc_tkj2_class */
static void CheckRoof(npc_tkj2_class* param_0) {
    // NONMATCHING
}

/* 80B1169C-80B116E4 00099C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B14324-80B14328 000048 0004+00 0/2 0/0 0/0 .rodata          @3988 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3988 = -100.0f;
COMPILER_STRIP_GATE(0x80B14324, &lit_3988);
#pragma pop

/* 80B116E4-80B11AB0 0009E4 03CC+00 1/1 0/0 0/0 .text            CheckWall__FP14npc_tkj2_classs */
static void CheckWall(npc_tkj2_class* param_0, s16 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B14328-80B1432C 00004C 0004+00 1/1 0/0 0/0 .rodata          @4015 */
SECTION_RODATA static f32 const lit_4015 = 500.0f;
COMPILER_STRIP_GATE(0x80B14328, &lit_4015);

/* 80B11AB0-80B11BD0 000DB0 0120+00 3/3 0/0 0/0 .text            GndCheck2__FP14npc_tkj2_class */
static void GndCheck2(npc_tkj2_class* param_0) {
    // NONMATCHING
}

/* 80B11BD0-80B11C48 000ED0 0078+00 4/3 0/0 0/0 .text            __dt__14dBgS_ObjGndChkFv */
// dBgS_ObjGndChk::~dBgS_ObjGndChk() {
extern "C" void __dt__14dBgS_ObjGndChkFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B1432C-80B14330 000050 0004+00 1/1 0/0 0/0 .rodata          @4035 */
SECTION_RODATA static f32 const lit_4035 = -500.0f;
COMPILER_STRIP_GATE(0x80B1432C, &lit_4035);

/* 80B11C48-80B11CCC 000F48 0084+00 2/2 0/0 0/0 .text            GndCheck__FP14npc_tkj2_class4cXyz
 */
static void GndCheck(npc_tkj2_class* param_0, cXyz param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B14330-80B14334 000054 0004+00 0/2 0/0 0/0 .rodata          @4107 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4107 = 70.0f;
COMPILER_STRIP_GATE(0x80B14330, &lit_4107);
#pragma pop

/* 80B14334-80B14338 000058 0004+00 0/2 0/0 0/0 .rodata          @4108 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4108 = 3.0f;
COMPILER_STRIP_GATE(0x80B14334, &lit_4108);
#pragma pop

/* 80B14338-80B1433C 00005C 0004+00 0/3 0/0 0/0 .rodata          @4109 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4109 = 200.0f;
COMPILER_STRIP_GATE(0x80B14338, &lit_4109);
#pragma pop

/* 80B1433C-80B14340 000060 0004+00 0/1 0/0 0/0 .rodata          @4110 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4110 = 300.0f;
COMPILER_STRIP_GATE(0x80B1433C, &lit_4110);
#pragma pop

/* 80B14340-80B14344 000064 0004+00 0/1 0/0 0/0 .rodata          @4111 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4111 = 4000.0f;
COMPILER_STRIP_GATE(0x80B14340, &lit_4111);
#pragma pop

/* 80B14344-80B14348 000068 0004+00 0/2 0/0 0/0 .rodata          @4112 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4112 = 30.0f;
COMPILER_STRIP_GATE(0x80B14344, &lit_4112);
#pragma pop

/* 80B14348-80B1434C 00006C 0004+00 0/1 0/0 0/0 .rodata          @4113 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4113 = 60.0f;
COMPILER_STRIP_GATE(0x80B14348, &lit_4113);
#pragma pop

/* 80B11CCC-80B120DC 000FCC 0410+00 1/1 0/0 0/0 .text            npc_tkj2_normal__FP14npc_tkj2_class
 */
static void npc_tkj2_normal(npc_tkj2_class* param_0) {
    // NONMATCHING
}

/* 80B120DC-80B122AC 0013DC 01D0+00 1/1 0/0 0/0 .text            return_pos_get__FP14npc_tkj2_class
 */
static void return_pos_get(npc_tkj2_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B1434C-80B14350 000070 0004+00 0/1 0/0 0/0 .rodata          @4251 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4251 = 15.0f;
COMPILER_STRIP_GATE(0x80B1434C, &lit_4251);
#pragma pop

/* 80B143AC-80B143AC 0000D0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B143B1 = "D_MN07";
#pragma pop

/* 80B14500-80B14504 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_80B14500[4];

/* 80B14504-80B14510 00000C 000C+00 1/1 0/0 0/0 .bss             @3643 */
static u8 lit_3643[12];

/* 80B14510-80B14524 000018 0014+00 4/4 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[20];

/* 80B122AC-80B125D0 0015AC 0324+00 1/1 0/0 0/0 .text            npc_tkj2_carry__FP14npc_tkj2_class
 */
static void npc_tkj2_carry(npc_tkj2_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B14350-80B14354 000074 0004+00 0/1 0/0 0/0 .rodata          @4281 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4281 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80B14350, &lit_4281);
#pragma pop

/* 80B14354-80B14358 000078 0004+00 0/5 0/0 0/0 .rodata          @4282 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4282 = 10.0f;
COMPILER_STRIP_GATE(0x80B14354, &lit_4282);
#pragma pop

/* 80B14358-80B1435C 00007C 0004+00 0/4 0/0 0/0 .rodata          @4283 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4283 = 0.5f;
COMPILER_STRIP_GATE(0x80B14358, &lit_4283);
#pragma pop

/* 80B1435C-80B14360 000080 0004+00 0/1 0/0 0/0 .rodata          @4284 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4284 = -20.0f;
COMPILER_STRIP_GATE(0x80B1435C, &lit_4284);
#pragma pop

/* 80B125D0-80B12750 0018D0 0180+00 1/1 0/0 0/0 .text            npc_tkj2_fly__FP14npc_tkj2_class */
static void npc_tkj2_fly(npc_tkj2_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B14360-80B14364 000084 0004+00 0/1 0/0 0/0 .rodata          @4296 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4296 = -2.0f;
COMPILER_STRIP_GATE(0x80B14360, &lit_4296);
#pragma pop

/* 80B12750-80B12810 001A50 00C0+00 1/1 0/0 0/0 .text            npc_tkj2_drop__FP14npc_tkj2_class
 */
static void npc_tkj2_drop(npc_tkj2_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B14364-80B14368 000088 0004+00 0/1 0/0 0/0 .rodata          @4429 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4429 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80B14364, &lit_4429);
#pragma pop

/* 80B14368-80B1436C 00008C 0004+00 0/1 0/0 0/0 .rodata          @4430 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4430 = 1.5f;
COMPILER_STRIP_GATE(0x80B14368, &lit_4430);
#pragma pop

/* 80B12810-80B12D20 001B10 0510+00 1/1 0/0 0/0 .text            npc_tkj2_return__FP14npc_tkj2_class
 */
static void npc_tkj2_return(npc_tkj2_class* param_0) {
    // NONMATCHING
}

/* 80B12D20-80B12E88 002020 0168+00 1/1 0/0 0/0 .text            ObjHit__FP14npc_tkj2_class */
static void ObjHit(npc_tkj2_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B1436C-80B14370 000090 0004+00 0/1 0/0 0/0 .rodata          @4755 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4755 = -5.0f;
COMPILER_STRIP_GATE(0x80B1436C, &lit_4755);
#pragma pop

/* 80B12E88-80B1376C 002188 08E4+00 2/1 0/0 0/0 .text            action__FP14npc_tkj2_class */
static void action(npc_tkj2_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B14370-80B14374 000094 0004+00 0/0 0/0 0/0 .rodata          @4756 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4756 = -15.0f;
COMPILER_STRIP_GATE(0x80B14370, &lit_4756);
#pragma pop

/* 80B14374-80B14378 000098 0004+00 0/0 0/0 0/0 .rodata          @4757 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4757 = -80.0f;
COMPILER_STRIP_GATE(0x80B14374, &lit_4757);
#pragma pop

/* 80B14378-80B1437C 00009C 0004+00 0/0 0/0 0/0 .rodata          @4758 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4758 = -110.0f;
COMPILER_STRIP_GATE(0x80B14378, &lit_4758);
#pragma pop

/* 80B1437C-80B14380 0000A0 0004+00 0/0 0/0 0/0 .rodata          @4759 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4759 = 2000.0f;
COMPILER_STRIP_GATE(0x80B1437C, &lit_4759);
#pragma pop

/* 80B14380-80B14384 0000A4 0004+00 0/0 0/0 0/0 .rodata          @4760 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4760 = 250.0f;
COMPILER_STRIP_GATE(0x80B14380, &lit_4760);
#pragma pop

/* 80B14384-80B1438C 0000A8 0008+00 0/0 0/0 0/0 .rodata          @4763 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4763[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B14384, &lit_4763);
#pragma pop

/* 80B1438C-80B14390 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4858 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4858 = 7.0f;
COMPILER_STRIP_GATE(0x80B1438C, &lit_4858);
#pragma pop

/* 80B14390-80B14394 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4859 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4859 = 13.0f;
COMPILER_STRIP_GATE(0x80B14390, &lit_4859);
#pragma pop

/* 80B14394-80B14398 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4860 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4860 = 6.0f;
COMPILER_STRIP_GATE(0x80B14394, &lit_4860);
#pragma pop

/* 80B14398-80B1439C 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4861 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4861 = 11.0f;
COMPILER_STRIP_GATE(0x80B14398, &lit_4861);
#pragma pop

/* 80B1439C-80B143A0 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4862 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4862 = 16.0f;
COMPILER_STRIP_GATE(0x80B1439C, &lit_4862);
#pragma pop

/* 80B143A0-80B143A4 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4863 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4863 = 17.0f;
COMPILER_STRIP_GATE(0x80B143A0, &lit_4863);
#pragma pop

/* 80B143A4-80B143A8 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4864 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4864 = 19.0f;
COMPILER_STRIP_GATE(0x80B143A4, &lit_4864);
#pragma pop

/* 80B1376C-80B13B38 002A6C 03CC+00 2/1 0/0 0/0 .text daNpc_Tkj2_Execute__FP14npc_tkj2_class */
static void daNpc_Tkj2_Execute(npc_tkj2_class* param_0) {
    // NONMATCHING
}

/* 80B13B38-80B13B40 002E38 0008+00 1/0 0/0 0/0 .text daNpc_Tkj2_IsDelete__FP14npc_tkj2_class */
static bool daNpc_Tkj2_IsDelete(npc_tkj2_class* param_0) {
    return true;
}

/* 80B13B40-80B13BA8 002E40 0068+00 1/0 0/0 0/0 .text daNpc_Tkj2_Delete__FP14npc_tkj2_class */
static void daNpc_Tkj2_Delete(npc_tkj2_class* param_0) {
    // NONMATCHING
}

/* 80B13BA8-80B13E20 002EA8 0278+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80B13E20-80B13E68 003120 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B143A8-80B143AC 0000CC 0004+00 0/1 0/0 0/0 .rodata          @5080 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5080 = 80.0f;
COMPILER_STRIP_GATE(0x80B143A8, &lit_5080);
#pragma pop

/* 80B13E68-80B1411C 003168 02B4+00 1/0 0/0 0/0 .text            daNpc_Tkj2_Create__FP10fopAc_ac_c
 */
static void daNpc_Tkj2_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80B1411C-80B14164 00341C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80B14164-80B141AC 003464 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80B141AC-80B1421C 0034AC 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80B1421C-80B14264 00351C 0048+00 2/1 0/0 0/0 .text            __dt__16daNpc_Tkj2_HIO_cFv */
daNpc_Tkj2_HIO_c::~daNpc_Tkj2_HIO_c() {
    // NONMATCHING
}

/* 80B14264-80B142A0 003564 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_tkj2_cpp */
void __sinit_d_a_npc_tkj2_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80B14264, __sinit_d_a_npc_tkj2_cpp);
#pragma pop

/* 80B142A0-80B142A8 0035A0 0008+00 1/0 0/0 0/0 .text            @20@__dt__14dBgS_ObjGndChkFv */
static void func_80B142A0() {
    // NONMATCHING
}

/* 80B142A8-80B142B0 0035A8 0008+00 1/0 0/0 0/0 .text            @76@__dt__14dBgS_ObjGndChkFv */
static void func_80B142A8() {
    // NONMATCHING
}

/* 80B142B0-80B142B8 0035B0 0008+00 1/0 0/0 0/0 .text            @60@__dt__14dBgS_ObjGndChkFv */
static void func_80B142B0() {
    // NONMATCHING
}

/* 80B142B8-80B142C0 0035B8 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80B142B8() {
    // NONMATCHING
}

/* 80B142C0-80B142C8 0035C0 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80B142C0() {
    // NONMATCHING
}

/* 80B143AC-80B143AC 0000D0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */