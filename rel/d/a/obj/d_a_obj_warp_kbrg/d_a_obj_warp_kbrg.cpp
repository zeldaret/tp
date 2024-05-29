/**
 * @file d_a_obj_warp_kbrg.cpp
 * 
*/

#include "rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" static void eventCallBack__FPvi();
extern "C" void initBaseMtx__15daObjWarpKBrg_cFv();
extern "C" void setBaseMtx__15daObjWarpKBrg_cFv();
extern "C" void Create__15daObjWarpKBrg_cFv();
extern "C" void CreateHeap__15daObjWarpKBrg_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void create1st__15daObjWarpKBrg_cFv();
extern "C" void Execute__15daObjWarpKBrg_cFPPA3_A4_f();
extern "C" void event_proc_call__15daObjWarpKBrg_cFv();
extern "C" void orderZHintEvent__15daObjWarpKBrg_cFv();
extern "C" void actionWait__15daObjWarpKBrg_cFv();
extern "C" void actionOrderEvent__15daObjWarpKBrg_cFv();
extern "C" void actionWaitWarpEvent__15daObjWarpKBrg_cFv();
extern "C" void actionOrderATalkEvent__15daObjWarpKBrg_cFv();
extern "C" void actionTalkEvent__15daObjWarpKBrg_cFv();
extern "C" void actionWarpEvent__15daObjWarpKBrg_cFv();
extern "C" void actionDead__15daObjWarpKBrg_cFv();
extern "C" void actionWait2__15daObjWarpKBrg_cFv();
extern "C" void actionOrderEvent2__15daObjWarpKBrg_cFv();
extern "C" void actionWarpEvent2__15daObjWarpKBrg_cFv();
extern "C" void actionDead2__15daObjWarpKBrg_cFv();
extern "C" void demoProc__15daObjWarpKBrg_cFv();
extern "C" void calcObjPos__15daObjWarpKBrg_cFv();
extern "C" void checkTalkDistance__15daObjWarpKBrg_cFv();
extern "C" void calcMidnaWaitPos__15daObjWarpKBrg_cFv();
extern "C" void setBindEffect__15daObjWarpKBrg_cFv();
extern "C" void followBindEffect__15daObjWarpKBrg_cFv();
extern "C" void setSrcEffect__15daObjWarpKBrg_cFv();
extern "C" void setDstEffect__15daObjWarpKBrg_cFv();
extern "C" void followSrcEffect__15daObjWarpKBrg_cFv();
extern "C" void followDstEffect__15daObjWarpKBrg_cFv();
extern "C" void endSrcEffect__15daObjWarpKBrg_cFv();
extern "C" void endDstEffect__15daObjWarpKBrg_cFv();
extern "C" void Draw__15daObjWarpKBrg_cFv();
extern "C" void Delete__15daObjWarpKBrg_cFv();
extern "C" static void daObjWarpKBrg_create1st__FP15daObjWarpKBrg_c();
extern "C" static void daObjWarpKBrg_MoveBGDelete__FP15daObjWarpKBrg_c();
extern "C" static void daObjWarpKBrg_MoveBGExecute__FP15daObjWarpKBrg_c();
extern "C" static void daObjWarpKBrg_MoveBGDraw__FP15daObjWarpKBrg_c();
extern "C" void func_80D29590(void* _this, u8*);
extern "C" extern char const* const d_a_obj_warp_kbrg__stringBase0;

//
// External References:
//

extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
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
extern "C" void mDoExt_brkAnmRemove__FP12J3DModelData();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGp_TargetWarpPt_set__FUc();
extern "C" void dComIfGp_TransportWarp_check__Fv();
extern "C" void onEventBit__11dSv_event_cFUs();
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
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c();
extern "C" void doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci();
extern "C" void getEventId__10dMsgFlow_cFPi();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
extern "C" void func_802807E0();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void getName__10JUTNameTabCFUs();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_23();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_23();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" extern u8 g_meter2_info[248];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" extern u8 data_80D29928[4];

//
// Declarations:
//

/* 80D26F38-80D26FA8 000078 0070+00 1/1 0/0 0/0 .text            eventCallBack__FPvi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void eventCallBack(void* param_0, int param_1) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/eventCallBack__FPvi.s"
}
#pragma pop

/* 80D26FA8-80D27008 0000E8 0060+00 1/1 0/0 0/0 .text            initBaseMtx__15daObjWarpKBrg_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWarpKBrg_c::initBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/initBaseMtx__15daObjWarpKBrg_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D295B4-80D295BC 000000 0008+00 6/6 0/0 0/0 .rodata          l_bmd_idx */
SECTION_RODATA static u8 const l_bmd_idx[8] = {
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0B,
};
COMPILER_STRIP_GATE(0x80D295B4, &l_bmd_idx);

/* 80D295BC-80D295C4 000008 0008+00 1/1 0/0 0/0 .rodata          l_dzb_idx */
SECTION_RODATA static u8 const l_dzb_idx[8] = {
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x16,
};
COMPILER_STRIP_GATE(0x80D295BC, &l_dzb_idx);

/* 80D295C4-80D295CC 000010 0008+00 0/1 0/0 0/0 .rodata          l_btk_idx */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_btk_idx[8] = {
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x13,
};
COMPILER_STRIP_GATE(0x80D295C4, &l_btk_idx);
#pragma pop

/* 80D295CC-80D295D4 000018 0008+00 1/2 0/0 0/0 .rodata          l_bck_idx */
SECTION_RODATA static u8 const l_bck_idx[8] = {
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x07,
};
COMPILER_STRIP_GATE(0x80D295CC, &l_bck_idx);

/* 80D295D4-80D295E0 000020 000A+02 0/1 0/0 0/0 .rodata          l_disapp_eff */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_disapp_eff[10 + 2 /* padding */] = {
    0x85,
    0x32,
    0x85,
    0x33,
    0x85,
    0x34,
    0x85,
    0x35,
    0x85,
    0x36,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D295D4, &l_disapp_eff);
#pragma pop

/* 80D295E0-80D295E8 00002C 0006+02 0/1 0/0 0/0 .rodata          l_start_eff */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_start_eff[6 + 2 /* padding */] = {
    0x8B,
    0x3F,
    0x8B,
    0x40,
    0x8B,
    0x41,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D295E0, &l_start_eff);
#pragma pop

/* 80D295E8-80D295F4 000034 000C+00 0/1 0/0 0/0 .rodata          l_app_eff */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_app_eff[12] = {
    0x85, 0x2D, 0x85, 0x2E, 0x85, 0x2F, 0x85, 0x30, 0x85, 0x31, 0x8B, 0x3C,
};
COMPILER_STRIP_GATE(0x80D295E8, &l_app_eff);
#pragma pop

/* 80D295F4-80D295F8 000040 0004+00 0/1 0/0 0/0 .rodata          l_end_eff */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const l_end_eff = 0x8B3D8B3E;
COMPILER_STRIP_GATE(0x80D295F4, &l_end_eff);
#pragma pop

/* 80D295F8-80D29600 000044 0008+00 1/1 0/0 0/0 .rodata          l_bind_eff */
SECTION_RODATA static u8 const l_bind_eff[8] = {
    0x8B, 0x4F, 0x8B, 0x50, 0x8B, 0x51, 0x8B, 0x52,
};
COMPILER_STRIP_GATE(0x80D295F8, &l_bind_eff);

/* 80D29600-80D29608 00004C 0008+00 1/1 0/0 0/0 .rodata          l_heap_size */
SECTION_RODATA static u8 const l_heap_size[8] = {
    0x00, 0x00, 0x64, 0x00, 0x00, 0x00, 0x7E, 0x60,
};
COMPILER_STRIP_GATE(0x80D29600, &l_heap_size);

/* 80D29608-80D29614 000054 000C+00 1/1 0/0 0/0 .rodata          l_midna_wait_offset */
SECTION_RODATA static u8 const l_midna_wait_offset[12] = {
    0x00, 0x00, 0x00, 0x00, 0xC3, 0x48, 0x00, 0x00, 0x44, 0x96, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D29608, &l_midna_wait_offset);

/* 80D29614-80D29618 000060 0004+00 0/1 0/0 0/0 .rodata          @3726 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3726 = -7643.0f;
COMPILER_STRIP_GATE(0x80D29614, &lit_3726);
#pragma pop

/* 80D29618-80D2961C 000064 0004+00 0/1 0/0 0/0 .rodata          @3727 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3727 = -2770.0f;
COMPILER_STRIP_GATE(0x80D29618, &lit_3727);
#pragma pop

/* 80D2961C-80D29620 000068 0004+00 0/1 0/0 0/0 .rodata          @3728 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3728 = 56750.0f;
COMPILER_STRIP_GATE(0x80D2961C, &lit_3728);
#pragma pop

/* 80D29620-80D29624 00006C 0004+00 0/2 0/0 0/0 .rodata          @3729 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3729 = 5.0f;
COMPILER_STRIP_GATE(0x80D29620, &lit_3729);
#pragma pop

/* 80D27008-80D270C4 000148 00BC+00 2/2 0/0 0/0 .text            setBaseMtx__15daObjWarpKBrg_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWarpKBrg_c::setBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/setBaseMtx__15daObjWarpKBrg_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D29624-80D2962C 000070 0004+04 1/3 0/0 0/0 .rodata          @3825 */
SECTION_RODATA static u8 const lit_3825[4 + 4 /* padding */] = {
    0x00,
    0x00,
    0x00,
    0x00,
    /* padding */
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D29624, &lit_3825);

/* 80D2962C-80D29634 000078 0008+00 1/1 0/0 0/0 .rodata          @3827 */
SECTION_RODATA static u8 const lit_3827[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D2962C, &lit_3827);

/* 80D29688-80D29688 0000D4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D29688 = "Obj_kbrgS";
SECTION_DEAD static char const* const stringBase_80D29692 = "Obj_kbrgD";
SECTION_DEAD static char const* const stringBase_80D2969C = "Obj_kbrg";
SECTION_DEAD static char const* const stringBase_80D296A5 = "PORTAL_WARP_KBRIDGE";
SECTION_DEAD static char const* const stringBase_80D296B9 = "PORTAL_WARP_KBRIDGE_OUT";
SECTION_DEAD static char const* const stringBase_80D296D1 = "WarpBrg";
SECTION_DEAD static char const* const stringBase_80D296D9 = "effect_p";
#pragma pop

/* 80D29710-80D2971C 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80D2971C-80D29730 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80D29730-80D29738 -00001 0008+00 5/5 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName[2] = {
    (void*)&d_a_obj_warp_kbrg__stringBase0,
    (void*)(((char*)&d_a_obj_warp_kbrg__stringBase0) + 0xA),
};

/* 80D29738-80D2973C -00001 0004+00 3/3 0/0 0/0 .data            l_evArcName */
SECTION_DATA static void* l_evArcName = (void*)(((char*)&d_a_obj_warp_kbrg__stringBase0) + 0x14);

/* 80D2973C-80D29744 -00001 0008+00 1/1 0/0 0/0 .data            l_portal_warp_name */
SECTION_DATA static void* l_portal_warp_name[2] = {
    (void*)(((char*)&d_a_obj_warp_kbrg__stringBase0) + 0x1D),
    (void*)(((char*)&d_a_obj_warp_kbrg__stringBase0) + 0x31),
};

/* 80D270C4-80D27300 000204 023C+00 1/0 0/0 0/0 .text            Create__15daObjWarpKBrg_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWarpKBrg_c::Create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/Create__15daObjWarpKBrg_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D29634-80D29638 000080 0004+00 2/5 0/0 0/0 .rodata          @3964 */
SECTION_RODATA static f32 const lit_3964 = 1.0f;
COMPILER_STRIP_GATE(0x80D29634, &lit_3964);

/* 80D29688-80D29688 0000D4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D296E2 = "WAIT";
SECTION_DEAD static char const* const stringBase_80D296E7 = "FLY";
SECTION_DEAD static char const* const stringBase_80D296EB = "DOWN";
SECTION_DEAD static char const* const stringBase_80D296F0 = "P_APP";
SECTION_DEAD static char const* const stringBase_80D296F6 = "P_DIS";
SECTION_DEAD static char const* const stringBase_80D296FC = "B_APP";
SECTION_DEAD static char const* const stringBase_80D29702 = "BEAM";
#pragma pop

/* 80D29744-80D29748 -00001 0004+00 4/4 0/0 0/0 .data            l_staff_name */
SECTION_DATA static void* l_staff_name = (void*)(((char*)&d_a_obj_warp_kbrg__stringBase0) + 0x49);

/* 80D29748-80D29754 -00001 000C+00 0/1 0/0 0/0 .data            @4029 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4029[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionWait__15daObjWarpKBrg_cFv,
};
#pragma pop

/* 80D29754-80D29760 -00001 000C+00 0/1 0/0 0/0 .data            @4030 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4030[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionOrderEvent__15daObjWarpKBrg_cFv,
};
#pragma pop

/* 80D29760-80D2976C -00001 000C+00 0/1 0/0 0/0 .data            @4031 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4031[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionTalkEvent__15daObjWarpKBrg_cFv,
};
#pragma pop

/* 80D2976C-80D29778 -00001 000C+00 0/1 0/0 0/0 .data            @4032 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4032[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionWaitWarpEvent__15daObjWarpKBrg_cFv,
};
#pragma pop

/* 80D29778-80D29784 -00001 000C+00 0/1 0/0 0/0 .data            @4033 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4033[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionWarpEvent__15daObjWarpKBrg_cFv,
};
#pragma pop

/* 80D29784-80D29790 -00001 000C+00 0/1 0/0 0/0 .data            @4034 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4034[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionOrderATalkEvent__15daObjWarpKBrg_cFv,
};
#pragma pop

/* 80D29790-80D2979C -00001 000C+00 0/1 0/0 0/0 .data            @4035 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4035[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionDead__15daObjWarpKBrg_cFv,
};
#pragma pop

/* 80D2979C-80D297A8 -00001 000C+00 0/1 0/0 0/0 .data            @4036 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4036[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionWait2__15daObjWarpKBrg_cFv,
};
#pragma pop

/* 80D297A8-80D297B4 -00001 000C+00 0/1 0/0 0/0 .data            @4037 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4037[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionOrderEvent2__15daObjWarpKBrg_cFv,
};
#pragma pop

/* 80D297B4-80D297C0 -00001 000C+00 0/1 0/0 0/0 .data            @4038 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4038[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionWarpEvent2__15daObjWarpKBrg_cFv,
};
#pragma pop

/* 80D297C0-80D297CC -00001 000C+00 0/1 0/0 0/0 .data            @4039 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4039[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)actionDead2__15daObjWarpKBrg_cFv,
};
#pragma pop

/* 80D297CC-80D29850 0000BC 0084+00 0/1 0/0 0/0 .data            l_func$4028 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func[132] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80D29850-80D2986C -00001 001C+00 1/1 0/0 0/0 .data            action_table$4265 */
SECTION_DATA static void* action_table[7] = {
    (void*)(((char*)&d_a_obj_warp_kbrg__stringBase0) + 0x5A),
    (void*)(((char*)&d_a_obj_warp_kbrg__stringBase0) + 0x5F),
    (void*)(((char*)&d_a_obj_warp_kbrg__stringBase0) + 0x63),
    (void*)(((char*)&d_a_obj_warp_kbrg__stringBase0) + 0x68),
    (void*)(((char*)&d_a_obj_warp_kbrg__stringBase0) + 0x6E),
    (void*)(((char*)&d_a_obj_warp_kbrg__stringBase0) + 0x74),
    (void*)(((char*)&d_a_obj_warp_kbrg__stringBase0) + 0x7A),
};

/* 80D2986C-80D29888 -00001 001C+00 1/1 0/0 0/0 .data            @4535 */
SECTION_DATA static void* lit_4535[7] = {
    (void*)(((char*)demoProc__15daObjWarpKBrg_cFv) + 0x3F4),
    (void*)(((char*)demoProc__15daObjWarpKBrg_cFv) + 0x414),
    (void*)(((char*)demoProc__15daObjWarpKBrg_cFv) + 0x4B4),
    (void*)(((char*)demoProc__15daObjWarpKBrg_cFv) + 0x7C8),
    (void*)(((char*)demoProc__15daObjWarpKBrg_cFv) + 0x55C),
    (void*)(((char*)demoProc__15daObjWarpKBrg_cFv) + 0x584),
    (void*)(((char*)demoProc__15daObjWarpKBrg_cFv) + 0x5AC),
};

/* 80D29888-80D298A4 -00001 001C+00 1/1 0/0 0/0 .data            @4533 */
SECTION_DATA static void* lit_4533[7] = {
    (void*)(((char*)demoProc__15daObjWarpKBrg_cFv) + 0x9C),
    (void*)(((char*)demoProc__15daObjWarpKBrg_cFv) + 0xD8),
    (void*)(((char*)demoProc__15daObjWarpKBrg_cFv) + 0x1A8),
    (void*)(((char*)demoProc__15daObjWarpKBrg_cFv) + 0x23C),
    (void*)(((char*)demoProc__15daObjWarpKBrg_cFv) + 0x268),
    (void*)(((char*)demoProc__15daObjWarpKBrg_cFv) + 0x310),
    (void*)(((char*)demoProc__15daObjWarpKBrg_cFv) + 0x380),
};

/* 80D298A4-80D298C4 -00001 0020+00 1/0 0/0 0/0 .data            daObjWarpKBrg_METHODS */
static actor_method_class daObjWarpKBrg_METHODS = {
    (process_method_func)daObjWarpKBrg_create1st__FP15daObjWarpKBrg_c,
    (process_method_func)daObjWarpKBrg_MoveBGDelete__FP15daObjWarpKBrg_c,
    (process_method_func)daObjWarpKBrg_MoveBGExecute__FP15daObjWarpKBrg_c,
    0,
    (process_method_func)daObjWarpKBrg_MoveBGDraw__FP15daObjWarpKBrg_c,
};

/* 80D298C4-80D298F4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_KakarikoBrg */
extern actor_process_profile_definition g_profile_Obj_KakarikoBrg = {
  fpcLy_CURRENT_e,         // mLayerID
  3,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_Obj_KakarikoBrg,    // mProcName
  &g_fpcLf_Method.mBase,   // sub_method
  sizeof(daObjWarpKBrg_c), // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  530,                     // mPriority
  &daObjWarpKBrg_METHODS,  // sub_method
  0x00040000,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80D298F4-80D29900 0001E4 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80D27300-80D2766C 000440 036C+00 1/0 0/0 0/0 .text            CreateHeap__15daObjWarpKBrg_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWarpKBrg_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/CreateHeap__15daObjWarpKBrg_cFv.s"
}
#pragma pop

/* 80D2766C-80D276B4 0007AC 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* 80D276B4-80D2781C 0007F4 0168+00 1/1 0/0 0/0 .text            create1st__15daObjWarpKBrg_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWarpKBrg_c::create1st() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/create1st__15daObjWarpKBrg_cFv.s"
}
#pragma pop

/* 80D2781C-80D27890 00095C 0074+00 1/0 0/0 0/0 .text Execute__15daObjWarpKBrg_cFPPA3_A4_f */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWarpKBrg_c::Execute(f32 (**param_0)[3][4]) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/Execute__15daObjWarpKBrg_cFPPA3_A4_f.s"
}
#pragma pop

/* 80D27890-80D27A38 0009D0 01A8+00 1/1 0/0 0/0 .text event_proc_call__15daObjWarpKBrg_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWarpKBrg_c::event_proc_call() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/event_proc_call__15daObjWarpKBrg_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D29638-80D2963C 000084 0004+00 1/1 0/0 0/0 .rodata          @4071 */
SECTION_RODATA static f32 const lit_4071 = -1.0f;
COMPILER_STRIP_GATE(0x80D29638, &lit_4071);

/* 80D27A38-80D27B2C 000B78 00F4+00 1/1 0/0 0/0 .text orderZHintEvent__15daObjWarpKBrg_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWarpKBrg_c::orderZHintEvent() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/orderZHintEvent__15daObjWarpKBrg_cFv.s"
}
#pragma pop

/* 80D27B2C-80D27C6C 000C6C 0140+00 1/0 0/0 0/0 .text            actionWait__15daObjWarpKBrg_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWarpKBrg_c::actionWait() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/actionWait__15daObjWarpKBrg_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D2963C-80D29644 000088 0008+00 0/1 0/0 0/0 .rodata          @4147 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4147[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D2963C, &lit_4147);
#pragma pop

/* 80D29644-80D2964C 000090 0008+00 0/1 0/0 0/0 .rodata          @4148 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4148[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D29644, &lit_4148);
#pragma pop

/* 80D2964C-80D29654 000098 0008+00 0/1 0/0 0/0 .rodata          @4149 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4149[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D2964C, &lit_4149);
#pragma pop

/* 80D27C6C-80D27E08 000DAC 019C+00 2/1 0/0 0/0 .text actionOrderEvent__15daObjWarpKBrg_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWarpKBrg_c::actionOrderEvent() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/actionOrderEvent__15daObjWarpKBrg_cFv.s"
}
#pragma pop

/* 80D27E08-80D27ED0 000F48 00C8+00 1/0 0/0 0/0 .text actionWaitWarpEvent__15daObjWarpKBrg_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWarpKBrg_c::actionWaitWarpEvent() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/actionWaitWarpEvent__15daObjWarpKBrg_cFv.s"
}
#pragma pop

/* 80D27ED0-80D28040 001010 0170+00 1/0 0/0 0/0 .text actionOrderATalkEvent__15daObjWarpKBrg_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWarpKBrg_c::actionOrderATalkEvent() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/actionOrderATalkEvent__15daObjWarpKBrg_cFv.s"
}
#pragma pop

/* 80D28040-80D280CC 001180 008C+00 1/0 0/0 0/0 .text actionTalkEvent__15daObjWarpKBrg_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWarpKBrg_c::actionTalkEvent() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/actionTalkEvent__15daObjWarpKBrg_cFv.s"
}
#pragma pop

/* 80D280CC-80D28144 00120C 0078+00 1/0 0/0 0/0 .text actionWarpEvent__15daObjWarpKBrg_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWarpKBrg_c::actionWarpEvent() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/actionWarpEvent__15daObjWarpKBrg_cFv.s"
}
#pragma pop

/* 80D28144-80D28148 001284 0004+00 1/0 0/0 0/0 .text            actionDead__15daObjWarpKBrg_cFv */
void daObjWarpKBrg_c::actionDead() {
    /* empty function */
}

/* 80D28148-80D2814C 001288 0004+00 1/0 0/0 0/0 .text            actionWait2__15daObjWarpKBrg_cFv */
void daObjWarpKBrg_c::actionWait2() {
    /* empty function */
}

/* 80D2814C-80D281E4 00128C 0098+00 1/0 0/0 0/0 .text actionOrderEvent2__15daObjWarpKBrg_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWarpKBrg_c::actionOrderEvent2() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/actionOrderEvent2__15daObjWarpKBrg_cFv.s"
}
#pragma pop

/* 80D281E4-80D28248 001324 0064+00 1/0 0/0 0/0 .text actionWarpEvent2__15daObjWarpKBrg_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWarpKBrg_c::actionWarpEvent2() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/actionWarpEvent2__15daObjWarpKBrg_cFv.s"
}
#pragma pop

/* 80D28248-80D2824C 001388 0004+00 1/0 0/0 0/0 .text            actionDead2__15daObjWarpKBrg_cFv */
void daObjWarpKBrg_c::actionDead2() {
    /* empty function */
}

/* ############################################################################################## */
/* 80D29688-80D29688 0000D4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D29707 = "Timer";
#pragma pop

/* 80D2824C-80D28A50 00138C 0804+00 8/6 0/0 0/0 .text            demoProc__15daObjWarpKBrg_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWarpKBrg_c::demoProc() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/demoProc__15daObjWarpKBrg_cFv.s"
}
#pragma pop

/* 80D28A50-80D28AE0 001B90 0090+00 1/1 0/0 0/0 .text            calcObjPos__15daObjWarpKBrg_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWarpKBrg_c::calcObjPos() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/calcObjPos__15daObjWarpKBrg_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D29654-80D29658 0000A0 0004+00 0/0 0/0 0/0 .rodata          @4526 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4526 = 240.0f;
COMPILER_STRIP_GATE(0x80D29654, &lit_4526);
#pragma pop

/* 80D29658-80D2965C 0000A4 0004+00 0/0 0/0 0/0 .rodata          @4527 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4527 = 180.0f;
COMPILER_STRIP_GATE(0x80D29658, &lit_4527);
#pragma pop

/* 80D2965C-80D29660 0000A8 0004+00 0/0 0/0 0/0 .rodata          @4528 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4528 = -10.0f;
COMPILER_STRIP_GATE(0x80D2965C, &lit_4528);
#pragma pop

/* 80D29660-80D29664 0000AC 0004+00 0/0 0/0 0/0 .rodata          @4529 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4529 = -65.0f;
COMPILER_STRIP_GATE(0x80D29660, &lit_4529);
#pragma pop

/* 80D29664-80D29668 0000B0 0004+00 0/0 0/0 0/0 .rodata          @4530 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4530 = 55.0f;
COMPILER_STRIP_GATE(0x80D29664, &lit_4530);
#pragma pop

/* 80D29668-80D2966C 0000B4 0004+00 0/0 0/0 0/0 .rodata          @4531 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4531 = -180.0f;
COMPILER_STRIP_GATE(0x80D29668, &lit_4531);
#pragma pop

/* 80D2966C-80D29670 0000B8 0004+00 0/0 0/0 0/0 .rodata          @4532 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4532 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x80D2966C, &lit_4532);
#pragma pop

/* 80D29670-80D29674 0000BC 0004+00 1/1 0/0 0/0 .rodata          @4576 */
SECTION_RODATA static f32 const lit_4576 = 10.0f;
COMPILER_STRIP_GATE(0x80D29670, &lit_4576);

/* 80D29674-80D2967C 0000C0 0004+04 1/1 0/0 0/0 .rodata          @4577 */
SECTION_RODATA static f32 const lit_4577[1 + 1 /* padding */] = {
    500.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80D29674, &lit_4577);

/* 80D2967C-80D29684 0000C8 0008+00 1/1 0/0 0/0 .rodata          @4579 */
SECTION_RODATA static u8 const lit_4579[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D2967C, &lit_4579);

/* 80D28AE0-80D28B7C 001C20 009C+00 2/2 0/0 0/0 .text checkTalkDistance__15daObjWarpKBrg_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWarpKBrg_c::checkTalkDistance() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/checkTalkDistance__15daObjWarpKBrg_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D29684-80D29688 0000D0 0004+00 1/1 0/0 0/0 .rodata          @4590 */
SECTION_RODATA static f32 const lit_4590 = 250.0f;
COMPILER_STRIP_GATE(0x80D29684, &lit_4590);

/* 80D28B7C-80D28C10 001CBC 0094+00 1/1 0/0 0/0 .text calcMidnaWaitPos__15daObjWarpKBrg_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWarpKBrg_c::calcMidnaWaitPos() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/calcMidnaWaitPos__15daObjWarpKBrg_cFv.s"
}
#pragma pop

/* 80D28C10-80D28CDC 001D50 00CC+00 1/1 0/0 0/0 .text            setBindEffect__15daObjWarpKBrg_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWarpKBrg_c::setBindEffect() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/setBindEffect__15daObjWarpKBrg_cFv.s"
}
#pragma pop

/* 80D28CDC-80D28D4C 001E1C 0070+00 1/1 0/0 0/0 .text followBindEffect__15daObjWarpKBrg_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWarpKBrg_c::followBindEffect() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/followBindEffect__15daObjWarpKBrg_cFv.s"
}
#pragma pop

/* 80D28D4C-80D28E9C 001E8C 0150+00 1/1 0/0 0/0 .text            setSrcEffect__15daObjWarpKBrg_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWarpKBrg_c::setSrcEffect() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/setSrcEffect__15daObjWarpKBrg_cFv.s"
}
#pragma pop

/* 80D28E9C-80D28FEC 001FDC 0150+00 1/1 0/0 0/0 .text            setDstEffect__15daObjWarpKBrg_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWarpKBrg_c::setDstEffect() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/setDstEffect__15daObjWarpKBrg_cFv.s"
}
#pragma pop

/* 80D28FEC-80D290A8 00212C 00BC+00 1/1 0/0 0/0 .text followSrcEffect__15daObjWarpKBrg_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWarpKBrg_c::followSrcEffect() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/followSrcEffect__15daObjWarpKBrg_cFv.s"
}
#pragma pop

/* 80D290A8-80D29158 0021E8 00B0+00 1/1 0/0 0/0 .text followDstEffect__15daObjWarpKBrg_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWarpKBrg_c::followDstEffect() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/followDstEffect__15daObjWarpKBrg_cFv.s"
}
#pragma pop

/* 80D29158-80D291FC 002298 00A4+00 1/1 0/0 0/0 .text            endSrcEffect__15daObjWarpKBrg_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWarpKBrg_c::endSrcEffect() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/endSrcEffect__15daObjWarpKBrg_cFv.s"
}
#pragma pop

/* 80D291FC-80D292A0 00233C 00A4+00 2/2 0/0 0/0 .text            endDstEffect__15daObjWarpKBrg_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWarpKBrg_c::endDstEffect() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/endDstEffect__15daObjWarpKBrg_cFv.s"
}
#pragma pop

/* 80D292A0-80D29448 0023E0 01A8+00 1/0 0/0 0/0 .text            Draw__15daObjWarpKBrg_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWarpKBrg_c::Draw() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/Draw__15daObjWarpKBrg_cFv.s"
}
#pragma pop

/* 80D29448-80D294B0 002588 0068+00 1/0 0/0 0/0 .text            Delete__15daObjWarpKBrg_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjWarpKBrg_c::Delete() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/Delete__15daObjWarpKBrg_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D29900-80D29928 0001F0 0028+00 1/1 0/0 0/0 .data            __vt__15daObjWarpKBrg_c */
SECTION_DATA extern void* __vt__15daObjWarpKBrg_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__15daObjWarpKBrg_cFv,
    (void*)Create__15daObjWarpKBrg_cFv,
    (void*)Execute__15daObjWarpKBrg_cFPPA3_A4_f,
    (void*)Draw__15daObjWarpKBrg_cFv,
    (void*)Delete__15daObjWarpKBrg_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80D294B0-80D29524 0025F0 0074+00 1/0 0/0 0/0 .text daObjWarpKBrg_create1st__FP15daObjWarpKBrg_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjWarpKBrg_create1st(daObjWarpKBrg_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/daObjWarpKBrg_create1st__FP15daObjWarpKBrg_c.s"
}
#pragma pop

/* 80D29524-80D29544 002664 0020+00 1/0 0/0 0/0 .text
 * daObjWarpKBrg_MoveBGDelete__FP15daObjWarpKBrg_c              */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjWarpKBrg_MoveBGDelete(daObjWarpKBrg_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/daObjWarpKBrg_MoveBGDelete__FP15daObjWarpKBrg_c.s"
}
#pragma pop

/* 80D29544-80D29564 002684 0020+00 1/0 0/0 0/0 .text
 * daObjWarpKBrg_MoveBGExecute__FP15daObjWarpKBrg_c             */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjWarpKBrg_MoveBGExecute(daObjWarpKBrg_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/daObjWarpKBrg_MoveBGExecute__FP15daObjWarpKBrg_c.s"
}
#pragma pop

/* 80D29564-80D29590 0026A4 002C+00 1/0 0/0 0/0 .text
 * daObjWarpKBrg_MoveBGDraw__FP15daObjWarpKBrg_c                */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjWarpKBrg_MoveBGDraw(daObjWarpKBrg_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/daObjWarpKBrg_MoveBGDraw__FP15daObjWarpKBrg_c.s"
}
#pragma pop

/* 80D29590-80D295AC 0026D0 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<Uc>__FPUc */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_80D29590(void* _this, u8* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_warp_kbrg/d_a_obj_warp_kbrg/func_80D29590.s"
}
#pragma pop

/* 80D29688-80D29688 0000D4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
