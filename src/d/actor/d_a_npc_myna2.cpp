/**
 * @file d_a_npc_myna2.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_npc_myna2.h"
#include "d/actor/d_a_npc.h"
#include "d/actor/d_a_player.h"
#include "Z2AudioLib/Z2Instances.h"

enum {
    NUM_EVT_CUTS_e = 5,
};

/* 80A88B44-80A88B48 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daNpc_myna2_Param_c l_HIO;

/* 80A886D4-80A886DC 000020 0008+00 1/1 0/0 0/0 .data            l_bmdGetParamList */
static daNpc_GetParam1 l_bmdGetParamList[] = {
    {0x17, 0},
};

/* 80A886DC-80A88754 000028 0078+00 1/1 0/0 0/0 .data            l_bckGetParamList */
static daNpc_GetParam1 l_bckGetParamList[] = {
    {17, 0},
    {10, 0},
    {11, 0},
    {9, 0},
    {13, 0},
    {12, 0},
    {8, 0},
    {7, 0},
    {6, 0},
    {14, 0},
    {15, 0},
    {16, 0},
    {18, 0},
    {19, 0},
    {20, 0},
};

/* 80A88754-80A8875C 0000A0 0008+00 1/1 0/0 0/0 .data            l_btpGetParamList */
static daNpc_GetParam1 l_btpGetParamList[] = {
    {26, 0},
};

/* 80A8875C-80A88784 0000A8 0028+00 0/1 0/0 0/0 .data            l_evtGetParamList */
static daNpc_GetParam1 l_evtGetParamList[] = {
    {0, 0},
    {1, 0},
    {2, 1},
    {3, 2},
    {4, 2},
};

/* 80A88784-80A88798 -00001 0014+00 0/1 0/0 0/0 .data            l_evtNames */
static char* l_evtNames[5] = {
    NULL,
    "FIRST_TALK",
    "GAME_FAILURE",
    "GAME_GOAL",
    "GAME_GOAL_SUCCESS",
};

/* 80A88798-80A887A4 0000E4 000C+00 1/0 0/0 0/0 .data            l_loadRes_MYNA2a */
static int l_loadRes_MYNA2a[] = {
    0, -1, -1,
};

/* 80A887A4-80A887B0 0000F0 000C+00 1/0 0/0 0/0 .data            l_loadRes_MYNA2_GAME_FAILURE */
static int l_loadRes_MYNA2_GAME_FAILURE[] = {
    0, 1, -1,
};

/* 80A887B0-80A887BC 0000FC 000C+00 1/0 0/0 0/0 .data            l_loadRes_MYNA2_GAME_GOAL */
static int l_loadRes_MYNA2_GAME_GOAL[] = {
    0, 2, -1,
};

/* 80A887BC-80A887C8 000108 000C+00 1/0 0/0 0/0 .data            l_loadRes_MYNA20 */
static int l_loadRes_MYNA20[] = {
    0, -1, -1,
};

/* 80A887C8-80A887DC -00001 0014+00 2/2 0/0 0/0 .data            l_loadRes_list */
static int* l_loadRes_list[5] = {
    l_loadRes_MYNA2a,
    l_loadRes_MYNA2a,
    l_loadRes_MYNA2_GAME_FAILURE,
    l_loadRes_MYNA2_GAME_GOAL,
    l_loadRes_MYNA20,
};

/* 80A887DC-80A887E8 -00001 000C+00 5/6 0/0 0/0 .data            l_resNames */
static char* l_resNames[3] = {
    "MYNA_b",
    "MYNA_b_f",
    "MYNA_b_g",
};

/* 80A887E8-80A887EC -00001 0004+00 0/1 0/0 0/0 .data            l_myName */
static char* l_myName = "myna2";

/* 80A887EC-80A88800 -00001 0014+00 0/1 0/0 0/0 .data            mEvtCutNameList__13daNpc_myna2_c */
char* daNpc_myna2_c::mEvtCutNameList[5] = {
    "",
    "FIRST_TALK",
    "GAME_FAILURE",
    "GAME_GOAL",
    "GAME_GOAL_SUCCESS",
};

/* 80A88830-80A8886C 00017C 003C+00 0/2 0/0 0/0 .data            mEvtCutList__13daNpc_myna2_c */
daNpc_myna2_c::EventFn daNpc_myna2_c::mEvtCutList[] = {
    NULL,
    &daNpc_myna2_c::ECut_firstTalk,
    &daNpc_myna2_c::ECut_gameFailure,
    &daNpc_myna2_c::ECut_gameGoal,
    &daNpc_myna2_c::ECut_gameGoalSuccess,
};

/* 80A83E8C-80A84010 0000EC 0184+00 1/1 0/0 0/0 .text            __ct__13daNpc_myna2_cFv */
daNpc_myna2_c::daNpc_myna2_c() {}

/* 80A840A0-80A842C8 000300 0228+00 1/0 0/0 0/0 .text            __dt__13daNpc_myna2_cFv */
daNpc_myna2_c::~daNpc_myna2_c() {
    OS_REPORT("|%06d:%x|daNpc_myna2_c -> デストラクト%d\n", g_Counter.mCounter0, mType);

    if (mType == 1) {
        daNpcF_offTmpBit(0x4A);
    }

    for (int i = 0; l_loadRes_list[mType][i] >= 0; i++) {
        dComIfG_resDelete(&mPhase[i], l_resNames[l_loadRes_list[mType][i]]);
    }

    if (heap != NULL) {
        mAnm_p->stopZelAnime();
    }
}

/* 80A88434-80A884A8 000000 0074+00 14/14 0/0 0/0 .rodata          m__19daNpc_myna2_Param_c */
const daNpc_myna2_HIOParam daNpc_myna2_Param_c::m = {
    60.0f,
    0.0f,
    1.0f,
    600.0f,
    0.0f,
    50.0f,
    35.0f,
    40.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    12.0f,
    3,
    6,
    5,
    6,
    180.0f,
    500.0f,
    300.0f,
    -300.0f,
    60,
    8,
    0,
    0,
    0,
    0,
    0,
    700.0f,
    2500.0f,
};

/* 80A842C8-80A845AC 000528 02E4+00 1/1 0/0 0/0 .text            create__13daNpc_myna2_cFv */
int daNpc_myna2_c::create() {
    fopAcM_ct(this, daNpc_myna2_c);

    mType = getTypeFromParam();
    field_0xe0d = (fopAcM_GetParam(this) & 0xFF00) >> 8;

    if (home.angle.x != 0xFFFF) {
        field_0xe04 = home.angle.x;
    } else {
        field_0xe04 = -1;
    }

    if (isDelete()) {
        return 5;
    }

    int var_r26 = 0;
    int i;
    for (i = 0; l_loadRes_list[mType][i] >= 0; i++) {
        int phase = dComIfG_resLoad(&mPhase[i], l_resNames[l_loadRes_list[mType][i]]);
        if (phase == cPhs_ERROR_e || phase == cPhs_UNK3_e) {
            return cPhs_ERROR_e;
        }

        if (phase == cPhs_COMPLEATE_e) {
            var_r26++;
        }
    }

    if (var_r26 == i) {
        static const u32 heapSize[5] = {
            0x0, 0x2450, 0x2440, 0x2450, 0x0,
        };

        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, heapSize[mType])) {
            return cPhs_ERROR_e;
        }

        J3DModelData* model_data = mAnm_p->getModel()->getModelData();
        fopAcM_SetMtx(this, mAnm_p->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -300.0f, -50.0f, -300.0f, 300.0f, 450.0f, 300.0f);
        mSound.init(&current.pos, &eyePos, 3, 1);

        mAcchCir.SetWall(daNpc_myna2_Param_c::m.common.width, daNpc_myna2_Param_c::m.common.knee_length);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1,
                  &mAcchCir, fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));

        mCcStts.Init(daNpc_myna2_Param_c::m.common.weight, 0, this);
        mCyl.Set(mCcDCyl);
        mCyl.SetStts(&mCcStts);
        mCyl.SetTgHitCallback(tgHitCallBack);

        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();

        setEnvTevColor();
        setRoomNo();

        reset();
        Execute();

        return cPhs_COMPLEATE_e;
    }

    return cPhs_INIT_e;
}

/* 80A845AC-80A846E0 00080C 0134+00 1/1 0/0 0/0 .text            CreateHeap__13daNpc_myna2_cFv */
int daNpc_myna2_c::CreateHeap() {
    J3DModelData* mdlData_p = NULL;

    if (l_bmdGetParamList[0].fileIdx >= 0) {
        mdlData_p = (J3DModelData*)dComIfG_getObjectRes(l_resNames[l_bmdGetParamList[0].arcIdx], l_bmdGetParamList[0].fileIdx);
    }

    JUT_ASSERT(476, NULL != mdlData_p);

    mAnm_p = new mDoExt_McaMorfSO(mdlData_p, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, 0x80000, 0x11020284);
    if (mAnm_p != NULL && mAnm_p->getModel() == NULL) {
        mAnm_p->stopZelAnime();
        mAnm_p = NULL;
    }

    if (mAnm_p == NULL) {
        return 0;
    }

    mAnm_p->getModel()->setUserArea((uintptr_t)this);

    setMotionAnm(0, 0.0f);
    return 1;
}

/* 80A846E0-80A84714 000940 0034+00 1/1 0/0 0/0 .text            Delete__13daNpc_myna2_cFv */
int daNpc_myna2_c::Delete() {
    fpc_ProcID id = fopAcM_GetID(this);
    this->~daNpc_myna2_c();
    return 1;
}

/* 80A84714-80A84734 000974 0020+00 2/2 0/0 0/0 .text            Execute__13daNpc_myna2_cFv */
int daNpc_myna2_c::Execute() {
    return execute();
}

/* 80A84734-80A847A8 000994 0074+00 1/1 0/0 0/0 .text            Draw__13daNpc_myna2_cFv */
int daNpc_myna2_c::Draw() {
    return draw(chkAction(&daNpc_myna2_c::test), FALSE, daNpc_myna2_Param_c::m.common.real_shadow_size, NULL, 0);
}

/* 80A847A8-80A847C8 000A08 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__13daNpc_myna2_cFP10fopAc_ac_c            */
int daNpc_myna2_c::createHeapCallBack(fopAc_ac_c* actor) {
    return ((daNpc_myna2_c*)actor)->CreateHeap();
}

/* 80A847C8-80A848B4 000A28 00EC+00 1/0 0/0 0/0 .text            setParam__13daNpc_myna2_cFv */
void daNpc_myna2_c::setParam() {
    ActionFn action = mNextAction;

    selectAction();

    if (mNextAction != action) {
        for (int i = 1; i < 1; i++) {
            mActorMgrs[i].initialize();
        }
    }

    field_0xdf4 = 0;
    field_0xdf8 = 0;

    attention_info.distances[fopAc_attn_LOCK_e] = 0x51;
    attention_info.distances[fopAc_attn_TALK_e] = 0x51;
    attention_info.distances[fopAc_attn_SPEAK_e] = 0x50;
    attention_info.flags = fopAc_AttnFlag_SPEAK_e | fopAc_AttnFlag_TALK_e;
    
    scale.set(daNpc_myna2_Param_c::m.common.scale, daNpc_myna2_Param_c::m.common.scale, daNpc_myna2_Param_c::m.common.scale);
    mAcchCir.SetWallR(daNpc_myna2_Param_c::m.common.width);
    mAcchCir.SetWallH(daNpc_myna2_Param_c::m.common.knee_length);
    gravity = daNpc_myna2_Param_c::m.common.gravity;
}

/* 80A848B4-80A84B64 000B14 02B0+00 1/0 0/0 0/0 .text            main__13daNpc_myna2_cFv */
BOOL daNpc_myna2_c::main() {
    if (!doEvent()) {
        doNormalAction(1);
    }

    if (checkHide()) {
        attention_info.flags = 0;
    }

    if (!daNpc_myna2_Param_c::m.common.debug_mode_ON && (!dComIfGp_event_runCheck() || (mOrderNewEvt && dComIfGp_getEvent().isOrderOK()))) {
        if (mOrderEvtNo != 0) {
            eventInfo.setArchiveName(l_resNames[l_evtGetParamList[mOrderEvtNo].arcIdx]);
        }

        orderEvent(mOrderSpeakEvt, l_evtNames[l_evtGetParamList[mOrderEvtNo].fileIdx], 0xFFFF, 0x28, 0xFF, 1);
    }

    if (field_0x9ee) {
        mMotionMorfOverride = 0.0f;
        field_0x9ee = false;
    }

    playMotion();
    
    if (mType == 0) {
        return 1;
    }

    cXyz* cc_move_p = mCcStts.GetCCMoveP();
    if (cc_move_p != NULL) {
        *cc_move_p *= 0.15f;
    }
    fopAcM_posMoveF(this, cc_move_p);
    mAcch.CrrPos(dComIfG_Bgsp());
    mGndChk = mAcch.m_gnd;
    mGroundH = mAcch.GetGroundH();

    if (-G_CM3D_F_INF != mGroundH) {
        field_0x998 = daNpcF_getGroundAngle(&mGndChk, mCurAngle.y);
        setEnvTevColor();
        setRoomNo();

        mPolySound = dKy_pol_sound_get(&mAcch.m_gnd);
        mReverb = dComIfGp_getReverb(mCcStts.GetRoomId());

        if (mAcch.ChkWaterHit() && mAcch.m_wtr.GetHeight() > mGroundH) {
            mPolySound = dKy_pol_sound_get(&mAcch.m_wtr);
        }
    }

    return 0;
}

/* 80A84B64-80A84DAC 000DC4 0248+00 1/0 0/0 0/0 .text            setAttnPos__13daNpc_myna2_cFv */
void daNpc_myna2_c::setAttnPos() {
    static cXyz eyeOffset(30.0f, 10.0f, 0.0f);

    cXyz sp2C, sp20, sp14, sp18;
    f32 attention_offset = daNpc_myna2_Param_c::m.common.attention_offset;

    setMtx();

    mDoMtx_stack_c::copy(mAnm_p->getModel()->getAnmMtx(15));
    mDoMtx_stack_c::multVecZero(&mHeadPos);
    mDoMtx_stack_c::multVec(&eyeOffset, &eyePos);
    eyeOffset.y = 0.0f;
    mDoMtx_stack_c::multVec(&eyeOffset, &sp14);

    mHeadAngle.x = cLib_targetAngleX(&mHeadPos, &sp14);
    mHeadAngle.y = cLib_targetAngleY(&mHeadPos, &sp14);

    f32 var_f30 = 0.0f;
    f32 var_f29 = 0.0f;

    sp20.set(0.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(mCurAngle.x, mCurAngle.y, mCurAngle.z);
    mDoMtx_stack_c::multVec(&sp20, &sp2C);

    attention_info.position.set(sp2C.x, sp2C.y + attention_offset, sp2C.z);

    if (!mHide && !mTwilight) {
        if (!mIsDamaged) {
            mCyl.SetTgType(0xD8FBFDFF);
            mCyl.SetTgSPrm(0x1F);
            mCyl.OnTgNoHitMark();
        } else {
            mCyl.SetTgType(0);
            mCyl.SetTgSPrm(0);
        }

        mCyl.SetC(sp2C);
        mCyl.SetH(daNpc_myna2_Param_c::m.common.height + var_f30);
        mCyl.SetR(daNpc_myna2_Param_c::m.common.width + var_f29);
        dComIfG_Ccsp()->Set(&mCyl);
    }

    mCyl.ClrTgHit();
}

/* 80A84DAC-80A84EAC 00100C 0100+00 1/0 0/0 0/0 .text            setExpressionBtp__13daNpc_myna2_cFi
 */
bool daNpc_myna2_c::setExpressionBtp(int i_index) {
    J3DAnmTexPattern* btp_p = NULL;
    int mode = 0;

    mAnmFlags &= ~0xA80;
    if (l_btpGetParamList[i_index].fileIdx >= 0) {
        btp_p = getTexPtrnAnmP(l_resNames[l_btpGetParamList[i_index].arcIdx], l_btpGetParamList[i_index].fileIdx);
    }

    switch (i_index) {
    case 0:
        mode = 2;
        break;
    default:
        btp_p = NULL;
    }

    if (btp_p == NULL) {
        return 1;
    }

    if (setBtpAnm(btp_p, mAnm_p->getModel()->getModelData(), 1.0f, mode)) {
        mAnmFlags |= 0x280;
        if (i_index == 0) {
            mAnmFlags |= 0x800;
        }
        return 1;
    }

    OS_REPORT("%s: 表情Btpアニメーションの登録に失敗しました！\n", __FILE__);
    return 0;
}

/* 80A84EAC-80A84FEC 00110C 0140+00 1/0 0/0 0/0 .text            setMotionAnm__13daNpc_myna2_cFif */
void daNpc_myna2_c::setMotionAnm(int i_index, f32 i_morf) {
    J3DAnmTransformKey* bck_p = NULL;
    int i_attr = J3DFrameCtrl::EMode_LOOP;
    mAnmFlags &= ~ANM_MOTION_FLAGS;

    if (l_bckGetParamList[i_index].fileIdx >= 0) {
        bck_p = getTrnsfrmKeyAnmP(l_resNames[l_bckGetParamList[i_index].arcIdx], l_bckGetParamList[i_index].fileIdx);
    }

    setExpressionBtp(0);

    switch (i_index) {
    case 0:
    case 6:
    case 7:
    case 12:
    case 13:
    case 14:
        break;
    case 1:
    case 2:
    case 8:
    case 9:
    case 10:
    case 11:
        i_attr = 0;
        break;
    default:
        bck_p = NULL;
    }

    if (bck_p != NULL && setMcaMorfAnm(bck_p, 1.0f, i_morf, i_attr, 0, -1)) {
        mAnmFlags |= ANM_PLAY_MORF | ANM_PAUSE_MORF;
        mMotionLoops = 0;
    }
}

/* 80A84FEC-80A85030 00124C 0044+00 1/0 0/0 0/0 .text            setMotion__13daNpc_myna2_cFifi */
void daNpc_myna2_c::setMotion(int i_motion, f32 i_morf, int param_2) {
    s16 motion = i_motion;

    if ((param_2 != 0 || mMotion != motion) && i_motion >= 0 && i_motion < 8) {
        mMotion = motion;
        mMotionMorfOverride = i_morf;
        mMotionPrevPhase = -1;
        mMotionPhase = 0;
    }
}

/* 80A85030-80A85038 001290 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__13daNpc_myna2_cFv */
BOOL daNpc_myna2_c::drawDbgInfo() {
    return FALSE;
}

/* 80A85038-80A8503C 001298 0004+00 1/0 0/0 0/0 .text            drawOtherMdls__13daNpc_myna2_cFv */
void daNpc_myna2_c::drawOtherMdls() {}

/* 80A8503C-80A85094 00129C 0058+00 1/1 0/0 0/0 .text            getTypeFromParam__13daNpc_myna2_cFv
 */
u8 daNpc_myna2_c::getTypeFromParam() {
    switch (fopAcM_GetParam(this) & 0xFF) {
    case 0:
        return 0;
    case 1:
        return 1;
    case 2:
        return 2;
    case 3:
        return 3;
    default:
        return 4;
    }
}

/* 80A85094-80A85160 0012F4 00CC+00 1/1 0/0 0/0 .text            isDelete__13daNpc_myna2_cFv */
int daNpc_myna2_c::isDelete() {
    if (mType == 4 || mType == 0 || mType == 1) {
        return FALSE;
    }

    if (mType == 2) {
        if (strcmp(dComIfGp_getStartStageName(), "F_SP115") == 0 && fopAcM_GetRoomNo(this) == 0 && dComIfGs_getStartPoint() == 20) {
            return FALSE;
        }
    } else if (mType == 3) {
        if (daPy_py_c::checkWolfCargoCarrySceneChange()) {
            return FALSE;
        }
    }

    return TRUE;
}

/* 80A85160-80A85358 0013C0 01F8+00 1/1 0/0 0/0 .text            reset__13daNpc_myna2_cFv */
void daNpc_myna2_c::reset() {
    initialize();
    mLookat.initialize();

    for (int i = 0; i < 1; i++) {
        mActorMgrs[i].initialize();
    }

    mNextAction = NULL;
    mAction = NULL;

    field_0xdf4 = 0;
    field_0xdf8 = 0;
    field_0xdfc = 0;
    field_0xe00 = 0;
    mLookMode = -1;
    mMode = 0;
    mItemPid = fpcM_ERROR_PROCESS_ID_e;

    current.pos = home.pos;
    old.pos = current.pos;

    current.angle.set(0, home.angle.y, 0);
    old.angle = current.angle;
    shape_angle = current.angle;
    mCurAngle = current.angle;
    mOldAngle = mCurAngle;

    speedF = 0.0f;
    speed.setall(0.0f);

    if (mType == 1) {
        current.pos.y += 3000.0f;
    } else if (mType == 2 || mType == 3) {
        current.pos.y += 2000.0f;
    }

    field_0xe10.set(0.0f, 0.0f, 0.0f);
    field_0xe1c.set(0.0f, 0.0f, 0.0f);
    field_0xe28 = 50;
    field_0xe30 = 50.0f;

    if (mType == 1) {
        daNpcF_offTmpBit(0x4A);
    } else if (mType == 3) {
        daNpcF_offTmpBit(0x4B);
    }

    field_0x9ee = true;
}

/* 80A85358-80A855E8 0015B8 0290+00 1/1 0/0 0/0 .text            playMotion__13daNpc_myna2_cFv */
void daNpc_myna2_c::playMotion() {
    daNpcF_anmPlayData dat0 = {0, daNpc_myna2_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat0[] = {&dat0};

    daNpcF_anmPlayData dat1 = {12, daNpc_myna2_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat1[] = {&dat1};

    daNpcF_anmPlayData dat2a = {13, daNpc_myna2_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat2[] = {&dat2a};

    daNpcF_anmPlayData dat3a = {9, daNpc_myna2_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat3b = {12, daNpc_myna2_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat3[] = {&dat3a, &dat3b};

    daNpcF_anmPlayData dat4a = {10, daNpc_myna2_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat4b = {13, daNpc_myna2_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat4[] = {&dat4a, &dat4b};

    daNpcF_anmPlayData dat5a = {11, daNpc_myna2_Param_c::m.common.morf_frame, 1};
    daNpcF_anmPlayData dat5b = {14, daNpc_myna2_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat5[] = {&dat5a, &dat5b};

    daNpcF_anmPlayData dat6 = {14, daNpc_myna2_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat6[] = {&dat6};

    daNpcF_anmPlayData dat7 = {7, daNpc_myna2_Param_c::m.common.morf_frame, 0};
    daNpcF_anmPlayData* pDat7[] = {&dat7};

    daNpcF_anmPlayData** ppDat[8] = {
        pDat0,
        pDat1,
        pDat2,
        pDat3,
        pDat4,
        pDat5,
        pDat6,
        pDat7,
    };

    if (mMotion >= 0 && mMotion < 8) {
        playMotionAnm(ppDat);
    }
}

/* 80A855E8-80A85614 001848 002C+00 2/2 0/0 0/0 .text
 * chkAction__13daNpc_myna2_cFM13daNpc_myna2_cFPCvPvPv_i        */
int daNpc_myna2_c::chkAction(int (daNpc_myna2_c::*i_action)(void*)) {
    return mAction == i_action;
}

/* 80A85614-80A856BC 001874 00A8+00 2/2 0/0 0/0 .text
 * setAction__13daNpc_myna2_cFM13daNpc_myna2_cFPCvPvPv_i        */
int daNpc_myna2_c::setAction(int (daNpc_myna2_c::*i_action)(void*)) {
    mMode = 3;

    if (mAction) {
        (this->*mAction)(NULL);
    }

    mMode = 0;
    mAction = i_action;

    if (mAction) {
        (this->*mAction)(NULL);
    }

    return TRUE;
}

/* 80A856BC-80A857B0 00191C 00F4+00 1/1 0/0 0/0 .text            selectAction__13daNpc_myna2_cFv */
int daNpc_myna2_c::selectAction() {
    mNextAction = NULL;

    if (daNpc_myna2_Param_c::m.common.debug_mode_ON) {
        mNextAction = &daNpc_myna2_c::test;
    } else {
        switch (mType) {
        case 1:
            mNextAction = &daNpc_myna2_c::waitHovering;
            break;
        case 2:
            mNextAction = &daNpc_myna2_c::waitFailure;
            break;
        case 3:
            mNextAction = &daNpc_myna2_c::waitGoal;
            break;
        default:
            mNextAction = &daNpc_myna2_c::wait;
            break;
        }
    }

    return TRUE;
}

/* 80A857B0-80A85894 001A10 00E4+00 1/1 0/0 0/0 .text            doNormalAction__13daNpc_myna2_cFi
 */
void daNpc_myna2_c::doNormalAction(int param_0) {
    if (param_0 != 0 && hitChk2(&mCyl, TRUE, FALSE)) {
        int damage_time;
        if (mCutType == daPy_py_c::CUT_TYPE_TURN_RIGHT) {
            damage_time = 20;
        } else {
            damage_time = daNpc_myna2_Param_c::m.common.damage_time;
        }

        setLookMode(LOOK_RESET);
    } else if (mIsDamaged && mDamageTimer == 0) {
        mMode = 0;
        mIsDamaged = false;
    }

    mOrderEvtNo = 0;

    if (mNextAction) {
        if (mAction == mNextAction) {
            (this->*mAction)(NULL);
        } else {
            setAction(mNextAction);
        }
    }
}

/* 80A85894-80A85BA4 001AF4 0310+00 1/1 0/0 0/0 .text            doEvent__13daNpc_myna2_cFv */
BOOL daNpc_myna2_c::doEvent() {
    BOOL rv = FALSE;

    if (dComIfGp_event_runCheck() != FALSE) {
        dEvent_manager_c& eventManager = dComIfGp_getEventManager();

        if (eventInfo.checkCommandTalk() || eventInfo.checkCommandDemoAccrpt()) {
            mOrderNewEvt = false;
        }

        if (eventInfo.checkCommandTalk()) {
            if (chkAction(&daNpc_myna2_c::talk)) {
                (this->*mAction)(NULL);
            } else if (dComIfGp_event_chkTalkXY() == FALSE || dComIfGp_evmng_ChkPresentEnd()) {
                setAction(&daNpc_myna2_c::talk);
            }

            rv = TRUE;
        } else {
            if (mItemPid != fpcM_ERROR_PROCESS_ID_e) {
                dComIfGp_event_setItemPartnerId(mItemPid);
                mItemPid = fpcM_ERROR_PROCESS_ID_e;
            }

            int staffId = eventManager.getMyStaffId(l_myName, NULL, 0);
            if (staffId != -1) {
                mStaffID = staffId;

                int evtCutNo = eventManager.getMyActIdx(staffId, mEvtCutNameList, 5, FALSE, FALSE);

                JUT_ASSERT(1540, (0 <= evtCutNo) && (evtCutNo < NUM_EVT_CUTS_e));
                JUT_ASSERT(1541, NULL != mEvtCutList[evtCutNo]);

                if ((this->*mEvtCutList[evtCutNo])(staffId)) {
                    eventManager.cutEnd(staffId);
                }

                rv = TRUE;
            }

            if (eventInfo.checkCommandDemoAccrpt() && mEventIdx != -1 && eventManager.endCheck(mEventIdx)) {
                switch (mOrderEvtNo) {
                    case 2:
                        dComIfGp_event_reset();
                        mOrderEvtNo = 0;
                        mEventIdx = -1;
                        dComIfGs_offSwitch(field_0xe0d, fopAcM_GetRoomNo(this));
                        fopAcM_delete(this);
                        break;
                    case 3:
                    case 4:
                        dComIfGp_event_reset();
                        mOrderEvtNo = 0;
                        mEventIdx = -1;
                        fopAcM_delete(this);
                        break;
                    default:
                        dComIfGp_event_reset();
                        mOrderEvtNo = 0;
                        mEventIdx = -1;
                        break;
                }
            }
        }

        int i_expression, i_motion;
        if (ctrlMsgAnm(i_expression, i_motion, this, FALSE) && !field_0x9eb) {
            setMotion(i_motion, -1.0f, 0);
        }
    } else {
        mMsgTimer = 0;

        if (mStaffID != -1) {
            mAction = NULL;
            mStaffID = -1;
        }
    }

    return rv;
}

/* 80A85BA4-80A85BC8 001E04 0024+00 7/7 0/0 0/0 .text            setLookMode__13daNpc_myna2_cFi */
void daNpc_myna2_c::setLookMode(int i_lookMode) {
    if (i_lookMode >= 0 && i_lookMode < 4 && i_lookMode != mLookMode) {
        mLookMode = i_lookMode;
    }
}

/* 80A85BC8-80A85C60 001E28 0098+00 1/0 0/0 0/0 .text            wait__13daNpc_myna2_cFPv */
int daNpc_myna2_c::wait(void* param_0) {
    switch (mMode) {
    case 0:
        setMotion(0, -1.0f, 0);
        setLookMode(LOOK_NONE);
        mTurnMode = 0;
        mMode = 2;
        /* fallthrough */
    case 2:
        fopAcM_delete(this);
        return 1;
    case 3:
        break;
    }

    return 1;
}

/* 80A85C60-80A8613C 001EC0 04DC+00 1/0 0/0 0/0 .text            waitHovering__13daNpc_myna2_cFPv */
int daNpc_myna2_c::waitHovering(void* param_0) {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz sp2C(player->current.pos);

    switch (mMode) {
    case 0:
        setMotion(7, -1.0f, 0);
        setLookMode(LOOK_NONE);
        mTurnMode = 0;
        field_0x9ea = 1;
        mMode = 2;
        /* fallthrough */
    case 2: {
        mSound.playSumomoBgm((sp2C - current.pos).abs());
        calcHovering(0, 0);

        if ((sp2C - current.pos).absXZ() >= daNpc_myna2_Param_c::m.field_0x70 && fopAcM_CheckCondition(this, 4)) {
            dComIfGs_offSwitch(field_0xe0d, fopAcM_GetRoomNo(this));
            daNpcF_offTmpBit(0x4A);
            fopAcM_delete(this);
            return 1;
        }
    
        if (!daNpcF_chkEvtBit(0x11D) && daPy_py_c::checkNowWolf()) {
            if (((sp2C - current.pos).absXZ() <= daNpc_myna2_Param_c::m.field_0x6c && (home.pos.y - sp2C.y) < 100.0f) && !player->checkPlayerFly() && daPy_getPlayerActorClass()->checkSwimUp()) {
                mOrderEvtNo = 1;
            }
        }
        break;
    }
    case 3:
        break;  
    }

    return 1;
}

/* 80A8613C-80A86194 00239C 0058+00 1/1 0/0 0/0 .text            s_sub__FPvPv */
static void* s_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_MYNA2 && ((daNpc_myna2_c*)i_actor)->getType() == 1) {
        return i_actor;
    }

    return NULL;
}

/* 80A86194-80A862BC 0023F4 0128+00 1/0 0/0 0/0 .text            waitFailure__13daNpc_myna2_cFPv */
int daNpc_myna2_c::waitFailure(void* param_0) {
    switch (mMode) {
    case 0:
        setMotion(7, -1.0f, 0);
        setLookMode(LOOK_NONE);
        mTurnMode = 0;
        mMode = 2;
        break;
    case 2: {
        mSound.playSumomoBgm(0);

        if (!dComIfGs_isSwitch(field_0xe0d, fopAcM_GetRoomNo(this))) {
            dComIfGs_onSwitch(field_0xe0d, fopAcM_GetRoomNo(this));
        }
    
        daNpc_myna2_c* myna = (daNpc_myna2_c*)fpcM_Search(s_sub, this);
        if (myna != NULL) {
            fopAcM_delete(myna);
        }
    
        if (dComIfGp_getEvent().isOrderOK()) {
            mOrderEvtNo = 2;
            mOrderNewEvt = 1;
        }
        break;
    }
    case 3:
        break;
    }

    return 1;
}

/* 80A862BC-80A86400 00251C 0144+00 1/0 0/0 0/0 .text            waitGoal__13daNpc_myna2_cFPv */
int daNpc_myna2_c::waitGoal(void* param_0) {
    switch (mMode) {
    case 0:
        setMotion(7, -1.0f, 0);
        setLookMode(0);
        mTurnMode = 0;
        mMode = 2;
        break;
    case 2:
        mSound.playSumomoBgm(0);

        if (!daPy_getPlayerActorClass()->checkCargoCarry() && dComIfGp_getEvent().isOrderOK()) {
            if (dComIfGp_getMessageCountNumber() >= 10000 && (!daNpcF_chkEvtBit(0x11E) || dComIfGp_getMessageCountNumber() > dComIfGs_getBalloonScore() || (dComIfGp_getMessageCountNumber() >= 0xF00E))) {
                mOrderEvtNo = 4;
            } else {
                mOrderEvtNo = 3;
            }

            mOrderNewEvt = 1;
        }
        break;
    case 3:
        break;
    }

    return 1;
}

/* 80A86400-80A865FC 002660 01FC+00 2/0 0/0 0/0 .text            talk__13daNpc_myna2_cFPv */
int daNpc_myna2_c::talk(void* param_0) {
    int var_r30 = 0;
    int var_r29 = 0;

    switch (mMode) {
    case 0:
        if (!mIsDamaged) {
            initTalk(field_0xe04, NULL);
            mTurnMode = 0;
            mAnm_p->setPlaySpeed(1.0f);
            mMode = 2;
        case 2:
            mSound.playSumomoBgm(0);

            if (field_0x9ea != 0) {
                var_r29 = 1;
                if (mType != 0) {
                    cLib_addCalcAngleS2(&current.angle.z, 0, 0x10, 0x200);
                    cLib_addCalcAngleS2(&current.angle.x, 0, 0x10, 0x200);
                    shape_angle = mCurAngle = current.angle;
                    calcHovering(0, 1);
                }
            } else {
                setLookMode(LOOK_PLAYER_TALK);
                mActorMgrs[0].entry(daPy_getPlayerActorClass());

                if (mCurAngle.y == fopAcM_searchPlayerAngleY(this)) {
                    var_r29 = 1;
                } else if (step(fopAcM_searchPlayerAngleY(this), -1, -1, 0xF)) {
                    mTurnMode = 0;
                }
            }

            if (var_r29 && talkProc(NULL, 1, NULL)) {
                var_r30 = 1;
            }

            if (var_r30 != 0) {
                mMode = 3;
                if (field_0x9ec == 0) {
                    dComIfGp_event_reset();
                }
                field_0x9ec = 0;
            }
        }
        break;
    case 3:
        break;
    }

    return var_r30;
}

/* 80A865FC-80A866B0 00285C 00B4+00 2/0 0/0 0/0 .text            test__13daNpc_myna2_cFPv */
int daNpc_myna2_c::test(void* param_0) {
    switch (mMode) {
    case 0:
        speedF = 0.0f;
        speed.setall(0.0f);
        mMode = 2;
        /* fallthrough */
    case 2:
        setMotion(daNpc_myna2_Param_c::m.common.motion, daNpc_myna2_Param_c::m.common.morf_frame, 0);
        setLookMode(daNpc_myna2_Param_c::m.common.look_mode);
        mOrderEvtNo = 0;
        attention_info.flags = 0;
        break;
    case 3:
        break;
    }

    return 1;
}

/* 80A866B0-80A8684C 002910 019C+00 1/0 0/0 0/0 .text            ECut_firstTalk__13daNpc_myna2_cFi
 */
int daNpc_myna2_c::ECut_firstTalk(int i_staffId) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    int rt = 0;
    int prm = -1;

    mSound.playSumomoBgm(0);

    int* idata = dComIfGp_evmng_getMyIntegerP(i_staffId, "prm");
    if (idata != NULL) {
        prm = *idata;
    }

    if (eventManager.getIsAddvance(i_staffId)) {
        switch (prm) {
        case 0:
            daPy_getPlayerActorClass()->changeDemoMoveAngle(fopAcM_searchPlayerAngleY(this) + 0x8000);
            break;
        case 10:
            break;
        case 20:
            initTalk(field_0xe04, NULL);
            break;
        }
    }

    switch (prm) {
    case 0:
        rt = 1;
        calcHovering(0, 1);
        break;
    case 10:
        calcHovering(0, 1);

        if (current.pos.y <= 160.0f + home.pos.y) {
            rt = 1;
        }
        break;
    case 20:
        calcHovering(0, 1);
        if (talkProc(NULL, 1, NULL)) {
            rt = 1;
        }
        break;
    default:
        rt = 1;
        break;
    }

    return rt;
}

/* 80A8684C-80A86A0C 002AAC 01C0+00 1/0 0/0 0/0 .text            ECut_gameFailure__13daNpc_myna2_cFi
 */
int daNpc_myna2_c::ECut_gameFailure(int i_staffId) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    int rt = 0;
    int prm = -1;

    mSound.playSumomoBgm(0);

    int* idata = dComIfGp_evmng_getMyIntegerP(i_staffId, "prm");
    if (idata != NULL) {
        prm = *idata;
    }

    if (eventManager.getIsAddvance(i_staffId)) {
        switch (prm) {
        case 0:
        case 20:
            break;
        case 10:
            initTalk(field_0xe04, NULL);
            break;
        }
    }

    int choiceNo;
    switch (prm) {
    case 0:
        calcHovering(0, 1);
        if (current.pos.y <= 160.0f + home.pos.y) {
            rt = 1;
        }
        break;
    case 10:
        calcHovering(0, 1);
        if (talkProc(NULL, 1, NULL)) {
            choiceNo = mFlow.getChoiceNo();
            if (choiceNo == 0) {
                dStage_changeScene(6, 0.0f, 10, fopAcM_GetRoomNo(this), 0, -1);
            } else {
                rt = 1;
            }
        }
        break;
    case 20:
        if (current.pos.y > 500.0f + home.pos.y) {
            rt = 1;
        }
        calcHovering(1, 0);
        break;
    default:
        rt = 1;
        break;
    }

    return rt;
}

/* 80A86A0C-80A86BEC 002C6C 01E0+00 1/0 0/0 0/0 .text            ECut_gameGoal__13daNpc_myna2_cFi */
int daNpc_myna2_c::ECut_gameGoal(int i_staffId) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    int rt = 0;
    int prm = -1;

    mSound.playSumomoBgm(0);

    int* idata = dComIfGp_evmng_getMyIntegerP(i_staffId, "prm");
    if (idata != NULL) {
        prm = *idata;
    }

    if (eventManager.getIsAddvance(i_staffId)) {
        switch (prm) {
        case 0:
            if (dComIfGp_getMessageCountNumber() > dComIfGs_getBalloonScore()) {
                dComIfGs_setBalloonScore(dComIfGp_getMessageCountNumber());
            }
            break;
        case 10:
            initTalk(field_0xe04, NULL);
            break;
        case 20:
            break;
        }
    }

    int choiceNo;
    switch (prm) {
    case 0:
        calcHovering(0, 1);
        if (current.pos.y <= 150.0f + home.pos.y) {
            rt = 1;
        }
        break;
    case 10:
        calcHovering(0, 1);
        if (talkProc(NULL, 1, NULL)) {
            choiceNo = mFlow.getChoiceNo();
            if (choiceNo == 0) {
                dStage_changeScene(11, 0.0f, 10, fopAcM_GetRoomNo(this), 0, -1);
            } else {
                rt = 1;
            }
        }
        break;
    case 20:
        if (current.pos.y > 500.0f + home.pos.y) {
            rt = 1;
        }
        calcHovering(1, 0);
        break;
    default:
        rt = 1;
        break;
    }

    return rt;
}

/* 80A86BEC-80A86E8C 002E4C 02A0+00 3/0 0/0 0/0 .text ECut_gameGoalSuccess__13daNpc_myna2_cFi */
int daNpc_myna2_c::ECut_gameGoalSuccess(int i_staffId) {
    dEvent_manager_c& eventManager = dComIfGp_getEventManager();
    int rt = 0;
    int prm = -1;

    mSound.playSumomoBgm(0);

    int* idata = dComIfGp_evmng_getMyIntegerP(i_staffId, "prm");
    if (idata != NULL) {
        prm = *idata;
    }

    if (eventManager.getIsAddvance(i_staffId)) {
        switch (prm) {
        case 0: 
            daNpcF_offTmpBit(0xF);
            if (dComIfGp_getMessageCountNumber() > dComIfGs_getBalloonScore()) {
                dComIfGs_setBalloonScore(dComIfGp_getMessageCountNumber());
                daNpcF_onTmpBit(0x4B);
            }
            break;
        case 10:
            initTalk(field_0xe04, NULL);
            break;
        case 20: {
            int itemNo = 0;
            if (mFlow.getEventId(&itemNo) == 1) {
                mItemPid = fopAcM_createItemForPresentDemo(&current.pos, itemNo, 0, -1, -1, NULL, NULL);
            }
            break;
        }
        case 25:
            initTalk(field_0xe04, NULL);
            break;
        case 30:
            break;
        default:
            break;
        }
    }

    int choiceNo;
    switch (prm) {
    case 0:
        calcHovering(0, 1);
        if (current.pos.y <= 150.0f + home.pos.y) {
            rt = 1;
        }
        break;
    case 10:
        calcHovering(0, 1);
        if (talkProc(NULL, 1, NULL)) {
            rt = 1;
        }
        break;
    case 20:
        field_0x9eb = 1;
        calcHovering(0, 1);
        rt = 1;
        break;
    case 25:
        calcHovering(0, 1);
        if (talkProc(NULL, 1, NULL)) {
            choiceNo = mFlow.getChoiceNo();
            if (choiceNo == 0) {
                dStage_changeScene(11, 0.0f, 10, fopAcM_GetRoomNo(this), 0, -1);
            } else {
                rt = 1;
            }
        }
        break;
    case 30:
        field_0x9eb = 1;
        if (current.pos.y > 500.0f + home.pos.y) {
            rt = 1;
        }
        calcHovering(1, 0);
        break;
    default:
        rt = 1;
        break;
    }

    return rt;
}

/* 80A86E8C-80A879A0 0030EC 0B14+00 6/6 0/0 0/0 .text            calcHovering__13daNpc_myna2_cFii */
void daNpc_myna2_c::calcHovering(int param_0, int param_1) {
    if (param_0 != 0) {
        field_0xe1c.set(0.0f, 5.0f, 0.0f);
        cLib_addCalcPos2(&field_0xe10, field_0xe1c, 0.1f, 0.1f);
        mAnm_p->setPlaySpeed(1.5f);
    } else if (current.pos.y > 500.0f + home.pos.y) {
        field_0xe10.y = -25.0f;
        mAnm_p->setPlaySpeed(0.5f);
    } else {
        cXyz sp78(home.pos);
        sp78.y += 120.0f;

        if (param_1 == 1) {
            cXyz sp6C = current.pos - sp78;
            if (fabsf(sp6C.y) > field_0xe30) {
                if (sp6C.y > 0.0f) {
                    field_0xe1c.y = -cLib_getRndValue<f32>(0.5f, 1.0f);
                } else {
                    field_0xe1c.y = cLib_getRndValue<f32>(0.5f, 1.0f);
                }
                field_0xe28 = cLib_getRndValue<int>(20, 20);
            } else if (sp6C.absXZ() > 50.0f) {
                sp6C.y = 0.0f;
                sp6C.normalizeZP();
                sp6C *= cLib_getRndValue<f32>(0.2f, 0.2f);

                field_0xe1c.x = -sp6C.x;
                field_0xe1c.z = -sp6C.z;
                field_0xe28 = cLib_getRndValue<int>(20, 20);
            } else if (cLib_calcTimer<int>(&field_0xe28) == 0) {
                field_0xe1c.x = cLib_getRndValue<f32>(-0.2f, 0.4f);
                field_0xe1c.y = cLib_getRndValue<f32>(0.5f, 0.5f);
                field_0xe1c.z = cLib_getRndValue<f32>(-0.2f, 0.4f);

                field_0xe1c.normalizeZP();
                field_0xe1c *= cLib_getRndValue<f32>(-1.5f, 3.0f);
                field_0xe28 = cLib_getRndValue<int>(20, 20);
                field_0xe30 = cLib_getRndValue<f32>(40.0f, 20.0f);
            }
        } else {
            if ((sp78 - current.pos).abs() > 70.0f) {
                field_0xe1c = sp78 - current.pos;
                field_0xe1c.normalizeZP();
                field_0xe1c *= 3.0f;

                field_0xe28 = cLib_getRndValue<int>(20, 20);
                field_0xe2c = 0;
            } else if (cLib_calcTimer<int>(&field_0xe28) == 0) {
                field_0xe1c.x = cLib_getRndValue<f32>(-0.7f, 1.4f);
                field_0xe1c.y = cLib_getRndValue<f32>(-1.0f, 2.0f);
                field_0xe1c.z = cLib_getRndValue<f32>(-0.7f, 1.4f);
                field_0xe1c.normalizeZP();
                field_0xe1c *= cLib_getRndValue<f32>(0.0f, 3.0f);
                field_0xe28 = cLib_getRndValue<int>(30, 120);
            }

            if (((daPy_getPlayerActorClass()->current.pos - current.pos).abs() < 100.0f || mCyl.ChkCoHit()) && field_0xe1c.y < 0.1) {
                field_0xe1c.y = cLib_getRndValue<f32>(0.1f, 1.5f);
                field_0xe28 = cLib_getRndValue<int>(20, 20);
                field_0xe2c = 10;
            }
        }

        cLib_calcTimer<int>(&field_0xe2c);

        if (field_0xe10.abs() > 3.0f || field_0xe2c != 0) {
            cLib_addCalcPos2(&field_0xe10, field_0xe1c, 0.5f, 1.0f);
        } else {
            cLib_addCalcPos2(&field_0xe10, field_0xe1c, 0.1f, 0.1f);
        }

        mAnm_p->setPlaySpeed(0.5f + ((3.0f + field_0xe1c.y) / 6.0f));
    }

    current.pos += field_0xe10;
    cLib_addCalcAngleS2(&current.angle.y, fopAcM_searchPlayerAngleY(this), 0x10, 0x200);
    
    s16 sp14 = (current.angle.y + cM_atan2s(field_0xe10.x, field_0xe10.z));
    f32 temp_f30 = field_0xe10.absXZ() * cM_scos(sp14);
    f32 temp_f29 = field_0xe10.absXZ() * cM_ssin(sp14);

    cLib_addCalcAngleS2(&current.angle.z, (4096.0f * temp_f30) / 3.0f, 0x10, 0x200);
    cLib_addCalcAngleS2(&current.angle.x, (6144.0f * temp_f29) / 3.0f, 0x10, 0x200);
    shape_angle = mCurAngle = current.angle;
}

/* 80A879A0-80A879C0 003C00 0020+00 1/0 0/0 0/0 .text            daNpc_myna2_Create__FPv */
static int daNpc_myna2_Create(void* i_this) {
    return ((daNpc_myna2_c*)i_this)->create();
}

/* 80A879C0-80A879E0 003C20 0020+00 1/0 0/0 0/0 .text            daNpc_myna2_Delete__FPv */
static int daNpc_myna2_Delete(void* i_this) {
    return ((daNpc_myna2_c*)i_this)->Delete();
}

/* 80A879E0-80A87A00 003C40 0020+00 1/0 0/0 0/0 .text            daNpc_myna2_Execute__FPv */
static int daNpc_myna2_Execute(void* i_this) {
    return ((daNpc_myna2_c*)i_this)->Execute();
}

/* 80A87A00-80A87A20 003C60 0020+00 1/0 0/0 0/0 .text            daNpc_myna2_Draw__FPv */
static int daNpc_myna2_Draw(void* i_this) {
    return ((daNpc_myna2_c*)i_this)->Draw();
}

/* 80A87A20-80A87A28 003C80 0008+00 1/0 0/0 0/0 .text            daNpc_myna2_IsDelete__FPv */
static int daNpc_myna2_IsDelete(void* i_this) {
    return TRUE;
}

/* 80A889C4-80A889E4 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_myna2_MethodTable */
static actor_method_class daNpc_myna2_MethodTable = {
    (process_method_func)daNpc_myna2_Create,
    (process_method_func)daNpc_myna2_Delete,
    (process_method_func)daNpc_myna2_Execute,
    (process_method_func)daNpc_myna2_IsDelete,
    (process_method_func)daNpc_myna2_Draw,
};

/* 80A889E4-80A88A14 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_MYNA2 */
extern actor_process_profile_definition g_profile_MYNA2 = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_MYNA2,               // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daNpc_myna2_c),    // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  393,                      // mPriority
  &daNpc_myna2_MethodTable, // sub_method
  0x08044100,               // mStatus
  fopAc_NPC_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

AUDIO_INSTANCES
