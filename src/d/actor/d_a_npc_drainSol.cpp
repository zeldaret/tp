/**
 * @file d_a_npc_drainSol.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_drainSol.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __ct__12daNpcDrSol_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __dt__12daNpcDrSol_cFv();
extern "C" void Create__12daNpcDrSol_cFv();
extern "C" void CreateHeap__12daNpcDrSol_cFv();
extern "C" void Delete__12daNpcDrSol_cFv();
extern "C" void Execute__12daNpcDrSol_cFv();
extern "C" void Draw__12daNpcDrSol_cFv();
extern "C" void drawOtherMdls__12daNpcDrSol_cFv();
extern "C" void createHeapCallBack__12daNpcDrSol_cFP10fopAc_ac_c();
extern "C" void reset__12daNpcDrSol_cFv();
extern "C" void setAction__12daNpcDrSol_cFM12daNpcDrSol_cFPCvPvPv_b();
extern "C" void chkFindPlayer__12daNpcDrSol_cFv();
extern "C" void wait__12daNpcDrSol_cFPv();
extern "C" void setMotion__12daNpcDrSol_cFifi();
extern "C" void talk__12daNpcDrSol_cFPv();
extern "C" static void daNpcDrSol_Create__FPv();
extern "C" static void daNpcDrSol_Delete__FPv();
extern "C" static void daNpcDrSol_Execute__FPv();
extern "C" static void daNpcDrSol_Draw__FPv();
extern "C" static bool daNpcDrSol_IsDelete__FPv();
extern "C" void setParam__12daNpcDrSol_cFv();
extern "C" void main__12daNpcDrSol_cFv();
extern "C" void setAttnPos__12daNpcDrSol_cFv();
extern "C" void setMotionAnm__12daNpcDrSol_cFif();
extern "C" bool drawDbgInfo__12daNpcDrSol_cFv();
extern "C" void __dt__8daNpcF_cFv();
extern "C" void __dt__18daNpcF_ActorMngr_cFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __ct__8daNpcF_cFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __ct__18daNpcF_ActorMngr_cFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" bool ctrlBtk__8daNpcF_cFv();
extern "C" void setCollisions__8daNpcF_cFv();
extern "C" bool setExpressionAnm__8daNpcF_cFib();
extern "C" bool setExpressionBtp__8daNpcF_cFi();
extern "C" void setExpression__8daNpcF_cFif();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __sinit_d_a_npc_drainSol_cpp();
extern "C" void adjustShapeAngle__12daNpcDrSol_cFv();
extern "C" void __dt__18daNpcDrSol_Param_cFv();
extern "C" static void func_809AF980();
extern "C" static void func_809AF988();
extern "C" u8 const m__18daNpcDrSol_Param_c[108];
extern "C" extern char const* const d_a_npc_drainSol__stringBase0;

//
// External References:
//

extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void initialize__18daNpcF_ActorMngr_cFv();
extern "C" void execute__8daNpcF_cFv();
extern "C" void draw__8daNpcF_cFiifP11_GXColorS10i();
extern "C" void setMtx__8daNpcF_cFv();
extern "C" void setMtx2__8daNpcF_cFv();
extern "C" void initialize__8daNpcF_cFv();
extern "C" void getTrnsfrmKeyAnmP__8daNpcF_cFPci();
extern "C" void setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii();
extern "C" void setEnvTevColor__8daNpcF_cFv();
extern "C" void setRoomNo__8daNpcF_cFv();
extern "C" void playMotionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData();
extern "C" void ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci();
extern "C" void orderEvent__8daNpcF_cFiPcUsUsUcUs();
extern "C" void initTalk__8daNpcF_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcF_cFPiiPP10fopAc_ac_c();
extern "C" void getDistTableIdx__8daNpcF_cFii();
extern "C" void checkNowWolfEyeUp__9daPy_py_cFv();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void __dt__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_test();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" extern u8 const __ptmf_null[12 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" u8 mCcDCyl__8daNpcF_c[68];
extern "C" extern void* __vt__8daNpcF_c[18];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 809AFAB0-809AFAB0 00010C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809AFAB0 = "DrainSol1";
SECTION_DEAD static char const* const stringBase_809AFABA = "DrainSol2";
#pragma pop

/* 809AFACC-809AFAD4 000000 0008+00 1/1 0/0 0/0 .data            l_bmdGetParamList */
SECTION_DATA static u8 l_bmdGetParamList[8] = {
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x07,
};

/* 809AFAD4-809AFAEC 000008 0018+00 1/1 0/0 0/0 .data            l_bckGetParamList */
SECTION_DATA static u8 l_bckGetParamList[24] = {
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,
};

/* 809AFAEC-809AFAF4 -00001 0008+00 4/4 0/0 0/0 .data            l_arcNames */
SECTION_DATA static void* l_arcNames[2] = {
    (void*)&d_a_npc_drainSol__stringBase0,
    (void*)(((char*)&d_a_npc_drainSol__stringBase0) + 0xA),
};

/* 809AFAF4-809AFB00 -00001 000C+00 1/1 0/0 0/0 .data            @4286 */
SECTION_DATA static void* lit_4286[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__12daNpcDrSol_cFPv,
};

/* 809AFB00-809AFB0C -00001 000C+00 1/1 0/0 0/0 .data            @4352 */
SECTION_DATA static void* lit_4352[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpcDrSol_cFPv,
};

/* 809AFB0C-809AFB18 -00001 000C+00 1/1 0/0 0/0 .data            @4385 */
SECTION_DATA static void* lit_4385[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__12daNpcDrSol_cFPv,
};

/* 809AFB18-809AFB38 -00001 0020+00 1/0 0/0 0/0 .data            daNpcDrSol_MethodTable */
static actor_method_class daNpcDrSol_MethodTable = {
    (process_method_func)daNpcDrSol_Create__FPv,
    (process_method_func)daNpcDrSol_Delete__FPv,
    (process_method_func)daNpcDrSol_Execute__FPv,
    (process_method_func)daNpcDrSol_IsDelete__FPv,
    (process_method_func)daNpcDrSol_Draw__FPv,
};

/* 809AFB38-809AFB68 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_DRSOL */
extern actor_process_profile_definition g_profile_NPC_DRSOL = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_NPC_DRSOL,          // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daNpcDrSol_c),    // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  423,                     // mPriority
  &daNpcDrSol_MethodTable, // sub_method
  0x00044187,              // mStatus
  fopAc_NPC_e,             // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 809AFB68-809AFBB0 00009C 0048+00 2/2 0/0 0/0 .data            __vt__12daNpcDrSol_c */
SECTION_DATA extern void* __vt__12daNpcDrSol_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daNpcDrSol_cFv,
    (void*)setParam__12daNpcDrSol_cFv,
    (void*)main__12daNpcDrSol_cFv,
    (void*)ctrlBtk__8daNpcF_cFv,
    (void*)adjustShapeAngle__12daNpcDrSol_cFv,
    (void*)setMtx__8daNpcF_cFv,
    (void*)setMtx2__8daNpcF_cFv,
    (void*)setAttnPos__12daNpcDrSol_cFv,
    (void*)setCollisions__8daNpcF_cFv,
    (void*)setExpressionAnm__8daNpcF_cFib,
    (void*)setExpressionBtp__8daNpcF_cFi,
    (void*)setExpression__8daNpcF_cFif,
    (void*)setMotionAnm__12daNpcDrSol_cFif,
    (void*)setMotion__12daNpcDrSol_cFifi,
    (void*)drawDbgInfo__12daNpcDrSol_cFv,
    (void*)drawOtherMdls__12daNpcDrSol_cFv,
};

/* 809AFBB0-809AFBBC 0000E4 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 809AFBBC-809AFBE0 0000F0 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809AF988,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809AF980,
};

/* 809AFBE0-809AFBEC 000114 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 809AFBEC-809AFBF8 000120 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 809AFBF8-809AFC04 00012C 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 809AFC04-809AFC10 000138 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcF_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcF_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcF_ActorMngr_cFv,
};

/* 809AFC10-809AFC1C 000144 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 809AFC1C-809AFC28 000150 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 809ADE6C-809ADF18 0000EC 00AC+00 1/1 0/0 0/0 .text            __ct__12daNpcDrSol_cFv */
daNpcDrSol_c::daNpcDrSol_c() {
    // NONMATCHING
}

/* 809ADF18-809ADF60 000198 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 809ADF60-809ADFA8 0001E0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 809ADFA8-809ADFE4 000228 003C+00 2/2 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 809ADFE4-809AE10C 000264 0128+00 1/0 0/0 0/0 .text            __dt__12daNpcDrSol_cFv */
daNpcDrSol_c::~daNpcDrSol_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809AF9A4-809AFA10 000000 006C+00 5/5 0/0 0/0 .rodata          m__18daNpcDrSol_Param_c */
SECTION_RODATA u8 const daNpcDrSol_Param_c::m[108] = {
    0x42, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x20, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x04, 0x00, 0x06,
    0x42, 0x70, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0xC3, 0x96, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809AF9A4, &daNpcDrSol_Param_c::m);

/* 809AFA10-809AFA14 00006C 0004+00 0/1 0/0 0/0 .rodata          @4140 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4140 = -60.0f;
COMPILER_STRIP_GATE(0x809AFA10, &lit_4140);
#pragma pop

/* 809AFA14-809AFA18 000070 0004+00 0/1 0/0 0/0 .rodata          @4141 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4141 = -10.0f;
COMPILER_STRIP_GATE(0x809AFA14, &lit_4141);
#pragma pop

/* 809AFA18-809AFA1C 000074 0004+00 0/1 0/0 0/0 .rodata          @4142 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4142 = 60.0f;
COMPILER_STRIP_GATE(0x809AFA18, &lit_4142);
#pragma pop

/* 809AFA1C-809AFA20 000078 0004+00 0/2 0/0 0/0 .rodata          @4143 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4143 = 200.0f;
COMPILER_STRIP_GATE(0x809AFA1C, &lit_4143);
#pragma pop

/* 809AE10C-809AE354 00038C 0248+00 1/1 0/0 0/0 .text            Create__12daNpcDrSol_cFv */
void daNpcDrSol_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809AFA20-809AFA38 00007C 0018+00 1/1 0/0 0/0 .rodata          @4153 */
SECTION_RODATA static u8 const lit_4153[24] = {
    0x3F, 0x80, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00,
    0x3F, 0x80, 0x00, 0x00, 0x3F, 0x99, 0x63, 0x54, 0x40, 0x0B, 0x18, 0x48,
};
COMPILER_STRIP_GATE(0x809AFA20, &lit_4153);

/* 809AFA38-809AFA3C 000094 0004+00 2/2 0/0 0/0 .rodata          @4190 */
SECTION_RODATA static f32 const lit_4190 = 1.0f;
COMPILER_STRIP_GATE(0x809AFA38, &lit_4190);

/* 809AE354-809AE51C 0005D4 01C8+00 1/1 0/0 0/0 .text            CreateHeap__12daNpcDrSol_cFv */
void daNpcDrSol_c::CreateHeap() {
    // NONMATCHING
}

/* 809AE51C-809AE550 00079C 0034+00 1/1 0/0 0/0 .text            Delete__12daNpcDrSol_cFv */
void daNpcDrSol_c::Delete() {
    // NONMATCHING
}

/* 809AE550-809AE5CC 0007D0 007C+00 2/2 0/0 0/0 .text            Execute__12daNpcDrSol_cFv */
void daNpcDrSol_c::Execute() {
    // NONMATCHING
}

/* 809AE5CC-809AE60C 00084C 0040+00 1/1 0/0 0/0 .text            Draw__12daNpcDrSol_cFv */
void daNpcDrSol_c::Draw() {
    // NONMATCHING
}

/* 809AE60C-809AE69C 00088C 0090+00 1/0 0/0 0/0 .text            drawOtherMdls__12daNpcDrSol_cFv */
void daNpcDrSol_c::drawOtherMdls() {
    // NONMATCHING
}

/* 809AE69C-809AE6BC 00091C 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__12daNpcDrSol_cFP10fopAc_ac_c             */
void daNpcDrSol_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809AFA3C-809AFA48 000098 000C+00 0/1 0/0 0/0 .rodata          @4273 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4273[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809AFA3C, &lit_4273);
#pragma pop

/* 809AFA48-809AFA4C 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4274 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4274[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809AFA48, &lit_4274);
#pragma pop

/* 809AFA4C-809AFA58 0000A8 000C+00 0/1 0/0 0/0 .rodata          @4275 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4275[12] = {
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809AFA4C, &lit_4275);
#pragma pop

/* 809AFA58-809AFA5C 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4276 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4276[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809AFA58, &lit_4276);
#pragma pop

/* 809AFA5C-809AFA68 0000B8 000C+00 0/1 0/0 0/0 .rodata          @4277 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4277[12] = {
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809AFA5C, &lit_4277);
#pragma pop

/* 809AFA68-809AFA74 0000C4 000C+00 0/1 0/0 0/0 .rodata          @4278 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4278[12] = {
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809AFA68, &lit_4278);
#pragma pop

/* 809AFA74-809AFA7C 0000D0 0008+00 0/1 0/0 0/0 .rodata          @4279 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4279[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809AFA74, &lit_4279);
#pragma pop

/* 809AFA7C-809AFA88 0000D8 000C+00 0/1 0/0 0/0 .rodata          @4280 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4280[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809AFA7C, &lit_4280);
#pragma pop

/* 809AFA88-809AFA8C 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4281 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4281[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809AFA88, &lit_4281);
#pragma pop

/* 809AFA8C-809AFAA0 0000E8 0014+00 0/0 0/0 0/0 .rodata          @4282 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4282[20] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809AFA8C, &lit_4282);
#pragma pop

/* 809AFAA0-809AFAA4 0000FC 0004+00 1/2 0/0 0/0 .rodata          @4309 */
SECTION_RODATA static u8 const lit_4309[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809AFAA0, &lit_4309);

/* 809AE6BC-809AE844 00093C 0188+00 1/1 0/0 0/0 .text            reset__12daNpcDrSol_cFv */
void daNpcDrSol_c::reset() {
    // NONMATCHING
}

/* 809AE844-809AE8EC 000AC4 00A8+00 1/1 0/0 0/0 .text
 * setAction__12daNpcDrSol_cFM12daNpcDrSol_cFPCvPvPv_b          */
void daNpcDrSol_c::setAction(bool (daNpcDrSol_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 809AE8EC-809AE994 000B6C 00A8+00 1/1 0/0 0/0 .text            chkFindPlayer__12daNpcDrSol_cFv */
void daNpcDrSol_c::chkFindPlayer() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809AFAA4-809AFAA8 000100 0004+00 2/2 0/0 0/0 .rodata          @4369 */
SECTION_RODATA static f32 const lit_4369 = -1.0f;
COMPILER_STRIP_GATE(0x809AFAA4, &lit_4369);

/* 809AE994-809AEB18 000C14 0184+00 2/0 0/0 0/0 .text            wait__12daNpcDrSol_cFPv */
void daNpcDrSol_c::wait(void* param_0) {
    // NONMATCHING
}

/* 809AEB18-809AEB94 000D98 007C+00 1/0 0/0 0/0 .text            setMotion__12daNpcDrSol_cFifi */
void daNpcDrSol_c::setMotion(int param_0, f32 param_1, int param_2) {
    // NONMATCHING
}

/* 809AEB94-809AED20 000E14 018C+00 1/0 0/0 0/0 .text            talk__12daNpcDrSol_cFPv */
void daNpcDrSol_c::talk(void* param_0) {
    // NONMATCHING
}

/* 809AED20-809AED40 000FA0 0020+00 1/0 0/0 0/0 .text            daNpcDrSol_Create__FPv */
static void daNpcDrSol_Create(void* param_0) {
    // NONMATCHING
}

/* 809AED40-809AED60 000FC0 0020+00 1/0 0/0 0/0 .text            daNpcDrSol_Delete__FPv */
static void daNpcDrSol_Delete(void* param_0) {
    // NONMATCHING
}

/* 809AED60-809AED80 000FE0 0020+00 1/0 0/0 0/0 .text            daNpcDrSol_Execute__FPv */
static void daNpcDrSol_Execute(void* param_0) {
    // NONMATCHING
}

/* 809AED80-809AEDA0 001000 0020+00 1/0 0/0 0/0 .text            daNpcDrSol_Draw__FPv */
static void daNpcDrSol_Draw(void* param_0) {
    // NONMATCHING
}

/* 809AEDA0-809AEDA8 001020 0008+00 1/0 0/0 0/0 .text            daNpcDrSol_IsDelete__FPv */
static bool daNpcDrSol_IsDelete(void* param_0) {
    return true;
}

/* 809AEDA8-809AEE24 001028 007C+00 1/0 0/0 0/0 .text            setParam__12daNpcDrSol_cFv */
void daNpcDrSol_c::setParam() {
    // NONMATCHING
}

/* 809AEE24-809AEFDC 0010A4 01B8+00 1/0 0/0 0/0 .text            main__12daNpcDrSol_cFv */
void daNpcDrSol_c::main() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809AFAA8-809AFAAC 000104 0004+00 0/1 0/0 0/0 .rodata          @4499 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4499 = 10.0f;
COMPILER_STRIP_GATE(0x809AFAA8, &lit_4499);
#pragma pop

/* 809AFAAC-809AFAB0 000108 0004+00 0/1 0/0 0/0 .rodata          @4500 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4500 = 15.0f;
COMPILER_STRIP_GATE(0x809AFAAC, &lit_4500);
#pragma pop

/* 809AEFDC-809AF12C 00125C 0150+00 1/0 0/0 0/0 .text            setAttnPos__12daNpcDrSol_cFv */
void daNpcDrSol_c::setAttnPos() {
    // NONMATCHING
}

/* 809AF12C-809AF1FC 0013AC 00D0+00 1/0 0/0 0/0 .text            setMotionAnm__12daNpcDrSol_cFif */
bool daNpcDrSol_c::setMotionAnm(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 809AF1FC-809AF204 00147C 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__12daNpcDrSol_cFv */
bool daNpcDrSol_c::drawDbgInfo() {
    return false;
}

/* 809AF204-809AF450 001484 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
// daNpcF_c::~daNpcF_c() {
extern "C" void __dt__8daNpcF_cFv() {
    // NONMATCHING
}

/* 809AF450-809AF498 0016D0 0048+00 3/2 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
extern "C" void __dt__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 809AF498-809AF4D4 001718 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 809AF4D4-809AF6C4 001754 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
// daNpcF_c::daNpcF_c() {
extern "C" void __ct__8daNpcF_cFv() {
    // NONMATCHING
}

/* 809AF6C4-809AF6C8 001944 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 809AF6C8-809AF6CC 001948 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 809AF6CC-809AF708 00194C 003C+00 1/1 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
extern "C" void __ct__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 809AF708-809AF778 001988 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 809AF778-809AF7D4 0019F8 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 809AF7D4-809AF844 001A54 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 809AF844-809AF88C 001AC4 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 809AF88C-809AF894 001B0C 0008+00 1/0 0/0 0/0 .text            ctrlBtk__8daNpcF_cFv */
// bool daNpcF_c::ctrlBtk() {
extern "C" bool ctrlBtk__8daNpcF_cFv() {
    return false;
}

/* 809AF894-809AF898 001B14 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 809AF898-809AF8A0 001B18 0008+00 1/0 0/0 0/0 .text            setExpressionAnm__8daNpcF_cFib */
// bool daNpcF_c::setExpressionAnm(int param_0, bool param_1) {
extern "C" bool setExpressionAnm__8daNpcF_cFib() {
    return true;
}

/* 809AF8A0-809AF8A8 001B20 0008+00 1/0 0/0 0/0 .text            setExpressionBtp__8daNpcF_cFi */
// bool daNpcF_c::setExpressionBtp(int param_0) {
extern "C" bool setExpressionBtp__8daNpcF_cFi() {
    return true;
}

/* 809AF8A8-809AF8AC 001B28 0004+00 1/0 0/0 0/0 .text            setExpression__8daNpcF_cFif */
// void daNpcF_c::setExpression(int param_0, f32 param_1) {
extern "C" void setExpression__8daNpcF_cFif() {
    /* empty function */
}

/* 809AF8AC-809AF8F4 001B2C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809AFC28-809AFC34 00015C 000C+00 2/2 0/0 0/0 .data            __vt__18daNpcDrSol_Param_c */
SECTION_DATA extern void* __vt__18daNpcDrSol_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcDrSol_Param_cFv,
};

/* 809AFC40-809AFC4C 000008 000C+00 1/1 0/0 0/0 .bss             @3801 */
static u8 lit_3801[12];

/* 809AFC4C-809AFC50 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 809AF8F4-809AF934 001B74 0040+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_drainSol_cpp */
void __sinit_d_a_npc_drainSol_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x809AF8F4, __sinit_d_a_npc_drainSol_cpp);
#pragma pop

/* 809AF934-809AF938 001BB4 0004+00 1/0 0/0 0/0 .text            adjustShapeAngle__12daNpcDrSol_cFv
 */
void daNpcDrSol_c::adjustShapeAngle() {
    /* empty function */
}

/* 809AF938-809AF980 001BB8 0048+00 2/1 0/0 0/0 .text            __dt__18daNpcDrSol_Param_cFv */
daNpcDrSol_Param_c::~daNpcDrSol_Param_c() {
    // NONMATCHING
}

/* 809AF980-809AF988 001C00 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_809AF980() {
    // NONMATCHING
}

/* 809AF988-809AF990 001C08 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_809AF988() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809AFAC4-809AFAC9 000120 0005+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809AFAC4 = "Shoe";
#pragma pop

/* 809AFAB0-809AFAB0 00010C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
