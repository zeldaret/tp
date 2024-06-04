/**
 * @file d_a_npc_shop0.cpp
 * 
*/

#include "rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" static void createHeapCallBack__FP10fopAc_ac_c();
extern "C" void __dt__13daNpc_Shop0_cFv();
extern "C" void create__13daNpc_Shop0_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__14dBgS_ObjGndChkFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void createHeap__13daNpc_Shop0_cFv();
extern "C" void destroy__13daNpc_Shop0_cFv();
extern "C" void execute__13daNpc_Shop0_cFv();
extern "C" void draw__13daNpc_Shop0_cFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void getResName__13daNpc_Shop0_cFv();
extern "C" void getParam__13daNpc_Shop0_cFv();
extern "C" void getFlowNodeNum__13daNpc_Shop0_cFv();
extern "C" void isDelete__13daNpc_Shop0_cFv();
extern "C" void init__13daNpc_Shop0_cFv();
extern "C" void getTrnsfrmAnmP__13daNpc_Shop0_cFiPPc();
extern "C" void setBckAnm__13daNpc_Shop0_cFP15J3DAnmTransformfiiib();
extern "C" void setCollision__13daNpc_Shop0_cFv();
extern "C" void checkEvent__13daNpc_Shop0_cFv();
extern "C" void orderEvent__13daNpc_Shop0_cFv();
extern "C" void setMtx__13daNpc_Shop0_cFv();
extern "C" void setRoomInf__13daNpc_Shop0_cFv();
extern "C" void cut_alert__13daNpc_Shop0_cFii();
extern "C" void chkProcess__13daNpc_Shop0_cFM13daNpc_Shop0_cFPCvPvPv_i();
extern "C" void setProcess__13daNpc_Shop0_cFM13daNpc_Shop0_cFPCvPvPv_iPvi();
extern "C" void wait__13daNpc_Shop0_cFPv();
extern "C" void talk__13daNpc_Shop0_cFPv();
extern "C" static void daNpc_Shop0_Create__FPv();
extern "C" static void daNpc_Shop0_Delete__FPv();
extern "C" static void daNpc_Shop0_Execute__FPv();
extern "C" static void daNpc_Shop0_Draw__FPv();
extern "C" static bool daNpc_Shop0_IsDelete__FPv();
extern "C" void __dt__19daNpc_Shop0_Param_cFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" static void func_80AEBBA4();
extern "C" static void func_80AEBBAC();
extern "C" static void func_80AEBBB4();
extern "C" static void func_80AEBBBC();
extern "C" static void func_80AEBBC4();
extern "C" u8 const mCylDat__13daNpc_Shop0_c[68];
extern "C" u8 const mParam__19daNpc_Shop0_Param_c[12];
extern "C" extern char const* const d_a_npc_shop0__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb();
extern "C" void entry__13mDoExt_bckAnmFP12J3DModelDataf();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void setSimple__21dDlst_shadowControl_cFP4cXyzffP4cXyzsfP9_GXTexObj();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void GetPolyColor__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetRoomId__4dBgSFRC13cBgS_PolyInfo();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWallR__12dBgS_AcchCirFf();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c();
extern "C" void doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __ptmf_test();
extern "C" void __ptmf_cmpr();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_27();
extern "C" void _savegpr_29();
extern "C" void _restgpr_27();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];

//
// Declarations:
//

/* 80AEA7D8-80AEA7F8 000078 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__FP10fopAc_ac_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void createHeapCallBack(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/createHeapCallBack__FP10fopAc_ac_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 80AEBC54-80AEBC54 000080 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AEBC54 = "Shop0";
SECTION_DEAD static char const* const stringBase_80AEBC5A = "grA_a.bmd";
SECTION_DEAD static char const* const stringBase_80AEBC64 = "grA_wait_a";
#pragma pop

/* 80AEBC74-80AEBC78 -00001 0004+00 1/1 0/0 0/0 .data            l_resName */
SECTION_DATA static void* l_resName = (void*)&d_a_npc_shop0__stringBase0;

/* 80AEBC78-80AEBC7C -00001 0004+00 1/1 0/0 0/0 .data            l_bmdFileName */
SECTION_DATA static void* l_bmdFileName = (void*)(((char*)&d_a_npc_shop0__stringBase0) + 0x6);

/* 80AEBC7C-80AEBC80 -00001 0004+00 1/1 0/0 0/0 .data            l_bckFileNameTBL */
SECTION_DATA static void* l_bckFileNameTBL = (void*)(((char*)&d_a_npc_shop0__stringBase0) + 0x10);

/* 80AEBC80-80AEBC8C -00001 000C+00 1/1 0/0 0/0 .data            @4087 */
SECTION_DATA static void* lit_4087[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__13daNpc_Shop0_cFPv,
};

/* 80AEBC8C-80AEBC98 -00001 000C+00 1/1 0/0 0/0 .data            @4132 */
SECTION_DATA static void* lit_4132[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_Shop0_cFPv,
};

/* 80AEBC98-80AEBCA4 -00001 000C+00 1/1 0/0 0/0 .data            @4140 */
SECTION_DATA static void* lit_4140[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_Shop0_cFPv,
};

/* 80AEBCA4-80AEBCB0 -00001 000C+00 1/1 0/0 0/0 .data            @4268 */
SECTION_DATA static void* lit_4268[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__13daNpc_Shop0_cFPv,
};

/* 80AEBCB0-80AEBCD0 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Shop0_MethodTable */
static actor_method_class daNpc_Shop0_MethodTable = {
    (process_method_func)daNpc_Shop0_Create__FPv,
    (process_method_func)daNpc_Shop0_Delete__FPv,
    (process_method_func)daNpc_Shop0_Execute__FPv,
    (process_method_func)daNpc_Shop0_IsDelete__FPv,
    (process_method_func)daNpc_Shop0_Draw__FPv,
};

/* 80AEBCD0-80AEBD00 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_SHOP0 */
extern actor_process_profile_definition g_profile_NPC_SHOP0 = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_NPC_SHOP0,           // mProcName
  &g_fpcLf_Method.mBase,    // sub_method
  sizeof(daNpc_Shop0_c),    // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  426,                      // mPriority
  &daNpc_Shop0_MethodTable, // sub_method
  0x00040100,               // mStatus
  fopAc_ACTOR_e,            // mActorType
  fopAc_CULLBOX_0_e,        // cullType
};

/* 80AEBD00-80AEBD0C 00008C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 80AEBD0C-80AEBD18 000098 000C+00 2/2 0/0 0/0 .data            __vt__19daNpc_Shop0_Param_c */
SECTION_DATA extern void* __vt__19daNpc_Shop0_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__19daNpc_Shop0_Param_cFv,
};

/* 80AEBD18-80AEBD24 0000A4 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80AEBD24-80AEBD54 0000B0 0030+00 3/3 0/0 0/0 .data            __vt__14dBgS_ObjGndChk */
SECTION_DATA extern void* __vt__14dBgS_ObjGndChk[12] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14dBgS_ObjGndChkFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AEBBB4,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AEBBC4,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AEBBBC,
};

/* 80AEBD54-80AEBD60 0000E0 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80AEBD60-80AEBD84 0000EC 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AEBBAC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AEBBA4,
};

/* 80AEBD84-80AEBD90 000110 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80AEBD90-80AEBD9C 00011C 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80AEBD9C-80AEBDA8 000128 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80AEBDA8-80AEBDB4 000134 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80AEBDB4-80AEBDC0 000140 000C+00 2/2 0/0 0/0 .data            __vt__13daNpc_Shop0_c */
SECTION_DATA extern void* __vt__13daNpc_Shop0_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpc_Shop0_cFv,
};

/* 80AEA7F8-80AEAA10 000098 0218+00 1/0 0/0 0/0 .text            __dt__13daNpc_Shop0_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpc_Shop0_c::~daNpc_Shop0_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/__dt__13daNpc_Shop0_cFv.s"
}
#pragma pop

/* 80AEAA10-80AEAC10 0002B0 0200+00 1/1 0/0 0/0 .text            create__13daNpc_Shop0_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Shop0_c::create() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/create__13daNpc_Shop0_cFv.s"
}
#pragma pop

/* 80AEAC10-80AEAC58 0004B0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGCyl::~cM3dGCyl() {
extern "C" asm void __dt__8cM3dGCylFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/__dt__8cM3dGCylFv.s"
}
#pragma pop

/* 80AEAC58-80AEACA0 0004F8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80AEACA0-80AEACFC 000540 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 80AEACFC-80AEAD6C 00059C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 80AEAD6C-80AEADDC 00060C 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 80AEADDC-80AEAE54 00067C 0078+00 4/3 0/0 0/0 .text            __dt__14dBgS_ObjGndChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjGndChk::~dBgS_ObjGndChk() {
extern "C" asm void __dt__14dBgS_ObjGndChkFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/__dt__14dBgS_ObjGndChkFv.s"
}
#pragma pop

/* 80AEAE54-80AEAE9C 0006F4 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80AEBBD4-80AEBC18 000000 0044+00 2/2 0/0 0/0 .rodata          mCylDat__13daNpc_Shop0_c */
SECTION_RODATA u8 const daNpc_Shop0_c::mCylDat[68] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x79,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AEBBD4, &daNpc_Shop0_c::mCylDat);

/* 80AEBC18-80AEBC24 000044 000C+00 0/0 0/0 0/0 .rodata          mParam__19daNpc_Shop0_Param_c */
#pragma push
#pragma force_active on
SECTION_RODATA u8 const daNpc_Shop0_Param_c::mParam[12] = {
    0x44, 0x48, 0x00, 0x00, 0x44, 0x48, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AEBC18, &daNpc_Shop0_Param_c::mParam);
#pragma pop

/* 80AEBC24-80AEBC28 000050 0004+00 2/3 0/0 0/0 .rodata          @4004 */
SECTION_RODATA static f32 const lit_4004 = 1.0f;
COMPILER_STRIP_GATE(0x80AEBC24, &lit_4004);

/* 80AEAE9C-80AEAF8C 00073C 00F0+00 1/1 0/0 0/0 .text            createHeap__13daNpc_Shop0_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Shop0_c::createHeap() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/createHeap__13daNpc_Shop0_cFv.s"
}
#pragma pop

/* 80AEAF8C-80AEAFC0 00082C 0034+00 1/1 0/0 0/0 .text            destroy__13daNpc_Shop0_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Shop0_c::destroy() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/destroy__13daNpc_Shop0_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80AEBC28-80AEBC2C 000054 0004+00 1/1 0/0 0/0 .rodata          @4023 */
SECTION_RODATA static f32 const lit_4023 = -3.0f;
COMPILER_STRIP_GATE(0x80AEBC28, &lit_4023);

/* 80AEBC2C-80AEBC30 000058 0004+00 3/3 0/0 0/0 .rodata          @4024 */
SECTION_RODATA static f32 const lit_4024 = 40.0f;
COMPILER_STRIP_GATE(0x80AEBC2C, &lit_4024);

/* 80AEAFC0-80AEB078 000860 00B8+00 2/2 0/0 0/0 .text            execute__13daNpc_Shop0_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Shop0_c::execute() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/execute__13daNpc_Shop0_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80AEBC30-80AEBC34 00005C 0004+00 1/2 0/0 0/0 .rodata          @4051 */
SECTION_RODATA static f32 const lit_4051 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80AEBC30, &lit_4051);

/* 80AEBC34-80AEBC38 000060 0004+00 0/1 0/0 0/0 .rodata          @4052 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4052 = 10.0f;
COMPILER_STRIP_GATE(0x80AEBC34, &lit_4052);
#pragma pop

/* 80AEB078-80AEB148 000918 00D0+00 1/1 0/0 0/0 .text            draw__13daNpc_Shop0_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Shop0_c::draw() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/draw__13daNpc_Shop0_cFv.s"
}
#pragma pop

/* 80AEB148-80AEB190 0009E8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGPla::~cM3dGPla() {
extern "C" asm void __dt__8cM3dGPlaFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/__dt__8cM3dGPlaFv.s"
}
#pragma pop

/* 80AEB190-80AEB1A0 000A30 0010+00 5/5 0/0 0/0 .text            getResName__13daNpc_Shop0_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Shop0_c::getResName() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/getResName__13daNpc_Shop0_cFv.s"
}
#pragma pop

/* 80AEB1A0-80AEB1C8 000A40 0028+00 1/1 0/0 0/0 .text            getParam__13daNpc_Shop0_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Shop0_c::getParam() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/getParam__13daNpc_Shop0_cFv.s"
}
#pragma pop

/* 80AEB1C8-80AEB1D0 000A68 0008+00 2/2 0/0 0/0 .text            getFlowNodeNum__13daNpc_Shop0_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Shop0_c::getFlowNodeNum() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/getFlowNodeNum__13daNpc_Shop0_cFv.s"
}
#pragma pop

/* 80AEB1D0-80AEB22C 000A70 005C+00 1/1 0/0 0/0 .text            isDelete__13daNpc_Shop0_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Shop0_c::isDelete() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/isDelete__13daNpc_Shop0_cFv.s"
}
#pragma pop

/* 80AEB22C-80AEB32C 000ACC 0100+00 1/1 0/0 0/0 .text            init__13daNpc_Shop0_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Shop0_c::init() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/init__13daNpc_Shop0_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80AEBC54-80AEBC54 000080 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AEBC6F = ".bck";
#pragma pop

/* 80AEBDC0-80AEBDD8 000000 0015+03 1/1 0/0 0/0 .bss             l_fileName */
static u8 l_fileName[21 + 3 /* padding */];

/* 80AEB32C-80AEB3A8 000BCC 007C+00 1/1 0/0 0/0 .text getTrnsfrmAnmP__13daNpc_Shop0_cFiPPc */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Shop0_c::getTrnsfrmAnmP(int param_0, char** param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/getTrnsfrmAnmP__13daNpc_Shop0_cFiPPc.s"
}
#pragma pop

/* ############################################################################################## */
/* 80AEBC38-80AEBC3C 000064 0004+00 2/2 0/0 0/0 .rodata          @4118 */
SECTION_RODATA static u8 const lit_4118[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AEBC38, &lit_4118);

/* 80AEBC3C-80AEBC44 000068 0008+00 1/1 0/0 0/0 .rodata          @4120 */
SECTION_RODATA static u8 const lit_4120[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AEBC3C, &lit_4120);

/* 80AEB3A8-80AEB45C 000C48 00B4+00 1/1 0/0 0/0 .text
 * setBckAnm__13daNpc_Shop0_cFP15J3DAnmTransformfiiib           */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Shop0_c::setBckAnm(J3DAnmTransform* param_0, f32 param_1, int param_2, int param_3,
                                  int param_4, bool param_5) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/setBckAnm__13daNpc_Shop0_cFP15J3DAnmTransformfiiib.s"
}
#pragma pop

/* 80AEB45C-80AEB4C8 000CFC 006C+00 1/1 0/0 0/0 .text            setCollision__13daNpc_Shop0_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Shop0_c::setCollision() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/setCollision__13daNpc_Shop0_cFv.s"
}
#pragma pop

/* 80AEB4C8-80AEB5E8 000D68 0120+00 1/1 0/0 0/0 .text            checkEvent__13daNpc_Shop0_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Shop0_c::checkEvent() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/checkEvent__13daNpc_Shop0_cFv.s"
}
#pragma pop

/* 80AEB5E8-80AEB634 000E88 004C+00 1/1 0/0 0/0 .text            orderEvent__13daNpc_Shop0_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Shop0_c::orderEvent() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/orderEvent__13daNpc_Shop0_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80AEBC44-80AEBC4C 000070 0004+04 1/1 0/0 0/0 .rodata          @4181 */
SECTION_RODATA static f32 const lit_4181[1 + 1 /* padding */] = {
    240.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80AEBC44, &lit_4181);

/* 80AEB634-80AEB6DC 000ED4 00A8+00 1/1 0/0 0/0 .text            setMtx__13daNpc_Shop0_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Shop0_c::setMtx() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/setMtx__13daNpc_Shop0_cFv.s"
}
#pragma pop

/* 80AEB6DC-80AEB780 000F7C 00A4+00 2/2 0/0 0/0 .text            setRoomInf__13daNpc_Shop0_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Shop0_c::setRoomInf() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/setRoomInf__13daNpc_Shop0_cFv.s"
}
#pragma pop

/* 80AEB780-80AEB7F0 001020 0070+00 1/1 0/0 0/0 .text            cut_alert__13daNpc_Shop0_cFii */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Shop0_c::cut_alert(int param_0, int param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/cut_alert__13daNpc_Shop0_cFii.s"
}
#pragma pop

/* 80AEB7F0-80AEB824 001090 0034+00 2/2 0/0 0/0 .text
 * chkProcess__13daNpc_Shop0_cFM13daNpc_Shop0_cFPCvPvPv_i       */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Shop0_c::chkProcess(int (daNpc_Shop0_c::*param_0)(void*)) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/chkProcess__13daNpc_Shop0_cFM13daNpc_Shop0_cFPCvPvPv_i.s"
}
#pragma pop

/* 80AEB824-80AEB920 0010C4 00FC+00 3/3 0/0 0/0 .text
 * setProcess__13daNpc_Shop0_cFM13daNpc_Shop0_cFPCvPvPv_iPvi    */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Shop0_c::setProcess(int (daNpc_Shop0_c::*param_0)(void*), void* param_1,
                                   int param_2) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/setProcess__13daNpc_Shop0_cFM13daNpc_Shop0_cFPCvPvPv_iPvi.s"
}
#pragma pop

/* ############################################################################################## */
/* 80AEBC4C-80AEBC54 000078 0008+00 1/1 0/0 0/0 .rodata          @4259 */
SECTION_RODATA static u8 const lit_4259[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AEBC4C, &lit_4259);

/* 80AEB920-80AEB9BC 0011C0 009C+00 2/0 0/0 0/0 .text            wait__13daNpc_Shop0_cFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Shop0_c::wait(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/wait__13daNpc_Shop0_cFPv.s"
}
#pragma pop

/* 80AEB9BC-80AEBA8C 00125C 00D0+00 2/0 0/0 0/0 .text            talk__13daNpc_Shop0_cFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Shop0_c::talk(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/talk__13daNpc_Shop0_cFPv.s"
}
#pragma pop

/* 80AEBA8C-80AEBAAC 00132C 0020+00 1/0 0/0 0/0 .text            daNpc_Shop0_Create__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpc_Shop0_Create(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/daNpc_Shop0_Create__FPv.s"
}
#pragma pop

/* 80AEBAAC-80AEBACC 00134C 0020+00 1/0 0/0 0/0 .text            daNpc_Shop0_Delete__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpc_Shop0_Delete(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/daNpc_Shop0_Delete__FPv.s"
}
#pragma pop

/* 80AEBACC-80AEBAEC 00136C 0020+00 1/0 0/0 0/0 .text            daNpc_Shop0_Execute__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpc_Shop0_Execute(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/daNpc_Shop0_Execute__FPv.s"
}
#pragma pop

/* 80AEBAEC-80AEBB0C 00138C 0020+00 1/0 0/0 0/0 .text            daNpc_Shop0_Draw__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpc_Shop0_Draw(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/daNpc_Shop0_Draw__FPv.s"
}
#pragma pop

/* 80AEBB0C-80AEBB14 0013AC 0008+00 1/0 0/0 0/0 .text            daNpc_Shop0_IsDelete__FPv */
static bool daNpc_Shop0_IsDelete(void* param_0) {
    return true;
}

/* 80AEBB14-80AEBB5C 0013B4 0048+00 1/0 0/0 0/0 .text            __dt__19daNpc_Shop0_Param_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpc_Shop0_Param_c::~daNpc_Shop0_Param_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/__dt__19daNpc_Shop0_Param_cFv.s"
}
#pragma pop

/* 80AEBB5C-80AEBBA4 0013FC 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 80AEBBA4-80AEBBAC 001444 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80AEBBA4() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/func_80AEBBA4.s"
}
#pragma pop

/* 80AEBBAC-80AEBBB4 00144C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80AEBBAC() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/func_80AEBBAC.s"
}
#pragma pop

/* 80AEBBB4-80AEBBBC 001454 0008+00 1/0 0/0 0/0 .text            @20@__dt__14dBgS_ObjGndChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80AEBBB4() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/func_80AEBBB4.s"
}
#pragma pop

/* 80AEBBBC-80AEBBC4 00145C 0008+00 1/0 0/0 0/0 .text            @76@__dt__14dBgS_ObjGndChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80AEBBBC() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/func_80AEBBBC.s"
}
#pragma pop

/* 80AEBBC4-80AEBBCC 001464 0008+00 1/0 0/0 0/0 .text            @60@__dt__14dBgS_ObjGndChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80AEBBC4() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_shop0/d_a_npc_shop0/func_80AEBBC4.s"
}
#pragma pop

/* 80AEBC54-80AEBC54 000080 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
