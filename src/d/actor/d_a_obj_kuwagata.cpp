/**
 * @file d_a_obj_kuwagata.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_kuwagata.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "f_pc/f_pc_name.h"



//
// Forward References:
//

extern "C" void __ct__14daObj_KuwHIO_cFv();
extern "C" void InitCcSph__10daObjKUW_cFv();
extern "C" void SetCcSph__10daObjKUW_cFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void CreateHeap__10daObjKUW_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daObjKUW_Create__FP10fopAc_ac_c();
extern "C" static void daObjKUW_Delete__FP10daObjKUW_c();
extern "C" void ShopWaitAction__10daObjKUW_cFv();
extern "C" void WaitAction__10daObjKUW_cFv();
extern "C" void WallCheck__10daObjKUW_cFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void SpeedSet__10daObjKUW_cFv();
extern "C" void WallWalk__10daObjKUW_cFv();
extern "C" void WalkAction__10daObjKUW_cFv();
extern "C" void MoveAction__10daObjKUW_cFv();
extern "C" void Action__10daObjKUW_cFv();
extern "C" void ShopAction__10daObjKUW_cFv();
extern "C" void Insect_Release__10daObjKUW_cFv();
extern "C" void Z_BufferChk__10daObjKUW_cFv();
extern "C" void ParticleSet__10daObjKUW_cFv();
extern "C" void BoomChk__10daObjKUW_cFv();
extern "C" void ObjHit__10daObjKUW_cFv();
extern "C" void Execute__10daObjKUW_cFv();
extern "C" void Delete__10daObjKUW_cFv();
extern "C" void setBaseMtx__10daObjKUW_cFv();
extern "C" static void daObjKUW_Draw__FP10daObjKUW_c();
extern "C" static void daObjKUW_Execute__FP10daObjKUW_c();
extern "C" void CreateChk__10daObjKUW_cFv();
extern "C" void create__10daObjKUW_cFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" static bool daObjKUW_IsDelete__FP10daObjKUW_c();
extern "C" void __dt__14daObj_KuwHIO_cFv();
extern "C" void __sinit_d_a_obj_kuwagata_cpp();
extern "C" static void func_80C4D46C();
extern "C" static void func_80C4D474();
extern "C" extern char const* const d_a_obj_kuwagata__stringBase0;

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
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80C4D490-80C4D494 000000 0004+00 13/13 0/0 0/0 .rodata          @3775 */
SECTION_RODATA static f32 const lit_3775 = 1.5f;
COMPILER_STRIP_GATE(0x80C4D490, &lit_3775);

/* 80C4D494-80C4D498 000004 0004+00 1/1 0/0 0/0 .rodata          @3776 */
SECTION_RODATA static f32 const lit_3776 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C4D494, &lit_3776);

/* 80C4D59C-80C4D5BC -00001 0020+00 1/0 0/0 0/0 .data            l_daObjKUW_Method */
static actor_method_class l_daObjKUW_Method = {
    (process_method_func)daObjKUW_Create__FP10fopAc_ac_c,
    (process_method_func)daObjKUW_Delete__FP10daObjKUW_c,
    (process_method_func)daObjKUW_Execute__FP10daObjKUW_c,
    (process_method_func)daObjKUW_IsDelete__FP10daObjKUW_c,
    (process_method_func)daObjKUW_Draw__FP10daObjKUW_c,
};

/* 80C4D5BC-80C4D5EC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Kuw */
extern actor_process_profile_definition g_profile_Obj_Kuw = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Kuw,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjKUW_c),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  479,                    // mPriority
  &l_daObjKUW_Method,     // sub_method
  0x000C0100,             // mStatus
  fopAc_ENV_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C4D5EC-80C4D610 000050 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C4D474,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C4D46C,
};

/* 80C4D610-80C4D61C 000074 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80C4D61C-80C4D628 000080 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C4D628-80C4D634 00008C 000C+00 1/1 0/0 0/0 .data            __vt__10daObjKUW_c */
SECTION_DATA extern void* __vt__10daObjKUW_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)Insect_Release__10daObjKUW_cFv,
};

/* 80C4D634-80C4D640 000098 000C+00 5/5 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 80C4D640-80C4D64C 0000A4 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80C4D64C-80C4D658 0000B0 000C+00 2/2 0/0 0/0 .data            __vt__14daObj_KuwHIO_c */
SECTION_DATA extern void* __vt__14daObj_KuwHIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daObj_KuwHIO_cFv,
};

/* 80C4A1EC-80C4A21C 0000EC 0030+00 1/1 0/0 0/0 .text            __ct__14daObj_KuwHIO_cFv */
daObj_KuwHIO_c::daObj_KuwHIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C4D498-80C4D4D8 000008 0040+00 1/1 0/0 0/0 .rodata          ccSphSrc$3780 */
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

/* 80C4A21C-80C4A288 00011C 006C+00 1/1 0/0 0/0 .text            InitCcSph__10daObjKUW_cFv */
void daObjKUW_c::InitCcSph() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C4D4D8-80C4D4DC 000048 0004+00 1/4 0/0 0/0 .rodata          @3789 */
SECTION_RODATA static f32 const lit_3789 = 20.0f;
COMPILER_STRIP_GATE(0x80C4D4D8, &lit_3789);

/* 80C4A288-80C4A2E0 000188 0058+00 1/1 0/0 0/0 .text            SetCcSph__10daObjKUW_cFv */
void daObjKUW_c::SetCcSph() {
    // NONMATCHING
}

/* 80C4A2E0-80C4A300 0001E0 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C4D4DC-80C4D4E0 00004C 0004+00 2/9 0/0 0/0 .rodata          @3895 */
SECTION_RODATA static f32 const lit_3895 = 1.0f;
COMPILER_STRIP_GATE(0x80C4D4DC, &lit_3895);

/* 80C4D58C-80C4D58C 0000FC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C4D58C = "I_Kuw";
#pragma pop

/* 80C4A300-80C4A658 000200 0358+00 1/1 0/0 0/0 .text            CreateHeap__10daObjKUW_cFv */
void daObjKUW_c::CreateHeap() {
    // NONMATCHING
}

/* 80C4A658-80C4A6A0 000558 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80C4A6A0-80C4A6C0 0005A0 0020+00 1/0 0/0 0/0 .text            daObjKUW_Create__FP10fopAc_ac_c */
static void daObjKUW_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C4A6C0-80C4A6E4 0005C0 0024+00 1/0 0/0 0/0 .text            daObjKUW_Delete__FP10daObjKUW_c */
static void daObjKUW_Delete(daObjKUW_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C4D4E0-80C4D4E4 000050 0004+00 1/13 0/0 0/0 .rodata          @3932 */
SECTION_RODATA static u8 const lit_3932[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C4D4E0, &lit_3932);

/* 80C4D4E4-80C4D4E8 000054 0004+00 0/6 0/0 0/0 .rodata          @3933 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3933 = 5.0f;
COMPILER_STRIP_GATE(0x80C4D4E4, &lit_3933);
#pragma pop

/* 80C4D4E8-80C4D4EC 000058 0004+00 0/6 0/0 0/0 .rodata          @3934 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3934 = -1.0f;
COMPILER_STRIP_GATE(0x80C4D4E8, &lit_3934);
#pragma pop

/* 80C4D4EC-80C4D4F0 00005C 0004+00 0/7 0/0 0/0 .rodata          @3935 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3935 = 50.0f;
COMPILER_STRIP_GATE(0x80C4D4EC, &lit_3935);
#pragma pop

/* 80C4D4F0-80C4D4F4 000060 0004+00 0/5 0/0 0/0 .rodata          @3936 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3936 = 100.0f;
COMPILER_STRIP_GATE(0x80C4D4F0, &lit_3936);
#pragma pop

/* 80C4A6E4-80C4A84C 0005E4 0168+00 1/1 0/0 0/0 .text            ShopWaitAction__10daObjKUW_cFv */
void daObjKUW_c::ShopWaitAction() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C4D4F4-80C4D4F8 000064 0004+00 0/1 0/0 0/0 .rodata          @3960 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3960 = 1500.0f;
COMPILER_STRIP_GATE(0x80C4D4F4, &lit_3960);
#pragma pop

/* 80C4A84C-80C4A9D0 00074C 0184+00 1/1 0/0 0/0 .text            WaitAction__10daObjKUW_cFv */
void daObjKUW_c::WaitAction() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C4D4F8-80C4D500 000068 0008+00 0/5 0/0 0/0 .rodata          @4013 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4013[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C4D4F8, &lit_4013);
#pragma pop

/* 80C4D500-80C4D508 000070 0008+00 0/5 0/0 0/0 .rodata          @4014 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4014[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C4D500, &lit_4014);
#pragma pop

/* 80C4D508-80C4D510 000078 0008+00 0/5 0/0 0/0 .rodata          @4015 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4015[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C4D508, &lit_4015);
#pragma pop

/* 80C4A9D0-80C4ABFC 0008D0 022C+00 1/1 0/0 0/0 .text            WallCheck__10daObjKUW_cFv */
void daObjKUW_c::WallCheck() {
    // NONMATCHING
}

/* 80C4ABFC-80C4AC44 000AFC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C4D510-80C4D514 000080 0004+00 0/1 0/0 0/0 .rodata          @4039 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4039 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C4D510, &lit_4039);
#pragma pop

/* 80C4D514-80C4D518 000084 0004+00 0/3 0/0 0/0 .rodata          @4040 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4040 = 10.0f;
COMPILER_STRIP_GATE(0x80C4D514, &lit_4040);
#pragma pop

/* 80C4D518-80C4D51C 000088 0004+00 0/1 0/0 0/0 .rodata          @4041 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4041 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C4D518, &lit_4041);
#pragma pop

/* 80C4D51C-80C4D520 00008C 0004+00 0/3 0/0 0/0 .rodata          @4042 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4042 = 0.5f;
COMPILER_STRIP_GATE(0x80C4D51C, &lit_4042);
#pragma pop

/* 80C4AC44-80C4AD50 000B44 010C+00 1/1 0/0 0/0 .text            SpeedSet__10daObjKUW_cFv */
void daObjKUW_c::SpeedSet() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C4D520-80C4D524 000090 0004+00 0/2 0/0 0/0 .rodata          @4143 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4143 = 3.0f;
COMPILER_STRIP_GATE(0x80C4D520, &lit_4143);
#pragma pop

/* 80C4D524-80C4D528 000094 0004+00 0/1 0/0 0/0 .rodata          @4144 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4144 = -100.0f;
COMPILER_STRIP_GATE(0x80C4D524, &lit_4144);
#pragma pop

/* 80C4D528-80C4D52C 000098 0004+00 0/1 0/0 0/0 .rodata          @4145 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4145 = 40.0f;
COMPILER_STRIP_GATE(0x80C4D528, &lit_4145);
#pragma pop

/* 80C4D52C-80C4D530 00009C 0004+00 0/1 0/0 0/0 .rodata          @4146 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4146 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C4D52C, &lit_4146);
#pragma pop

/* 80C4AD50-80C4B1A0 000C50 0450+00 1/1 0/0 0/0 .text            WallWalk__10daObjKUW_cFv */
void daObjKUW_c::WallWalk() {
    // NONMATCHING
}

/* 80C4B1A0-80C4B3A0 0010A0 0200+00 2/2 0/0 0/0 .text            WalkAction__10daObjKUW_cFv */
void daObjKUW_c::WalkAction() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C4D530-80C4D534 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4324 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4324 = 30.0f;
COMPILER_STRIP_GATE(0x80C4D530, &lit_4324);
#pragma pop

/* 80C4D534-80C4D538 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4325 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4325 = 80.0f;
COMPILER_STRIP_GATE(0x80C4D534, &lit_4325);
#pragma pop

/* 80C4D538-80C4D53C 0000A8 0004+00 0/3 0/0 0/0 .rodata          @4326 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4326 = 8.0f;
COMPILER_STRIP_GATE(0x80C4D538, &lit_4326);
#pragma pop

/* 80C4D53C-80C4D540 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4327 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4327 = 200.0f;
COMPILER_STRIP_GATE(0x80C4D53C, &lit_4327);
#pragma pop

/* 80C4D540-80C4D544 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4328 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4328 = 11.0f;
COMPILER_STRIP_GATE(0x80C4D540, &lit_4328);
#pragma pop

/* 80C4D544-80C4D548 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4329 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4329 = 1050.0f;
COMPILER_STRIP_GATE(0x80C4D544, &lit_4329);
#pragma pop

/* 80C4B3A0-80C4BB88 0012A0 07E8+00 2/2 0/0 0/0 .text            MoveAction__10daObjKUW_cFv */
void daObjKUW_c::MoveAction() {
    // NONMATCHING
}

/* 80C4BB88-80C4BC4C 001A88 00C4+00 1/1 0/0 0/0 .text            Action__10daObjKUW_cFv */
void daObjKUW_c::Action() {
    // NONMATCHING
}

/* 80C4BC4C-80C4BD08 001B4C 00BC+00 1/1 0/0 0/0 .text            ShopAction__10daObjKUW_cFv */
void daObjKUW_c::ShopAction() {
    // NONMATCHING
}

/* 80C4BD08-80C4BD20 001C08 0018+00 1/0 0/0 0/0 .text            Insect_Release__10daObjKUW_cFv */
void daObjKUW_c::Insect_Release() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C4D548-80C4D54C 0000B8 0002+02 1/2 0/0 0/0 .rodata          l_kuw_itemno */
static u8 const l_kuw_itemno[2] = {
    fpcNm_ITEM_M_STAG_BEETLE, fpcNm_ITEM_F_STAG_BEETLE,
};

/* 80C4D54C-80C4D550 0000BC 0004+00 0/0 0/0 0/0 .rodata          @4438 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4438 = -9.0f;
COMPILER_STRIP_GATE(0x80C4D54C, &lit_4438);
#pragma pop

/* 80C4D550-80C4D554 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4485 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4485 = 608.0f;
COMPILER_STRIP_GATE(0x80C4D550, &lit_4485);
#pragma pop

/* 80C4D554-80C4D558 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4486 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4486 = 448.0f;
COMPILER_STRIP_GATE(0x80C4D554, &lit_4486);
#pragma pop

/* 80C4D558-80C4D560 0000C8 0004+04 0/1 0/0 0/0 .rodata          @4487 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4487[1 + 1 /* padding */] = {
    16777215.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80C4D558, &lit_4487);
#pragma pop

/* 80C4BD20-80C4BE9C 001C20 017C+00 1/1 0/0 0/0 .text            Z_BufferChk__10daObjKUW_cFv */
void daObjKUW_c::Z_BufferChk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C4D560-80C4D568 0000D0 0008+00 1/2 0/0 0/0 .rodata          @4517 */
SECTION_RODATA static u8 const lit_4517[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C4D560, &lit_4517);

/* 80C4BE9C-80C4BFC0 001D9C 0124+00 1/1 0/0 0/0 .text            ParticleSet__10daObjKUW_cFv */
void daObjKUW_c::ParticleSet() {
    // NONMATCHING
}

/* 80C4BFC0-80C4C38C 001EC0 03CC+00 1/1 0/0 0/0 .text            BoomChk__10daObjKUW_cFv */
void daObjKUW_c::BoomChk() {
    // NONMATCHING
}

/* 80C4C38C-80C4C514 00228C 0188+00 1/1 0/0 0/0 .text            ObjHit__10daObjKUW_cFv */
void daObjKUW_c::ObjHit() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C4D568-80C4D56C 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4694 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4694 = 10000.0f;
COMPILER_STRIP_GATE(0x80C4D568, &lit_4694);
#pragma pop

/* 80C4C514-80C4C78C 002414 0278+00 1/1 0/0 0/0 .text            Execute__10daObjKUW_cFv */
void daObjKUW_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C4D660-80C4D664 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_80C4D660[4];

/* 80C4C78C-80C4C7F4 00268C 0068+00 1/1 0/0 0/0 .text            Delete__10daObjKUW_cFv */
void daObjKUW_c::Delete() {
    // NONMATCHING
}

/* 80C4C7F4-80C4C85C 0026F4 0068+00 1/1 0/0 0/0 .text            setBaseMtx__10daObjKUW_cFv */
void daObjKUW_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C4D56C-80C4D570 0000DC 0004+00 1/1 0/0 0/0 .rodata          @4758 */
SECTION_RODATA static f32 const lit_4758 = 15.0f;
COMPILER_STRIP_GATE(0x80C4D56C, &lit_4758);

/* 80C4D570-80C4D574 0000E0 0004+00 1/1 0/0 0/0 .rodata          @4759 */
SECTION_RODATA static f32 const lit_4759 = -3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C4D570, &lit_4759);

/* 80C4C85C-80C4C93C 00275C 00E0+00 1/0 0/0 0/0 .text            daObjKUW_Draw__FP10daObjKUW_c */
static void daObjKUW_Draw(daObjKUW_c* param_0) {
    // NONMATCHING
}

/* 80C4C93C-80C4C95C 00283C 0020+00 2/1 0/0 0/0 .text            daObjKUW_Execute__FP10daObjKUW_c */
static void daObjKUW_Execute(daObjKUW_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C4D574-80C4D578 0000E4 0004+00 1/2 0/0 0/0 .rodata          l_musiya_num */
SECTION_RODATA static u32 const l_musiya_num = 0x01950196;
COMPILER_STRIP_GATE(0x80C4D574, &l_musiya_num);

/* 80C4D58C-80C4D58C 0000FC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C4D592 = "R_SP160";
#pragma pop

/* 80C4C95C-80C4CB08 00285C 01AC+00 1/1 0/0 0/0 .text            CreateChk__10daObjKUW_cFv */
void daObjKUW_c::CreateChk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C4D578-80C4D57C 0000E8 0004+00 0/1 0/0 0/0 .rodata          @5033 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5033 = 11.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C4D578, &lit_5033);
#pragma pop

/* 80C4D57C-80C4D580 0000EC 0004+00 0/1 0/0 0/0 .rodata          @5034 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5034 = 500.0f;
COMPILER_STRIP_GATE(0x80C4D57C, &lit_5034);
#pragma pop

/* 80C4D580-80C4D584 0000F0 0004+00 0/1 0/0 0/0 .rodata          @5035 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5035 = -200.0f;
COMPILER_STRIP_GATE(0x80C4D580, &lit_5035);
#pragma pop

/* 80C4D584-80C4D588 0000F4 0004+00 0/1 0/0 0/0 .rodata          @5036 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5036 = -1000.0f;
COMPILER_STRIP_GATE(0x80C4D584, &lit_5036);
#pragma pop

/* 80C4D588-80C4D58C 0000F8 0004+00 0/1 0/0 0/0 .rodata          @5037 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5037 = -50.0f;
COMPILER_STRIP_GATE(0x80C4D588, &lit_5037);
#pragma pop

/* 80C4D664-80C4D670 00000C 000C+00 1/1 0/0 0/0 .bss             @3770 */
static u8 lit_3770[12];

/* 80C4D670-80C4D680 000018 0010+00 2/2 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[16];

/* 80C4CB08-80C4D2E0 002A08 07D8+00 1/1 0/0 0/0 .text            create__10daObjKUW_cFv */
void daObjKUW_c::create() {
    // NONMATCHING
}

/* 80C4D2E0-80C4D350 0031E0 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80C4D350-80C4D398 003250 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80C4D398-80C4D3E0 003298 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80C4D3E0-80C4D3E8 0032E0 0008+00 1/0 0/0 0/0 .text            daObjKUW_IsDelete__FP10daObjKUW_c
 */
static bool daObjKUW_IsDelete(daObjKUW_c* param_0) {
    return true;
}

/* 80C4D3E8-80C4D430 0032E8 0048+00 2/1 0/0 0/0 .text            __dt__14daObj_KuwHIO_cFv */
daObj_KuwHIO_c::~daObj_KuwHIO_c() {
    // NONMATCHING
}

/* 80C4D430-80C4D46C 003330 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_kuwagata_cpp */
void __sinit_d_a_obj_kuwagata_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80C4D430, __sinit_d_a_obj_kuwagata_cpp);
#pragma pop

/* 80C4D46C-80C4D474 00336C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80C4D46C() {
    // NONMATCHING
}

/* 80C4D474-80C4D47C 003374 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80C4D474() {
    // NONMATCHING
}

/* 80C4D58C-80C4D58C 0000FC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
