/**
 * @file d_a_obj_ss_drink.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_ss_drink.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void __dt__15daObj_SSDrink_cFv();
extern "C" void create__15daObj_SSDrink_cFv();
extern "C" void CreateHeap__15daObj_SSDrink_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void Delete__15daObj_SSDrink_cFv();
extern "C" void Execute__15daObj_SSDrink_cFv();
extern "C" void Draw__15daObj_SSDrink_cFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void createHeapCallBack__15daObj_SSDrink_cFP10fopAc_ac_c();
extern "C" void setSoldOut__15daObj_SSDrink_cFv();
extern "C" void getResName__15daObj_SSDrink_cFv();
extern "C" void getTypeFromParam__15daObj_SSDrink_cFv();
extern "C" void getSwitchFromParam__15daObj_SSDrink_cFv();
extern "C" void getCapacityFromParam__15daObj_SSDrink_cFv();
extern "C" void getFlowNodeNum__15daObj_SSDrink_cFv();
extern "C" void getValue__15daObj_SSDrink_cFv();
extern "C" void restart__15daObj_SSDrink_cFv();
extern "C" void initialize__15daObj_SSDrink_cFv();
extern "C" void checkProcess__15daObj_SSDrink_cFM15daObj_SSDrink_cFPCvPvPv_i();
extern "C" void setProcess__15daObj_SSDrink_cFM15daObj_SSDrink_cFPCvPvPv_i();
extern "C" void setParam__15daObj_SSDrink_cFv();
extern "C" void setEnvTevColor__15daObj_SSDrink_cFv();
extern "C" void setRoomNo__15daObj_SSDrink_cFv();
extern "C" void setMtx__15daObj_SSDrink_cFv();
extern "C" void setAttnPos__15daObj_SSDrink_cFv();
extern "C" void animeEntry__15daObj_SSDrink_cFv();
extern "C" void animePlay__15daObj_SSDrink_cFv();
extern "C" void chkEvent__15daObj_SSDrink_cFv();
extern "C" void orderEvent__15daObj_SSDrink_cFv();
extern "C" bool wait__15daObj_SSDrink_cFPv();
extern "C" void talk__15daObj_SSDrink_cFPv();
extern "C" void drink__15daObj_SSDrink_cFPv();
extern "C" static void daObj_SSDrink_Create__FPv();
extern "C" static void daObj_SSDrink_Delete__FPv();
extern "C" static void daObj_SSDrink_Execute__FPv();
extern "C" static void daObj_SSDrink_Draw__FPv();
extern "C" static bool daObj_SSDrink_IsDelete__FPv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __sinit_d_a_obj_ss_drink_cpp();
extern "C" static void func_80CE672C();
extern "C" static void func_80CE6734();
extern "C" void getLeftHandPos__9daPy_py_cCFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" u8 const mCcDObjInfo__15daObj_SSDrink_c[48];
extern "C" extern char const* const d_a_obj_ss_drink__stringBase0;
extern "C" u8 mCcDCyl__15daObj_SSDrink_c[68];

//
// External References:
//

extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss();
extern "C" void entry__13mDoExt_btpAnmFP16J3DMaterialTables();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void offSwitch__10dSv_info_cFii();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void setSimple__21dDlst_shadowControl_cFP4cXyzffP4cXyzsfP9_GXTexObj();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void GetPolyColor__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetRoomId__4dBgSFRC13cBgS_PolyInfo();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWallR__12dBgS_AcchCirFf();
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
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void __ct__14daObj_SSBase_cFv();
extern "C" void __dt__14daObj_SSBase_cFv();
extern "C" void getProcessID__14daObj_SSBase_cFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dMsgObject_addTotalPrice__Fs();
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
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __ptmf_test();
extern "C" void __ptmf_cmpr();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" void soldoutItem__8daMyna_cFUi();

//
// Declarations:
//

/* ############################################################################################## */
/* 80CE6990-80CE6990 000060 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CE6990 = "Obj_btl";
SECTION_DEAD static char const* const stringBase_80CE6998 = "al_bottle.bmd";
#pragma pop

/* 80CE69E4-80CE69E8 -00001 0004+00 2/2 0/0 0/0 .data            l_resFileName */
SECTION_DATA static void* l_resFileName = (void*)&d_a_obj_ss_drink__stringBase0;

/* 80CE69E8-80CE69EC -00001 0004+00 1/2 0/0 0/0 .data            l_bmdName */
SECTION_DATA static void* l_bmdName = (void*)(((char*)&d_a_obj_ss_drink__stringBase0) + 0x8);

/* 80CE69EC-80CE6A30 000028 0044+00 2/2 0/0 0/0 .data            mCcDCyl__15daObj_SSDrink_c */
SECTION_DATA u8 daObj_SSDrink_c::mCcDCyl[68] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80CE6A30-80CE6A3C -00001 000C+00 1/1 0/0 0/0 .data            @4020 */
SECTION_DATA static void* lit_4020[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)drink__15daObj_SSDrink_cFPv,
};

/* 80CE6A3C-80CE6A48 -00001 000C+00 1/1 0/0 0/0 .data            @4063 */
SECTION_DATA static void* lit_4063[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)drink__15daObj_SSDrink_cFPv,
};

/* 80CE6A48-80CE6A54 -00001 000C+00 1/1 0/0 0/0 .data            @4164 */
SECTION_DATA static void* lit_4164[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daObj_SSDrink_cFPv,
};

/* 80CE6A54-80CE6A60 -00001 000C+00 1/1 0/0 0/0 .data            @4233 */
SECTION_DATA static void* lit_4233[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)drink__15daObj_SSDrink_cFPv,
};

/* 80CE6A60-80CE6A6C -00001 000C+00 1/1 0/0 0/0 .data            @4284 */
SECTION_DATA static void* lit_4284[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__15daObj_SSDrink_cFPv,
};

/* 80CE6A6C-80CE6A78 -00001 000C+00 0/1 0/0 0/0 .data            @4334 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4334[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)drink__15daObj_SSDrink_cFPv,
};
#pragma pop

/* 80CE6A78-80CE6A84 -00001 000C+00 0/1 0/0 0/0 .data            @4344 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4344[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__15daObj_SSDrink_cFPv,
};
#pragma pop

/* 80CE6A84-80CE6A90 -00001 000C+00 0/1 0/0 0/0 .data            @4352 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4352[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__15daObj_SSDrink_cFPv,
};
#pragma pop

/* 80CE6A90-80CE6A9C -00001 000C+00 1/1 0/0 0/0 .data            @4405 */
SECTION_DATA static void* lit_4405[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)drink__15daObj_SSDrink_cFPv,
};

/* 80CE6A9C-80CE6AA8 -00001 000C+00 1/1 0/0 0/0 .data            @4432 */
SECTION_DATA static void* lit_4432[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__15daObj_SSDrink_cFPv,
};

/* 80CE6AA8-80CE6AC8 -00001 0020+00 1/0 0/0 0/0 .data            daObj_SSDrink_MethodTable */
static actor_method_class daObj_SSDrink_MethodTable = {
    (process_method_func)daObj_SSDrink_Create__FPv,
    (process_method_func)daObj_SSDrink_Delete__FPv,
    (process_method_func)daObj_SSDrink_Execute__FPv,
    (process_method_func)daObj_SSDrink_IsDelete__FPv,
    (process_method_func)daObj_SSDrink_Draw__FPv,
};

/* 80CE6AC8-80CE6AF8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_SSDRINK */
extern actor_process_profile_definition g_profile_OBJ_SSDRINK = {
  fpcLy_CURRENT_e,            // mLayerID
  7,                          // mListID
  fpcPi_CURRENT_e,            // mListPrio
  PROC_OBJ_SSDRINK,           // mProcName
  &g_fpcLf_Method.base,      // sub_method
  sizeof(daObj_SSDrink_c),    // mSize
  0,                          // mSizeOther
  0,                          // mParameters
  &g_fopAc_Method.base,       // sub_method
  68,                         // mPriority
  &daObj_SSDrink_MethodTable, // sub_method
  0x00064100,                 // mStatus
  fopAc_UNK_GROUP_5_e,        // mActorType
  fopAc_CULLBOX_CUSTOM_e,     // cullType
};

/* 80CE6AF8-80CE6B04 000134 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 80CE6B04-80CE6B10 000140 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80CE6B10-80CE6B34 00014C 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80CE6734,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80CE672C,
};

/* 80CE6B34-80CE6B40 000170 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80CE6B40-80CE6B4C 00017C 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80CE6B4C-80CE6B58 000188 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80CE6B58-80CE6B64 000194 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80CE6B64-80CE6B70 0001A0 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80CE6B70-80CE6B84 0001AC 0014+00 2/2 0/0 0/0 .data            __vt__15daObj_SSDrink_c */
SECTION_DATA extern void* __vt__15daObj_SSDrink_c[5] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daObj_SSDrink_cFv,
    (void*)setSoldOut__15daObj_SSDrink_cFv,
    (void*)getProcessID__14daObj_SSBase_cFv,
};

/* 80CE4F78-80CE51C8 000078 0250+00 1/0 0/0 0/0 .text            __dt__15daObj_SSDrink_cFv */
daObj_SSDrink_c::~daObj_SSDrink_c() {
    // NONMATCHING
}

/* 80CE51C8-80CE53EC 0002C8 0224+00 1/1 0/0 0/0 .text            create__15daObj_SSDrink_cFv */
void daObj_SSDrink_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CE6930-80CE6960 000000 0030+00 5/5 0/0 0/0 .rodata          mCcDObjInfo__15daObj_SSDrink_c */
SECTION_RODATA u8 const daObj_SSDrink_c::mCcDObjInfo[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x79, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CE6930, &daObj_SSDrink_c::mCcDObjInfo);

/* 80CE6960-80CE6964 000030 0004+00 1/3 0/0 0/0 .rodata          @4000 */
SECTION_RODATA static f32 const lit_4000 = 1.0f;
COMPILER_STRIP_GATE(0x80CE6960, &lit_4000);

/* 80CE6990-80CE6990 000060 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CE69A6 = "al_bottle.btp";
SECTION_DEAD static char const* const stringBase_80CE69B4 = "al_bottle.brk";
#pragma pop

/* 80CE53EC-80CE55A8 0004EC 01BC+00 1/1 0/0 0/0 .text            CreateHeap__15daObj_SSDrink_cFv */
void daObj_SSDrink_c::CreateHeap() {
    // NONMATCHING
}

/* 80CE55A8-80CE55F0 0006A8 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80CE55F0-80CE5624 0006F0 0034+00 1/1 0/0 0/0 .text            Delete__15daObj_SSDrink_cFv */
void daObj_SSDrink_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CE6964-80CE6968 000034 0004+00 0/2 0/0 0/0 .rodata          @4057 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4057 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80CE6964, &lit_4057);
#pragma pop

/* 80CE6968-80CE696C 000038 0004+00 0/2 0/0 0/0 .rodata          @4058 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4058 = 10.0f;
COMPILER_STRIP_GATE(0x80CE6968, &lit_4058);
#pragma pop

/* 80CE696C-80CE6970 00003C 0004+00 0/2 0/0 0/0 .rodata          @4059 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4059 = 30.0f;
COMPILER_STRIP_GATE(0x80CE696C, &lit_4059);
#pragma pop

/* 80CE5624-80CE5858 000724 0234+00 2/2 0/0 0/0 .text            Execute__15daObj_SSDrink_cFv */
void daObj_SSDrink_c::Execute() {
    // NONMATCHING
}

/* 80CE5858-80CE5994 000958 013C+00 1/1 0/0 0/0 .text            Draw__15daObj_SSDrink_cFv */
void daObj_SSDrink_c::Draw() {
    // NONMATCHING
}

/* 80CE5994-80CE59DC 000A94 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* 80CE59DC-80CE59FC 000ADC 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__15daObj_SSDrink_cFP10fopAc_ac_c          */
void daObj_SSDrink_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80CE59FC-80CE5A50 000AFC 0054+00 1/0 0/0 0/0 .text            setSoldOut__15daObj_SSDrink_cFv */
void daObj_SSDrink_c::setSoldOut() {
    // NONMATCHING
}

/* 80CE5A50-80CE5A60 000B50 0010+00 4/4 0/0 0/0 .text            getResName__15daObj_SSDrink_cFv */
void daObj_SSDrink_c::getResName() {
    // NONMATCHING
}

/* 80CE5A60-80CE5B0C 000B60 00AC+00 1/1 0/0 0/0 .text getTypeFromParam__15daObj_SSDrink_cFv */
void daObj_SSDrink_c::getTypeFromParam() {
    // NONMATCHING
}

/* 80CE5B0C-80CE5B18 000C0C 000C+00 1/1 0/0 0/0 .text getSwitchFromParam__15daObj_SSDrink_cFv */
void daObj_SSDrink_c::getSwitchFromParam() {
    // NONMATCHING
}

/* 80CE5B18-80CE5B3C 000C18 0024+00 1/1 0/0 0/0 .text getCapacityFromParam__15daObj_SSDrink_cFv */
void daObj_SSDrink_c::getCapacityFromParam() {
    // NONMATCHING
}

/* 80CE5B3C-80CE5B74 000C3C 0038+00 2/2 0/0 0/0 .text            getFlowNodeNum__15daObj_SSDrink_cFv
 */
void daObj_SSDrink_c::getFlowNodeNum() {
    // NONMATCHING
}

/* 80CE5B74-80CE5B80 000C74 000C+00 1/1 0/0 0/0 .text            getValue__15daObj_SSDrink_cFv */
void daObj_SSDrink_c::getValue() {
    // NONMATCHING
}

/* 80CE5B80-80CE5BF0 000C80 0070+00 1/1 0/0 0/0 .text            restart__15daObj_SSDrink_cFv */
void daObj_SSDrink_c::restart() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CE6970-80CE6974 000040 0004+00 0/1 0/0 0/0 .rodata          @4204 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4204 = -30.0f;
COMPILER_STRIP_GATE(0x80CE6970, &lit_4204);
#pragma pop

/* 80CE6974-80CE6978 000044 0004+00 0/1 0/0 0/0 .rodata          @4205 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4205 = -15.0f;
COMPILER_STRIP_GATE(0x80CE6974, &lit_4205);
#pragma pop

/* 80CE6978-80CE697C 000048 0004+00 0/1 0/0 0/0 .rodata          @4206 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4206 = 45.0f;
COMPILER_STRIP_GATE(0x80CE6978, &lit_4206);
#pragma pop

/* 80CE697C-80CE6980 00004C 0004+00 0/2 0/0 0/0 .rodata          @4207 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4207 = 24.0f;
COMPILER_STRIP_GATE(0x80CE697C, &lit_4207);
#pragma pop

/* 80CE6980-80CE6984 000050 0004+00 0/2 0/0 0/0 .rodata          @4208 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4208 = 12.0f;
COMPILER_STRIP_GATE(0x80CE6980, &lit_4208);
#pragma pop

/* 80CE5BF0-80CE5DB0 000CF0 01C0+00 1/1 0/0 0/0 .text            initialize__15daObj_SSDrink_cFv */
void daObj_SSDrink_c::initialize() {
    // NONMATCHING
}

/* 80CE5DB0-80CE5DDC 000EB0 002C+00 6/6 0/0 0/0 .text
 * checkProcess__15daObj_SSDrink_cFM15daObj_SSDrink_cFPCvPvPv_i */
void daObj_SSDrink_c::checkProcess(int (daObj_SSDrink_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80CE5DDC-80CE5EC8 000EDC 00EC+00 4/4 0/0 0/0 .text
 * setProcess__15daObj_SSDrink_cFM15daObj_SSDrink_cFPCvPvPv_i   */
void daObj_SSDrink_c::setProcess(int (daObj_SSDrink_c::*param_0)(void*)) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CE6984-80CE6988 000054 0004+00 0/1 0/0 0/0 .rodata          @4257 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4257 = -5.0f;
COMPILER_STRIP_GATE(0x80CE6984, &lit_4257);
#pragma pop

/* 80CE5EC8-80CE5FE4 000FC8 011C+00 1/1 0/0 0/0 .text            setParam__15daObj_SSDrink_cFv */
void daObj_SSDrink_c::setParam() {
    // NONMATCHING
}

/* 80CE5FE4-80CE6040 0010E4 005C+00 2/2 0/0 0/0 .text            setEnvTevColor__15daObj_SSDrink_cFv
 */
void daObj_SSDrink_c::setEnvTevColor() {
    // NONMATCHING
}

/* 80CE6040-80CE6084 001140 0044+00 2/2 0/0 0/0 .text            setRoomNo__15daObj_SSDrink_cFv */
void daObj_SSDrink_c::setRoomNo() {
    // NONMATCHING
}

/* 80CE6084-80CE60E8 001184 0064+00 1/1 0/0 0/0 .text            setMtx__15daObj_SSDrink_cFv */
void daObj_SSDrink_c::setMtx() {
    // NONMATCHING
}

/* 80CE60E8-80CE6170 0011E8 0088+00 1/1 0/0 0/0 .text            setAttnPos__15daObj_SSDrink_cFv */
void daObj_SSDrink_c::setAttnPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CE6988-80CE6990 000058 0008+00 1/1 0/0 0/0 .rodata          @4320 */
SECTION_RODATA static u8 const lit_4320[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CE6988, &lit_4320);

/* 80CE6170-80CE61E4 001270 0074+00 1/1 0/0 0/0 .text            animeEntry__15daObj_SSDrink_cFv */
void daObj_SSDrink_c::animeEntry() {
    // NONMATCHING
}

/* 80CE61E4-80CE622C 0012E4 0048+00 1/1 0/0 0/0 .text            animePlay__15daObj_SSDrink_cFv */
void daObj_SSDrink_c::animePlay() {
    // NONMATCHING
}

/* 80CE622C-80CE63AC 00132C 0180+00 1/1 0/0 0/0 .text            chkEvent__15daObj_SSDrink_cFv */
void daObj_SSDrink_c::chkEvent() {
    // NONMATCHING
}

/* 80CE63AC-80CE644C 0014AC 00A0+00 1/1 0/0 0/0 .text            orderEvent__15daObj_SSDrink_cFv */
void daObj_SSDrink_c::orderEvent() {
    // NONMATCHING
}

/* 80CE644C-80CE6454 00154C 0008+00 2/0 0/0 0/0 .text            wait__15daObj_SSDrink_cFPv */
bool daObj_SSDrink_c::wait(void* param_0) {
    return true;
}

/* 80CE6454-80CE6514 001554 00C0+00 3/0 0/0 0/0 .text            talk__15daObj_SSDrink_cFPv */
void daObj_SSDrink_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80CE6514-80CE6624 001614 0110+00 5/0 0/0 0/0 .text            drink__15daObj_SSDrink_cFPv */
void daObj_SSDrink_c::drink(void* param_0) {
    // NONMATCHING
}

/* 80CE6624-80CE6644 001724 0020+00 1/0 0/0 0/0 .text            daObj_SSDrink_Create__FPv */
static void daObj_SSDrink_Create(void* param_0) {
    // NONMATCHING
}

/* 80CE6644-80CE6664 001744 0020+00 1/0 0/0 0/0 .text            daObj_SSDrink_Delete__FPv */
static void daObj_SSDrink_Delete(void* param_0) {
    // NONMATCHING
}

/* 80CE6664-80CE6684 001764 0020+00 1/0 0/0 0/0 .text            daObj_SSDrink_Execute__FPv */
static void daObj_SSDrink_Execute(void* param_0) {
    // NONMATCHING
}

/* 80CE6684-80CE66A4 001784 0020+00 1/0 0/0 0/0 .text            daObj_SSDrink_Draw__FPv */
static void daObj_SSDrink_Draw(void* param_0) {
    // NONMATCHING
}

/* 80CE66A4-80CE66AC 0017A4 0008+00 1/0 0/0 0/0 .text            daObj_SSDrink_IsDelete__FPv */
static bool daObj_SSDrink_IsDelete(void* param_0) {
    return true;
}

/* 80CE66AC-80CE66F4 0017AC 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80CE66F4-80CE672C 0017F4 0038+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_ss_drink_cpp */
void __sinit_d_a_obj_ss_drink_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80CE66F4, __sinit_d_a_obj_ss_drink_cpp);
#pragma pop

/* 80CE672C-80CE6734 00182C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80CE672C() {
    // NONMATCHING
}

/* 80CE6734-80CE673C 001834 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80CE6734() {
    // NONMATCHING
}

/* 80CE673C-80CE6758 00183C 001C+00 2/2 0/0 0/0 .text            getLeftHandPos__9daPy_py_cCFv */
// void daPy_py_c::getLeftHandPos() const {
extern "C" void getLeftHandPos__9daPy_py_cCFv() {
    // NONMATCHING
}

/* 80CE6758-80CE67A0 001858 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80CE67A0-80CE67E8 0018A0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80CE67E8-80CE6858 0018E8 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80CE6858-80CE68B4 001958 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80CE68B4-80CE6924 0019B4 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80CE6990-80CE6990 000060 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
