/**
 * @file d_a_obj_warp_kbrg.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_warp_kbrg.h"
#include "d/d_com_inf_game.h"
#include "d/actor/d_a_player.h"
#include "d/actor/d_a_midna.h"
#include "d/d_s_play.h"
#include "d/d_bg_w.h"
#include "d/d_meter2_info.h"

/* 80D295B4-80D295BC 000000 0008+00 6/6 0/0 0/0 .rodata          l_bmd_idx */
static const int l_bmd_idx[] = {9, 11};

/* 80D295BC-80D295C4 000008 0008+00 1/1 0/0 0/0 .rodata          l_dzb_idx */
static const int l_dzb_idx[] = {15, 22};

/* 80D295C4-80D295CC 000010 0008+00 0/1 0/0 0/0 .rodata          l_btk_idx */
static const int l_btk_idx[] = {12, 19};

/* 80D295CC-80D295D4 000018 0008+00 1/2 0/0 0/0 .rodata          l_bck_idx */
static const int l_bck_idx[] = {6, 7};

/* 80D295D4-80D295E0 000020 000A+02 0/1 0/0 0/0 .rodata          l_disapp_eff */
static const u16 l_disapp_eff[] = {0x8532, 0x8533, 0x8534, 0x8535, 0x8536};

/* 80D295E0-80D295E8 00002C 0006+02 0/1 0/0 0/0 .rodata          l_start_eff */
static const u16 l_start_eff[] = {0x8B3F, 0x8B40, 0x8B41};

/* 80D295E8-80D295F4 000034 000C+00 0/1 0/0 0/0 .rodata          l_app_eff */
static const u16 l_app_eff[] = {0x852D, 0x852E, 0x852F, 0x8530, 0x8531, 0x8B3C};

/* 80D295F4-80D295F8 000040 0004+00 0/1 0/0 0/0 .rodata          l_end_eff */
static const u16 l_end_eff[] = {0x8B3D, 0x8B3E};

/* 80D295F8-80D29600 000044 0008+00 1/1 0/0 0/0 .rodata          l_bind_eff */
static const u16 l_bind_eff[] = {0x8B4F, 0x8B50, 0x8B51, 0x8B52};

/* 80D29600-80D29608 00004C 0008+00 1/1 0/0 0/0 .rodata          l_heap_size */
static const u32 l_heap_size[] = {0x6400, 0x7E60};

/* 80D29608-80D29614 000054 000C+00 1/1 0/0 0/0 .rodata          l_midna_wait_offset */
static const Vec l_midna_wait_offset = {0.0f, -200.0f, 1200.0f};

/* 80D26F38-80D26FA8 000078 0070+00 1/1 0/0 0/0 .text            eventCallBack__FPvi */
static int eventCallBack(void* i_proc, int param_1) {
    daPy_py_c* player_p = daPy_getPlayerActorClass();

    if (i_proc != NULL) {
        player_p->skipPortalObjWarp();
        if (dComIfGp_TransportWarp_check()) {
            /* dSv_event_flag_c::M_018 - Main Event - Brought Kakariko bridge back to original location */
            dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[51]);
            // "Kakariko Bridge: Warp destination is correct"
            OS_REPORT("\x1B[43;30mカカリコ橋：ワープ先正解です\n\x1B[m");
        }
    }

    return 1;
}

/* 80D26FA8-80D27008 0000E8 0060+00 1/1 0/0 0/0 .text            initBaseMtx__15daObjWarpKBrg_cFv */
void daObjWarpKBrg_c::initBaseMtx() {
    mpBridgeModel->setBaseScale(scale);

    if (mpPortalModel != NULL) {
        mpPortalModel->setBaseScale(scale);
    }

    setBaseMtx();
}

/* 80D27008-80D270C4 000148 00BC+00 2/2 0/0 0/0 .text            setBaseMtx__15daObjWarpKBrg_cFv */
void daObjWarpKBrg_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mpBridgeModel->setBaseTRMtx(mDoMtx_stack_c::get());

    mDoMtx_stack_c::ZXYrotM(shape_angle);
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);

    if (mpPortalModel != NULL) {
        cXyz portal_pos(-7643.0f, -2770.0f + KREG_F(0), 56750.0f);

        mDoMtx_stack_c::transS(portal_pos);
        mDoMtx_stack_c::scaleM(5.0f, 5.0f, 5.0f);
        mpPortalModel->setBaseTRMtx(mDoMtx_stack_c::get());
    }
}

/* 80D29730-80D29738 -00001 0008+00 5/5 0/0 0/0 .data            l_arcName */
static char* l_arcName[2] = {
    "Obj_kbrgS",
    "Obj_kbrgD",
};

/* 80D29738-80D2973C -00001 0004+00 3/3 0/0 0/0 .data            l_evArcName */
static char* l_evArcName = "Obj_kbrg";

/* 80D2973C-80D29744 -00001 0008+00 1/1 0/0 0/0 .data            l_portal_warp_name */
static char* l_portal_warp_name[2] = {
    "PORTAL_WARP_KBRIDGE",
    "PORTAL_WARP_KBRIDGE_OUT",
};

/* 80D29744-80D29748 -00001 0004+00 4/4 0/0 0/0 .data            l_staff_name */
static char* l_staff_name = "WarpBrg";

/* 80D270C4-80D27300 000204 023C+00 1/0 0/0 0/0 .text            Create__15daObjWarpKBrg_cFv */
int daObjWarpKBrg_c::Create() {
    switch (getNameArg()) {
    case 0:
        mEventType = 0;
        break;
    case 1:
        if (!fopAcM_isSwitch(this, getSwbit())) {
            setAction(ACTION_ORDER_EVENT2_e);

            if (mpBgW != NULL && mpBgW->ChkUsed()) {
                dComIfG_Bgsp().Release(mpBgW);
            }
        } else {
            mpBridgeBck->setFrame(mpBridgeBck->getEndFrame());
            mpBridgeBtk->setFrame(mpBridgeBtk->getEndFrame());
            field_0x5c8 = 1;
            mpPortalBrk->setFrame(0.0f);

            setAction(ACTION_DEAD2_e);
        }

        mEventType = 1;
        break;
    }

    if (getNameArg() == 0) {
        JUTNameTab* jnt_nametab = mpBridgeModel->getModelData()->getJointTree().getJointName();
        mEffJointNo = 0xFFFF;

        for (u16 i = 0; i < mpBridgeModel->getModelData()->getJointNum(); i++) {
            if (strcmp(jnt_nametab->getName(i), "effect_p") == 0) {
                mEffJointNo = i;
                break;
            }
        }

        #ifdef DEBUG
        if (mEffJointNo == 0xFFFF) {
            // "Kakariko Bridge: joint effect_p not found"
            OSReport_Error("カカリコ橋；ジョイント effect_p が見つかりませんでした\n");
            return 0;
        }
        #endif
    }

    initBaseMtx();
    fopAcM_SetMtx(this, mpBridgeModel->getBaseTRMtx());
    fopAcM_setCullSizeBox2(this, mpBridgeModel->getModelData());

    attention_info.distances[fopAc_attn_TALK_e] = 54;
    attention_info.distances[fopAc_attn_SPEAK_e] = 54;

    eventInfo.setArchiveName(l_evArcName);

    for (int i = 0; i < 2; i++) {
        mEventId[i] = dComIfGp_getEventManager().getEventIdx(this, l_portal_warp_name[i], 0xFF);
    }

    calcMidnaWaitPos();
    MoveBGExecute();
    return 1;
}

/* 80D27300-80D2766C 000440 036C+00 1/0 0/0 0/0 .text            CreateHeap__15daObjWarpKBrg_cFv */
int daObjWarpKBrg_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName[getNameArg()], l_bmd_idx[getNameArg()]);
    JUT_ASSERT(380, modelData != 0);

    u32 sp2C = 0x11000284;
    mpBridgeModel = mDoExt_J3DModel__create(modelData, 0x80000, sp2C);
    if (mpBridgeModel == NULL) {
        return 0;
    }

    J3DAnmTextureSRTKey* pbtk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName[getNameArg()], l_btk_idx[getNameArg()]);
    JUT_ASSERT(394, pbtk != 0);
    mpBridgeBtk = new mDoExt_btkAnm();
    if (mpBridgeBtk == NULL || !mpBridgeBtk->init(modelData, pbtk, TRUE, 0, 1.0f, 0, -1)) {
        return 0;
    }
    mpBridgeBtk->setFrame(0.0f);

    J3DAnmTransform* pbck = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName[getNameArg()], l_bck_idx[getNameArg()]);
    JUT_ASSERT(407, pbck != 0);
    mpBridgeBck = new mDoExt_bckAnm();
    if (mpBridgeBck == NULL || !mpBridgeBck->init(pbck, TRUE, 0, 1.0f, 0, -1, false)) {
        return 0;
    }

    if (getNameArg() == 1) {
        modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName[getNameArg()], 10);
        JUT_ASSERT(424, modelData != 0);
        mpPortalModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000284);
        if (mpPortalModel == NULL) {
            return 0;
        }

        pbtk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName[getNameArg()], 18);
        JUT_ASSERT(438, pbtk != 0);
        mpPortalBtk = new mDoExt_btkAnm();
        if (mpPortalBtk == NULL || !mpPortalBtk->init(modelData, pbtk, TRUE, 2, 1.0f, 0, -1)) {
            return 0;
        }
        mpPortalBtk->setFrame(0.0f);

        J3DAnmTevRegKey* pbrk = (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_arcName[getNameArg()], 14);
        JUT_ASSERT(451, pbrk != 0);
        mpPortalBrk = new mDoExt_brkAnm();
        if (mpPortalBrk == NULL || !mpPortalBrk->init(modelData, pbrk, TRUE, 0, 1.0f, 0, -1)) {
            return 0;
        }

        #if VERSION == VERSION_SHIELD_DEBUG
        pbrk = (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_arcName[getNameArg()], 15);
        JUT_ASSERT(463, pbrk != 0);
        #endif
    }

    return 1;
}

/* 80D276B4-80D2781C 0007F4 0168+00 1/1 0/0 0/0 .text            create1st__15daObjWarpKBrg_cFv */
int daObjWarpKBrg_c::create1st() {
    if (!mPrmInit) {
        mMsgID = home.angle.z;
        mPrmInit = TRUE;
        home.angle.z = 0;
        current.angle.z = 0;
        shape_angle.z = 0;
    }

    switch (getNameArg()) {
    case 0:
            /* dSv_event_flag_c::M_018 - Main Event - Brought Kakariko bridge back to original location */
        if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[51])) {
            // "Kakariko Bridge: already warped so creation cancelled!"
            OS_REPORT("\x1B[43;30mカカリコ橋：ワープさせたので発生取り消し！\n\x1B[m");
            return cPhs_ERROR_e;
        }
        break;
    case 1:
             /* dSv_event_flag_c::M_018 - Main Event - Brought Kakariko bridge back to original location */
        if (!dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[51])) {
            // "Kakariko Bridge: not warped so creation cancelled!"
            OS_REPORT("\x1B[43;30mカカリコ橋：ワープさせてないので発生取り消し！\n\x1B[m");
            return cPhs_ERROR_e;
        }
        break;
    }

    int phase_state = dComIfG_resLoad(&mEvPhase, l_evArcName);
    if (phase_state != cPhs_COMPLEATE_e) {
        return phase_state;
    }

    phase_state = dComIfG_resLoad(&mPhase, l_arcName[getNameArg()]);
    if (phase_state == cPhs_COMPLEATE_e) {
        phase_state = MoveBGCreate(l_arcName[getNameArg()], l_dzb_idx[getNameArg()], dBgS_MoveBGProc_TypicalRotY, l_heap_size[getNameArg()], NULL);
        if (phase_state == cPhs_ERROR_e) {
            return phase_state;
        }
    }

    return phase_state;
}

/* 80D2781C-80D27890 00095C 0074+00 1/0 0/0 0/0 .text Execute__15daObjWarpKBrg_cFPPA3_A4_f */
int daObjWarpKBrg_c::Execute(f32 (**param_0)[3][4]) {
    #if VERSION == VERSION_SHIELD_DEBUG
    calcMidnaWaitPos();
    #endif

    if (getNameArg() == 0 && daPy_py_c::getMidnaActor() == NULL) {
        return 1;
    }

    event_proc_call();

    *param_0 = &mBgMtx;
    setBaseMtx();
    return 1;
}

/* 80D27890-80D27A38 0009D0 01A8+00 1/1 0/0 0/0 .text event_proc_call__15daObjWarpKBrg_cFv */
void daObjWarpKBrg_c::event_proc_call() {
    static void (daObjWarpKBrg_c::*l_func[])() = {
        &daObjWarpKBrg_c::actionWait,
        &daObjWarpKBrg_c::actionOrderEvent,
        &daObjWarpKBrg_c::actionTalkEvent,
        &daObjWarpKBrg_c::actionWaitWarpEvent,
        &daObjWarpKBrg_c::actionWarpEvent,
        &daObjWarpKBrg_c::actionOrderATalkEvent,
        &daObjWarpKBrg_c::actionDead,
        &daObjWarpKBrg_c::actionWait2,
        &daObjWarpKBrg_c::actionOrderEvent2,
        &daObjWarpKBrg_c::actionWarpEvent2,
        &daObjWarpKBrg_c::actionDead2,
    };

    attention_info.flags = 0;

    if (field_0x69b != 0) {
        field_0x69b--;
    }

    (this->*l_func[mAction])();

    if (!eventInfo.chkCondition(dEvtCnd_CANTALK_e)) {
        field_0x69a = 0;
    }
}

/* 80D27A38-80D27B2C 000B78 00F4+00 1/1 0/0 0/0 .text orderZHintEvent__15daObjWarpKBrg_cFv */
void daObjWarpKBrg_c::orderZHintEvent() {
    daMidna_c* midna_p = (daMidna_c*)daPy_py_c::getMidnaActor();
    daPy_py_c* player_p = daPy_getPlayerActorClass();

    if (checkTalkDistance()) {
        eventInfo.onCondition(dEvtCnd_CANTALK_e);
        if (!player_p->checkPlayerFly()) {
            dComIfGp_att_ZHintRequest(this,  0x1FF);

            if (field_0x69a == 0) {
                field_0x69a = 1;
                if (field_0x69b == 0) {
                    mDoAud_seStart(Z2SE_NAVI_CALLVOICE, NULL, 0, 0);
                }
                field_0x69b = 60;
            }
        }
    }
}

/* 80D27B2C-80D27C6C 000C6C 0140+00 1/0 0/0 0/0 .text            actionWait__15daObjWarpKBrg_cFv */
void daObjWarpKBrg_c::actionWait() {
    daMidna_c* midna_p = (daMidna_c*)daPy_py_c::getMidnaActor();
    daPy_py_c* player_p = daPy_getPlayerActorClass();

    if (fopAcM_isSwitch(this, getSwbit2())
           /* dSv_event_flag_c::M_021 - Main Event - First portal warp */
        && dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[54])) {
        setAction(ACTION_ORDER_EVENT_e);
        actionOrderEvent();
    }

    if (dComIfGp_evmng_startCheck(mEventId[mEventType])) {
        if (strcmp(dComIfGp_getEventManager().getRunEventName(), "PORTAL_WARP_KBRIDGE") == 0) {
            midna_p->onTagWaitPosPortalObj(&mMidnaWaitPos);
            dComIfGp_getEvent().setPt2(this);
            mStaffId = dComIfGp_evmng_getMyStaffId(l_staff_name, NULL, 0);
            setAction(ACTION_WARP_EVENT_e);
            demoProc();
        }
    }
}

/* 80D27C6C-80D27E08 000DAC 019C+00 2/1 0/0 0/0 .text actionOrderEvent__15daObjWarpKBrg_cFv */
void daObjWarpKBrg_c::actionOrderEvent() {
    daMidna_c* midna_p = (daMidna_c*)daPy_py_c::getMidnaActor();

    if (eventInfo.checkCommandTalk()) {
        midna_p->onTagWaitPosPortalObj(&mMidnaWaitPos);
        if (midna_p->current.pos.abs(mMidnaWaitPos) < 5.0f) {
            setAction(ACTION_TALK_EVENT_e);
            mMsgFlow.init(this, getMsgID(), 0, NULL);
        }
    } else {
        orderZHintEvent();
    }
}

/* 80D27E08-80D27ED0 000F48 00C8+00 1/0 0/0 0/0 .text actionWaitWarpEvent__15daObjWarpKBrg_cFv */
void daObjWarpKBrg_c::actionWaitWarpEvent() {
    daMidna_c* midna_p = (daMidna_c*)daPy_py_c::getMidnaActor();

    if (dComIfGp_evmng_startCheck(mEventId[mEventType])) {
        midna_p->onTagWaitPosPortalObj(&mMidnaWaitPos);
        dComIfGp_getEvent().setPt2(this);
        mStaffId = dComIfGp_evmng_getMyStaffId(l_staff_name, NULL, 0);
        setAction(ACTION_WARP_EVENT_e);
        demoProc();
    }
}

/* 80D27ED0-80D28040 001010 0170+00 1/0 0/0 0/0 .text actionOrderATalkEvent__15daObjWarpKBrg_cFv
 */
void daObjWarpKBrg_c::actionOrderATalkEvent() {
    daMidna_c* midna_p = (daMidna_c*)daPy_py_c::getMidnaActor();

    if (eventInfo.checkCommandTalk()) {
        setAction(ACTION_TALK_EVENT_e);
        mMsgFlow.init(this, getMsgID(), 0, NULL);
    } else if (dComIfGp_evmng_startCheck(mEventId[mEventType])) {
        midna_p->onTagWaitPosPortalObj(&mMidnaWaitPos);
        dComIfGp_getEvent().setPt2(this);
        mStaffId = dComIfGp_evmng_getMyStaffId(l_staff_name, NULL, 0);
        setAction(ACTION_WARP_EVENT_e);
        demoProc();
    } else if (checkTalkDistance()) {
        midna_p->onTagWaitPosPortalObj(&mMidnaWaitPos);
        dComIfGp_TargetWarpPt_set(3);
        eventInfo.onCondition(dEvtCnd_CANTALK_e);
        attention_info.flags = 0xA;
    } else {
        midna_p->offTagWaitPos();
        setAction(ACTION_WAIT_e);
    }
}

/* 80D28040-80D280CC 001180 008C+00 1/0 0/0 0/0 .text actionTalkEvent__15daObjWarpKBrg_cFv */
void daObjWarpKBrg_c::actionTalkEvent() {
    if (mMsgFlow.doFlow(this, NULL, 0)) {
        dComIfGp_event_reset();
        field_0x5d9 = 1;

        int sp8;
        if (mMsgFlow.getEventId(&sp8) == 11) {
            dMeter2Info_setPauseStatus(6);
        }

        setAction(ACTION_ORDER_A_TALK_EVENT_e);
        // "Kakariko Bridge: talk end!"
        OS_REPORT_ERROR("カカリコ橋：会話終了！\n");
    }
}

/* 80D280CC-80D28144 00120C 0078+00 1/0 0/0 0/0 .text actionWarpEvent__15daObjWarpKBrg_cFv */
void daObjWarpKBrg_c::actionWarpEvent() {
    if (!dComIfGp_evmng_endCheck(mEventId[mEventType])) {
        dComIfGp_getEvent().setSkipProc(this, eventCallBack, 0);
        demoProc();
    }
}

/* 80D28144-80D28148 001284 0004+00 1/0 0/0 0/0 .text            actionDead__15daObjWarpKBrg_cFv */
void daObjWarpKBrg_c::actionDead() {}

/* 80D28148-80D2814C 001288 0004+00 1/0 0/0 0/0 .text            actionWait2__15daObjWarpKBrg_cFv */
void daObjWarpKBrg_c::actionWait2() {}

/* 80D2814C-80D281E4 00128C 0098+00 1/0 0/0 0/0 .text actionOrderEvent2__15daObjWarpKBrg_cFv */
void daObjWarpKBrg_c::actionOrderEvent2() {
    if (eventInfo.checkCommandDemoAccrpt()) {
        setAction(ACTION_WARP_EVENT2_e);
        mStaffId = dComIfGp_evmng_getMyStaffId(l_staff_name, NULL, 0);
        demoProc();
    } else {
        fopAcM_orderOtherEventId(this, mEventId[mEventType], 0xFF, 0xFFFF, 2, 1);
    }
}

/* 80D281E4-80D28248 001324 0064+00 1/0 0/0 0/0 .text actionWarpEvent2__15daObjWarpKBrg_cFv */
void daObjWarpKBrg_c::actionWarpEvent2() {
    if (dComIfGp_evmng_endCheck(mEventId[mEventType])) {
        setAction(ACTION_DEAD2_e);
    } else {
        demoProc();
    }
}

/* 80D28248-80D2824C 001388 0004+00 1/0 0/0 0/0 .text            actionDead2__15daObjWarpKBrg_cFv */
void daObjWarpKBrg_c::actionDead2() {}

/* 80D2824C-80D28A50 00138C 0804+00 8/6 0/0 0/0 .text            demoProc__15daObjWarpKBrg_cFv */
void daObjWarpKBrg_c::demoProc() {
    static char* action_table[7] = {
        "WAIT",
        "FLY",
        "DOWN",
        "P_APP",
        "P_DIS",
        "B_APP",
        "BEAM",
    };

    daPy_py_c* player_p = daPy_getPlayerActorClass();
    daMidna_c* midna_p = (daMidna_c*)daPy_py_c::getMidnaActor();
    int act_idx = dComIfGp_evmng_getMyActIdx(mStaffId, action_table, 7, 0, 0);

    if (dComIfGp_evmng_getIsAddvance(mStaffId)) {
        switch (act_idx) {
        case 0: {
            int* timer_p = dComIfGp_evmng_getMyIntegerP(mStaffId, "Timer");
            if (timer_p == NULL) {
                mTimer = 1;
            } else {
                mTimer = *timer_p;
            }
            break;
        }
        case 1:
            mpBridgeBck->setPlaySpeed(1.0f);
            mpBridgeBtk->setPlaySpeed(1.0f);

            shape_angle.setall(0);
            field_0x5c8 = 1;
            setSrcEffect();
            fopAcM_seStart(this, Z2SE_OBJ_KKRK_BRG_LIFT_UP, 0);

            if (mpBgW != NULL && mpBgW->ChkUsed()) {
                dComIfG_Bgsp().Release(mpBgW);
            }

            if (dComIfGp_TransportWarp_check()) {
                /* dSv_event_flag_c::M_018 - Main Event - Brought Kakariko bridge back to original location */
                dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[51]);
                // "Kakariko Bridge: Warp destination is correct"
                OS_REPORT("\x1B[43;30mカカリコ橋：ワープ先正解です\n\x1B[m");
            }
            break;
        case 2:
            mpBridgeBtk->setPlaySpeed(1.0f);
            mpBridgeBck->setPlaySpeed(1.0f);

            if (mpBgW != NULL) {
                dComIfG_Bgsp().Regist(mpBgW, this);
            }

            mDoAud_seStart(Z2SE_OBJ_KKRK_BRG_LIFT_DW, &mObjPos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
            player_p->onPlayerNoDraw();
            player_p->onPlayerShadowNoDraw();
            break;
        case 3:
            mpPortalBrk->setFrame(mpPortalBrk->getEndFrame());
            break;
        case 4:
            mpPortalBrk->init((J3DModelData*)dComIfG_getObjectRes(l_arcName[getNameArg()], 10), (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_arcName[getNameArg()], 15), 0, 0, 1.0f, 0, -1);
            mpPortalBrk->setFrame(0.0f);
            mpPortalBrk->setPlaySpeed(1.0f);
            mpPortalBtk->setPlaySpeed(1.0f);
            break;
        case 5:
            field_0x5c8 = 1;
            mTimer = 35;
            setDstEffect();
            calcObjPos();
            mDoAud_seStart(Z2SE_OBJ_KKRK_BRG_WARP_OUT, &mObjPos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
            break;
        case 6:
            setBindEffect();
            fopAcM_seStart(this, Z2SE_MDN_WARP_MAGIC, 0);
            break;
        }
    }

    cXyz effpos;
    cXyz sp28;
    csXyz effrot;
    switch (act_idx) {
    case 0:
        if (cLib_calcTimer<u8>(&mTimer) == 0) {
            dComIfGp_evmng_cutEnd(mStaffId);
        }
        break;
    case 1: {
        int temp_r25 = mpBridgeBtk->play();
        temp_r25 &= mpBridgeBck->play();

        if (240.0f == mpBridgeBck->getFrame()) {
            calcObjPos();
            mDoAud_seStart(Z2SE_OBJ_KKRK_BRG_WARP_IN, &mObjPos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
            // "Kakariko Bridge: Warp SE"
            OS_REPORT("カカリコ橋：ワープＳＥ\n");
        }

        if (temp_r25 != 0) {
            dComIfGp_evmng_cutEnd(mStaffId);
        }

        followSrcEffect();
        break;
    }
    case 2:
        mpBridgeBtk->play();

        if (180.0f == mpBridgeBck->getFrame()) {
            dComIfGp_getVibration().StartShock(8, 0x1F, cXyz(0.0f, 1.0f, 0.0f));
        }

        if (mpBridgeBck->play()) {
            player_p->offPlayerNoDraw();
            player_p->offPlayerShadowNoDraw();
            fopAcM_onSwitch(this, getSwbit());
            dComIfGp_evmng_cutEnd(mStaffId);
        }

        followDstEffect();
        calcObjPos();
        break;
    case 4:
        if (mpPortalBrk->play()) {
            dComIfGp_evmng_cutEnd(mStaffId);
        }
        endDstEffect();
        break;
    case 5:
        if (cLib_calcTimer<u8>(&mTimer) == 0) {
            dComIfGp_evmng_cutEnd(mStaffId);
        }
        followDstEffect();
        break;
    case 6: {
        mDoMtx_stack_c::copy(midna_p->getMtxHairTop());
        mDoMtx_stack_c::transM(-10.0f, -65.0f, 55.0f);
        mDoMtx_stack_c::multVecZero(&sp28);

        mDoMtx_stack_c::copy(mpBridgeModel->getAnmMtx(0));
        mDoMtx_stack_c::transM(0.0f, -180.0f, 0.0f);
        mDoMtx_stack_c::multVecZero(&effpos);

        effrot.y = cLib_targetAngleY(&effpos, &sp28);
        effrot.x = cLib_targetAngleX(&sp28, &effpos);
        effrot.z = 0;

        f32 h_scale = 0.01f * effpos.abs(sp28);

        JPABaseEmitter* emitter_p = dComIfGp_particle_set(0x8B53, &effpos, &effrot, NULL, 0xFF, NULL, -1, NULL, NULL, NULL);
        if (emitter_p != NULL) {
            emitter_p->setGlobalParticleHeightScale(h_scale);
        }

        followBindEffect();
        dComIfGp_evmng_cutEnd(mStaffId);
        break;
    }
    default:
        dComIfGp_evmng_cutEnd(mStaffId);
        break;
    }

    if (mpPortalBtk != NULL) {
        mpPortalBtk->play();
    }
}

/* 80D28A50-80D28AE0 001B90 0090+00 1/1 0/0 0/0 .text            calcObjPos__15daObjWarpKBrg_cFv */
void daObjWarpKBrg_c::calcObjPos() {
    J3DAnmTransform* pbck = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName[getNameArg()], l_bck_idx[getNameArg()]);
    JUT_ASSERT(1191, pbck != 0);

    J3DTransformInfo transinfo;
    pbck->getTransform(0, &transinfo);
    mObjPos.x = transinfo.mTranslate.x;
    mObjPos.y = transinfo.mTranslate.y;
    mObjPos.z = transinfo.mTranslate.z;
}

/* 80D28AE0-80D28B7C 001C20 009C+00 2/2 0/0 0/0 .text checkTalkDistance__15daObjWarpKBrg_cFv */
bool daObjWarpKBrg_c::checkTalkDistance() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    f32 player_dist = fopAcM_searchPlayerDistanceXZ(this);

    if ((getArg0() != 0xFF && player_dist < (10.0f * getArg0())) || (getArg0() == 0xFF && player_dist < 500.0f)) {
        return true;
    } else {
        return false;
    }
}

/* 80D28B7C-80D28C10 001CBC 0094+00 1/1 0/0 0/0 .text calcMidnaWaitPos__15daObjWarpKBrg_cFv */
void daObjWarpKBrg_c::calcMidnaWaitPos() {
    cXyz offset(l_midna_wait_offset);
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::multVec(&offset, &mMidnaWaitPos);

    attention_info.position = mMidnaWaitPos;
    attention_info.position.y += 250.0f;
}

/* 80D28C10-80D28CDC 001D50 00CC+00 1/1 0/0 0/0 .text            setBindEffect__15daObjWarpKBrg_cFv
 */
void daObjWarpKBrg_c::setBindEffect() {
    for (int i = 0; i < 4; i++) {
        mBindEfEmitterID[i] = dComIfGp_particle_set(l_bind_eff[i], &current.pos, &home.angle, &scale, 0xFF, NULL, -1, NULL, NULL, NULL);
        if (mBindEfEmitterID[i] != NULL) {
            mBindEfEmitterID[i]->becomeImmortalEmitter();
        }
    }
}

/* 80D28CDC-80D28D4C 001E1C 0070+00 1/1 0/0 0/0 .text followBindEffect__15daObjWarpKBrg_cFv */
void daObjWarpKBrg_c::followBindEffect() {
    for (int i = 0; i < 4; i++) {
        if (mBindEfEmitterID[i] != NULL) {
            mBindEfEmitterID[i]->setGlobalRTMatrix(mpBridgeModel->getAnmMtx(0));
        }
    }
}

/* 80D28D4C-80D28E9C 001E8C 0150+00 1/1 0/0 0/0 .text            setSrcEffect__15daObjWarpKBrg_cFv
 */
void daObjWarpKBrg_c::setSrcEffect() {
    for (int i = 0; i < 5; i++) {
        mDisappEfEmitterID[i] = dComIfGp_particle_set(l_disapp_eff[i], &current.pos, &home.angle, &scale, 0xFF, NULL, -1, NULL, NULL, NULL);
        if (mDisappEfEmitterID[i] != NULL) {
            mDisappEfEmitterID[i]->becomeImmortalEmitter();
        }
    }

    for (int i = 0; i < 3; i++) {
        mStartEfEmitterID[i] = dComIfGp_particle_set(l_start_eff[i], &current.pos, &home.angle, &scale, 0xFF, NULL, -1, NULL, NULL, NULL);
        if (mStartEfEmitterID[i] != NULL) {
            mStartEfEmitterID[i]->becomeImmortalEmitter();
        }
    }
}

/* 80D28E9C-80D28FEC 001FDC 0150+00 1/1 0/0 0/0 .text            setDstEffect__15daObjWarpKBrg_cFv
 */
void daObjWarpKBrg_c::setDstEffect() {
    for (int i = 0; i < 6; i++) {
        mAppEfEmitterID[i] = dComIfGp_particle_set(l_app_eff[i], &current.pos, &home.angle, &scale, 0xFF, NULL, -1, NULL, NULL, NULL);
        if (mAppEfEmitterID[i] != NULL) {
            mAppEfEmitterID[i]->becomeImmortalEmitter();
        }
    }

    for (int i = 0; i < 2; i++) {
        mEndEfEmitterID[i] = dComIfGp_particle_set(l_end_eff[i], &current.pos, &home.angle, &scale, 0xFF, NULL, -1, NULL, NULL, NULL);
        if (mEndEfEmitterID[i] != NULL) {
            mEndEfEmitterID[i]->becomeImmortalEmitter();
        }
    }
}

/* 80D28FEC-80D290A8 00212C 00BC+00 1/1 0/0 0/0 .text followSrcEffect__15daObjWarpKBrg_cFv */
void daObjWarpKBrg_c::followSrcEffect() {
    for (int i = 0; i < 5; i++) {
        if (mDisappEfEmitterID[i] != NULL) {
            mDisappEfEmitterID[i]->setGlobalRTMatrix(mpBridgeModel->getAnmMtx(mEffJointNo));
        }
    }

    for (int i = 0; i < 3; i++) {
        if (mStartEfEmitterID[i] != NULL) {
            mStartEfEmitterID[i]->setGlobalRTMatrix(mpBridgeModel->getAnmMtx(0));
        }
    }
}

/* 80D290A8-80D29158 0021E8 00B0+00 1/1 0/0 0/0 .text followDstEffect__15daObjWarpKBrg_cFv */
void daObjWarpKBrg_c::followDstEffect() {
    for (int i = 0; i < 6; i++) {
        if (mAppEfEmitterID[i] != NULL) {
            mAppEfEmitterID[i]->setGlobalRTMatrix(mpBridgeModel->getAnmMtx(0));
        }
    }

    for (int i = 0; i < 2; i++) {
        if (mEndEfEmitterID[i] != NULL) {
            mEndEfEmitterID[i]->setGlobalRTMatrix(mpBridgeModel->getAnmMtx(0));
        }
    }
}

/* 80D29158-80D291FC 002298 00A4+00 1/1 0/0 0/0 .text            endSrcEffect__15daObjWarpKBrg_cFv
 */
void daObjWarpKBrg_c::endSrcEffect() {
    for (int i = 0; i < 5; i++) {
        if (mDisappEfEmitterID[i] != NULL) {
            mDisappEfEmitterID[i]->becomeInvalidEmitter();
            mDisappEfEmitterID[i]->quitImmortalEmitter();
            mDisappEfEmitterID[i] = NULL;
        }
    }

    for (int i = 0; i < 3; i++) {
        if (mStartEfEmitterID[i] != NULL) {
            mStartEfEmitterID[i]->becomeInvalidEmitter();
            mStartEfEmitterID[i]->quitImmortalEmitter();
            mStartEfEmitterID[i] = NULL;
        }
    }
}

/* 80D291FC-80D292A0 00233C 00A4+00 2/2 0/0 0/0 .text            endDstEffect__15daObjWarpKBrg_cFv
 */
void daObjWarpKBrg_c::endDstEffect() {
    for (int i = 0; i < 6; i++) {
        if (mAppEfEmitterID[i] != NULL) {
            mAppEfEmitterID[i]->becomeInvalidEmitter();
            mAppEfEmitterID[i]->quitImmortalEmitter();
            mAppEfEmitterID[i] = NULL;
        }
    }

    for (int i = 0; i < 2; i++) {
        if (mEndEfEmitterID[i] != NULL) {
            mEndEfEmitterID[i]->becomeInvalidEmitter();
            mEndEfEmitterID[i]->quitImmortalEmitter();
            mEndEfEmitterID[i] = NULL;
        }
    }
}

/* 80D292A0-80D29448 0023E0 01A8+00 1/0 0/0 0/0 .text            Draw__15daObjWarpKBrg_cFv */
int daObjWarpKBrg_c::Draw() {
    if (getNameArg() == 1) {
        g_env_light.settingTevStruct(32, &current.pos, &tevStr);
    } else {
        g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    }

    g_env_light.setLightTevColorType_MAJI(mpBridgeModel, &tevStr);
    dComIfGd_setListBG();

    if (field_0x5c8 && mpBridgeBck != NULL) {
        mpBridgeBck->entry(mpBridgeModel->getModelData());
    }

    if (mpBridgeBtk != NULL) {
        mpBridgeBtk->entry(mpBridgeModel->getModelData());
    }

    mDoExt_modelUpdateDL(mpBridgeModel);
    mDoExt_bckAnmRemove(mpBridgeModel->getModelData());
    dComIfGd_setList();

    if (mpPortalModel != NULL) {
        dComIfGd_setListDark();
        mpPortalBtk->entry(mpPortalModel->getModelData());
        mpPortalBrk->entry(mpPortalModel->getModelData());
        mDoExt_modelUpdateDL(mpPortalModel);
        mDoExt_brkAnmRemove(mpBridgeModel->getModelData());
        mDoExt_btkAnmRemove(mpBridgeModel->getModelData());
        dComIfGd_setList();
    }

    return 1;
}

/* 80D29448-80D294B0 002588 0068+00 1/0 0/0 0/0 .text            Delete__15daObjWarpKBrg_cFv */
int daObjWarpKBrg_c::Delete() {
    endSrcEffect();
    endDstEffect();

    dComIfG_resDelete(&mPhase, l_arcName[getNameArg()]);
    dComIfG_resDelete(&mEvPhase, l_evArcName);
    return 1;
}

/* 80D294B0-80D29524 0025F0 0074+00 1/0 0/0 0/0 .text daObjWarpKBrg_create1st__FP15daObjWarpKBrg_c
 */
static int daObjWarpKBrg_create1st(daObjWarpKBrg_c* i_this) {
    fopAcM_SetupActor(i_this, daObjWarpKBrg_c);
    return i_this->create1st();
}

/* 80D29524-80D29544 002664 0020+00 1/0 0/0 0/0 .text
 * daObjWarpKBrg_MoveBGDelete__FP15daObjWarpKBrg_c              */
static int daObjWarpKBrg_MoveBGDelete(daObjWarpKBrg_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80D29544-80D29564 002684 0020+00 1/0 0/0 0/0 .text
 * daObjWarpKBrg_MoveBGExecute__FP15daObjWarpKBrg_c             */
static int daObjWarpKBrg_MoveBGExecute(daObjWarpKBrg_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80D29564-80D29590 0026A4 002C+00 1/0 0/0 0/0 .text
 * daObjWarpKBrg_MoveBGDraw__FP15daObjWarpKBrg_c                */
static int daObjWarpKBrg_MoveBGDraw(daObjWarpKBrg_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80D298A4-80D298C4 -00001 0020+00 1/0 0/0 0/0 .data            daObjWarpKBrg_METHODS */
static actor_method_class daObjWarpKBrg_METHODS = {
    (process_method_func)daObjWarpKBrg_create1st,
    (process_method_func)daObjWarpKBrg_MoveBGDelete,
    (process_method_func)daObjWarpKBrg_MoveBGExecute,
    (process_method_func)NULL,
    (process_method_func)daObjWarpKBrg_MoveBGDraw,
};

/* 80D298C4-80D298F4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_KakarikoBrg */
extern actor_process_profile_definition g_profile_Obj_KakarikoBrg = {
    fpcLy_CURRENT_e,         // mLayerID
    3,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_KakarikoBrg,    // mProcName
    &g_fpcLf_Method.base,   // sub_method
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
