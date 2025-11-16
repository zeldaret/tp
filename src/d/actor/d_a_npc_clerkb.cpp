/**
 * @file d_a_npc_clerkb.cpp
 *
 */

#include "d/dolzel_rel.h"  // IWYU pragma: keep

#include "d/actor/d_a_npc_clerkb.h"
#include "d/d_msg_object.h"

/* 80999978-80999A0C 000000 0094+00 10/10 0/0 0/0 .rodata          m__20daNpc_clerkB_Param_c */
const daNpc_clerkB_HIOParam daNpc_clerkB_Param_c::m = {
    220.0f,  // attention_offset
    -3.0f,   // gravity
    1.0f,    // scale
    500.0f,  // real_shadow_size
    255.0f,  // weight
    200.0f,  // height
    35.0f,   // knee_length
    30.0f,   // width
    0.0f,    // body_angleX_max
    0.0f,    // body_angleX_min
    10.0f,   // body_angleY_max
    -10.0f,  // body_angleY_min
    30.0f,   // head_angleX_max
    -10.0f,  // head_angleX_min
    45.0f,   // head_angleY_max
    -45.0f,  // head_angleY_min
    0.6f,    // neck_rotation_ratio
    12.0f,   // morf_frame
    3,       // talk_distance
    6,       // talk_angle
    5,       // attention_distance
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
    170.0f,  // field_0x8c
    0x001E,  // field_0x90
    0,       // field_0x92
};

#if DEBUG
daNpc_clerkB_HIO_c::daNpc_clerkB_HIO_c() {
    m = daNpc_clerkB_Param_c::m;
}

void daNpc_clerkB_HIO_c::listenPropertyEvent(const JORPropertyEvent* event) {
    // TODO
}

void daNpc_clerkB_HIO_c::genMessage(JORMContext* ctext) {
    // TODO
}
#endif

/* 80999AD0-80999AD8 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
static int l_bmdData[1][2] = {
    {26, 1},
};

/* 80999AD8-80999AF0 -00001 0018+00 0/1 0/0 0/0 .data            l_evtList */
static daNpcT_evtData_c l_evtList[3] = {
    {"", 0},
    {"DEFAULT_GETITEM", 0},
    {"NO_RESPONSE", 0},
};

/* 80999AF0-80999AF8 -00001 0008+00 3/4 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[2] = {
    "",
    "clerkB",
};

/* 80999AF8-80999AFC 000048 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
static s8 l_loadResPtrn0[2] = {1, -1};

/* 80999AFC-80999B04 -00001 0008+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
static s8* l_loadResPtrnList[2] = {
    l_loadResPtrn0,
    l_loadResPtrn0,
};

/* 80999B04-80999C00 000054 00FC+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
static daNpcT_faceMotionAnmData_c l_faceMotionAnmData[9] = {
    {-1, 0, 0, 35, 2, 1, 1}, {12, 0, 1, 40, 0, 1, 0}, {8, 0, 1, 36, 0, 1, 0},
    {10, 0, 1, 38, 0, 1, 0}, {11, 0, 1, 39, 0, 1, 0}, {9, 0, 1, 37, 0, 1, 0},
    {14, 2, 1, 42, 2, 1, 0}, {15, 2, 1, 43, 2, 1, 0}, {13, 2, 1, 35, 2, 1, 1},
};

/* 80999C00-80999CFC 000150 00FC+00 1/2 0/0 0/0 .data            l_motionAnmData */
static daNpcT_motionAnmData_c l_motionAnmData[9] = {
    {23, 2, 1, 32, 0, 1, 1, 0}, {22, 2, 1, 32, 0, 1, 1, 0}, {20, 2, 1, 32, 0, 1, 1, 0},
    {7, 0, 1, 32, 0, 1, 1, 0},  {21, 0, 1, 32, 0, 1, 1, 0}, {17, 2, 1, 32, 0, 1, 1, 0},
    {16, 2, 1, 32, 0, 1, 1, 0}, {19, 0, 1, 32, 0, 1, 1, 0}, {18, 0, 1, 32, 0, 1, 1, 0},
};

/* 80999CFC-80999D8C 00024C 0090+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[36] = {
    {1, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {2, -1, 1}, {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {3, -1, 1}, {6, 0, 0},  {-1, 0, 0}, {-1, 0, 0}, {4, -1, 1}, {7, 0, 0},  {-1, 0, 0}, {-1, 0, 0},
    {5, -1, 1}, {8, 0, 0},  {-1, 0, 0}, {-1, 0, 0}, {6, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {7, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {8, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 80999D8C-80999E1C 0002DC 0090+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[36] = {
    {0, -9, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {1, -9, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {3, 0, 1},  {1, 0, 0},  {-1, 0, 0}, {-1, 0, 0}, {4, 0, 1},  {2, 0, 0},  {-1, 0, 0}, {-1, 0, 0},
    {2, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {5, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {6, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {7, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {8, -1, 1}, {2, 0, 0},  {-1, 0, 0}, {-1, 0, 0},
};

/* 80999E1C-80999E20 -00001 0004+00 1/1 0/0 0/0 .data            mCutNameList__14daNpc_clerkB_c */
char* daNpc_clerkB_c::mCutNameList[1] = {""};

/* 80999E20-80999E2C 000370 000C+00 2/2 0/0 0/0 .data            mCutList__14daNpc_clerkB_c */
daNpc_clerkB_c::cutFunc daNpc_clerkB_c::mCutList[1] = {NULL};

/* 80995F2C-80996090 0000EC 0164+00 1/0 0/0 0/0 .text            __dt__14daNpc_clerkB_cFv */
daNpc_clerkB_c::~daNpc_clerkB_c() {
    deleteObject();

    if (heap != NULL) {
        mpMorf[0]->stopZelAnime();
    }

    deleteRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
}

/* 80996090-80996338 000250 02A8+00 1/1 0/0 0/0 .text            create__14daNpc_clerkB_cFv */
int daNpc_clerkB_c::create() {
    daNpcT_ct(this, daNpc_clerkB_c, l_faceMotionAnmData, l_motionAnmData, l_faceMotionSequenceData,
              4, l_motionSequenceData, 4, l_evtList, l_resNameList);

    mType = getType();
    mFlowNodeNo = getFlowNodeNo();
    mTwilight = dKy_darkworld_check();

    int phase = loadRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x4380)) {
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

/* 80996338-80996608 0004F8 02D0+00 1/1 0/0 0/0 .text            CreateHeap__14daNpc_clerkB_cFv */
int daNpc_clerkB_c::CreateHeap() {
    int res_idx = l_bmdData[0][1];
    int bmd_idx = l_bmdData[0][0];
    J3DModelData* modelData =
        static_cast<J3DModelData*>(dComIfG_getObjectRes(l_resNameList[res_idx], bmd_idx));

    mpMorf[0] =
        new mDoExt_McaMorfSO(modelData, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, 0, 0x11020285);
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

    if (setFaceMotionAnm(1, false)) {
        J3DAnmColor* anm_color = (J3DAnmColor*)dComIfG_getObjectRes(l_resNameList[1], 0x1D);
        if (mBpkAnm2.init(modelData, anm_color, TRUE, 2, 1.0f, 0, -1) &&
            setMotionAnm(0, 0.0f, FALSE))
        {
            return 1;
        }
    }

    return 0;
}

/* 809967C4-809967F8 000984 0034+00 1/1 0/0 0/0 .text            Delete__14daNpc_clerkB_cFv */
int daNpc_clerkB_c::Delete() {
    fpc_ProcID id = fopAcM_GetID(this);
    this->~daNpc_clerkB_c();
    return 1;
}

/* 809967F8-809968D0 0009B8 00D8+00 2/2 0/0 0/0 .text            Execute__14daNpc_clerkB_cFv */
int daNpc_clerkB_c::Execute() {
    if (!mCreating && !checkShopOpen() && mType == TYPE_SHOP && mShopFlag == 0) {
        initShopSystem();
        setSellItemMax(getMaxNumItem());
        field_0xf60 = -1;
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

/* 809968D0-80996964 000A90 0094+00 1/1 0/0 0/0 .text            Draw__14daNpc_clerkB_cFv */
int daNpc_clerkB_c::Draw() {
    if (mpMatAnm[0] != NULL) {
        J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
        modelData->getMaterialNodePointer(getEyeballMaterialNo())->setMaterialAnm(mpMatAnm[0]);
    }
    return draw(FALSE, FALSE, mRealShadowSize, NULL, 0.0f, TRUE, FALSE, FALSE);
}

/* 80996964-80996984 000B24 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__14daNpc_clerkB_cFP10fopAc_ac_c           */
int daNpc_clerkB_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return ((daNpc_clerkB_c*)i_this)->CreateHeap();
}

/* 80996984-809969DC 000B44 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__14daNpc_clerkB_cFP8J3DJointi              */
int daNpc_clerkB_c::ctrlJointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpc_clerkB_c* i_this = (daNpc_clerkB_c*)model->getUserArea();
        if (i_this != NULL) {
            i_this->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

/* 809969DC-809969FC 000B9C 0020+00 1/1 0/0 0/0 .text            getType__14daNpc_clerkB_cFv */
u8 daNpc_clerkB_c::getType() {
    switch ((fopAcM_GetParam(this) & 0xFF)) {
    case 0:
        return TYPE_SHOP;
    }
    return TYPE_1;
}

/* 809969FC-80996CCC 000BBC 02D0+00 1/0 0/0 0/0 .text
 * beforeStartSeqAction__14daNpc_clerkB_cFP10dMsgFlow_ci        */
int daNpc_clerkB_c::beforeStartSeqAction(dMsgFlow_c* param_0, int param_1) {
    BOOL bVar2 = FALSE;
    BOOL rv = FALSE;
    field_0x110f = 0;

    if (field_0x110d != 0) {
        f32 fVar1 = mpHIO->m.field_0x8c / mpHIO->m.field_0x90;
        switch (field_0x110d) {
        case 2:
            field_0x110e = 0;
            field_0x110c = 0;
            mFaceMotionSeqMngr.setNo(FACE_MOT_UNK_8, -1.0f, FALSE, 0);
            mMotionSeqMngr.setNo(MOT_UNK_5, -1.0f, FALSE, 0);
            dMsgObject_getMsgObjectClass()->setStatus(19);
            field_0x1104 = 10;
            field_0x110d = 3;
            break;
        case 3:
            f32 fVar6 = field_0x1108;
            cLib_chaseF(&field_0x1108, 0.0f, fVar1);
            if (field_0x1104 != 0 && cLib_calcTimer(&field_0x1104) == 0) {
                bVar2 = TRUE;
            }
            if (cM3d_IsZero(field_0x1108) && cM3d_IsZero(fVar6) == 0) {
                bVar2 = TRUE;
                field_0x1104 = 0;
            }
            if (bVar2) {
                mShopCamAction.setCameraSpeed(0.75f, 13.0f, 0.75f, 13.0f);
                field_0x110c = 1;
            }
            if (cM3d_IsZero(field_0x1108) && field_0x110c != 0) {
                if (mMotionSeqMngr.getNo() == MOT_UNK_7) {
                    if (10.0f < mpMorf[0]->getFrame()) {
                        field_0x110d = 0;
                    }
                } else {
                    mFaceMotionSeqMngr.setNo(FACE_MOT_UNK_8, -1.0f, FALSE, 0);
                    mMotionSeqMngr.setNo(MOT_UNK_7, -1.0f, FALSE, 0);
                }
            }
            break;
        }
        rv = FALSE;
    } else {
        if (field_0x110e == 0) {
            if (!dMsgObject_isTalkNowCheck()) {
                param_0->init(this, param_1, 0, NULL);
                field_0x110e = 1;
                rv = TRUE;
            } else {
                rv = FALSE;
            }
        } else {
            rv = TRUE;
        }
    }

    return rv;
}

/* 80996CCC-80996F7C 000E8C 02B0+00 1/0 0/0 0/0 .text
 * beforeSelectSeqAction__14daNpc_clerkB_cFP10dMsgFlow_ci       */
int daNpc_clerkB_c::beforeSelectSeqAction(dMsgFlow_c* param_0, int param_1) {
    BOOL bVar2 = FALSE;
    BOOL rv = FALSE;
    field_0x110e = 0;

    if (field_0x110d != 2) {
        f32 fVar1 = mpHIO->m.field_0x8c / mpHIO->m.field_0x90;
        switch (field_0x110d) {
        case 0:
            field_0x110f = 0;
            field_0x110c = 0;
            mFaceMotionSeqMngr.setNo(FACE_MOT_UNK_8, -1.0f, FALSE, 0);
            mMotionSeqMngr.setNo(MOT_UNK_6, -1.0f, FALSE, 0);
            dMsgObject_getMsgObjectClass()->setStatus(19);
            field_0x1104 = 20;
            field_0x110d = 1;
            break;
        case 1:
            f32 fVar6 = field_0x1108;
            cLib_chaseF(&field_0x1108, mpHIO->m.field_0x8c, fVar1);
            if (field_0x1104 != 0 && cLib_calcTimer(&field_0x1104) == 0) {
                bVar2 = TRUE;
            }
            if (mpHIO->m.field_0x8c <= field_0x1108 && fVar6 < mpHIO->m.field_0x8c) {
                bVar2 = TRUE;
                field_0x1104 = 0;
            }
            if (bVar2) {
                mShopCamAction.setCameraSpeed(0.75f, 20.0f, 0.75f, 20.0f);
                field_0x110c = 1;
            }
            if (mpHIO->m.field_0x8c <= field_0x1108 && field_0x110c != 0) {
                if (mMotionSeqMngr.getNo() == MOT_UNK_8) {
                    if (mMotionSeqMngr.getStepNo() > 0 && mShopCamAction.isCameraStopFlag()) {
                        field_0x110d = 2;
                    }
                } else {
                    mFaceMotionSeqMngr.setNo(FACE_MOT_UNK_8, -1.0f, FALSE, 0);
                    mMotionSeqMngr.setNo(MOT_UNK_8, -1.0f, FALSE, 0);
                }
            }
            break;
        }
        rv = FALSE;
    } else {
        if (field_0x110f == 0) {
            if (!dMsgObject_isTalkNowCheck()) {
                param_0->init(this, param_1, 0, NULL);
                field_0x110f = 1;
                rv = TRUE;
            } else {
                rv = FALSE;
            }
        } else {
            rv = TRUE;
        }
    }

    return rv;
}

/* 80996F7C-80996FAC 00113C 0030+00 1/1 0/0 0/0 .text            isDelete__14daNpc_clerkB_cFv */
int daNpc_clerkB_c::isDelete() {
    if (mType == TYPE_1) {
        return 0;
    }
    switch (mType) {
    case TYPE_SHOP:
        return 0;
    }
    return 1;
}

/* 80996FAC-809970E0 00116C 0134+00 1/1 0/0 0/0 .text            reset__14daNpc_clerkB_cFv */
void daNpc_clerkB_c::reset() {
    initialize();

    int size = (u8*)&field_0x1114 - (u8*)&mNextAction;

    memset(&mNextAction, 0, size);

    if (mpMatAnm[0] != NULL) {
        mpMatAnm[0]->initialize();
    }

    for (int i = 0; i < 1; i++) {
        mActorMngr[i].initialize();
    }

    setAngle(home.angle.y);
}

/* 809970E0-80997188 0012A0 00A8+00 1/0 0/0 0/0 .text            afterJntAnm__14daNpc_clerkB_cFi */
void daNpc_clerkB_c::afterJntAnm(int param_1) {
    if (param_1 == 1) {
        mDoMtx_stack_c::YrotM(mStagger.getAngleZ(1));
        mDoMtx_stack_c::ZrotM(-mStagger.getAngleX(1));
    } else if (param_1 == 4) {
        mDoMtx_stack_c::YrotM(mStagger.getAngleZ(0));
        mDoMtx_stack_c::ZrotM(mStagger.getAngleX(0));
    }
    if (param_1 == 9) {
        mDoMtx_stack_c::XrotM(field_0x10f8.y);
    }
}

/* 80997188-809972BC 001348 0134+00 1/0 0/0 0/0 .text            setParam__14daNpc_clerkB_cFv */
void daNpc_clerkB_c::setParam() {
    if (field_0x1110 != 0) {
        if (mShopProcess == 2) {
            mShopCamAction.Reset();
        } else {
            mShopCamAction.EventRecoverNotime();
        }

        field_0x1110 = 0;
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

/* 809972BC-80997360 00147C 00A4+00 1/0 0/0 0/0 .text setAfterTalkMotion__14daNpc_clerkB_cFv */
void daNpc_clerkB_c::setAfterTalkMotion() {
    int idx;

    switch (mFaceMotionSeqMngr.getNo()) {
    case FACE_MOT_UNK_2:
        idx = FACE_MOT_UNK_5;
        break;
    case FACE_MOT_UNK_3:
        idx = FACE_MOT_UNK_6;
        break;
    case FACE_MOT_UNK_4:
        idx = FACE_MOT_UNK_7;
        break;
    default:
        idx = FACE_MOT_UNK_8;
        break;
    }

    mFaceMotionSeqMngr.setNo(idx, -1.0f, FALSE, 0);
}

/* 80997360-809973BC 001520 005C+00 1/1 0/0 0/0 .text            srchActors__14daNpc_clerkB_cFv */
void daNpc_clerkB_c::srchActors() {
    switch (mType) {
    case TYPE_SHOP:
        if (mActorMngr[0].getActorP() == NULL) {
            mActorMngr[0].entry(getShopItemTagP());
        }
        break;
    }
}

/* 809973BC-80997598 00157C 01DC+00 1/0 0/0 0/0 .text            evtTalk__14daNpc_clerkB_cFv */
BOOL daNpc_clerkB_c::evtTalk() {
    if (mShopFlag) {
        if (chkAction(&daNpc_clerkB_c::shop)) {
            (this->*mAction)(NULL);
        } else {
            mPreItemNo = 0;
            if (dComIfGp_event_chkTalkXY()) {
                if (!dComIfGp_evmng_ChkPresentEnd()) {
                    return TRUE;
                }
                mEvtNo = 2;
                evtChange();
                return TRUE;
            } else {
                mShopCamAction.shop_cam_action_init();
                setAction(&daNpc_clerkB_c::shop);
            }
        }
    } else if (chkAction(&daNpc_clerkB_c::talk)) {
        (this->*mAction)(NULL);
    } else {
        mPreItemNo = 0;
        if (dComIfGp_event_chkTalkXY()) {
            if (!dComIfGp_evmng_ChkPresentEnd()) {
                return TRUE;
            }
            mEvtNo = 2;
            evtChange();
            return TRUE;
        } else {
            setAction(&daNpc_clerkB_c::talk);
        }
    }

    return TRUE;
}

/* 80997598-80997660 001758 00C8+00 1/0 0/0 0/0 .text            evtCutProc__14daNpc_clerkB_cFv */
BOOL daNpc_clerkB_c::evtCutProc() {
    BOOL rv = FALSE;

    s32 staffId = dComIfGp_getEventManager().getMyStaffId("clerkB", this, -1);
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

/* 80997660-8099774C 001820 00EC+00 1/0 0/0 0/0 .text            action__14daNpc_clerkB_cFv */
void daNpc_clerkB_c::action() {
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

/* 8099774C-809977C4 00190C 0078+00 1/0 0/0 0/0 .text            beforeMove__14daNpc_clerkB_cFv */
void daNpc_clerkB_c::beforeMove() {
    if (checkHide() || mNoDraw) {
        attention_info.flags = 0;
    }
}

/* 809977C4-80997A1C 001984 0258+00 1/0 0/0 0/0 .text            setAttnPos__14daNpc_clerkB_cFv */
void daNpc_clerkB_c::setAttnPos() {
    cXyz cStack_3c(-30.0f, 15.0f, 0.0f);
    cXyz cStack_48(0.0f, 15.0f, 0.0f);

    field_0x10f8.y += cM_deg2s(6.0);
    mStagger.calc(FALSE);
    mBpkAnm2.play();
    f32 rad = cM_s2rad((s16)(mCurAngle.y - field_0xd7e.y));

    mJntAnm.setParam(this, mpMorf[0]->getModel(), &cStack_3c, getBackboneJointNo(),
                     getNeckJointNo(), getHeadJointNo(), mpHIO->m.common.body_angleX_min,
                     mpHIO->m.common.body_angleX_max, mpHIO->m.common.body_angleY_min,
                     mpHIO->m.common.body_angleY_max, mpHIO->m.common.head_angleX_min,
                     mpHIO->m.common.head_angleX_max, mpHIO->m.common.head_angleY_min,
                     mpHIO->m.common.head_angleY_max, mpHIO->m.common.neck_rotation_ratio, rad,
                     &cStack_48);

    mJntAnm.calcJntRad(0.2f, 1.0f, rad);
    setMtx();
    mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getHeadJointNo()));
    mDoMtx_stack_c::multVec(&cStack_3c, &eyePos);
    mJntAnm.setEyeAngleX(eyePos, 1.0f, 0);
    mJntAnm.setEyeAngleY(eyePos, mCurAngle.y, TRUE, 1.0f, 0);
    attention_info.position = current.pos;
    attention_info.position.y += mpHIO->m.common.attention_offset;
    setSe();
}

/* 80997A1C-80997B50 001BDC 0134+00 1/0 0/0 0/0 .text            setCollision__14daNpc_clerkB_cFv */
void daNpc_clerkB_c::setCollision() {
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

/* 80997B50-80997B58 001D10 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__14daNpc_clerkB_cFv */
int daNpc_clerkB_c::drawDbgInfo() {
    return 0;
}

/* 80997B58-80997BB8 001D18 0060+00 1/0 0/0 0/0 .text            drawOtherMdl__14daNpc_clerkB_cFv */
void daNpc_clerkB_c::drawOtherMdl() {
    if (mShopFlag) {
        cXyz pos;
        itemRotate();
        pos.set(0.0f, 0.0f, 0.0f);
        itemZoom(&pos);
        drawCursor();
    }
}

/* 80997BB8-80997C44 001D78 008C+00 1/0 0/0 0/0 .text            drawGhost__14daNpc_clerkB_cFv */
void daNpc_clerkB_c::drawGhost() {
    J3DModel* model = mpMorf[0]->getModel();
    J3DModelData* modelData = model->getModelData();
    mBpkAnm2.entry(modelData);
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &tevStr);
    mpMorf[0]->entryDL();
    mBpkAnm2.remove(modelData);
}

/* 80997C44-80997CC0 001E04 007C+00 1/1 0/0 0/0 .text            selectAction__14daNpc_clerkB_cFv */
int daNpc_clerkB_c::selectAction() {
    mNextAction = NULL;

    switch (mType) {
    case TYPE_SHOP:
        mNextAction = &daNpc_clerkB_c::tend;
        break;
    default:
        mNextAction = &daNpc_clerkB_c::wait;
        break;
    }

    return TRUE;
}

/* 80997CC0-80997CEC 001E80 002C+00 1/1 0/0 0/0 .text
 * chkAction__14daNpc_clerkB_cFM14daNpc_clerkB_cFPCvPvPv_i      */
int daNpc_clerkB_c::chkAction(actionFunc action) {
    return mAction == action;
}

/* 80997CEC-80997D94 001EAC 00A8+00 2/2 0/0 0/0 .text
 * setAction__14daNpc_clerkB_cFM14daNpc_clerkB_cFPCvPvPv_i      */
int daNpc_clerkB_c::setAction(actionFunc action) {
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

/* 80997D94-80997E54 001F54 00C0+00 1/1 0/0 0/0 .text            setSe__14daNpc_clerkB_cFv */
void daNpc_clerkB_c::setSe() {
    if (cM3d_IsZero(mpMorf[0]->getPlaySpeed()) == 0) {
        J3DAnmTransform* anm_transform = (J3DAnmTransform*)dComIfG_getObjectRes(
            l_resNameList[l_motionAnmData[1].mBckArcIdx], l_motionAnmData[1].mBckFileIdx);
        if (anm_transform == mpMorf[0]->getAnm()) {
            mSound.startCreatureVoiceLevel(Z2SE_CLERK_MV_SONG_HO, -1);
        }
    }
}

/* 80997E54-809980AC 002014 0258+00 1/0 0/0 0/0 .text            wait__14daNpc_clerkB_cFPv */
int daNpc_clerkB_c::wait(void* param_0) {
    switch (mMode) {
    case MODE_ENTER:
    case MODE_INIT:
        if (!mStagger.checkStagger()) {
            mFaceMotionSeqMngr.setNo(FACE_MOT_UNK_8, -1.0f, FALSE, 0);
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
                    } else if (step(home.angle.y, -1, -1, 15, 0)) {
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

/* 809980AC-80998328 00226C 027C+00 1/0 0/0 0/0 .text            tend__14daNpc_clerkB_cFPv */
int daNpc_clerkB_c::tend(void* param_0) {
    int sVar1 = mpHIO->m.field_0x8c;

    switch (mMode) {
    case MODE_ENTER:
    case MODE_INIT:
        if (!mStagger.checkStagger()) {
            mFaceMotionSeqMngr.setNo(FACE_MOT_UNK_8, -1.0f, FALSE, 0);
            mMotionSeqMngr.setNo(MOT_UNK_1, -1.0f, FALSE, 0);
            mMode = MODE_RUN;
        }
    case MODE_RUN:
        if (mShopFlag != 0 && mShopProcess == 2) {
            mSpeakEvent = true;
            field_0xe33 = true;
        }
        if (!mStagger.checkStagger()) {
            if (mPlayerActorMngr.getActorP() != NULL) {
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
                    } else if (step(home.angle.y, -1, -1, 15, 0)) {
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

/* 80998328-80998520 0024E8 01F8+00 2/0 0/0 0/0 .text            talk__14daNpc_clerkB_cFPv */
int daNpc_clerkB_c::talk(void* param_0) {
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
                step(fopAcM_searchPlayerAngleY(this), -1, -1, 15, 0);
            }
        }
        break;
    case MODE_EXIT:
        break;
    }

    return 0;
}

/* 80998520-809988DC 0026E0 03BC+00 2/0 0/0 0/0 .text            shop__14daNpc_clerkB_cFPv */
int daNpc_clerkB_c::shop(void* param_0) {
    cXyz cam_ctr_pos;
    cXyz cStack_3c;

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
                field_0x1108 = 0.0f;
                field_0x110d = 0;
                field_0x110e = 1;
                field_0x110f = 0;
                onSpMode();
            }

            mJntAnm.lookNone(1);
            if (checkStep()) {
                mStepMode = 0;
            }
            mMode = MODE_RUN;
        }
    case MODE_RUN:
        if (!mStagger.checkStagger()) {
            mShopProcess = shop_process(this, &mFlow);
            if (mShopProcess != 0) {
                mPlayerActorMngr.entry(daPy_getPlayerActorClass());
                dComIfGp_event_reset();
                mMode = MODE_EXIT;
                field_0x1110 = 1;
            }
            if (!(field_0x110d == 0 || field_0x110d == 2)) {
                mJntAnm.lookNone(0);
            } else {
                if (field_0x110d == 2) {
                    field_0xd6c = mItemCtrl.getCurrentPos(getCursorPos() - 1);
                    cStack_3c.set(0.0f, 0.0f, 60.0f);
                    mDoMtx_stack_c::transS(field_0xd6c);
                    mDoMtx_stack_c::YrotM(mCurAngle.y);
                    mDoMtx_stack_c::multVec(&cStack_3c, &field_0xd6c);
                    mJntAnm.lookPos(&field_0xd6c, 0);
                } else {
                    mJntAnm.lookCamera(0);
                }
            }
        }

        cam_ctr_pos.set(0.0f, 150.0f, 0.0f);
        mDoMtx_stack_c::YrotS(home.angle.y);
        mDoMtx_stack_c::multVec(&cam_ctr_pos, &cam_ctr_pos);
        cam_ctr_pos += current.pos;
        mShopCamAction.setMasterCamCtrPos(&cam_ctr_pos);
        mDoMtx_stack_c::YrotS(mCurAngle.y + 0x4000);
        cStack_3c.set(0.0f, 0.0f, field_0x1108);
        mDoMtx_stack_c::multVec(&cStack_3c, &cStack_3c);
        cStack_3c = home.pos + cStack_3c;
        setPos(cStack_3c);
        break;
    case MODE_EXIT:
        break;
    }

    return 0;
}

/* 809988DC-809988FC 002A9C 0020+00 1/0 0/0 0/0 .text            daNpc_clerkB_Create__FPv */
static int daNpc_clerkB_Create(void* i_this) {
    return static_cast<daNpc_clerkB_c*>(i_this)->create();
}

/* 809988FC-8099891C 002ABC 0020+00 1/0 0/0 0/0 .text            daNpc_clerkB_Delete__FPv */
static int daNpc_clerkB_Delete(void* i_this) {
    return static_cast<daNpc_clerkB_c*>(i_this)->Delete();
}

/* 8099891C-8099893C 002ADC 0020+00 1/0 0/0 0/0 .text            daNpc_clerkB_Execute__FPv */
static int daNpc_clerkB_Execute(void* i_this) {
    return static_cast<daNpc_clerkB_c*>(i_this)->Execute();
}

/* 8099893C-8099895C 002AFC 0020+00 1/0 0/0 0/0 .text            daNpc_clerkB_Draw__FPv */
static int daNpc_clerkB_Draw(void* i_this) {
    return static_cast<daNpc_clerkB_c*>(i_this)->Draw();
}

/* 8099895C-80998964 002B1C 0008+00 1/0 0/0 0/0 .text            daNpc_clerkB_IsDelete__FPv */
static int daNpc_clerkB_IsDelete(void* i_this) {
    return 1;
}

/* 8099A054-8099A058 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
NPC_CLERKB_HIO_CLASS l_HIO;

/* 80999E74-80999E94 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_clerkB_MethodTable */
static actor_method_class daNpc_clerkB_MethodTable = {
    (process_method_func)daNpc_clerkB_Create,  (process_method_func)daNpc_clerkB_Delete,
    (process_method_func)daNpc_clerkB_Execute, (process_method_func)daNpc_clerkB_IsDelete,
    (process_method_func)daNpc_clerkB_Draw,
};

/* 80999E94-80999EC4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_CLERKB */
extern actor_process_profile_definition g_profile_NPC_CLERKB = {
    fpcLy_CURRENT_e,            // mLayerID
    7,                          // mListID
    fpcPi_CURRENT_e,            // mListPrio
    PROC_NPC_CLERKB,            // mProcName
    &g_fpcLf_Method.base,       // sub_method
    sizeof(daNpc_clerkB_c),     // mSize
    0,                          // mSizeOther
    0,                          // mParameters
    &g_fopAc_Method.base,       // sub_method
    327,                        // mPriority
    &daNpc_clerkB_MethodTable,  // sub_method
    0x00044107,                 // mStatus
    fopAc_NPC_e,                // mActorType
    fopAc_CULLBOX_CUSTOM_e,     // cullType
};
