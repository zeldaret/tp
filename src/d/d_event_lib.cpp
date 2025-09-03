/**
 * d_event_lib.cpp
 * Event Callback Library
 */

#include "d/dolzel.h"

#include "d/d_event_lib.h"
#include "d/d_com_inf_game.h"
#include "f_op/f_op_actor.h"

/* 8004886C-800488A4 0431AC 0038+00 0/0 0/0 23/23 .text eventUpdate__17dEvLib_callback_cFv */
bool dEvLib_callback_c::eventUpdate() {
    if (mAction == NULL) {
        return FALSE;
    } else {
        executeAction();
        return TRUE;
    }
}

/* ############################################################################################## */
/* 804246E0-804246F8 051400 0018+00 2/2 0/0 0/0 .bss             l_startAction */
static action_class<dEvLib_callback_c> l_startAction(&dEvLib_callback_c::initStart,
                                                     &dEvLib_callback_c::executeStart);
/* 804246F8-80424710 051418 0018+00 2/2 0/0 0/0 .bss             l_runAction */
static action_class<dEvLib_callback_c> l_runAction(&dEvLib_callback_c::initRun,
                                                   &dEvLib_callback_c::executeRun);

/* 800488A4-80048940 0431E4 009C+00 1/1 0/0 1/1 .text            setEvent__17dEvLib_callback_cFiii
 */
bool dEvLib_callback_c::setEvent(int mapToolId, int eventIdx, int param_2) {
    if (mAction != NULL) {
        return FALSE;
    } else {
        mActor->eventInfo.setMapToolId(mapToolId);
        if (mapToolId != 0xFF && eventIdx == 0xFF) {
            eventIdx = dComIfGp_getEventManager().getEventIdx(mActor, static_cast<u16>(mapToolId));
        }
        mActor->eventInfo.setEventId(eventIdx);
        _C = param_2;
        return setAction(&l_startAction);
    }
}

/* 80048940-80048970 043280 0030+00 0/0 0/0 21/21 .text orderEvent__17dEvLib_callback_cFiii */
void dEvLib_callback_c::orderEvent(int param_0, int param_1, int param_2) {
    setEvent(param_0, param_1, param_2 != 0 ? 0x101 : 1);
}

/* 80048970-800489A8 0432B0 0038+00 3/3 0/0 0/0 .text
 * setAction__17dEvLib_callback_cFP33action_class<17dEvLib_callback_c> */
bool dEvLib_callback_c::setAction(action_class<dEvLib_callback_c>* action) {
    mAction = action;
    if (mAction == NULL) {
        return false;
    } else {
        return initAction();
    }
}

/* 800489A8-800489F8 0432E8 0050+00 1/1 0/0 0/0 .text            initAction__17dEvLib_callback_cFv
 */
bool dEvLib_callback_c::initAction() {
    if (!mAction->getInit()) {
        return TRUE;
    } else {
        return (this->*(mAction->getInit()))();
    }
}

/* 800489F8-80048A50 043338 0058+00 1/1 0/0 0/0 .text executeAction__17dEvLib_callback_cFv */
bool dEvLib_callback_c::executeAction() {
    if (!mAction->getExecute()) {
        return TRUE;
    } else {
        return (this->*(mAction->getExecute()))();
    }
}

/* 80048A50-80048A70 043390 0020+00 1/0 0/0 0/0 .text            initStart__17dEvLib_callback_cFv */
bool dEvLib_callback_c::initStart() {
    return executeStart();
}

/* 80048A70-80048B1C 0433B0 00AC+00 2/1 0/0 0/0 .text            executeStart__17dEvLib_callback_cFv
 */
bool dEvLib_callback_c::executeStart() {
    if (!mActor->eventInfo.checkCommandDemoAccrpt()) {
        if (mActor->eventInfo.getMapToolId() != 0xFF) {
            fopAcM_orderMapToolEvent(mActor, mActor->eventInfo.getMapToolId(),
                                     mActor->eventInfo.getEventId(), 0xFFFF, _C, 0);
        } else {
            fopAcM_orderOtherEventId(mActor, mActor->eventInfo.getEventId(),
                                     mActor->eventInfo.getMapToolId(), 0xFFFF, 0, _C);
        }
        mActor->eventInfo.onCondition(2);
        return TRUE;
    } else {
        return setAction(&l_runAction);
    }
}

/* 80048B1C-80048B48 04345C 002C+00 1/0 0/0 0/0 .text            initRun__17dEvLib_callback_cFv */
bool dEvLib_callback_c::initRun() {
    return eventStart();
}

/* 80048B48-80048BD8 043488 0090+00 1/0 0/0 0/0 .text            executeRun__17dEvLib_callback_cFv
 */
bool dEvLib_callback_c::executeRun() {
    if (!dComIfGp_evmng_endCheck(mActor->eventInfo.getEventId())) {
        return eventRun();
    } else {
        dComIfGp_getEvent().reset();
        setAction(NULL);
        return eventEnd();
    }
}
