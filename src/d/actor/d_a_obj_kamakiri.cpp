/**
 * @file d_a_obj_kamakiri.cpp
 * 
*/

#include "d/actor/d_a_obj_kamakiri.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__14daObj_KamHIO_cFv();
extern "C" void InitCcSph__10daObjKAM_cFv();
extern "C" void SetCcSph__10daObjKAM_cFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void CreateHeap__10daObjKAM_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daObjKAM_Create__FP10fopAc_ac_c();
extern "C" static void daObjKAM_Delete__FP10daObjKAM_c();
extern "C" void ShopWaitAction__10daObjKAM_cFv();
extern "C" void WaitAction__10daObjKAM_cFv();
extern "C" void WallCheck__10daObjKAM_cFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void SpeedSet__10daObjKAM_cFv();
extern "C" void WallWalk__10daObjKAM_cFv();
extern "C" void WalkAction__10daObjKAM_cFv();
extern "C" void MoveAction__10daObjKAM_cFv();
extern "C" void Action__10daObjKAM_cFv();
extern "C" void ShopAction__10daObjKAM_cFv();
extern "C" void Insect_Release__10daObjKAM_cFv();
extern "C" void Z_BufferChk__10daObjKAM_cFv();
extern "C" void ParticleSet__10daObjKAM_cFv();
extern "C" void BoomChk__10daObjKAM_cFv();
extern "C" void ObjHit__10daObjKAM_cFv();
extern "C" void Execute__10daObjKAM_cFv();
extern "C" void Delete__10daObjKAM_cFv();
extern "C" void setBaseMtx__10daObjKAM_cFv();
extern "C" static void daObjKAM_Draw__FP10daObjKAM_c();
extern "C" static void daObjKAM_Execute__FP10daObjKAM_c();
extern "C" void CreateChk__10daObjKAM_cFv();
extern "C" void create__10daObjKAM_cFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" static bool daObjKAM_IsDelete__FP10daObjKAM_c();
extern "C" void __dt__14daObj_KamHIO_cFv();
extern "C" void __sinit_d_a_obj_kamakiri_cpp();
extern "C" static void func_80C383E4();
extern "C" static void func_80C383EC();
extern "C" extern char const* const d_a_obj_kamakiri__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotS__14mDoMtx_stack_cFRC5csXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void mDoLib_project__FP3VecP3Vec();
extern "C" void mDoLib_pos2camera__FP3VecP3Vec();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void newData__13dDlst_peekZ_cFssPUl();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_GndChkFv();
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
extern "C" void __ct__9dInsect_cFv();
extern "C" void Insect_GetDemoMain__9dInsect_cFv();
extern "C" void initOffset__20daPy_boomerangMove_cFPC4cXyz();
extern "C" void posMove__20daPy_boomerangMove_cFP4cXyzPsP10fopAc_ac_cs();
extern "C" void bgCheckAfterOffset__20daPy_boomerangMove_cFPC4cXyz();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void isCatchNotGiveInsect__14dMenu_Insect_cFUc();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void _savegpr_24();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_24();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80C38408-80C3840C 000000 0004+00 13/13 0/0 0/0 .rodata          @3775 */
SECTION_RODATA static f32 const lit_3775 = 1.5f;
COMPILER_STRIP_GATE(0x80C38408, &lit_3775);

/* 80C3840C-80C38410 000004 0004+00 1/1 0/0 0/0 .rodata          @3776 */
SECTION_RODATA static f32 const lit_3776 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C3840C, &lit_3776);

/* 80C3850C-80C3852C -00001 0020+00 1/0 0/0 0/0 .data            l_daObjKAM_Method */
static actor_method_class l_daObjKAM_Method = {
    (process_method_func)daObjKAM_Create__FP10fopAc_ac_c,
    (process_method_func)daObjKAM_Delete__FP10daObjKAM_c,
    (process_method_func)daObjKAM_Execute__FP10daObjKAM_c,
    (process_method_func)daObjKAM_IsDelete__FP10daObjKAM_c,
    (process_method_func)daObjKAM_Draw__FP10daObjKAM_c,
};

/* 80C3852C-80C3855C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Kam */
extern actor_process_profile_definition g_profile_Obj_Kam = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Kam,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjKAM_c),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  482,                    // mPriority
  &l_daObjKAM_Method,     // sub_method
  0x000C0120,             // mStatus
  fopAc_ENV_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C3855C-80C38580 000050 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C383EC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C383E4,
};

/* 80C38580-80C3858C 000074 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80C3858C-80C38598 000080 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C38598-80C385A4 00008C 000C+00 1/1 0/0 0/0 .data            __vt__10daObjKAM_c */
SECTION_DATA extern void* __vt__10daObjKAM_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)Insect_Release__10daObjKAM_cFv,
};

/* 80C385A4-80C385B0 000098 000C+00 5/5 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 80C385B0-80C385BC 0000A4 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80C385BC-80C385C8 0000B0 000C+00 2/2 0/0 0/0 .data            __vt__14daObj_KamHIO_c */
SECTION_DATA extern void* __vt__14daObj_KamHIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daObj_KamHIO_cFv,
};

/* 80C3518C-80C351BC 0000EC 0030+00 1/1 0/0 0/0 .text            __ct__14daObj_KamHIO_cFv */
daObj_KamHIO_c::daObj_KamHIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C38410-80C38450 000008 0040+00 1/1 0/0 0/0 .rodata          ccSphSrc$3780 */
const static dCcD_SrcSph ccSphSrc = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x14002, 0x11}, 0x0}}, // mObj
        {dCcD_SE_STONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 80C351BC-80C35228 00011C 006C+00 1/1 0/0 0/0 .text            InitCcSph__10daObjKAM_cFv */
void daObjKAM_c::InitCcSph() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C38450-80C38454 000048 0004+00 1/4 0/0 0/0 .rodata          @3789 */
SECTION_RODATA static f32 const lit_3789 = 20.0f;
COMPILER_STRIP_GATE(0x80C38450, &lit_3789);

/* 80C35228-80C35280 000188 0058+00 1/1 0/0 0/0 .text            SetCcSph__10daObjKAM_cFv */
void daObjKAM_c::SetCcSph() {
    // NONMATCHING
}

/* 80C35280-80C352A0 0001E0 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C38454-80C38458 00004C 0004+00 2/9 0/0 0/0 .rodata          @3895 */
SECTION_RODATA static f32 const lit_3895 = 1.0f;
COMPILER_STRIP_GATE(0x80C38454, &lit_3895);

/* 80C384FC-80C384FC 0000F4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C384FC = "I_Kam";
#pragma pop

/* 80C352A0-80C355F8 000200 0358+00 1/1 0/0 0/0 .text            CreateHeap__10daObjKAM_cFv */
void daObjKAM_c::CreateHeap() {
    // NONMATCHING
}

/* 80C355F8-80C35640 000558 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80C35640-80C35660 0005A0 0020+00 1/0 0/0 0/0 .text            daObjKAM_Create__FP10fopAc_ac_c */
static void daObjKAM_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C35660-80C35684 0005C0 0024+00 1/0 0/0 0/0 .text            daObjKAM_Delete__FP10daObjKAM_c */
static void daObjKAM_Delete(daObjKAM_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C38458-80C3845C 000050 0004+00 1/13 0/0 0/0 .rodata          @3932 */
SECTION_RODATA static u8 const lit_3932[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C38458, &lit_3932);

/* 80C3845C-80C38460 000054 0004+00 0/6 0/0 0/0 .rodata          @3933 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3933 = 5.0f;
COMPILER_STRIP_GATE(0x80C3845C, &lit_3933);
#pragma pop

/* 80C38460-80C38464 000058 0004+00 0/6 0/0 0/0 .rodata          @3934 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3934 = -1.0f;
COMPILER_STRIP_GATE(0x80C38460, &lit_3934);
#pragma pop

/* 80C38464-80C38468 00005C 0004+00 0/6 0/0 0/0 .rodata          @3935 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3935 = 50.0f;
COMPILER_STRIP_GATE(0x80C38464, &lit_3935);
#pragma pop

/* 80C38468-80C3846C 000060 0004+00 0/5 0/0 0/0 .rodata          @3936 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3936 = 100.0f;
COMPILER_STRIP_GATE(0x80C38468, &lit_3936);
#pragma pop

/* 80C35684-80C357EC 0005E4 0168+00 1/1 0/0 0/0 .text            ShopWaitAction__10daObjKAM_cFv */
void daObjKAM_c::ShopWaitAction() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C3846C-80C38470 000064 0004+00 0/1 0/0 0/0 .rodata          @3960 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3960 = 1500.0f;
COMPILER_STRIP_GATE(0x80C3846C, &lit_3960);
#pragma pop

/* 80C357EC-80C35970 00074C 0184+00 1/1 0/0 0/0 .text            WaitAction__10daObjKAM_cFv */
void daObjKAM_c::WaitAction() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C38470-80C38478 000068 0008+00 0/5 0/0 0/0 .rodata          @4013 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4013[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C38470, &lit_4013);
#pragma pop

/* 80C38478-80C38480 000070 0008+00 0/5 0/0 0/0 .rodata          @4014 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4014[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C38478, &lit_4014);
#pragma pop

/* 80C38480-80C38488 000078 0008+00 0/5 0/0 0/0 .rodata          @4015 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4015[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C38480, &lit_4015);
#pragma pop

/* 80C35970-80C35B9C 0008D0 022C+00 1/1 0/0 0/0 .text            WallCheck__10daObjKAM_cFv */
void daObjKAM_c::WallCheck() {
    // NONMATCHING
}

/* 80C35B9C-80C35BE4 000AFC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C38488-80C3848C 000080 0004+00 0/1 0/0 0/0 .rodata          @4039 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4039 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C38488, &lit_4039);
#pragma pop

/* 80C3848C-80C38490 000084 0004+00 0/3 0/0 0/0 .rodata          @4040 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4040 = 10.0f;
COMPILER_STRIP_GATE(0x80C3848C, &lit_4040);
#pragma pop

/* 80C38490-80C38494 000088 0004+00 0/1 0/0 0/0 .rodata          @4041 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4041 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C38490, &lit_4041);
#pragma pop

/* 80C38494-80C38498 00008C 0004+00 0/3 0/0 0/0 .rodata          @4042 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4042 = 0.5f;
COMPILER_STRIP_GATE(0x80C38494, &lit_4042);
#pragma pop

/* 80C35BE4-80C35CF0 000B44 010C+00 1/1 0/0 0/0 .text            SpeedSet__10daObjKAM_cFv */
void daObjKAM_c::SpeedSet() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C38498-80C3849C 000090 0004+00 0/2 0/0 0/0 .rodata          @4143 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4143 = 3.0f;
COMPILER_STRIP_GATE(0x80C38498, &lit_4143);
#pragma pop

/* 80C3849C-80C384A0 000094 0004+00 0/1 0/0 0/0 .rodata          @4144 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4144 = -100.0f;
COMPILER_STRIP_GATE(0x80C3849C, &lit_4144);
#pragma pop

/* 80C384A0-80C384A4 000098 0004+00 0/2 0/0 0/0 .rodata          @4145 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4145 = 40.0f;
COMPILER_STRIP_GATE(0x80C384A0, &lit_4145);
#pragma pop

/* 80C384A4-80C384A8 00009C 0004+00 0/1 0/0 0/0 .rodata          @4146 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4146 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C384A4, &lit_4146);
#pragma pop

/* 80C35CF0-80C36138 000C50 0448+00 1/1 0/0 0/0 .text            WallWalk__10daObjKAM_cFv */
void daObjKAM_c::WallWalk() {
    // NONMATCHING
}

/* 80C36138-80C36338 001098 0200+00 2/2 0/0 0/0 .text            WalkAction__10daObjKAM_cFv */
void daObjKAM_c::WalkAction() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C384A8-80C384AC 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4324 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4324 = 30.0f;
COMPILER_STRIP_GATE(0x80C384A8, &lit_4324);
#pragma pop

/* 80C384AC-80C384B0 0000A4 0004+00 0/3 0/0 0/0 .rodata          @4325 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4325 = 8.0f;
COMPILER_STRIP_GATE(0x80C384AC, &lit_4325);
#pragma pop

/* 80C384B0-80C384B4 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4326 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4326 = 200.0f;
COMPILER_STRIP_GATE(0x80C384B0, &lit_4326);
#pragma pop

/* 80C384B4-80C384B8 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4327 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4327 = 11.0f;
COMPILER_STRIP_GATE(0x80C384B4, &lit_4327);
#pragma pop

/* 80C384B8-80C384BC 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4328 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4328 = 1050.0f;
COMPILER_STRIP_GATE(0x80C384B8, &lit_4328);
#pragma pop

/* 80C36338-80C36B20 001298 07E8+00 2/2 0/0 0/0 .text            MoveAction__10daObjKAM_cFv */
void daObjKAM_c::MoveAction() {
    // NONMATCHING
}

/* 80C36B20-80C36BE4 001A80 00C4+00 1/1 0/0 0/0 .text            Action__10daObjKAM_cFv */
void daObjKAM_c::Action() {
    // NONMATCHING
}

/* 80C36BE4-80C36CA0 001B44 00BC+00 1/1 0/0 0/0 .text            ShopAction__10daObjKAM_cFv */
void daObjKAM_c::ShopAction() {
    // NONMATCHING
}

/* 80C36CA0-80C36CB8 001C00 0018+00 1/0 0/0 0/0 .text            Insect_Release__10daObjKAM_cFv */
void daObjKAM_c::Insect_Release() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C384BC-80C384C0 0000B4 0002+02 1/2 0/0 0/0 .rodata          l_kam_itemno */
SECTION_RODATA static u16 const l_kam_itemno[1 + 1 /* padding */] = {
    0xCCCD,
    /* padding */
    0x0000,
};
COMPILER_STRIP_GATE(0x80C384BC, &l_kam_itemno);

/* 80C384C0-80C384C4 0000B8 0004+00 0/0 0/0 0/0 .rodata          @4437 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4437 = -9.0f;
COMPILER_STRIP_GATE(0x80C384C0, &lit_4437);
#pragma pop

/* 80C384C4-80C384C8 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4484 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4484 = 608.0f;
COMPILER_STRIP_GATE(0x80C384C4, &lit_4484);
#pragma pop

/* 80C384C8-80C384CC 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4485 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4485 = 448.0f;
COMPILER_STRIP_GATE(0x80C384C8, &lit_4485);
#pragma pop

/* 80C384CC-80C384D0 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4486 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4486 = 16777215.0f;
COMPILER_STRIP_GATE(0x80C384CC, &lit_4486);
#pragma pop

/* 80C36CB8-80C36E34 001C18 017C+00 1/1 0/0 0/0 .text            Z_BufferChk__10daObjKAM_cFv */
void daObjKAM_c::Z_BufferChk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C384D0-80C384D8 0000C8 0008+00 1/2 0/0 0/0 .rodata          @4516 */
SECTION_RODATA static u8 const lit_4516[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C384D0, &lit_4516);

/* 80C36E34-80C36F58 001D94 0124+00 1/1 0/0 0/0 .text            ParticleSet__10daObjKAM_cFv */
void daObjKAM_c::ParticleSet() {
    // NONMATCHING
}

/* 80C36F58-80C37324 001EB8 03CC+00 1/1 0/0 0/0 .text            BoomChk__10daObjKAM_cFv */
void daObjKAM_c::BoomChk() {
    // NONMATCHING
}

/* 80C37324-80C374AC 002284 0188+00 1/1 0/0 0/0 .text            ObjHit__10daObjKAM_cFv */
void daObjKAM_c::ObjHit() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C384D8-80C384DC 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4693 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4693 = 10000.0f;
COMPILER_STRIP_GATE(0x80C384D8, &lit_4693);
#pragma pop

/* 80C374AC-80C37724 00240C 0278+00 1/1 0/0 0/0 .text            Execute__10daObjKAM_cFv */
void daObjKAM_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C385D0-80C385D4 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_80C385D0[4];

/* 80C37724-80C3778C 002684 0068+00 1/1 0/0 0/0 .text            Delete__10daObjKAM_cFv */
void daObjKAM_c::Delete() {
    // NONMATCHING
}

/* 80C3778C-80C377F4 0026EC 0068+00 1/1 0/0 0/0 .text            setBaseMtx__10daObjKAM_cFv */
void daObjKAM_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C384DC-80C384E0 0000D4 0004+00 1/1 0/0 0/0 .rodata          @4757 */
SECTION_RODATA static f32 const lit_4757 = 15.0f;
COMPILER_STRIP_GATE(0x80C384DC, &lit_4757);

/* 80C384E0-80C384E4 0000D8 0004+00 1/1 0/0 0/0 .rodata          @4758 */
SECTION_RODATA static f32 const lit_4758 = -3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C384E0, &lit_4758);

/* 80C377F4-80C378D4 002754 00E0+00 1/0 0/0 0/0 .text            daObjKAM_Draw__FP10daObjKAM_c */
static void daObjKAM_Draw(daObjKAM_c* param_0) {
    // NONMATCHING
}

/* 80C378D4-80C378F4 002834 0020+00 2/1 0/0 0/0 .text            daObjKAM_Execute__FP10daObjKAM_c */
static void daObjKAM_Execute(daObjKAM_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C384E4-80C384E8 0000DC 0004+00 1/2 0/0 0/0 .rodata          l_musiya_num */
SECTION_RODATA static u32 const l_musiya_num = 0x019D019E;
COMPILER_STRIP_GATE(0x80C384E4, &l_musiya_num);

/* 80C384FC-80C384FC 0000F4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C38502 = "R_SP160";
#pragma pop

/* 80C378F4-80C37AA0 002854 01AC+00 1/1 0/0 0/0 .text            CreateChk__10daObjKAM_cFv */
void daObjKAM_c::CreateChk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C384E8-80C384EC 0000E0 0004+00 0/1 0/0 0/0 .rodata          @5032 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5032 = 11.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C384E8, &lit_5032);
#pragma pop

/* 80C384EC-80C384F0 0000E4 0004+00 0/1 0/0 0/0 .rodata          @5033 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5033 = 500.0f;
COMPILER_STRIP_GATE(0x80C384EC, &lit_5033);
#pragma pop

/* 80C384F0-80C384F4 0000E8 0004+00 0/1 0/0 0/0 .rodata          @5034 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5034 = -200.0f;
COMPILER_STRIP_GATE(0x80C384F0, &lit_5034);
#pragma pop

/* 80C384F4-80C384F8 0000EC 0004+00 0/1 0/0 0/0 .rodata          @5035 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5035 = -1000.0f;
COMPILER_STRIP_GATE(0x80C384F4, &lit_5035);
#pragma pop

/* 80C384F8-80C384FC 0000F0 0004+00 0/1 0/0 0/0 .rodata          @5036 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5036 = -50.0f;
COMPILER_STRIP_GATE(0x80C384F8, &lit_5036);
#pragma pop

/* 80C385D4-80C385E0 00000C 000C+00 1/1 0/0 0/0 .bss             @3770 */
static u8 lit_3770[12];

/* 80C385E0-80C385F0 000018 0010+00 2/2 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[16];

/* 80C37AA0-80C38258 002A00 07B8+00 1/1 0/0 0/0 .text            create__10daObjKAM_cFv */
void daObjKAM_c::create() {
    // NONMATCHING
}

/* 80C38258-80C382C8 0031B8 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80C382C8-80C38310 003228 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80C38310-80C38358 003270 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80C38358-80C38360 0032B8 0008+00 1/0 0/0 0/0 .text            daObjKAM_IsDelete__FP10daObjKAM_c
 */
static bool daObjKAM_IsDelete(daObjKAM_c* param_0) {
    return true;
}

/* 80C38360-80C383A8 0032C0 0048+00 2/1 0/0 0/0 .text            __dt__14daObj_KamHIO_cFv */
daObj_KamHIO_c::~daObj_KamHIO_c() {
    // NONMATCHING
}

/* 80C383A8-80C383E4 003308 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_kamakiri_cpp */
void __sinit_d_a_obj_kamakiri_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80C383A8, __sinit_d_a_obj_kamakiri_cpp);
#pragma pop

/* 80C383E4-80C383EC 003344 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80C383E4() {
    // NONMATCHING
}

/* 80C383EC-80C383F4 00334C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80C383EC() {
    // NONMATCHING
}

/* 80C384FC-80C384FC 0000F4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
