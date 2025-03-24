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

void daNpcShoe_c::setLookMode(int i_lookMode) {
    if (mLookMode != i_lookMode) {
        mLookMode = i_lookMode;
    }
}

bool daNpcShoe_c::chkFindPlayer() {
    bool ret;
    if (!chkActorInSight(daPy_getPlayerActorClass(), daNpcShoe_Param_c::m.mAttnFovY)) {
        mActorMngr[0].remove();
        ret = false;
    } else {
        if (mActorMngr[0].getActorP() == NULL) {
            ret = chkPlayerInSpeakArea(this);
        } else {
            ret = chkPlayerInTalkArea(this);
        }
        if (ret) {
            mActorMngr[0].entry(daPy_getPlayerActorClass());
        } else {
            mActorMngr[0].remove();
        }
    }
    return ret;
}

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
static daNpc_GetParam2 l_bckGetParamList[20] = {
    { 0, 0, 0, },
    { 17, 0, 0, },
    { 0, 2, 0, },
    { 0, 0, 1, },
    { 0, 0, 0, },
    { 13, 0, 0, },
    { 0, 0, 0, },
    { 0, 0, 1, },
    { 0, 0, 0, },
    { 14, 0, 0, },
    { 0, 0, 0, },
    { 0, 0, 1, },
    { 0, 0, 0, },
    { 5, 0, 0, },
    { 0, 0, 0, },
    { 0, 0, 0, },
    { 0, 0, 0, },
    { 11, 0, 0, },
    { 0, 2, 0, },
    { 0, 0, 1, },
};

/* 80AEA594-80AEA5A0 00005C 000C+00 0/0 0/0 0/0 .data            l_btpGetParamList */
static daNpc_GetParam2 l_btpGetParamList[4] = {
    { 0, 0, 0, },
    { 12, 0, 0, },
    { 0, 2, 0, },
    { 0, 0, 0, },
};

/* 80AEA5A0-80AEA5AC -00001 000C+00 5/6 0/0 0/0 .data            l_arcNames */
static char* l_arcNames[3] = {
    "shoe",
    "Mgeneral",
    "object",
};

/* 80AEA5AC-80AEA5B0 000074 0004+00 0/1 0/0 0/0 .data            l_evtNames */
static char* l_evtNames[4] = {
    NULL,
    "Shoe"
};

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

/* 80AE794C-80AE7AD0 0000EC 0184+00 1/1 0/0 0/0 .text            __ct__11daNpcShoe_cFv */
daNpcShoe_c::daNpcShoe_c() {
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
    0.6f,
    12.0f,
    2,
    2,
    3,
    2,
    60.0f,
    500.0f,
    300.0f,
    -300.0f,
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

/* 80AE7FD8-80AE81E8 000778 0210+00 1/1 0/0 0/0 .text            CreateHeap__11daNpcShoe_cFv */
BOOL daNpcShoe_c::CreateHeap() {
    J3DModelData* modelData = static_cast<J3DModelData*>(dComIfG_getObjectRes(l_arcNames[0], 8));
#ifdef DEBUG
    if (modelData == NULL) {
        JUTAssertion::showAssert(JUTAssertion::getSDevice(), "d_a_npc_shoe.cpp", 292, "0 != mdlData_p");
        OSPanic("d_a_npc_shoe.cpp", 292, "Halt");
    }
#endif

    mpMorf = new mDoExt_McaMorfSO(modelData, NULL, NULL, NULL, -1, 1.0f, 0, -1, 
        &mCreature, 0x80000, 0x11020084);
    
    if (mpMorf != NULL && mpMorf->mpModel == NULL) {
        mpMorf->stopZelAnime();
        mpMorf = NULL;
    }

    if (mpMorf == NULL) {
        return false;
    }

    cXyz cstack_30(1.0f, 0.5581154f, 1.0f);
    mpMorf->offTranslate();
    mpMorf->setTranslateScale(cstack_30);

    J3DModel* model = mpMorf->getModel();
    for (u16 jointNo = 0; jointNo < modelData->getJointNum(); jointNo++) {
        modelData->getJointNodePointer(jointNo)->setCallBack(ctrlJointCallBack);
    }
    model->setUserArea((u32)this);

    J3DModelData* pmodel1_data = static_cast<J3DModelData*>(dComIfG_getObjectRes(l_arcNames[0], 9));
#ifdef DEBUG
    if (pmodel1_data == NULL) {
        JUTAssertion::showAssert(JUTAssertion::getSDevice(), "d_a_npc_shoe.cpp", 331, "mdlData_p != 0");
        OSPanic("d_a_npc_shoe.cpp", 331, "Halt");
    }
#endif
    mpModel1 = mDoExt_J3DModel__create(pmodel1_data, 0x80000, 0x11000084);
    if (mpModel1 == NULL) {
        return false;
    }

    J3DModelData* pmodel2_data = static_cast<J3DModelData*>(dComIfG_getObjectRes(l_arcNames[2], 4));
#ifdef DEBUG
        if (pmodel2_data == NULL) {
            JUTAssertion::showAssert(JUTAssertion::getSDevice(), "d_a_npc_shoe.cpp", 338, "mdlData_p != 0");
            OSPanic("d_a_npc_shoe.cpp", 338, "Halt");
        }
#endif
    mpModel2 = mDoExt_J3DModel__create(pmodel2_data, 0x80000, 0x11000084);
    if (mpModel2 == NULL) {
        return false;
    }

    setMotion(0, -1.875, 0);

    return true;
}

/* 80AE81E8-80AE821C 000988 0034+00 1/1 0/0 0/0 .text            Delete__11daNpcShoe_cFv */
int daNpcShoe_c::Delete() {
    this->~daNpcShoe_c();
    return 1;
}

/* 80AE821C-80AE8308 0009BC 00EC+00 1/1 0/0 0/0 .text            Execute__11daNpcShoe_cFv */
int daNpcShoe_c::Execute() {
    if (field_0xe1b != 0) {
        fopAcM_OnStatus(this, 0x8000000);
    } else {
        fopAcM_OffStatus(this, 0x8000000);
    }

    if (fopAcM_CheckCondition(this, 4)) {
        int time = getTime();
        if (time >= mStartTime && time < mEndTime) {
            field_0xe1b = 1;
        } else {
            field_0xe1b = 0;
        }
    } else {
        if (field_0xe1b != 0) {
            execute();
        }
    }

    return 1;
}

/* 80AE8308-80AE840C 000AA8 0104+00 1/1 0/0 0/0 .text            Draw__11daNpcShoe_cFv */
int daNpcShoe_c::Draw() {
    // NONMATCHING
    if (!field_0xe1b) {
        return 1;
    } else {
        draw(false, false, daNpcShoe_Param_c::m.mShadowDepth, NULL, false);
        g_env_light.setLightTevColorType_MAJI(mpModel1->mModelData, &tevStr);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(11));
        mpModel1->setBaseTRMtx(mDoMtx_stack_c::get());
        mDoExt_modelUpdateDL(mpModel1);
        g_env_light.setLightTevColorType_MAJI(mpModel2->mModelData, &tevStr);
        mDoExt_modelUpdateDL(mpModel2);
        dComIfGd_setSimpleShadow(&current.pos, mAcch.GetGroundH(), 50.0f, mAcch.m_gnd, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
    }
    return 1;
}

/* 80AE840C-80AE8598 000BAC 018C+00 1/1 0/0 0/0 .text
 * ctrlJoint__11daNpcShoe_cFP8J3DJointP8J3DModel                */
bool daNpcShoe_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    int joint_no = i_joint->getJntNo();
    int lookat_joints[3] = {1, 2, 3};

    if (joint_no == 0) {
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(1));
        mDoMtx_stack_c::multVecZero(&mLookatPos[0]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(2));
        mDoMtx_stack_c::multVecZero(&mLookatPos[1]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(3));
        mDoMtx_stack_c::multVecZero(&mLookatPos[2]);
    }
    
    mDoMtx_stack_c::copy(i_model->getAnmMtx(joint_no));
    switch(joint_no) {
        case 1:
        case 2:
        case 3:
            setLookatMtx(joint_no, lookat_joints, daNpcShoe_Param_c::m.mNeckAngleScl);
            break;
    }

    i_model->setAnmMtx(joint_no, mDoMtx_stack_c::get());
    cMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);

    return true;
}

/* 80AE8598-80AE85B8 000D38 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daNpcShoe_cFP10fopAc_ac_c              */
BOOL daNpcShoe_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daNpcShoe_c*>(i_this)->CreateHeap();
}

/* 80AE85B8-80AE8604 000D58 004C+00 1/1 0/0 0/0 .text ctrlJointCallBack__11daNpcShoe_cFP8J3DJointi
 */
BOOL daNpcShoe_c::ctrlJointCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpcShoe_c* _this = (daNpcShoe_c*)model->getUserArea();
        if (_this != NULL) {
            _this->ctrlJoint(i_joint, model);
        }
    }
    return true;
}

/* 80AE8604-80AE864C 000DA4 0048+00 1/0 0/0 0/0 .text            setMotion__11daNpcShoe_cFifi */
void daNpcShoe_c::setMotion(int i_motion, f32 i_morf, BOOL i_restart) {
    s16 motion = (s16)i_motion;
    if (i_restart || mMotion != motion) {
        if (i_motion >= 0 && i_motion < 5) {
            mMotion = motion;
            mMotionMorfOverride = i_morf;
            mMotionPrevPhase = -1;
            mMotionPhase = 0;
            field_0xe16 = 0;
        }
    }
}

/* 80AE864C-80AE895C 000DEC 0310+00 1/1 0/0 0/0 .text            reset__11daNpcShoe_cFv */
void daNpcShoe_c::reset() {
    // NONMATCHING
    initialize();
    mLookat.initialize();
    for (int i = 0; i < 1; i++) {
        mActorMngr[i].initialize();
    }

    field_0xe04 = 0;
    field_0xe08 = 0;
    mpActionFn = NULL;
    mLookMode = -1;
    mMode = 0;

    u16 temp1;
    u16 temp2;
    u8 start_time = getStartTime();
    u8 end_time = getEndTime();
    if (start_time != 0xff) {
        temp1 = (start_time / 10);
        temp2 = (start_time % 10) * 10;
        mStartTime = temp2 + temp1 * 60;
    }
    if (end_time != 0xff) {
        temp1 = (end_time / 10);
        temp2 = (end_time % 10) * 10;
        mEndTime = temp2 + temp1 * 60;
    }

    field_0xe1b = 0;
    int time = getTime();
    if (time >= mStartTime && time < mEndTime) {
        field_0xe1b = 1;
    } else {
        field_0xe1b = 0;
    }

    current.pos.set(home.pos);
    old.pos.set(current.pos);
    current.angle.set(0, home.angle.y, 0);
    old.angle = current.angle;
    shape_angle = current.angle;
    mCurAngle = current.angle;
    mOldAngle = mCurAngle;

    speedF = 0.0f;
    speed.setall(0.0f);
    field_0xe00 = -1;
    mOrderEvtNo = 0;

    J3DAnmTexPattern* btpAnm = getTexPtrnAnmP(l_arcNames[0], 12);
    mAnmFlags &= ~(ANM_PAUSE_BTP | ANM_PLAY_BTP | ANM_FLAG_800);
    if (setBtpAnm(btpAnm, mpMorf->getModel()->getModelData(), 1.0f, 2)) {
        mAnmFlags |= ANM_PAUSE_BTP | ANM_PLAY_BTP | ANM_FLAG_800;
    }

    Vec base_scale = {6, 6, 6};
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mpModel2->setBaseScale(base_scale);
    mpModel2->setBaseTRMtx(mDoMtx_stack_c::get());

    setAction(&daNpcShoe_c::wait);

    mMotionMorfOverride = 0.0f;
}

/* 80AE895C-80AE8A04 0010FC 00A8+00 1/1 0/0 0/0 .text
 * setAction__11daNpcShoe_cFM11daNpcShoe_cFPCvPvPv_b            */
int daNpcShoe_c::setAction(bool (daNpcShoe_c::*i_actionFunc)(void*)) {
    mMode = 3;
    if (mpActionFn != NULL) {
        (this->*mpActionFn)(NULL);
    }

    mMode = 0;
    mpActionFn = i_actionFunc;
    if (mpActionFn != NULL) {
        (this->*mpActionFn)(NULL);
    }
    return 1;
}

/* 80AE8A04-80AE8E24 0011A4 0420+00 3/0 0/0 0/0 .text            wait__11daNpcShoe_cFPv */
bool daNpcShoe_c::wait(void* param_0) {
    // NONMATCHING
    switch (mMode) {
    case 0:
        setMotion(0, -1.875f, false);
        speedF = 0.0f;
        mMode = 2;
        break;
    case 1:
        break;
    case 2: {
        chkFindPlayer();
        
        fopAc_ac_c* pactor = mActorMngr->getActorP();
        if (pactor != NULL) {
            setLookMode(0);
        } else {
            setLookMode(2);
        }

        if (dComIfGp_event_runCheck()) {
            if (eventInfo.checkCommandTalk()) {
                if (!dComIfGp_event_chkTalkXY() || dComIfGp_evmng_ChkPresentEnd()) {
                    setAction(&daNpcShoe_c::talk);
                }
            } else {
                if (dComIfGp_getEventManager().getMyStaffId(l_myName, NULL, 0)) {
                    setAction(&daNpcShoe_c::demo);
                }
            }
        } else {
            if (!dKy_darkworld_check() && daPy_py_c::checkNowWolf()) {
                float max_distance = pow(500.0f, 2.0f);
                if (fopAcM_searchPlayerDistanceXZ2(this) < max_distance) {
                    setAction(&daNpcShoe_c::fear);
                    break;
                }
            }

            if (mOrderEvtNo != 0) {
                eventInfo.setArchiveName(l_arcNames[0]);
            }
            orderEvent(field_0xe1a, l_evtNames[mOrderEvtNo], 0xffff, 0x28, 0xff, 1);
        }
        break;
    }
    case 3:
        break;
    default:
#ifdef DEBUG
        JUTAssertion::showAssert(JUTAssertion::getSDevice(), "d_a_npc_shoe.cpp", 1063, "0");
        OSPanic("d_a_npc_shoe.cpp", 1063, "Halt");
#endif
        break;
    }

    return 1;
}

/* 80AE8E24-80AE8ED4 0015C4 00B0+00 1/0 0/0 0/0 .text            fear__11daNpcShoe_cFPv */
bool daNpcShoe_c::fear(void* param_0) {
    // NONMATCHING
}

/* 80AE8ED4-80AE9094 001674 01C0+00 1/0 0/0 0/0 .text            talk__11daNpcShoe_cFPv */
bool daNpcShoe_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80AE9094-80AE9260 001834 01CC+00 1/0 0/0 0/0 .text            demo__11daNpcShoe_cFPv */
bool daNpcShoe_c::demo(void* param_0) {
    // NONMATCHING
}

/* 80AE9260-80AE9280 001A00 0020+00 1/0 0/0 0/0 .text            daNpcShoe_Create__FPv */
static cPhs__Step daNpcShoe_Create(void* i_this) {
    return static_cast<daNpcShoe_c*>(i_this)->Create();
}

/* 80AE9280-80AE92A0 001A20 0020+00 1/0 0/0 0/0 .text            daNpcShoe_Delete__FPv */
static int daNpcShoe_Delete(void* i_this) {
    return static_cast<daNpcShoe_c*>(i_this)->Delete();
}

/* 80AE92A0-80AE92C0 001A40 0020+00 1/0 0/0 0/0 .text            daNpcShoe_Execute__FPv */
static int daNpcShoe_Execute(void* i_this) {
    return static_cast<daNpcShoe_c*>(i_this)->Execute();
}

/* 80AE92C0-80AE92E0 001A60 0020+00 1/0 0/0 0/0 .text            daNpcShoe_Draw__FPv */
static int daNpcShoe_Draw(void* i_this) {
    return static_cast<daNpcShoe_c*>(i_this)->Draw();
}

/* 80AE92E0-80AE92E8 001A80 0008+00 1/0 0/0 0/0 .text            daNpcShoe_IsDelete__FPv */
static bool daNpcShoe_IsDelete(void* param_0) {
    return true;
}

/* 80AE92E8-80AE93A0 001A88 00B8+00 1/0 0/0 0/0 .text            setParam__11daNpcShoe_cFv */
void daNpcShoe_c::setParam() {
    // NONMATCHING
    attention_info.distances[0] = getDistTableIdx(daNpcShoe_Param_c::m.mTalkDistIdx, daNpcShoe_Param_c::m.mTalkAngleIdx);
    attention_info.distances[1] = attention_info.distances[0];
    attention_info.distances[3] = getDistTableIdx(daNpcShoe_Param_c::m.mSpeakDistIdx, daNpcShoe_Param_c::m.mSpeakAngleIdx);

    attention_info.flags = -(field_0xe1b != 0) & 10;

    scale.setall(daNpcShoe_Param_c::m.mScale);
    mAcchCir.SetWallR(daNpcShoe_Param_c::m.mWallR);
    mAcchCir.SetWallH(daNpcShoe_Param_c::m.mWallH);
    gravity = daNpcShoe_Param_c::m.mGravity;
}

/* 80AE93A0-80AE9624 001B40 0284+00 1/0 0/0 0/0 .text            main__11daNpcShoe_cFv */
BOOL daNpcShoe_c::main() {
    // NONMATCHING
}


/* 80AE9624-80AE9820 001DC4 01FC+00 1/0 0/0 0/0 .text            setAttnPos__11daNpcShoe_cFv */
void daNpcShoe_c::setAttnPos() {
    // NONMATCHING
    if (mLookMode == 1) {
        for (int i  = 0; i < 3; i++) {
            mLookatAngle[i].setall(0);
        }
    }

    setMtx();
    lookat();

    cXyz vec(10.0f,15.0f,0.0f);
    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(3));
    mDoMtx_stack_c::multVecZero(&mHeadPos);
    mDoMtx_stack_c::multVec(&vec, &eyePos);
    vec.x = 0.0f;
    mDoMtx_stack_c::multVec(&vec, &vec);

    mHeadAngle.x = cLib_targetAngleX(&mHeadPos,&vec);
    mHeadAngle.y = cLib_targetAngleY(&mHeadPos,&vec);

    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(3));
    mDoMtx_stack_c::multVecZero(&attention_info.position);
    attention_info.position.y += daNpcShoe_Param_c::m.mAttnOffsetY;

    cXyz cStack28;
    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(1));
    mDoMtx_stack_c::multVecZero(&cStack28);
    cStack28.y = current.pos.y;
    mCcCyl.SetC(cStack28);
    mCcCyl.SetH(daNpcShoe_Param_c::m.mCylH);
    mCcCyl.SetR(daNpcShoe_Param_c::m.mWallR);
    dComIfG_Ccsp()->Set(&mCcCyl);
}

/* 80AE9820-80AE9A00 001FC0 01E0+00 1/1 0/0 0/0 .text            lookat__11daNpcShoe_cFv */
void daNpcShoe_c::lookat() {
    // NONMATCHING
    fopAc_ac_c* actor = NULL;
    J3DModel* model = mpMorf->getModel();
    BOOL snap = false;
    f32 body_down_angle = daNpcShoe_Param_c::m.mBodyDownAngle;
    f32 body_up_angle = daNpcShoe_Param_c::m.mBodyUpAngle;
    f32 body_right_angle = daNpcShoe_Param_c::m.mBodyRightAngle;
    f32 body_left_angle = daNpcShoe_Param_c::m.mBodyLeftAngle;
    f32 head_down_angle = daNpcShoe_Param_c::m.mHeadDownAngle;
    f32 head_up_angle = daNpcShoe_Param_c::m.mHeadUpAngle;
    f32 head_right_angle = daNpcShoe_Param_c::m.mHeadRightAngle;
    f32 head_left_angle = daNpcShoe_Param_c::m.mHeadLeftAngle;
    s16 angle_delta = mCurAngle.y - mOldAngle.y;
    cXyz lookat_pos[3] = {mLookatPos[0], mLookatPos[1], mLookatPos[2]};
    csXyz* lookat_angle[3] = {&mLookatAngle[0], &mLookatAngle[1], &mLookatAngle[2]};

    switch (mLookMode) {
        case LOOK_NONE:
            break;
        case LOOK_RESET:
            snap = true;
            break;
        case LOOK_PLAYER:
        case LOOK_PLAYER_TALK:
            actor = daPy_getPlayerActorClass();
            if (mLookMode != LOOK_PLAYER_TALK) {
                break;
            }
            head_right_angle = -80.0f;
            head_left_angle = 80.0f;
            break;
    }

    if (actor != NULL) {
        mLookPos = actor->attention_info.position;
        if (mLookMode != LOOK_PLAYER && mLookMode != LOOK_PLAYER_TALK) {
            mLookPos.y -= 40.0f;
        }
        mLookat.setAttnPos(&mLookPos);
    } else {
        mLookat.setAttnPos(0);
    }

    mLookat.setParam(body_down_angle, body_up_angle, body_right_angle, body_left_angle,
        0.0f, 0.0f, 0.0f, 0.0f,
        head_down_angle, head_up_angle, head_right_angle, head_left_angle,
        mCurAngle.y, lookat_pos);
    mLookat.calc(this, model->getBaseTRMtx(), lookat_angle, snap, angle_delta, false);
}

/* 80AE9A00-80AE9AD0 0021A0 00D0+00 1/0 0/0 0/0 .text            setMotionAnm__11daNpcShoe_cFif */
bool daNpcShoe_c::setMotionAnm(int i_idx, f32 i_morf) {
    // NONMATCHING
    J3DAnmTransformKey* morfAnm = getTrnsfrmKeyAnmP(l_arcNames[l_bckGetParamList[i_idx].arcIdx], l_bckGetParamList[i_idx].fileIdx);
    
    s32 morfAttr = l_bckGetParamList[i_idx].attr;
    
    mAnmFlags &= ~(ANM_PAUSE_MORF | ANM_PLAY_MORF);

    if (morfAnm != NULL) {
        if (setMcaMorfAnm(morfAnm, 1.0f, i_morf, morfAttr, 0, -1)) {
            mAnmFlags |= ANM_PAUSE_MORF | ANM_PLAY_MORF;
            mMotionLoops = 0;
        }
    }
}

/* 80AE9AD0-80AE9AD8 002270 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpcShoe_cFv */
BOOL daNpcShoe_c::drawDbgInfo() {
    return FALSE;
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
