/**
 * @file d_a_obj_wood_statue.cpp
 * 
*/

#include "rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue.h"
#include "d/cc/d_cc_d.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void Reflect__FP4cXyzRC13cBgS_PolyInfof();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" static void
lifeGetTgCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" static void
lifeGetCoCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" static void s_sh_sub__FPvPv();
extern "C" void initBaseMtx__14daObjWStatue_cFv();
extern "C" void setBaseMtx__14daObjWStatue_cFv();
extern "C" void Create__14daObjWStatue_cFv();
extern "C" bool __CreateHeap__14daObjWStatue_cFv();
extern "C" void create__14daObjWStatue_cFv();
extern "C" void __dt__19dPa_followEcallBackFv();
extern "C" void cleanup__18dPa_levelEcallBackFv();
extern "C" void __defctor__19dPa_followEcallBackFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void bg_check__14daObjWStatue_cFv();
extern "C" void actionWaitInit__14daObjWStatue_cFv();
extern "C" void actionWait__14daObjWStatue_cFv();
extern "C" void initActionOrderGetDemo__14daObjWStatue_cFv();
extern "C" void actionOrderGetDemo__14daObjWStatue_cFv();
extern "C" void actionGetDemo__14daObjWStatue_cFv();
extern "C" void actionInitSwOnWait__14daObjWStatue_cFv();
extern "C" void actionSwOnWait__14daObjWStatue_cFv();
extern "C" void actionInitBoomerangCarry__14daObjWStatue_cFv();
extern "C" void actionBoomerangCarry__14daObjWStatue_cFv();
extern "C" void demoProc__14daObjWStatue_cFv();
extern "C" void effectSet__14daObjWStatue_cFv();
extern "C" void effectStop__14daObjWStatue_cFv();
extern "C" void execute__14daObjWStatue_cFv();
extern "C" void draw__14daObjWStatue_cFv();
extern "C" void setListStart__14daObjWStatue_cFv();
extern "C" void _delete__14daObjWStatue_cFv();
extern "C" static void daObjWStatue_Draw__FP14daObjWStatue_c();
extern "C" static void daObjWStatue_Execute__FP14daObjWStatue_c();
extern "C" static void daObjWStatue_Delete__FP14daObjWStatue_c();
extern "C" static void daObjWStatue_Create__FP10fopAc_ac_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__18dPa_levelEcallBackFv();
extern "C" void execute__18JPAEmitterCallBackFP14JPABaseEmitter();
extern "C" void executeAfter__18JPAEmitterCallBackFP14JPABaseEmitter();
extern "C" void draw__18JPAEmitterCallBackFP14JPABaseEmitter();
extern "C" void drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter();
extern "C" void func_80D3B604(void* _this, u8*);
extern "C" static void func_80D3B620();
extern "C" static void func_80D3B628();
extern "C" extern char const* const d_a_obj_wood_statue__stringBase0;

//
// External References:
//

extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs();
extern "C" void fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs();
extern "C" void fopAcM_createItemForTrBoxDemo__FPC4cXyziiiPC5csXyzPC4cXyz();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcSch_JudgeForPName__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void hide__12daItemBase_cFv();
extern "C" void show__12daItemBase_cFv();
extern "C" void chkDraw__12daItemBase_cFv();
extern "C" void CheckFieldItemCreateHeap__FP10fopAc_ac_c();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void reset__14dEvt_control_cFPv();
extern "C" void setPtI_Id__14dEvt_control_cFUi();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void endCheckOld__16dEvent_manager_cFPCc();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void setGoal__16dEvent_manager_cFP4cXyz();
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
extern "C" void GetAc__22dCcD_GAtTgCoCommonBaseFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void DeleteBase__12daItemBase_cFPCc();
extern "C" bool clothCreate__12daItemBase_cFv();
extern "C" void DrawBase__12daItemBase_cFv();
extern "C" void RotateYBase__12daItemBase_cFv();
extern "C" void settingBeforeDraw__12daItemBase_cFv();
extern "C" void setTevStr__12daItemBase_cFv();
extern "C" void setShadow__12daItemBase_cFv();
extern "C" void animEntry__12daItemBase_cFv();
extern "C" void animPlay__12daItemBase_cFffffff();
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
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void __ptmf_scall();
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
extern "C" extern u8 data_80D3B8F0[4];

//
// Declarations:
//

/* ############################################################################################## */
/* 80D3B638-80D3B67C 000000 0044+00 5/5 0/0 0/0 .rodata          l_cyl_src */
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

/* 80D3B67C-80D3B680 000044 0004+00 0/3 0/0 0/0 .rodata          @3857 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3857[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D3B67C, &lit_3857);
#pragma pop

/* 80D3B680-80D3B688 000048 0008+00 0/1 0/0 0/0 .rodata          @3858 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3858[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D3B680, &lit_3858);
#pragma pop

/* 80D3B688-80D3B690 000050 0008+00 0/1 0/0 0/0 .rodata          @3859 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3859[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D3B688, &lit_3859);
#pragma pop

/* 80D3B690-80D3B698 000058 0008+00 0/1 0/0 0/0 .rodata          @3860 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3860[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D3B690, &lit_3860);
#pragma pop

/* 80D3B6D4-80D3B6D4 00009C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D3B6D4 = "O_wood";
SECTION_DEAD static char const* const stringBase_80D3B6DB = "GET_WOOD_STATUE";
SECTION_DEAD static char const* const stringBase_80D3B6EB = "DEFAULT_GETITEM";
SECTION_DEAD static char const* const stringBase_80D3B6FB = "WAIT";
SECTION_DEAD static char const* const stringBase_80D3B700 = "MOVE";
SECTION_DEAD static char const* const stringBase_80D3B705 = "SETPOS";
SECTION_DEAD static char const* const stringBase_80D3B70C = "NOTEND";
#pragma pop

/* 80D3B71C-80D3B728 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80D3B728-80D3B73C 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80D3B73C-80D3B740 -00001 0004+00 1/1 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_wood_statue__stringBase0;

/* 80D3B740-80D3B744 -00001 0004+00 1/1 0/0 0/0 .data            l_eventName */
SECTION_DATA static void* l_eventName = (void*)(((char*)&d_a_obj_wood_statue__stringBase0) + 0x7);

/* 80D3B744-80D3B754 -00001 0010+00 1/1 0/0 0/0 .data            action_table$4273 */
SECTION_DATA static void* action_table[4] = {
    (void*)(((char*)&d_a_obj_wood_statue__stringBase0) + 0x27),
    (void*)(((char*)&d_a_obj_wood_statue__stringBase0) + 0x2C),
    (void*)(((char*)&d_a_obj_wood_statue__stringBase0) + 0x31),
    (void*)(((char*)&d_a_obj_wood_statue__stringBase0) + 0x38),
};

/* 80D3B754-80D3B760 -00001 000C+00 0/1 0/0 0/0 .data            @4356 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4356[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionWait__14daObjWStatue_cFv,
};
#pragma pop

/* 80D3B760-80D3B76C -00001 000C+00 0/1 0/0 0/0 .data            @4357 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4357[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionOrderGetDemo__14daObjWStatue_cFv,
};
#pragma pop

/* 80D3B76C-80D3B778 -00001 000C+00 0/1 0/0 0/0 .data            @4358 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4358[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionGetDemo__14daObjWStatue_cFv,
};
#pragma pop

/* 80D3B778-80D3B784 -00001 000C+00 0/1 0/0 0/0 .data            @4359 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4359[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionSwOnWait__14daObjWStatue_cFv,
};
#pragma pop

/* 80D3B784-80D3B790 -00001 000C+00 0/1 0/0 0/0 .data            @4360 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4360[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionBoomerangCarry__14daObjWStatue_cFv,
};
#pragma pop

/* 80D3B790-80D3B7CC 000074 003C+00 0/1 0/0 0/0 .data            l_demoFunc$4355 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_demoFunc[60] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80D3B7CC-80D3B7EC -00001 0020+00 1/0 0/0 0/0 .data            l_daObjWStatue_Method */
static actor_method_class l_daObjWStatue_Method = {
    (process_method_func)daObjWStatue_Create__FP10fopAc_ac_c,
    (process_method_func)daObjWStatue_Delete__FP14daObjWStatue_c,
    (process_method_func)daObjWStatue_Execute__FP14daObjWStatue_c,
    0,
    (process_method_func)daObjWStatue_Draw__FP14daObjWStatue_c,
};

/* 80D3B7EC-80D3B81C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_WoodStatue */
extern actor_process_profile_definition g_profile_Obj_WoodStatue = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_WoodStatue,    // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daObjWStatue_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  563,                    // mPriority
  &l_daObjWStatue_Method, // sub_method
  0x00044100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80D3B81C-80D3B828 000100 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80D3B828-80D3B834 00010C 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80D3B834-80D3B840 000118 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80D3B840-80D3B864 000124 0024+00 2/2 0/0 0/0 .data            __vt__18dPa_levelEcallBack */
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

/* 80D3B864-80D3B870 000148 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80D3B870-80D3B87C 000154 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80D3B87C-80D3B8A0 000160 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D3B628,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D3B620,
};

/* 80D3B8A0-80D3B8E4 000184 0044+00 1/1 0/0 0/0 .data            __vt__14daObjWStatue_c */
SECTION_DATA extern void* __vt__14daObjWStatue_c[17] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)DrawBase__12daItemBase_cFv,
    (void*)setListStart__14daObjWStatue_cFv,
    (void*)settingBeforeDraw__12daItemBase_cFv,
    (void*)setTevStr__12daItemBase_cFv,
    (void*)setShadow__12daItemBase_cFv,
    (void*)animEntry__12daItemBase_cFv,
    (void*)RotateYBase__12daItemBase_cFv,
    (void*)clothCreate__12daItemBase_cFv,
    (void*)__CreateHeap__14daObjWStatue_cFv,
    (void*)chkFlag__12daItemBase_cFi,
    (void*)getTevFrm__12daItemBase_cFv,
    (void*)getBtpFrm__12daItemBase_cFv,
    (void*)getShadowSize__12daItemBase_cFv,
    (void*)getCollisionH__12daItemBase_cFv,
    (void*)getCollisionR__12daItemBase_cFv,
};

/* 80D3B8E4-80D3B8F0 0001C8 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 80D39E38-80D3A134 000078 02FC+00 1/1 0/0 0/0 .text            Reflect__FP4cXyzRC13cBgS_PolyInfof
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void Reflect(cXyz* param_0, cBgS_PolyInfo const& param_1, f32 param_2) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/Reflect__FP4cXyzRC13cBgS_PolyInfof.s"
}
#pragma pop

/* 80D3A134-80D3A17C 000374 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGPla::~cM3dGPla() {
extern "C" asm void __dt__8cM3dGPlaFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/__dt__8cM3dGPlaFv.s"
}
#pragma pop

/* 80D3A17C-80D3A1D8 0003BC 005C+00 1/1 0/0 0/0 .text
 * lifeGetTgCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void lifeGetTgCallBack(fopAc_ac_c* param_0, dCcD_GObjInf* param_1, fopAc_ac_c* param_2,
                                  dCcD_GObjInf* param_3) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/func_80D3A17C.s"
}
#pragma pop

/* 80D3A1D8-80D3A21C 000418 0044+00 1/1 0/0 0/0 .text
 * lifeGetCoCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void lifeGetCoCallBack(fopAc_ac_c* param_0, dCcD_GObjInf* param_1, fopAc_ac_c* param_2,
                                  dCcD_GObjInf* param_3) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/func_80D3A1D8.s"
}
#pragma pop

/* 80D3A21C-80D3A268 00045C 004C+00 1/1 0/0 0/0 .text            s_sh_sub__FPvPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void s_sh_sub(void* param_0, void* param_1) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/s_sh_sub__FPvPv.s"
}
#pragma pop

/* 80D3A268-80D3A2A4 0004A8 003C+00 1/1 0/0 0/0 .text            initBaseMtx__14daObjWStatue_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWStatue_c::initBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/initBaseMtx__14daObjWStatue_cFv.s"
}
#pragma pop

/* 80D3A2A4-80D3A2F0 0004E4 004C+00 2/2 0/0 0/0 .text            setBaseMtx__14daObjWStatue_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWStatue_c::setBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/setBaseMtx__14daObjWStatue_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D3B698-80D3B69C 000060 0004+00 0/1 0/0 0/0 .rodata          @3943 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3943 = 30.0f;
COMPILER_STRIP_GATE(0x80D3B698, &lit_3943);
#pragma pop

/* 80D3B69C-80D3B6A0 000064 0004+00 0/1 0/0 0/0 .rodata          @3944 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3944 = -6.0f;
COMPILER_STRIP_GATE(0x80D3B69C, &lit_3944);
#pragma pop

/* 80D3B6A0-80D3B6A8 000068 0008+00 1/2 0/0 0/0 .rodata          @3946 */
SECTION_RODATA static u8 const lit_3946[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D3B6A0, &lit_3946);

/* 80D3A2F0-80D3A474 000530 0184+00 1/1 0/0 0/0 .text            Create__14daObjWStatue_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWStatue_c::Create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/Create__14daObjWStatue_cFv.s"
}
#pragma pop

/* 80D3A474-80D3A47C 0006B4 0008+00 1/0 0/0 0/0 .text            __CreateHeap__14daObjWStatue_cFv */
bool daObjWStatue_c::__CreateHeap() {
    return true;
}

/* 80D3A47C-80D3A66C 0006BC 01F0+00 1/1 0/0 0/0 .text            create__14daObjWStatue_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWStatue_c::create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/func_80D3A47C.s"
}
#pragma pop

/* 80D3A66C-80D3A6F0 0008AC 0084+00 1/1 0/0 0/0 .text            __dt__19dPa_followEcallBackFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dPa_followEcallBack::~dPa_followEcallBack() {
extern "C" asm void __dt__19dPa_followEcallBackFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/__dt__19dPa_followEcallBackFv.s"
}
#pragma pop

/* 80D3A6F0-80D3A6F4 000930 0004+00 1/0 0/0 0/0 .text            cleanup__18dPa_levelEcallBackFv */
// void dPa_levelEcallBack::cleanup() {
extern "C" asm void cleanup__18dPa_levelEcallBackFv() {
    /* empty function */
}

/* 80D3A6F4-80D3A71C 000934 0028+00 1/1 0/0 0/0 .text            __defctor__19dPa_followEcallBackFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void dPa_followEcallBack::__defctor() {
extern "C" asm void __defctor__19dPa_followEcallBackFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/__defctor__19dPa_followEcallBackFv.s"
}
#pragma pop

/* 80D3A71C-80D3A764 00095C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGCyl::~cM3dGCyl() {
extern "C" asm void __dt__8cM3dGCylFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/__dt__8cM3dGCylFv.s"
}
#pragma pop

/* 80D3A764-80D3A7AC 0009A4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80D3A7AC-80D3A808 0009EC 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 80D3A808-80D3A878 000A48 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 80D3A878-80D3A8E8 000AB8 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D3B6A8-80D3B6AC 000070 0004+00 0/1 0/0 0/0 .rodata          @4128 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4128 = 5.0f;
COMPILER_STRIP_GATE(0x80D3B6A8, &lit_4128);
#pragma pop

/* 80D3B6AC-80D3B6B0 000074 0004+00 2/4 0/0 0/0 .rodata          @4129 */
SECTION_RODATA static f32 const lit_4129 = 1.0f;
COMPILER_STRIP_GATE(0x80D3B6AC, &lit_4129);

/* 80D3B6B0-80D3B6B4 000078 0004+00 0/1 0/0 0/0 .rodata          @4130 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4130 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80D3B6B0, &lit_4130);
#pragma pop

/* 80D3B6B4-80D3B6B8 00007C 0004+00 0/1 0/0 0/0 .rodata          @4131 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4131 = 3.0f;
COMPILER_STRIP_GATE(0x80D3B6B4, &lit_4131);
#pragma pop

/* 80D3B6B8-80D3B6BC 000080 0004+00 0/1 0/0 0/0 .rodata          @4132 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4132 = -1.0f;
COMPILER_STRIP_GATE(0x80D3B6B8, &lit_4132);
#pragma pop

/* 80D3A8E8-80D3AA3C 000B28 0154+00 1/1 0/0 0/0 .text            bg_check__14daObjWStatue_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWStatue_c::bg_check() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/bg_check__14daObjWStatue_cFv.s"
}
#pragma pop

/* 80D3AA3C-80D3AA80 000C7C 0044+00 1/1 0/0 0/0 .text            actionWaitInit__14daObjWStatue_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWStatue_c::actionWaitInit() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/actionWaitInit__14daObjWStatue_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D3B6BC-80D3B6C0 000084 0004+00 0/1 0/0 0/0 .rodata          @4168 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4168 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x80D3B6BC, &lit_4168);
#pragma pop

/* 80D3AA80-80D3AB9C 000CC0 011C+00 1/0 0/0 0/0 .text            actionWait__14daObjWStatue_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWStatue_c::actionWait() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/actionWait__14daObjWStatue_cFv.s"
}
#pragma pop

/* 80D3AB9C-80D3AC64 000DDC 00C8+00 2/2 0/0 0/0 .text initActionOrderGetDemo__14daObjWStatue_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWStatue_c::initActionOrderGetDemo() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/initActionOrderGetDemo__14daObjWStatue_cFv.s"
}
#pragma pop

/* 80D3AC64-80D3ACAC 000EA4 0048+00 1/0 0/0 0/0 .text actionOrderGetDemo__14daObjWStatue_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWStatue_c::actionOrderGetDemo() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/actionOrderGetDemo__14daObjWStatue_cFv.s"
}
#pragma pop

/* 80D3ACAC-80D3AD30 000EEC 0084+00 1/0 0/0 0/0 .text            actionGetDemo__14daObjWStatue_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWStatue_c::actionGetDemo() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/actionGetDemo__14daObjWStatue_cFv.s"
}
#pragma pop

/* 80D3AD30-80D3AD88 000F70 0058+00 1/1 0/0 0/0 .text actionInitSwOnWait__14daObjWStatue_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWStatue_c::actionInitSwOnWait() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/actionInitSwOnWait__14daObjWStatue_cFv.s"
}
#pragma pop

/* 80D3AD88-80D3AE7C 000FC8 00F4+00 1/0 0/0 0/0 .text            actionSwOnWait__14daObjWStatue_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWStatue_c::actionSwOnWait() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/actionSwOnWait__14daObjWStatue_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D3B6C0-80D3B6C4 000088 0004+00 1/1 0/0 0/0 .rodata          @4256 */
SECTION_RODATA static f32 const lit_4256 = 4.0f;
COMPILER_STRIP_GATE(0x80D3B6C0, &lit_4256);

/* 80D3AE7C-80D3AF5C 0010BC 00E0+00 1/1 0/0 0/0 .text actionInitBoomerangCarry__14daObjWStatue_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWStatue_c::actionInitBoomerangCarry() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/actionInitBoomerangCarry__14daObjWStatue_cFv.s"
}
#pragma pop

/* 80D3AF5C-80D3AFC0 00119C 0064+00 1/0 0/0 0/0 .text actionBoomerangCarry__14daObjWStatue_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWStatue_c::actionBoomerangCarry() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/actionBoomerangCarry__14daObjWStatue_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D3B6C4-80D3B6C8 00008C 0004+00 0/1 0/0 0/0 .rodata          @4321 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4321 = 10.0f;
COMPILER_STRIP_GATE(0x80D3B6C4, &lit_4321);
#pragma pop

/* 80D3B6C8-80D3B6CC 000090 0004+00 0/1 0/0 0/0 .rodata          @4322 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4322 = -2.5f;
COMPILER_STRIP_GATE(0x80D3B6C8, &lit_4322);
#pragma pop

/* 80D3B6CC-80D3B6D0 000094 0004+00 0/1 0/0 0/0 .rodata          @4323 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4323 = 20.0f;
COMPILER_STRIP_GATE(0x80D3B6CC, &lit_4323);
#pragma pop

/* 80D3B6D0-80D3B6D4 000098 0004+00 0/1 0/0 0/0 .rodata          @4324 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4324 = 100.0f;
COMPILER_STRIP_GATE(0x80D3B6D0, &lit_4324);
#pragma pop

/* 80D3B6D4-80D3B6D4 00009C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D3B713 = "Timer";
#pragma pop

/* 80D3AFC0-80D3B164 001200 01A4+00 1/1 0/0 0/0 .text            demoProc__14daObjWStatue_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWStatue_c::demoProc() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/demoProc__14daObjWStatue_cFv.s"
}
#pragma pop

/* 80D3B164-80D3B250 0013A4 00EC+00 1/1 0/0 0/0 .text            effectSet__14daObjWStatue_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWStatue_c::effectSet() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/effectSet__14daObjWStatue_cFv.s"
}
#pragma pop

/* 80D3B250-80D3B2A0 001490 0050+00 1/1 0/0 0/0 .text            effectStop__14daObjWStatue_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWStatue_c::effectStop() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/effectStop__14daObjWStatue_cFv.s"
}
#pragma pop

/* 80D3B2A0-80D3B428 0014E0 0188+00 1/1 0/0 0/0 .text            execute__14daObjWStatue_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWStatue_c::execute() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/execute__14daObjWStatue_cFv.s"
}
#pragma pop

/* 80D3B428-80D3B47C 001668 0054+00 1/1 0/0 0/0 .text            draw__14daObjWStatue_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWStatue_c::draw() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/draw__14daObjWStatue_cFv.s"
}
#pragma pop

/* 80D3B47C-80D3B480 0016BC 0004+00 1/0 0/0 0/0 .text            setListStart__14daObjWStatue_cFv */
void daObjWStatue_c::setListStart() {
    /* empty function */
}

/* 80D3B480-80D3B4B8 0016C0 0038+00 1/1 0/0 0/0 .text            _delete__14daObjWStatue_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWStatue_c::_delete() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/_delete__14daObjWStatue_cFv.s"
}
#pragma pop

/* 80D3B4B8-80D3B4D8 0016F8 0020+00 1/0 0/0 0/0 .text daObjWStatue_Draw__FP14daObjWStatue_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjWStatue_Draw(daObjWStatue_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/daObjWStatue_Draw__FP14daObjWStatue_c.s"
}
#pragma pop

/* 80D3B4D8-80D3B4F8 001718 0020+00 1/0 0/0 0/0 .text daObjWStatue_Execute__FP14daObjWStatue_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjWStatue_Execute(daObjWStatue_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/daObjWStatue_Execute__FP14daObjWStatue_c.s"
}
#pragma pop

/* 80D3B4F8-80D3B518 001738 0020+00 1/0 0/0 0/0 .text daObjWStatue_Delete__FP14daObjWStatue_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjWStatue_Delete(daObjWStatue_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/daObjWStatue_Delete__FP14daObjWStatue_c.s"
}
#pragma pop

/* 80D3B518-80D3B538 001758 0020+00 1/0 0/0 0/0 .text            daObjWStatue_Create__FP10fopAc_ac_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjWStatue_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/daObjWStatue_Create__FP10fopAc_ac_c.s"
}
#pragma pop

/* 80D3B538-80D3B580 001778 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 80D3B580-80D3B5F4 0017C0 0074+00 1/0 0/0 0/0 .text            __dt__18dPa_levelEcallBackFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dPa_levelEcallBack::~dPa_levelEcallBack() {
extern "C" asm void __dt__18dPa_levelEcallBackFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/__dt__18dPa_levelEcallBackFv.s"
}
#pragma pop

/* 80D3B5F4-80D3B5F8 001834 0004+00 1/0 0/0 0/0 .text
 * execute__18JPAEmitterCallBackFP14JPABaseEmitter              */
// void JPAEmitterCallBack::execute(JPABaseEmitter* param_0) {
extern "C" asm void execute__18JPAEmitterCallBackFP14JPABaseEmitter() {
    /* empty function */
}

/* 80D3B5F8-80D3B5FC 001838 0004+00 1/0 0/0 0/0 .text
 * executeAfter__18JPAEmitterCallBackFP14JPABaseEmitter         */
// void JPAEmitterCallBack::executeAfter(JPABaseEmitter* param_0) {
extern "C" asm void executeAfter__18JPAEmitterCallBackFP14JPABaseEmitter() {
    /* empty function */
}

/* 80D3B5FC-80D3B600 00183C 0004+00 1/0 0/0 0/0 .text draw__18JPAEmitterCallBackFP14JPABaseEmitter
 */
// void JPAEmitterCallBack::draw(JPABaseEmitter* param_0) {
extern "C" asm void draw__18JPAEmitterCallBackFP14JPABaseEmitter() {
    /* empty function */
}

/* 80D3B600-80D3B604 001840 0004+00 1/0 0/0 0/0 .text
 * drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter            */
// void JPAEmitterCallBack::drawAfter(JPABaseEmitter* param_0) {
extern "C" asm void drawAfter__18JPAEmitterCallBackFP14JPABaseEmitter() {
    /* empty function */
}

/* 80D3B604-80D3B620 001844 001C+00 2/2 0/0 0/0 .text            cLib_calcTimer<Uc>__FPUc */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_80D3B604(void* _this, u8* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/func_80D3B604.s"
}
#pragma pop

/* 80D3B620-80D3B628 001860 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80D3B620() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/func_80D3B620.s"
}
#pragma pop

/* 80D3B628-80D3B630 001868 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80D3B628() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wood_statue/d_a_obj_wood_statue/func_80D3B628.s"
}
#pragma pop

/* 80D3B6D4-80D3B6D4 00009C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
