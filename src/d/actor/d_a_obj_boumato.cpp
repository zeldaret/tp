/**
 * @file d_a_obj_boumato.cpp
 * 
*/

#include "d/actor/d_a_obj_boumato.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __dt__15daObj_BouMato_cFv();
extern "C" void __dt__5csXyzFv();
extern "C" void create__15daObj_BouMato_cFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __dt__8cM3dGLinFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void CreateHeap__15daObj_BouMato_cFv();
extern "C" void Delete__15daObj_BouMato_cFv();
extern "C" void Execute__15daObj_BouMato_cFv();
extern "C" void Draw__15daObj_BouMato_cFv();
extern "C" void createHeapCallBack__15daObj_BouMato_cFP10fopAc_ac_c();
extern "C" void
tgHitCallBack__15daObj_BouMato_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void srchArrow__15daObj_BouMato_cFPvPv();
extern "C" void deleteStuckArrow__15daObj_BouMato_cFv();
extern "C" void getResName__15daObj_BouMato_cFv();
extern "C" void setSwayParam__15daObj_BouMato_cFP10fopAc_ac_c();
extern "C" void setEnvTevColor__15daObj_BouMato_cFv();
extern "C" void setRoomNo__15daObj_BouMato_cFv();
extern "C" void setMtx__15daObj_BouMato_cFv();
extern "C" static void daObj_BouMato_Create__FPv();
extern "C" static void daObj_BouMato_Delete__FPv();
extern "C" static void daObj_BouMato_Execute__FPv();
extern "C" static void daObj_BouMato_Draw__FPv();
extern "C" static bool daObj_BouMato_IsDelete__FPv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __sinit_d_a_obj_boumato_cpp();
extern "C" void __dt__21daObj_BouMato_Param_cFv();
extern "C" static void func_80BBC44C();
extern "C" static void func_80BBC454();
extern "C" u8 const m__21daObj_BouMato_Param_c[28];
extern "C" extern char const* const d_a_obj_boumato__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fpcEx_IsExist__FUi();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void __ct__9dJntCol_cFv();
extern "C" void init__9dJntCol_cFP10fopAc_ac_cPC13dJntColData_cP8J3DModeli();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void GetPolyColor__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetRoomId__4dBgSFRC13cBgS_PolyInfo();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void GetAc__22dCcD_GAtTgCoCommonBaseFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void daNpcT_offTmpBit__FUl();
extern "C" void daNpcT_chkTmpBit__FUl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void _savegpr_25();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_25();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80BBC518-80BBC518 0000A8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BBC518 = "";
SECTION_DEAD static char const* const stringBase_80BBC519 = "H_BouMato";
#pragma pop

/* 80BBC52C-80BBC570 000000 0044+00 2/2 0/0 0/0 .data            l_ccDCyl */
static dCcD_SrcCyl l_ccDCyl = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        0.0f, // mRadius
        0.0f // mHeight
    } // mCyl
};

/* 80BBC570-80BBC574 -00001 0004+00 1/1 0/0 0/0 .data            l_resName */
SECTION_DATA static void* l_resName = (void*)(((char*)&d_a_obj_boumato__stringBase0) + 0x1);

/* 80BBC574-80BBC58C 000048 0018+00 1/0 0/0 0/0 .data            jntCoOffset$4044 */
SECTION_DATA static u8 jntCoOffset[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80BBC58C-80BBC598 -00001 000C+00 1/1 0/0 0/0 .data            jntCoData$4045 */
SECTION_DATA static void* jntCoData[3] = {
    (void*)0x01010000,
    (void*)0x40800000,
    (void*)&jntCoOffset,
};

/* 80BBC598-80BBC5B8 -00001 0020+00 1/0 0/0 0/0 .data            daObj_BouMato_MethodTable */
static actor_method_class daObj_BouMato_MethodTable = {
    (process_method_func)daObj_BouMato_Create__FPv,
    (process_method_func)daObj_BouMato_Delete__FPv,
    (process_method_func)daObj_BouMato_Execute__FPv,
    (process_method_func)daObj_BouMato_IsDelete__FPv,
    (process_method_func)daObj_BouMato_Draw__FPv,
};

/* 80BBC5B8-80BBC5E8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_BOUMATO */
extern actor_process_profile_definition g_profile_OBJ_BOUMATO = {
  fpcLy_CURRENT_e,            // mLayerID
  7,                          // mListID
  fpcPi_CURRENT_e,            // mListPrio
  PROC_OBJ_BOUMATO,           // mProcName
  &g_fpcLf_Method.mBase,      // sub_method
  sizeof(daObj_BouMato_c),    // mSize
  0,                          // mSizeOther
  0,                          // mParameters
  &g_fopAc_Method.base,       // sub_method
  80,                         // mPriority
  &daObj_BouMato_MethodTable, // sub_method
  0x00044100,                 // mStatus
  fopAc_ACTOR_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,     // cullType
};

/* 80BBC5E8-80BBC60C 0000BC 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80BBC454,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80BBC44C,
};

/* 80BBC60C-80BBC618 0000E0 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80BBC618-80BBC624 0000EC 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80BBC624-80BBC630 0000F8 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80BBC630-80BBC63C 000104 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80BBC63C-80BBC648 000110 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80BBC648-80BBC654 00011C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGLin */
SECTION_DATA extern void* __vt__8cM3dGLin[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGLinFv,
};

/* 80BBC654-80BBC660 000128 000C+00 2/2 0/0 0/0 .data            __vt__15daObj_BouMato_c */
SECTION_DATA extern void* __vt__15daObj_BouMato_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daObj_BouMato_cFv,
};

/* 80BBAFEC-80BBB1F4 0000EC 0208+00 1/0 0/0 0/0 .text            __dt__15daObj_BouMato_cFv */
daObj_BouMato_c::~daObj_BouMato_c() {
    // NONMATCHING
}

/* 80BBB1F4-80BBB230 0002F4 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BBC470-80BBC48C 000000 001C+00 4/4 0/0 0/0 .rodata          m__21daObj_BouMato_Param_c */
SECTION_RODATA u8 const daObj_BouMato_Param_c::m[28] = {
    0x00, 0x00, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8,
    0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BBC470, &daObj_BouMato_Param_c::m);

/* 80BBC48C-80BBC4BC 00001C 0030+00 1/1 0/0 0/0 .rodata          l_ccDObjData */
SECTION_RODATA static u8 const l_ccDObjData[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x79, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BBC48C, &l_ccDObjData);

/* 80BBC4BC-80BBC4C0 00004C 0004+00 0/1 0/0 0/0 .rodata          @3956 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3956 = -300.0f;
COMPILER_STRIP_GATE(0x80BBC4BC, &lit_3956);
#pragma pop

/* 80BBC4C0-80BBC4C4 000050 0004+00 0/1 0/0 0/0 .rodata          @3957 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3957 = -50.0f;
COMPILER_STRIP_GATE(0x80BBC4C0, &lit_3957);
#pragma pop

/* 80BBC4C4-80BBC4C8 000054 0004+00 0/1 0/0 0/0 .rodata          @3958 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3958 = 300.0f;
COMPILER_STRIP_GATE(0x80BBC4C4, &lit_3958);
#pragma pop

/* 80BBC4C8-80BBC4CC 000058 0004+00 0/1 0/0 0/0 .rodata          @3959 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3959 = 450.0f;
COMPILER_STRIP_GATE(0x80BBC4C8, &lit_3959);
#pragma pop

/* 80BBB230-80BBB558 000330 0328+00 1/1 0/0 0/0 .text            create__15daObj_BouMato_cFv */
void daObj_BouMato_c::create() {
    // NONMATCHING
}

/* 80BBB558-80BBB55C 000658 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80BBB55C-80BBB5A4 00065C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGLinFv */
// cM3dGLin::~cM3dGLin() {
extern "C" void __dt__8cM3dGLinFv() {
    // NONMATCHING
}

/* 80BBB5A4-80BBB5EC 0006A4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80BBB5EC-80BBB634 0006EC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80BBB634-80BBB6A4 000734 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80BBB6A4-80BBB700 0007A4 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80BBB700-80BBB770 000800 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80BBB770-80BBB800 000870 0090+00 1/1 0/0 0/0 .text            CreateHeap__15daObj_BouMato_cFv */
void daObj_BouMato_c::CreateHeap() {
    // NONMATCHING
}

/* 80BBB800-80BBB834 000900 0034+00 1/1 0/0 0/0 .text            Delete__15daObj_BouMato_cFv */
void daObj_BouMato_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BBC4CC-80BBC4D0 00005C 0004+00 0/3 0/0 0/0 .rodata          @4241 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4241 = 1.0f;
COMPILER_STRIP_GATE(0x80BBC4CC, &lit_4241);
#pragma pop

/* 80BBC4D0-80BBC4D4 000060 0004+00 0/1 0/0 0/0 .rodata          @4242 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4242 = -1.0f;
COMPILER_STRIP_GATE(0x80BBC4D0, &lit_4242);
#pragma pop

/* 80BBC4D4-80BBC4D8 000064 0004+00 0/2 0/0 0/0 .rodata          @4243 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4243 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80BBC4D4, &lit_4243);
#pragma pop

/* 80BBC4D8-80BBC4DC 000068 0004+00 0/1 0/0 0/0 .rodata          @4244 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4244[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80BBC4D8, &lit_4244);
#pragma pop

/* 80BBC4DC-80BBC4E0 00006C 0004+00 0/1 0/0 0/0 .rodata          @4245 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4245 = 3.0f / 40.0f;
COMPILER_STRIP_GATE(0x80BBC4DC, &lit_4245);
#pragma pop

/* 80BBC4E0-80BBC4E4 000070 0004+00 0/1 0/0 0/0 .rodata          @4246 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4246 = 50.0f;
COMPILER_STRIP_GATE(0x80BBC4E0, &lit_4246);
#pragma pop

/* 80BBC4E4-80BBC4E8 000074 0004+00 0/1 0/0 0/0 .rodata          @4247 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4247 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80BBC4E4, &lit_4247);
#pragma pop

/* 80BBC4E8-80BBC4EC 000078 0004+00 0/1 0/0 0/0 .rodata          @4248 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4248 = 100.0f;
COMPILER_STRIP_GATE(0x80BBC4E8, &lit_4248);
#pragma pop

/* 80BBC4EC-80BBC4F0 00007C 0004+00 0/1 0/0 0/0 .rodata          @4249 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4249 = 0.125f;
COMPILER_STRIP_GATE(0x80BBC4EC, &lit_4249);
#pragma pop

/* 80BBC4F0-80BBC4F4 000080 0004+00 0/1 0/0 0/0 .rodata          @4250 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4250 = 125.0f;
COMPILER_STRIP_GATE(0x80BBC4F0, &lit_4250);
#pragma pop

/* 80BBC518-80BBC518 0000A8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BBC523 = "BouMato";
#pragma pop

/* 80BBB834-80BBBD80 000934 054C+00 2/2 0/0 0/0 .text            Execute__15daObj_BouMato_cFv */
void daObj_BouMato_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BBC4F4-80BBC4F8 000084 0004+00 0/1 0/0 0/0 .rodata          @4266 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4266 = 20.0f;
COMPILER_STRIP_GATE(0x80BBC4F4, &lit_4266);
#pragma pop

/* 80BBBD80-80BBBE50 000E80 00D0+00 1/1 0/0 0/0 .text            Draw__15daObj_BouMato_cFv */
void daObj_BouMato_c::Draw() {
    // NONMATCHING
}

/* 80BBBE50-80BBBE70 000F50 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__15daObj_BouMato_cFP10fopAc_ac_c          */
void daObj_BouMato_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80BBBE70-80BBBEA0 000F70 0030+00 1/1 0/0 0/0 .text
 * tgHitCallBack__15daObj_BouMato_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
void daObj_BouMato_c::tgHitCallBack(fopAc_ac_c* param_0, dCcD_GObjInf* param_1,
                                        fopAc_ac_c* param_2, dCcD_GObjInf* param_3) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BBC678-80BBC808 000008 0190+00 2/2 0/0 0/0 .bss             l_findActorPtrs */
static u8 l_findActorPtrs[400];

/* 80BBC808-80BBC80C 000198 0004+00 2/2 0/0 0/0 .bss             l_findCount */
static u8 l_findCount[4];

/* 80BBBEA0-80BBBF4C 000FA0 00AC+00 1/1 0/0 0/0 .text            srchArrow__15daObj_BouMato_cFPvPv
 */
void daObj_BouMato_c::srchArrow(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80BBBF4C-80BBBFF8 00104C 00AC+00 1/1 0/0 0/0 .text deleteStuckArrow__15daObj_BouMato_cFv */
void daObj_BouMato_c::deleteStuckArrow() {
    // NONMATCHING
}

/* 80BBBFF8-80BBC008 0010F8 0010+00 3/3 0/0 0/0 .text            getResName__15daObj_BouMato_cFv */
void daObj_BouMato_c::getResName() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BBC4F8-80BBC504 000088 000C+00 0/1 0/0 0/0 .rodata          @4327 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4327[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BBC4F8, &lit_4327);
#pragma pop

/* 80BBC504-80BBC508 000094 0004+00 0/1 0/0 0/0 .rodata          @4355 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4355 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80BBC504, &lit_4355);
#pragma pop

/* 80BBC508-80BBC510 000098 0004+04 0/1 0/0 0/0 .rodata          @4356 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4356[1 + 1 /* padding */] = {
    0x43360B61,
    /* padding */
    0x00000000,
};
COMPILER_STRIP_GATE(0x80BBC508, &lit_4356);
#pragma pop

/* 80BBC510-80BBC518 0000A0 0008+00 0/1 0/0 0/0 .rodata          @4359 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4359[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BBC510, &lit_4359);
#pragma pop

/* 80BBC008-80BBC19C 001108 0194+00 1/1 0/0 0/0 .text
 * setSwayParam__15daObj_BouMato_cFP10fopAc_ac_c                */
void daObj_BouMato_c::setSwayParam(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80BBC19C-80BBC1F8 00129C 005C+00 2/2 0/0 0/0 .text            setEnvTevColor__15daObj_BouMato_cFv
 */
void daObj_BouMato_c::setEnvTevColor() {
    // NONMATCHING
}

/* 80BBC1F8-80BBC23C 0012F8 0044+00 2/2 0/0 0/0 .text            setRoomNo__15daObj_BouMato_cFv */
void daObj_BouMato_c::setRoomNo() {
    // NONMATCHING
}

/* 80BBC23C-80BBC2C0 00133C 0084+00 1/1 0/0 0/0 .text            setMtx__15daObj_BouMato_cFv */
void daObj_BouMato_c::setMtx() {
    // NONMATCHING
}

/* 80BBC2C0-80BBC2E0 0013C0 0020+00 1/0 0/0 0/0 .text            daObj_BouMato_Create__FPv */
static void daObj_BouMato_Create(void* param_0) {
    // NONMATCHING
}

/* 80BBC2E0-80BBC300 0013E0 0020+00 1/0 0/0 0/0 .text            daObj_BouMato_Delete__FPv */
static void daObj_BouMato_Delete(void* param_0) {
    // NONMATCHING
}

/* 80BBC300-80BBC320 001400 0020+00 1/0 0/0 0/0 .text            daObj_BouMato_Execute__FPv */
static void daObj_BouMato_Execute(void* param_0) {
    // NONMATCHING
}

/* 80BBC320-80BBC340 001420 0020+00 1/0 0/0 0/0 .text            daObj_BouMato_Draw__FPv */
static void daObj_BouMato_Draw(void* param_0) {
    // NONMATCHING
}

/* 80BBC340-80BBC348 001440 0008+00 1/0 0/0 0/0 .text            daObj_BouMato_IsDelete__FPv */
static bool daObj_BouMato_IsDelete(void* param_0) {
    return true;
}

/* 80BBC348-80BBC390 001448 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BBC660-80BBC66C 000134 000C+00 2/2 0/0 0/0 .data            __vt__21daObj_BouMato_Param_c */
SECTION_DATA extern void* __vt__21daObj_BouMato_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__21daObj_BouMato_Param_cFv,
};

/* 80BBC80C-80BBC818 00019C 000C+00 1/1 0/0 0/0 .bss             @3830 */
static u8 lit_3830[12];

/* 80BBC818-80BBC81C 0001A8 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80BBC390-80BBC404 001490 0074+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_boumato_cpp */
void __sinit_d_a_obj_boumato_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80BBC390, __sinit_d_a_obj_boumato_cpp);
#pragma pop

/* 80BBC404-80BBC44C 001504 0048+00 2/1 0/0 0/0 .text            __dt__21daObj_BouMato_Param_cFv */
daObj_BouMato_Param_c::~daObj_BouMato_Param_c() {
    // NONMATCHING
}

/* 80BBC44C-80BBC454 00154C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80BBC44C() {
    // NONMATCHING
}

/* 80BBC454-80BBC45C 001554 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80BBC454() {
    // NONMATCHING
}

/* 80BBC518-80BBC518 0000A8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */