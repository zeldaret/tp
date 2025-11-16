/**
 * @file d_a_npc_clerkt.cpp
 *
 */

#include "d/dolzel_rel.h"  // IWYU pragma: keep

#include "d/actor/d_a_npc_clerkt.h"
#include "d/d_msg_object.h"

/* 8099D244-8099D2D0 000000 008C+00 8/8 0/0 0/0 .rodata          m__19daNpcClerkt_Param_c */
const daNpcClerkt_HIOParam daNpcClerkt_Param_c::m = {
    120.0f,  // attention_offset
    -3.0f,   // gravity
    1.0f,    // scale
    300.0f,  // real_shadow_size
    255.0f,  // weight
    200.0f,  // height
    35.0f,   // knee_length
    20.0f,   // width
    0.0f,    // body_angleX_max
    0.0f,    // body_angleX_min
    30.0f,   // body_angleY_max
    -30.0f,  // body_angleY_min
    30.0f,   // head_angleX_max
    -10.0f,  // head_angleX_min
    45.0f,   // head_angleY_max
    -45.0f,  // head_angleY_min
    0.6f,    // neck_rotation_ratio
    12.0f,   // morf_frame
    7,       // talk_distance
    6,       // talk_angle
    8,       // attention_distance
    6,       // attention_angle
    110.0f,  // fov
    0.0f,    // search_distance
    0.0f,    // search_height
    0.0f,    // search_depth
    60,      // attention_time
    8,       // damage_time
    0,       // face_expression
    0,       // motion
    0,       // look_mode
    0,       // debug_mode_ON
    0,       // debug_info_ON
    4.0f,    // expression_morf_frame
    -20.0f,  // box_min_x
    0.0f,    // box_min_y
    -20.0f,  // box_min_z
    20.0f,   // box_max_x
    40.0f,   // box_max_y
    20.0f,   // box_max_z
    110.0f,  // box_offset
};

#if DEBUG
daNpcClerkt_HIO_c::daNpcClerkt_HIO_c() {
    m = daNpcClerkt_Param_c::m;
}

void daNpcClerkt_HIO_c::listenPropertyEvent(const JORPropertyEvent* event) {
    // TODO
}

void daNpcClerkt_HIO_c::genMessage(JORMContext* ctext) {
    // TODO
}
#endif

/* 8099D378-8099D380 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
static int l_bmdData[1][2] = {
    {12, 1},
};

/* 8099D380-8099D390 -00001 0010+00 0/1 0/0 0/0 .data            l_evtList */
static daNpcT_evtData_c l_evtList[2] = {
    {"", 0},
    {"DEFAULT_GETITEM", 0},
};

/* 8099D390-8099D398 -00001 0008+00 2/3 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[2] = {
    "",
    "Tkj",
};

/* 8099D398-8099D39C 000040 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
static s8 l_loadResPtrn0[2] = {1, -1};

/* 8099D39C-8099D3A4 -00001 0008+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
static s8* l_loadResPtrnList[2] = {
    l_loadResPtrn0,
    l_loadResPtrn0,
};

/* 8099D3A4-8099D3DC 00004C 0038+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
static daNpcT_faceMotionAnmData_c l_faceMotionAnmData[2] = {
    {-1, 0, 0, 18, 2, 1, 1},
    {6, 0, 1, 18, 2, 1, 1},
};

/* 8099D3DC-8099D3F8 000084 001C+00 0/1 0/0 0/0 .data            l_motionAnmData */
static daNpcT_motionAnmData_c l_motionAnmData[1] = {
    {9, 2, 1, 15, 0, 1, 1, 0},
};

/* 8099D3F8-8099D418 0000A0 0020+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[8] = {
    {1, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 8099D418-8099D428 0000C0 0010+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[4] = {
    {0, -1, 0},
    {-1, 0, 0},
    {-1, 0, 0},
    {-1, 0, 0},
};

/* 8099D428-8099D42C -00001 0004+00 1/1 0/0 0/0 .data            mCutNameList__13daNpcClerkT_c */
char* daNpcClerkT_c::mCutNameList[1] = {""};

/* 8099D42C-8099D438 0000D4 000C+00 2/2 0/0 0/0 .data            mCutList__13daNpcClerkT_c */
daNpcClerkT_c::cutFunc daNpcClerkT_c::mCutList[1] = {NULL};

/* 8099A14C-8099A28C 0000EC 0140+00 1/0 0/0 0/0 .text            __dt__13daNpcClerkT_cFv */
daNpcClerkT_c::~daNpcClerkT_c() {
    deleteObject();

    if (heap != NULL) {
        mpMorf[0]->stopZelAnime();
    }

    deleteRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
}

/* 8099A28C-8099A530 00022C 02A4+00 1/1 0/0 0/0 .text            create__13daNpcClerkT_cFv */
int daNpcClerkT_c::create() {
    daNpcT_ct(this, daNpcClerkT_c, l_faceMotionAnmData, l_motionAnmData, l_faceMotionSequenceData,
              4, l_motionSequenceData, 4, l_evtList, l_resNameList);

    mType = TYPE_SHOP;
    mFlowNodeNo = getFlowNodeNo();
    mTwilight = dKy_darkworld_check();

    int phase = loadRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x2FE0)) {
            return cPhs_ERROR_e;
        }

        if (isDelete()) {
            return cPhs_ERROR_e;
        }

        J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
        fopAcM_SetMtx(this, mpMorf[0]->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -300.0f, -50.0f, -300.0f, 300.0f, 450.0f, 300.0f);
        mSound.init(&current.pos, &eyePos, 3, 1);

        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                  fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mCcStts.Init(mpHIO->m.common.weight, 0, this);
        mCyl.Set(mCcDCyl);
        mCyl.SetStts(&mCcStts);
        mCyl.SetTgHitCallback(tgHitCallBack);
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();

        if (mGroundH != -G_CM3D_F_INF) {
            setEnvTevColor();
            setRoomNo();
        }

        reset();
        mCreating = true;
        Execute();
        mCreating = false;
    }
    return phase;
}

/* 8099A530-8099A7B0 0004D0 0280+00 1/1 0/0 0/0 .text            CreateHeap__13daNpcClerkT_cFv */
int daNpcClerkT_c::CreateHeap() {
    int res_idx = l_bmdData[0][1];
    int bmd_idx = l_bmdData[0][0];
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_resNameList[res_idx], bmd_idx);

    mpMorf[0] =
        new mDoExt_McaMorfSO(modelData, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, 0, 0x11020284);
    if (mpMorf[0] != NULL && mpMorf[0]->getModel() == NULL) {
        mpMorf[0]->stopZelAnime();
        mpMorf[0] = NULL;
    }
    if (mpMorf[0] == NULL) {
        return 0;
    }

    J3DModel* model = mpMorf[0]->getModel();
    for (u16 i = 0; i < modelData->getJointNum(); i++) {
        modelData->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }
    model->setUserArea((uintptr_t)this);

    mpMatAnm[0] = new daNpcT_MatAnm_c();
    if (mpMatAnm[0] == NULL) {
        return 0;
    }

    if (setFaceMotionAnm(1, false) && setMotionAnm(0, 0.0f, FALSE)) {
        return 1;
    }

    return 0;
}

/* 8099A96C-8099A9A0 00090C 0034+00 1/1 0/0 0/0 .text            Delete__13daNpcClerkT_cFv */
int daNpcClerkT_c::Delete() {
    fpc_ProcID id = fopAcM_GetID(this);
    this->~daNpcClerkT_c();
    return 1;
}

/* 8099A9A0-8099AA80 000940 00E0+00 2/2 0/0 0/0 .text            Execute__13daNpcClerkT_cFv */
int daNpcClerkT_c::Execute() {
    if (!mCreating && !checkShopOpen() && mType == TYPE_SHOP && mShopFlag == 0) {
        initShopSystem();
        setSellItemMax(getMaxNumItem());
        field_0xf60 = -1;
        setMasterType(8);
        mShopCamAction.setCamDataIdx(0);
        mShopCamAction.setCamAction(NULL);
        mShopFlag = 1;
    }

    execute();

    if (mShopFlag != 0 && searchItemActor()) {
        mShopCamAction.move();
    }
    return 1;
}

/* 8099AA80-8099AB14 000A20 0094+00 1/1 0/0 0/0 .text            Draw__13daNpcClerkT_cFv */
int daNpcClerkT_c::Draw() {
    if (mpMatAnm[0] != NULL) {
        J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
        modelData->getMaterialNodePointer(getEyeballMaterialNo())->setMaterialAnm(mpMatAnm[0]);
    }
    return draw(FALSE, FALSE, mRealShadowSize, NULL, 100.0f, FALSE, FALSE, FALSE);
}

/* 8099AB14-8099AB34 000AB4 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__13daNpcClerkT_cFP10fopAc_ac_c            */
int daNpcClerkT_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return ((daNpcClerkT_c*)i_this)->CreateHeap();
}

/* 8099AB34-8099AB8C 000AD4 0058+00 2/2 0/0 0/0 .text
 * ctrlJointCallBack__13daNpcClerkT_cFP8J3DJointi               */
int daNpcClerkT_c::ctrlJointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpcClerkT_c* i_this = (daNpcClerkT_c*)model->getUserArea();
        if (i_this != NULL) {
            i_this->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

/* 8099AB8C-8099ABBC 000B2C 0030+00 1/1 0/0 0/0 .text            isDelete__13daNpcClerkT_cFv */
int daNpcClerkT_c::isDelete() {
    if (mType == TYPE_1) {
        return 0;
    }
    switch (mType) {
    case TYPE_SHOP:
        return 0;
    }
    return 1;
}

/* 8099ABBC-8099ACF0 000B5C 0134+00 1/1 0/0 0/0 .text            reset__13daNpcClerkT_cFv */
void daNpcClerkT_c::reset() {
    initialize();

    int size = (u8*)&field_0x10ec - (u8*)&mNextAction;

    memset(&mNextAction, 0, size);

    if (mpMatAnm[0] != NULL) {
        mpMatAnm[0]->initialize();
    }

    for (int i = 0; i < 1; i++) {
        mActorMngr[i].initialize();
    }

    setAngle(home.angle.y);
}

/* 8099ACF0-8099AD74 000C90 0084+00 1/0 0/0 0/0 .text            afterJntAnm__13daNpcClerkT_cFi */
void daNpcClerkT_c::afterJntAnm(int param_1) {
    if (param_1 == 15) {
        mDoMtx_stack_c::YrotM(mStagger.getAngleZ(1));
        mDoMtx_stack_c::ZrotM(-mStagger.getAngleX(1));
    } else if (param_1 == 17) {
        mDoMtx_stack_c::YrotM(mStagger.getAngleZ(0));
        mDoMtx_stack_c::ZrotM(mStagger.getAngleX(0));
    }
}

/* 8099AD74-8099AF18 000D14 01A4+00 1/0 0/0 0/0 .text            evtTalk__13daNpcClerkT_cFv */
BOOL daNpcClerkT_c::evtTalk() {
    if (mShopFlag) {
        if (chkAction(&daNpcClerkT_c::shop)) {
            (this->*mAction)(NULL);
        } else if (dComIfGp_event_chkTalkXY() == 0 || dComIfGp_evmng_ChkPresentEnd()) {
            mShopCamAction.shop_cam_action_init();
            setAction(&daNpcClerkT_c::shop);
        }
    } else if (chkAction(&daNpcClerkT_c::talk)) {
        (this->*mAction)(NULL);
    } else if (dComIfGp_event_chkTalkXY() == 0 || dComIfGp_evmng_ChkPresentEnd()) {
        setAction(&daNpcClerkT_c::talk);
    }

    return TRUE;
}

/* 8099AF18-8099AFE0 000EB8 00C8+00 1/0 0/0 0/0 .text            evtCutProc__13daNpcClerkT_cFv */
BOOL daNpcClerkT_c::evtCutProc() {
    BOOL rv = FALSE;

    s32 staffId = dComIfGp_getEventManager().getMyStaffId("clerkt", this, -1);
    if (staffId != -1) {
        mStaffId = staffId;
        int actIdx =
            dComIfGp_getEventManager().getMyActIdx(mStaffId, mCutNameList, 1, FALSE, FALSE);
        if ((this->*mCutList[actIdx])(mStaffId)) {
            dComIfGp_getEventManager().cutEnd(mStaffId);
        }

        rv = TRUE;
    }

    return rv;
}

/* 8099AFE0-8099B0CC 000F80 00EC+00 1/0 0/0 0/0 .text            action__13daNpcClerkT_cFv */
void daNpcClerkT_c::action() {
    if (mStagger.checkRebirth()) {
        mStagger.initialize();
        mMode = MODE_INIT;
    }

    if (mNextAction) {
        if (mAction == mNextAction) {
            (this->*mAction)(NULL);
        } else {
            setAction(mNextAction);
        }
    }
}

/* 8099B0CC-8099B0D4 00106C 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__13daNpcClerkT_cFv */
int daNpcClerkT_c::drawDbgInfo() {
    return 0;
}

/* 8099B0D4-8099B134 001074 0060+00 1/0 0/0 0/0 .text            drawOtherMdl__13daNpcClerkT_cFv */
void daNpcClerkT_c::drawOtherMdl() {
    if (mShopFlag) {
        cXyz pos;
        itemRotate();
        pos.set(0.0f, 0.0f, 0.0f);
        itemZoom(&pos);
        drawCursor();
    }
}

/* 8099B134-8099B1B0 0010D4 007C+00 1/1 0/0 0/0 .text            selectAction__13daNpcClerkT_cFv */
int daNpcClerkT_c::selectAction() {
    mNextAction = NULL;

    switch (mType) {
    case TYPE_SHOP:
        mNextAction = &daNpcClerkT_c::tend;
        break;
    default:
        mNextAction = &daNpcClerkT_c::wait;
        break;
    }

    return TRUE;
}

/* 8099B1B0-8099B1DC 001150 002C+00 1/1 0/0 0/0 .text
 * chkAction__13daNpcClerkT_cFM13daNpcClerkT_cFPCvPvPv_i        */
int daNpcClerkT_c::chkAction(actionFunc action) {
    return mAction == action;
}

/* 8099B1DC-8099B284 00117C 00A8+00 2/2 0/0 0/0 .text
 * setAction__13daNpcClerkT_cFM13daNpcClerkT_cFPCvPvPv_i        */
int daNpcClerkT_c::setAction(actionFunc action) {
    mMode = MODE_EXIT;
    if (mAction != NULL) {
        (this->*(mAction))(NULL);
    }

    mMode = MODE_ENTER;
    mAction = action;
    if (mAction != NULL) {
        (this->*(mAction))(NULL);
    }

    return 1;
}

/* 8099B284-8099B4DC 001224 0258+00 1/0 0/0 0/0 .text            wait__13daNpcClerkT_cFPv */
int daNpcClerkT_c::wait(void* param_0) {
    switch (mMode) {
    case MODE_ENTER:
    case MODE_INIT:
        if (!mStagger.checkStagger()) {
            mFaceMotionSeqMngr.setNo(FACE_MOT_UNK_1, -1.0f, FALSE, 0);
            mMotionSeqMngr.setNo(MOT_UNK_0, -1.0f, FALSE, 0);
            mMode = MODE_RUN;
        }
    case MODE_RUN:
        if (!mStagger.checkStagger()) {
            if (mPlayerActorMngr.getActorP()) {
                mJntAnm.lookNone(0);
                if (chkActorInSight(mPlayerActorMngr.getActorP(), mAttnFovY, mCurAngle.y)) {
                    mJntAnm.lookPlayer(0);
                }
                if (!srchPlayerActor() && home.angle.y == mCurAngle.y) {
                    mMode = MODE_INIT;
                }
            } else {
                mJntAnm.lookNone(0);
                if (home.angle.y != mCurAngle.y) {
                    if (field_0xe34 == 0) {
                        setAngle(home.angle.y);
                        mMode = MODE_INIT;
                    } else if (step(home.angle.y, 1, 0, 15, 0)) {
                        mMode = MODE_INIT;
                    }
                    attention_info.flags = 0;
                } else if (!mTwilight) {
                    srchPlayerActor();
                }
            }
        }
        break;
    case MODE_EXIT:
        break;
    }

    return 1;
}

/* 8099B4DC-8099B60C 00147C 0130+00 1/0 0/0 0/0 .text            tend__13daNpcClerkT_cFPv */
int daNpcClerkT_c::tend(void* param_0) {
    switch (mMode) {
    case MODE_ENTER:
    case MODE_INIT:
        if (!mStagger.checkStagger()) {
            mFaceMotionSeqMngr.setNo(FACE_MOT_UNK_1, -1.0f, FALSE, 0);
            mMotionSeqMngr.setNo(MOT_UNK_0, -1.0f, FALSE, 0);
            mMode = MODE_RUN;
        }
    case MODE_RUN:
        if (mShopFlag != 0 && mShopProcess == 2) {
            mSpeakEvent = true;
            field_0xe33 = true;
        }
        if (!mStagger.checkStagger()) {
            mJntAnm.lookNone(0);
        }
        break;
    case MODE_EXIT:
        break;
    }

    return 1;
}

/* 8099B60C-8099B804 0015AC 01F8+00 2/0 0/0 0/0 .text            talk__13daNpcClerkT_cFPv */
int daNpcClerkT_c::talk(void* param_0) {
    switch (mMode) {
    case MODE_ENTER:
    case MODE_INIT:
        if (!mStagger.checkStagger()) {
            initTalk(mFlowNodeNo, NULL);
            if (checkStep()) {
                mStepMode = 0;
            }
            mMode = MODE_RUN;
        }
    case MODE_RUN:
        if (!mStagger.checkStagger()) {
            if (mTwilight || mCurAngle.y == fopAcM_searchPlayerAngleY(this)) {
                if (talkProc(NULL, FALSE, NULL, FALSE)) {
                    mPlayerActorMngr.entry(daPy_getPlayerActorClass());
                    dComIfGp_event_reset();
                    mMode = MODE_EXIT;
                }
                mJntAnm.lookPlayer(0);
                if (mTwilight) {
                    mJntAnm.lookNone(0);
                }
            } else {
                mJntAnm.lookPlayer(0);
                step(fopAcM_searchPlayerAngleY(this), 1, 0, 15, 0);
            }
        }
        break;
    case MODE_EXIT:
        break;
    }

    return 0;
}

/* 8099B804-8099BBE8 0017A4 03E4+00 2/0 0/0 0/0 .text            shop__13daNpcClerkT_cFPv */
int daNpcClerkT_c::shop(void* param_0) {
    cXyz cam_ctr_pos;
    cXyz cStack_3c;

    fopAcM_searchPlayerAngleY(this);

    switch (mMode) {
    case MODE_ENTER:
    case MODE_INIT:
        if (!mStagger.checkStagger()) {
            if (mShopProcess == 2) {
                shop_init(true);
            } else {
                mShopCamAction.Save();
                initTalk(mFlowNodeNo, NULL);
                shop_init(false);
                field_0x10e4 = 1;
                field_0xe26 = false;
            }

            mJntAnm.lookNone(1);
            if (checkStep()) {
                mStepMode = 0;
            }
            mMode = MODE_RUN;
        }
    case MODE_RUN:
        if (!mStagger.checkStagger()) {
            if (mCurAngle.y == fopAcM_searchPlayerAngleY(this)) {
                mShopProcess = shop_process(this, &mFlow);
                if (mShopProcess != 0) {
                    mPlayerActorMngr.entry(daPy_getPlayerActorClass());
                    dComIfGp_event_reset();
                    mMode = MODE_EXIT;
                    field_0x10e9 = 1;
                }
            } else {
                step(fopAcM_searchPlayerAngleY(this), 1, 0, 15, 0);
            }
            if (chkExplainItem() && getCursorPos()) {
                field_0xd6c = mItemCtrl.getCurrentPos(getCursorPos() - 1);
                cStack_3c.set(0.0f, 0.0f, 60.0f);
                mDoMtx_stack_c::transS(field_0xd6c);
                mDoMtx_stack_c::YrotM(mCurAngle.y);
                mDoMtx_stack_c::multVec(&cStack_3c, &field_0xd6c);
                mJntAnm.lookPos(&field_0xd6c, 0);
            } else {
                u16 status = dMsgObject_c::getStatus();
                if (field_0x10e4 != 0) {
                    mJntAnm.lookNone(0);
                    if (dMsgObject_isMouthCheck() || status == 15 || status == 16) {
                        field_0x10e4 = 0;
                        field_0xe26 = true;
                    }
                } else {
                    mJntAnm.lookCamera(0);
                }
            }
        }

        cam_ctr_pos.set(0.0f, 100.0f, 0.0f);
        mDoMtx_stack_c::YrotS(home.angle.y);
        mDoMtx_stack_c::multVec(&cam_ctr_pos, &cam_ctr_pos);
        cam_ctr_pos += current.pos;
        mShopCamAction.setMasterCamCtrPos(&cam_ctr_pos);
        break;
    case MODE_EXIT:
        break;
    }

    return 0;
}

/* 8099BBE8-8099BC08 001B88 0020+00 1/0 0/0 0/0 .text            daNpcClerkt_Create__FPv */
static int daNpcClerkt_Create(void* i_this) {
    return static_cast<daNpcClerkT_c*>(i_this)->create();
}

/* 8099BC08-8099BC28 001BA8 0020+00 1/0 0/0 0/0 .text            daNpcClerkt_Delete__FPv */
static int daNpcClerkt_Delete(void* i_this) {
    return static_cast<daNpcClerkT_c*>(i_this)->Delete();
}

/* 8099BC28-8099BC48 001BC8 0020+00 1/0 0/0 0/0 .text            daNpcClerkt_Execute__FPv */
static int daNpcClerkt_Execute(void* i_this) {
    return static_cast<daNpcClerkT_c*>(i_this)->Execute();
}

/* 8099BC48-8099BC68 001BE8 0020+00 1/0 0/0 0/0 .text            daNpcClerkt_Draw__FPv */
static int daNpcClerkt_Draw(void* i_this) {
    return static_cast<daNpcClerkT_c*>(i_this)->Draw();
}

/* 8099BC68-8099BC70 001C08 0008+00 1/0 0/0 0/0 .text            daNpcClerkt_IsDelete__FPv */
static int daNpcClerkt_IsDelete(void* i_this) {
    return 1;
}

/* 8099BCE8-8099BE48 001C88 0160+00 1/0 0/0 0/0 .text            setParam__13daNpcClerkT_cFv */
void daNpcClerkT_c::setParam() {
    if (field_0x10e9 != 0) {
        if (mShopProcess == 2) {
            mShopCamAction.Reset();
        } else {
            mShopCamAction.EventRecoverNotime();
        }
        field_0x10e9 = 0;
    }
    selectAction();
    srchActors();

    u32 flags = fopAc_AttnFlag_SPEAK_e | fopAc_AttnFlag_TALK_e;
    s16 talk_distance = mpHIO->m.common.talk_distance;
    s16 talk_angle = mpHIO->m.common.talk_angle;
    s16 attention_distance = mpHIO->m.common.attention_distance;
    s16 attention_angle = mpHIO->m.common.attention_angle;

    attention_info.distances[fopAc_attn_LOCK_e] =
        daNpcT_getDistTableIdx(attention_distance, attention_angle);
    attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
    attention_info.distances[fopAc_attn_SPEAK_e] =
        daNpcT_getDistTableIdx(talk_distance, talk_angle);
    attention_info.flags = flags;

    scale.set(mpHIO->m.common.scale, mpHIO->m.common.scale, mpHIO->m.common.scale);
    mCcStts.SetWeight(mpHIO->m.common.weight);
    mCylH = mpHIO->m.common.height;
    mWallR = mpHIO->m.common.width;
    mAttnFovY = mpHIO->m.common.fov;
    mAcchCir.SetWallR(mWallR);
    mAcchCir.SetWallH(mpHIO->m.common.knee_length);
    mRealShadowSize = mpHIO->m.common.real_shadow_size;
    gravity = mpHIO->m.common.gravity;
    mExpressionMorfFrame = mpHIO->m.common.expression_morf_frame;
    mMorfFrames = mpHIO->m.common.morf_frame;
}

/* 8099BE48-8099BEA8 001DE8 0060+00 1/0 0/0 0/0 .text setAfterTalkMotion__13daNpcClerkT_cFv */
void daNpcClerkT_c::setAfterTalkMotion() {
    mFaceMotionSeqMngr.setNo(FACE_MOT_UNK_1, -1.0f, FALSE, 0);
}

/* 8099BEA8-8099BF20 001E48 0078+00 1/0 0/0 0/0 .text            beforeMove__13daNpcClerkT_cFv */
void daNpcClerkT_c::beforeMove() {
    if (checkHide() || mNoDraw) {
        attention_info.flags = 0;
    }
}

/* 8099BF20-8099C1A0 001EC0 0280+00 1/0 0/0 0/0 .text            setAttnPos__13daNpcClerkT_cFv */
void daNpcClerkT_c::setAttnPos() {
    cXyz cStack_3c(10.0f, -15.0f, 0.0f);
    cXyz cStack_48(0.0f, 15.0f, 0.0f);

    mStagger.calc(FALSE);
    f32 rad = cM_s2rad((s16)(mCurAngle.y - field_0xd7e.y));

    mJntAnm.setParam(this, mpMorf[0]->getModel(), &cStack_3c, getBackboneJointNo(),
                     getNeckJointNo(), getHeadJointNo(), 0.0f, 0.0f, 0.0f, 0.0f,
                     mpHIO->m.common.head_angleX_min, mpHIO->m.common.head_angleX_max,
                     mpHIO->m.common.head_angleY_min, mpHIO->m.common.head_angleY_max,
                     mpHIO->m.common.neck_rotation_ratio, rad, &cStack_48);

    mJntAnm.calcJntRad(0.2f, 1.0f, rad);
    J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
    for (u16 i = 0; i < modelData->getJointNum(); i++) {
        modelData->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }
    setMtx();
    mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getHeadJointNo()));
    mDoMtx_stack_c::multVec(&cStack_3c, &eyePos);
    mJntAnm.setEyeAngleX(eyePos, 1.0f, 0);
    mJntAnm.setEyeAngleY(eyePos, mCurAngle.y, TRUE, 1.0f, 0);
    attention_info.position = current.pos;
    attention_info.position.y += mpHIO->m.common.attention_offset;
}

/* 8099C1A0-8099C2D4 002140 0134+00 1/0 0/0 0/0 .text            setCollision__13daNpcClerkT_cFv */
void daNpcClerkT_c::setCollision() {
    cXyz pos;
    u32 tgType = 0xD8FBFDFF;
    u32 tgSPrm = 0x1F;

    if (!mHide) {
        if (dComIfGp_event_runCheck()) {
            tgType = 0;
            tgSPrm = 0;
        } else {
            if (mTwilight) {
                tgType = 0;
                tgSPrm = 0;
            } else if (mStagger.checkStagger()) {
                tgType = 0;
                tgSPrm = 0;
            }
        }

        f32 cylH = mCylH;
        f32 wallR = mWallR;
        pos = current.pos;
        mCyl.SetCoSPrm(0x79);
        mCyl.SetTgType(tgType);
        mCyl.SetTgSPrm(tgSPrm);
        mCyl.OnTgNoHitMark();
        mCyl.SetH(cylH);
        mCyl.SetR(wallR);
        mCyl.SetC(pos);
        dComIfG_Ccsp()->Set(&mCyl);
    }

    mCyl.ClrCoHit();
    mCyl.ClrTgHit();
}

/* 8099D65C-8099D660 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
NPC_CLERKT_HIO_CLASS l_HIO;

/* 8099D480-8099D4A0 -00001 0020+00 1/0 0/0 0/0 .data            daNpcClerkt_MethodTable */
static actor_method_class daNpcClerkt_MethodTable = {
    (process_method_func)daNpcClerkt_Create,  (process_method_func)daNpcClerkt_Delete,
    (process_method_func)daNpcClerkt_Execute, (process_method_func)daNpcClerkt_IsDelete,
    (process_method_func)daNpcClerkt_Draw,
};

/* 8099D4A0-8099D4D0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_CLERKT */
extern actor_process_profile_definition g_profile_NPC_CLERKT = {
    fpcLy_CURRENT_e,           // mLayerID
    7,                         // mListID
    fpcPi_CURRENT_e,           // mListPrio
    PROC_NPC_CLERKT,           // mProcName
    &g_fpcLf_Method.base,      // sub_method
    sizeof(daNpcClerkT_c),     // mSize
    0,                         // mSizeOther
    0,                         // mParameters
    &g_fopAc_Method.base,      // sub_method
    328,                       // mPriority
    &daNpcClerkt_MethodTable,  // sub_method
    0x08044107,                // mStatus
    fopAc_NPC_e,               // mActorType
    fopAc_CULLBOX_CUSTOM_e,    // cullType
};
