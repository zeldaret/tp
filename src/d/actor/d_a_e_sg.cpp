/**
 * @file d_a_e_sg.cpp
 * 
*/

#include "d/actor/d_a_e_sg.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__12daE_SG_HIO_cFv();
extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" static void daE_SG_Draw__FP10e_sg_class();
extern "C" void __dt__4cXyzFv();
extern "C" static void pl_joint_search__FP10e_sg_class();
extern "C" static void otherBgCheck__FP10fopAc_ac_cP4cXyzP4cXyz();
extern "C" static void s_box_sub__FPvPv();
extern "C" static void search_box__FP10e_sg_class();
extern "C" static void search_esa__FP10e_sg_class();
extern "C" static void e_sg_move__FP10e_sg_class();
extern "C" static void e_sg_search__FP10e_sg_class();
extern "C" static void e_sg_b_search__FP10e_sg_class();
extern "C" static void e_sg_esa_search__FP10e_sg_class();
extern "C" static void e_sg_kamu__FP10e_sg_class();
extern "C" static void e_sg_drop__FP10e_sg_class();
extern "C" static void e_sg_damage__FP10e_sg_class();
extern "C" static void damage_check__FP10e_sg_class();
extern "C" static void action__FP10e_sg_class();
extern "C" static void daE_SG_Execute__FP10e_sg_class();
extern "C" static bool daE_SG_IsDelete__FP10e_sg_class();
extern "C" static void daE_SG_Delete__FP10e_sg_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daE_SG_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12daE_SG_HIO_cFv();
extern "C" void __sinit_d_a_e_sg_cpp();
extern "C" void func_8078DD44();
extern "C" void __ct__4cXyzFv();
extern "C" static void func_8078DD80();
extern "C" static void func_8078DD88();
extern "C" extern char const* const d_a_e_sg__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createItem__FPC4cXyziiiPC5csXyzPC4cXyzi();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_effHamonSet__FPUlPC4cXyzff();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcSch_JudgeForPName__FPvPv();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void __ct__9dJntCol_cFv();
extern "C" void init__9dJntCol_cFP10fopAc_ac_cPC13dJntColData_cP8J3DModeli();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__18dBgS_ObjGndChk_SplFv();
extern "C" void __dt__18dBgS_ObjGndChk_SplFv();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void __ct__5csXyzFsss();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void __dl__FPv();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void _savegpr_23();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_23();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 m_cpadInfo__8mDoCPd_c[256];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern void* calc_mtx[1 + 1 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 8078DDA4-8078DDA8 000000 0004+00 13/13 0/0 0/0 .rodata          @3767 */
SECTION_RODATA static f32 const lit_3767 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x8078DDA4, &lit_3767);

/* 8078DDA8-8078DDAC 000004 0004+00 0/7 0/0 0/0 .rodata          @3768 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3768 = 10.0f;
COMPILER_STRIP_GATE(0x8078DDA8, &lit_3768);
#pragma pop

/* 8078DDAC-8078DDB0 000008 0004+00 0/1 0/0 0/0 .rodata          @3769 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3769 = 13.0f;
COMPILER_STRIP_GATE(0x8078DDAC, &lit_3769);
#pragma pop

/* 8078DDB0-8078DDB4 00000C 0004+00 0/1 0/0 0/0 .rodata          @3770 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3770 = 500.0f;
COMPILER_STRIP_GATE(0x8078DDB0, &lit_3770);
#pragma pop

/* 8078DEB4-8078DF34 000000 0080+00 4/4 0/0 0/0 .data            stick_bit */
SECTION_DATA static u8 stick_bit[128] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x80,
    0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x08, 0x00,
    0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x80, 0x00,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00,
    0x00, 0x10, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00,
    0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00,
    0x10, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};

/* 8078DF34-8078DF70 000080 0039+03 2/2 0/0 0/0 .data            stick_d */
SECTION_DATA static u8 stick_d[57 + 3 /* padding */] = {
    0x22,
    0x00,
    0x14,
    0x01,
    0x14,
    0x00,
    0x12,
    0x00,
    0x0A,
    0x07,
    0x00,
    0xF6,
    0x1C,
    0x00,
    0x00,
    0x09,
    0x00,
    0xF6,
    0x0C,
    0x00,
    0x0A,
    0x1D,
    0x00,
    0x0A,
    0x18,
    0x00,
    0x0A,
    0x08,
    0x00,
    0xF6,
    0x13,
    0x00,
    0x0A,
    0x0D,
    0x00,
    0x0A,
    0x02,
    0x14,
    0x00,
    0x17,
    0x00,
    0x0A,
    0x03,
    0x14,
    0x00,
    0x19,
    0x00,
    0x0A,
    0x0E,
    0x00,
    0x0A,
    0x20,
    0x00,
    0x00,
    0x14,
    0x00,
    0x0A,
    /* padding */
    0x00,
    0x00,
    0x00,
};

/* 8078DF70-8078DF9C -00001 002C+00 1/1 0/0 0/0 .data            @4810 */
SECTION_DATA static void* lit_4810[11] = {
    (void*)(((char*)action__FP10e_sg_class) + 0x50),
    (void*)(((char*)action__FP10e_sg_class) + 0x58),
    (void*)(((char*)action__FP10e_sg_class) + 0x64),
    (void*)(((char*)action__FP10e_sg_class) + 0x78),
    (void*)(((char*)action__FP10e_sg_class) + 0xA0),
    (void*)(((char*)action__FP10e_sg_class) + 0x84),
    (void*)(((char*)action__FP10e_sg_class) + 0xA0),
    (void*)(((char*)action__FP10e_sg_class) + 0x8C),
    (void*)(((char*)action__FP10e_sg_class) + 0xA0),
    (void*)(((char*)action__FP10e_sg_class) + 0xA0),
    (void*)(((char*)action__FP10e_sg_class) + 0x94),
};

/* 8078DF9C-8078DFA4 0000E8 0008+00 1/1 0/0 0/0 .data            w_eff_id$4852 */
SECTION_DATA static u8 w_eff_id[8] = {
    0x01, 0xB8, 0x01, 0xB9, 0x01, 0xBA, 0x01, 0xBB,
};

/* 8078DFA4-8078DFB0 0000F0 000C+00 1/0 0/0 0/0 .data            jv_offset */
SECTION_DATA static u8 jv_offset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8078DFB0-8078DFBC -00001 000C+00 1/1 0/0 0/0 .data            jc_data */
SECTION_DATA static void* jc_data[3] = {
    (void*)0x00010001,
    (void*)0x41200000,
    (void*)&jv_offset,
};

/* 8078DFBC-8078DFFC 000108 0040+00 1/1 0/0 0/0 .data            cc_sph_src$5023 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0xd}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_HARD_BODY, 0x0, 0xc, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 8078DFFC-8078E01C -00001 0020+00 1/0 0/0 0/0 .data            l_daE_SG_Method */
static actor_method_class l_daE_SG_Method = {
    (process_method_func)daE_SG_Create__FP10fopAc_ac_c,
    (process_method_func)daE_SG_Delete__FP10e_sg_class,
    (process_method_func)daE_SG_Execute__FP10e_sg_class,
    (process_method_func)daE_SG_IsDelete__FP10e_sg_class,
    (process_method_func)daE_SG_Draw__FP10e_sg_class,
};

/* 8078E01C-8078E04C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_SG */
extern actor_process_profile_definition g_profile_E_SG = {
  fpcLy_CURRENT_e,       // mLayerID
  7,                     // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_E_SG,             // mProcName
  &g_fpcLf_Method.mBase, // sub_method
  sizeof(e_sg_class),    // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  122,                   // mPriority
  &l_daE_SG_Method,      // sub_method
  0x000D0100,            // mStatus
  fopAc_ENEMY_e,         // mActorType
  fopAc_CULLBOX_0_e,     // cullType
};

/* 8078E04C-8078E058 000198 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 8078E058-8078E064 0001A4 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8078E064-8078E088 0001B0 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8078DD88,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8078DD80,
};

/* 8078E088-8078E094 0001D4 000C+00 2/2 0/0 0/0 .data            __vt__12daE_SG_HIO_c */
SECTION_DATA extern void* __vt__12daE_SG_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_SG_HIO_cFv,
};

/* 8078A22C-8078A26C 0000EC 0040+00 1/1 0/0 0/0 .text            __ct__12daE_SG_HIO_cFv */
daE_SG_HIO_c::daE_SG_HIO_c() {
    // NONMATCHING
}

/* 8078A26C-8078A400 00012C 0194+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static void nodeCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8078DDB4-8078DDB8 000010 0004+00 0/5 0/0 0/0 .rodata          @3842 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3842 = 100.0f;
COMPILER_STRIP_GATE(0x8078DDB4, &lit_3842);
#pragma pop

/* 8078DDB8-8078DDBC 000014 0004+00 0/1 0/0 0/0 .rodata          @3843 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3843 = 400.0f;
COMPILER_STRIP_GATE(0x8078DDB8, &lit_3843);
#pragma pop

/* 8078DDBC-8078DDC0 000018 0004+00 1/11 0/0 0/0 .rodata          @3844 */
SECTION_RODATA static u8 const lit_3844[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8078DDBC, &lit_3844);

/* 8078DDC0-8078DDC4 00001C 0004+00 0/10 0/0 0/0 .rodata          @3845 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3845 = 1.0f;
COMPILER_STRIP_GATE(0x8078DDC0, &lit_3845);
#pragma pop

/* 8078A400-8078A4DC 0002C0 00DC+00 1/0 0/0 0/0 .text            daE_SG_Draw__FP10e_sg_class */
static void daE_SG_Draw(e_sg_class* param_0) {
    // NONMATCHING
}

/* 8078A4DC-8078A518 00039C 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8078E0A0-8078E0A4 000008 0001+03 3/3 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 8078E0A4-8078E0A8 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 8078E0A8-8078E0AC 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 8078E0AC-8078E0B0 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 8078E0B0-8078E0B4 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 8078E0B4-8078E0B8 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 8078E0B8-8078E0BC 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 8078E0BC-8078E0C0 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 8078E0C0-8078E0C4 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 8078E0C4-8078E0C8 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 8078E0C8-8078E0CC 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 8078E0CC-8078E0D0 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 8078E0D0-8078E0D4 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 8078E0D4-8078E0D8 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 8078E0D8-8078E0DC 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 8078E0DC-8078E0E0 -00001 0004+00 2/2 0/0 0/0 .bss             None */
/* 8078E0DC 0001+00 data_8078E0DC @1009 */
/* 8078E0DD 0003+00 data_8078E0DD None */
static u8 struct_8078E0DC[4];

/* 8078E0E0-8078E0EC 000048 000C+00 0/1 0/0 0/0 .bss             @3762 */
#pragma push
#pragma force_active on
static u8 lit_3762[12];
#pragma pop

/* 8078E0EC-8078E104 000054 0018+00 8/10 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[24];

/* 8078E104-8078E108 00006C 0004+00 4/4 0/0 0/0 .bss             stick_pt */
static u8 stick_pt[4];

/* 8078A518-8078A588 0003D8 0070+00 1/1 0/0 0/0 .text            pl_joint_search__FP10e_sg_class */
static void pl_joint_search(e_sg_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8078DDC4-8078DDCC 000020 0004+04 1/6 0/0 0/0 .rodata          @3901 */
SECTION_RODATA static f32 const lit_3901[1 + 1 /* padding */] = {
    30.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x8078DDC4, &lit_3901);

/* 8078A588-8078A67C 000448 00F4+00 3/3 0/0 0/0 .text otherBgCheck__FP10fopAc_ac_cP4cXyzP4cXyz */
static void otherBgCheck(fopAc_ac_c* param_0, cXyz* param_1, cXyz* param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8078E108-8078E130 000070 0028+00 1/2 0/0 0/0 .bss             target_info */
static u8 target_info[40];

/* 8078E130-8078E13C 000098 000A+02 0/1 0/0 0/0 .bss             bg_on */
#pragma push
#pragma force_active on
static u8 bg_on[10 + 2 /* padding */];
#pragma pop

/* 8078E13C-8078E148 0000A4 000C+00 0/1 0/0 0/0 .bss             @3866 */
#pragma push
#pragma force_active on
static u8 lit_3866[12];
#pragma pop

/* 8078E148-8078E1C0 0000B0 0078+00 1/3 0/0 0/0 .bss             bg_cross */
static u8 bg_cross[120];

/* 8078E1C0-8078E1C4 000128 0004+00 1/2 0/0 0/0 .bss             target_info_count */
static u8 target_info_count[4];

/* 8078A67C-8078A6EC 00053C 0070+00 1/1 0/0 0/0 .text            s_box_sub__FPvPv */
static void s_box_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8078DDCC-8078DDD4 000028 0008+00 0/6 0/0 0/0 .rodata          @3999 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3999[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8078DDCC, &lit_3999);
#pragma pop

/* 8078DDD4-8078DDDC 000030 0008+00 0/6 0/0 0/0 .rodata          @4000 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4000[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8078DDD4, &lit_4000);
#pragma pop

/* 8078DDDC-8078DDE4 000038 0008+00 0/6 0/0 0/0 .rodata          @4001 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4001[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8078DDDC, &lit_4001);
#pragma pop

/* 8078A6EC-8078A9B8 0005AC 02CC+00 1/1 0/0 0/0 .text            search_box__FP10e_sg_class */
static void search_box(e_sg_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8078DDE4-8078DDE8 000040 0004+00 1/7 0/0 0/0 .rodata          @4015 */
SECTION_RODATA static f32 const lit_4015 = 20.0f;
COMPILER_STRIP_GATE(0x8078DDE4, &lit_4015);

/* 8078A9B8-8078AA3C 000878 0084+00 1/1 0/0 0/0 .text            search_esa__FP10e_sg_class */
static void search_esa(e_sg_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8078DDE8-8078DDEC 000044 0004+00 0/5 0/0 0/0 .rodata          @4216 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4216 = 50.0f;
COMPILER_STRIP_GATE(0x8078DDE8, &lit_4216);
#pragma pop

/* 8078DDEC-8078DDF0 000048 0004+00 0/8 0/0 0/0 .rodata          @4217 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4217 = 0.5f;
COMPILER_STRIP_GATE(0x8078DDEC, &lit_4217);
#pragma pop

/* 8078DDF0-8078DDF4 00004C 0004+00 0/2 0/0 0/0 .rodata          @4218 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4218 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x8078DDF0, &lit_4218);
#pragma pop

/* 8078DDF4-8078DDF8 000050 0004+00 0/2 0/0 0/0 .rodata          @4219 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4219 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x8078DDF4, &lit_4219);
#pragma pop

/* 8078DDF8-8078DDFC 000054 0004+00 0/1 0/0 0/0 .rodata          @4220 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4220 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x8078DDF8, &lit_4220);
#pragma pop

/* 8078DDFC-8078DE00 000058 0004+00 0/2 0/0 0/0 .rodata          @4221 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4221 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x8078DDFC, &lit_4221);
#pragma pop

/* 8078DE00-8078DE04 00005C 0004+00 0/1 0/0 0/0 .rodata          @4222 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4222 = 12000.0f;
COMPILER_STRIP_GATE(0x8078DE00, &lit_4222);
#pragma pop

/* 8078DE04-8078DE08 000060 0004+00 0/5 0/0 0/0 .rodata          @4223 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4223 = 5.0f;
COMPILER_STRIP_GATE(0x8078DE04, &lit_4223);
#pragma pop

/* 8078DE08-8078DE0C 000064 0004+00 0/4 0/0 0/0 .rodata          @4224 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4224 = 4000.0f;
COMPILER_STRIP_GATE(0x8078DE08, &lit_4224);
#pragma pop

/* 8078DE0C-8078DE10 000068 0004+00 0/4 0/0 0/0 .rodata          @4225 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4225 = -4000.0f;
COMPILER_STRIP_GATE(0x8078DE0C, &lit_4225);
#pragma pop

/* 8078DE10-8078DE14 00006C 0004+00 0/5 0/0 0/0 .rodata          @4226 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4226 = 1000.0f;
COMPILER_STRIP_GATE(0x8078DE10, &lit_4226);
#pragma pop

/* 8078DE14-8078DE1C 000070 0004+04 0/3 0/0 0/0 .rodata          @4227 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4227[1 + 1 /* padding */] = {
    65536.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x8078DE14, &lit_4227);
#pragma pop

/* 8078DE1C-8078DE24 000078 0008+00 0/5 0/0 0/0 .rodata          @4229 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4229[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8078DE1C, &lit_4229);
#pragma pop

/* 8078AA3C-8078B114 0008FC 06D8+00 1/1 0/0 0/0 .text            e_sg_move__FP10e_sg_class */
static void e_sg_move(e_sg_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8078DE24-8078DE28 000080 0004+00 0/3 0/0 0/0 .rodata          @4314 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4314 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x8078DE24, &lit_4314);
#pragma pop

/* 8078DE28-8078DE2C 000084 0004+00 0/1 0/0 0/0 .rodata          @4315 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4315 = 7000.0f;
COMPILER_STRIP_GATE(0x8078DE28, &lit_4315);
#pragma pop

/* 8078DE2C-8078DE30 000088 0004+00 0/1 0/0 0/0 .rodata          @4316 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4316 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x8078DE2C, &lit_4316);
#pragma pop

/* 8078DE30-8078DE34 00008C 0004+00 0/2 0/0 0/0 .rodata          @4317 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4317 = 80.0f;
COMPILER_STRIP_GATE(0x8078DE30, &lit_4317);
#pragma pop

/* 8078B114-8078B618 000FD4 0504+00 1/1 0/0 0/0 .text            e_sg_search__FP10e_sg_class */
static void e_sg_search(e_sg_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8078DE34-8078DE38 000090 0004+00 0/2 0/0 0/0 .rodata          @4448 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4448 = 60.0f;
COMPILER_STRIP_GATE(0x8078DE34, &lit_4448);
#pragma pop

/* 8078DE38-8078DE3C 000094 0004+00 0/4 0/0 0/0 .rodata          @4449 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4449 = 3000.0f;
COMPILER_STRIP_GATE(0x8078DE38, &lit_4449);
#pragma pop

/* 8078DE3C-8078DE40 000098 0004+00 0/2 0/0 0/0 .rodata          @4450 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4450 = 200.0f;
COMPILER_STRIP_GATE(0x8078DE3C, &lit_4450);
#pragma pop

/* 8078DE40-8078DE44 00009C 0004+00 0/3 0/0 0/0 .rodata          @4451 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4451 = 2000.0f;
COMPILER_STRIP_GATE(0x8078DE40, &lit_4451);
#pragma pop

/* 8078DE44-8078DE48 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4452 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4452 = 300.0f;
COMPILER_STRIP_GATE(0x8078DE44, &lit_4452);
#pragma pop

/* 8078DE48-8078DE4C 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4453 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4453 = 700.0f;
COMPILER_STRIP_GATE(0x8078DE48, &lit_4453);
#pragma pop

/* 8078DE4C-8078DE50 0000A8 0004+00 0/2 0/0 0/0 .rodata          @4454 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4454 = -100.0f;
COMPILER_STRIP_GATE(0x8078DE4C, &lit_4454);
#pragma pop

/* 8078B618-8078BC24 0014D8 060C+00 1/1 0/0 0/0 .text            e_sg_b_search__FP10e_sg_class */
static void e_sg_b_search(e_sg_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8078DE50-8078DE54 0000AC 0004+00 0/2 0/0 0/0 .rodata          @4543 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4543 = 40.0f;
COMPILER_STRIP_GATE(0x8078DE50, &lit_4543);
#pragma pop

/* 8078DE54-8078DE58 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4544 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4544 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x8078DE54, &lit_4544);
#pragma pop

/* 8078BC24-8078C068 001AE4 0444+00 1/1 0/0 0/0 .text            e_sg_esa_search__FP10e_sg_class */
static void e_sg_esa_search(e_sg_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8078DE58-8078DE5C 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4604 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4604 = 8000.0f;
COMPILER_STRIP_GATE(0x8078DE58, &lit_4604);
#pragma pop

/* 8078C068-8078C470 001F28 0408+00 1/1 0/0 0/0 .text            e_sg_kamu__FP10e_sg_class */
static void e_sg_kamu(e_sg_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8078DE5C-8078DE60 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4649 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4649 = 15000.0f;
COMPILER_STRIP_GATE(0x8078DE5C, &lit_4649);
#pragma pop

/* 8078DE60-8078DE64 0000BC 0004+00 0/2 0/0 0/0 .rodata          @4650 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4650 = 3.0f;
COMPILER_STRIP_GATE(0x8078DE60, &lit_4650);
#pragma pop

/* 8078C470-8078C77C 002330 030C+00 1/1 0/0 0/0 .text            e_sg_drop__FP10e_sg_class */
static void e_sg_drop(e_sg_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8078DE64-8078DE68 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4700 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4700 = 2.0f;
COMPILER_STRIP_GATE(0x8078DE64, &lit_4700);
#pragma pop

/* 8078C77C-8078CA1C 00263C 02A0+00 1/1 0/0 0/0 .text            e_sg_damage__FP10e_sg_class */
static void e_sg_damage(e_sg_class* param_0) {
    // NONMATCHING
}

/* 8078CA1C-8078CB14 0028DC 00F8+00 1/1 0/0 0/0 .text            damage_check__FP10e_sg_class */
static void damage_check(e_sg_class* param_0) {
    // NONMATCHING
}

/* 8078CB14-8078CF34 0029D4 0420+00 2/1 0/0 0/0 .text            action__FP10e_sg_class */
static void action(e_sg_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8078DE68-8078DE74 0000C4 000C+00 0/0 0/0 0/0 .rodata          @4743 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4743[12] = {
    0x3F, 0x80, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x40, 0x60, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8078DE68, &lit_4743);
#pragma pop

/* 8078DE74-8078DE78 0000D0 0004+00 0/0 0/0 0/0 .rodata          @4805 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4805 = 13000.0f;
COMPILER_STRIP_GATE(0x8078DE74, &lit_4805);
#pragma pop

/* 8078DE78-8078DE7C 0000D4 0004+00 0/0 0/0 0/0 .rodata          @4806 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4806 = -3.0f / 10.0f;
COMPILER_STRIP_GATE(0x8078DE78, &lit_4806);
#pragma pop

/* 8078DE7C-8078DE80 0000D8 0004+00 0/0 0/0 0/0 .rodata          @4807 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4807 = 0.75f;
COMPILER_STRIP_GATE(0x8078DE7C, &lit_4807);
#pragma pop

/* 8078DE80-8078DE84 0000DC 0004+00 0/0 0/0 0/0 .rodata          @4808 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4808 = -2.5f;
COMPILER_STRIP_GATE(0x8078DE80, &lit_4808);
#pragma pop

/* 8078DE84-8078DE88 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4809 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4809 = 15.0f;
COMPILER_STRIP_GATE(0x8078DE84, &lit_4809);
#pragma pop

/* 8078DE88-8078DE8C 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4966 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4966 = -1000000000.0f;
COMPILER_STRIP_GATE(0x8078DE88, &lit_4966);
#pragma pop

/* 8078DE8C-8078DE90 0000E8 0004+00 0/1 0/0 0/0 .rodata          @4967 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4967 = 250.0f;
COMPILER_STRIP_GATE(0x8078DE8C, &lit_4967);
#pragma pop

/* 8078DE90-8078DE94 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4968 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4968 = -15.0f;
COMPILER_STRIP_GATE(0x8078DE90, &lit_4968);
#pragma pop

/* 8078DE94-8078DE98 0000F0 0004+00 0/1 0/0 0/0 .rodata          @4969 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4969 = 20000.0f;
COMPILER_STRIP_GATE(0x8078DE94, &lit_4969);
#pragma pop

/* 8078E1C4-8078E1D4 00012C 000C+04 0/1 0/0 0/0 .bss             @4849 */
#pragma push
#pragma force_active on
static u8 lit_4849[12 + 4 /* padding */];
#pragma pop

/* 8078E1D4-8078E1E0 00013C 000C+00 0/1 0/0 0/0 .bss             sc$4848 */
#pragma push
#pragma force_active on
static u8 sc[12];
#pragma pop

/* 8078CF34-8078D5F4 002DF4 06C0+00 2/1 0/0 0/0 .text            daE_SG_Execute__FP10e_sg_class */
static void daE_SG_Execute(e_sg_class* param_0) {
    // NONMATCHING
}

/* 8078D5F4-8078D5FC 0034B4 0008+00 1/0 0/0 0/0 .text            daE_SG_IsDelete__FP10e_sg_class */
static bool daE_SG_IsDelete(e_sg_class* param_0) {
    return true;
}

/* ############################################################################################## */
/* 8078DEAC-8078DEAC 000108 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8078DEAC = "E_sg";
#pragma pop

/* 8078D5FC-8078D6B0 0034BC 00B4+00 1/0 0/0 0/0 .text            daE_SG_Delete__FP10e_sg_class */
static void daE_SG_Delete(e_sg_class* param_0) {
    // NONMATCHING
}

/* 8078D6B0-8078D780 003570 00D0+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8078DE98-8078DE9C 0000F4 0004+00 0/1 0/0 0/0 .rodata          @5130 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5130 = -150.0f;
COMPILER_STRIP_GATE(0x8078DE98, &lit_5130);
#pragma pop

/* 8078DE9C-8078DEA4 0000F8 0004+04 0/1 0/0 0/0 .rodata          @5131 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5131[1 + 1 /* padding */] = {
    -100000.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x8078DE9C, &lit_5131);
#pragma pop

/* 8078DEA4-8078DEAC 000100 0008+00 0/1 0/0 0/0 .rodata          @5134 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5134[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8078DEA4, &lit_5134);
#pragma pop

/* 8078D780-8078DB84 003640 0404+00 1/0 0/0 0/0 .text            daE_SG_Create__FP10fopAc_ac_c */
static void daE_SG_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 8078DB84-8078DBCC 003A44 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 8078DBCC-8078DC14 003A8C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 8078DC14-8078DC84 003AD4 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 8078DC84-8078DCCC 003B44 0048+00 2/1 0/0 0/0 .text            __dt__12daE_SG_HIO_cFv */
daE_SG_HIO_c::~daE_SG_HIO_c() {
    // NONMATCHING
}

/* 8078DCCC-8078DD44 003B8C 0078+00 0/0 1/0 0/0 .text            __sinit_d_a_e_sg_cpp */
void __sinit_d_a_e_sg_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x8078DCCC, __sinit_d_a_e_sg_cpp);
#pragma pop

/* 8078DD44-8078DD7C 003C04 0038+00 1/1 0/0 0/0 .text            __arraydtor$3865 */
void func_8078DD44() {
    // NONMATCHING
}

/* 8078DD7C-8078DD80 003C3C 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 8078DD80-8078DD88 003C40 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_8078DD80() {
    // NONMATCHING
}

/* 8078DD88-8078DD90 003C48 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_8078DD88() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8078E1E0-8078E1E4 000148 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_8078E1E0[4];
#pragma pop

/* 8078E1E4-8078E1E8 00014C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_8078E1E4[4];
#pragma pop

/* 8078E1E8-8078E1EC 000150 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_8078E1E8[4];
#pragma pop

/* 8078E1EC-8078E1F0 000154 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8078E1EC[4];
#pragma pop

/* 8078E1F0-8078E1F4 000158 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8078E1F0[4];
#pragma pop

/* 8078E1F4-8078E1F8 00015C 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8078E1F4[4];
#pragma pop

/* 8078E1F8-8078E1FC 000160 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_8078E1F8[4];
#pragma pop

/* 8078E1FC-8078E200 000164 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_8078E1FC[4];
#pragma pop

/* 8078E200-8078E204 000168 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_8078E200[4];
#pragma pop

/* 8078E204-8078E208 00016C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_8078E204[4];
#pragma pop

/* 8078E208-8078E20C 000170 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_8078E208[4];
#pragma pop

/* 8078E20C-8078E210 000174 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8078E20C[4];
#pragma pop

/* 8078E210-8078E214 000178 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_8078E210[4];
#pragma pop

/* 8078E214-8078E218 00017C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8078E214[4];
#pragma pop

/* 8078E218-8078E21C 000180 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8078E218[4];
#pragma pop

/* 8078E21C-8078E220 000184 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_8078E21C[4];
#pragma pop

/* 8078E220-8078E224 000188 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_8078E220[4];
#pragma pop

/* 8078E224-8078E228 00018C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8078E224[4];
#pragma pop

/* 8078E228-8078E22C 000190 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_8078E228[4];
#pragma pop

/* 8078E22C-8078E230 000194 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_8078E22C[4];
#pragma pop

/* 8078E230-8078E234 000198 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_8078E230[4];
#pragma pop

/* 8078E234-8078E238 00019C 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8078E234[4];
#pragma pop

/* 8078E238-8078E23C 0001A0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8078E238[4];
#pragma pop

/* 8078E23C-8078E240 0001A4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8078E23C[4];
#pragma pop

/* 8078E240-8078E244 0001A8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_8078E240[4];
#pragma pop

/* 8078DEAC-8078DEAC 000108 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */