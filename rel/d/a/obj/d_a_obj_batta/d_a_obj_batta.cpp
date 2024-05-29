/**
 * @file d_a_obj_batta.cpp
 * 
*/

#include "rel/d/a/obj/d_a_obj_batta/d_a_obj_batta.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__16daObj_BattaHIO_cFv();
extern "C" void setAction__12daObjBATTA_cFM12daObjBATTA_cFPCvPv_v();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daObjBATTA_Create__FP10fopAc_ac_c();
extern "C" static void daObjBATTA_Delete__FP12daObjBATTA_c();
extern "C" void wait__12daObjBATTA_cFv();
extern "C" void turn__12daObjBATTA_cFv();
extern "C" void jump__12daObjBATTA_cFv();
extern "C" void fly_up__12daObjBATTA_cFv();
extern "C" void fly_down__12daObjBATTA_cFv();
extern "C" void bin_wait__12daObjBATTA_cFv();
extern "C" void bin_action__12daObjBATTA_cFv();
extern "C" void hook__12daObjBATTA_cFv();
extern "C" void boomerang__12daObjBATTA_cFv();
extern "C" void batta_setParticle__12daObjBATTA_cFv();
extern "C" void action__12daObjBATTA_cFv();
extern "C" void hit_check__12daObjBATTA_cFv();
extern "C" void execute__12daObjBATTA_cFv();
extern "C" void _delete__12daObjBATTA_cFv();
extern "C" void mtx_set__12daObjBATTA_cFv();
extern "C" static void daObjBATTA_Draw__FP12daObjBATTA_c();
extern "C" static void daObjBATTA_Execute__FP12daObjBATTA_c();
extern "C" void create__12daObjBATTA_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" static bool daObjBATTA_IsDelete__FP12daObjBATTA_c();
extern "C" void __dt__16daObj_BattaHIO_cFv();
extern "C" void __sinit_d_a_obj_batta_cpp();
extern "C" static void func_80BAC8F8();
extern "C" static void func_80BAC900();
extern "C" void Insect_Release__9dInsect_cFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" extern char const* const d_a_obj_batta__stringBase0;

//
// External References:
//

extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
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
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void GetTgHitGObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void __ct__9dInsect_cFv();
extern "C" void Insect_GetDemoMain__9dInsect_cFv();
extern "C" void CalcZBuffer__9dInsect_cFf();
extern "C" void initOffset__20daPy_boomerangMove_cFPC4cXyz();
extern "C" void posMove__20daPy_boomerangMove_cFP4cXyzPsP10fopAc_ac_cs();
extern "C" void bgCheckAfterOffset__20daPy_boomerangMove_cFPC4cXyz();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void isCatchNotGiveInsect__14dMenu_Insect_cFUc();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __ptmf_test();
extern "C" void __ptmf_cmpr();
extern "C" void __ptmf_scall();
extern "C" void __cvt_fp2unsigned();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
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
/* 80BAC970-80BAC974 000000 0004+00 12/12 0/0 0/0 .rodata          @3774 */
SECTION_RODATA static f32 const lit_3774 = 1.0f;
COMPILER_STRIP_GATE(0x80BAC970, &lit_3774);

/* 80BAC974-80BAC978 000004 0004+00 1/1 0/0 0/0 .rodata          @3775 */
SECTION_RODATA static f32 const lit_3775 = 7.0f / 5.0f;
COMPILER_STRIP_GATE(0x80BAC974, &lit_3775);

/* 80BACA70-80BACA7C 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80BACA7C-80BACA90 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80BACA90-80BACAD0 000020 0040+00 0/1 0/0 0/0 .data cc_sph_src__27@unnamed@d_a_obj_batta_cpp@ */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_80BACA90[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x01, 0x40, 0x40, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00,
};
#pragma pop

/* 80BACAD0-80BACADC -00001 000C+00 1/1 0/0 0/0 .data            @3903 */
SECTION_DATA static void* lit_3903[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)jump__12daObjBATTA_cFv,
};

/* 80BACADC-80BACAE8 -00001 000C+00 1/1 0/0 0/0 .data            @3907 */
SECTION_DATA static void* lit_3907[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)turn__12daObjBATTA_cFv,
};

/* 80BACAE8-80BACAF4 -00001 000C+00 1/1 0/0 0/0 .data            @3992 */
SECTION_DATA static void* lit_3992[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)jump__12daObjBATTA_cFv,
};

/* 80BACAF4-80BACB00 -00001 000C+00 1/1 0/0 0/0 .data            @3998 */
SECTION_DATA static void* lit_3998[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)jump__12daObjBATTA_cFv,
};

/* 80BACB00-80BACB0C -00001 000C+00 1/1 0/0 0/0 .data            @4151 */
SECTION_DATA static void* lit_4151[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)fly_up__12daObjBATTA_cFv,
};

/* 80BACB0C-80BACB18 -00001 000C+00 1/1 0/0 0/0 .data            @4155 */
SECTION_DATA static void* lit_4155[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__12daObjBATTA_cFv,
};

/* 80BACB18-80BACB24 -00001 000C+00 1/1 0/0 0/0 .data            @4246 */
SECTION_DATA static void* lit_4246[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)fly_down__12daObjBATTA_cFv,
};

/* 80BACB24-80BACB30 -00001 000C+00 1/1 0/0 0/0 .data            @4353 */
SECTION_DATA static void* lit_4353[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__12daObjBATTA_cFv,
};

/* 80BACB30-80BACB3C -00001 000C+00 1/1 0/0 0/0 .data            @4415 */
SECTION_DATA static void* lit_4415[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__12daObjBATTA_cFv,
};

/* 80BACB3C-80BACB48 -00001 000C+00 1/1 0/0 0/0 .data            @4418 */
SECTION_DATA static void* lit_4418[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)bin_action__12daObjBATTA_cFv,
};

/* 80BACB48-80BACB54 -00001 000C+00 1/1 0/0 0/0 .data            @4485 */
SECTION_DATA static void* lit_4485[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__12daObjBATTA_cFv,
};

/* 80BACB54-80BACB60 -00001 000C+00 1/1 0/0 0/0 .data            @4521 */
SECTION_DATA static void* lit_4521[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__12daObjBATTA_cFv,
};

/* 80BACB60-80BACB6C -00001 000C+00 1/1 0/0 0/0 .data            @4620 */
SECTION_DATA static void* lit_4620[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)boomerang__12daObjBATTA_cFv,
};

/* 80BACB6C-80BACB78 -00001 000C+00 1/1 0/0 0/0 .data            @4648 */
SECTION_DATA static void* lit_4648[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)hook__12daObjBATTA_cFv,
};

/* 80BACB78-80BACB84 -00001 000C+00 1/1 0/0 0/0 .data            @4651 */
SECTION_DATA static void* lit_4651[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)boomerang__12daObjBATTA_cFv,
};

/* 80BACB84-80BACB90 -00001 000C+00 0/1 0/0 0/0 .data            @4880 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4880[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)bin_wait__12daObjBATTA_cFv,
};
#pragma pop

/* 80BACB90-80BACB9C -00001 000C+00 0/1 0/0 0/0 .data            @4883 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4883[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__12daObjBATTA_cFv,
};
#pragma pop

/* 80BACB9C-80BACBBC -00001 0020+00 1/0 0/0 0/0 .data            l_daObjBATTA_Method */
static actor_method_class l_daObjBATTA_Method = {
    (process_method_func)daObjBATTA_Create__FP10fopAc_ac_c,
    (process_method_func)daObjBATTA_Delete__FP12daObjBATTA_c,
    (process_method_func)daObjBATTA_Execute__FP12daObjBATTA_c,
    (process_method_func)daObjBATTA_IsDelete__FP12daObjBATTA_c,
    (process_method_func)daObjBATTA_Draw__FP12daObjBATTA_c,
};

/* 80BACBBC-80BACBEC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Batta */
extern actor_process_profile_definition g_profile_Obj_Batta = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Batta,         // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daObjBATTA_c),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  486,                    // mPriority
  &l_daObjBATTA_Method,   // sub_method
  0x000C0120,             // mStatus
  fopAc_ENV_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80BACBEC-80BACBF8 00017C 000C+00 0/0 0/0 0/0 .data            __vt__9dInsect_c */
SECTION_DATA extern void* __vt__9dInsect_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)Insect_Release__9dInsect_cFv,
};

/* 80BACBF8-80BACC04 000188 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80BACC04-80BACC10 000194 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80BACC10-80BACC1C 0001A0 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80BACC1C-80BACC28 0001AC 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80BACC28-80BACC34 0001B8 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80BACC34-80BACC58 0001C4 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80BAC900,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80BAC8F8,
};

/* 80BACC58-80BACC64 0001E8 000C+00 1/1 0/0 0/0 .data            __vt__12daObjBATTA_c */
SECTION_DATA extern void* __vt__12daObjBATTA_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)Insect_Release__9dInsect_cFv,
};

/* 80BACC64-80BACC70 0001F4 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80BACC70-80BACC7C 000200 000C+00 2/2 0/0 0/0 .data            __vt__16daObj_BattaHIO_c */
SECTION_DATA extern void* __vt__16daObj_BattaHIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daObj_BattaHIO_cFv,
};

/* 80BA9E2C-80BA9E5C 0000EC 0030+00 1/1 0/0 0/0 .text            __ct__16daObj_BattaHIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daObj_BattaHIO_c::daObj_BattaHIO_c() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_batta/d_a_obj_batta/__ct__16daObj_BattaHIO_cFv.s"
}
#pragma pop

/* 80BA9E5C-80BA9F00 00011C 00A4+00 10/10 0/0 0/0 .text
 * setAction__12daObjBATTA_cFM12daObjBATTA_cFPCvPv_v            */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjBATTA_c::setAction(void (daObjBATTA_c::*param_0)()) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_batta/d_a_obj_batta/setAction__12daObjBATTA_cFM12daObjBATTA_cFPCvPv_v.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BAC978-80BAC980 000008 0008+00 0/1 0/0 0/0 .rodata          l_batta_brk_index */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_batta_brk_index[8] = {
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x0E,
};
COMPILER_STRIP_GATE(0x80BAC978, &l_batta_brk_index);
#pragma pop

/* 80BAC980-80BAC988 000010 0008+00 0/1 0/0 0/0 .rodata          l_batta_btk_index */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_batta_btk_index[8] = {
    0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x12,
};
COMPILER_STRIP_GATE(0x80BAC980, &l_batta_btk_index);
#pragma pop

/* 80BACA64-80BACA64 0000F4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BACA64 = "Bat";
#pragma pop

/* 80BA9F00-80BAA13C 0001C0 023C+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void useHeapInit(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_batta/d_a_obj_batta/useHeapInit__FP10fopAc_ac_c.s"
}
#pragma pop

/* 80BAA13C-80BAA184 0003FC 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_batta/d_a_obj_batta/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* 80BAA184-80BAA1A4 000444 0020+00 1/0 0/0 0/0 .text            daObjBATTA_Create__FP10fopAc_ac_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjBATTA_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_batta/d_a_obj_batta/daObjBATTA_Create__FP10fopAc_ac_c.s"
}
#pragma pop

/* 80BAA1A4-80BAA1C8 000464 0024+00 1/0 0/0 0/0 .text            daObjBATTA_Delete__FP12daObjBATTA_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjBATTA_Delete(daObjBATTA_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_batta/d_a_obj_batta/daObjBATTA_Delete__FP12daObjBATTA_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BAC988-80BAC98C 000018 0004+00 0/5 0/0 0/0 .rodata          @3955 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3955 = 4.0f;
COMPILER_STRIP_GATE(0x80BAC988, &lit_3955);
#pragma pop

/* 80BAC98C-80BAC990 00001C 0004+00 3/11 0/0 0/0 .rodata          @3956 */
SECTION_RODATA static u8 const lit_3956[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80BAC98C, &lit_3956);

/* 80BAC990-80BAC994 000020 0004+00 0/5 0/0 0/0 .rodata          @3957 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3957 = -1.0f;
COMPILER_STRIP_GATE(0x80BAC990, &lit_3957);
#pragma pop

/* 80BAC994-80BAC998 000024 0004+00 0/3 0/0 0/0 .rodata          @3958 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3958 = -5.0f;
COMPILER_STRIP_GATE(0x80BAC994, &lit_3958);
#pragma pop

/* 80BAC998-80BAC99C 000028 0004+00 0/4 0/0 0/0 .rodata          @3959 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3959 = -20.0f;
COMPILER_STRIP_GATE(0x80BAC998, &lit_3959);
#pragma pop

/* 80BAC99C-80BAC9A0 00002C 0004+00 0/1 0/0 0/0 .rodata          @3960 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3960 = 90.0f;
COMPILER_STRIP_GATE(0x80BAC99C, &lit_3960);
#pragma pop

/* 80BAC9A0-80BAC9A8 000030 0004+04 0/1 0/0 0/0 .rodata          @3961 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3961[1 + 1 /* padding */] = {
    160.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80BAC9A0, &lit_3961);
#pragma pop

/* 80BAC9A8-80BAC9B0 000038 0008+00 0/5 0/0 0/0 .rodata          @3962 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3962[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BAC9A8, &lit_3962);
#pragma pop

/* 80BAC9B0-80BAC9B8 000040 0008+00 0/5 0/0 0/0 .rodata          @3963 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3963[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BAC9B0, &lit_3963);
#pragma pop

/* 80BAC9B8-80BAC9C0 000048 0008+00 0/5 0/0 0/0 .rodata          @3964 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3964[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BAC9B8, &lit_3964);
#pragma pop

/* 80BAC9C0-80BAC9C4 000050 0004+00 0/2 0/0 0/0 .rodata          @3965 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3965 = 200.0f;
COMPILER_STRIP_GATE(0x80BAC9C0, &lit_3965);
#pragma pop

/* 80BAC9C4-80BAC9C8 000054 0004+00 0/2 0/0 0/0 .rodata          @3966 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3966 = 19.0f;
COMPILER_STRIP_GATE(0x80BAC9C4, &lit_3966);
#pragma pop

/* 80BAA1C8-80BAA47C 000488 02B4+00 6/0 0/0 0/0 .text            wait__12daObjBATTA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjBATTA_c::wait() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_batta/d_a_obj_batta/wait__12daObjBATTA_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BAC9C8-80BAC9CC 000058 0004+00 0/3 0/0 0/0 .rodata          @4117 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4117 = 1800.0f;
COMPILER_STRIP_GATE(0x80BAC9C8, &lit_4117);
#pragma pop

/* 80BAC9CC-80BAC9D0 00005C 0004+00 0/1 0/0 0/0 .rodata          @4118 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4118 = 12288.0f;
COMPILER_STRIP_GATE(0x80BAC9CC, &lit_4118);
#pragma pop

/* 80BAC9D0-80BAC9D4 000060 0004+00 0/2 0/0 0/0 .rodata          @4119 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4119 = 1000.0f;
COMPILER_STRIP_GATE(0x80BAC9D0, &lit_4119);
#pragma pop

/* 80BAC9D4-80BAC9D8 000064 0004+00 0/4 0/0 0/0 .rodata          @4120 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4120 = 32768.0f;
COMPILER_STRIP_GATE(0x80BAC9D4, &lit_4120);
#pragma pop

/* 80BAC9D8-80BAC9E0 000068 0004+04 0/3 0/0 0/0 .rodata          @4121 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4121[1 + 1 /* padding */] = {
    8192.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80BAC9D8, &lit_4121);
#pragma pop

/* 80BAC9E0-80BAC9E8 000070 0008+00 0/3 0/0 0/0 .rodata          @4123 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4123[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BAC9E0, &lit_4123);
#pragma pop

/* 80BAA47C-80BAAA18 00073C 059C+00 1/0 0/0 0/0 .text            turn__12daObjBATTA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjBATTA_c::turn() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_batta/d_a_obj_batta/turn__12daObjBATTA_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BAC9E8-80BAC9EC 000078 0004+00 0/1 0/0 0/0 .rodata          @4210 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4210 = 2.0f;
COMPILER_STRIP_GATE(0x80BAC9E8, &lit_4210);
#pragma pop

/* 80BAC9EC-80BAC9F0 00007C 0004+00 0/1 0/0 0/0 .rodata          @4211 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4211 = 25.0f;
COMPILER_STRIP_GATE(0x80BAC9EC, &lit_4211);
#pragma pop

/* 80BAC9F0-80BAC9F4 000080 0004+00 0/1 0/0 0/0 .rodata          @4212 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4212 = 5.0f;
COMPILER_STRIP_GATE(0x80BAC9F0, &lit_4212);
#pragma pop

/* 80BAC9F4-80BAC9F8 000084 0004+00 1/3 0/0 0/0 .rodata          @4213 */
SECTION_RODATA static f32 const lit_4213 = 20.0f;
COMPILER_STRIP_GATE(0x80BAC9F4, &lit_4213);

/* 80BAC9F8-80BAC9FC 000088 0004+00 0/1 0/0 0/0 .rodata          @4214 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4214 = 800.0f;
COMPILER_STRIP_GATE(0x80BAC9F8, &lit_4214);
#pragma pop

/* 80BAC9FC-80BACA00 00008C 0004+00 0/1 0/0 0/0 .rodata          @4215 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4215 = -2.5f;
COMPILER_STRIP_GATE(0x80BAC9FC, &lit_4215);
#pragma pop

/* 80BAAA18-80BAAD30 000CD8 0318+00 3/0 0/0 0/0 .text            jump__12daObjBATTA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjBATTA_c::jump() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_batta/d_a_obj_batta/jump__12daObjBATTA_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BACA00-80BACA04 000090 0004+00 0/2 0/0 0/0 .rodata          @4329 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4329 = 0.5f;
COMPILER_STRIP_GATE(0x80BACA00, &lit_4329);
#pragma pop

/* 80BACA04-80BACA08 000094 0004+00 0/2 0/0 0/0 .rodata          @4330 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4330 = 40.0f;
COMPILER_STRIP_GATE(0x80BACA04, &lit_4330);
#pragma pop

/* 80BACA08-80BACA0C 000098 0004+00 0/1 0/0 0/0 .rodata          @4331 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4331 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80BACA08, &lit_4331);
#pragma pop

/* 80BACA0C-80BACA10 00009C 0004+00 0/1 0/0 0/0 .rodata          @4332 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4332 = 6.0f;
COMPILER_STRIP_GATE(0x80BACA0C, &lit_4332);
#pragma pop

/* 80BACA10-80BACA14 0000A0 0004+00 0/2 0/0 0/0 .rodata          @4333 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4333 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80BACA10, &lit_4333);
#pragma pop

/* 80BAAD30-80BAB234 000FF0 0504+00 1/0 0/0 0/0 .text            fly_up__12daObjBATTA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjBATTA_c::fly_up() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_batta/d_a_obj_batta/fly_up__12daObjBATTA_cFv.s"
}
#pragma pop

/* 80BAB234-80BAB500 0014F4 02CC+00 1/0 0/0 0/0 .text            fly_down__12daObjBATTA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjBATTA_c::fly_down() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_batta/d_a_obj_batta/fly_down__12daObjBATTA_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BACA14-80BACA18 0000A4 0004+00 0/2 0/0 0/0 .rodata          @4435 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4435 = 10.0f;
COMPILER_STRIP_GATE(0x80BACA14, &lit_4435);
#pragma pop

/* 80BACA64-80BACA64 0000F4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BACA68 = "R_SP160";
#pragma pop

/* 80BAB500-80BAB6C8 0017C0 01C8+00 1/0 0/0 0/0 .text            bin_wait__12daObjBATTA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjBATTA_c::bin_wait() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_batta/d_a_obj_batta/bin_wait__12daObjBATTA_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BACA18-80BACA1C 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4465 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4465 = -2.0f;
COMPILER_STRIP_GATE(0x80BACA18, &lit_4465);
#pragma pop

/* 80BACA1C-80BACA20 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4466 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4466 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80BACA1C, &lit_4466);
#pragma pop

/* 80BACA20-80BACA24 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4467 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4467 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80BACA20, &lit_4467);
#pragma pop

/* 80BACA24-80BACA28 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4468 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4468 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80BACA24, &lit_4468);
#pragma pop

/* 80BACA28-80BACA2C 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4469 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4469 = 62.0f;
COMPILER_STRIP_GATE(0x80BACA28, &lit_4469);
#pragma pop

/* 80BACA2C-80BACA30 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4470 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4470 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80BACA2C, &lit_4470);
#pragma pop

/* 80BACA30-80BACA38 0000C0 0008+00 0/1 0/0 0/0 .rodata          @4471 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4471[8] = {
    0x3F, 0xB9, 0x99, 0x99, 0x99, 0x99, 0x99, 0x9A,
};
COMPILER_STRIP_GATE(0x80BACA30, &lit_4471);
#pragma pop

/* 80BAB6C8-80BAB820 001988 0158+00 1/0 0/0 0/0 .text            bin_action__12daObjBATTA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjBATTA_c::bin_action() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_batta/d_a_obj_batta/bin_action__12daObjBATTA_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BACA38-80BACA3C 0000C8 0004+00 1/1 0/0 0/0 .rodata          @4506 */
SECTION_RODATA static f32 const lit_4506 = -10.0f;
COMPILER_STRIP_GATE(0x80BACA38, &lit_4506);

/* 80BAB820-80BAB934 001AE0 0114+00 1/0 0/0 0/0 .text            hook__12daObjBATTA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjBATTA_c::hook() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_batta/d_a_obj_batta/hook__12daObjBATTA_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BACA3C-80BACA40 0000CC 0004+00 1/1 0/0 0/0 .rodata          @4552 */
SECTION_RODATA static f32 const lit_4552 = 100.0f;
COMPILER_STRIP_GATE(0x80BACA3C, &lit_4552);

/* 80BAB934-80BABA98 001BF4 0164+00 2/0 0/0 0/0 .text            boomerang__12daObjBATTA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjBATTA_c::boomerang() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_batta/d_a_obj_batta/boomerang__12daObjBATTA_cFv.s"
}
#pragma pop

/* 80BABA98-80BABCA4 001D58 020C+00 9/9 0/0 0/0 .text            batta_setParticle__12daObjBATTA_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjBATTA_c::batta_setParticle() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_batta/d_a_obj_batta/batta_setParticle__12daObjBATTA_cFv.s"
}
#pragma pop

/* 80BABCA4-80BABD6C 001F64 00C8+00 1/1 0/0 0/0 .text            action__12daObjBATTA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjBATTA_c::action() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_batta/d_a_obj_batta/action__12daObjBATTA_cFv.s"
}
#pragma pop

/* 80BABD6C-80BABE20 00202C 00B4+00 1/1 0/0 0/0 .text            hit_check__12daObjBATTA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjBATTA_c::hit_check() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_batta/d_a_obj_batta/hit_check__12daObjBATTA_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BACA40-80BACA44 0000D0 0002+02 0/1 0/0 0/0 .rodata          l_batta_sex */
#pragma push
#pragma force_active on
SECTION_RODATA static u16 const l_batta_sex[1 + 1 /* padding */] = {
    0xC6C7,
    /* padding */
    0x0000,
};
COMPILER_STRIP_GATE(0x80BACA40, &l_batta_sex);
#pragma pop

/* 80BACA44-80BACA48 0000D4 0004+00 1/1 0/0 0/0 .rodata          @4698 */
SECTION_RODATA static f32 const lit_4698 = 10000.0f;
COMPILER_STRIP_GATE(0x80BACA44, &lit_4698);

/* 80BACA48-80BACA50 0000D8 0008+00 1/1 0/0 0/0 .rodata          @4700 */
SECTION_RODATA static u8 const lit_4700[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BACA48, &lit_4700);

/* 80BABE20-80BABFA4 0020E0 0184+00 1/1 0/0 0/0 .text            execute__12daObjBATTA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjBATTA_c::execute() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_batta/d_a_obj_batta/execute__12daObjBATTA_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BACC88-80BACC8C 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_80BACC88[4];

/* 80BABFA4-80BAC00C 002264 0068+00 1/1 0/0 0/0 .text            _delete__12daObjBATTA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjBATTA_c::_delete() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_batta/d_a_obj_batta/_delete__12daObjBATTA_cFv.s"
}
#pragma pop

/* 80BAC00C-80BAC084 0022CC 0078+00 1/1 0/0 0/0 .text            mtx_set__12daObjBATTA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjBATTA_c::mtx_set() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_batta/d_a_obj_batta/mtx_set__12daObjBATTA_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BACA50-80BACA54 0000E0 0004+00 0/2 0/0 0/0 .rodata          @4767 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4767 = 50.0f;
COMPILER_STRIP_GATE(0x80BACA50, &lit_4767);
#pragma pop

/* 80BACA54-80BACA58 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4768 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4768 = 15.0f;
COMPILER_STRIP_GATE(0x80BACA54, &lit_4768);
#pragma pop

/* 80BACA58-80BACA5C 0000E8 0004+00 0/1 0/0 0/0 .rodata          @4769 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4769 = -3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80BACA58, &lit_4769);
#pragma pop

/* 80BAC084-80BAC174 002344 00F0+00 1/0 0/0 0/0 .text            daObjBATTA_Draw__FP12daObjBATTA_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjBATTA_Draw(daObjBATTA_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_batta/d_a_obj_batta/daObjBATTA_Draw__FP12daObjBATTA_c.s"
}
#pragma pop

/* 80BAC174-80BAC194 002434 0020+00 2/1 0/0 0/0 .text daObjBATTA_Execute__FP12daObjBATTA_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjBATTA_Execute(daObjBATTA_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_batta/d_a_obj_batta/daObjBATTA_Execute__FP12daObjBATTA_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BACA5C-80BACA60 0000EC 0004+00 0/1 0/0 0/0 .rodata          l_musiya_num */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const l_musiya_num = 0x01970198;
COMPILER_STRIP_GATE(0x80BACA5C, &l_musiya_num);
#pragma pop

/* 80BACA60-80BACA64 0000F0 0004+00 0/1 0/0 0/0 .rodata          @4979 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4979 = -50.0f;
COMPILER_STRIP_GATE(0x80BACA60, &lit_4979);
#pragma pop

/* 80BACC8C-80BACC98 00000C 000C+00 1/1 0/0 0/0 .bss             @3769 */
static u8 lit_3769[12];

/* 80BACC98-80BACCA8 000018 0010+00 2/2 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[16];

/* 80BAC194-80BAC6A0 002454 050C+00 1/1 0/0 0/0 .text            create__12daObjBATTA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjBATTA_c::create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_batta/d_a_obj_batta/create__12daObjBATTA_cFv.s"
}
#pragma pop

/* 80BAC6A0-80BAC6E8 002960 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGSph::~cM3dGSph() {
extern "C" asm void __dt__8cM3dGSphFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_batta/d_a_obj_batta/__dt__8cM3dGSphFv.s"
}
#pragma pop

/* 80BAC6E8-80BAC730 0029A8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_batta/d_a_obj_batta/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80BAC730-80BAC78C 0029F0 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_batta/d_a_obj_batta/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 80BAC78C-80BAC7FC 002A4C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_batta/d_a_obj_batta/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 80BAC7FC-80BAC86C 002ABC 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_batta/d_a_obj_batta/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 80BAC86C-80BAC874 002B2C 0008+00 1/0 0/0 0/0 .text daObjBATTA_IsDelete__FP12daObjBATTA_c */
static bool daObjBATTA_IsDelete(daObjBATTA_c* param_0) {
    return true;
}

/* 80BAC874-80BAC8BC 002B34 0048+00 2/1 0/0 0/0 .text            __dt__16daObj_BattaHIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daObj_BattaHIO_c::~daObj_BattaHIO_c() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_batta/d_a_obj_batta/__dt__16daObj_BattaHIO_cFv.s"
}
#pragma pop

/* 80BAC8BC-80BAC8F8 002B7C 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_batta_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_obj_batta_cpp() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_batta/d_a_obj_batta/__sinit_d_a_obj_batta_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80BAC8BC, __sinit_d_a_obj_batta_cpp);
#pragma pop

/* 80BAC8F8-80BAC900 002BB8 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80BAC8F8() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_batta/d_a_obj_batta/func_80BAC8F8.s"
}
#pragma pop

/* 80BAC900-80BAC908 002BC0 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80BAC900() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_batta/d_a_obj_batta/func_80BAC900.s"
}
#pragma pop

/* 80BAC908-80BAC914 002BC8 000C+00 2/0 0/0 0/0 .text            Insect_Release__9dInsect_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void dInsect_c::Insect_Release() {
extern "C" asm void Insect_Release__9dInsect_cFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_batta/d_a_obj_batta/Insect_Release__9dInsect_cFv.s"
}
#pragma pop

/* 80BAC914-80BAC95C 002BD4 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_batta/d_a_obj_batta/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 80BACA64-80BACA64 0000F4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
