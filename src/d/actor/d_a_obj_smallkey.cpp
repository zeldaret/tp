/**
 * @file d_a_obj_smallkey.cpp
 * 
*/

#include "d/actor/d_a_obj_smallkey.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "JSystem/JParticle/JPAEmitter.h"


//
// Forward References:
//

extern "C" static void searchParentSub__FPvPv();
extern "C" static void Reflect__FP4cXyzRC13cBgS_PolyInfof();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" static void
keyGetTgCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" static void
keyGetCoCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void initBaseMtx__7daKey_cFv();
extern "C" void setBaseMtx__7daKey_cFv();
extern "C" void Create__7daKey_cFv();
extern "C" bool __CreateHeap__7daKey_cFv();
extern "C" void create__7daKey_cFv();
extern "C" void __dt__19dPa_followEcallBackFv();
extern "C" void cleanup__18dPa_levelEcallBackFv();
extern "C" void __defctor__19dPa_followEcallBackFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void bg_check__7daKey_cFv();
extern "C" void actionInitInit__7daKey_cFv();
extern "C" void actionInit__7daKey_cFv();
extern "C" void actionParentWaitInit__7daKey_cFv();
extern "C" void actionParentWait__7daKey_cFv();
extern "C" void actionWaitInit__7daKey_cFv();
extern "C" void actionWait__7daKey_cFv();
extern "C" void initActionOrderGetDemo__7daKey_cFv();
extern "C" void actionOrderGetDemo__7daKey_cFv();
extern "C" void actionGetDemo__7daKey_cFv();
extern "C" void actionInitSwOnWait__7daKey_cFv();
extern "C" void actionSwOnWait__7daKey_cFv();
extern "C" void actionInitBoomerangCarry__7daKey_cFv();
extern "C" void actionBoomerangCarry__7daKey_cFv();
extern "C" void effectSet__7daKey_cFv();
extern "C" void effectStop__7daKey_cFv();
extern "C" void effectCtrl__7daKey_cFv();
extern "C" void seStartTwinkle_private__7daKey_cFUl();
extern "C" void actionInitE_GB__7daKey_cFv();
extern "C" void actionE_GB__7daKey_cFv();
extern "C" void execute__7daKey_cFv();
extern "C" void draw__7daKey_cFv();
extern "C" void _delete__7daKey_cFv();
extern "C" static void daKey_Draw__FP7daKey_c();
extern "C" static void daKey_Execute__FP7daKey_c();
extern "C" static void daKey_Delete__FP7daKey_c();
extern "C" static void daKey_Create__FP10fopAc_ac_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__18dPa_levelEcallBackFv();
extern "C" void execute__18JPAEmitterCallBackFP14JPABaseEmitter();
extern "C" void executeAfter__18JPAEmitterCallBackFP14JPABaseEmitter();
extern "C" void draw__18JPAEmitterCallBackFP14JPABaseEmitter();
extern "C" void drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter();
extern "C" void func_80CDB7C0(void* _this, u8*);
extern "C" static void func_80CDB7DC();
extern "C" static void func_80CDB7E4();
extern "C" extern char const* const d_a_obj_smallkey__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_orderItemEvent__FP10fopAc_ac_cUsUs();
extern "C" void fopAcM_createItemForTrBoxDemo__FPC4cXyziiiPC5csXyzPC4cXyz();
extern "C" void fopAcM_cancelCarryNow__FP10fopAc_ac_c();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcSch_JudgeForPName__FPvPv();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onTbox__12dSv_memBit_cFi();
extern "C" void offTbox__12dSv_memBit_cFi();
extern "C" void isTbox__12dSv_memBit_cCFi();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void hide__12daItemBase_cFv();
extern "C" void show__12daItemBase_cFv();
extern "C" void chkDraw__12daItemBase_cFv();
extern "C" void CheckFieldItemCreateHeap__FP10fopAc_ac_c();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setPtI_Id__14dEvt_control_cFUi();
extern "C" void endCheckOld__16dEvent_manager_cFPCc();
extern "C" void __ct__19dPa_followEcallBackFUcUc();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void offStatus__7dTres_cFUcii();
extern "C" void setPosition__7dTres_cFiUcPC3Veci();
extern "C" void DeleteBase__12daItemBase_cFPCc();
extern "C" bool clothCreate__12daItemBase_cFv();
extern "C" void DrawBase__12daItemBase_cFv();
extern "C" void RotateYBase__12daItemBase_cFv();
extern "C" void setListStart__12daItemBase_cFv();
extern "C" void settingBeforeDraw__12daItemBase_cFv();
extern "C" void setTevStr__12daItemBase_cFv();
extern "C" void setShadow__12daItemBase_cFv();
extern "C" void animEntry__12daItemBase_cFv();
extern "C" void chkFlag__12daItemBase_cFi();
extern "C" void getTevFrm__12daItemBase_cFv();
extern "C" void getBtpFrm__12daItemBase_cFv();
extern "C" void getShadowSize__12daItemBase_cFv();
extern "C" void getCollisionH__12daItemBase_cFv();
extern "C" void getCollisionR__12daItemBase_cFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __ml__4cXyzCFf();
extern "C" void cM_atan2s__Fff();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void __dt__18JPAEmitterCallBackFv();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void __ptmf_scall();
extern "C" void __cvt_fp2unsigned();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__19dPa_followEcallBack[10];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" void* field_item_res__10dItem_data[1020];
extern "C" u8 item_info__10dItem_data[1020 + 4 /* padding */];
extern "C" extern void* __vt__12daItemBase_c[17 + 1 /* padding */];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" extern u8 data_80CDBAB0[4];

//
// Declarations:
//

/* ############################################################################################## */
/* 80CDB7F4-80CDB838 000000 0044+00 6/6 0/0 0/0 .rodata          l_cyl_src */
const static dCcD_SrcCyl l_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xffffffff, 0x11}, 0x59}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        20.0f, // mRadius
        40.0f // mHeight
    } // mCyl
};

/* 80CDB838-80CDB83C 000044 0004+00 2/7 0/0 0/0 .rodata          @3875 */
SECTION_RODATA static u8 const lit_3875[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CDB838, &lit_3875);

/* 80CDB83C-80CDB844 000048 0008+00 0/3 0/0 0/0 .rodata          @3876 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3876[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CDB83C, &lit_3876);
#pragma pop

/* 80CDB844-80CDB84C 000050 0008+00 0/3 0/0 0/0 .rodata          @3877 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3877[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CDB844, &lit_3877);
#pragma pop

/* 80CDB84C-80CDB854 000058 0008+00 0/3 0/0 0/0 .rodata          @3878 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3878[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CDB84C, &lit_3878);
#pragma pop

/* 80CDB854-80CDB858 000060 0004+00 2/6 0/0 0/0 .rodata          @3879 */
SECTION_RODATA static f32 const lit_3879 = 1.0f;
COMPILER_STRIP_GATE(0x80CDB854, &lit_3879);

/* 80CDB858-80CDB85C 000064 0004+00 0/1 0/0 0/0 .rodata          @3880 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3880 = 50.0f;
COMPILER_STRIP_GATE(0x80CDB858, &lit_3880);
#pragma pop

/* 80CDB85C-80CDB860 000068 0004+00 0/1 0/0 0/0 .rodata          @3881 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3881 = 10.0f;
COMPILER_STRIP_GATE(0x80CDB85C, &lit_3881);
#pragma pop

/* 80CD97B8-80CD9B40 000078 0388+00 1/1 0/0 0/0 .text            searchParentSub__FPvPv */
static void searchParentSub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CDB8A8-80CDB8B4 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80CDB8B4-80CDB8C8 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80CDB8C8-80CDB8D4 -00001 000C+00 0/1 0/0 0/0 .data            @4652 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4652[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionInit__7daKey_cFv,
};
#pragma pop

/* 80CDB8D4-80CDB8E0 -00001 000C+00 0/1 0/0 0/0 .data            @4653 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4653[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionParentWait__7daKey_cFv,
};
#pragma pop

/* 80CDB8E0-80CDB8EC -00001 000C+00 0/1 0/0 0/0 .data            @4654 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4654[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionWait__7daKey_cFv,
};
#pragma pop

/* 80CDB8EC-80CDB8F8 -00001 000C+00 0/1 0/0 0/0 .data            @4655 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4655[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionOrderGetDemo__7daKey_cFv,
};
#pragma pop

/* 80CDB8F8-80CDB904 -00001 000C+00 0/1 0/0 0/0 .data            @4656 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4656[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionGetDemo__7daKey_cFv,
};
#pragma pop

/* 80CDB904-80CDB910 -00001 000C+00 0/1 0/0 0/0 .data            @4657 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4657[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionSwOnWait__7daKey_cFv,
};
#pragma pop

/* 80CDB910-80CDB91C -00001 000C+00 0/1 0/0 0/0 .data            @4658 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4658[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionBoomerangCarry__7daKey_cFv,
};
#pragma pop

/* 80CDB91C-80CDB928 -00001 000C+00 0/1 0/0 0/0 .data            @4659 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4659[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionE_GB__7daKey_cFv,
};
#pragma pop

/* 80CDB928-80CDB988 000080 0060+00 0/1 0/0 0/0 .data            l_demoFunc$4651 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_demoFunc[96] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80CDB988-80CDB9A8 -00001 0020+00 1/0 0/0 0/0 .data            l_daKey_Method */
static actor_method_class l_daKey_Method = {
    (process_method_func)daKey_Create__FP10fopAc_ac_c,
    (process_method_func)daKey_Delete__FP7daKey_c,
    (process_method_func)daKey_Execute__FP7daKey_c,
    0,
    (process_method_func)daKey_Draw__FP7daKey_c,
};

/* 80CDB9A8-80CDB9D8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_SmallKey */
extern actor_process_profile_definition g_profile_Obj_SmallKey = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_SmallKey,      // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daKey_c),        // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  237,                    // mPriority
  &l_daKey_Method,        // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80CDB9D8-80CDB9E4 000130 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80CDB9E4-80CDB9F0 00013C 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80CDB9F0-80CDB9FC 000148 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80CDB9FC-80CDBA20 000154 0024+00 2/2 0/0 0/0 .data            __vt__18dPa_levelEcallBack */
SECTION_DATA extern void* __vt__18dPa_levelEcallBack[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18dPa_levelEcallBackFv,
    (void*)execute__18JPAEmitterCallBackFP14JPABaseEmitter,
    (void*)executeAfter__18JPAEmitterCallBackFP14JPABaseEmitter,
    (void*)draw__18JPAEmitterCallBackFP14JPABaseEmitter,
    (void*)drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter,
    (void*)NULL,
    (void*)cleanup__18dPa_levelEcallBackFv,
};

/* 80CDBA20-80CDBA2C 000178 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80CDBA2C-80CDBA38 000184 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80CDBA38-80CDBA5C 000190 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80CDB7E4,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80CDB7DC,
};

/* 80CDBA5C-80CDBAA0 0001B4 0044+00 1/1 0/0 0/0 .data            __vt__7daKey_c */
SECTION_DATA extern void* __vt__7daKey_c[17] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)DrawBase__12daItemBase_cFv,
    (void*)setListStart__12daItemBase_cFv,
    (void*)settingBeforeDraw__12daItemBase_cFv,
    (void*)setTevStr__12daItemBase_cFv,
    (void*)setShadow__12daItemBase_cFv,
    (void*)animEntry__12daItemBase_cFv,
    (void*)RotateYBase__12daItemBase_cFv,
    (void*)clothCreate__12daItemBase_cFv,
    (void*)__CreateHeap__7daKey_cFv,
    (void*)chkFlag__12daItemBase_cFi,
    (void*)getTevFrm__12daItemBase_cFv,
    (void*)getBtpFrm__12daItemBase_cFv,
    (void*)getShadowSize__12daItemBase_cFv,
    (void*)getCollisionH__12daItemBase_cFv,
    (void*)getCollisionR__12daItemBase_cFv,
};

/* 80CDBAA0-80CDBAAC 0001F8 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 80CD9B40-80CD9E3C 000400 02FC+00 1/1 0/0 0/0 .text            Reflect__FP4cXyzRC13cBgS_PolyInfof
 */
static void Reflect(cXyz* param_0, cBgS_PolyInfo const& param_1, f32 param_2) {
    // NONMATCHING
}

/* 80CD9E3C-80CD9E84 0006FC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* 80CD9E84-80CD9EE0 000744 005C+00 1/1 0/0 0/0 .text
 * keyGetTgCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
static void keyGetTgCallBack(fopAc_ac_c* param_0, dCcD_GObjInf* param_1, fopAc_ac_c* param_2,
                                 dCcD_GObjInf* param_3) {
    // NONMATCHING
}

/* 80CD9EE0-80CD9F2C 0007A0 004C+00 1/1 0/0 0/0 .text
 * keyGetCoCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
static void keyGetCoCallBack(fopAc_ac_c* param_0, dCcD_GObjInf* param_1, fopAc_ac_c* param_2,
                                 dCcD_GObjInf* param_3) {
    // NONMATCHING
}

/* 80CD9F2C-80CD9F68 0007EC 003C+00 1/1 0/0 0/0 .text            initBaseMtx__7daKey_cFv */
void daKey_c::initBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CDB860-80CDB864 00006C 0004+00 1/2 0/0 0/0 .rodata          @4031 */
SECTION_RODATA static f32 const lit_4031 = 5.0f;
COMPILER_STRIP_GATE(0x80CDB860, &lit_4031);

/* 80CD9F68-80CD9FDC 000828 0074+00 2/2 0/0 0/0 .text            setBaseMtx__7daKey_cFv */
void daKey_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CDB864-80CDB868 000070 0004+00 0/1 0/0 0/0 .rodata          @4064 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4064 = 30.0f;
COMPILER_STRIP_GATE(0x80CDB864, &lit_4064);
#pragma pop

/* 80CDB868-80CDB86C 000074 0004+00 0/1 0/0 0/0 .rodata          @4065 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4065 = -6.0f;
COMPILER_STRIP_GATE(0x80CDB868, &lit_4065);
#pragma pop

/* 80CDB86C-80CDB874 000078 0008+00 1/2 0/0 0/0 .rodata          @4067 */
SECTION_RODATA static u8 const lit_4067[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CDB86C, &lit_4067);

/* 80CD9FDC-80CDA15C 00089C 0180+00 1/1 0/0 0/0 .text            Create__7daKey_cFv */
void daKey_c::Create() {
    // NONMATCHING
}

/* 80CDA15C-80CDA164 000A1C 0008+00 1/0 0/0 0/0 .text            __CreateHeap__7daKey_cFv */
bool daKey_c::__CreateHeap() {
    return true;
}

/* ############################################################################################## */
/* 80CDB890-80CDB890 00009C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CDB890 = "F_SP118";
#pragma pop

/* 80CDA164-80CDA404 000A24 02A0+00 1/1 0/0 0/0 .text            create__7daKey_cFv */
void daKey_c::create() {
    // NONMATCHING
}

/* 80CDA404-80CDA488 000CC4 0084+00 1/1 0/0 0/0 .text            __dt__19dPa_followEcallBackFv */
// dPa_followEcallBack::~dPa_followEcallBack() {
extern "C" void __dt__19dPa_followEcallBackFv() {
    // NONMATCHING
}

/* 80CDA488-80CDA48C 000D48 0004+00 1/0 0/0 0/0 .text            cleanup__18dPa_levelEcallBackFv */
// void dPa_levelEcallBack::cleanup() {
extern "C" void cleanup__18dPa_levelEcallBackFv() {
    /* empty function */
}

/* 80CDA48C-80CDA4B4 000D4C 0028+00 1/1 0/0 0/0 .text            __defctor__19dPa_followEcallBackFv
 */
// void dPa_followEcallBack::__defctor() {
extern "C" void __defctor__19dPa_followEcallBackFv() {
    // NONMATCHING
}

/* 80CDA4B4-80CDA4FC 000D74 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80CDA4FC-80CDA544 000DBC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80CDA544-80CDA5A0 000E04 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80CDA5A0-80CDA610 000E60 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80CDA610-80CDA680 000ED0 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CDB874-80CDB878 000080 0004+00 0/1 0/0 0/0 .rodata          @4279 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4279 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80CDB874, &lit_4279);
#pragma pop

/* 80CDB878-80CDB87C 000084 0004+00 0/2 0/0 0/0 .rodata          @4280 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4280 = 3.0f;
COMPILER_STRIP_GATE(0x80CDB878, &lit_4280);
#pragma pop

/* 80CDB87C-80CDB880 000088 0004+00 0/1 0/0 0/0 .rodata          @4281 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4281 = 2.0f;
COMPILER_STRIP_GATE(0x80CDB87C, &lit_4281);
#pragma pop

/* 80CDB880-80CDB884 00008C 0004+00 1/2 0/0 0/0 .rodata          @4282 */
SECTION_RODATA static f32 const lit_4282 = -1.0f;
COMPILER_STRIP_GATE(0x80CDB880, &lit_4282);

/* 80CDA680-80CDA7E8 000F40 0168+00 1/1 0/0 0/0 .text            bg_check__7daKey_cFv */
void daKey_c::bg_check() {
    // NONMATCHING
}

/* 80CDA7E8-80CDA81C 0010A8 0034+00 1/1 0/0 0/0 .text            actionInitInit__7daKey_cFv */
void daKey_c::actionInitInit() {
    // NONMATCHING
}

/* 80CDA81C-80CDA8C8 0010DC 00AC+00 1/0 0/0 0/0 .text            actionInit__7daKey_cFv */
void daKey_c::actionInit() {
    // NONMATCHING
}

/* 80CDA8C8-80CDA8FC 001188 0034+00 1/1 0/0 0/0 .text            actionParentWaitInit__7daKey_cFv */
void daKey_c::actionParentWaitInit() {
    // NONMATCHING
}

/* 80CDA8FC-80CDA9AC 0011BC 00B0+00 1/0 0/0 0/0 .text            actionParentWait__7daKey_cFv */
void daKey_c::actionParentWait() {
    // NONMATCHING
}

/* 80CDA9AC-80CDAA28 00126C 007C+00 3/3 0/0 1/1 .text            actionWaitInit__7daKey_cFv */
void daKey_c::actionWaitInit() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CDB884-80CDB888 000090 0004+00 0/1 0/0 0/0 .rodata          @4400 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4400 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x80CDB884, &lit_4400);
#pragma pop

/* 80CDAA28-80CDAB74 0012E8 014C+00 1/0 0/0 0/0 .text            actionWait__7daKey_cFv */
void daKey_c::actionWait() {
    // NONMATCHING
}

/* 80CDAB74-80CDAC18 001434 00A4+00 2/2 0/0 0/0 .text            initActionOrderGetDemo__7daKey_cFv
 */
void daKey_c::initActionOrderGetDemo() {
    // NONMATCHING
}

/* 80CDAC18-80CDAC94 0014D8 007C+00 1/0 0/0 0/0 .text            actionOrderGetDemo__7daKey_cFv */
void daKey_c::actionOrderGetDemo() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CDB890-80CDB890 00009C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CDB898 = "DEFAULT_GETITEM";
#pragma pop

/* 80CDAC94-80CDAD28 001554 0094+00 1/0 0/0 0/0 .text            actionGetDemo__7daKey_cFv */
void daKey_c::actionGetDemo() {
    // NONMATCHING
}

/* 80CDAD28-80CDADD4 0015E8 00AC+00 1/1 0/0 0/0 .text            actionInitSwOnWait__7daKey_cFv */
void daKey_c::actionInitSwOnWait() {
    // NONMATCHING
}

/* 80CDADD4-80CDAE54 001694 0080+00 1/0 0/0 0/0 .text            actionSwOnWait__7daKey_cFv */
void daKey_c::actionSwOnWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CDB888-80CDB88C 000094 0004+00 1/1 0/0 0/0 .rodata          @4503 */
SECTION_RODATA static f32 const lit_4503 = 4.0f;
COMPILER_STRIP_GATE(0x80CDB888, &lit_4503);

/* 80CDAE54-80CDAF40 001714 00EC+00 1/1 0/0 0/0 .text actionInitBoomerangCarry__7daKey_cFv */
void daKey_c::actionInitBoomerangCarry() {
    // NONMATCHING
}

/* 80CDAF40-80CDAFB4 001800 0074+00 1/0 0/0 0/0 .text            actionBoomerangCarry__7daKey_cFv */
void daKey_c::actionBoomerangCarry() {
    // NONMATCHING
}

/* 80CDAFB4-80CDB0D8 001874 0124+00 2/2 0/0 0/0 .text            effectSet__7daKey_cFv */
void daKey_c::effectSet() {
    // NONMATCHING
}

/* 80CDB0D8-80CDB128 001998 0050+00 2/2 0/0 0/0 .text            effectStop__7daKey_cFv */
void daKey_c::effectStop() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CDB88C-80CDB890 000098 0004+00 0/1 0/0 0/0 .rodata          @4618 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4618 = 1000.0f;
COMPILER_STRIP_GATE(0x80CDB88C, &lit_4618);
#pragma pop

/* 80CDB128-80CDB2E0 0019E8 01B8+00 1/1 0/0 0/0 .text            effectCtrl__7daKey_cFv */
void daKey_c::effectCtrl() {
    // NONMATCHING
}

/* 80CDB2E0-80CDB36C 001BA0 008C+00 5/5 0/0 0/0 .text            seStartTwinkle_private__7daKey_cFUl
 */
void daKey_c::seStartTwinkle_private(u32 param_0) {
    // NONMATCHING
}

/* 80CDB36C-80CDB3D8 001C2C 006C+00 1/1 0/0 0/0 .text            actionInitE_GB__7daKey_cFv */
void daKey_c::actionInitE_GB() {
    // NONMATCHING
}

/* 80CDB3D8-80CDB404 001C98 002C+00 1/0 0/0 0/0 .text            actionE_GB__7daKey_cFv */
void daKey_c::actionE_GB() {
    // NONMATCHING
}

/* 80CDB404-80CDB5D4 001CC4 01D0+00 2/2 0/0 0/0 .text            execute__7daKey_cFv */
void daKey_c::execute() {
    // NONMATCHING
}

/* 80CDB5D4-80CDB628 001E94 0054+00 1/1 0/0 0/0 .text            draw__7daKey_cFv */
void daKey_c::draw() {
    // NONMATCHING
}

/* 80CDB628-80CDB674 001EE8 004C+00 1/1 0/0 0/0 .text            _delete__7daKey_cFv */
void daKey_c::_delete() {
    // NONMATCHING
}

/* 80CDB674-80CDB694 001F34 0020+00 1/0 0/0 0/0 .text            daKey_Draw__FP7daKey_c */
static void daKey_Draw(daKey_c* param_0) {
    // NONMATCHING
}

/* 80CDB694-80CDB6B4 001F54 0020+00 1/0 0/0 0/0 .text            daKey_Execute__FP7daKey_c */
static void daKey_Execute(daKey_c* param_0) {
    // NONMATCHING
}

/* 80CDB6B4-80CDB6D4 001F74 0020+00 1/0 0/0 0/0 .text            daKey_Delete__FP7daKey_c */
static void daKey_Delete(daKey_c* param_0) {
    // NONMATCHING
}

/* 80CDB6D4-80CDB6F4 001F94 0020+00 1/0 0/0 0/0 .text            daKey_Create__FP10fopAc_ac_c */
static void daKey_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80CDB6F4-80CDB73C 001FB4 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80CDB73C-80CDB7B0 001FFC 0074+00 1/0 0/0 0/0 .text            __dt__18dPa_levelEcallBackFv */
// dPa_levelEcallBack::~dPa_levelEcallBack() {
extern "C" void __dt__18dPa_levelEcallBackFv() {
    // NONMATCHING
}

/* 80CDB7B0-80CDB7B4 002070 0004+00 1/0 0/0 0/0 .text
 * execute__18JPAEmitterCallBackFP14JPABaseEmitter              */
// void JPAEmitterCallBack::execute(JPABaseEmitter* param_0) {
extern "C" void execute__18JPAEmitterCallBackFP14JPABaseEmitter() {
    /* empty function */
}

/* 80CDB7B4-80CDB7B8 002074 0004+00 1/0 0/0 0/0 .text
 * executeAfter__18JPAEmitterCallBackFP14JPABaseEmitter         */
// void JPAEmitterCallBack::executeAfter(JPABaseEmitter* param_0) {
extern "C" void executeAfter__18JPAEmitterCallBackFP14JPABaseEmitter() {
    /* empty function */
}

/* 80CDB7B8-80CDB7BC 002078 0004+00 1/0 0/0 0/0 .text draw__18JPAEmitterCallBackFP14JPABaseEmitter
 */
// void JPAEmitterCallBack::draw(JPABaseEmitter* param_0) {
extern "C" void draw__18JPAEmitterCallBackFP14JPABaseEmitter() {
    /* empty function */
}

/* 80CDB7BC-80CDB7C0 00207C 0004+00 1/0 0/0 0/0 .text
 * drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter            */
// void JPAEmitterCallBack::drawAfter(JPABaseEmitter* param_0) {
extern "C" void drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter() {
    /* empty function */
}

/* 80CDB7C0-80CDB7DC 002080 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<Uc>__FPUc */
extern "C" void func_80CDB7C0(void* _this, u8* param_0) {
    // NONMATCHING
}

/* 80CDB7DC-80CDB7E4 00209C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80CDB7DC() {
    // NONMATCHING
}

/* 80CDB7E4-80CDB7EC 0020A4 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80CDB7E4() {
    // NONMATCHING
}

/* 80CDB890-80CDB890 00009C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
