/**
 * @file d_a_obj_geyser.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_geyser.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void initBaseMtx__13daObjGeyser_cFv();
extern "C" void setBaseMtx__13daObjGeyser_cFv();
extern "C" void Create__13daObjGeyser_cFv();
extern "C" void CreateHeap__13daObjGeyser_cFv();
extern "C" void create1st__13daObjGeyser_cFv();
extern "C" void Execute__13daObjGeyser_cFPPA3_A4_f();
extern "C" void action__13daObjGeyser_cFv();
extern "C" void actionOff2Init__13daObjGeyser_cFv();
extern "C" void actionOff2__13daObjGeyser_cFv();
extern "C" void __dt__8cM3dGLinFv();
extern "C" void actionOnWait2Init__13daObjGeyser_cFv();
extern "C" void actionOnWait2__13daObjGeyser_cFv();
extern "C" void actionOn2Init__13daObjGeyser_cFv();
extern "C" void actionOn2__13daObjGeyser_cFv();
extern "C" void actionDisappearInit__13daObjGeyser_cFUc();
extern "C" void actionDisappear__13daObjGeyser_cFv();
extern "C" void actionOffInit__13daObjGeyser_cFv();
extern "C" void actionOff__13daObjGeyser_cFv();
extern "C" void actionOnWaitInit__13daObjGeyser_cFv();
extern "C" void actionOnWait__13daObjGeyser_cFv();
extern "C" void actionOnInit__13daObjGeyser_cFv();
extern "C" void actionOn__13daObjGeyser_cFv();
extern "C" void setPntWind__13daObjGeyser_cFv();
extern "C" void cutPntWind__13daObjGeyser_cFv();
extern "C" void movePntWind__13daObjGeyser_cFv();
extern "C" void Draw__13daObjGeyser_cFv();
extern "C" void setEmitterPre00__13daObjGeyser_cFv();
extern "C" void setEmitterSrc00Sand__13daObjGeyser_cFv();
extern "C" void setEmitterSrc01Smk__13daObjGeyser_cFv();
extern "C" void stopEmitterPre00__13daObjGeyser_cFv();
extern "C" void stopEmitterSrc00Sand__13daObjGeyser_cFv();
extern "C" void stopEmitterSrc01Smk__13daObjGeyser_cFv();
extern "C" void setEmitterClm00__13daObjGeyser_cFv();
extern "C" void setEmitterSmk01__13daObjGeyser_cFv();
extern "C" void setEmitterSmk02__13daObjGeyser_cFv();
extern "C" void stopEmitterClm00__13daObjGeyser_cFv();
extern "C" void stopEmitterSmk01__13daObjGeyser_cFv();
extern "C" void stopEmitterSmk02__13daObjGeyser_cFv();
extern "C" void Delete__13daObjGeyser_cFv();
extern "C" static void daObjGeyser_create1st__FP13daObjGeyser_c();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" static void daObjGeyser_MoveBGDelete__FP13daObjGeyser_c();
extern "C" static void daObjGeyser_MoveBGExecute__FP13daObjGeyser_c();
extern "C" static void daObjGeyser_MoveBGDraw__FP13daObjGeyser_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" extern char const* const d_a_obj_geyser__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotS__14mDoMtx_stack_cFRC5csXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_setupStageTexture__FP12J3DModelData();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void dKyw_pntwind_set__FP14WIND_INFLUENCE();
extern "C" void dKyw_pntwind_cut__FP14WIND_INFLUENCE();
extern "C" void dKyr_get_vectle_calc__FP4cXyzP4cXyzP4cXyz();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void Move__4dBgWFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CpsFRC11dCcD_SrcCps();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void cM3d_Len3dSqPntAndSegLine__FPC8cM3dGLinPC3VecP3VecPf();
extern "C" void __ct__8cM3dGCpsFv();
extern "C" void Set__8cM3dGCpsFRC9cM3dGCpsS();
extern "C" void SetStartEnd__8cM3dGLinFRC4cXyzRC4cXyz();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_chaseUC__FPUcUcUc();
extern "C" void cLib_chaseF__FPfff();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Cps[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CpsAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" extern u8 struct_80BF9240[4];

//
// Declarations:
//

/* 80BF6F18-80BF6F38 000078 0020+00 1/1 0/0 0/0 .text            initBaseMtx__13daObjGeyser_cFv */
void daObjGeyser_c::initBaseMtx() {
    // NONMATCHING
}

/* 80BF6F38-80BF6F80 000098 0048+00 1/1 0/0 0/0 .text            setBaseMtx__13daObjGeyser_cFv */
void daObjGeyser_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BF905C-80BF905C 000074 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BF905C = "H_knktsn";
#pragma pop

/* 80BF9088-80BF908C -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_geyser__stringBase0;

/* 80BF908C-80BF90A4 000024 0018+00 1/1 0/0 0/0 .data            l_cull_box */
SECTION_DATA static u8 l_cull_box[24] = {
    0xC2, 0xC8, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0xC2, 0xC8, 0x00, 0x00,
    0x42, 0xC8, 0x00, 0x00, 0x44, 0x09, 0x80, 0x00, 0x42, 0xC8, 0x00, 0x00,
};

/* 80BF90A4-80BF90F0 00003C 004C+00 1/1 0/0 0/0 .data            l_cps_src */
static dCcD_SrcCps l_cps_src = {
    {
        {0x0, {{0x100, 0x0, 0x1d}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x1, 0x0, 0x2}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, {0.0f, 500.0f, 0.0f}, 100.0f}, // mCps
    } // mCpsAttr
};

/* 80BF6F80-80BF70E0 0000E0 0160+00 1/0 0/0 0/0 .text            Create__13daObjGeyser_cFv */
void daObjGeyser_c::Create() {
    // NONMATCHING
}

/* 80BF70E0-80BF7174 000240 0094+00 1/0 0/0 0/0 .text            CreateHeap__13daObjGeyser_cFv */
void daObjGeyser_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BF8FE8-80BF8FF0 000000 0008+00 8/8 0/0 0/0 .rodata          l_dzb */
SECTION_RODATA static u8 const l_dzb[8] = {
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x08,
};
COMPILER_STRIP_GATE(0x80BF8FE8, &l_dzb);

/* 80BF7174-80BF7288 0002D4 0114+00 1/1 0/0 0/0 .text            create1st__13daObjGeyser_cFv */
void daObjGeyser_c::create1st() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BF8FF0-80BF9008 000008 0018+00 0/1 0/0 0/0 .rodata          l_scale */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_scale[24] = {
    0x3F, 0x33, 0x33, 0x33, 0x3F, 0x80, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00,
    0x3E, 0x99, 0x99, 0x9A, 0x3F, 0x4C, 0xCC, 0xCD, 0x3F, 0x80, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BF8FF0, &l_scale);
#pragma pop

/* 80BF9008-80BF900C 000020 0004+00 0/1 0/0 0/0 .rodata          @3758 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3758 = 5000.0f;
COMPILER_STRIP_GATE(0x80BF9008, &lit_3758);
#pragma pop

/* 80BF900C-80BF9010 000024 0004+00 1/7 0/0 0/0 .rodata          @3759 */
SECTION_RODATA static u8 const lit_3759[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80BF900C, &lit_3759);

/* 80BF9010-80BF9014 000028 0004+00 6/11 0/0 0/0 .rodata          @3760 */
SECTION_RODATA static f32 const lit_3760 = 1.0f;
COMPILER_STRIP_GATE(0x80BF9010, &lit_3760);

/* 80BF9014-80BF9018 00002C 0004+00 0/3 0/0 0/0 .rodata          @3761 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3761 = 500.0f;
COMPILER_STRIP_GATE(0x80BF9014, &lit_3761);
#pragma pop

/* 80BF9018-80BF901C 000030 0004+00 0/2 0/0 0/0 .rodata          @3762 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3762 = 100.0f;
COMPILER_STRIP_GATE(0x80BF9018, &lit_3762);
#pragma pop

/* 80BF7288-80BF744C 0003E8 01C4+00 1/0 0/0 0/0 .text            Execute__13daObjGeyser_cFPPA3_A4_f
 */
void daObjGeyser_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BF90F0-80BF90FC -00001 000C+00 0/1 0/0 0/0 .data            @3769 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3769[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionOff__13daObjGeyser_cFv,
};
#pragma pop

/* 80BF90FC-80BF9108 -00001 000C+00 0/1 0/0 0/0 .data            @3770 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3770[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionOnWait__13daObjGeyser_cFv,
};
#pragma pop

/* 80BF9108-80BF9114 -00001 000C+00 0/1 0/0 0/0 .data            @3771 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3771[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionOn__13daObjGeyser_cFv,
};
#pragma pop

/* 80BF9114-80BF9138 0000AC 0024+00 0/1 0/0 0/0 .data            l_func$3768 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80BF9138-80BF9144 -00001 000C+00 0/1 0/0 0/0 .data            @3775 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3775[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionOff2__13daObjGeyser_cFv,
};
#pragma pop

/* 80BF9144-80BF9150 -00001 000C+00 0/1 0/0 0/0 .data            @3776 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3776[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionOnWait2__13daObjGeyser_cFv,
};
#pragma pop

/* 80BF9150-80BF915C -00001 000C+00 0/1 0/0 0/0 .data            @3777 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3777[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionOn2__13daObjGeyser_cFv,
};
#pragma pop

/* 80BF915C-80BF9168 -00001 000C+00 0/1 0/0 0/0 .data            @3778 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3778[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionDisappear__13daObjGeyser_cFv,
};
#pragma pop

/* 80BF9168-80BF9198 000100 0030+00 0/1 0/0 0/0 .data            l_func2$3774 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func2[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80BF744C-80BF75B8 0005AC 016C+00 1/1 0/0 0/0 .text            action__13daObjGeyser_cFv */
void daObjGeyser_c::action() {
    // NONMATCHING
}

/* 80BF75B8-80BF75C4 000718 000C+00 3/3 0/0 0/0 .text            actionOff2Init__13daObjGeyser_cFv
 */
void daObjGeyser_c::actionOff2Init() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BF901C-80BF9020 000034 0004+00 0/3 0/0 0/0 .rodata          @3855 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3855 = 1000.0f;
COMPILER_STRIP_GATE(0x80BF901C, &lit_3855);
#pragma pop

/* 80BF9020-80BF9024 000038 0004+00 0/3 0/0 0/0 .rodata          @3856 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3856 = -50.0f;
COMPILER_STRIP_GATE(0x80BF9020, &lit_3856);
#pragma pop

/* 80BF9024-80BF9028 00003C 0004+00 0/3 0/0 0/0 .rodata          @3857 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3857 = 1200.0f;
COMPILER_STRIP_GATE(0x80BF9024, &lit_3857);
#pragma pop

/* 80BF9028-80BF9030 000040 0008+00 0/4 0/0 0/0 .rodata          @3858 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3858[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BF9028, &lit_3858);
#pragma pop

/* 80BF9030-80BF9038 000048 0008+00 0/4 0/0 0/0 .rodata          @3859 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3859[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BF9030, &lit_3859);
#pragma pop

/* 80BF9038-80BF9040 000050 0008+00 0/4 0/0 0/0 .rodata          @3860 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3860[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BF9038, &lit_3860);
#pragma pop

/* 80BF9040-80BF9044 000058 0004+00 1/4 0/0 0/0 .rodata          @3861 */
SECTION_RODATA static f32 const lit_3861 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80BF9040, &lit_3861);

/* 80BF9198-80BF91B8 -00001 0020+00 1/0 0/0 0/0 .data            daObjGeyser_METHODS */
static actor_method_class daObjGeyser_METHODS = {
    (process_method_func)daObjGeyser_create1st__FP13daObjGeyser_c,
    (process_method_func)daObjGeyser_MoveBGDelete__FP13daObjGeyser_c,
    (process_method_func)daObjGeyser_MoveBGExecute__FP13daObjGeyser_c,
    0,
    (process_method_func)daObjGeyser_MoveBGDraw__FP13daObjGeyser_c,
};

/* 80BF91B8-80BF91E8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Geyser */
extern actor_process_profile_definition g_profile_Obj_Geyser = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Geyser,        // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjGeyser_c),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  596,                    // mPriority
  &daObjGeyser_METHODS,   // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80BF91E8-80BF91F4 000180 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80BF91F4-80BF9200 00018C 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80BF9200-80BF920C 000198 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80BF920C-80BF9218 0001A4 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGLin */
SECTION_DATA extern void* __vt__8cM3dGLin[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGLinFv,
};

/* 80BF75C4-80BF77F0 000724 022C+00 1/0 0/0 0/0 .text            actionOff2__13daObjGeyser_cFv */
void daObjGeyser_c::actionOff2() {
    // NONMATCHING
}

/* 80BF77F0-80BF7838 000950 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGLinFv */
// cM3dGLin::~cM3dGLin() {
extern "C" void __dt__8cM3dGLinFv() {
    // NONMATCHING
}

/* 80BF7838-80BF787C 000998 0044+00 2/2 0/0 0/0 .text actionOnWait2Init__13daObjGeyser_cFv */
void daObjGeyser_c::actionOnWait2Init() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BF9044-80BF9048 00005C 0004+00 0/2 0/0 0/0 .rodata          @3969 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3969 = 600.0f;
COMPILER_STRIP_GATE(0x80BF9044, &lit_3969);
#pragma pop

/* 80BF9048-80BF904C 000060 0004+00 1/4 0/0 0/0 .rodata          @3970 */
SECTION_RODATA static f32 const lit_3970 = -1.0f;
COMPILER_STRIP_GATE(0x80BF9048, &lit_3970);

/* 80BF787C-80BF7C54 0009DC 03D8+00 1/0 0/0 0/0 .text            actionOnWait2__13daObjGeyser_cFv */
void daObjGeyser_c::actionOnWait2() {
    // NONMATCHING
}

/* 80BF7C54-80BF7CA0 000DB4 004C+00 1/1 0/0 0/0 .text            actionOn2Init__13daObjGeyser_cFv */
void daObjGeyser_c::actionOn2Init() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BF904C-80BF9050 000064 0004+00 0/2 0/0 0/0 .rodata          @4096 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4096 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80BF904C, &lit_4096);
#pragma pop

/* 80BF7CA0-80BF8158 000E00 04B8+00 1/0 0/0 0/0 .text            actionOn2__13daObjGeyser_cFv */
void daObjGeyser_c::actionOn2() {
    // NONMATCHING
}

/* 80BF8158-80BF8178 0012B8 0020+00 1/1 0/0 0/0 .text actionDisappearInit__13daObjGeyser_cFUc */
void daObjGeyser_c::actionDisappearInit(u8 param_0) {
    // NONMATCHING
}

/* 80BF8178-80BF823C 0012D8 00C4+00 1/0 0/0 0/0 .text            actionDisappear__13daObjGeyser_cFv
 */
void daObjGeyser_c::actionDisappear() {
    // NONMATCHING
}

/* 80BF823C-80BF8268 00139C 002C+00 2/2 0/0 0/0 .text            actionOffInit__13daObjGeyser_cFv */
void daObjGeyser_c::actionOffInit() {
    // NONMATCHING
}

/* 80BF8268-80BF82D0 0013C8 0068+00 1/0 0/0 0/0 .text            actionOff__13daObjGeyser_cFv */
void daObjGeyser_c::actionOff() {
    // NONMATCHING
}

/* 80BF82D0-80BF8344 001430 0074+00 1/1 0/0 0/0 .text            actionOnWaitInit__13daObjGeyser_cFv
 */
void daObjGeyser_c::actionOnWaitInit() {
    // NONMATCHING
}

/* 80BF8344-80BF83E4 0014A4 00A0+00 1/0 0/0 0/0 .text            actionOnWait__13daObjGeyser_cFv */
void daObjGeyser_c::actionOnWait() {
    // NONMATCHING
}

/* 80BF83E4-80BF846C 001544 0088+00 1/1 0/0 0/0 .text            actionOnInit__13daObjGeyser_cFv */
void daObjGeyser_c::actionOnInit() {
    // NONMATCHING
}

/* 80BF846C-80BF8584 0015CC 0118+00 1/0 0/0 0/0 .text            actionOn__13daObjGeyser_cFv */
void daObjGeyser_c::actionOn() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BF9050-80BF9054 000068 0004+00 0/1 0/0 0/0 .rodata          @4232 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4232 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80BF9050, &lit_4232);
#pragma pop

/* 80BF8584-80BF863C 0016E4 00B8+00 2/2 0/0 0/0 .text            setPntWind__13daObjGeyser_cFv */
void daObjGeyser_c::setPntWind() {
    // NONMATCHING
}

/* 80BF863C-80BF8660 00179C 0024+00 3/3 0/0 0/0 .text            cutPntWind__13daObjGeyser_cFv */
void daObjGeyser_c::cutPntWind() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BF9054-80BF9058 00006C 0004+00 0/1 0/0 0/0 .rodata          @4280 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4280 = 2.0f;
COMPILER_STRIP_GATE(0x80BF9054, &lit_4280);
#pragma pop

/* 80BF9058-80BF905C 000070 0004+00 0/1 0/0 0/0 .rodata          @4281 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4281 = 0.5f;
COMPILER_STRIP_GATE(0x80BF9058, &lit_4281);
#pragma pop

/* 80BF8660-80BF8870 0017C0 0210+00 1/1 0/0 0/0 .text            movePntWind__13daObjGeyser_cFv */
void daObjGeyser_c::movePntWind() {
    // NONMATCHING
}

/* 80BF8870-80BF8914 0019D0 00A4+00 1/0 0/0 0/0 .text            Draw__13daObjGeyser_cFv */
void daObjGeyser_c::Draw() {
    // NONMATCHING
}

/* 80BF8914-80BF89AC 001A74 0098+00 2/2 0/0 0/0 .text            setEmitterPre00__13daObjGeyser_cFv
 */
void daObjGeyser_c::setEmitterPre00() {
    // NONMATCHING
}

/* 80BF89AC-80BF89B0 001B0C 0004+00 2/2 0/0 0/0 .text setEmitterSrc00Sand__13daObjGeyser_cFv */
void daObjGeyser_c::setEmitterSrc00Sand() {
    /* empty function */
}

/* 80BF89B0-80BF8A54 001B10 00A4+00 2/2 0/0 0/0 .text setEmitterSrc01Smk__13daObjGeyser_cFv */
void daObjGeyser_c::setEmitterSrc01Smk() {
    // NONMATCHING
}

/* 80BF8A54-80BF8A80 001BB4 002C+00 4/4 0/0 0/0 .text            stopEmitterPre00__13daObjGeyser_cFv
 */
void daObjGeyser_c::stopEmitterPre00() {
    // NONMATCHING
}

/* 80BF8A80-80BF8AAC 001BE0 002C+00 5/5 0/0 0/0 .text stopEmitterSrc00Sand__13daObjGeyser_cFv */
void daObjGeyser_c::stopEmitterSrc00Sand() {
    // NONMATCHING
}

/* 80BF8AAC-80BF8AD8 001C0C 002C+00 5/5 0/0 0/0 .text stopEmitterSrc01Smk__13daObjGeyser_cFv */
void daObjGeyser_c::stopEmitterSrc01Smk() {
    // NONMATCHING
}

/* 80BF8AD8-80BF8B70 001C38 0098+00 2/2 0/0 0/0 .text            setEmitterClm00__13daObjGeyser_cFv
 */
void daObjGeyser_c::setEmitterClm00() {
    // NONMATCHING
}

/* 80BF8B70-80BF8C08 001CD0 0098+00 2/2 0/0 0/0 .text            setEmitterSmk01__13daObjGeyser_cFv
 */
void daObjGeyser_c::setEmitterSmk01() {
    // NONMATCHING
}

/* 80BF8C08-80BF8CA0 001D68 0098+00 2/2 0/0 0/0 .text            setEmitterSmk02__13daObjGeyser_cFv
 */
void daObjGeyser_c::setEmitterSmk02() {
    // NONMATCHING
}

/* 80BF8CA0-80BF8CCC 001E00 002C+00 4/4 0/0 0/0 .text            stopEmitterClm00__13daObjGeyser_cFv
 */
void daObjGeyser_c::stopEmitterClm00() {
    // NONMATCHING
}

/* 80BF8CCC-80BF8CF8 001E2C 002C+00 4/4 0/0 0/0 .text            stopEmitterSmk01__13daObjGeyser_cFv
 */
void daObjGeyser_c::stopEmitterSmk01() {
    // NONMATCHING
}

/* 80BF8CF8-80BF8D24 001E58 002C+00 4/4 0/0 0/0 .text            stopEmitterSmk02__13daObjGeyser_cFv
 */
void daObjGeyser_c::stopEmitterSmk02() {
    // NONMATCHING
}

/* 80BF8D24-80BF8D98 001E84 0074+00 1/0 0/0 0/0 .text            Delete__13daObjGeyser_cFv */
void daObjGeyser_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BF9218-80BF9240 0001B0 0028+00 1/1 0/0 0/0 .data            __vt__13daObjGeyser_c */
SECTION_DATA extern void* __vt__13daObjGeyser_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__13daObjGeyser_cFv,
    (void*)Create__13daObjGeyser_cFv,
    (void*)Execute__13daObjGeyser_cFPPA3_A4_f,
    (void*)Draw__13daObjGeyser_cFv,
    (void*)Delete__13daObjGeyser_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80BF8D98-80BF8E88 001EF8 00F0+00 1/0 0/0 0/0 .text daObjGeyser_create1st__FP13daObjGeyser_c */
static void daObjGeyser_create1st(daObjGeyser_c* param_0) {
    // NONMATCHING
}

/* 80BF8E88-80BF8ED0 001FE8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80BF8ED0-80BF8F2C 002030 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80BF8F2C-80BF8F4C 00208C 0020+00 1/0 0/0 0/0 .text daObjGeyser_MoveBGDelete__FP13daObjGeyser_c
 */
static void daObjGeyser_MoveBGDelete(daObjGeyser_c* param_0) {
    // NONMATCHING
}

/* 80BF8F4C-80BF8F6C 0020AC 0020+00 1/0 0/0 0/0 .text daObjGeyser_MoveBGExecute__FP13daObjGeyser_c
 */
static void daObjGeyser_MoveBGExecute(daObjGeyser_c* param_0) {
    // NONMATCHING
}

/* 80BF8F6C-80BF8F98 0020CC 002C+00 1/0 0/0 0/0 .text daObjGeyser_MoveBGDraw__FP13daObjGeyser_c */
static void daObjGeyser_MoveBGDraw(daObjGeyser_c* param_0) {
    // NONMATCHING
}

/* 80BF8F98-80BF8FE0 0020F8 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80BF905C-80BF905C 000074 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
