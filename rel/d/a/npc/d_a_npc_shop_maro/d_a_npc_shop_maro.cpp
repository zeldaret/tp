/**
 * @file d_a_npc_shop_maro.cpp
 * 
*/

#include "rel/d/a/npc/d_a_npc_shop_maro/d_a_npc_shop_maro.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" static void daNpc_shopMaro_Create__FPv();
extern "C" static void daNpc_shopMaro_Delete__FPv();
extern "C" static bool daNpc_shopMaro_Execute__FPv();
extern "C" static bool daNpc_shopMaro_Draw__FPv();
extern "C" static bool daNpc_shopMaro_IsDelete__FPv();
extern "C" void create__16daNpc_shopMaro_cFv();
extern "C" void __ct__16daNpc_shopMaro_cFv();
extern "C" void __dt__16daNpc_shopMaro_cFv();
extern "C" void
__ct__13dShopSystem_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" void __dt__4cXyzFv();
extern "C" bool getResName2__13dShopSystem_cFi();
extern "C" bool beforeStartSeqAction__13dShopSystem_cFP10dMsgFlow_ci();
extern "C" bool beforeSelectSeqAction__13dShopSystem_cFP10dMsgFlow_ci();
extern "C" void __dt__5csXyzFv();
extern "C" void
__ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" void __ct__5csXyzFv();
extern "C" void __dt__15daNpcT_JntAnm_cFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__18daNpcT_ActorMngr_cFv();
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi();
extern "C" bool checkChangeJoint__8daNpcT_cFi();
extern "C" bool checkRemoveJoint__8daNpcT_cFi();
extern "C" s32 getBackboneJointNo__8daNpcT_cFv();
extern "C" s32 getNeckJointNo__8daNpcT_cFv();
extern "C" s32 getHeadJointNo__8daNpcT_cFv();
extern "C" s32 getFootLJointNo__8daNpcT_cFv();
extern "C" s32 getFootRJointNo__8daNpcT_cFv();
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv();
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv();
extern "C" bool getEyeballMaterialNo__8daNpcT_cFv();
extern "C" void afterJntAnm__8daNpcT_cFi();
extern "C" void setParam__8daNpcT_cFv();
extern "C" bool checkChangeEvt__8daNpcT_cFv();
extern "C" bool evtTalk__8daNpcT_cFv();
extern "C" bool evtEndProc__8daNpcT_cFv();
extern "C" bool evtCutProc__8daNpcT_cFv();
extern "C" void setAfterTalkMotion__8daNpcT_cFv();
extern "C" void action__8daNpcT_cFv();
extern "C" void beforeMove__8daNpcT_cFv();
extern "C" void afterMoved__8daNpcT_cFv();
extern "C" void setAttnPos__8daNpcT_cFv();
extern "C" void setCollision__8daNpcT_cFv();
extern "C" bool chkXYItems__8daNpcT_cFv();
extern "C" void decTmr__8daNpcT_cFv();
extern "C" bool drawDbgInfo__8daNpcT_cFv();
extern "C" void drawOtherMdl__8daNpcT_cFv();
extern "C" void drawGhost__8daNpcT_cFv();
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi();
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi();
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c();
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c();
extern "C" void changeAnm__8daNpcT_cFPiPi();
extern "C" void changeBck__8daNpcT_cFPiPi();
extern "C" void changeBtp__8daNpcT_cFPiPi();
extern "C" void changeBtk__8daNpcT_cFPiPi();
extern "C" static void func_80AEC900();
extern "C" static void func_80AEC908();

//
// External References:
//

extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void initialize__18daNpcT_ActorMngr_cFv();
extern "C" void initialize__22daNpcT_MotionSeqMngr_cFv();
extern "C" void initialize__15daNpcT_JntAnm_cFv();
extern "C" void ctrlBtk__8daNpcT_cFv();
extern "C" void ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel();
extern "C" void evtProc__8daNpcT_cFv();
extern "C" void setFootPos__8daNpcT_cFv();
extern "C" void setFootPrtcl__8daNpcT_cFP4cXyzff();
extern "C" bool checkCullDraw__8daNpcT_cFv();
extern "C" void twilight__8daNpcT_cFv();
extern "C" void evtOrder__8daNpcT_cFv();
extern "C" void clrParam__8daNpcT_cFv();
extern "C" void setMotionAnm__8daNpcT_cFifi();
extern "C" void __ct__15dShopItemCtrl_cFv();
extern "C" void initShopSystem__13dShopSystem_cFv();
extern "C" void __dt__13dShopSystem_cFv();
extern "C" void deleteObject__13dShopSystem_cFv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void cM_rndF__Ff();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void _savegpr_22();
extern "C" void _restgpr_22();
extern "C" extern u8 const __ptmf_null[12 + 4 /* padding */];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__8daNpcT_c[49];
extern "C" extern void* __vt__13dShopSystem_c[52 + 1 /* padding */];
extern "C" extern void* __vt__9cCcD_Stts[8];

//
// Declarations:
//

/* 80AEBE58-80AEBE78 000078 0020+00 1/0 0/0 0/0 .text            daNpc_shopMaro_Create__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpc_shopMaro_Create(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop_maro/d_a_npc_shop_maro/daNpc_shopMaro_Create__FPv.s"
}
#pragma pop

/* 80AEBE78-80AEBE9C 000098 0024+00 1/0 0/0 0/0 .text            daNpc_shopMaro_Delete__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpc_shopMaro_Delete(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop_maro/d_a_npc_shop_maro/daNpc_shopMaro_Delete__FPv.s"
}
#pragma pop

/* 80AEBE9C-80AEBEA4 0000BC 0008+00 1/0 0/0 0/0 .text            daNpc_shopMaro_Execute__FPv */
static bool daNpc_shopMaro_Execute(void* param_0) {
    return false;
}

/* 80AEBEA4-80AEBEAC 0000C4 0008+00 1/0 0/0 0/0 .text            daNpc_shopMaro_Draw__FPv */
static bool daNpc_shopMaro_Draw(void* param_0) {
    return false;
}

/* 80AEBEAC-80AEBEB4 0000CC 0008+00 1/0 0/0 0/0 .text            daNpc_shopMaro_IsDelete__FPv */
static bool daNpc_shopMaro_IsDelete(void* param_0) {
    return true;
}

/* 80AEBEB4-80AEBF04 0000D4 0050+00 1/1 0/0 0/0 .text            create__16daNpc_shopMaro_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_shopMaro_c::create() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop_maro/d_a_npc_shop_maro/create__16daNpc_shopMaro_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80AEC938-80AEC958 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_shopMaro_MethodTable */
static actor_method_class daNpc_shopMaro_MethodTable = {
    (process_method_func)daNpc_shopMaro_Create__FPv,
    (process_method_func)daNpc_shopMaro_Delete__FPv,
    (process_method_func)daNpc_shopMaro_Execute__FPv,
    (process_method_func)daNpc_shopMaro_IsDelete__FPv,
    (process_method_func)daNpc_shopMaro_Draw__FPv,
};

/* 80AEC958-80AEC988 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_SMARO */
extern actor_process_profile_definition g_profile_NPC_SMARO = {
  fpcLy_CURRENT_e,             // mLayerID
  7,                           // mListID
  fpcPi_CURRENT_e,             // mListPrio
  PROC_NPC_SMARO,              // mProcName
  &g_fpcLf_Method.mBase,       // sub_method
  sizeof(daNpc_shopMaro_c),    // mSize
  0,                           // mSizeOther
  0,                           // mParameters
  &g_fopAc_Method.base,        // sub_method
  365,                         // mPriority
  &daNpc_shopMaro_MethodTable, // sub_method
  0x00040000,                  // mStatus
  fopAc_ACTOR_e,               // mActorType
  fopAc_CULLBOX_0_e,           // cullType
};

/* 80AEC988-80AEC994 000050 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80AEC994-80AEC9B8 00005C 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AEC908,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AEC900,
};

/* 80AEC9B8-80AEC9C4 000080 000C+00 2/2 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80AEC9C4-80AEC9D0 00008C 000C+00 3/3 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80AEC9D0-80AEC9DC 000098 000C+00 2/2 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80AEC9DC-80AECAAC 0000A4 00D0+00 2/2 0/0 0/0 .data            __vt__16daNpc_shopMaro_c */
SECTION_DATA extern void* __vt__16daNpc_shopMaro_c[52] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daNpc_shopMaro_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__8daNpcT_cFi,
    (void*)checkRemoveJoint__8daNpcT_cFi,
    (void*)getBackboneJointNo__8daNpcT_cFv,
    (void*)getNeckJointNo__8daNpcT_cFv,
    (void*)getHeadJointNo__8daNpcT_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__8daNpcT_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__8daNpcT_cFi,
    (void*)setParam__8daNpcT_cFv,
    (void*)checkChangeEvt__8daNpcT_cFv,
    (void*)evtTalk__8daNpcT_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__8daNpcT_cFv,
    (void*)setAfterTalkMotion__8daNpcT_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__8daNpcT_cFv,
    (void*)beforeMove__8daNpcT_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__8daNpcT_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__8daNpcT_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__8daNpcT_cFv,
    (void*)drawOtherMdl__8daNpcT_cFv,
    (void*)drawGhost__8daNpcT_cFv,
    (void*)afterSetFaceMotionAnm__8daNpcT_cFiifi,
    (void*)afterSetMotionAnm__8daNpcT_cFiifi,
    (void*)getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c,
    (void*)getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c,
    (void*)changeAnm__8daNpcT_cFPiPi,
    (void*)changeBck__8daNpcT_cFPiPi,
    (void*)changeBtp__8daNpcT_cFPiPi,
    (void*)changeBtk__8daNpcT_cFPiPi,
    (void*)setMotionAnm__8daNpcT_cFifi,
    (void*)getResName2__13dShopSystem_cFi,
    (void*)beforeStartSeqAction__13dShopSystem_cFP10dMsgFlow_ci,
    (void*)beforeSelectSeqAction__13dShopSystem_cFP10dMsgFlow_ci,
};

/* 80AEBF04-80AEBF64 000124 0060+00 1/1 0/0 0/0 .text            __ct__16daNpc_shopMaro_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpc_shopMaro_c::daNpc_shopMaro_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop_maro/d_a_npc_shop_maro/__ct__16daNpc_shopMaro_cFv.s"
}
#pragma pop

/* 80AEBF64-80AEBFC4 000184 0060+00 1/0 0/0 0/0 .text            __dt__16daNpc_shopMaro_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpc_shopMaro_c::~daNpc_shopMaro_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop_maro/d_a_npc_shop_maro/__dt__16daNpc_shopMaro_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80AEC918-80AEC91C 000000 0004+00 2/2 0/0 0/0 .rodata          @4009 */
SECTION_RODATA static f32 const lit_4009 = 0.25f;
COMPILER_STRIP_GATE(0x80AEC918, &lit_4009);

/* 80AEC91C-80AEC920 000004 0004+00 0/1 0/0 0/0 .rodata          @4010 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4010 = 20.0f;
COMPILER_STRIP_GATE(0x80AEC91C, &lit_4010);
#pragma pop

/* 80AEC920-80AEC924 000008 0004+00 0/1 0/0 0/0 .rodata          @4011 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4011 = 5.0f;
COMPILER_STRIP_GATE(0x80AEC920, &lit_4011);
#pragma pop

/* 80AEC924-80AEC928 00000C 0004+00 0/2 0/0 0/0 .rodata          @4012 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4012[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AEC924, &lit_4012);
#pragma pop

/* 80AEC928-80AEC92C 000010 0004+00 0/1 0/0 0/0 .rodata          @4013 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4013 = 100.0f;
COMPILER_STRIP_GATE(0x80AEC928, &lit_4013);
#pragma pop

/* 80AEC92C-80AEC930 000014 0004+00 0/1 0/0 0/0 .rodata          @4014 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4014 = 60.0f;
COMPILER_STRIP_GATE(0x80AEC92C, &lit_4014);
#pragma pop

/* 80AEBFC4-80AEC0DC 0001E4 0118+00 1/1 0/0 0/0 .text
 * __ct__13dShopSystem_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dShopSystem_c::dShopSystem_c(daNpcT_faceMotionAnmData_c const* param_0,
//                                 daNpcT_motionAnmData_c const* param_1,
//                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
//                                 int param_3,
//                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
//                                 int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
extern "C" asm void __ct__13dShopSystem_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop_maro/d_a_npc_shop_maro/func_80AEBFC4.s"
}
#pragma pop

/* 80AEC0DC-80AEC118 0002FC 003C+00 2/2 0/0 0/0 .text            __dt__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cXyz::~cXyz() {
extern "C" asm void __dt__4cXyzFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop_maro/d_a_npc_shop_maro/__dt__4cXyzFv.s"
}
#pragma pop

/* 80AEC118-80AEC120 000338 0008+00 1/0 0/0 0/0 .text            getResName2__13dShopSystem_cFi */
// bool dShopSystem_c::getResName2(int param_0) {
extern "C" bool getResName2__13dShopSystem_cFi() {
    return false;
}

/* 80AEC120-80AEC128 000340 0008+00 1/0 0/0 0/0 .text
 * beforeStartSeqAction__13dShopSystem_cFP10dMsgFlow_ci         */
// bool dShopSystem_c::beforeStartSeqAction(dMsgFlow_c* param_0, int param_1) {
extern "C" bool beforeStartSeqAction__13dShopSystem_cFP10dMsgFlow_ci() {
    return true;
}

/* 80AEC128-80AEC130 000348 0008+00 1/0 0/0 0/0 .text
 * beforeSelectSeqAction__13dShopSystem_cFP10dMsgFlow_ci        */
// bool dShopSystem_c::beforeSelectSeqAction(dMsgFlow_c* param_0, int param_1) {
extern "C" bool beforeSelectSeqAction__13dShopSystem_cFP10dMsgFlow_ci() {
    return true;
}

/* 80AEC130-80AEC16C 000350 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm csXyz::~csXyz() {
extern "C" asm void __dt__5csXyzFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop_maro/d_a_npc_shop_maro/__dt__5csXyzFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80AEC930-80AEC934 000018 0004+00 0/1 0/0 0/0 .rodata          @4238 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4238 = 65536.0f;
COMPILER_STRIP_GATE(0x80AEC930, &lit_4238);
#pragma pop

/* 80AEC934-80AEC938 00001C 0004+00 0/1 0/0 0/0 .rodata          @4239 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4239 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80AEC934, &lit_4239);
#pragma pop

/* 80AEC16C-80AEC570 00038C 0404+00 1/1 0/0 0/0 .text
 * __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcT_c::daNpcT_c(daNpcT_faceMotionAnmData_c const* param_0,
//                       daNpcT_motionAnmData_c const* param_1,
// daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2, int param_3,
//                          daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4, int param_5,
//                       daNpcT_evtData_c const* param_6, char** param_7) {
extern "C" asm void __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop_maro/d_a_npc_shop_maro/func_80AEC16C.s"
}
#pragma pop

/* 80AEC570-80AEC574 000790 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" asm void __ct__5csXyzFv() {
    /* empty function */
}

/* 80AEC574-80AEC670 000794 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" asm void __dt__15daNpcT_JntAnm_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop_maro/d_a_npc_shop_maro/__dt__15daNpcT_JntAnm_cFv.s"
}
#pragma pop

/* 80AEC670-80AEC674 000890 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" asm void __ct__4cXyzFv() {
    /* empty function */
}

/* 80AEC674-80AEC6BC 000894 0048+00 1/0 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" asm void __dt__18daNpcT_ActorMngr_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop_maro/d_a_npc_shop_maro/__dt__18daNpcT_ActorMngr_cFv.s"
}
#pragma pop

/* 80AEC6BC-80AEC704 0008DC 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" asm void __dt__22daNpcT_MotionSeqMngr_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop_maro/d_a_npc_shop_maro/__dt__22daNpcT_MotionSeqMngr_cFv.s"
}
#pragma pop

/* 80AEC704-80AEC774 000924 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop_maro/d_a_npc_shop_maro/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 80AEC774-80AEC7BC 000994 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop_maro/d_a_npc_shop_maro/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* 80AEC7BC-80AEC7C0 0009DC 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" asm void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80AEC7C0-80AEC7C8 0009E0 0008+00 1/0 0/0 0/0 .text            checkChangeJoint__8daNpcT_cFi */
bool daNpcT_c::checkChangeJoint(int param_0) {
    return false;
}

/* 80AEC7C8-80AEC7D0 0009E8 0008+00 1/0 0/0 0/0 .text            checkRemoveJoint__8daNpcT_cFi */
bool daNpcT_c::checkRemoveJoint(int param_0) {
    return false;
}

/* 80AEC7D0-80AEC7D8 0009F0 0008+00 1/0 0/0 0/0 .text            getBackboneJointNo__8daNpcT_cFv */
s32 daNpcT_c::getBackboneJointNo() {
    return -1;
}

/* 80AEC7D8-80AEC7E0 0009F8 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__8daNpcT_cFv */
s32 daNpcT_c::getNeckJointNo() {
    return -1;
}

/* 80AEC7E0-80AEC7E8 000A00 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__8daNpcT_cFv */
s32 daNpcT_c::getHeadJointNo() {
    return -1;
}

/* 80AEC7E8-80AEC7F0 000A08 0008+00 1/0 0/0 0/0 .text            getFootLJointNo__8daNpcT_cFv */
s32 daNpcT_c::getFootLJointNo() {
    return -1;
}

/* 80AEC7F0-80AEC7F8 000A10 0008+00 1/0 0/0 0/0 .text            getFootRJointNo__8daNpcT_cFv */
s32 daNpcT_c::getFootRJointNo() {
    return -1;
}

/* 80AEC7F8-80AEC800 000A18 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80AEC800-80AEC808 000A20 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80AEC808-80AEC810 000A28 0008+00 1/0 0/0 0/0 .text            getEyeballMaterialNo__8daNpcT_cFv
 */
bool daNpcT_c::getEyeballMaterialNo() {
    return false;
}

/* 80AEC810-80AEC814 000A30 0004+00 1/0 0/0 0/0 .text            afterJntAnm__8daNpcT_cFi */
void daNpcT_c::afterJntAnm(int param_0) {
    /* empty function */
}

/* 80AEC814-80AEC818 000A34 0004+00 1/0 0/0 0/0 .text            setParam__8daNpcT_cFv */
void daNpcT_c::setParam() {
    /* empty function */
}

/* 80AEC818-80AEC820 000A38 0008+00 1/0 0/0 0/0 .text            checkChangeEvt__8daNpcT_cFv */
bool daNpcT_c::checkChangeEvt() {
    return false;
}

/* 80AEC820-80AEC828 000A40 0008+00 1/0 0/0 0/0 .text            evtTalk__8daNpcT_cFv */
bool daNpcT_c::evtTalk() {
    return true;
}

/* 80AEC828-80AEC830 000A48 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 80AEC830-80AEC838 000A50 0008+00 1/0 0/0 0/0 .text            evtCutProc__8daNpcT_cFv */
bool daNpcT_c::evtCutProc() {
    return false;
}

/* 80AEC838-80AEC83C 000A58 0004+00 1/0 0/0 0/0 .text            setAfterTalkMotion__8daNpcT_cFv */
void daNpcT_c::setAfterTalkMotion() {
    /* empty function */
}

/* 80AEC83C-80AEC840 000A5C 0004+00 1/0 0/0 0/0 .text            action__8daNpcT_cFv */
void daNpcT_c::action() {
    /* empty function */
}

/* 80AEC840-80AEC844 000A60 0004+00 1/0 0/0 0/0 .text            beforeMove__8daNpcT_cFv */
void daNpcT_c::beforeMove() {
    /* empty function */
}

/* 80AEC844-80AEC848 000A64 0004+00 1/0 0/0 0/0 .text            afterMoved__8daNpcT_cFv */
void daNpcT_c::afterMoved() {
    /* empty function */
}

/* 80AEC848-80AEC84C 000A68 0004+00 1/0 0/0 0/0 .text            setAttnPos__8daNpcT_cFv */
void daNpcT_c::setAttnPos() {
    /* empty function */
}

/* 80AEC84C-80AEC850 000A6C 0004+00 1/0 0/0 0/0 .text            setCollision__8daNpcT_cFv */
void daNpcT_c::setCollision() {
    /* empty function */
}

/* 80AEC850-80AEC858 000A70 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80AEC858-80AEC870 000A78 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daNpcT_c::decTmr() {
extern "C" asm void decTmr__8daNpcT_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop_maro/d_a_npc_shop_maro/decTmr__8daNpcT_cFv.s"
}
#pragma pop

/* 80AEC870-80AEC878 000A90 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__8daNpcT_cFv */
// bool daNpcT_c::drawDbgInfo() {
extern "C" bool drawDbgInfo__8daNpcT_cFv() {
    return false;
}

/* 80AEC878-80AEC87C 000A98 0004+00 1/0 0/0 0/0 .text            drawOtherMdl__8daNpcT_cFv */
// void daNpcT_c::drawOtherMdl() {
extern "C" asm void drawOtherMdl__8daNpcT_cFv() {
    /* empty function */
}

/* 80AEC87C-80AEC880 000A9C 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" asm void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 80AEC880-80AEC888 000AA0 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80AEC888-80AEC890 000AA8 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80AEC890-80AEC8C0 000AB0 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" asm void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop_maro/d_a_npc_shop_maro/getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c.s"
}
#pragma pop

/* 80AEC8C0-80AEC8F0 000AE0 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" asm void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop_maro/d_a_npc_shop_maro/getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c.s"
}
#pragma pop

/* 80AEC8F0-80AEC8F4 000B10 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" asm void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AEC8F4-80AEC8F8 000B14 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" asm void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AEC8F8-80AEC8FC 000B18 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" asm void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AEC8FC-80AEC900 000B1C 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" asm void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AEC900-80AEC908 000B20 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80AEC900() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop_maro/d_a_npc_shop_maro/func_80AEC900.s"
}
#pragma pop

/* 80AEC908-80AEC910 000B28 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80AEC908() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop_maro/d_a_npc_shop_maro/func_80AEC908.s"
}
#pragma pop
