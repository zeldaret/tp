/**
 * @file d_a_npc_impal.cpp
 *
 */

#include "d/dolzel_rel.h"  // IWYU pragma: keep

#include "d/actor/d_a_npc_impal.h"
#include "d/actor/d_a_npc.h"

/* 80A0C270-80A0C2E0 000000 0070+00 12/12 0/0 0/0 .rodata          m__18daNpcImpal_Param_c */
daNpcImpal_HIOParam const daNpcImpal_Param_c::m = {
    135.0f,        // attention_offset
    -3.0f,         // gravity
    1.0f,          // scale
    560.0f,        // real_shadow_size
    255.0f,        // weight
    130.0f,        // height
    35.0f,         // knee_length
    30.0f,         // width
    0.0f,          // body_angleX_max
    0.0f,          // body_angleX_min
    10.0f,         // body_angleY_max
    -10.0f,        // body_angleY_min
    30.0f,         // head_angleX_max
    -10.0f,        // head_angleX_min
    45.0f,         // head_angleY_max
    -45.0f,        // head_angleY_min
    0.600000024f,  // neck_rotation_ratio
    20.0f,         // morf_frame
    3,             // talk_distance
    6,             // talk_angle
    5,             // attention_distance
    6,             // attention_angle
    80.0f,         // fov
    500.0f,        // search_distance
    300.0f,        // search_height
    -300.0f,       // search_depth
    60,            // attention_time
    8,             // damage_time
    0,             // face_expression
    0,             // motion
    0,             // look_mode
    0,             // debug_mode_ON
    0,             // debug_info_ON
    300.0f,        // demo_start_dist
};

NPC_IMPAL_HIO_CLASS l_HIO;

/* 80A0C544-80A0C61C 000020 00D8+00 1/2 0/0 0/0 .data            l_bckGetParamList */
static daNpc_GetParam2 l_bckGetParamList[18] = {
    {-1, 2, 0}, {14, 0, 0}, {8, 0, 0},  {7, 2, 0},  {11, 0, 0}, {13, 0, 0},
    {12, 0, 0}, {15, 2, 0}, {17, 2, 0}, {16, 2, 0}, {22, 2, 0}, {19, 2, 0},
    {23, 2, 0}, {18, 0, 0}, {21, 0, 0}, {20, 0, 0}, {10, 0, 0}, {9, 2, 0},
};

/* 80A0C61C-80A0C694 0000F8 0078+00 1/1 0/0 0/0 .data            l_btpGetParamList */
static daNpc_GetParam2 l_btpGetParamList[10] = {
    {35, 2, 0}, {41, 2, 0}, {37, 0, 0}, {36, 2, 0}, {38, 2, 0},
    {40, 2, 0}, {39, 0, 0}, {42, 2, 0}, {44, 2, 0}, {43, 2, 0},
};

/* 80A0C694-80A0C6C4 000170 0030+00 1/2 0/0 0/0 .data            l_btkGetParamList */
static daNpc_GetParam2 l_btkGetParamList[4] = {
    {29, 2, 0},
    {32, 2, 0},
    {31, 0, 0},
    {30, 2, 0},
};

/* 80A0C6C4-80A0C6C8 -00001 0004+00 6/7 0/0 0/0 .data            l_arcNames */
static char* l_arcNames[1] = {"impal"};

/* 80A0C6C8-80A0C6D8 -00001 0010+00 0/1 0/0 0/0 .data            l_evtNames */
static char* l_evtNames[4] = {
    NULL,
    "IMPAL_APPEAR1",
    "IMPAL_APPEAR2",
    "IMPAL_COPYROD",
};

/* 80A0C6D8-80A0C6E4 0001B4 000C+00 2/2 0/0 0/0 .data            l_resetPos */
static Vec l_resetPos = {2536.763671875f, 99.99166107177734f, -1154.2318115234375f};

/* 80A0C6E4-80A0C6E8 -00001 0004+00 0/2 0/0 0/0 .data            l_myName */
static char* l_myName = "impal";

#if DEBUG
daNpcImpal_HIO_c::daNpcImpal_HIO_c() {
    m = daNpcImpal_Param_c::m;
}

void daNpcImpal_HIO_c::genMessage(JORMContext* ctext) {
    // Ancient Document Demo Start Distance:
    ctext->genSlider("古文書デモ開始距離", &m.demo_start_dist, 0.0f, 5000.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    daNpcF_commonGenMessage(ctext, &m.common);
}
#endif

/* 80A0C70C-80A0C73C 0001E8 0030+00 0/2 0/0 0/0 .data            mEvtSeqList__12daNpcImpal_c */
daNpcImpal_c::EventFn daNpcImpal_c::mEvtSeqList[4] = {
    NULL,
    &daNpcImpal_c::EvCut_ImpalAppear1,
    &daNpcImpal_c::EvCut_ImpalAppear2,
    &daNpcImpal_c::EvCut_CopyRod,
};

/* 80A079EC-80A07B70 0000EC 0184+00 1/1 0/0 0/0 .text            __ct__12daNpcImpal_cFv */
daNpcImpal_c::daNpcImpal_c() {}

/* 80A07C00-80A07DC4 000300 01C4+00 1/0 0/0 0/0 .text            __dt__12daNpcImpal_cFv */
daNpcImpal_c::~daNpcImpal_c() {
    for (int i = 0; i < 1; i++) {
        dComIfG_resDelete(&mPhase[i], l_arcNames[i]);
    }

    if (heap != NULL) {
        mAnm_p->stopZelAnime();
    }

#if DEBUG
    if (mpHIO) {
        mpHIO->removeHIO();
    }
#endif
}

/* 80A07DC4-80A080F8 0004C4 0334+00 1/1 0/0 0/0 .text            Create__12daNpcImpal_cFv */
int daNpcImpal_c::Create() {

    fopAcM_ct(this, daNpcImpal_c);

    if ((!strcmp(dComIfGp_getStartStageName(), "F_SP128") && dComIfGs_isSaveSwitch(0x61)) ||
        (!strcmp(dComIfGp_getStartStageName(), "R_SP128") && !dComIfGs_isSaveSwitch(0x61)))
    {
        return cPhs_ERROR_e;
    }

    int phase = cPhs_ERROR_e;
    for (int i = 0; i < 1; i++) {
        phase = dComIfG_resLoad(&mPhase[i], l_arcNames[i]);
        if (phase != cPhs_COMPLEATE_e) {
            return phase;
        }
    }

    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x3ce0)) {
            return cPhs_ERROR_e;
        }

        mFlowID = getMessageNo();
        field_de2 = mFlowID;

        J3DModelData* model_data = mAnm_p->getModel()->getModelData();
        fopAcM_SetMtx(this, mAnm_p->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -160.0f, -50.0f, -160.0f, 160.0f, 220.0f, 160.0f);
        mCreatureSound.init(&current.pos, &eyePos, 3, 1);
#if DEBUG
        mpHIO = &l_HIO;
        // Grandma Impaz:
        mpHIO->entryHIO("インパルばあさん");
#endif
        mAcchCir.SetWall(mpHIO->m.common.width, mpHIO->m.common.knee_length);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                  fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mAcch.SetRoofNone();
        mAcch.SetWaterNone();
        mAcch.CrrPos(dComIfG_Bgsp());
        mCcStts.Init((int)mpHIO->m.common.weight, 0, this);
        mCyl.Set(daNpcF_c::mCcDCyl);
        mCyl.SetStts(&mCcStts);
        mCyl.SetTgType(0);
        mCyl.SetTgSPrm(0);
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();
        setEnvTevColor();
        setRoomNo();
        mAnm_p->modelCalc();
        reset();
        Execute();

        // Hidden Village:
        if (!strcmp(dComIfGp_getStartStageName(), "F_SP128")) {
            // 0x116 - F_0278 - Received pendant from Impaz
            if (fopAcM_isSwitch(this, getSwitchNo()) && !daNpcF_chkEvtBit(0x116)) {
                daNpcF_clearMessageTmpBit();
                mOrderEvtNo = 1;
            }
        }
    }

    return phase;
}

/* 80A080F8-80A08368 0007F8 0270+00 1/1 0/0 0/0 .text            CreateHeap__12daNpcImpal_cFv */
BOOL daNpcImpal_c::CreateHeap() {
    J3DModelData* mdlData_p = NULL;
    J3DModel* model = NULL;
    mdlData_p = static_cast<J3DModelData*>(dComIfG_getObjectRes(l_arcNames[0], 26));
    JUT_ASSERT(349, 0 != mdlData_p);
    u32 reg_r23 = 0x11020284;
    mAnm_p = new mDoExt_McaMorfSO(mdlData_p, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mCreatureSound,
                                  0x80000, reg_r23);
    if (mAnm_p != NULL && mAnm_p->getModel() == NULL) {
        mAnm_p->stopZelAnime();
        mAnm_p = NULL;
    }
    if (mAnm_p == NULL) {
        return FALSE;
    }

    model = mAnm_p->getModel();
    for (u16 jointNo = 0; jointNo < mdlData_p->getJointNum(); jointNo++) {
        mdlData_p->getJointNodePointer(jointNo)->setCallBack(ctrlJointCallBack);
    }
    model->setUserArea((uintptr_t)this);

    mpMatAnm = new daNpcF_MatAnm_c();
    if (mpMatAnm == NULL) {
        return FALSE;
    }

    if (!setExpressionAnm(ANM_1, 0)) {
        return FALSE;
    }

    setMotionAnm(ANM_10, 0.0f);

    return TRUE;
}

/* 80A08524-80A08558 000C24 0034+00 1/1 0/0 0/0 .text            Delete__12daNpcImpal_cFv */
int daNpcImpal_c::Delete() {
    fopAcM_RegisterDeleteID(this, "NPC_IMPAL");
    this->~daNpcImpal_c();
    return 1;
}

/* 80A08558-80A0857C 000C58 0024+00 2/2 0/0 0/0 .text            Execute__12daNpcImpal_cFv */
int daNpcImpal_c::Execute() {
    execute();
    return 1;
}

/* 80A0857C-80A085EC 000C7C 0070+00 1/1 0/0 0/0 .text            Draw__12daNpcImpal_cFv */
int daNpcImpal_c::Draw() {
    if (field_0xde9 == 0) {
        return 1;
    }

    J3DModelData* model_data = mAnm_p->getModel()->getModelData();
    model_data->getMaterialNodePointer(2)->setMaterialAnm(mpMatAnm);
    draw(false, false, mpHIO->m.common.real_shadow_size, NULL, false);

    return 1;
}

/* 80A085EC-80A087BC 000CEC 01D0+00 1/1 0/0 0/0 .text
 * ctrlJoint__12daNpcImpal_cFP8J3DJointP8J3DModel               */
bool daNpcImpal_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    J3DJoint* my_joint = i_joint;
    int jointNo = my_joint->getJntNo();
    int lookatJoints[3] = {1, 3, 4};

    if (jointNo == 0) {
        mDoMtx_stack_c::copy(mAnm_p->getModel()->getAnmMtx(1));
        mDoMtx_stack_c::multVecZero(&mLookatPos[0]);
        mDoMtx_stack_c::copy(mAnm_p->getModel()->getAnmMtx(3));
        mDoMtx_stack_c::multVecZero(&mLookatPos[1]);
        mDoMtx_stack_c::copy(mAnm_p->getModel()->getAnmMtx(4));
        mDoMtx_stack_c::multVecZero(&mLookatPos[2]);
    }

    mDoMtx_stack_c::copy(i_model->getAnmMtx(jointNo));
    switch (jointNo) {
    case 1:
    case 3:
    case 4:
        setLookatMtx(jointNo, lookatJoints, mpHIO->m.common.neck_rotation_ratio);
        break;
    }

    i_model->setAnmMtx(jointNo, mDoMtx_stack_c::get());
    cMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);

    if ((jointNo == 4 || jointNo == 8) && (mAnmFlags & ANM_PLAY_BCK)) {
        J3DAnmTransform* bckAnm = mBckAnm.getBckAnm();
        mBckAnm.changeBckOnly(mAnm_p->getAnm());
        mAnm_p->changeAnm(bckAnm);
    }

    return true;
}

void daNpcImpal_c::setExpressionTalkAfter() {
    switch (mExpression) {
    case EXPR_0:
        setExpression(EXPR_7, -1.0f);
        break;
    case EXPR_1:
        setExpression(EXPR_4, -1.0f);
        break;
    case EXPR_2:
        setExpression(EXPR_5, -1.0f);
        break;
    case EXPR_3:
        setExpression(EXPR_6, -1.0f);
        break;
    default:
        setExpression(EXPR_7, -1.0f);
        break;
    }
}

int daNpcImpal_c::step(s16 i_angle, int i_animate) {
    if (mTurnMode == 0) {
        if (i_animate) {
            if ((s32)fabsf(cM_sht2d((f32)(s16)(i_angle - mCurAngle.y))) > 40) {
                setExpression(EXPR_7, -1.0f);
                setMotion(MOT_6, -1.0f, false);
            }
        }
        mTurnTargetAngle = i_angle;
        mTurnAmount = 0;
        if (mCurAngle.y == mTurnTargetAngle) {
            mTurnMode++;
        }
        current.angle.y = mCurAngle.y;
        shape_angle.y = current.angle.y;
        mTurnMode++;
    } else if (mTurnMode == 1) {
        if (turn(mTurnTargetAngle, 15.0f, 0)) {
            shape_angle.y = current.angle.y;
            mCurAngle.y = current.angle.y;
            mOldAngle.y = current.angle.y;
            mTurnMode++;
        } else {
            shape_angle.y = current.angle.y;
            mCurAngle.y = current.angle.y;
        }
    }
    return mTurnMode > 1;
}

void daNpcImpal_c::playExpression() {
    daNpcF_anmPlayData dat0 = {ANM_1, mpHIO->m.common.morf_frame, 1};
    daNpcF_anmPlayData* pDat0[1] = {&dat0};
    daNpcF_anmPlayData dat1 = {ANM_5, mpHIO->m.common.morf_frame, 1};
    daNpcF_anmPlayData* pDat1[1] = {&dat1};
    daNpcF_anmPlayData dat2 = {ANM_4, mpHIO->m.common.morf_frame, 1};
    daNpcF_anmPlayData* pDat2[1] = {&dat2};
    daNpcF_anmPlayData dat3 = {ANM_6, mpHIO->m.common.morf_frame, 1};
    daNpcF_anmPlayData* pDat3[1] = {&dat3};
    daNpcF_anmPlayData dat4 = {ANM_8, mpHIO->m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat4[1] = {&dat4};
    daNpcF_anmPlayData dat5 = {ANM_7, mpHIO->m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat5[1] = {&dat5};
    daNpcF_anmPlayData dat6 = {ANM_9, mpHIO->m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat6[1] = {&dat6};
    daNpcF_anmPlayData dat7 = {ANM_0, mpHIO->m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat7[1] = {&dat7};

    daNpcF_anmPlayData** ppDat[8] = {
        pDat0, pDat1, pDat2, pDat3, pDat4, pDat5, pDat6, pDat7,
    };
    if (mExpression >= 0 && mExpression < 8) {
        playExpressionAnm(ppDat);
    }
}

void daNpcImpal_c::playMotion() {
    daNpcF_anmPlayData dat0 = {0xA, mpHIO->m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat0[1] = {&dat0};

    daNpcF_anmPlayData dat1a = {0xD, mpHIO->m.common.morf_frame, 1};
    daNpcF_anmPlayData dat1b = {0xB, mpHIO->m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat1[2] = {&dat1a, &dat1b};

    daNpcF_anmPlayData dat2 = {0xB, mpHIO->m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat2[1] = {&dat2};

    daNpcF_anmPlayData dat3 = {0xC, mpHIO->m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat3[1] = {&dat3};

    daNpcF_anmPlayData dat4a = {0xE, mpHIO->m.common.morf_frame, 1};
    daNpcF_anmPlayData dat4b = {0xA, mpHIO->m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat4[2] = {&dat4a, &dat4b};

    daNpcF_anmPlayData dat5a = {0x10, 0.0f, 1};
    daNpcF_anmPlayData dat5b = {0x11, 0.0f, 0};
    daNpcF_anmPlayData* pDat5[2] = {&dat5a, &dat5b};

    daNpcF_anmPlayData dat6 = {0xF, 3.0f, 0};
    daNpcF_anmPlayData* pDat6[1] = {&dat6};

    daNpcF_anmPlayData** ppDat[7] = {
        pDat0, pDat1, pDat2, pDat3, pDat4, pDat5, pDat6,
    };
    if (mMotion >= 0 && mMotion < 7) {
        playMotionAnm(ppDat);
    }
}

/* 80A087BC-80A087DC 000EBC 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__12daNpcImpal_cFP10fopAc_ac_c             */
int daNpcImpal_c::createHeapCallBack(fopAc_ac_c* i_this) {
    daNpcImpal_c* a_this = static_cast<daNpcImpal_c*>(i_this);
    return a_this->CreateHeap();
}

/* 80A087DC-80A08828 000EDC 004C+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__12daNpcImpal_cFP8J3DJointi                */
int daNpcImpal_c::ctrlJointCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpcImpal_c* _this = (daNpcImpal_c*)model->getUserArea();
        if (_this != NULL) {
            _this->ctrlJoint(i_joint, model);
        }
    }
    return 1;
}

/* 80A08828-80A08A68 000F28 0240+00 2/0 0/0 0/0 .text            setExpressionAnm__12daNpcImpal_cFib
 */
bool daNpcImpal_c::setExpressionAnm(int i_idx, bool i_modify) {
    mAnmFlags &= ~ANM_EXPRESSION_FLAGS;

    J3DAnmTransform* bckAnm = (l_bckGetParamList[i_idx].fileIdx >= 0) ?
                                getTrnsfrmKeyAnmP(l_arcNames[l_bckGetParamList[i_idx].arcIdx],
                                                  l_bckGetParamList[i_idx].fileIdx)
                                : NULL;

    s32 attr = l_bckGetParamList[i_idx].attr;
    bool res = false;
    switch (i_idx) {
    case 0:
        res = setExpressionBtp(0);
        break;
    case 1:
        res = setExpressionBtp(1);
        break;
    case 2:
        res = setExpressionBtp(2);
        break;
    case 3:
        res = setExpressionBtp(3);
        break;
    case 4:
        res = setExpressionBtp(4);
        break;
    case 5:
        res = setExpressionBtp(5);
        break;
    case 6:
        res = setExpressionBtp(6);
        break;
    case 7:
        res = setExpressionBtp(7);
        break;
    case 8:
        res = setExpressionBtp(8);
        break;
    case 9:
        res = setExpressionBtp(9);
        break;
    default:
        bckAnm = NULL;
        break;
    }

    if (!res) {
        return false;
    }

    if (bckAnm == NULL) {
        return true;
    }

    if (setBckAnm(bckAnm, 1.0f, attr, 0, -1, i_modify)) {
        mAnmFlags |= ANM_PAUSE_BCK | ANM_PLAY_BCK;
        mExpressionLoops = 0;
        return true;
    }

    // "%s: Failed to register facial BCK animation!\n"
    OS_REPORT("%s: 表情Bckアニメーションの登録に失敗しました！\n", __FILE__);
    return false;
}

/* 80A08A68-80A08B48 001168 00E0+00 1/0 0/0 0/0 .text            setExpressionBtp__12daNpcImpal_cFi
 */
bool daNpcImpal_c::setExpressionBtp(int i_idx) {
    J3DAnmTexPattern* btpAnm = getTexPtrnAnmP(l_arcNames[l_btpGetParamList[i_idx].arcIdx],
                                              l_btpGetParamList[i_idx].fileIdx);

    s32 attr = l_btpGetParamList[i_idx].attr;
    mAnmFlags &= ~(ANM_PAUSE_BTP | ANM_PLAY_BTP | ANM_FLAG_800);

    if (btpAnm == NULL) {
        return true;
    }

    if (setBtpAnm(btpAnm, mAnm_p->getModel()->getModelData(), 1.0f, attr)) {
        mAnmFlags |= ANM_PAUSE_BTP | ANM_PLAY_BTP;
        if (i_idx == 0) {
            mAnmFlags |= ANM_FLAG_800;
        }
        return true;
    }

    // "%s: Failed to register facial BTP animation!\n"
    OS_REPORT("%s: 表情Btpアニメーションの登録に失敗しました！\n", __FILE__);
    return false;
}

/* 80A08B48-80A08CBC 001248 0174+00 1/0 0/0 0/0 .text            setMotionAnm__12daNpcImpal_cFif */
void daNpcImpal_c::setMotionAnm(int i_idx, f32 i_morf) {
    int iVar5 = 0;

    switch (i_idx) {
    case ANM_4:
    case ANM_5:
    case ANM_6:
    case ANM_7:
    case ANM_8:
    case ANM_9:
    case ANM_10:
    case ANM_11:
        break;
    // Is this a bug from the original developers?
    case ANM_12:
        iVar5 = 1;
    case ANM_2:
        iVar5 = 2;
    case ANM_3:
        iVar5 = 3;
        break;
    }

    J3DAnmTransformKey* morfAnm = getTrnsfrmKeyAnmP(l_arcNames[l_bckGetParamList[i_idx].arcIdx],
                                                    l_bckGetParamList[i_idx].fileIdx);
    J3DAnmTextureSRTKey* btkAnm = getTexSRTKeyAnmP(l_arcNames[l_btkGetParamList[iVar5].arcIdx],
                                                   l_btkGetParamList[iVar5].fileIdx);

    int oiVar5 = l_bckGetParamList[i_idx].attr;
    int iVar4 = l_btkGetParamList[iVar5].attr;

    mAnmFlags &= 0xffffffc0;

    if (morfAnm && setMcaMorfAnm(morfAnm, 1.0f, i_morf, oiVar5, 0, -1)) {
        mAnmFlags |= 9;
        mMotionLoops = 0;
    }

    if (btkAnm && setBtkAnm(btkAnm, mAnm_p->getModel()->getModelData(), 1.0f, iVar4)) {
        mAnmFlags |= 0x12;
    }
}

/* 80A08CBC-80A08EB8 0013BC 01FC+00 1/1 0/0 0/0 .text            reset__12daNpcImpal_cFv */
void daNpcImpal_c::reset() {
    initialize();
    mpMatAnm->initialize();
    mLookat.initialize();

    for (int i = 0; i < 1; i++) {
        mActorMngr[i].initialize();
    }

    field_0xdd8 = 0;
    field_0xddc = 0;

    mpActionFn = NULL;
    mLookMode = -1;
    mMode = 0;
    mCurAngle = current.angle;
    mOldAngle = mCurAngle;
    mItemPartnerId = -1;
    mOrderEvtNo = 0;
    mExpressionMorfOverride = 0.0f;
    mMotionMorfOverride = 0.0f;

    if (dComIfGs_isSaveSwitch(0x61)) {
        field_0xde8 = 1;
        field_0xde9 = 1;
    } else {
        field_0xde8 = fopAcM_isSwitch(this, getSwitchNo()) != FALSE;
        field_0xde9 = (fopAcM_isSwitch(this, getSwitchNo()) && daNpcF_chkEvtBit(0x116));
    }

    if (!strcmp(dComIfGp_getStartStageName(), "F_SP128") && field_0xde8 && field_0xde9) {
        current.pos.set(l_resetPos);
        old.pos = current.pos;
    }

    setAction(&daNpcImpal_c::wait);
}

/* 80A08EB8-80A08F60 0015B8 00A8+00 1/1 0/0 0/0 .text
 * setAction__12daNpcImpal_cFM12daNpcImpal_cFPCvPvPv_b          */
bool daNpcImpal_c::setAction(daNpcImpal_c::actionFunc i_actionFn) {
    mMode = 3;
    if (mpActionFn != NULL) {
        (this->*mpActionFn)(NULL);
    }
    mMode = 0;
    mpActionFn = i_actionFn;
    if (mpActionFn != NULL) {
        (this->*mpActionFn)(NULL);
    }
    return true;
}

/* 80A0B76C-80A0B94C 003E6C 01E0+00 1/1 0/0 0/0 .text            lookat__12daNpcImpal_cFv */
void daNpcImpal_c::lookat() {
    fopAc_ac_c* actor = NULL;
    J3DModel* model = mAnm_p->getModel();
    BOOL snap = false;

    f32 body_angleX_min = mpHIO->m.common.body_angleX_min;
    f32 body_angleX_max = mpHIO->m.common.body_angleX_max;
    f32 body_angleY_min = mpHIO->m.common.body_angleY_min;
    f32 body_angleY_max = mpHIO->m.common.body_angleY_max;
    f32 head_angleX_min = mpHIO->m.common.head_angleX_min;
    f32 head_angleX_max = mpHIO->m.common.head_angleX_max;
    f32 head_angleY_min = mpHIO->m.common.head_angleY_min;
    f32 head_angleY_max = mpHIO->m.common.head_angleY_max;

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
        if (mLookMode == LOOK_PLAYER_TALK) {
            head_angleY_min = -80.0f;
            head_angleY_max = 80.0f;
        }
        break;
    }

    if (actor != NULL) {
        mLookPos = actor->attention_info.position;
        if (mLookMode != LOOK_PLAYER && mLookMode != LOOK_PLAYER_TALK) {
            mLookPos.y -= 40.0f;
        }
        mLookat.setAttnPos(&mLookPos);
    } else {
        mLookat.setAttnPos(NULL);
    }

    mLookat.setParam(body_angleX_min, body_angleX_max, body_angleY_min, body_angleY_max, 0.0f, 0.0f,
                     0.0f, 0.0f, head_angleX_min, head_angleX_max, head_angleY_min, head_angleY_max,
                     mCurAngle.y, lookat_pos);
    mLookat.calc(this, model->getBaseTRMtx(), lookat_angle, snap, angle_delta, false);
}

/* 80A08F60-80A090E8 001660 0188+00 1/1 0/0 0/0 .text            s_sub1__FPvPv */
static void* s_sub1(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_Obj_Carry &&
        ((fopAc_ac_c*)i_actor)->current.pos.absXZ(((fopAc_ac_c*)i_data)->current.pos) < 1000.0f)
    {
        fopAcM_delete((fopAc_ac_c*)i_actor);
    }
    return NULL;
}

BOOL daNpcImpal_c::chkFindPlayer() {
    BOOL ret;

    if (chkActorInSight(daPy_getPlayerActorClass(), mpHIO->m.common.fov) == FALSE) {
        mActorMngr[0].remove();
        return FALSE;
    } else {
        ret = FALSE;
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

void daNpcImpal_c::setLookMode(int i_lookMode) {
    if (i_lookMode != mLookMode) {
        mLookMode = i_lookMode;
    }
}

void daNpcImpal_c::deleteObstacle() {
    fpcM_Search(s_sub1, this);
}

/* 80A090E8-80A099B4 0017E8 08CC+00 4/0 0/0 0/0 .text            wait__12daNpcImpal_cFPv */
bool daNpcImpal_c::wait(void* param_0) {
    switch (mMode) {
    case 0:
        setExpression(EXPR_7, -1.0f);
        setMotion(MOT_0, -1.0f, false);
        mTurnMode = 0;
        speedF = 0.0f;
        mMode = 2;
        break;
    case 2:
        if (mActorMngr[0].getActorP()) {
            if (chkFindPlayer() == FALSE) {
                mTurnMode = 0;
            }
        } else if (chkFindPlayer()) {
            mTurnMode = 0;
        }

        if (mActorMngr[0].getActorP()) {
            setLookMode(LOOK_PLAYER);
        } else {
            setLookMode(LOOK_NONE);

            if (home.angle.y != mCurAngle.y) {
                if (step(home.angle.y, 1)) {
                    setExpression(EXPR_7, -1.0f);
                    setMotion(MOT_0, -1.0f, false);
                    mTurnMode = 0;
                }
            }
        }

        if (field_0xde8 == 0 && fopAcM_isSwitch(this, getSwitchNo())) {
            deleteObstacle();
            Z2GetAudioMgr()->bgmStop(60, 0);
            daNpcF_clearMessageTmpBit();
            mOrderEvtNo = 1;
            field_0xde8 = 1;
        } else {
            // 0x116 - F_0278 - Received pendant from Impaz
            // 0x30F - F_0783 - Showed dominion rod to Impaz
            if (daNpcF_chkEvtBit(0x116) && !daNpcF_chkEvtBit(0x30F) && daPy_getPlayerActorClass()->checkCopyRodEquip()
                && (daPy_getPlayerActorClass()->current.pos - current.pos).absXZ() < mpHIO->m.demo_start_dist) {
                daNpcF_offTmpBit(0xb);
                daNpcF_offTmpBit(0xc);
                mOrderEvtNo = 3;
            }
        }

        if (dComIfGp_event_runCheck() != FALSE) {
            if (eventInfo.checkCommandTalk()) {
                if (dComIfGp_event_chkTalkXY()) {
                    if (dComIfGp_evmng_ChkPresentEnd() == FALSE) {
                        return true;
                    }
                    u8 preitemno = dComIfGp_event_getPreItemNo();
                    if (preitemno == fpcNm_ITEM_ANCIENT_DOCUMENT) {
                        mFlowID = 5;
                        setAction(&daNpcImpal_c::talk);
                    } else {
                        s16 evt_idx =
                            dComIfGp_getEventManager().getEventIdx(this, "NO_RESPONSE", 0xff);
                        dComIfGp_getEvent().reset(this);
                        fopAcM_orderChangeEventId(this, evt_idx, 1, -1);
                    }
                } else {
                    setAction(&daNpcImpal_c::talk);
                }
            } else {
                int mystaffid = dComIfGp_getEventManager().getMyStaffId(l_myName, NULL, 0);
                if (mystaffid != -1) {
                    setAction(&daNpcImpal_c::demo);
                }
            }
        } else {
            // 0x30F - F_0783 - Showed dominion rod to Impaz
            if (daNpcF_chkEvtBit(0x30f)) {
                eventInfo.onCondition(0x20);
            }
            if (mOrderEvtNo != 0) {
                eventInfo.setArchiveName("impal");
            }
            orderEvent(mOrderSpeakEvt, l_evtNames[mOrderEvtNo], -1, 40, -1, 1);
        }
    case 3:
        break;
    default:
        JUT_ASSERT(1384, FALSE);
    }

    return true;
}

/* 80A099B4-80A099F8 0020B4 0044+00 1/0 0/0 0/0 .text            setMotion__12daNpcImpal_cFifi */
void daNpcImpal_c::setMotion(int i_motion, f32 i_morf, BOOL i_restart) {
    s16 motion = (s16)i_motion;
    if ((i_restart || mMotion != motion) && i_motion >= 0 && i_motion < 7) {
        mMotion = motion;
        mMotionMorfOverride = i_morf;
        mMotionPrevPhase = -1;
        mMotionPhase = 0;
    }
}

/* 80A099F8-80A09A24 0020F8 002C+00 1/0 0/0 0/0 .text            setExpression__12daNpcImpal_cFif */
void daNpcImpal_c::setExpression(int i_expression, f32 i_morf) {
    if (i_expression >= 0 && i_expression < 8) {
        mExpression = (s16)i_expression;
        mExpressionMorfOverride = i_morf;
        mExpressionPrevPhase = -1;
        mExpressionPhase = 0;
    }
}

/* 80A09A24-80A09F4C 002124 0528+00 2/0 0/0 0/0 .text            talk__12daNpcImpal_cFPv */
bool daNpcImpal_c::talk(void* param_0) {
    bool ret = false;

    switch (mMode) {
    case 0:
        initTalk(mFlowID, NULL);
        mTurnMode = 0;
        mMsgTimer = 0;
        if (mLookMode != 3) {
            mLookMode = 3;
        }
        mMode = 2;
        break;
    case 2:
        if (mCurAngle.y == fopAcM_searchPlayerAngleY(this)) {
            if (talkProc(NULL, 1, NULL)) {
                mActorMngr[0].entry(daPy_getPlayerActorClass());
                int evt_id = 0;
                if (mFlow.getEventId(&evt_id) == 1) {
                    mItemPartnerId =
                        fopAcM_createItemForPresentDemo(&current.pos, evt_id, 0, -1, -1, 0, 0);
                    if (mItemPartnerId != 0xffffffff) {
                        s16 evt_idx =
                            dComIfGp_getEventManager().getEventIdx(this, "DEFAULT_GETITEM", 0xff);
                        dComIfGp_getEvent().reset(this);
                        fopAcM_orderChangeEventId(this, evt_idx, 1, -1);
                        field_0x9ec = 1;
                    }
                }

                setAction(&daNpcImpal_c::wait);

                ret = true;
            } else {
                s32 prev_msg_timer = mMsgTimer;
                int expression, motion;
                if (ctrlMsgAnm(expression, motion, this, 0)) {
                    setExpression(expression, -1.0f);
                    setMotion(motion, -1.0f, false);
                } else if (prev_msg_timer != 0 && mMsgTimer == 0) {
                    setExpressionTalkAfter();
                }
            }
        } else {
            s16 angle = fopAcM_searchPlayerAngleY(this);
            if (step(angle, 1)) {
                setMotion(MOT_0, -1.0f, false);
                mTurnMode = 0;
            }
        }
        break;
    case 3:
        mFlowID = field_de2;
        setExpression(EXPR_7, -1.0f);
        if (!field_0x9ec) {
            dComIfGp_event_reset();
        }
    }

    return ret;
}

/* 80A09F4C-80A0A1E0 00264C 0294+00 1/0 0/0 0/0 .text            demo__12daNpcImpal_cFPv */
bool daNpcImpal_c::demo(void* param_0) {
    // FIXME: Create proper enum list for impal events:
    enum Impal_Enums_are_magic {
        Impal_magic_enum_0 = 0,
        Impal_magic_enum_2 = 2,
    };
    switch (mMode) {
    case 0:
        setExpression(EXPR_7, -1.0f);
        setMotion(MOT_0, -1.0f, false);
        mMode = 2;
    case 2: {
        if (dComIfGp_event_runCheck() != FALSE && !eventInfo.checkCommandTalk()) {
            dEvent_manager_c& event_manager = dComIfGp_getEventManager();

            s32 staff_id = dComIfGp_evmng_getMyStaffId(l_myName, NULL, 0);
            if (staff_id != -1) {
                mStaffID = staff_id;
                JUT_ASSERT(1494, NULL != mEvtSeqList[mOrderEvtNo]);
                if ((this->*(mEvtSeqList[mOrderEvtNo]))(staff_id)) {
                    event_manager.cutEnd(staff_id);
                }
            }

            if (eventInfo.checkCommandDemoAccrpt() && mEventIdx != -1 &&
                event_manager.endCheck(mEventIdx))
            {
                if (!field_0x9ec) {
                    dComIfGp_event_reset();
                }

                field_0x9ec = 0;
                mOrderEvtNo = (mOrderEvtNo == 1) ? Impal_magic_enum_2 : Impal_magic_enum_0;
                mEventIdx = -1;

                setAction(&daNpcImpal_c::wait);
            }
        } else {
            setAction(&daNpcImpal_c::wait);
        }
    }
    case 3:
        break;
    }

    return true;
}

/* 80A0A1E0-80A0A680 0028E0 04A0+00 1/0 0/0 0/0 .text EvCut_ImpalAppear1__12daNpcImpal_cFi */
BOOL daNpcImpal_c::EvCut_ImpalAppear1(int i_cut_index) {
    int* cut_name = (int*)dComIfGp_getEventManager().getMyNowCutName(i_cut_index);

    if (dComIfGp_evmng_getIsAddvance(i_cut_index)) {
        switch (*cut_name) {
        case '0001':
            field_0xde9 = 1;
            break;
        case '0013':
            setMotion(MOT_5, -1.0f, false);
            break;
        case '0014':
            field_0xde9 = 0;
            break;
        case '0002':
            old.pos.set(2360.0f, 99.9930648803711f, -1150.0f);
            current.pos.set(2360.0f, 99.9930648803711f, -1150.0f);
            setAngle(-0x8000);
            setMotion(MOT_0, 0.0f, false);
            field_0xde9 = 1;
            break;
        case '0003':
            setLookMode(LOOK_NONE);
            initTalk(mFlowID, NULL);
            break;
        case '0004':
            setLookMode(LOOK_PLAYER);
            break;
        case '0005':
            Z2GetAudioMgr()->bgmStreamPrepare(0x200005c);
            Z2GetAudioMgr()->bgmStreamPlay();
        case '0006':
        case '0007':
        case '0008':
        case '0009':
        case '0010':
        case '0011':
        case '0012':
            initTalk(mFlowID, NULL);
            break;
        }
    }

    s32 prev_msg_timer = mMsgTimer;
    int expression, motion;
    if (ctrlMsgAnm(expression, motion, this, 0)) {
        setExpression(expression, -1.0f);
        setMotion(motion, -1.0f, false);
    } else if (prev_msg_timer != 0 && mMsgTimer == 0) {
        setExpressionTalkAfter();
    }

    switch (*cut_name) {
    case '0001':
    case '0002':
    case '0004':
    case '0014':
        return TRUE;
    case '0003':
    case '0005':
    case '0006':
    case '0007':
    case '0008':
    case '0009':
    case '0010':
    case '0011':
    case '0012':
        if (talkProc(NULL, 1, NULL)) {
            int evt_id = 0;
            if (mFlow.getEventId(&evt_id) == 1) {
                mItemPartnerId =
                    fopAcM_createItemForPresentDemo(&current.pos, evt_id, 0, -1, -1, 0, 0);
                if (mItemPartnerId != 0xffffffff) {
                    s16 evt_idx =
                        dComIfGp_getEventManager().getEventIdx(this, "DEFAULT_GETITEM", 0xff);
                    dComIfGp_getEvent().reset(this);
                    fopAcM_orderChangeEventId(this, evt_idx, 1, -1);
                    field_0x9ec = 1;
                    mOrderEvtNo = 2;
                }
            }
            return TRUE;
        }
        break;
    case '0013':
        if (mMotionPhase > 0) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

/* 80A0A680-80A0A950 002D80 02D0+00 1/0 0/0 0/0 .text EvCut_ImpalAppear2__12daNpcImpal_cFi */
BOOL daNpcImpal_c::EvCut_ImpalAppear2(int i_cut_index) {
    int* cut_name = (int*)dComIfGp_getEventManager().getMyNowCutName(i_cut_index);

    if (dComIfGp_evmng_getIsAddvance(i_cut_index)) {
        switch (*cut_name) {
        case '0001':
        case '0002':
            initTalk(mFlowID, NULL);
            setLookMode(LOOK_PLAYER);
            break;
        case '0003':
            Z2GetAudioMgr()->bgmStreamStop(100);
            break;
        case '0004':
            current.pos.set(l_resetPos);
            old.pos = current.pos;
            break;
        }
    }

    s32 prev_msg_timer = mMsgTimer;
    int expression, motion;
    if (ctrlMsgAnm(expression, motion, this, 0)) {
        setExpression(expression, -1.0f);
        setMotion(motion, -1.0f, false);
    } else if (prev_msg_timer != 0 && mMsgTimer == 0) {
        setExpressionTalkAfter();
    }

    switch (*cut_name) {
    case '0001':
    case '0002':
        if (talkProc(NULL, 1, NULL)) {
            return TRUE;
        }
        break;
    case '0003':
    case '0004':
        return TRUE;
    }

    return FALSE;
}

/* 80A0A950-80A0AD40 003050 03F0+00 1/0 0/0 0/0 .text            EvCut_CopyRod__12daNpcImpal_cFi */
BOOL daNpcImpal_c::EvCut_CopyRod(int i_cut_index) {
    int* cut_name = (int*)dComIfGp_getEventManager().getMyNowCutName(i_cut_index);

    if (dComIfGp_evmng_getIsAddvance(i_cut_index)) {
        switch (*cut_name) {
        case '0000':
            break;
        case '0001':
            setAngle(home.angle.y);
            setLookMode(LOOK_RESET);
            initTalk(5, NULL);
            break;
        case '0002':
        case '0004':
            setAngle(home.angle.y);
            setLookMode(LOOK_PLAYER);
            initTalk(5, NULL);
            break;
        case '0003':
            int evt_id = 0;
            if (mFlow.getEventId(&evt_id) == 1) {
                mItemPartnerId =
                    fopAcM_createItemForPresentDemo(&current.pos, evt_id, 0, -1, -1, 0, 0);
                dComIfGp_event_setItemPartnerId(mItemPartnerId);
                mItemPartnerId = -1;
            }
            break;
        }
    }

    s32 prev_msg_timer = mMsgTimer;
    int expression, motion;
    if (ctrlMsgAnm(expression, motion, this, 0)) {
        setExpression(expression, -1.0f);
        setMotion(motion, -1.0f, false);
    } else if (prev_msg_timer != 0 && mMsgTimer == 0) {
        setExpressionTalkAfter();
    }

    switch (*cut_name) {
    case '0001': {
        if (talkProc(NULL, 1, NULL)) {
            return TRUE;
        }
        cXyz acStack_40(0.0f, 0.0f, 150.0f);
        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::YrotM(home.angle.y);
        mDoMtx_stack_c::multVec(&acStack_40, &acStack_40);
        cXyz cStack_4c = acStack_40;
        cStack_4c.y += 500.0f;
        if (fopAcM_gc_c::gndCheck(&cStack_4c)) {
            acStack_40.y = fopAcM_gc_c::getGroundY();
        }

        s16 angle = cLib_targetAngleY(&acStack_40, &current.pos);
        daPy_getPlayerActorClass()->setPlayerPosAndAngle(&acStack_40, angle, 0);
        break;
    }
    case '0002':
    case '0004':
        if (talkProc(NULL, 1, NULL)) {
            return TRUE;
        }
        break;
    case '0003':
        return TRUE;
    }

    return FALSE;
}

/* 80A0AD40-80A0AD60 003440 0020+00 1/0 0/0 0/0 .text            daNpcImpal_Create__FPv */
static int daNpcImpal_Create(void* i_this) {
    return static_cast<daNpcImpal_c*>(i_this)->Create();
}

/* 80A0AD60-80A0AD80 003460 0020+00 1/0 0/0 0/0 .text            daNpcImpal_Delete__FPv */
static int daNpcImpal_Delete(void* i_this) {
    return static_cast<daNpcImpal_c*>(i_this)->Delete();
}

/* 80A0AD80-80A0ADA0 003480 0020+00 1/0 0/0 0/0 .text            daNpcImpal_Execute__FPv */
static int daNpcImpal_Execute(void* i_this) {
    return static_cast<daNpcImpal_c*>(i_this)->Execute();
}

/* 80A0ADA0-80A0ADC0 0034A0 0020+00 1/0 0/0 0/0 .text            daNpcImpal_Draw__FPv */
static int daNpcImpal_Draw(void* i_this) {
    return static_cast<daNpcImpal_c*>(i_this)->Draw();
}

/* 80A0ADC0-80A0ADC8 0034C0 0008+00 1/0 0/0 0/0 .text            daNpcImpal_IsDelete__FPv */
static int daNpcImpal_IsDelete(void* i_this) {
    return 1;
}

/* 80A0ADF8-80A0AEA8 0034F8 00B0+00 1/0 0/0 0/0 .text            setParam__12daNpcImpal_cFv */
void daNpcImpal_c::setParam() {
    attention_info.distances[0] =
        getDistTableIdx(mpHIO->m.common.attention_distance, mpHIO->m.common.attention_angle);
    attention_info.distances[1] = attention_info.distances[0];
    attention_info.distances[3] =
        getDistTableIdx(mpHIO->m.common.talk_distance, mpHIO->m.common.talk_angle);

    if (field_0xde9) {
        attention_info.flags = fopAc_AttnFlag_SPEAK_e | fopAc_AttnFlag_TALK_e;
    } else {
        attention_info.flags = 0;
    }

    mAcchCir.SetWallR(mpHIO->m.common.width);
    mAcchCir.SetWallH(mpHIO->m.common.knee_length);

    gravity = mpHIO->m.common.gravity;
}

/* 80A0AEA8-80A0B380 0035A8 04D8+00 1/0 0/0 0/0 .text            main__12daNpcImpal_cFv */
BOOL daNpcImpal_c::main() {
    if (mpActionFn != NULL) {
        (this->*mpActionFn)(NULL);
    }

    if (mItemPartnerId != -1 && dComIfGp_event_runCheck() != 0 &&
        !strcmp(dComIfGp_getEventManager().getRunEventName(), "DEFAULT_GETITEM"))
    {
        dComIfGp_event_setItemPartnerId(mItemPartnerId);
        mItemPartnerId = -1;
    }

    playExpression();
    playMotion();

    return TRUE;
}

/* 80A0B380-80A0B45C 003A80 00DC+00 1/0 0/0 0/0 .text            ctrlBtk__12daNpcImpal_cFv */
BOOL daNpcImpal_c::ctrlBtk() {
    if (mpMatAnm != NULL) {
        J3DAnmTextureSRTKey* btkAnm = NULL;
        btkAnm =
            getTexSRTKeyAnmP(l_arcNames[l_btkGetParamList[0].arcIdx], l_btkGetParamList[0].fileIdx);

        if (btkAnm == mBtkAnm.getBtkAnm()) {
            mpMatAnm->setNowOffsetX(cM_ssin(mEyeAngle.y) * 0.2f * -1.0f);
            mpMatAnm->setNowOffsetY(cM_ssin(mEyeAngle.x) * 0.2f);
            mpMatAnm->onEyeMoveFlag();
            return TRUE;
        }
        mpMatAnm->offEyeMoveFlag();
    }

    return FALSE;
}

/* 80A0B45C-80A0B76C 003B5C 0310+00 1/0 0/0 0/0 .text            setAttnPos__12daNpcImpal_cFv */
void daNpcImpal_c::setAttnPos() {
    if (mLookMode == 1) {
        for (int i = 0; i < 3; i++) {
            mLookatAngle[i].setall(0);
        }
    }

    daNpcF_c::setMtx();
    lookat();

    cXyz local_1c(10.0f, 10.0f, 0.0f);
    mDoMtx_stack_c::copy(mAnm_p->getModel()->getAnmMtx(4));
    mDoMtx_stack_c::multVecZero(&mHeadPos);
    mDoMtx_stack_c::multVec(&local_1c, &eyePos);
    local_1c.x = 0.0f;
    mDoMtx_stack_c::multVec(&local_1c, &local_1c);
    mHeadAngle.x = cLib_targetAngleX(&mHeadPos, &local_1c);
    mHeadAngle.y = cLib_targetAngleY(&mHeadPos, &local_1c);

    cXyz* attnPos = mLookat.getAttnPos();

    if (attnPos != NULL) {
        cXyz local_48 = *attnPos - eyePos;
        mEyeAngle.y = -(mLookatAngle[2].y + mCurAngle.y);
        mEyeAngle.y += cM_atan2s(local_48.x, local_48.z);
        mEyeAngle.x = mHeadAngle.x - cM_atan2s(local_48.y, local_48.absXZ());
    } else {
        mEyeAngle.y = 0;
        mEyeAngle.x = 0;
    }

    attention_info.position.set(current.pos.x, current.pos.y + mpHIO->m.common.attention_offset,
                                current.pos.z);

    if (field_0xde9) {
        mCyl.SetC(current.pos);
        mCyl.SetH(mpHIO->m.common.height);
        mCyl.SetR(mpHIO->m.common.width);
        dComIfG_Ccsp()->Set(&mCyl);
    }
}

/* 80A0B94C-80A0B954 00404C 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__12daNpcImpal_cFv */
BOOL daNpcImpal_c::drawDbgInfo() {
    return FALSE;
}

/* 80A0C7B8-80A0C7D8 -00001 0020+00 1/0 0/0 0/0 .data            daNpcImpal_MethodTable */
static actor_method_class daNpcImpal_MethodTable = {
    (process_method_func)daNpcImpal_Create,  (process_method_func)daNpcImpal_Delete,
    (process_method_func)daNpcImpal_Execute, (process_method_func)daNpcImpal_IsDelete,
    (process_method_func)daNpcImpal_Draw,
};

/* 80A0C7D8-80A0C808 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_IMPAL */
extern actor_process_profile_definition g_profile_NPC_IMPAL = {
    fpcLy_CURRENT_e,          // mLayerID
    7,                        // mListID
    fpcPi_CURRENT_e,          // mListPrio
    PROC_NPC_IMPAL,           // mProcName
    &g_fpcLf_Method.base,     // sub_method
    sizeof(daNpcImpal_c),     // mSize
    0,                        // mSizeOther
    0,                        // mParameters
    &g_fopAc_Method.base,     // sub_method
    416,                      // mPriority
    &daNpcImpal_MethodTable,  // sub_method
    0x00040100,               // mStatus
    fopAc_NPC_e,              // mActorType
    fopAc_CULLBOX_CUSTOM_e,   // cullType
};
