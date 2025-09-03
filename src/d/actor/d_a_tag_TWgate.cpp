//
// d_a_tag_TWgate
//

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_TWgate.h"
#include "d/actor/d_a_player.h"
#include "d/d_com_inf_game.h"
#include "d/d_msg_object.h"
#include "f_op/f_op_actor_mng.h"

struct daTagTWGate_zevParam {
    /* 0x00 */ char* mArcName;
    /* 0x04 */ char* mEventName;
    /* 0x08 */ char* mTalkEventName;
    /* 0x0C */ char* mInEventName;
    /* 0x10 */ int mLv;
    /* 0x14 */ char* mStage;
    /* 0x18 */ s16 mPoint;
    /* 0x1A */ s8 mRoomNo;
    /* 0x1B */ s8 mLayer;
};

/* 80D525F8-80D52604 000078 000C+00 1/0 0/0 0/0 .text            initWait__13daTagTWGate_cFv */
void daTagTWGate_c::initWait() {
    mEventID = -1;
}

/* 80D557AC-80D557B0 000000 0001+03 5/5 0/0 0/0 .rodata          mAttr__13daTagTWGate_c */
u8 const daTagTWGate_c::mAttr[1] = {
    0x00,
};

/* 80D557B0-80D55820 -00001 0070+00 14/18 0/0 0/0 .rodata          l_zevParamTbl */
static daTagTWGate_zevParam const l_zevParamTbl[4] = {
    {
        "TWGate_FL",
        "TW_GATE_FILONE",
        "TW_GATE_FILONE_TALK",
        "TW_GATE_FILONE_IN",
        0,
        "F_SP108",
        23,
        0,
        10,
    },
    {
        "TWGate_OD",
        "TW_GATE_ORDIN",
        "TW_GATE_ORDIN_TALK",
        "TW_GATE_ORDIN_IN",
        1,
        "F_SP121",
        10,
        2,
        14,
    },
    {
        "TWGate_RN",
        "TW_GATE_RANAIL",
        "TW_GATE_RANAIL_TALK",
        "TW_GATE_RANAIL_IN",
        2,
        "F_SP121",
        10,
        9,
        14,
    },
    {
        "TWGate_HY",
        "TW_GATE_HYRAL",
        "TW_GATE_HYRAL_TALK",
        "TW_GATE_HYRAL_IN",
        4,
        "F_SP121",
        10,
        2,
        14,
    },
};

/* 80D55994-80D55998 -00001 0004+00 12/12 0/0 0/0 .data            l_myName */
static const char* l_myName = "Gate";

/* 80D55AD0-80D55C08 00015C 0138+00 14/15 0/0 0/0 .data            ActionTable__13daTagTWGate_c */
actionFunc daTagTWGate_c::ActionTable[13][2] = {
    {&daTagTWGate_c::initWait, &daTagTWGate_c::executeWait},
    {&daTagTWGate_c::initDemoFilone1, &daTagTWGate_c::executeDemoFilone1},
    {&daTagTWGate_c::initDemoFilone2, &daTagTWGate_c::executeDemoFilone2},
    {&daTagTWGate_c::initDemoFilone3, &daTagTWGate_c::executeDemoFilone3},
    {&daTagTWGate_c::initDemoOrdin1, &daTagTWGate_c::executeDemoOrdin1},
    {&daTagTWGate_c::initDemoOrdin2, &daTagTWGate_c::executeDemoOrdin2},
    {&daTagTWGate_c::initDemoOrdin3, &daTagTWGate_c::executeDemoOrdin3},
    {&daTagTWGate_c::initDemoRanail1, &daTagTWGate_c::executeDemoRanail1},
    {&daTagTWGate_c::initDemoRanail2, &daTagTWGate_c::executeDemoRanail2},
    {&daTagTWGate_c::initDemoRanail3, &daTagTWGate_c::executeDemoRanail3},
    {&daTagTWGate_c::initDemoHyral1, &daTagTWGate_c::executeDemoHyral1},
    {&daTagTWGate_c::initDemoHyral2, &daTagTWGate_c::executeDemoHyral2},
    {&daTagTWGate_c::initDemoHyral3, &daTagTWGate_c::executeDemoHyral3},
};

/* 80D52604-80D528F0 000084 02EC+00 1/0 0/0 0/0 .text            executeWait__13daTagTWGate_cFv */
void daTagTWGate_c::executeWait() {
    f32 radius = pow(scale.x * 100.0f, 2.0f);
    f32 distance = fopAcM_searchActorDistanceXZ2(this, (fopAc_ac_c*)dComIfGp_getPlayer(0));

    if (distance < radius) {
        if (field_0x5de == 0) {
            field_0x5de = 1;

            switch (mType) {
            case TYPE_FILONE:
                if (fopAcM_isSwitch(this, getSwitch())) {
                    mActionID = ACT_DEMO_FILONE_2;
                    mAction = &ActionTable[mActionID][0];
                    (this->**mAction)();
                } else {
                    mActionID = ACT_DEMO_FILONE_1;
                    mAction = &ActionTable[mActionID][0];
                    (this->**mAction)();
                }
                break;
            case TYPE_ORDIN:
                if (fopAcM_isSwitch(this, getSwitch())) {
                    mActionID = ACT_DEMO_ORDIN_2;
                    mAction = &ActionTable[mActionID][0];
                    (this->**mAction)();
                } else {
                    mActionID = ACT_DEMO_ORDIN_1;
                    mAction = &ActionTable[mActionID][0];
                    (this->**mAction)();
                }
                break;
            case TYPE_RANAIL:
                if (fopAcM_isSwitch(this, getSwitch())) {
                    mActionID = ACT_DEMO_RANAIL_2;
                    mAction = &ActionTable[mActionID][0];
                    (this->**mAction)();
                } else {
                    mActionID = ACT_DEMO_RANAIL_1;
                    mAction = &ActionTable[mActionID][0];
                    (this->**mAction)();
                }
                break;
            case TYPE_HYRAL:
                if (fopAcM_isSwitch(this, getSwitch())) {
                    mActionID = ACT_DEMO_HYRAL_2;
                    mAction = &ActionTable[mActionID][0];
                    (this->**mAction)();
                } else {
                    mActionID = ACT_DEMO_HYRAL_1;
                    mAction = &ActionTable[mActionID][0];
                    (this->**mAction)();
                }
                break;
            }
        }
    } else {
        field_0x5de = 0;
    }
}

/* 80D528F0-80D5297C 000370 008C+00 1/0 0/0 0/0 .text            initDemoFilone1__13daTagTWGate_cFv
 */
void daTagTWGate_c::initDemoFilone1() {
    eventInfo.setArchiveName(l_zevParamTbl[mType].mArcName);
    mEventID = dComIfGp_getEventManager().getEventIdx(this, l_zevParamTbl[mType].mEventName, -1);
    fopAcM_orderOtherEventId(this, mEventID, -1, -1, 4, 1);
}

/* 80D5297C-80D52AF4 0003FC 0178+00 1/0 0/0 0/0 .text executeDemoFilone1__13daTagTWGate_cFv */
void daTagTWGate_c::executeDemoFilone1() {
    dEvent_manager_c& event_manager = dComIfGp_getEventManager();
    int staffId = event_manager.getMyStaffId(l_myName, NULL, 0);

    if (staffId != -1) {
        int* cutName = (int*)event_manager.getMyNowCutName(staffId);

        if (event_manager.getIsAddvance(staffId)) {
            switch (*cutName) {
            case 0x30303031:
                dComIfGp_getEvent().setSkipProc(this, dEv_noFinishSkipProc, 0);
                break;
            }
        }

        switch (*cutName) {
        case 0x30303031:
            if (dComIfGp_getEvent().chkFlag2(8)) {
                dComIfGp_getEvent().onSkipFade();
                mActionID = ACT_DEMO_FILONE_2;
                mAction = ActionTable[mActionID];
                (this->**mAction)();
            }
            event_manager.cutEnd(staffId);
        }

        if (eventInfo.checkCommandDemoAccrpt() && mEventID != -1 &&
            event_manager.endCheck(mEventID))
        {
            mActionID = ACT_DEMO_FILONE_2;
            mAction = ActionTable[mActionID];
            (this->**mAction)();
        }
    }
}

/* 80D52AF4-80D52BF0 000574 00FC+00 1/0 0/0 0/0 .text            initDemoFilone2__13daTagTWGate_cFv
 */
void daTagTWGate_c::initDemoFilone2() {
    fopAcM_onSwitch(this, getSwitch());
    eventInfo.setArchiveName(l_zevParamTbl[mType].mArcName);
    dComIfG_play_c& play = g_dComIfG_gameInfo.play;
    dEvent_manager_c& mng = play.getEvtManager();
    mng.setObjectArchive(eventInfo.getArchiveName());
    mEventID =
        mng.getEventIdx(this, l_zevParamTbl[mType].mTalkEventName, -1);

    if (play.getEvent().mEventStatus != 0) {
        dComIfGp_getEvent().reset(this);
        fopAcM_orderChangeEventId(this, mEventID, 1, -1);
    } else {
        fopAcM_orderOtherEventId(this, mEventID, -1, -1, 4, 1);
    }
}

/* 80D52BF0-80D52DB4 000670 01C4+00 1/0 0/0 0/0 .text executeDemoFilone2__13daTagTWGate_cFv */
void daTagTWGate_c::executeDemoFilone2() {
    s32 staffId = dComIfGp_evmng_getMyStaffId(l_myName, NULL, 0);

    if (staffId != -1) {
        int* cutName = (int*)dComIfGp_getEventManager().getMyNowCutName(staffId);

        if (dComIfGp_evmng_getIsAddvance(staffId)) {
            switch (*cutName) {
            case '0002':
                initTalk(0xBC1, NULL);
                break;
            case '0001':
            case '0003':
                break;
            }
        }

        switch (*cutName) {
        case '0001':
        case '0003':
            dComIfGp_evmng_cutEnd(staffId);
            break;
        case '0002':
            if (talkProc(NULL, 1, NULL)) {
                if (mMsgFlow.getChoiceNo() == 0) {
                    mActionID = ACT_DEMO_FILONE_3;
                    mAction = ActionTable[mActionID];
                    (this->**mAction)();
                }
                dComIfGp_evmng_cutEnd(staffId);
            }
            break;
        }

        if (eventInfo.checkCommandDemoAccrpt() && mEventID != -1 &&
            dComIfGp_evmng_endCheck(mEventID)) {
            dComIfGp_getEvent().reset();
            field_0x5e0 = 0;
            mActionID = ACT_WAIT;
            mAction = ActionTable[mActionID];
            (this->**mAction)();
        }
    }
}

/* 80D52DB4-80D52E7C 000834 00C8+00 1/0 0/0 0/0 .text            initDemoFilone3__13daTagTWGate_cFv
 */
void daTagTWGate_c::initDemoFilone3() {
    field_0x5de = 1;
    mIsWolf = (dComIfGp_getLinkPlayer()->mNoResetFlg1 >> 25) & 1;  // checking if wolf?
    eventInfo.setArchiveName(l_zevParamTbl[mType].mArcName);
    dComIfGp_getEventManager().setObjectArchive(eventInfo.getArchiveName());
    mEventID =
        dComIfGp_getEventManager().getEventIdx(this, l_zevParamTbl[mType].mInEventName, -1);
    dComIfGp_getEvent().reset(this);
    fopAcM_orderChangeEventId(this, mEventID, 1, -1);
}

/* 80D52E7C-80D53250 0008FC 03D4+00 1/0 0/0 0/0 .text executeDemoFilone3__13daTagTWGate_cFv */
void daTagTWGate_c::executeDemoFilone3() {
    s32 staffId = dComIfGp_evmng_getMyStaffId(l_myName, NULL, 0);

    if (staffId != -1) {
        int* cutName = (int*)dComIfGp_getEventManager().getMyNowCutName(staffId);

        if (dComIfGp_evmng_getIsAddvance(staffId)) {
            switch (*cutName) {
            case 0x30303031:
                break;
            case 0x30303032:
                dComIfGp_getEvent().setSkipProc(this, dEv_noFinishSkipProc, 0);
                field_0x5e1 = 0;
                break;
            case 0x30303033:
                initBaseMtx();
                mpMorf->setPlaySpeed(1.0f);
                field_0x5e0 = 1;
                break;
            }
        }

        switch (*cutName) {
        case 0x30303031:
            int modelSts = downloadModels();
            if (modelSts == 1) {
                dComIfGp_evmng_cutEnd(staffId);
            } else if (modelSts == -1) {
                dComIfGp_setNextStage(l_zevParamTbl[mType].mStage,
                                      l_zevParamTbl[mType].mPoint,
                                      l_zevParamTbl[mType].mRoomNo,
                                      l_zevParamTbl[mType].mLayer);
            }
            break;
        case 0x30303032:
            if (dComIfGp_getEvent().chkFlag2(8)) {
                dComIfGp_getEvent().onSkipFade();
                dComIfGp_setNextStage(l_zevParamTbl[mType].mStage,
                                      l_zevParamTbl[mType].mPoint,
                                      l_zevParamTbl[mType].mRoomNo,
                                      l_zevParamTbl[mType].mLayer);
            }

            u8 old_5e1 = field_0x5e1;
            field_0x5e1++;

            if (old_5e1 == 43) {
                daPy_py_c* player = daPy_getPlayerActorClass();
                csXyz sxyz(0, player->shape_angle.y + 0x8000, 0);

                mDoMtx_stack_c::transS(player->current.pos);
                mDoMtx_stack_c::YrotM(sxyz.y);
                mDoMtx_stack_c::transM(0.0f, 240.0f, -710.0f);
                
                cXyz pos;
                pos.x = mDoMtx_stack_c::get()[0][3];
                pos.y = mDoMtx_stack_c::get()[1][3];
                pos.z = mDoMtx_stack_c::get()[2][3];
                dComIfGp_particle_set(0x86C5, &pos, &sxyz, NULL);
                mDoAud_seStart(Z2SE_OBJ_DARK_GATE_RIPPLE, &pos, 0, 0);
                dComIfGp_evmng_cutEnd(staffId);
            }
            break;
        case 0x30303033:
            if (dComIfGp_getEvent().chkFlag2(8)) {
                dComIfGp_getEvent().onSkipFade();
                dComIfGp_setNextStage(l_zevParamTbl[mType].mStage,
                                      l_zevParamTbl[mType].mPoint,
                                      l_zevParamTbl[mType].mRoomNo,
                                      l_zevParamTbl[mType].mLayer);
            }

            if (mpMorf->isStop()) {
                dComIfGp_evmng_cutEnd(staffId);
            }
            break;
        }

        if (eventInfo.checkCommandDemoAccrpt() && mEventID != -1 &&
            dComIfGp_evmng_endCheck(mEventID)) {
            dComIfGp_getEvent().reset();
            field_0x5e0 = 0;
            mActionID = ACT_WAIT;
            mAction = ActionTable[mActionID];
            (this->**mAction)();
        }
    }
}

/* 80D53250-80D532DC 000CD0 008C+00 1/0 0/0 0/0 .text            initDemoOrdin1__13daTagTWGate_cFv
 */
void daTagTWGate_c::initDemoOrdin1() {
    eventInfo.setArchiveName(l_zevParamTbl[mType].mArcName);
    mEventID = dComIfGp_getEventManager().getEventIdx(this, l_zevParamTbl[mType].mEventName, -1);
    fopAcM_orderOtherEventId(this, mEventID, -1, -1, 4, 1);
}

/* 80D532DC-80D53454 000D5C 0178+00 1/0 0/0 0/0 .text executeDemoOrdin1__13daTagTWGate_cFv */
void daTagTWGate_c::executeDemoOrdin1() {
    dEvent_manager_c& evtMng = dComIfGp_getEventManager();
    int staffId = evtMng.getMyStaffId(l_myName, NULL, 0);
    if (staffId != -1) {
        int* cutName = (int*)evtMng.getMyNowCutName(staffId);
        if (evtMng.getIsAddvance(staffId)) {
            switch (*cutName) {
            case '0001':
                dComIfGp_getEvent().startCheckSkipEdge(this);
                break;
            }
        }
        switch (*cutName) {
        case '0001':
            if (dComIfGp_getEvent().checkSkipEdge()) {
                dComIfGp_getEvent().onSkipFade();
                setAction(ACT_DEMO_ORDIN_2);
            }
            evtMng.cutEnd(staffId);
            break;
        }
        if (eventInfo.checkCommandDemoAccrpt() && mEventID != -1 && evtMng.endCheck(mEventID)) {
            setAction(ACT_DEMO_ORDIN_2);
        }
    }
}

/* 80D53454-80D53550 000ED4 00FC+00 1/0 0/0 0/0 .text            initDemoOrdin2__13daTagTWGate_cFv
 */
void daTagTWGate_c::initDemoOrdin2() {
    fopAcM_onSwitch(this, getSwitch());
    eventInfo.setArchiveName(l_zevParamTbl[mType].mArcName);
    dComIfG_play_c& play = g_dComIfG_gameInfo.play;
    dEvent_manager_c& mng = play.getEvtManager();
    mng.setObjectArchive(eventInfo.getArchiveName());
    mEventID = mng.getEventIdx(this, l_zevParamTbl[mType].mTalkEventName, 0xff);
    if (play.getEvent().mEventStatus != 0) {
        dComIfGp_getEvent().reset(this);
        fopAcM_orderChangeEventId(this, mEventID, 1, 0xffff);
    } else {
        fopAcM_orderOtherEventId(this, mEventID, 0xff, 0xffff, 4, 1);
    }
}

/* 80D53550-80D53714 000FD0 01C4+00 1/0 0/0 0/0 .text executeDemoOrdin2__13daTagTWGate_cFv */
void daTagTWGate_c::executeDemoOrdin2() {
    dEvent_manager_c& evtMng = dComIfGp_getEventManager();
    int staffId = evtMng.getMyStaffId(l_myName, NULL, 0);
    if (staffId == -1) {
        return;
    }
    int* cutName = (int*)evtMng.getMyNowCutName(staffId);
    if (evtMng.getIsAddvance(staffId)) {
        switch(*cutName) {
        case '0001':
            break;
        case '0002':
            initTalk(0xbc1, NULL);
            break;
        case '0003':
            break;
        }
    }
    switch(*cutName) {
    case '0001':
    case '0003':
        evtMng.cutEnd(staffId);
        break;
    case '0002':
        if (talkProc(NULL, 1, NULL)) {
            if (mMsgFlow.getChoiceNo() == 0) {
                setAction(ACT_DEMO_ORDIN_3);
            }
            evtMng.cutEnd(staffId);
        }
        break;
    }

    if (eventInfo.checkCommandDemoAccrpt() && mEventID != -1 &&
        evtMng.endCheck(mEventID))
    {
        dComIfGp_event_reset();
        field_0x5e0 = 0;
        setAction(ACT_WAIT);
    }
}

/* 80D53714-80D537DC 001194 00C8+00 1/0 0/0 0/0 .text            initDemoOrdin3__13daTagTWGate_cFv
 */
void daTagTWGate_c::initDemoOrdin3() {
    field_0x5de = 1;
    mIsWolf = (dComIfGp_getLinkPlayer()->mNoResetFlg1 >> 25) & 1;  // checking if wolf?
    eventInfo.setArchiveName(l_zevParamTbl[mType].mArcName);
    dComIfGp_getEventManager().setObjectArchive(eventInfo.getArchiveName());
    mEventID =
        dComIfGp_getEventManager().getEventIdx(this, l_zevParamTbl[mType].mInEventName, -1);
    dComIfGp_getEvent().reset(this);
    fopAcM_orderChangeEventId(this, mEventID, 1, -1);
}

/* 80D537DC-80D53BD0 00125C 03F4+00 1/0 0/0 0/0 .text executeDemoOrdin3__13daTagTWGate_cFv */
void daTagTWGate_c::executeDemoOrdin3() {
    dEvent_manager_c& evtMng = dComIfGp_getEventManager();
    int staffId = evtMng.getMyStaffId(l_myName, NULL, 0);
    if (staffId == -1) {
        return;
    }
    int* cutName = (int*)evtMng.getMyNowCutName(staffId);
    if (evtMng.getIsAddvance(staffId)) {
        switch(*cutName) {
        case '0001':
            break;
        case '0002':
            dComIfGp_getEvent().startCheckSkipEdge(this);
            field_0x5e1 = 0;
            break;
        case '0003':
            initBaseMtx();
           mpMorf->setPlaySpeed(1.0f);
            field_0x5e0 = 1;
            break;
        }
    }
    switch(*cutName) {
    case '0001':
        int downloadResult = downloadModels();
        if (downloadResult == 1) {
            evtMng.cutEnd(staffId);
        } else if (downloadResult == -1) {
            dComIfGp_setNextStage(
                l_zevParamTbl[mType].mStage,
                l_zevParamTbl[mType].mPoint,
                l_zevParamTbl[mType].mRoomNo,
                l_zevParamTbl[mType].mLayer);
        }
        break;
    case '0002':
        if (dComIfGp_getEvent().checkSkipEdge()) {
            dComIfGp_getEvent().onSkipFade();
            dComIfGp_setNextStage(
                l_zevParamTbl[mType].mStage,
                l_zevParamTbl[mType].mPoint,
                l_zevParamTbl[mType].mRoomNo,
                l_zevParamTbl[mType].mLayer);
        }
        int dVar2 = daPy_py_c::checkNowWolf() ? 0x2e : 0x4a;
        if (field_0x5e1++ == dVar2) {
            daPy_py_c* player = daPy_getPlayerActorClass();
            cXyz cStack_30;
            csXyz cStack_38(0, fopAcM_GetShapeAngle_p(player)->y + 0x8000, 0);
            mDoMtx_stack_c::transS(fopAcM_GetPosition(player));
            mDoMtx_stack_c::YrotM(cStack_38.y);
            mDoMtx_stack_c::transM(0.0f, 240.0f, -710.0f);
            mDoMtx_stack_c::multVecZero(&cStack_30);
            dComIfGp_particle_set(0x86c5, &cStack_30, &cStack_38, NULL);
            Z2GetAudioMgr()->seStart(Z2SE_OBJ_DARK_GATE_RIPPLE, &cStack_30, 0, 0,
                                     1.0f, 1.0f, -1.0f, -1.0f, 0);
            evtMng.cutEnd(staffId);
        }
        break;
    case '0003':
        if (dComIfGp_getEvent().checkSkipEdge()) {
            dComIfGp_getEvent().onSkipFade();
            dComIfGp_setNextStage(
                l_zevParamTbl[mType].mStage,
                l_zevParamTbl[mType].mPoint,
                l_zevParamTbl[mType].mRoomNo,
                l_zevParamTbl[mType].mLayer);
        }
        if (mpMorf->isStop()) {
            evtMng.cutEnd(staffId);
        }
        break;
    }

    if (eventInfo.checkCommandDemoAccrpt() && mEventID != -1 && evtMng.endCheck(mEventID)) {
        dComIfGp_event_reset();
        field_0x5e0 = 0;
        setAction(ACT_WAIT);
    }
}

/* 80D53BD0-80D53C5C 001650 008C+00 1/0 0/0 0/0 .text            initDemoRanail1__13daTagTWGate_cFv
 */
void daTagTWGate_c::initDemoRanail1() {
    eventInfo.setArchiveName(l_zevParamTbl[mType].mArcName);
    mEventID = dComIfGp_getEventManager().getEventIdx(this, l_zevParamTbl[mType].mEventName, -1);
    fopAcM_orderOtherEventId(this, mEventID, -1, -1, 4, 1);
}

/* 80D53C5C-80D53DD4 0016DC 0178+00 1/0 0/0 0/0 .text executeDemoRanail1__13daTagTWGate_cFv */
void daTagTWGate_c::executeDemoRanail1() {
    dEvent_manager_c& evtMng = dComIfGp_getEventManager();
    int staffId = evtMng.getMyStaffId(l_myName, NULL, 0);
    if (staffId != -1) {
        int* cutName = (int*)evtMng.getMyNowCutName(staffId);
        if (evtMng.getIsAddvance(staffId)) {
            switch (*cutName) {
            case '0001':
                dComIfGp_getEvent().startCheckSkipEdge(this);
                break;
            }
        }
        switch (*cutName) {
        case '0001':
            if (dComIfGp_getEvent().checkSkipEdge()) {
                dComIfGp_getEvent().onSkipFade();
                setAction(ACT_DEMO_RANAIL_2);
            }
            evtMng.cutEnd(staffId);
            break;
        }
        if (eventInfo.checkCommandDemoAccrpt() && mEventID != -1 && evtMng.endCheck(mEventID)) {
            setAction(ACT_DEMO_RANAIL_2);
        }
    }
}

/* 80D53DD4-80D53ED0 001854 00FC+00 1/0 0/0 0/0 .text            initDemoRanail2__13daTagTWGate_cFv
 */
void daTagTWGate_c::initDemoRanail2() {
    fopAcM_onSwitch(this, getSwitch());
    eventInfo.setArchiveName(l_zevParamTbl[mType].mArcName);
    dComIfG_play_c& play = g_dComIfG_gameInfo.play;
    dEvent_manager_c& mng = play.getEvtManager();
    mng.setObjectArchive(eventInfo.getArchiveName());
    mEventID = mng.getEventIdx(this, l_zevParamTbl[mType].mTalkEventName, 0xff);
    if (play.getEvent().mEventStatus != 0) {
        dComIfGp_getEvent().reset(this);
        fopAcM_orderChangeEventId(this, mEventID, 1, 0xffff);
    } else {
        fopAcM_orderOtherEventId(this, mEventID, 0xff, 0xffff, 4, 1);
    }
}

/* 80D53ED0-80D54094 001950 01C4+00 1/0 0/0 0/0 .text executeDemoRanail2__13daTagTWGate_cFv */
void daTagTWGate_c::executeDemoRanail2() {
    dEvent_manager_c& evtMng = dComIfGp_getEventManager();
    int staffId = evtMng.getMyStaffId(l_myName, NULL, 0);
    if (staffId == -1) {
        return;
    }
    int* cutName = (int*)evtMng.getMyNowCutName(staffId);
    if (evtMng.getIsAddvance(staffId)) {
        switch(*cutName) {
        case '0001':
            break;
        case '0002':
            initTalk(0xbc1, NULL);
            break;
        case '0003':
            break;
        }
    }
    switch(*cutName) {
    case '0001':
    case '0003':
        evtMng.cutEnd(staffId);
        break;
    case '0002':
        if (talkProc(NULL, 1, NULL)) {
            if (mMsgFlow.getChoiceNo() == 0) {
                setAction(ACT_DEMO_RANAIL_3);
            }
            evtMng.cutEnd(staffId);
        }
        break;
    }

    if (eventInfo.checkCommandDemoAccrpt() && mEventID != -1 &&
        evtMng.endCheck(mEventID))
    {
        dComIfGp_event_reset();
        field_0x5e0 = 0;
        setAction(ACT_WAIT);
    }
}

/* 80D54094-80D54178 001B14 00E4+00 1/0 0/0 0/0 .text            initDemoRanail3__13daTagTWGate_cFv
 */
void daTagTWGate_c::initDemoRanail3() {
    field_0x5de = 1;
    mIsWolf = (dComIfGp_getLinkPlayer()->mNoResetFlg1 >> 25) & 1;  // checking if wolf?
    eventInfo.setArchiveName(l_zevParamTbl[mType].mArcName);
    dComIfGp_getEventManager().setObjectArchive(eventInfo.getArchiveName());
    mEventID =
        dComIfGp_getEventManager().getEventIdx(this, l_zevParamTbl[mType].mInEventName, -1);
    dComIfGp_getEvent().reset(this);
    fopAcM_orderChangeEventId(this, mEventID, 1, -1);
    /* dSv_event_flag_c::F_0071 - Twilight Hyrule Field - Cannot warp to Lanayru */
    dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[170]);
}

/* 80D54178-80D5456C 001BF8 03F4+00 1/0 0/0 0/0 .text executeDemoRanail3__13daTagTWGate_cFv */
void daTagTWGate_c::executeDemoRanail3() {
    dEvent_manager_c& evtMng = dComIfGp_getEventManager();
    int staffId = evtMng.getMyStaffId(l_myName, NULL, 0);
    if (staffId == -1) {
        return;
    }
    int* cutName = (int*)evtMng.getMyNowCutName(staffId);
    if (evtMng.getIsAddvance(staffId)) {
        switch(*cutName) {
        case '0001':
            break;
        case '0002':
            dComIfGp_getEvent().startCheckSkipEdge(this);
            field_0x5e1 = 0;
            break;
        case '0003':
            initBaseMtx();
           mpMorf->setPlaySpeed(1.0f);
            field_0x5e0 = 1;
            break;
        }
    }
    switch(*cutName) {
    case '0001':
        int downloadResult = downloadModels();
        if (downloadResult == 1) {
            evtMng.cutEnd(staffId);
        } else if (downloadResult == -1) {
            dComIfGp_setNextStage(
                l_zevParamTbl[mType].mStage,
                l_zevParamTbl[mType].mPoint,
                l_zevParamTbl[mType].mRoomNo,
                l_zevParamTbl[mType].mLayer);
        }
        break;
    case '0002':
        if (dComIfGp_getEvent().checkSkipEdge()) {
            dComIfGp_getEvent().onSkipFade();
            dComIfGp_setNextStage(
                l_zevParamTbl[mType].mStage,
                l_zevParamTbl[mType].mPoint,
                l_zevParamTbl[mType].mRoomNo,
                l_zevParamTbl[mType].mLayer);
        }
        int dVar2 = daPy_py_c::checkNowWolf() ? 0x2e : 0x4a;
        if (field_0x5e1++ == dVar2) {
            daPy_py_c* player = daPy_getPlayerActorClass();
            cXyz cStack_30;
            csXyz cStack_38(0, fopAcM_GetShapeAngle_p(player)->y + 0x8000, 0);
            mDoMtx_stack_c::transS(fopAcM_GetPosition(player));
            mDoMtx_stack_c::YrotM(cStack_38.y);
            mDoMtx_stack_c::transM(0.0f, 240.0f, -710.0f);
            mDoMtx_stack_c::multVecZero(&cStack_30);
            dComIfGp_particle_set(0x86c5, &cStack_30, &cStack_38, NULL);
            Z2GetAudioMgr()->seStart(Z2SE_OBJ_DARK_GATE_RIPPLE, &cStack_30, 0, 0,
                                     1.0f, 1.0f, -1.0f, -1.0f, 0);
            evtMng.cutEnd(staffId);
        }
        break;
    case '0003':
        if (dComIfGp_getEvent().checkSkipEdge()) {
            dComIfGp_getEvent().onSkipFade();
            dComIfGp_setNextStage(
                l_zevParamTbl[mType].mStage,
                l_zevParamTbl[mType].mPoint,
                l_zevParamTbl[mType].mRoomNo,
                l_zevParamTbl[mType].mLayer);
        }
        if (mpMorf->isStop()) {
            evtMng.cutEnd(staffId);
        }
        break;
    }

    if (eventInfo.checkCommandDemoAccrpt() && mEventID != -1 && evtMng.endCheck(mEventID)) {
        dComIfGp_event_reset();
        field_0x5e0 = 0;
        setAction(ACT_WAIT);
    }
}

/* 80D5456C-80D545F8 001FEC 008C+00 1/0 0/0 0/0 .text            initDemoHyral1__13daTagTWGate_cFv
 */
void daTagTWGate_c::initDemoHyral1() {
    eventInfo.setArchiveName(l_zevParamTbl[mType].mArcName);
    mEventID = dComIfGp_getEventManager().getEventIdx(this, l_zevParamTbl[mType].mEventName, -1);
    fopAcM_orderOtherEventId(this, mEventID, -1, -1, 4, 1);
}

/* 80D545F8-80D54770 002078 0178+00 1/0 0/0 0/0 .text executeDemoHyral1__13daTagTWGate_cFv */
void daTagTWGate_c::executeDemoHyral1() {
    dEvent_manager_c& evtMng = dComIfGp_getEventManager();
    int staffId = evtMng.getMyStaffId(l_myName, NULL, 0);
    if (staffId != -1) {
        int* cutName = (int*)evtMng.getMyNowCutName(staffId);
        if (evtMng.getIsAddvance(staffId)) {
            switch (*cutName) {
            case '0001':
                dComIfGp_getEvent().startCheckSkipEdge(this);
                break;
            }
        }
        switch (*cutName) {
        case '0001':
            if (dComIfGp_getEvent().checkSkipEdge()) {
                dComIfGp_getEvent().onSkipFade();
                setAction(ACT_DEMO_HYRAL_2);
            }
            evtMng.cutEnd(staffId);
            break;
        }
        if (eventInfo.checkCommandDemoAccrpt() && mEventID != -1 && evtMng.endCheck(mEventID)) {
            setAction(ACT_DEMO_HYRAL_2);
        }
    }
}

/* 80D54770-80D5486C 0021F0 00FC+00 1/0 0/0 0/0 .text            initDemoHyral2__13daTagTWGate_cFv
 */
void daTagTWGate_c::initDemoHyral2() {
    fopAcM_onSwitch(this, getSwitch());
    eventInfo.setArchiveName(l_zevParamTbl[mType].mArcName);
    dComIfG_play_c& play = g_dComIfG_gameInfo.play;
    dEvent_manager_c& mng = play.getEvtManager();
    mng.setObjectArchive(eventInfo.getArchiveName());
    mEventID = mng.getEventIdx(this, l_zevParamTbl[mType].mTalkEventName, 0xff);
    if (play.getEvent().mEventStatus != 0) {
        dComIfGp_getEvent().reset(this);
        fopAcM_orderChangeEventId(this, mEventID, 1, 0xffff);
    } else {
        fopAcM_orderOtherEventId(this, mEventID, 0xff, 0xffff, 4, 1);
    }
}

/* 80D5486C-80D54A30 0022EC 01C4+00 1/0 0/0 0/0 .text executeDemoHyral2__13daTagTWGate_cFv */
void daTagTWGate_c::executeDemoHyral2() {
    dEvent_manager_c& eventMgr = dComIfGp_getEventManager();
    int staffId = eventMgr.getMyStaffId(l_myName, NULL, 0);
    if (staffId == -1) {
        return;
    }
    int* piVar3 = (int*)eventMgr.getMyNowCutName(staffId);
    if (eventMgr.getIsAddvance(staffId)) {
        switch(*piVar3) {
        case '0001':
        case '0003':
            break;
        case '0002':
            initTalk(0xbc1, NULL);
            break;
        }
    }
    switch(*piVar3) {
    case '0001':
    case '0003':
        eventMgr.cutEnd(staffId);
        break;
    case '0002':
        if (talkProc(NULL, 1, NULL)) {
            s16 choiceNo = mMsgFlow.getChoiceNo();
            if (choiceNo == 0) {
                setAction(ACT_DEMO_HYRAL_3);
            }
            eventMgr.cutEnd(staffId);
        }
        break;
    }
    if (eventInfo.checkCommandDemoAccrpt() && mEventID != -1 &&
        eventMgr.endCheck(mEventID))
    {
        dComIfGp_event_reset();
        field_0x5e0 = 0;
        setAction(ACT_WAIT);
    }
}

/* 80D54A30-80D54AF8 0024B0 00C8+00 1/0 0/0 0/0 .text            initDemoHyral3__13daTagTWGate_cFv
 */
void daTagTWGate_c::initDemoHyral3() {
    field_0x5de = 1;
    mIsWolf = (dComIfGp_getLinkPlayer()->mNoResetFlg1 >> 25) & 1;  // checking if wolf?
    eventInfo.setArchiveName(l_zevParamTbl[mType].mArcName);
    dComIfGp_getEventManager().setObjectArchive(eventInfo.getArchiveName());
    mEventID =
        dComIfGp_getEventManager().getEventIdx(this, l_zevParamTbl[mType].mInEventName, -1);
    dComIfGp_getEvent().reset(this);
    fopAcM_orderChangeEventId(this, mEventID, 1, -1);
}

/* 80D54AF8-80D54ECC 002578 03D4+00 1/0 0/0 0/0 .text executeDemoHyral3__13daTagTWGate_cFv */
void daTagTWGate_c::executeDemoHyral3() {
    dEvent_manager_c& eventMgr = dComIfGp_getEventManager();
    int staffId = eventMgr.getMyStaffId(l_myName, NULL, 0);
    if (staffId == -1) {
        return;
    }
    int* piVar3 = (int*)eventMgr.getMyNowCutName(staffId);
    if (eventMgr.getIsAddvance(staffId)) {
        switch(*piVar3) {
        case '0001':
            break;
        case '0002':
            dComIfGp_getEvent().startCheckSkipEdge(this);
            field_0x5e1 = 0x0;
            break;
        case '0003':
            initBaseMtx();
            mpMorf->setPlaySpeed(1.0f);
            field_0x5e0 = 1;
            break;
        }
    }
    switch(*piVar3) {
    case '0001':
        int downloadRes = downloadModels();
        if (downloadRes == 1) {
            eventMgr.cutEnd(staffId);
        } else if (downloadRes == -1) {
            dComIfGp_setNextStage(l_zevParamTbl[mType].mStage, l_zevParamTbl[mType].mPoint,
                                  l_zevParamTbl[mType].mRoomNo, l_zevParamTbl[mType].mLayer);
        }
        break;
    case '0002':
        if (dComIfGp_getEvent().checkSkipEdge()) {
            dComIfGp_getEvent().onSkipFade();
            dComIfGp_setNextStage(l_zevParamTbl[mType].mStage, l_zevParamTbl[mType].mPoint,
                                  l_zevParamTbl[mType].mRoomNo, l_zevParamTbl[mType].mLayer);
        }
        if (field_0x5e1++ == 0x4a) {
            daPy_py_c* player = daPy_getPlayerActorClass();
            cXyz cStack_34;
            csXyz cStack_3c(0, fopAcM_GetShapeAngle_p(player)->y + 0x8000, 0);
            mDoMtx_stack_c::transS(fopAcM_GetPosition(player));
            mDoMtx_stack_c::YrotM(cStack_3c.y);
            mDoMtx_stack_c::transM(0.0f, 240.0f, -710.0f);
            mDoMtx_stack_c::multVecZero(&cStack_34);
            dComIfGp_particle_set(0x86c5, &cStack_34, &cStack_3c, NULL);
            Z2GetAudioMgr()->seStart(Z2SE_OBJ_DARK_GATE_RIPPLE, &cStack_34, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
            eventMgr.cutEnd(staffId);
        }
        break;
    case '0003':
        if (dComIfGp_getEvent().checkSkipEdge()) {
            dComIfGp_getEvent().onSkipFade();
            dComIfGp_setNextStage(l_zevParamTbl[mType].mStage, l_zevParamTbl[mType].mPoint,
                                  l_zevParamTbl[mType].mRoomNo, l_zevParamTbl[mType].mLayer);
        }
        if (mpMorf->isStop()) {
            eventMgr.cutEnd(staffId);
        }
        break;
    }
    if (eventInfo.checkCommandDemoAccrpt() && mEventID != -1 &&
        eventMgr.endCheck(mEventID))
    {
        dComIfGp_event_reset();
        field_0x5e0 = 0;
        setAction(ACT_WAIT);
    }
}

/* 80D54ECC-80D54F88 00294C 00BC+00 4/4 0/0 0/0 .text            initBaseMtx__13daTagTWGate_cFv */
void daTagTWGate_c::initBaseMtx() {
    cullMtx = mpMorf->getModel()->getBaseTRMtx();
    fopAc_ac_c* player = (fopAc_ac_c*)dComIfGp_getPlayer(0);

    shape_angle.y = player->shape_angle.y + 0x8000;
    mDoMtx_stack_c::transS(player->current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mDoMtx_stack_c::transM(0.0f, 250.0f, -840.0f);

    current.pos.x = mDoMtx_stack_c::get()[0][3];
    current.pos.y = mDoMtx_stack_c::get()[1][3];
    current.pos.z = mDoMtx_stack_c::get()[2][3];

    mpMorf->getModel()->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80D54F88-80D5502C 002A08 00A4+00 4/4 0/0 0/0 .text            downloadModels__13daTagTWGate_cFv
 */
int daTagTWGate_c::downloadModels() {
    int phase_state = dComIfG_resLoad(&mPhaseMdRes, "TWGate_Md");

    if (phase_state == cPhs_COMPLEATE_e) {
        phase_state = dComIfG_resLoad(&mPhasePyRes, mIsWolf ? "TWGate_Wf" : "TWGate_Lk");
    }

    if (phase_state == cPhs_COMPLEATE_e) {
        if (fopAcM_entrySolidHeap(this, createHeapCallBack, 0x3140)) {
            return 1;
        } else {
            return -1;
        }
    }

    return phase_state == cPhs_ERROR_e ? -1 : 0;
}

/* 80D5502C-80D55068 002AAC 003C+00 4/4 0/0 0/0 .text initTalk__13daTagTWGate_cFiPP10fopAc_ac_c */
void daTagTWGate_c::initTalk(int param_0, fopAc_ac_c** param_1) {
    mMsgFlow.init(this, param_0, 0, param_1);
}

/* 80D55068-80D55160 002AE8 00F8+00 4/4 0/0 0/0 .text talkProc__13daTagTWGate_cFPiiPP10fopAc_ac_c
 */
bool daTagTWGate_c::talkProc(int* param_1, int param_2, fopAc_ac_c** param_3) {
    bool rv = false;
    if (dMsgObject_isMsgSendControl()) {
        if (param_2 != 0) {
            dMsgObject_offMsgSendControl();
        }
    } else {
        if (mMsgFlow.doFlow(this, param_3, 0)) {
            rv = true;
        } else {
            if (mMsgFlow.getMsg() != NULL &&
                (mMsgFlow.getMsg()->mode == 2 || mMsgFlow.getMsg()->mode == 6) && param_1 != NULL)
            {
                for (int i = 0; param_1[i] > 0; i++) {
                    if (param_1[i] == mMsgFlow.getMsgNo()) {
                        rv = true;
                        break;
                    }
                }
            }
        }
    }
    return rv;
}

/* 80D55160-80D55180 002BE0 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__13daTagTWGate_cFP10fopAc_ac_c            */
int daTagTWGate_c::createHeapCallBack(fopAc_ac_c* i_actor) {
    return ((daTagTWGate_c*)i_actor)->CreateHeap();
}

/* 80D55180-80D55288 002C00 0108+00 1/1 0/0 0/0 .text            CreateHeap__13daTagTWGate_cFv */
int daTagTWGate_c::CreateHeap() {
    J3DModelData* modelData = static_cast<J3DModelData*>(dComIfG_getObjectRes("TWGate_Md", 7));
    mpMorf =
        new mDoExt_McaMorfSO(modelData, NULL, NULL,
                             static_cast<J3DAnmTransform*>(dComIfG_getObjectRes("TWGate_Md", 4)),
                             0, 0.0f, 0, -1, NULL, 0, 0x11000084);

    if (mpMorf != NULL && mpMorf->getModel() == NULL) {
        mpMorf->stopZelAnime();
        mpMorf = NULL;
    }

    if (mpMorf == NULL) {
        return 0;
    } else {
        return 1;
    }
}

int daTagTWGate_c::create() {
    fopAcM_SetupActor(this, daTagTWGate_c);

    mType = getType();

    int phase_state;
    if (dComIfGs_isDarkClearLV(l_zevParamTbl[mType].mLv)) {
        phase_state = cPhs_ERROR_e;
    } else {
        phase_state = dComIfG_resLoad(&mPhaseZevArc, l_zevParamTbl[mType].mArcName);
        if (phase_state == cPhs_COMPLEATE_e) {
            create_init();
        }
    }

    return phase_state;
}

/* 80D55288-80D55388 002D08 0100+00 1/0 0/0 0/0 .text            daTagTWGate_Create__FP10fopAc_ac_c
 */
static int daTagTWGate_Create(fopAc_ac_c* i_actor) {
    return ((daTagTWGate_c*)i_actor)->create();
}

inline daTagTWGate_c::~daTagTWGate_c() {
    dComIfG_resDelete(&mPhaseZevArc, l_zevParamTbl[mType].mArcName);

    if (mPhaseMdRes.id != cPhs_INIT_e) {
        dComIfG_resDelete(&mPhaseMdRes, "TWGate_Md");
    }

    if (mPhasePyRes.id != cPhs_INIT_e) {
        dComIfG_resDelete(&mPhasePyRes, mIsWolf ? "TWGate_Wf" : "TWGate_Lk");
    }
}

/* 80D55388-80D5543C 002E08 00B4+00 1/0 0/0 0/0 .text daTagTWGate_Delete__FP13daTagTWGate_c */
static int daTagTWGate_Delete(daTagTWGate_c* i_gate) {
    i_gate->~daTagTWGate_c();
    return 1;
}

/* 80D5543C-80D554E4 002EBC 00A8+00 1/0 0/0 0/0 .text daTagTWGate_Execute__FP13daTagTWGate_c */
static int daTagTWGate_Execute(daTagTWGate_c* i_gate) {
    return i_gate->execute();
}

/* 80D554E4-80D55518 002F64 0034+00 1/0 0/0 0/0 .text            daTagTWGate_Draw__FP13daTagTWGate_c
 */
static int daTagTWGate_Draw(daTagTWGate_c* i_gate) {
    return i_gate->draw();
}

/* 80D55518-80D55520 002F98 0008+00 1/0 0/0 0/0 .text daTagTWGate_IsDelete__FP13daTagTWGate_c */
static int daTagTWGate_IsDelete(daTagTWGate_c*) {
    return 1;
}

/* ############################################################################################## */
/* 80D55C08-80D55C28 -00001 0020+00 1/0 0/0 0/0 .data            l_daTagTWGate_Method */
static actor_method_class l_daTagTWGate_Method = {
    (process_method_func)daTagTWGate_Create,  (process_method_func)daTagTWGate_Delete,
    (process_method_func)daTagTWGate_Execute, (process_method_func)daTagTWGate_IsDelete,
    (process_method_func)daTagTWGate_Draw,
};

/* 80D55C28-80D55C58 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_TWGate */
extern actor_process_profile_definition g_profile_Tag_TWGate = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_Tag_TWGate,
    &g_fpcLf_Method.base,
    sizeof(daTagTWGate_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x105,
    &l_daTagTWGate_Method,
    0x40000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};

/* 80D55848-80D55848 00009C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
