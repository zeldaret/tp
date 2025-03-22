/**
 * @file d_a_npc_shoe.cpp
 * 
*/

#include "d/actor/d_a_npc_shoe.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __ct__11daNpcShoe_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__11daNpcShoe_cFv();
extern "C" void Create__11daNpcShoe_cFv();
extern "C" void CreateHeap__11daNpcShoe_cFv();
extern "C" void Delete__11daNpcShoe_cFv();
extern "C" void Execute__11daNpcShoe_cFv();
extern "C" void Draw__11daNpcShoe_cFv();
extern "C" void ctrlJoint__11daNpcShoe_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__11daNpcShoe_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__11daNpcShoe_cFP8J3DJointi();
extern "C" void setMotion__11daNpcShoe_cFifi();
extern "C" void reset__11daNpcShoe_cFv();
extern "C" void setAction__11daNpcShoe_cFM11daNpcShoe_cFPCvPvPv_b();
extern "C" void wait__11daNpcShoe_cFPv();
extern "C" void fear__11daNpcShoe_cFPv();
extern "C" void talk__11daNpcShoe_cFPv();
extern "C" void demo__11daNpcShoe_cFPv();
extern "C" static void daNpcShoe_Create__FPv();
extern "C" static void daNpcShoe_Delete__FPv();
extern "C" static void daNpcShoe_Execute__FPv();
extern "C" static void daNpcShoe_Draw__FPv();
extern "C" static bool daNpcShoe_IsDelete__FPv();
extern "C" void setParam__11daNpcShoe_cFv();
extern "C" void main__11daNpcShoe_cFv();
extern "C" void setAttnPos__11daNpcShoe_cFv();
extern "C" void lookat__11daNpcShoe_cFv();
extern "C" void setMotionAnm__11daNpcShoe_cFif();
extern "C" bool drawDbgInfo__11daNpcShoe_cFv();
extern "C" void __dt__18daNpcF_ActorMngr_cFv();
extern "C" void __ct__18daNpcF_ActorMngr_cFv();
extern "C" void __dt__15daNpcF_Lookat_cFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__8daNpcF_cFv();
extern "C" void __ct__8daNpcF_cFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" bool ctrlBtk__8daNpcF_cFv();
extern "C" void setCollisions__8daNpcF_cFv();
extern "C" bool setExpressionAnm__8daNpcF_cFib();
extern "C" bool setExpressionBtp__8daNpcF_cFi();
extern "C" void setExpression__8daNpcF_cFif();
extern "C" void drawOtherMdls__8daNpcF_cFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __sinit_d_a_npc_shoe_cpp();
extern "C" void adjustShapeAngle__11daNpcShoe_cFv();
extern "C" void __dt__17daNpcShoe_Param_cFv();
extern "C" static void func_80AEA38C();
extern "C" static void func_80AEA394();
extern "C" u8 const m__17daNpcShoe_Param_c[108];
extern "C" extern char const* const d_a_npc_shoe__stringBase0;
extern "C" u8 mEvtSeqList__11daNpcShoe_c[12];

//
// External References:
//

extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setPtI_Id__14dEvt_control_cFUi();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWallR__12dBgS_AcchCirFf();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void initialize__18daNpcF_ActorMngr_cFv();
extern "C" void entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c();
extern "C" void remove__18daNpcF_ActorMngr_cFv();
extern "C" void getActorP__18daNpcF_ActorMngr_cFv();
extern "C" void initialize__15daNpcF_Lookat_cFv();
extern "C" void setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz();
extern "C" void calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii();
extern "C" void execute__8daNpcF_cFv();
extern "C" void draw__8daNpcF_cFiifP11_GXColorS10i();
extern "C" void setMtx__8daNpcF_cFv();
extern "C" void setMtx2__8daNpcF_cFv();
extern "C" void initialize__8daNpcF_cFv();
extern "C" void getTrnsfrmKeyAnmP__8daNpcF_cFPci();
extern "C" void getTexPtrnAnmP__8daNpcF_cFPci();
extern "C" void setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii();
extern "C" void setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi();
extern "C" void setEnvTevColor__8daNpcF_cFv();
extern "C" void setRoomNo__8daNpcF_cFv();
extern "C" void playMotionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData();
extern "C" void setLookatMtx__8daNpcF_cFiPif();
extern "C" void ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci();
extern "C" void orderEvent__8daNpcF_cFiPcUsUsUcUs();
extern "C" void chkActorInSight__8daNpcF_cFP10fopAc_ac_cf();
extern "C" void chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci();
extern "C" void initTalk__8daNpcF_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcF_cFPiiPP10fopAc_ac_c();
extern "C" void getDistTableIdx__8daNpcF_cFii();
extern "C" void dKy_getdaytime_hour__Fv();
extern "C" void dKy_getdaytime_minute__Fv();
extern "C" void dKy_getDarktime_hour__Fv();
extern "C" void dKy_getDarktime_minute__Fv();
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
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
extern "C" void __ct__17Z2CreatureCitizenFv();
extern "C" void __dt__17Z2CreatureCitizenFv();
extern "C" void init__17Z2CreatureCitizenFP3VecP3VecUcUc();
extern "C" void setMdlType__17Z2CreatureCitizenFScbb();
extern "C" void playVoice__17Z2CreatureCitizenFi();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_test();
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
extern "C" extern u8 const __ptmf_null[12 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" u8 mCcDCyl__8daNpcF_c[68];
extern "C" extern void* __vt__8daNpcF_c[18];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" void __register_global_object();

//
// Declarations:
//

/* 80AEA538-80AEA544 000000 000C+00 2/2 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AEA544-80AEA558 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80AEA558-80AEA594 000020 003C+00 1/1 0/0 0/0 .data            l_bckGetParamList */
SECTION_DATA static u8 l_bckGetParamList[60] = {
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,
    0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
};

/* 80AEA594-80AEA5A0 00005C 000C+00 0/0 0/0 0/0 .data            l_btpGetParamList */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_btpGetParamList[12] = {
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80AEA5A0-80AEA5AC -00001 000C+00 5/6 0/0 0/0 .data            l_arcNames */
static char* l_arcNames[3] = {
    "shoe",
    "Mgeneral",
    "object",
};

/* 80AEA5AC-80AEA5B0 000074 0004+00 0/1 0/0 0/0 .data            l_evtNames */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_evtNames[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
#pragma pop

/* 80AEA5B0-80AEA5B4 -00001 0004+00 0/2 0/0 0/0 .data            l_myName */
static char* l_myName = "Shoe";

/* 80AEA5B4-80AEA5C0 00007C 000C+00 1/2 0/0 0/0 .data            mEvtSeqList__11daNpcShoe_c */
SECTION_DATA u8 daNpcShoe_c::mEvtSeqList[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AEA5C0-80AEA5CC -00001 000C+00 1/1 0/0 0/0 .data            @4424 */
SECTION_DATA static void* lit_4424[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpcShoe_cFPv,
};

/* 80AEA5CC-80AEA5D8 -00001 000C+00 0/1 0/0 0/0 .data            @4547 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4547[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpcShoe_cFPv,
};
#pragma pop

/* 80AEA5D8-80AEA5E4 -00001 000C+00 0/1 0/0 0/0 .data            @4552 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4552[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)demo__11daNpcShoe_cFPv,
};
#pragma pop

/* 80AEA5E4-80AEA5F0 -00001 000C+00 0/1 0/0 0/0 .data            @4559 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4559[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)fear__11daNpcShoe_cFPv,
};
#pragma pop

/* 80AEA5F0-80AEA5FC -00001 000C+00 1/1 0/0 0/0 .data            @4645 */
SECTION_DATA static void* lit_4645[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpcShoe_cFPv,
};

/* 80AEA5FC-80AEA608 -00001 000C+00 0/1 0/0 0/0 .data            @4684 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4684[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpcShoe_cFPv,
};
#pragma pop

/* 80AEA658-80AEA6A0 000120 0048+00 2/2 0/0 0/0 .data            __vt__11daNpcShoe_c */
SECTION_DATA extern void* __vt__11daNpcShoe_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daNpcShoe_cFv,
    (void*)setParam__11daNpcShoe_cFv,
    (void*)main__11daNpcShoe_cFv,
    (void*)ctrlBtk__8daNpcF_cFv,
    (void*)adjustShapeAngle__11daNpcShoe_cFv,
    (void*)setMtx__8daNpcF_cFv,
    (void*)setMtx2__8daNpcF_cFv,
    (void*)setAttnPos__11daNpcShoe_cFv,
    (void*)setCollisions__8daNpcF_cFv,
    (void*)setExpressionAnm__8daNpcF_cFib,
    (void*)setExpressionBtp__8daNpcF_cFi,
    (void*)setExpression__8daNpcF_cFif,
    (void*)setMotionAnm__11daNpcShoe_cFif,
    (void*)setMotion__11daNpcShoe_cFifi,
    (void*)drawDbgInfo__11daNpcShoe_cFv,
    (void*)drawOtherMdls__8daNpcF_cFv,
};

/* 80AEA6A0-80AEA6AC 000168 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80AEA6AC-80AEA6D0 000174 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AEA394,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AEA38C,
};

/* 80AEA6D0-80AEA6DC 000198 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80AEA6DC-80AEA6E8 0001A4 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80AEA6E8-80AEA6F4 0001B0 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80AEA6F4-80AEA700 0001BC 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcF_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcF_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcF_ActorMngr_cFv,
};

/* 80AEA700-80AEA70C 0001C8 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80AEA70C-80AEA718 0001D4 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80AEA718-80AEA724 0001E0 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcF_Lookat_c */
SECTION_DATA extern void* __vt__15daNpcF_Lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcF_Lookat_cFv,
};

/* 80AE794C-80AE7AD0 0000EC 0184+00 1/1 0/0 0/0 .text            __ct__11daNpcShoe_cFv */
daNpcShoe_c::daNpcShoe_c() {
    // NONMATCHING
}

/* 80AE7AD0-80AE7B18 000270 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80AE7B18-80AE7B60 0002B8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80AE7B60-80AE7D48 000300 01E8+00 1/0 0/0 0/0 .text            __dt__11daNpcShoe_cFv */
daNpcShoe_c::~daNpcShoe_c() {
    for (int i = 0; i < 3; i++) {
        dComIfG_resDelete(&mPhases[i], l_arcNames[i]);
    }
    if (heap != NULL) {
        mpMorf->stopZelAnime();
    }
}


/* ############################################################################################## */
/* 80AEA3B0-80AEA41C 000000 006C+00 11/11 0/0 0/0 .rodata          m__17daNpcShoe_Param_c */
daNpcShoe_Param_c::param const daNpcShoe_Param_c::m = {
    55.0f,
    -3.0f,
    1.0f,
    300.0f,
    255.0f,
    140.0f,
    35.0f,
    30.0f,
    0.0f,
    0.0f,
    10.0f,
    -10.0f,
    30.0f,
    -10.0f,
    45.0f,
    -45.0f,
    0.6000000238418579f,
    12.0f,
    2,
    2,
    3,
    2,
    60.0,
    500.0,
    300.0,
    -300.0,
    60,
    0,
    0,
    0,
    0,
    false,
};

/* 80AE7D48-80AE7FD8 0004E8 0290+00 1/1 0/0 0/0 .text            Create__11daNpcShoe_cFv */
cPhs__Step daNpcShoe_c::Create() {
    // NONMATCHING
    cPhs__Step step;

    fopAcM_SetupActor(this, daNpcShoe_c);

    field_0xe0c = getMessageNo();

    step = cPhs_ERROR_e;
    for (int i = 0; i < 3; i++) {
        step = (cPhs__Step)dComIfG_resLoad(&mPhases[i], l_arcNames[i]);
        if (step != cPhs_COMPLEATE_e) {
            return step;
        }
    }

    if (step == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x2920)) {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpMorf->mpModel->getBaseTRMtx());

        fopAcM_setCullSizeBox(this, -50.0f, -10.0f, -50.0f, 50.0f, 160.0f, 50.0f);

        mCreature.init(&current.pos, &eyePos, 3, 1);
        mCreature.setMdlType(7, false, (BOOL)(dKy_darkworld_check() != 0));

        mAcchCir.SetWall(daNpcShoe_Param_c::m.mWallR, daNpcShoe_Param_c::m.mWallH);

        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                  fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));

        mAcch.CrrPos(dComIfG_Bgsp());
        mCcStts.Init((int)daNpcShoe_Param_c::m.mCcWeight, 0, this);
        mCcCyl.Set(mCcDCyl);

        mCcCyl.SetStts(&mCcStts);
        mCcCyl.SetTgType(0);
        mCcCyl.SetTgSPrm(0);

        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.m_ground_h;
        gravity = daNpcShoe_Param_c::m.mGravity;

        setEnvTevColor();
        setRoomNo();
        reset();
        execute();
    }

    return step;
}

/* ############################################################################################## */
/* 80AEA42C-80AEA430 00007C 0004+00 1/5 0/0 0/0 .rodata          @4235 */
SECTION_RODATA static f32 const lit_4235 = 1.0f;
COMPILER_STRIP_GATE(0x80AEA42C, &lit_4235);

/* 80AEA430-80AEA434 000080 0004+00 0/1 0/0 0/0 .rodata          @4236 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4236 = 0x3F0EE0A7;
COMPILER_STRIP_GATE(0x80AEA430, &lit_4236);
#pragma pop

/* 80AEA434-80AEA438 000084 0004+00 2/5 0/0 0/0 .rodata          @4237 */
SECTION_RODATA static f32 const lit_4237 = -1.0f;
COMPILER_STRIP_GATE(0x80AEA434, &lit_4237);

/* 80AE7FD8-80AE81E8 000778 0210+00 1/1 0/0 0/0 .text            CreateHeap__11daNpcShoe_cFv */
void daNpcShoe_c::CreateHeap() {
    // NONMATCHING
}

/* 80AE81E8-80AE821C 000988 0034+00 1/1 0/0 0/0 .text            Delete__11daNpcShoe_cFv */
void daNpcShoe_c::Delete() {
    // NONMATCHING
}

/* 80AE821C-80AE8308 0009BC 00EC+00 1/1 0/0 0/0 .text            Execute__11daNpcShoe_cFv */
void daNpcShoe_c::Execute() {
    // NONMATCHING
}

/* 80AE8308-80AE840C 000AA8 0104+00 1/1 0/0 0/0 .text            Draw__11daNpcShoe_cFv */
void daNpcShoe_c::Draw() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AEA438-80AEA444 000088 000C+00 1/1 0/0 0/0 .rodata          @4302 */
SECTION_RODATA static u8 const lit_4302[12] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
};
COMPILER_STRIP_GATE(0x80AEA438, &lit_4302);

/* 80AE840C-80AE8598 000BAC 018C+00 1/1 0/0 0/0 .text
 * ctrlJoint__11daNpcShoe_cFP8J3DJointP8J3DModel                */
void daNpcShoe_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 80AE8598-80AE85B8 000D38 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daNpcShoe_cFP10fopAc_ac_c              */
int daNpcShoe_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80AE85B8-80AE8604 000D58 004C+00 1/1 0/0 0/0 .text ctrlJointCallBack__11daNpcShoe_cFP8J3DJointi
 */
void daNpcShoe_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80AE8604-80AE864C 000DA4 0048+00 1/0 0/0 0/0 .text            setMotion__11daNpcShoe_cFifi */
void daNpcShoe_c::setMotion(int param_0, f32 param_1, int param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AEA444-80AEA450 000094 000C+00 0/1 0/0 0/0 .rodata          @4423 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4423[12] = {
    0x3F, 0x19, 0x99, 0x9A, 0x3F, 0x19, 0x99, 0x9A, 0x3F, 0x19, 0x99, 0x9A,
};
COMPILER_STRIP_GATE(0x80AEA444, &lit_4423);
#pragma pop

/* 80AEA450-80AEA454 0000A0 0004+00 0/5 0/0 0/0 .rodata          @4480 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4480[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AEA450, &lit_4480);
#pragma pop

/* 80AE864C-80AE895C 000DEC 0310+00 1/1 0/0 0/0 .text            reset__11daNpcShoe_cFv */
void daNpcShoe_c::reset() {
    // NONMATCHING
}

/* 80AE895C-80AE8A04 0010FC 00A8+00 1/1 0/0 0/0 .text
 * setAction__11daNpcShoe_cFM11daNpcShoe_cFPCvPvPv_b            */
int daNpcShoe_c::setAction(bool (daNpcShoe_c::*action)(void*)) {
    mMode = 3;
    if (field_0xddc != NULL) {
        (this->*field_0xddc)(NULL);
    }

    mMode = 0;
    field_0xddc = action;
    if (field_0xddc != NULL) {
        (this->*field_0xddc)(NULL);
    }
    return 1;
}

/* ############################################################################################## */
/* 80AEA454-80AEA460 0000A4 000C+00 0/1 0/0 0/0 .rodata          @4481 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4481[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AEA454, &lit_4481);
#pragma pop

/* 80AEA460-80AEA464 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4482 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4482[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AEA460, &lit_4482);
#pragma pop

/* 80AEA464-80AEA470 0000B4 000C+00 0/1 0/0 0/0 .rodata          @4483 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4483[12] = {
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80AEA464, &lit_4483);
#pragma pop

/* 80AEA470-80AEA47C 0000C0 000C+00 0/1 0/0 0/0 .rodata          @4484 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4484[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AEA470, &lit_4484);
#pragma pop

/* 80AEA47C-80AEA484 0000CC 0008+00 0/1 0/0 0/0 .rodata          @4485 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4485[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AEA47C, &lit_4485);
#pragma pop

/* 80AEA484-80AEA490 0000D4 000C+00 0/1 0/0 0/0 .rodata          @4486 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4486[12] = {
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80AEA484, &lit_4486);
#pragma pop

/* 80AEA490-80AEA49C 0000E0 000C+00 0/1 0/0 0/0 .rodata          @4487 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4487[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AEA490, &lit_4487);
#pragma pop

/* 80AEA49C-80AEA4A4 0000EC 0008+00 0/1 0/0 0/0 .rodata          @4488 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4488[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AEA49C, &lit_4488);
#pragma pop

/* 80AEA4A4-80AEA4B0 0000F4 000C+00 0/1 0/0 0/0 .rodata          @4489 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4489[12] = {
    0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80AEA4A4, &lit_4489);
#pragma pop

/* 80AEA4B0-80AEA4BC 000100 000C+00 0/1 0/0 0/0 .rodata          @4490 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4490[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AEA4B0, &lit_4490);
#pragma pop

/* 80AEA4BC-80AEA4C4 00010C 0008+00 0/1 0/0 0/0 .rodata          @4491 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4491[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AEA4BC, &lit_4491);
#pragma pop

/* 80AEA4C4-80AEA4D0 000114 000C+00 0/1 0/0 0/0 .rodata          @4492 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4492[12] = {
    0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AEA4C4, &lit_4492);
#pragma pop

/* 80AEA4D0-80AEA4D4 000120 0004+00 0/1 0/0 0/0 .rodata          @4493 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4493[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AEA4D0, &lit_4493);
#pragma pop

/* 80AEA4D4-80AEA4E8 000124 0014+00 0/0 0/0 0/0 .rodata          @4494 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4494[20] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AEA4D4, &lit_4494);
#pragma pop

/* 80AEA4E8-80AEA4F8 000138 000C+04 0/1 0/0 0/0 .rodata          @4508 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4508[12 + 4 /* padding */] = {
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
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
COMPILER_STRIP_GATE(0x80AEA4E8, &lit_4508);
#pragma pop

/* 80AEA4F8-80AEA500 000148 0008+00 0/1 0/0 0/0 .rodata          @4623 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4623[8] = {
    0x40, 0x7F, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AEA4F8, &lit_4623);
#pragma pop

/* 80AEA500-80AEA508 000150 0008+00 0/1 0/0 0/0 .rodata          @4624 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4624[8] = {
    0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AEA500, &lit_4624);
#pragma pop

/* 80AE8A04-80AE8E24 0011A4 0420+00 3/0 0/0 0/0 .text            wait__11daNpcShoe_cFPv */
void daNpcShoe_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80AE8E24-80AE8ED4 0015C4 00B0+00 1/0 0/0 0/0 .text            fear__11daNpcShoe_cFPv */
void daNpcShoe_c::fear(void* param_0) {
    // NONMATCHING
}

/* 80AE8ED4-80AE9094 001674 01C0+00 1/0 0/0 0/0 .text            talk__11daNpcShoe_cFPv */
void daNpcShoe_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80AE9094-80AE9260 001834 01CC+00 1/0 0/0 0/0 .text            demo__11daNpcShoe_cFPv */
void daNpcShoe_c::demo(void* param_0) {
    // NONMATCHING
}

/* 80AE9260-80AE9280 001A00 0020+00 1/0 0/0 0/0 .text            daNpcShoe_Create__FPv */
static void daNpcShoe_Create(void* param_0) {
    // NONMATCHING
}

/* 80AE9280-80AE92A0 001A20 0020+00 1/0 0/0 0/0 .text            daNpcShoe_Delete__FPv */
static void daNpcShoe_Delete(void* param_0) {
    // NONMATCHING
}

/* 80AE92A0-80AE92C0 001A40 0020+00 1/0 0/0 0/0 .text            daNpcShoe_Execute__FPv */
static void daNpcShoe_Execute(void* param_0) {
    // NONMATCHING
}

/* 80AE92C0-80AE92E0 001A60 0020+00 1/0 0/0 0/0 .text            daNpcShoe_Draw__FPv */
static void daNpcShoe_Draw(void* param_0) {
    // NONMATCHING
}

/* 80AE92E0-80AE92E8 001A80 0008+00 1/0 0/0 0/0 .text            daNpcShoe_IsDelete__FPv */
static bool daNpcShoe_IsDelete(void* param_0) {
    return true;
}

/* 80AE92E8-80AE93A0 001A88 00B8+00 1/0 0/0 0/0 .text            setParam__11daNpcShoe_cFv */
void daNpcShoe_c::setParam() {
    // NONMATCHING
}

/* 80AE93A0-80AE9624 001B40 0284+00 1/0 0/0 0/0 .text            main__11daNpcShoe_cFv */
BOOL daNpcShoe_c::main() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AEA508-80AEA50C 000158 0004+00 0/1 0/0 0/0 .rodata          @4841 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4841 = 10.0f;
COMPILER_STRIP_GATE(0x80AEA508, &lit_4841);
#pragma pop

/* 80AEA50C-80AEA510 00015C 0004+00 0/1 0/0 0/0 .rodata          @4842 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4842 = 15.0f;
COMPILER_STRIP_GATE(0x80AEA50C, &lit_4842);
#pragma pop

/* 80AE9624-80AE9820 001DC4 01FC+00 1/0 0/0 0/0 .text            setAttnPos__11daNpcShoe_cFv */
void daNpcShoe_c::setAttnPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AEA510-80AEA514 000160 0004+00 0/1 0/0 0/0 .rodata          @4883 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4883 = -80.0f;
COMPILER_STRIP_GATE(0x80AEA510, &lit_4883);
#pragma pop

/* 80AEA514-80AEA518 000164 0004+00 0/1 0/0 0/0 .rodata          @4884 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4884 = 80.0f;
COMPILER_STRIP_GATE(0x80AEA514, &lit_4884);
#pragma pop

/* 80AEA518-80AEA51C 000168 0004+00 0/1 0/0 0/0 .rodata          @4885 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4885 = 40.0f;
COMPILER_STRIP_GATE(0x80AEA518, &lit_4885);
#pragma pop

/* 80AE9820-80AE9A00 001FC0 01E0+00 1/1 0/0 0/0 .text            lookat__11daNpcShoe_cFv */
void daNpcShoe_c::lookat() {
    // NONMATCHING
}

/* 80AE9A00-80AE9AD0 0021A0 00D0+00 1/0 0/0 0/0 .text            setMotionAnm__11daNpcShoe_cFif */
bool daNpcShoe_c::setMotionAnm(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 80AE9AD0-80AE9AD8 002270 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpcShoe_cFv */
BOOL daNpcShoe_c::drawDbgInfo() {
    return FALSE;
}

/* 80AEA26C-80AEA274 002A0C 0008+00 1/0 0/0 0/0 .text            ctrlBtk__8daNpcF_cFv */
// bool daNpcF_c::ctrlBtk() {
extern "C" bool ctrlBtk__8daNpcF_cFv() {
    return false;
}

/* 80AEA274-80AEA278 002A14 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 80AEA278-80AEA280 002A18 0008+00 1/0 0/0 0/0 .text            setExpressionAnm__8daNpcF_cFib */
// bool daNpcF_c::setExpressionAnm(int param_0, bool param_1) {
extern "C" bool setExpressionAnm__8daNpcF_cFib() {
    return true;
}

/* 80AEA280-80AEA288 002A20 0008+00 1/0 0/0 0/0 .text            setExpressionBtp__8daNpcF_cFi */
// bool daNpcF_c::setExpressionBtp(int param_0) {
extern "C" bool setExpressionBtp__8daNpcF_cFi() {
    return true;
}

/* 80AEA288-80AEA28C 002A28 0004+00 1/0 0/0 0/0 .text            setExpression__8daNpcF_cFif */
// void daNpcF_c::setExpression(int param_0, f32 param_1) {
extern "C" void setExpression__8daNpcF_cFif() {
    /* empty function */
}

/* 80AEA28C-80AEA290 002A2C 0004+00 1/0 0/0 0/0 .text            drawOtherMdls__8daNpcF_cFv */
// void daNpcF_c::drawOtherMdls() {
extern "C" void drawOtherMdls__8daNpcF_cFv() {
    /* empty function */
}

/* ############################################################################################## */
/* 80AEA724-80AEA730 0001EC 000C+00 2/2 0/0 0/0 .data            __vt__17daNpcShoe_Param_c */
SECTION_DATA extern void* __vt__17daNpcShoe_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daNpcShoe_Param_cFv,
};

/* 80AEA738-80AEA744 000008 000C+00 1/1 0/0 0/0 .bss             @3805 */
static u8 lit_3805[12];

/* 80AEA744-80AEA748 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80AEA2D8-80AEA340 002A78 0068+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_shoe_cpp */
void __sinit_d_a_npc_shoe_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80AEA2D8, __sinit_d_a_npc_shoe_cpp);
#pragma pop

/* 80AEA340-80AEA344 002AE0 0004+00 1/0 0/0 0/0 .text            adjustShapeAngle__11daNpcShoe_cFv
 */
void daNpcShoe_c::adjustShapeAngle() {
    /* empty function */
}

/* 80AEA608-80AEA628 -00001 0020+00 1/0 0/0 0/0 .data            daNpcShoe_MethodTable */
static actor_method_class daNpcShoe_MethodTable = {
    (process_method_func)daNpcShoe_Create__FPv,
    (process_method_func)daNpcShoe_Delete__FPv,
    (process_method_func)daNpcShoe_Execute__FPv,
    (process_method_func)daNpcShoe_IsDelete__FPv,
    (process_method_func)daNpcShoe_Draw__FPv,
};

/* 80AEA628-80AEA658 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_SHOE */
extern actor_process_profile_definition g_profile_NPC_SHOE = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_SHOE,          // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpcShoe_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  417,                    // mPriority
  &daNpcShoe_MethodTable, // sub_method
  0x00044107,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
