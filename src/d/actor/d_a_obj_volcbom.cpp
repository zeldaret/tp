/**
 * @file d_a_obj_volcbom.cpp
 * 
*/

#include "d/actor/d_a_obj_volcbom.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void eventCallBack__FPvi();
extern "C" void initBaseMtx__14daObjVolcBom_cFv();
extern "C" void setBaseMtx__14daObjVolcBom_cFv();
extern "C" void Create__14daObjVolcBom_cFv();
extern "C" void CreateHeap__14daObjVolcBom_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void create1st__14daObjVolcBom_cFv();
extern "C" void Execute__14daObjVolcBom_cFPPA3_A4_f();
extern "C" void mode_proc_call__14daObjVolcBom_cFv();
extern "C" void init_modeWaitAppear__14daObjVolcBom_cFv();
extern "C" void modeWaitAppear__14daObjVolcBom_cFv();
extern "C" void init_modeFall__14daObjVolcBom_cFv();
extern "C" void modeFall__14daObjVolcBom_cFv();
extern "C" void init_modeWaitEndFallDemo__14daObjVolcBom_cFv();
extern "C" void modeWaitEndFallDemo__14daObjVolcBom_cFv();
extern "C" void init_modeWait__14daObjVolcBom_cFv();
extern "C" void modeWait__14daObjVolcBom_cFv();
extern "C" void clrDzb__14daObjVolcBom_cFv();
extern "C" void setDzb__14daObjVolcBom_cFv();
extern "C" void appear__14daObjVolcBom_cFv();
extern "C" void disappear__14daObjVolcBom_cFv();
extern "C" void setSmoke__14daObjVolcBom_cFv();
extern "C" void checkTalkDistance__14daObjVolcBom_cFv();
extern "C" void calcMidnaWaitPos__14daObjVolcBom_cFv();
extern "C" void setSrcEffect__14daObjVolcBom_cFv();
extern "C" void setBindEffect__14daObjVolcBom_cFv();
extern "C" void followBindEffect__14daObjVolcBom_cFv();
extern "C" void endBindEffect__14daObjVolcBom_cFv();
extern "C" void followSrcEffect__14daObjVolcBom_cFv();
extern "C" void endSrcEffect__14daObjVolcBom_cFv();
extern "C" void event_proc_call__14daObjVolcBom_cFv();
extern "C" void orderZHintEvent__14daObjVolcBom_cFv();
extern "C" void actionWait__14daObjVolcBom_cFv();
extern "C" void actionOrderEvent__14daObjVolcBom_cFv();
extern "C" void actionOrderATalkEvent__14daObjVolcBom_cFv();
extern "C" void actionTalkEvent__14daObjVolcBom_cFv();
extern "C" void actionWarpEvent__14daObjVolcBom_cFv();
extern "C" void actionDead__14daObjVolcBom_cFv();
extern "C" void demoProc__14daObjVolcBom_cFv();
extern "C" void calcObjPos__14daObjVolcBom_cFv();
extern "C" void Draw__14daObjVolcBom_cFv();
extern "C" void Delete__14daObjVolcBom_cFv();
extern "C" static void daObjVolcBom_create1st__FP14daObjVolcBom_c();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" static void daObjVolcBom_MoveBGDelete__FP14daObjVolcBom_c();
extern "C" static void daObjVolcBom_MoveBGExecute__FP14daObjVolcBom_c();
extern "C" static void daObjVolcBom_MoveBGDraw__FP14daObjVolcBom_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void func_80D26B28(void* _this, u8*);
extern "C" static void func_80D26B44();
extern "C" static void func_80D26B4C();
extern "C" extern char const* const d_a_obj_volcbom__stringBase0;

//
// External References:
//

extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb();
extern "C" void entry__13mDoExt_bckAnmFP12J3DModelDataf();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_btkAnmRemove__FP12J3DModelData();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void dComIfGp_TargetWarpPt_set__FUc();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setSkipProc__14dEvt_control_cFPvPFPvi_ii();
extern "C" void setPt2__14dEvt_control_cFPv();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc();
extern "C" void startCheck__16dEvent_manager_cFs();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void getRunEventName__16dEvent_manager_cFv();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void request__10dAttHint_cFP10fopAc_ac_ci();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c();
extern "C" void doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci();
extern "C" void getEventId__10dMsgFlow_cFPi();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
extern "C" void func_802807E0();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void getName__10JUTNameTabCFUs();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" extern u8 g_meter2_info[248];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" extern u8 struct_80D26EA8[4];

//
// Declarations:
//

/* 80D24198-80D241E0 000078 0048+00 1/1 0/0 0/0 .text            eventCallBack__FPvi */
static void eventCallBack(void* param_0, int param_1) {
    // NONMATCHING
}

/* 80D241E0-80D24238 0000C0 0058+00 1/1 0/0 0/0 .text            initBaseMtx__14daObjVolcBom_cFv */
void daObjVolcBom_c::initBaseMtx() {
    // NONMATCHING
}

/* 80D24238-80D242A8 000118 0070+00 2/2 0/0 0/0 .text            setBaseMtx__14daObjVolcBom_cFv */
void daObjVolcBom_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D26B5C-80D26B68 000000 000C+00 9/9 0/0 0/0 .rodata          l_midna_offset */
SECTION_RODATA static u8 const l_midna_offset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x44, 0x7A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D26B5C, &l_midna_offset);

/* 80D26B68-80D26B6C 00000C 0002+02 0/1 0/0 0/0 .rodata          l_disapp_eff */
#pragma push
#pragma force_active on
SECTION_RODATA static u16 const l_disapp_eff[1 + 1 /* padding */] = {
    0x8B30,
    /* padding */
    0x0000,
};
COMPILER_STRIP_GATE(0x80D26B68, &l_disapp_eff);
#pragma pop

/* 80D26B6C-80D26B74 000010 0006+02 0/1 0/0 0/0 .rodata          l_start_eff */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_start_eff[6 + 2 /* padding */] = {
    0x8B,
    0x31,
    0x8B,
    0x32,
    0x8B,
    0x33,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D26B6C, &l_start_eff);
#pragma pop

/* 80D26B74-80D26B7C 000018 0008+00 1/1 0/0 0/0 .rodata          l_bind_eff */
SECTION_RODATA static u8 const l_bind_eff[8] = {
    0x8B, 0x47, 0x8B, 0x48, 0x8B, 0x49, 0x8B, 0x4A,
};
COMPILER_STRIP_GATE(0x80D26B74, &l_bind_eff);

/* 80D26B7C-80D26B80 000020 0004+00 4/11 0/0 0/0 .rodata          @3785 */
SECTION_RODATA static f32 const lit_3785 = 1.0f;
COMPILER_STRIP_GATE(0x80D26B7C, &lit_3785);

/* 80D26B80-80D26B84 000024 0004+00 0/1 0/0 0/0 .rodata          @3786 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3786 = 30.0f;
COMPILER_STRIP_GATE(0x80D26B80, &lit_3786);
#pragma pop

/* 80D26B84-80D26B88 000028 0004+00 0/1 0/0 0/0 .rodata          @3787 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3787 = -6.0f;
COMPILER_STRIP_GATE(0x80D26B84, &lit_3787);
#pragma pop

/* 80D26B88-80D26B8C 00002C 0004+00 1/2 0/0 0/0 .rodata          @3788 */
SECTION_RODATA static f32 const lit_3788 = 10.0f;
COMPILER_STRIP_GATE(0x80D26B88, &lit_3788);

/* 80D26C0C-80D26C0C 0000B0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D26C0C = "M_VolcBom";
SECTION_DEAD static char const* const stringBase_80D26C16 = "PORTAL_WARP_BIGVOLC";
SECTION_DEAD static char const* const stringBase_80D26C2A = "BigVolc";
SECTION_DEAD static char const* const stringBase_80D26C32 = "effect_p";
#pragma pop

/* 80D26C54-80D26C60 000000 000C+00 3/3 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80D26C60-80D26C74 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80D26C74-80D26C78 -00001 0004+00 5/6 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_volcbom__stringBase0;

/* 80D26C78-80D26C7C -00001 0004+00 0/1 0/0 0/0 .data            l_portal_warp_name */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_portal_warp_name =
    (void*)(((char*)&d_a_obj_volcbom__stringBase0) + 0xA);
#pragma pop

/* 80D26C7C-80D26C80 -00001 0004+00 2/2 0/0 0/0 .data            l_staff_name */
SECTION_DATA static void* l_staff_name = (void*)(((char*)&d_a_obj_volcbom__stringBase0) + 0x1E);

/* 80D26C80-80D26CC4 00002C 0044+00 0/1 0/0 0/0 .data            l_cyl_src */
#pragma push
#pragma force_active on
static dCcD_SrcCyl l_cyl_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0x1f}, {0x0, 0x10}, 0x78}}, // mObj
        {dCcD_SE_NONE, 0x0, 0xc, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        350.0f, // mRadius
        1500.0f // mHeight
    } // mCyl
};
#pragma pop

/* 80D242A8-80D244E0 000188 0238+00 1/0 0/0 0/0 .text            Create__14daObjVolcBom_cFv */
void daObjVolcBom_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D26B8C-80D26B90 000030 0004+00 1/6 0/0 0/0 .rodata          @3904 */
SECTION_RODATA static u8 const lit_3904[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D26B8C, &lit_3904);

/* 80D26C0C-80D26C0C 0000B0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D26C3B = "WAIT";
SECTION_DEAD static char const* const stringBase_80D26C40 = "FLY";
SECTION_DEAD static char const* const stringBase_80D26C44 = "INIT";
SECTION_DEAD static char const* const stringBase_80D26C49 = "BEAM";
#pragma pop

/* 80D26CC4-80D26CD0 -00001 000C+00 0/1 0/0 0/0 .data            @3933 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3933[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWaitAppear__14daObjVolcBom_cFv,
};
#pragma pop

/* 80D26CD0-80D26CDC -00001 000C+00 0/1 0/0 0/0 .data            @3934 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3934[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeFall__14daObjVolcBom_cFv,
};
#pragma pop

/* 80D26CDC-80D26CE8 -00001 000C+00 0/1 0/0 0/0 .data            @3935 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3935[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWaitEndFallDemo__14daObjVolcBom_cFv,
};
#pragma pop

/* 80D26CE8-80D26CF4 -00001 000C+00 0/1 0/0 0/0 .data            @3936 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3936[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWait__14daObjVolcBom_cFv,
};
#pragma pop

/* 80D26CF4-80D26D24 0000A0 0030+00 0/1 0/0 0/0 .data            mode_proc$3932 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 mode_proc[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80D26D24-80D26D30 -00001 000C+00 0/1 0/0 0/0 .data            @4366 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4366[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionWait__14daObjVolcBom_cFv,
};
#pragma pop

/* 80D26D30-80D26D3C -00001 000C+00 0/1 0/0 0/0 .data            @4367 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4367[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionOrderEvent__14daObjVolcBom_cFv,
};
#pragma pop

/* 80D26D3C-80D26D48 -00001 000C+00 0/1 0/0 0/0 .data            @4368 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4368[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionTalkEvent__14daObjVolcBom_cFv,
};
#pragma pop

/* 80D26D48-80D26D54 -00001 000C+00 0/1 0/0 0/0 .data            @4369 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4369[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionWarpEvent__14daObjVolcBom_cFv,
};
#pragma pop

/* 80D26D54-80D26D60 -00001 000C+00 0/1 0/0 0/0 .data            @4370 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4370[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionOrderATalkEvent__14daObjVolcBom_cFv,
};
#pragma pop

/* 80D26D60-80D26D6C -00001 000C+00 0/1 0/0 0/0 .data            @4371 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4371[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionDead__14daObjVolcBom_cFv,
};
#pragma pop

/* 80D26D6C-80D26DB4 000118 0048+00 0/1 0/0 0/0 .data            l_func$4365 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func[72] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80D26DB4-80D26DC4 -00001 0010+00 1/1 0/0 0/0 .data            action_table$4540 */
SECTION_DATA static void* action_table[4] = {
    (void*)(((char*)&d_a_obj_volcbom__stringBase0) + 0x2F),
    (void*)(((char*)&d_a_obj_volcbom__stringBase0) + 0x34),
    (void*)(((char*)&d_a_obj_volcbom__stringBase0) + 0x38),
    (void*)(((char*)&d_a_obj_volcbom__stringBase0) + 0x3D),
};

/* 80D26DC4-80D26DE4 -00001 0020+00 1/0 0/0 0/0 .data            daObjVolcBom_METHODS */
static actor_method_class daObjVolcBom_METHODS = {
    (process_method_func)daObjVolcBom_create1st__FP14daObjVolcBom_c,
    (process_method_func)daObjVolcBom_MoveBGDelete__FP14daObjVolcBom_c,
    (process_method_func)daObjVolcBom_MoveBGExecute__FP14daObjVolcBom_c,
    0,
    (process_method_func)daObjVolcBom_MoveBGDraw__FP14daObjVolcBom_c,
};

/* 80D26DE4-80D26E14 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_VolcanicBomb */
extern actor_process_profile_definition g_profile_Obj_VolcanicBomb = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_VolcanicBomb,  // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjVolcBom_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  594,                    // mPriority
  &daObjVolcBom_METHODS,  // sub_method
  0x00040000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80D26E14-80D26E20 0001C0 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80D26E20-80D26E2C 0001CC 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80D26E2C-80D26E38 0001D8 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80D26E38-80D26E44 0001E4 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80D26E44-80D26E50 0001F0 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80D26E50-80D26E74 0001FC 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D26B4C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D26B44,
};

/* 80D26E74-80D26E80 000220 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80D244E0-80D248AC 0003C0 03CC+00 1/0 0/0 0/0 .text            CreateHeap__14daObjVolcBom_cFv */
void daObjVolcBom_c::CreateHeap() {
    // NONMATCHING
}

/* 80D248AC-80D248F4 00078C 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80D248F4-80D249D0 0007D4 00DC+00 1/1 0/0 0/0 .text            create1st__14daObjVolcBom_cFv */
void daObjVolcBom_c::create1st() {
    // NONMATCHING
}

/* 80D249D0-80D24A2C 0008B0 005C+00 1/0 0/0 0/0 .text            Execute__14daObjVolcBom_cFPPA3_A4_f
 */
void daObjVolcBom_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 80D24A2C-80D24B18 00090C 00EC+00 1/1 0/0 0/0 .text            mode_proc_call__14daObjVolcBom_cFv
 */
void daObjVolcBom_c::mode_proc_call() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D26B90-80D26B94 000034 0004+00 1/2 0/0 0/0 .rodata          @3958 */
SECTION_RODATA static f32 const lit_3958 = 2000.0f;
COMPILER_STRIP_GATE(0x80D26B90, &lit_3958);

/* 80D24B18-80D24B6C 0009F8 0054+00 1/1 0/0 0/0 .text init_modeWaitAppear__14daObjVolcBom_cFv */
void daObjVolcBom_c::init_modeWaitAppear() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D26B94-80D26B98 000038 0004+00 0/1 0/0 0/0 .rodata          @3997 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3997 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x80D26B94, &lit_3997);
#pragma pop

/* 80D26B98-80D26B9C 00003C 0004+00 0/1 0/0 0/0 .rodata          @3998 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3998 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80D26B98, &lit_3998);
#pragma pop

/* 80D26B9C-80D26BA0 000040 0004+00 0/2 0/0 0/0 .rodata          @3999 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3999 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x80D26B9C, &lit_3999);
#pragma pop

/* 80D26BA0-80D26BA4 000044 0004+00 1/5 0/0 0/0 .rodata          @4000 */
SECTION_RODATA static f32 const lit_4000 = -1.0f;
COMPILER_STRIP_GATE(0x80D26BA0, &lit_4000);

/* 80D26BA4-80D26BA8 000048 0004+00 0/1 0/0 0/0 .rodata          @4001 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4001 = 15000.0f;
COMPILER_STRIP_GATE(0x80D26BA4, &lit_4001);
#pragma pop

/* 80D26BA8-80D26BAC 00004C 0004+00 0/1 0/0 0/0 .rodata          @4002 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4002 = -250.0f;
COMPILER_STRIP_GATE(0x80D26BA8, &lit_4002);
#pragma pop

/* 80D24B6C-80D24D80 000A4C 0214+00 1/0 0/0 0/0 .text            modeWaitAppear__14daObjVolcBom_cFv
 */
void daObjVolcBom_c::modeWaitAppear() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D26BAC-80D26BB0 000050 0004+00 0/1 0/0 0/0 .rodata          @4022 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4022 = 0.5f;
COMPILER_STRIP_GATE(0x80D26BAC, &lit_4022);
#pragma pop

/* 80D24D80-80D24E50 000C60 00D0+00 1/1 0/0 0/0 .text            init_modeFall__14daObjVolcBom_cFv
 */
void daObjVolcBom_c::init_modeFall() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D26BB0-80D26BC0 000054 000E+02 0/1 0/0 0/0 .rodata          l_effect_id$4032 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_effect_id[14 + 2 /* padding */] = {
    0x85,
    0xF7,
    0x85,
    0xF8,
    0x85,
    0xF9,
    0x85,
    0xFA,
    0x85,
    0xFB,
    0x85,
    0xFC,
    0x85,
    0xFD,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D26BB0, &l_effect_id);
#pragma pop

/* 80D24E50-80D25024 000D30 01D4+00 1/0 0/0 0/0 .text            modeFall__14daObjVolcBom_cFv */
void daObjVolcBom_c::modeFall() {
    // NONMATCHING
}

/* 80D25024-80D25038 000F04 0014+00 1/1 0/0 0/0 .text init_modeWaitEndFallDemo__14daObjVolcBom_cFv
 */
void daObjVolcBom_c::init_modeWaitEndFallDemo() {
    // NONMATCHING
}

/* 80D25038-80D25094 000F18 005C+00 1/0 0/0 0/0 .text modeWaitEndFallDemo__14daObjVolcBom_cFv */
void daObjVolcBom_c::modeWaitEndFallDemo() {
    // NONMATCHING
}

/* 80D25094-80D25100 000F74 006C+00 2/2 0/0 0/0 .text            init_modeWait__14daObjVolcBom_cFv
 */
void daObjVolcBom_c::init_modeWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D26BC0-80D26BC4 000064 0004+00 1/1 0/0 0/0 .rodata          @4103 */
SECTION_RODATA static f32 const lit_4103 = 750.0f;
COMPILER_STRIP_GATE(0x80D26BC0, &lit_4103);

/* 80D25100-80D25178 000FE0 0078+00 1/0 0/0 0/0 .text            modeWait__14daObjVolcBom_cFv */
void daObjVolcBom_c::modeWait() {
    // NONMATCHING
}

/* 80D25178-80D251CC 001058 0054+00 1/1 0/0 0/0 .text            clrDzb__14daObjVolcBom_cFv */
void daObjVolcBom_c::clrDzb() {
    // NONMATCHING
}

/* 80D251CC-80D25224 0010AC 0058+00 1/1 0/0 0/0 .text            setDzb__14daObjVolcBom_cFv */
void daObjVolcBom_c::setDzb() {
    // NONMATCHING
}

/* 80D25224-80D25230 001104 000C+00 2/2 0/0 0/0 .text            appear__14daObjVolcBom_cFv */
void daObjVolcBom_c::appear() {
    // NONMATCHING
}

/* 80D25230-80D2523C 001110 000C+00 1/1 0/0 0/0 .text            disappear__14daObjVolcBom_cFv */
void daObjVolcBom_c::disappear() {
    // NONMATCHING
}

/* 80D2523C-80D252C8 00111C 008C+00 2/2 0/0 0/0 .text            setSmoke__14daObjVolcBom_cFv */
void daObjVolcBom_c::setSmoke() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D26BC4-80D26BCC 000068 0004+04 1/1 0/0 0/0 .rodata          @4162 */
SECTION_RODATA static f32 const lit_4162[1 + 1 /* padding */] = {
    500.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80D26BC4, &lit_4162);

/* 80D26BCC-80D26BD4 000070 0008+00 1/1 0/0 0/0 .rodata          @4164 */
SECTION_RODATA static u8 const lit_4164[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D26BCC, &lit_4164);

/* 80D252C8-80D25364 0011A8 009C+00 3/3 0/0 0/0 .text checkTalkDistance__14daObjVolcBom_cFv */
void daObjVolcBom_c::checkTalkDistance() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D26BD4-80D26BD8 000078 0004+00 0/1 0/0 0/0 .rodata          @4175 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4175 = 1000.0f;
COMPILER_STRIP_GATE(0x80D26BD4, &lit_4175);
#pragma pop

/* 80D26BD8-80D26BDC 00007C 0004+00 0/1 0/0 0/0 .rodata          @4176 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4176 = 250.0f;
COMPILER_STRIP_GATE(0x80D26BD8, &lit_4176);
#pragma pop

/* 80D25364-80D253FC 001244 0098+00 1/1 0/0 0/0 .text calcMidnaWaitPos__14daObjVolcBom_cFv */
void daObjVolcBom_c::calcMidnaWaitPos() {
    // NONMATCHING
}

/* 80D253FC-80D25528 0012DC 012C+00 1/1 0/0 0/0 .text            setSrcEffect__14daObjVolcBom_cFv */
void daObjVolcBom_c::setSrcEffect() {
    // NONMATCHING
}

/* 80D25528-80D255F4 001408 00CC+00 1/1 0/0 0/0 .text            setBindEffect__14daObjVolcBom_cFv
 */
void daObjVolcBom_c::setBindEffect() {
    // NONMATCHING
}

/* 80D255F4-80D25664 0014D4 0070+00 1/1 0/0 0/0 .text followBindEffect__14daObjVolcBom_cFv */
void daObjVolcBom_c::followBindEffect() {
    // NONMATCHING
}

/* 80D25664-80D256B8 001544 0054+00 1/1 0/0 0/0 .text            endBindEffect__14daObjVolcBom_cFv
 */
void daObjVolcBom_c::endBindEffect() {
    // NONMATCHING
}

/* 80D256B8-80D25758 001598 00A0+00 1/1 0/0 0/0 .text            followSrcEffect__14daObjVolcBom_cFv
 */
void daObjVolcBom_c::followSrcEffect() {
    // NONMATCHING
}

/* 80D25758-80D257E4 001638 008C+00 1/1 0/0 0/0 .text            endSrcEffect__14daObjVolcBom_cFv */
void daObjVolcBom_c::endSrcEffect() {
    // NONMATCHING
}

/* 80D257E4-80D25914 0016C4 0130+00 1/1 0/0 0/0 .text            event_proc_call__14daObjVolcBom_cFv
 */
void daObjVolcBom_c::event_proc_call() {
    // NONMATCHING
}

/* 80D25914-80D25A08 0017F4 00F4+00 1/1 0/0 0/0 .text            orderZHintEvent__14daObjVolcBom_cFv
 */
void daObjVolcBom_c::orderZHintEvent() {
    // NONMATCHING
}

/* 80D25A08-80D25B04 0018E8 00FC+00 1/0 0/0 0/0 .text            actionWait__14daObjVolcBom_cFv */
void daObjVolcBom_c::actionWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D26BDC-80D26BE4 000080 0008+00 0/2 0/0 0/0 .rodata          @4470 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4470[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D26BDC, &lit_4470);
#pragma pop

/* 80D26BE4-80D26BEC 000088 0008+00 0/2 0/0 0/0 .rodata          @4471 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4471[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D26BE4, &lit_4471);
#pragma pop

/* 80D26BEC-80D26BF4 000090 0008+00 0/2 0/0 0/0 .rodata          @4472 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4472[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D26BEC, &lit_4472);
#pragma pop

/* 80D26BF4-80D26BF8 000098 0004+00 0/1 0/0 0/0 .rodata          @4473 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4473 = 5.0f;
COMPILER_STRIP_GATE(0x80D26BF4, &lit_4473);
#pragma pop

/* 80D25B04-80D25CA0 0019E4 019C+00 2/1 0/0 0/0 .text actionOrderEvent__14daObjVolcBom_cFv */
void daObjVolcBom_c::actionOrderEvent() {
    // NONMATCHING
}

/* 80D25CA0-80D25DEC 001B80 014C+00 1/0 0/0 0/0 .text actionOrderATalkEvent__14daObjVolcBom_cFv */
void daObjVolcBom_c::actionOrderATalkEvent() {
    // NONMATCHING
}

/* 80D25DEC-80D25E78 001CCC 008C+00 1/0 0/0 0/0 .text            actionTalkEvent__14daObjVolcBom_cFv
 */
void daObjVolcBom_c::actionTalkEvent() {
    // NONMATCHING
}

/* 80D25E78-80D25EE4 001D58 006C+00 1/0 0/0 0/0 .text            actionWarpEvent__14daObjVolcBom_cFv
 */
void daObjVolcBom_c::actionWarpEvent() {
    // NONMATCHING
}

/* 80D25EE4-80D25EE8 001DC4 0004+00 1/0 0/0 0/0 .text            actionDead__14daObjVolcBom_cFv */
void daObjVolcBom_c::actionDead() {
    /* empty function */
}

/* ############################################################################################## */
/* 80D26BF8-80D26BFC 00009C 0004+00 0/1 0/0 0/0 .rodata          @4715 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4715 = 222.0f;
COMPILER_STRIP_GATE(0x80D26BF8, &lit_4715);
#pragma pop

/* 80D26BFC-80D26C00 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4716 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4716 = -10.0f;
COMPILER_STRIP_GATE(0x80D26BFC, &lit_4716);
#pragma pop

/* 80D26C00-80D26C04 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4717 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4717 = -65.0f;
COMPILER_STRIP_GATE(0x80D26C00, &lit_4717);
#pragma pop

/* 80D26C04-80D26C08 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4718 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4718 = 55.0f;
COMPILER_STRIP_GATE(0x80D26C04, &lit_4718);
#pragma pop

/* 80D26C0C-80D26C0C 0000B0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D26C4E = "Timer";
#pragma pop

/* 80D25EE8-80D26468 001DC8 0580+00 3/3 0/0 0/0 .text            demoProc__14daObjVolcBom_cFv */
void daObjVolcBom_c::demoProc() {
    // NONMATCHING
}

/* 80D26468-80D264E8 002348 0080+00 1/1 0/0 0/0 .text            calcObjPos__14daObjVolcBom_cFv */
void daObjVolcBom_c::calcObjPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D26C08-80D26C0C 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4828 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4828 = 4000.0f;
COMPILER_STRIP_GATE(0x80D26C08, &lit_4828);
#pragma pop

/* 80D264E8-80D266FC 0023C8 0214+00 1/0 0/0 0/0 .text            Draw__14daObjVolcBom_cFv */
void daObjVolcBom_c::Draw() {
    // NONMATCHING
}

/* 80D266FC-80D26774 0025DC 0078+00 1/0 0/0 0/0 .text            Delete__14daObjVolcBom_cFv */
void daObjVolcBom_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D26E80-80D26EA8 00022C 0028+00 1/1 0/0 0/0 .data            __vt__14daObjVolcBom_c */
SECTION_DATA extern void* __vt__14daObjVolcBom_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__14daObjVolcBom_cFv,
    (void*)Create__14daObjVolcBom_cFv,
    (void*)Execute__14daObjVolcBom_cFPPA3_A4_f,
    (void*)Draw__14daObjVolcBom_cFv,
    (void*)Delete__14daObjVolcBom_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80D26774-80D268A8 002654 0134+00 1/0 0/0 0/0 .text daObjVolcBom_create1st__FP14daObjVolcBom_c
 */
static void daObjVolcBom_create1st(daObjVolcBom_c* param_0) {
    // NONMATCHING
}

/* 80D268A8-80D268F0 002788 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80D268F0-80D26938 0027D0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80D26938-80D26994 002818 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80D26994-80D26A04 002874 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80D26A04-80D26A74 0028E4 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80D26A74-80D26A94 002954 0020+00 1/0 0/0 0/0 .text
 * daObjVolcBom_MoveBGDelete__FP14daObjVolcBom_c                */
static void daObjVolcBom_MoveBGDelete(daObjVolcBom_c* param_0) {
    // NONMATCHING
}

/* 80D26A94-80D26AB4 002974 0020+00 1/0 0/0 0/0 .text
 * daObjVolcBom_MoveBGExecute__FP14daObjVolcBom_c               */
static void daObjVolcBom_MoveBGExecute(daObjVolcBom_c* param_0) {
    // NONMATCHING
}

/* 80D26AB4-80D26AE0 002994 002C+00 1/0 0/0 0/0 .text daObjVolcBom_MoveBGDraw__FP14daObjVolcBom_c
 */
static void daObjVolcBom_MoveBGDraw(daObjVolcBom_c* param_0) {
    // NONMATCHING
}

/* 80D26AE0-80D26B28 0029C0 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80D26B28-80D26B44 002A08 001C+00 2/2 0/0 0/0 .text            cLib_calcTimer<Uc>__FPUc */
extern "C" void func_80D26B28(void* _this, u8* param_0) {
    // NONMATCHING
}

/* 80D26B44-80D26B4C 002A24 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80D26B44() {
    // NONMATCHING
}

/* 80D26B4C-80D26B54 002A2C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80D26B4C() {
    // NONMATCHING
}

/* 80D26C0C-80D26C0C 0000B0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
