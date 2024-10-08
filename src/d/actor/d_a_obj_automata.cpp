/**
 * @file d_a_obj_automata.cpp
 * 
*/

#include "d/actor/d_a_obj_automata.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __dt__16daObj_AutoMata_cFv();
extern "C" void create__16daObj_AutoMata_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void CreateHeap__16daObj_AutoMata_cFv();
extern "C" void Delete__16daObj_AutoMata_cFv();
extern "C" void Execute__16daObj_AutoMata_cFv();
extern "C" void Draw__16daObj_AutoMata_cFv();
extern "C" void createHeapCallBack__16daObj_AutoMata_cFP10fopAc_ac_c();
extern "C" void srchTHouse__16daObj_AutoMata_cFP10fopAc_ac_cPv();
extern "C" void setAnm__16daObj_AutoMata_cFib();
extern "C" void setEnvTevColor__16daObj_AutoMata_cFv();
extern "C" void setRoomNo__16daObj_AutoMata_cFv();
extern "C" void setMtx__16daObj_AutoMata_cFv();
extern "C" void setSe__16daObj_AutoMata_cFv();
extern "C" static void daObj_AutoMata_Create__FPv();
extern "C" static void daObj_AutoMata_Delete__FPv();
extern "C" static void daObj_AutoMata_Execute__FPv();
extern "C" static void daObj_AutoMata_Draw__FPv();
extern "C" static bool daObj_AutoMata_IsDelete__FPv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __sinit_d_a_obj_automata_cpp();
extern "C" void __dt__22daObj_AutoMata_Param_cFv();
extern "C" static void func_80BA6BEC();
extern "C" static void func_80BA6BF4();
extern "C" u8 const m__22daObj_AutoMata_Param_c[12];
extern "C" extern char const* const d_a_obj_automata__stringBase0;

//
// External References:
//

extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fpcEx_IsExist__FUi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void GetPolyColor__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetRoomId__4dBgSFRC13cBgS_PolyInfo();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
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
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void __dt__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey();
extern "C" void __cvt_fp2unsigned();
extern "C" void _savegpr_25();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_25();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" extern u8 mStayNo__20dStage_roomControl_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80BA6CA4-80BA6CA4 000094 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BA6CA4 = "";
SECTION_DEAD static char const* const stringBase_80BA6CA5 = "AutoMata";
#pragma pop

/* 80BA6CB0-80BA6CBC 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80BA6CBC-80BA6CD0 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80BA6CD0-80BA6CD8 000020 0008+00 4/5 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[8] = {
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x01,
};

/* 80BA6CD8-80BA6CE0 -00001 0008+00 4/6 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[2] = {
    (void*)&d_a_obj_automata__stringBase0,
    (void*)(((char*)&d_a_obj_automata__stringBase0) + 0x1),
};

/* 80BA6CE0-80BA6D24 000030 0044+00 1/2 0/0 0/0 .data            l_ccDCyl */
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

/* 80BA6D24-80BA6D64 000074 0040+00 1/2 0/0 0/0 .data            l_ccDSph */
static dCcD_SrcSph l_ccDSph = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 0.0f} // mSph
    } // mSphAttr
};

/* 80BA6D64-80BA6D84 -00001 0020+00 1/0 0/0 0/0 .data            daObj_AutoMata_MethodTable */
static actor_method_class daObj_AutoMata_MethodTable = {
    (process_method_func)daObj_AutoMata_Create__FPv,
    (process_method_func)daObj_AutoMata_Delete__FPv,
    (process_method_func)daObj_AutoMata_Execute__FPv,
    (process_method_func)daObj_AutoMata_IsDelete__FPv,
    (process_method_func)daObj_AutoMata_Draw__FPv,
};

/* 80BA6D84-80BA6DB4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_AUTOMATA */
extern actor_process_profile_definition g_profile_OBJ_AUTOMATA = {
  fpcLy_CURRENT_e,             // mLayerID
  8,                           // mListID
  fpcPi_CURRENT_e,             // mListPrio
  PROC_OBJ_AUTOMATA,           // mProcName
  &g_fpcLf_Method.mBase,       // sub_method
  sizeof(daObj_AutoMata_c),    // mSize
  0,                           // mSizeOther
  0,                           // mParameters
  &g_fopAc_Method.base,        // sub_method
  81,                          // mPriority
  &daObj_AutoMata_MethodTable, // sub_method
  0x00044100,                  // mStatus
  fopAc_ACTOR_e,               // mActorType
  fopAc_CULLBOX_CUSTOM_e,      // cullType
};

/* 80BA6DB4-80BA6DC0 000104 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80BA6DC0-80BA6DE4 000110 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80BA6BF4,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80BA6BEC,
};

/* 80BA6DE4-80BA6DF0 000134 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80BA6DF0-80BA6DFC 000140 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80BA6DFC-80BA6E08 00014C 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80BA6E08-80BA6E14 000158 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80BA6E14-80BA6E20 000164 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80BA6E20-80BA6E2C 000170 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80BA6E2C-80BA6E38 00017C 000C+00 2/2 0/0 0/0 .data            __vt__16daObj_AutoMata_c */
SECTION_DATA extern void* __vt__16daObj_AutoMata_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daObj_AutoMata_cFv,
};

/* 80BA56EC-80BA5990 0000EC 02A4+00 1/0 0/0 0/0 .text            __dt__16daObj_AutoMata_cFv */
daObj_AutoMata_c::~daObj_AutoMata_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BA6C10-80BA6C1C 000000 000C+00 5/5 0/0 0/0 .rodata          m__22daObj_AutoMata_Param_c */
SECTION_RODATA u8 const daObj_AutoMata_Param_c::m[12] = {
    0x43, 0x5C, 0x00, 0x00, 0x42, 0xA0, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BA6C10, &daObj_AutoMata_Param_c::m);

/* 80BA6C1C-80BA6C4C 00000C 0030+00 1/1 0/0 0/0 .rodata          l_ccDObjData */
SECTION_RODATA static u8 const l_ccDObjData[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x79, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BA6C1C, &l_ccDObjData);

/* 80BA6C4C-80BA6C50 00003C 0004+00 0/1 0/0 0/0 .rodata          @3962 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3962 = -200.0f;
COMPILER_STRIP_GATE(0x80BA6C4C, &lit_3962);
#pragma pop

/* 80BA6C50-80BA6C54 000040 0004+00 0/1 0/0 0/0 .rodata          @3963 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3963 = -100.0f;
COMPILER_STRIP_GATE(0x80BA6C50, &lit_3963);
#pragma pop

/* 80BA6C54-80BA6C58 000044 0004+00 0/1 0/0 0/0 .rodata          @3964 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3964 = 200.0f;
COMPILER_STRIP_GATE(0x80BA6C54, &lit_3964);
#pragma pop

/* 80BA6C58-80BA6C5C 000048 0004+00 0/1 0/0 0/0 .rodata          @3965 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3965 = 300.0f;
COMPILER_STRIP_GATE(0x80BA6C58, &lit_3965);
#pragma pop

/* 80BA6C5C-80BA6C60 00004C 0004+00 0/3 0/0 0/0 .rodata          @3966 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3966 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80BA6C5C, &lit_3966);
#pragma pop

/* 80BA5990-80BA5D2C 000390 039C+00 1/1 0/0 0/0 .text            create__16daObj_AutoMata_cFv */
void daObj_AutoMata_c::create() {
    // NONMATCHING
}

/* 80BA5D2C-80BA5D74 00072C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80BA5D74-80BA5DBC 000774 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80BA5DBC-80BA5E04 0007BC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80BA5E04-80BA5E74 000804 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80BA5E74-80BA5ED0 000874 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80BA5ED0-80BA5F40 0008D0 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80BA5F40-80BA5F88 000940 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BA6C60-80BA6C64 000050 0004+00 1/3 0/0 0/0 .rodata          @4108 */
SECTION_RODATA static f32 const lit_4108 = 1.0f;
COMPILER_STRIP_GATE(0x80BA6C60, &lit_4108);

/* 80BA5F88-80BA60A0 000988 0118+00 1/1 0/0 0/0 .text            CreateHeap__16daObj_AutoMata_cFv */
void daObj_AutoMata_c::CreateHeap() {
    // NONMATCHING
}

/* 80BA60A0-80BA60D4 000AA0 0034+00 1/1 0/0 0/0 .text            Delete__16daObj_AutoMata_cFv */
void daObj_AutoMata_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BA6C64-80BA6C68 000054 0004+00 0/2 0/0 0/0 .rodata          @4173 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4173[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80BA6C64, &lit_4173);
#pragma pop

/* 80BA6C68-80BA6C6C 000058 0004+00 0/1 0/0 0/0 .rodata          @4174 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4174 = -4.0f;
COMPILER_STRIP_GATE(0x80BA6C68, &lit_4174);
#pragma pop

/* 80BA6C6C-80BA6C70 00005C 0004+00 0/1 0/0 0/0 .rodata          @4175 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4175 = 40.0f;
COMPILER_STRIP_GATE(0x80BA6C6C, &lit_4175);
#pragma pop

/* 80BA60D4-80BA639C 000AD4 02C8+00 2/2 0/0 0/0 .text            Execute__16daObj_AutoMata_cFv */
void daObj_AutoMata_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BA6C70-80BA6C74 000060 0004+00 0/1 0/0 0/0 .rodata          @4197 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4197 = 600.0f;
COMPILER_STRIP_GATE(0x80BA6C70, &lit_4197);
#pragma pop

/* 80BA6C74-80BA6C78 000064 0004+00 0/1 0/0 0/0 .rodata          @4198 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4198 = 20.0f;
COMPILER_STRIP_GATE(0x80BA6C74, &lit_4198);
#pragma pop

/* 80BA639C-80BA6480 000D9C 00E4+00 1/1 0/0 0/0 .text            Draw__16daObj_AutoMata_cFv */
void daObj_AutoMata_c::Draw() {
    // NONMATCHING
}

/* 80BA6480-80BA64A0 000E80 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__16daObj_AutoMata_cFP10fopAc_ac_c         */
void daObj_AutoMata_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80BA64A0-80BA6500 000EA0 0060+00 1/1 0/0 0/0 .text
 * srchTHouse__16daObj_AutoMata_cFP10fopAc_ac_cPv               */
void daObj_AutoMata_c::srchTHouse(fopAc_ac_c* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BA6C78-80BA6C80 000068 0008+00 0/1 0/0 0/0 .rodata          bckArcIx$4220 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const bckArcIx[8] = {
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x06,
};
COMPILER_STRIP_GATE(0x80BA6C78, &bckArcIx);
#pragma pop

/* 80BA6C80-80BA6C88 000070 0008+00 0/1 0/0 0/0 .rodata          btkArcIx$4221 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const btkArcIx[8] = {
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0D,
};
COMPILER_STRIP_GATE(0x80BA6C80, &btkArcIx);
#pragma pop

/* 80BA6C88-80BA6C90 000078 0008+00 0/1 0/0 0/0 .rodata          playMode$4222 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const playMode[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
};
COMPILER_STRIP_GATE(0x80BA6C88, &playMode);
#pragma pop

/* 80BA6C90-80BA6C94 000080 0004+00 0/2 0/0 0/0 .rodata          @4252 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4252 = -1.0f;
COMPILER_STRIP_GATE(0x80BA6C90, &lit_4252);
#pragma pop

/* 80BA6500-80BA6634 000F00 0134+00 1/1 0/0 1/1 .text            setAnm__16daObj_AutoMata_cFib */
void daObj_AutoMata_c::setAnm(int param_0, bool param_1) {
    // NONMATCHING
}

/* 80BA6634-80BA6690 001034 005C+00 2/2 0/0 0/0 .text setEnvTevColor__16daObj_AutoMata_cFv */
void daObj_AutoMata_c::setEnvTevColor() {
    // NONMATCHING
}

/* 80BA6690-80BA66D4 001090 0044+00 2/2 0/0 0/0 .text            setRoomNo__16daObj_AutoMata_cFv */
void daObj_AutoMata_c::setRoomNo() {
    // NONMATCHING
}

/* 80BA66D4-80BA674C 0010D4 0078+00 1/1 0/0 0/0 .text            setMtx__16daObj_AutoMata_cFv */
void daObj_AutoMata_c::setMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BA6C94-80BA6C98 000084 0004+00 0/1 0/0 0/0 .rodata          @4349 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4349 = 17.0f;
COMPILER_STRIP_GATE(0x80BA6C94, &lit_4349);
#pragma pop

/* 80BA6C98-80BA6C9C 000088 0004+00 0/1 0/0 0/0 .rodata          @4350 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4350 = 100.0f;
COMPILER_STRIP_GATE(0x80BA6C98, &lit_4350);
#pragma pop

/* 80BA6C9C-80BA6CA0 00008C 0004+00 0/1 0/0 0/0 .rodata          @4351 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4351 = 7.0f;
COMPILER_STRIP_GATE(0x80BA6C9C, &lit_4351);
#pragma pop

/* 80BA6CA0-80BA6CA4 000090 0004+00 0/1 0/0 0/0 .rodata          @4352 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4352 = 67.0f;
COMPILER_STRIP_GATE(0x80BA6CA0, &lit_4352);
#pragma pop

/* 80BA674C-80BA6A10 00114C 02C4+00 1/1 0/0 0/0 .text            setSe__16daObj_AutoMata_cFv */
void daObj_AutoMata_c::setSe() {
    // NONMATCHING
}

/* 80BA6A10-80BA6A30 001410 0020+00 1/0 0/0 0/0 .text            daObj_AutoMata_Create__FPv */
static void daObj_AutoMata_Create(void* param_0) {
    // NONMATCHING
}

/* 80BA6A30-80BA6A50 001430 0020+00 1/0 0/0 0/0 .text            daObj_AutoMata_Delete__FPv */
static void daObj_AutoMata_Delete(void* param_0) {
    // NONMATCHING
}

/* 80BA6A50-80BA6A70 001450 0020+00 1/0 0/0 0/0 .text            daObj_AutoMata_Execute__FPv */
static void daObj_AutoMata_Execute(void* param_0) {
    // NONMATCHING
}

/* 80BA6A70-80BA6A90 001470 0020+00 1/0 0/0 0/0 .text            daObj_AutoMata_Draw__FPv */
static void daObj_AutoMata_Draw(void* param_0) {
    // NONMATCHING
}

/* 80BA6A90-80BA6A98 001490 0008+00 1/0 0/0 0/0 .text            daObj_AutoMata_IsDelete__FPv */
static bool daObj_AutoMata_IsDelete(void* param_0) {
    return true;
}

/* 80BA6A98-80BA6AE0 001498 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BA6E38-80BA6E44 000188 000C+00 2/2 0/0 0/0 .data            __vt__22daObj_AutoMata_Param_c */
SECTION_DATA extern void* __vt__22daObj_AutoMata_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daObj_AutoMata_Param_cFv,
};

/* 80BA6E50-80BA6E5C 000008 000C+00 1/1 0/0 0/0 .bss             @3801 */
static u8 lit_3801[12];

/* 80BA6E5C-80BA6E60 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80BA6AE0-80BA6BA4 0014E0 00C4+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_automata_cpp */
void __sinit_d_a_obj_automata_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80BA6AE0, __sinit_d_a_obj_automata_cpp);
#pragma pop

/* 80BA6BA4-80BA6BEC 0015A4 0048+00 2/1 0/0 0/0 .text            __dt__22daObj_AutoMata_Param_cFv */
daObj_AutoMata_Param_c::~daObj_AutoMata_Param_c() {
    // NONMATCHING
}

/* 80BA6BEC-80BA6BF4 0015EC 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80BA6BEC() {
    // NONMATCHING
}

/* 80BA6BF4-80BA6BFC 0015F4 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80BA6BF4() {
    // NONMATCHING
}

/* 80BA6CA4-80BA6CA4 000094 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */