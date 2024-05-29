/**
 * @file d_a_obj_tombo.cpp
 * 
*/

#include "rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo.h"
#include "d/cc/d_cc_d.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__14daObj_TomHIO_cFv();
extern "C" void InitCcSph__12daObjTOMBO_cFv();
extern "C" void SetCcSph__12daObjTOMBO_cFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void CreateHeap__12daObjTOMBO_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daObjTOMBO_Create__FP10fopAc_ac_c();
extern "C" static void daObjTOMBO_Delete__FP12daObjTOMBO_c();
extern "C" void WaitAction__12daObjTOMBO_cFv();
extern "C" void SpeedSet__12daObjTOMBO_cFv();
extern "C" void CheckWater__12daObjTOMBO_cFv();
extern "C" void __dt__14dBgS_ObjGndChkFv();
extern "C" void CheckGround__12daObjTOMBO_cFv();
extern "C" void CheckWall__12daObjTOMBO_cFv();
extern "C" void SearchLink__12daObjTOMBO_cFv();
extern "C" void LinkAction__12daObjTOMBO_cFv();
extern "C" void MoveAction__12daObjTOMBO_cFv();
extern "C" void Action__12daObjTOMBO_cFv();
extern "C" void ShopAction__12daObjTOMBO_cFv();
extern "C" void Insect_Release__12daObjTOMBO_cFv();
extern "C" void ParticleSet__12daObjTOMBO_cFv();
extern "C" void BoomChk__12daObjTOMBO_cFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void Execute__12daObjTOMBO_cFv();
extern "C" void ObjHit__12daObjTOMBO_cFv();
extern "C" void Z_BufferChk__12daObjTOMBO_cFv();
extern "C" void Delete__12daObjTOMBO_cFv();
extern "C" void setBaseMtx__12daObjTOMBO_cFv();
extern "C" static void daObjTOMBO_Draw__FP12daObjTOMBO_c();
extern "C" static void daObjTOMBO_Execute__FP12daObjTOMBO_c();
extern "C" void CreateChk__12daObjTOMBO_cFv();
extern "C" void create__12daObjTOMBO_cFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" static bool daObjTOMBO_IsDelete__FP12daObjTOMBO_c();
extern "C" void __dt__14daObj_TomHIO_cFv();
extern "C" void __sinit_d_a_obj_tombo_cpp();
extern "C" static void func_80D1B69C();
extern "C" static void func_80D1B6A4();
extern "C" static void func_80D1B6AC();
extern "C" static void func_80D1B6B4();
extern "C" static void func_80D1B6BC();
extern "C" extern char const* const d_a_obj_tombo__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
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
extern "C" void __dt__18dBgS_ObjGndChk_AllFv();
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
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcPos__FP4cXyzRC4cXyzfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chasePos__FP4cXyzRC4cXyzf();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" extern void* __vt__18dBgS_ObjGndChk_All[12];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" extern void* calc_mtx[1 + 1 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80D1B6D8-80D1B6DC 000000 0004+00 14/14 0/0 0/0 .rodata          @3775 */
SECTION_RODATA static f32 const lit_3775 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x80D1B6D8, &lit_3775);

/* 80D1B6DC-80D1B6E0 000004 0004+00 3/8 0/0 0/0 .rodata          @3776 */
SECTION_RODATA static f32 const lit_3776 = 1.0f;
COMPILER_STRIP_GATE(0x80D1B6DC, &lit_3776);

/* 80D1B7F8-80D1B818 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjTOMBO_Method */
static actor_method_class l_daObjTOMBO_Method = {
    (process_method_func)daObjTOMBO_Create__FP10fopAc_ac_c,
    (process_method_func)daObjTOMBO_Delete__FP12daObjTOMBO_c,
    (process_method_func)daObjTOMBO_Execute__FP12daObjTOMBO_c,
    (process_method_func)daObjTOMBO_IsDelete__FP12daObjTOMBO_c,
    (process_method_func)daObjTOMBO_Draw__FP12daObjTOMBO_c,
};

/* 80D1B818-80D1B848 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Tombo */
extern actor_process_profile_definition g_profile_Obj_Tombo = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Tombo,         // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daObjTOMBO_c),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  487,                    // mPriority
  &l_daObjTOMBO_Method,   // sub_method
  0x000C0100,             // mStatus
  fopAc_ENV_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80D1B848-80D1B86C 000050 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D1B6BC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D1B6B4,
};

/* 80D1B86C-80D1B878 000074 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80D1B878-80D1B884 000080 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80D1B884-80D1B890 00008C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 80D1B890-80D1B89C 000098 000C+00 1/1 0/0 0/0 .data            __vt__12daObjTOMBO_c */
SECTION_DATA extern void* __vt__12daObjTOMBO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)Insect_Release__12daObjTOMBO_cFv,
};

/* 80D1B89C-80D1B8CC 0000A4 0030+00 3/3 0/0 0/0 .data            __vt__14dBgS_ObjGndChk */
SECTION_DATA extern void* __vt__14dBgS_ObjGndChk[12] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14dBgS_ObjGndChkFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D1B69C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D1B6AC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D1B6A4,
};

/* 80D1B8CC-80D1B8D8 0000D4 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80D1B8D8-80D1B8E4 0000E0 000C+00 2/2 0/0 0/0 .data            __vt__14daObj_TomHIO_c */
SECTION_DATA extern void* __vt__14daObj_TomHIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daObj_TomHIO_cFv,
};

/* 80D191CC-80D19200 0000EC 0034+00 1/1 0/0 0/0 .text            __ct__14daObj_TomHIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daObj_TomHIO_c::daObj_TomHIO_c() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/__ct__14daObj_TomHIO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D1B6E0-80D1B6E4 000008 0002+02 1/2 0/0 0/0 .rodata          l_tom_itemno */
SECTION_RODATA static u16 const l_tom_itemno[1 + 1 /* padding */] = {
    0xD2D3,
    /* padding */
    0x0000,
};
COMPILER_STRIP_GATE(0x80D1B6E0, &l_tom_itemno);

/* 80D1B6E4-80D1B724 00000C 0040+00 1/1 0/0 0/0 .rodata          ccSphSrc$3780 */
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

/* 80D19200-80D1926C 000120 006C+00 1/1 0/0 0/0 .text            InitCcSph__12daObjTOMBO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTOMBO_c::InitCcSph() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/InitCcSph__12daObjTOMBO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D1B724-80D1B728 00004C 0004+00 1/3 0/0 0/0 .rodata          @3789 */
SECTION_RODATA static f32 const lit_3789 = 20.0f;
COMPILER_STRIP_GATE(0x80D1B724, &lit_3789);

/* 80D1926C-80D192C4 00018C 0058+00 1/1 0/0 0/0 .text            SetCcSph__12daObjTOMBO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTOMBO_c::SetCcSph() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/SetCcSph__12daObjTOMBO_cFv.s"
}
#pragma pop

/* 80D192C4-80D192E4 0001E4 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void useHeapInit(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/useHeapInit__FP10fopAc_ac_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D1B7E8-80D1B7E8 000110 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D1B7E8 = "Tombo";
#pragma pop

/* 80D192E4-80D195CC 000204 02E8+00 1/1 0/0 0/0 .text            CreateHeap__12daObjTOMBO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTOMBO_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/CreateHeap__12daObjTOMBO_cFv.s"
}
#pragma pop

/* 80D195CC-80D19614 0004EC 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* 80D19614-80D19634 000534 0020+00 1/0 0/0 0/0 .text            daObjTOMBO_Create__FP10fopAc_ac_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjTOMBO_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/daObjTOMBO_Create__FP10fopAc_ac_c.s"
}
#pragma pop

/* 80D19634-80D19658 000554 0024+00 1/0 0/0 0/0 .text            daObjTOMBO_Delete__FP12daObjTOMBO_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjTOMBO_Delete(daObjTOMBO_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/daObjTOMBO_Delete__FP12daObjTOMBO_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D1B728-80D1B72C 000050 0004+00 0/1 0/0 0/0 .rodata          @3922 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3922 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80D1B728, &lit_3922);
#pragma pop

/* 80D1B72C-80D1B730 000054 0004+00 0/7 0/0 0/0 .rodata          @3923 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3923 = 10.0f;
COMPILER_STRIP_GATE(0x80D1B72C, &lit_3923);
#pragma pop

/* 80D19658-80D19744 000578 00EC+00 2/2 0/0 0/0 .text            WaitAction__12daObjTOMBO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTOMBO_c::WaitAction() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/WaitAction__12daObjTOMBO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D1B730-80D1B734 000058 0004+00 3/12 0/0 0/0 .rodata          @3942 */
SECTION_RODATA static u8 const lit_3942[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D1B730, &lit_3942);

/* 80D1B734-80D1B738 00005C 0004+00 0/1 0/0 0/0 .rodata          @3943 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3943 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80D1B734, &lit_3943);
#pragma pop

/* 80D19744-80D19834 000664 00F0+00 2/2 0/0 0/0 .text            SpeedSet__12daObjTOMBO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTOMBO_c::SpeedSet() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/SpeedSet__12daObjTOMBO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D1B738-80D1B73C 000060 0004+00 0/3 0/0 0/0 .rodata          @3971 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3971 = 100.0f;
COMPILER_STRIP_GATE(0x80D1B738, &lit_3971);
#pragma pop

/* 80D1B73C-80D1B740 000064 0004+00 0/2 0/0 0/0 .rodata          @3972 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3972 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80D1B73C, &lit_3972);
#pragma pop

/* 80D1B740-80D1B744 000068 0004+00 0/3 0/0 0/0 .rodata          @3973 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3973 = 50.0f;
COMPILER_STRIP_GATE(0x80D1B740, &lit_3973);
#pragma pop

/* 80D19834-80D1997C 000754 0148+00 1/1 0/0 0/0 .text            CheckWater__12daObjTOMBO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTOMBO_c::CheckWater() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/CheckWater__12daObjTOMBO_cFv.s"
}
#pragma pop

/* 80D1997C-80D199F4 00089C 0078+00 4/3 0/0 0/0 .text            __dt__14dBgS_ObjGndChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjGndChk::~dBgS_ObjGndChk() {
extern "C" asm void __dt__14dBgS_ObjGndChkFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/__dt__14dBgS_ObjGndChkFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D1B744-80D1B748 00006C 0004+00 0/3 0/0 0/0 .rodata          @4003 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4003 = 3.0f;
COMPILER_STRIP_GATE(0x80D1B744, &lit_4003);
#pragma pop

/* 80D1B748-80D1B74C 000070 0004+00 0/1 0/0 0/0 .rodata          @4004 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4004 = 300.0f;
COMPILER_STRIP_GATE(0x80D1B748, &lit_4004);
#pragma pop

/* 80D1B74C-80D1B750 000074 0004+00 0/1 0/0 0/0 .rodata          @4005 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4005 = -3.0f;
COMPILER_STRIP_GATE(0x80D1B74C, &lit_4005);
#pragma pop

/* 80D199F4-80D19B48 000914 0154+00 1/1 0/0 0/0 .text            CheckGround__12daObjTOMBO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTOMBO_c::CheckGround() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/CheckGround__12daObjTOMBO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D1B750-80D1B758 000078 0004+04 0/1 0/0 0/0 .rodata          @4022 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4022[1 + 1 /* padding */] = {
    200.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80D1B750, &lit_4022);
#pragma pop

/* 80D19B48-80D19C34 000A68 00EC+00 1/1 0/0 0/0 .text            CheckWall__12daObjTOMBO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTOMBO_c::CheckWall() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/CheckWall__12daObjTOMBO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D1B758-80D1B760 000080 0008+00 0/2 0/0 0/0 .rodata          @4079 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4079[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D1B758, &lit_4079);
#pragma pop

/* 80D1B760-80D1B768 000088 0008+00 0/2 0/0 0/0 .rodata          @4080 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4080[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D1B760, &lit_4080);
#pragma pop

/* 80D1B768-80D1B770 000090 0008+00 0/2 0/0 0/0 .rodata          @4081 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4081[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D1B768, &lit_4081);
#pragma pop

/* 80D1B770-80D1B774 000098 0004+00 0/1 0/0 0/0 .rodata          @4082 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4082 = 400.0f;
COMPILER_STRIP_GATE(0x80D1B770, &lit_4082);
#pragma pop

/* 80D1B774-80D1B778 00009C 0004+00 0/1 0/0 0/0 .rodata          @4083 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4083 = 150.0f;
COMPILER_STRIP_GATE(0x80D1B774, &lit_4083);
#pragma pop

/* 80D1B778-80D1B77C 0000A0 0004+00 0/3 0/0 0/0 .rodata          @4084 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4084 = 30.0f;
COMPILER_STRIP_GATE(0x80D1B778, &lit_4084);
#pragma pop

/* 80D1B77C-80D1B780 0000A4 0004+00 0/2 0/0 0/0 .rodata          @4085 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4085 = 70.0f;
COMPILER_STRIP_GATE(0x80D1B77C, &lit_4085);
#pragma pop

/* 80D19C34-80D19E48 000B54 0214+00 1/1 0/0 0/0 .text            SearchLink__12daObjTOMBO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTOMBO_c::SearchLink() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/SearchLink__12daObjTOMBO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D1B780-80D1B784 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4149 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4149 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80D1B780, &lit_4149);
#pragma pop

/* 80D1B784-80D1B788 0000AC 0004+00 0/3 0/0 0/0 .rodata          @4150 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4150 = 5.0f;
COMPILER_STRIP_GATE(0x80D1B784, &lit_4150);
#pragma pop

/* 80D1B788-80D1B78C 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4151 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4151 = 2.0f;
COMPILER_STRIP_GATE(0x80D1B788, &lit_4151);
#pragma pop

/* 80D19E48-80D1A138 000D68 02F0+00 2/2 0/0 0/0 .text            LinkAction__12daObjTOMBO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTOMBO_c::LinkAction() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/LinkAction__12daObjTOMBO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D1B78C-80D1B790 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4175 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4175 = 4.0f;
COMPILER_STRIP_GATE(0x80D1B78C, &lit_4175);
#pragma pop

/* 80D1B790-80D1B794 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4176 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4176 = 1000.0f;
COMPILER_STRIP_GATE(0x80D1B790, &lit_4176);
#pragma pop

/* 80D1A138-80D1A280 001058 0148+00 2/2 0/0 0/0 .text            MoveAction__12daObjTOMBO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTOMBO_c::MoveAction() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/MoveAction__12daObjTOMBO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D1B794-80D1B798 0000BC 0004+00 2/2 0/0 0/0 .rodata          @4210 */
SECTION_RODATA static u32 const lit_4210 = 0xBA83126F;
COMPILER_STRIP_GATE(0x80D1B794, &lit_4210);

/* 80D1B798-80D1B7A0 0000C0 0008+00 2/2 0/0 0/0 .rodata          @4212 */
SECTION_RODATA static u8 const lit_4212[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D1B798, &lit_4212);

/* 80D1A280-80D1A3EC 0011A0 016C+00 1/1 0/0 0/0 .text            Action__12daObjTOMBO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTOMBO_c::Action() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/Action__12daObjTOMBO_cFv.s"
}
#pragma pop

/* 80D1A3EC-80D1A514 00130C 0128+00 1/1 0/0 0/0 .text            ShopAction__12daObjTOMBO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTOMBO_c::ShopAction() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/ShopAction__12daObjTOMBO_cFv.s"
}
#pragma pop

/* 80D1A514-80D1A524 001434 0010+00 1/0 0/0 0/0 .text            Insect_Release__12daObjTOMBO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTOMBO_c::Insect_Release() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/Insect_Release__12daObjTOMBO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D1B7A0-80D1B7A4 0000C8 0004+00 0/0 0/0 0/0 .rodata          @4311 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4311 = 3.5f;
COMPILER_STRIP_GATE(0x80D1B7A0, &lit_4311);
#pragma pop

/* 80D1B7A4-80D1B7A8 0000CC 0004+00 0/0 0/0 0/0 .rodata          @4312 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4312 = 12000.0f;
COMPILER_STRIP_GATE(0x80D1B7A4, &lit_4312);
#pragma pop

/* 80D1B7A8-80D1B7AC 0000D0 0004+00 0/0 0/0 0/0 .rodata          @4313 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4313 = 4096.0f;
COMPILER_STRIP_GATE(0x80D1B7A8, &lit_4313);
#pragma pop

/* 80D1B7AC-80D1B7B0 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4314 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4314 = 0.5f;
COMPILER_STRIP_GATE(0x80D1B7AC, &lit_4314);
#pragma pop

/* 80D1B7B0-80D1B7B4 0000D8 0004+00 0/0 0/0 0/0 .rodata          @4315 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4315 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80D1B7B0, &lit_4315);
#pragma pop

/* 80D1B7B4-80D1B7B8 0000DC 0004+00 0/0 0/0 0/0 .rodata          @4316 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4316 = 0.25f;
COMPILER_STRIP_GATE(0x80D1B7B4, &lit_4316);
#pragma pop

/* 80D1B7B8-80D1B7C0 0000E0 0008+00 1/2 0/0 0/0 .rodata          @4347 */
SECTION_RODATA static u8 const lit_4347[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D1B7B8, &lit_4347);

/* 80D1A524-80D1A648 001444 0124+00 1/1 0/0 0/0 .text            ParticleSet__12daObjTOMBO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTOMBO_c::ParticleSet() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/ParticleSet__12daObjTOMBO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D1B7C0-80D1B7C4 0000E8 0004+00 0/2 0/0 0/0 .rodata          @4420 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4420 = -1.0f;
COMPILER_STRIP_GATE(0x80D1B7C0, &lit_4420);
#pragma pop

/* 80D1A648-80D1A8BC 001568 0274+00 1/1 0/0 0/0 .text            BoomChk__12daObjTOMBO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTOMBO_c::BoomChk() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/BoomChk__12daObjTOMBO_cFv.s"
}
#pragma pop

/* 80D1A8BC-80D1A904 0017DC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGPla::~cM3dGPla() {
extern "C" asm void __dt__8cM3dGPlaFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/__dt__8cM3dGPlaFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D1B7C4-80D1B7C8 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4454 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4454 = 10000.0f;
COMPILER_STRIP_GATE(0x80D1B7C4, &lit_4454);
#pragma pop

/* 80D1B8F0-80D1B8F4 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_80D1B8F0[4];

/* 80D1B8F4-80D1B900 00000C 000C+00 1/1 0/0 0/0 .bss             @3770 */
static u8 lit_3770[12];

/* 80D1B900-80D1B914 000018 0014+00 3/3 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[20];

/* 80D1A904-80D1AB20 001824 021C+00 1/1 0/0 0/0 .text            Execute__12daObjTOMBO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTOMBO_c::Execute() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/Execute__12daObjTOMBO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D1B7C8-80D1B7CC 0000F0 0004+00 0/1 0/0 0/0 .rodata          @4485 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4485 = 8.0f;
COMPILER_STRIP_GATE(0x80D1B7C8, &lit_4485);
#pragma pop

/* 80D1AB20-80D1AC84 001A40 0164+00 1/1 0/0 0/0 .text            ObjHit__12daObjTOMBO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTOMBO_c::ObjHit() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/ObjHit__12daObjTOMBO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D1B7CC-80D1B7D0 0000F4 0004+00 0/1 0/0 0/0 .rodata          @4523 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4523 = 608.0f;
COMPILER_STRIP_GATE(0x80D1B7CC, &lit_4523);
#pragma pop

/* 80D1B7D0-80D1B7D4 0000F8 0004+00 0/1 0/0 0/0 .rodata          @4524 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4524 = 448.0f;
COMPILER_STRIP_GATE(0x80D1B7D0, &lit_4524);
#pragma pop

/* 80D1B7D4-80D1B7D8 0000FC 0004+00 0/1 0/0 0/0 .rodata          @4525 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4525 = 16777215.0f;
COMPILER_STRIP_GATE(0x80D1B7D4, &lit_4525);
#pragma pop

/* 80D1AC84-80D1AE00 001BA4 017C+00 1/1 0/0 0/0 .text            Z_BufferChk__12daObjTOMBO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTOMBO_c::Z_BufferChk() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/Z_BufferChk__12daObjTOMBO_cFv.s"
}
#pragma pop

/* 80D1AE00-80D1AE68 001D20 0068+00 1/1 0/0 0/0 .text            Delete__12daObjTOMBO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTOMBO_c::Delete() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/Delete__12daObjTOMBO_cFv.s"
}
#pragma pop

/* 80D1AE68-80D1AEC8 001D88 0060+00 1/1 0/0 0/0 .text            setBaseMtx__12daObjTOMBO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTOMBO_c::setBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/setBaseMtx__12daObjTOMBO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D1B7D8-80D1B7DC 000100 0004+00 1/1 0/0 0/0 .rodata          @4590 */
SECTION_RODATA static f32 const lit_4590 = 15.0f;
COMPILER_STRIP_GATE(0x80D1B7D8, &lit_4590);

/* 80D1B7DC-80D1B7E0 000104 0004+00 1/1 0/0 0/0 .rodata          @4591 */
SECTION_RODATA static f32 const lit_4591 = -3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80D1B7DC, &lit_4591);

/* 80D1AEC8-80D1AFA8 001DE8 00E0+00 1/0 0/0 0/0 .text            daObjTOMBO_Draw__FP12daObjTOMBO_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjTOMBO_Draw(daObjTOMBO_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/daObjTOMBO_Draw__FP12daObjTOMBO_c.s"
}
#pragma pop

/* 80D1AFA8-80D1AFC8 001EC8 0020+00 2/1 0/0 0/0 .text daObjTOMBO_Execute__FP12daObjTOMBO_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjTOMBO_Execute(daObjTOMBO_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/daObjTOMBO_Execute__FP12daObjTOMBO_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D1B7E0-80D1B7E4 000108 0004+00 1/2 0/0 0/0 .rodata          l_musiya_num */
SECTION_RODATA static u32 const l_musiya_num = 0x01A301A4;
COMPILER_STRIP_GATE(0x80D1B7E0, &l_musiya_num);

/* 80D1B7E8-80D1B7E8 000110 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D1B7EE = "R_SP160";
#pragma pop

/* 80D1AFC8-80D1B174 001EE8 01AC+00 1/1 0/0 0/0 .text            CreateChk__12daObjTOMBO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTOMBO_c::CreateChk() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/CreateChk__12daObjTOMBO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D1B7E4-80D1B7E8 00010C 0004+00 0/1 0/0 0/0 .rodata          @4744 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4744 = -50.0f;
COMPILER_STRIP_GATE(0x80D1B7E4, &lit_4744);
#pragma pop

/* 80D1B174-80D1B510 002094 039C+00 1/1 0/0 0/0 .text            create__12daObjTOMBO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjTOMBO_c::create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/create__12daObjTOMBO_cFv.s"
}
#pragma pop

/* 80D1B510-80D1B580 002430 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 80D1B580-80D1B5C8 0024A0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGSph::~cM3dGSph() {
extern "C" asm void __dt__8cM3dGSphFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/__dt__8cM3dGSphFv.s"
}
#pragma pop

/* 80D1B5C8-80D1B610 0024E8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80D1B610-80D1B618 002530 0008+00 1/0 0/0 0/0 .text daObjTOMBO_IsDelete__FP12daObjTOMBO_c */
static bool daObjTOMBO_IsDelete(daObjTOMBO_c* param_0) {
    return true;
}

/* 80D1B618-80D1B660 002538 0048+00 2/1 0/0 0/0 .text            __dt__14daObj_TomHIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daObj_TomHIO_c::~daObj_TomHIO_c() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/__dt__14daObj_TomHIO_cFv.s"
}
#pragma pop

/* 80D1B660-80D1B69C 002580 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_tombo_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_obj_tombo_cpp() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/__sinit_d_a_obj_tombo_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80D1B660, __sinit_d_a_obj_tombo_cpp);
#pragma pop

/* 80D1B69C-80D1B6A4 0025BC 0008+00 1/0 0/0 0/0 .text            @20@__dt__14dBgS_ObjGndChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80D1B69C() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/func_80D1B69C.s"
}
#pragma pop

/* 80D1B6A4-80D1B6AC 0025C4 0008+00 1/0 0/0 0/0 .text            @76@__dt__14dBgS_ObjGndChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80D1B6A4() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/func_80D1B6A4.s"
}
#pragma pop

/* 80D1B6AC-80D1B6B4 0025CC 0008+00 1/0 0/0 0/0 .text            @60@__dt__14dBgS_ObjGndChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80D1B6AC() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/func_80D1B6AC.s"
}
#pragma pop

/* 80D1B6B4-80D1B6BC 0025D4 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80D1B6B4() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/func_80D1B6B4.s"
}
#pragma pop

/* 80D1B6BC-80D1B6C4 0025DC 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80D1B6BC() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_tombo/d_a_obj_tombo/func_80D1B6BC.s"
}
#pragma pop

/* 80D1B7E8-80D1B7E8 000110 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
