/**
 * d_event_manager.cpp
 * Event System Manager
 */

#include "d/dolzel.h"

#include "d/d_event_manager.h"
#include "SSystem/SComponent/c_math.h"
#include "d/actor/d_a_player.h"
#include "d/d_com_inf_game.h"
#include "stdio.h"

void dEvent_exception_c::init() {
    mEventInfoIdx = -1;
    mState = 0;
}

/* 800463F0-80046480 040D30 0090+00 0/0 2/2 0/0 .text setStartDemo__18dEvent_exception_cFi */
s32 dEvent_exception_c::setStartDemo(int mapToolID) {
    int roomNo = dComIfGp_roomControl_getStayNo();
    dStage_MapEvent_dt_c* eventData = dEvt_control_c::searchMapEventData(mapToolID, roomNo);

    if (eventData != NULL && eventData->mSwitch != 0xFF &&
        dComIfGs_isSwitch(eventData->mSwitch, roomNo))
    {
        return 0xFF;
    } else if (mEventInfoIdx != mapToolID) {
        mEventInfoIdx = mapToolID;
    }
    return mapToolID;
}

/* 80046480-800465E8 040DC0 0168+00 1/1 0/0 0/0 .text getEventName__18dEvent_exception_cFv */
const char* dEvent_exception_c::getEventName() {
    static const char* soecial_names[14] = {
        "NORMAL_COMEBACK",  "DEFAULT_START",      "SHUTTER_START",  "SHUTTER_START_STOP",
        "BS_SHUTTER_START", "BS_SHUTTER_START_B", "KNOB_START",     "KNOB_START_B",
        "FMASTER_START",    "FALL_START",         "CRAWLOUT_START", "BOSSWARP_START",
        "PORTALWARP_START", "PORTALWARP_START_B",
    };

    int roomNo = dComIfGp_roomControl_getStayNo();
    dStage_roomDt_c* roomDt = dComIfGp_roomControl_getStatusRoomDt(roomNo);
    dStage_MapEventInfo_c* eventInfo = roomDt->getMapEventInfo();
    if (mEventInfoIdx == -1) {
        return "(!NO REGIST!)";
    }

    if (200 < mEventInfoIdx && mEventInfoIdx < 215) {
        if (mEventInfoIdx == 203) {
            dStage_stagInfo_GetSTType(dComIfGp_getStageStagInfo());
        } else if (mEventInfoIdx == 213) {
            switch (dComIfGp_SelectWarpPt_get()) {
            case 3:
                mEventInfoIdx = 214;
            }
        }
        return soecial_names[mEventInfoIdx - 201];
    } else {
        if (eventInfo == NULL) {
            return "(!NO INFO!)";
        }

        if (mEventInfoIdx < 0 || mEventInfoIdx > eventInfo->num) {
            return "(!BAD NUMBER!)";
        }

        dStage_MapEvent_dt_c* revt = &eventInfo->m_entries[mEventInfoIdx];
        switch (revt->mType) {
        case 1:
        case 2:
            return revt->mName;
        case 0:
            return "(MAP TOOL CAMERA)";
        default:
            return "(!BAD DATA!)";
        }
    }
}

/* 800465E8-80046688 040F28 00A0+00 1/1 0/0 0/0 .text
 * getSubstance__16dEvent_manager_cFP11dEvDtData_ci             */
void* dEvent_manager_c::getSubstance(dEvDtData_c* p_data, int type) {
    if (p_data->getIndex() < 0 || p_data->getNumber() <= 0) {
        return NULL;
    } else {
        switch (p_data->getType()) {
        case dEvDtData_c::TYPE_FLOAT:
        case dEvDtData_c::TYPE_VEC:
        case 2:
            return getBase().getFDataP(p_data->getIndex());
        case dEvDtData_c::TYPE_INT:
            return getBase().getIDataP(p_data->getIndex());
        case dEvDtData_c::TYPE_STRING:
            return getBase().getSDataP(p_data->getIndex());
        }
        return NULL;
    }
}

void dEvent_manager_c::setDbgData(const char* buffer) {
    if(buffer) {
        char* writableBuffer = const_cast<char*>(buffer);
        mEventList[11].init(writableBuffer, -1);
    }
}

dEvent_manager_c::dEvent_manager_c() {
    mDataLoaded = false;
}

/* ############################################################################################## */
/* 80379F50-80379F60 0065B0 000F+01 6/6 0/0 0/0 .rodata
 * DataFileName__29@unnamed@d_event_manager_cpp@                */
namespace {
static char const DataFileName[] = "event_list.dat";
};

/* 80046710-80046800 041050 00F0+00 0/0 1/1 0/0 .text            create__16dEvent_manager_cFv */
int dEvent_manager_c::create() {
    mCameraPlay = 0;
    mEventException.init();
    mFlags.init();
    mCurrentEventType = 0;
    mCurrentEventCompositId = -1;
    field_0x1b8 = 0;
    mRoomNo = -1;
    mDataLoaded = 0;

    for (int i = 4; i <= 9; i++) {
        mEventList[i].init();
    }

    mEventList[3].init((char*)dComIfG_getStageRes(DataFileName), -1);
    mEventList[10].init();
    mEventList[1].init((char*)dComIfG_getObjectRes("Event", DataFileName), -1);
    mEventList[2].init();
    return 1;
}

/* 80046800-80046888 041140 0088+00 0/0 8/8 24/24 .text setObjectArchive__16dEvent_manager_cFPc */
bool dEvent_manager_c::setObjectArchive(char* arcName) {
    char* rt = NULL;

    if (arcName != NULL) {
        char* res = (char*)dComIfG_getObjectRes(arcName, DataFileName);
        rt = res;
        mEventList[2].init(res, -1);
    } else {
        mEventList[2].init();
    }
    return rt != NULL;
}

/* 80046888-80046904 0411C8 007C+00 0/0 1/1 0/0 .text            demoInit__16dEvent_manager_cFv */
void dEvent_manager_c::demoInit() {
    if (mDataLoaded == false) {
        if (dStage_roomControl_c::getDemoArcName()[0] != '\0') {
            mEventList[10].init(
                (char*)dComIfG_getObjectRes(dStage_roomControl_c::getDemoArcName(), DataFileName),
                -1);
        }
        mDataLoaded = true;
    }
}

/* 80046904-800469EC 041244 00E8+00 0/0 1/1 0/0 .text            roomInit__16dEvent_manager_cFi */
void dEvent_manager_c::roomInit(int roomNo) {
    if (roomNo == -1) {
        roomNo = dComIfGp_roomControl_getStayNo();
    }
    char arc_name[8];
    strcpy(arc_name, dComIfG_getRoomArcName(roomNo));
    char* data = (char*)dComIfG_getStageRes(arc_name, DataFileName);

    int i;
    int eventIdx = -1;
    for (i = 4; i <= 9; i++) {
        if (mEventList[i].getHeaderP() == NULL) {
            eventIdx = i;
            continue;
        }

        if (mEventList[i].roomNo() == roomNo) {
            eventIdx = i;
            break;
        }
    }

    if (eventIdx != -1) {
        mEventList[eventIdx].init(data, roomNo);
    }
    mRoomNo = roomNo;
}

void dEvent_manager_c::roomFinish(int roomNo) {
    for (int i = 4; i <= 9; i++) {
        if (mEventList[i].getHeaderP() != NULL && roomNo == mEventList[i].roomNo()) {
            mEventList[i].init();
        }
    }
}

/* 80046A58-80046C0C 041398 01B4+00 0/0 1/1 0/0 .text orderStartDemo__16dEvent_manager_cFv */
int dEvent_manager_c::orderStartDemo() {
    BOOL success = FALSE;
    if (mEventException.mEventInfoIdx == -2) {
        return -2;
    }

    s16 eventIdx;
    if (200 < mEventException.mEventInfoIdx && mEventException.mEventInfoIdx < 215) {
        eventIdx = getEventIdx(mEventException.getEventName(), -1, -1);
        success = fopAcM_orderOtherEventId(NULL, eventIdx, 0xFF, 0xFFFF, 5, 1);
    } else if (mEventException.mEventInfoIdx != -1 && mEventException.mEventInfoIdx != 0xFF) {
        u8 eventInfoIdx = mEventException.mEventInfoIdx;
        eventIdx = getEventIdx(NULL, eventInfoIdx, -1);
        success = fopAcM_orderMapToolAutoNextEvent(NULL, eventInfoIdx, eventIdx, 0xFFFF, 1, 5);
    } else if (dComIfGp_getStartStagePoint() == -2 || dComIfGp_getStartStagePoint() == -3) {
        eventIdx = getEventIdx(
            daPy_py_c::checkNowWolf() ? "WOLF_WORLD_CHANGE_OUT" : "WORLD_CHANGE_OUT", 0xFF, -1);
        success = fopAcM_orderOtherEventId(NULL, eventIdx, 0xFF, 0xFFFF, 5, 1);
    }

    if (success == FALSE) {
        eventIdx = getEventIdx("DEFAULT_START", 0xFF, -1);
        fopAcM_orderOtherEventId(NULL, eventIdx, 0xFF, 0xFFFF, 5, 1);
    }

    return eventIdx;
}

void dEvent_manager_c::remove() {
    for (int i = 0; i < 11; i++) {
        mEventList[i].init();
    }
    mCameraPlay = 0;
    mEventException.init();
    mFlags.init();
}

/* 80046C74-80046C88 0415B4 0014+00 1/1 0/0 0/0 .text extraOnObjectCallBack__FP10fopAc_ac_cPv */
static int extraOnObjectCallBack(fopAc_ac_c* pActor, void* param_1) {
    fopAcM_OnStatus(pActor, 0x800);
    return 0;
}

/* 80046C88-80046C9C 0415C8 0014+00 1/1 0/0 0/0 .text extraOffObjectCallBack__FP10fopAc_ac_cPv */
static int extraOffObjectCallBack(fopAc_ac_c* pActor, void* param_1) {
    fopAcM_OffStatus(pActor, 0x800);
    return 0;
}

/* 80046C9C-80046CB8 0415DC 001C+00 1/1 0/0 0/0 .text allOffObjectCallBack__FP10fopAc_ac_cPv */
static int allOffObjectCallBack(fopAc_ac_c* pActor, void* param_1) {
    fopAcM_OffStatus(pActor, 0x9000);
    return 0;
}

/* 80046CB8-80046DA0 0415F8 00E8+00 1/1 0/0 0/0 .text
 * startProc__16dEvent_manager_cFP12dEvDtEvent_c                */
void dEvent_manager_c::startProc(dEvDtEvent_c* p_evnt) {
    for (int i = 0; i < p_evnt->getNStaff(); i++) {
        dEvDtStaff_c* staff = getBase().getStaffP(p_evnt->getStaff(i));

        if (staff->getType() == dEvDtStaff_c::TYPE_DEFAULT) {
            fopAc_ac_c* ac = specialCast(staff->getName(), 1);
            if (ac == NULL) {
                ac = fopAcM_searchFromName4Event(staff->getName(), -1);
            }

            if (ac != NULL) {
                fopAcM_OnStatus(ac, 0x8000);
            }
        }

        if (staff->getType() == dEvDtStaff_c::TYPE_ALL) {
            issueStaff(staff->getName());
        }
        staff->init();
    }

    p_evnt->mEventState = 1;
    mFlags.init();
}

/* 80046DA0-80046DAC 0416E0 000C+00 2/2 0/0 0/0 .text
 * closeProc__16dEvent_manager_cFP12dEvDtEvent_c                */
void dEvent_manager_c::closeProc(dEvDtEvent_c* p_evnt) {
    p_evnt->mEventState = 2;
}

/* 80046DAC-80046E64 0416EC 00B8+00 0/0 2/2 0/0 .text            endProc__16dEvent_manager_cFsi */
void dEvent_manager_c::endProc(s16 eventID, int close) {
    dEvDtEvent_c* event = getEventData(eventID);
    if (event != NULL) {
        if (close != 0) {
            closeProc(event);
        }

        if (event->mEventState == 2) {
            const char* param = "ALL";
            fopAcM_Search((fopAcIt_JudgeFunc)allOffObjectCallBack, (void*)param);
            mCameraPlay = 2;
            event->mEventState = 0;
            mCurrentEventType = 0;
            mCurrentEventCompositId = -1;
            dComIfGp_getEvent().setPtD(NULL);
            dComIfGp_getEvent().setPtI(NULL);
        }
    }
}

/* 80046E64-800473FC 0417A4 0598+00 0/0 1/1 0/0 .text            Sequencer__16dEvent_manager_cFv */
void dEvent_manager_c::Sequencer() {
    dEvt_control_c& evtControl = dComIfGp_getEvent();
    dEvDtEvent_c* event = getEventData(mCurrentEventCompositId);
    dStage_MapEvent_dt_c* mapEvent = evtControl.getStageEventDt();

    if (event != NULL) {
        if (evtControl.chkEventFlag(0x100)) {
            char* name = NULL;
            if (mapEvent != NULL) {
                switch (mapEvent->mType) {
                case 0:
                default:
                    break;
                case 1:
                case 2:
                    name = mapEvent->mName;
                    break;
                }

                if (dStage_MapEvent_dt_c_getEventSCutSW(mapEvent) != 0 && !evtControl.chkFlag2(2)) {
                    if (dStage_MapEvent_dt_c_getEventSCutType(mapEvent) == 2) {
                        evtControl.onSkipFade();
                    }

                    fopAc_ac_c* actor = evtControl.getPt1();
                    if (actor == NULL) {
                        actor = evtControl.getPt2();
                    }

                    if (actor == NULL) {
                        actor = dComIfGp_getPlayer(0);
                    }

                    if (actor != NULL) {
                        switch (mapEvent->mType) {
                        case 2:
                            evtControl.setSkipProc(actor, dEv_defaultSkipStb, 0);
                            break;
                        case 1:
                            evtControl.setSkipProc(actor, dEv_defaultSkipZev, 0);
                            break;
                        case 0:
                            evtControl.setSkipProc(actor, dEv_defaultSkipProc, 0);
                            break;
                        }
                    }
                }
            }
            Z2GetAudioMgr()->setDemoName(name);
        }

        if (event->finishCheck()) {
            bool bVar1 = false;
            if (evtControl.chkFlag2(1)) {
                bVar1 = true;
            }

            int exit = -1;
            bool iVar5;
            if (evtControl.chkFlag2(2)) {
                iVar5 = true;
            } else {
                iVar5 = false;
            }

            if (mapEvent != NULL) {
                int cutType = dStage_MapEvent_dt_c_getEventSCutType(mapEvent);
                if (iVar5 && cutType != 1) {
                    bVar1 = true;
                    cXyz attentionPos(dComIfGp_getPlayer(0)->attention_info.position);
                    cXyz camCenter = dCam_getBody()->Center();
                    f32 distance = cXyz((attentionPos - camCenter)).abs();

                    if (cutType == 0) {
                        if (distance > 180) {
                            dCam_getBody()->EventRecoverNotime();
                        }
                    } else {
                        switch (mapEvent->field_0x3) {
                        case 1:
                        case 2:
                            if (distance > 180) {
                                dCam_getBody()->EventRecoverNotime();
                            }
                            break;
                        case 3:
                            dCam_getBody()->EventRecoverNotime();
                            break;
                        }
                    }
                }

                switch (mapEvent->mType) {
                case 0:
                    switch (mapEvent->mSeType) {
                    case EVT_SE_RIDDLE_A:
                        mDoAud_seStart(Z2SE_READ_RIDDLE_A, NULL, 0, 0);
                        break;
                    case EVT_SE_RIDDLE_B:
                        mDoAud_seStart(Z2SE_READ_RIDDLE_B, NULL, 0, 0);
                        break;
                    }

                    if (!bVar1) {
                        if (iVar5 && mapEvent->field_0x9 != 0xFF) {
                            exit = mapEvent->field_0x9;
                            evtControl.sceneChange(exit);
                        } else if (mapEvent->field_0x17 != 0xFF) {
                            exit = mapEvent->field_0x17;
                            evtControl.sceneChange(exit);
                        }
                    }
                    break;
                case 2:
                    if (!bVar1) {
                        if (iVar5 && mapEvent->field_0x9 != 0xFF) {
                            exit = mapEvent->field_0x9;
                            evtControl.sceneChange(exit);
                        } else if (mapEvent->field_0x7 != 0xFF) {
                            exit = mapEvent->field_0x7;
                            evtControl.sceneChange(exit);
                        }
                    }
                    break;
                case 1:
                    if (!bVar1) {
                        if (iVar5 && mapEvent->field_0x9 != 0xFF) {
                            exit = mapEvent->field_0x9;
                            evtControl.sceneChange(exit);
                        } else if (mapEvent->field_0x7 != 0xFF) {
                            exit = mapEvent->field_0x7;
                            evtControl.sceneChange(exit);
                        }
                    }
                    break;
                }
            }

            if (exit == -1) {
                getBase().advanceCut(event);
                closeProc(event);
                evtControl.reset();
            }
        } else {
            if (event->mEventState == 1) {
                getBase().advanceCut(event);
            }
        }

        if (field_0x1b8 != 0) {
            field_0x1b8--;
        }
    } else {
        if (evtControl.chkEventFlag(0x100)) {
            Z2GetAudioMgr()->setDemoName(NULL);
        }
    }
}

/* 800473FC-80047454 041D3C 0058+00 0/0 1/1 0/0 .text            Experts__16dEvent_manager_cFv */
void dEvent_manager_c::Experts() {
    dEvDtEvent_c* event = getEventData(mCurrentEventCompositId);
    if (event != NULL && event->mEventState == 1) {
        event->specialStaffProc(getBase().getStaffP(0));
    }
}

/* 80047454-800474BC 041D94 0068+00 1/1 0/0 0/0 .text            getEventData__16dEvent_manager_cFsi
 */
dEvDtEvent_c* dEvent_manager_c::getEventData(s16 param_0, int idx) {
    if (idx <= 0 || idx > 11) {
        return NULL;
    } else {
        dEvDtBase_c* base = &mEventList[idx];

        if (base == NULL || base->getHeaderP() == NULL) {
            return NULL;
        } else if (param_0 < 0 || param_0 >= base->getEventNum()) {
            return NULL;
        } else {
            return base->getEventP(param_0);
        }
    }
    return NULL;
}

/* 800474BC-80047514 041DFC 0058+00 9/9 3/3 4/4 .text            getEventData__16dEvent_manager_cFs
 */
dEvDtEvent_c* dEvent_manager_c::getEventData(s16 eventCompositId) {
    if (eventCompositId == -1) {
        return NULL;
    } else {
        return getEventData(getIndexCompositId(eventCompositId),
                            getTypeCompositId(eventCompositId));
    }
}

/* 80047514-80047698 041E54 0184+00 3/3 8/8 3/3 .text getEventIdx__16dEvent_manager_cFPCcUcl */
s16 dEvent_manager_c::getEventIdx(char const* eventName, u8 mapToolID, s32 roomNo) {
    if (roomNo == -1) {
        roomNo = dComIfGp_roomControl_getStayNo();
    }

    if (mapToolID != 0xFF) {
        dStage_MapEvent_dt_c* data = dEvt_control_c::searchMapEventData(mapToolID, roomNo);
        if (data != NULL) {
            switch (data->mType) {
            case 1:
            case 2:
                return getEventIdx(data->mName, 0xFF, roomNo);
            case 0:
                static char map_tool_name[17];
                sprintf(map_tool_name, "MapToolCamera%d", mapToolID);
                return getEventIdx(map_tool_name, 0xFF, roomNo);
            }
        }
    }

    if (eventName == NULL) {
        return -1;
    }

    dEvDtBase_c* event;
    int j;
    int i;
    for (i = ARRAY_SIZE(mEventList) - 1; i >= 1; i--) {
        if (i < 4 || 9 < i || roomNo == mEventList[i].roomNo()) {
            event = &mEventList[i];
            if (event->getHeaderP() != NULL) {
                for (j = 0; j < event->getHeaderP()->eventNum; j++) {
                    if (strcmp(eventName, event->getEventName(j)) == 0) {
                        return makeCompositId(j, i);
                    }
                }
            }
        }
    }
    return -1;
}

/* 80047698-80047758 041FD8 00C0+00 0/0 3/3 25/25 .text
 * getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc              */
s16 dEvent_manager_c::getEventIdx(fopAc_ac_c* pActor, u8 mapToolID) {
    dStage_MapEvent_dt_c* data = dEvt_control_c::searchMapEventData(mapToolID, fopAcM_GetRoomNo(pActor));
    if (data != NULL) {
        switch (data->mType) {
        case 1:
        case 2:
            return getEventIdx(pActor, data->mName, 0xFF);
        case 0:
            static char map_tool_name[17];
            sprintf(map_tool_name, "MapToolCamera%d", mapToolID);
            return getEventIdx(pActor, map_tool_name, 0xFF);
        }
    }
    return -1;
}

/* 80047758-80047930 042098 01D8+00 1/1 10/10 92/92 .text
 * getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc           */
s16 dEvent_manager_c::getEventIdx(fopAc_ac_c* pActor, char const* eventName, u8 mapToolID) {
    s8 actorRoomNo = fopAcM_GetRoomNo(pActor);

    if (mapToolID != 0xFF) {
        dStage_MapEvent_dt_c* data = dEvt_control_c::searchMapEventData(mapToolID, actorRoomNo);
        if (data != NULL) {
            switch (data->mType) {
            case 1:
            case 2:
                return getEventIdx(pActor, data->mName, 0xFF);
            case 0:
                static char map_tool_name[17];
                sprintf(map_tool_name, "MapToolCamera%d", mapToolID);
                return getEventIdx(pActor, map_tool_name, 0xFF);
            }
        }
    }

    if (eventName == NULL) {
        return -1;
    }

    dEvDtBase_c* event;
    int j;
    int type;
    for (type = ARRAY_SIZE(mEventList) - 1; type >= 1; type--) {
        dEvDtBase_c* eventP = &mEventList[type];
        dEvDtBase_c event;
        if (type < 4 || 9 < type || actorRoomNo == mEventList[type].roomNo()) {
            if (pActor != NULL && type == 2 && pActor->eventInfo.getArchiveName() != NULL) {
                event.init(
                    (char*)dComIfG_getObjectRes(pActor->eventInfo.getArchiveName(), DataFileName),
                    -1);
                eventP = &event;
            }
            if (eventP->getHeaderP() != NULL) {
                for (j = 0; j < eventP->getHeaderP()->eventNum; j++) {
                    if (strcmp(eventName, eventP->getEventName(j)) == 0) {
                        return makeCompositId(j, type);
                    }
                }
            }
        }
    }
    return -1;
}

/* 80047930-80047984 042270 0054+00 0/0 0/0 1/1 .text isMapToolCamera__16dEvent_manager_cFUcl */
int dEvent_manager_c::isMapToolCamera(u8 mapToolID, s32 roomNo) {
    if (roomNo == -1) {
        roomNo = dComIfGp_roomControl_getStayNo();
    }

    dStage_MapEvent_dt_c* data = dEvt_control_c::searchMapEventData(mapToolID, roomNo);
    if (data != NULL) {
        return data->mType == 0;
    } else {
        return 0;
    }
}

/* 80047984-800479F8 0422C4 0074+00 0/0 6/6 0/0 .text            order__16dEvent_manager_cFs */
int dEvent_manager_c::order(s16 eventCompositId) {
    dEvDtEvent_c* event = getEventData(eventCompositId);
    if (event == NULL) {
        return 0;
    } else {
        mCurrentEventType = getTypeCompositId(eventCompositId);
        mCurrentEventCompositId = eventCompositId;
        startProc(event);
        return 1;
    }
}

/* 800479F8-80047A38 042338 0040+00 1/1 0/0 9/9 .text            startCheck__16dEvent_manager_cFs */
int dEvent_manager_c::startCheck(s16 eventCompositId) {
    dEvDtEvent_c* event = getEventData(eventCompositId);
    if (event == NULL) {
        return 0;
    } else {
        if (event->mEventState == 1) {
            return 1;
        } else {
            return 0;
        }
    }
}

/* 80047A38-80047A78 042378 0040+00 0/0 2/2 0/0 .text startCheckOld__16dEvent_manager_cFPCc */
int dEvent_manager_c::startCheckOld(char const* name) {
    return startCheck(getEventIdx(name, 0xFF, -1));
}

/* 80047A78-80047ADC 0423B8 0064+00 1/1 2/2 122/122 .text            endCheck__16dEvent_manager_cFs
 */
int dEvent_manager_c::endCheck(s16 eventID) {
    dEvDtEvent_c* event = getEventData(dComIfGp_getEvent().runningEventID(eventID));
    if (event == NULL) {
        return 0;
    } else {
        if (event->mEventState == 2) {
            return 1;
        } else {
            return 0;
        }
    }
}

/* 80047ADC-80047B1C 04241C 0040+00 0/0 2/2 10/10 .text endCheckOld__16dEvent_manager_cFPCc */
int dEvent_manager_c::endCheckOld(char const* name) {
    return endCheck(getEventIdx(name, 0xFF, -1));
}

/* 80047B1C-80047D4C 04245C 0230+00 1/1 10/10 210/210 .text
 * getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci           */
int dEvent_manager_c::getMyStaffId(char const* staffName, fopAc_ac_c* pActor, int tagId) {
    int staffNum;
    int i;
    int evtIdx = -1;
    if (dComIfGp_getEvent().getMode() == EVT_MODE_NONE) {
        return -1;
    } else {
        if (pActor != NULL) {
            evtIdx = pActor->eventInfo.getIdx();
        }
        if (mCurrentEventCompositId == -1) {
            return -1;
        } else {
            dEvDtEvent_c* event = getEventData(mCurrentEventCompositId);

            if (event != NULL && (event->mEventState == 1 || event->mEventState == 2)) {
                int staffCount = event->getNStaff();
                bool hasDp = false;
                if (strchr(staffName, ':') != NULL) {
                    hasDp = true;
                }

                for (i = 0; i < staffCount; i++) {
                    staffNum = event->getStaff(i);
                    dEvDtStaff_c* staff = getBase().getStaffP(staffNum);
                    if (staff->mType != dEvDtStaff_c::TYPE_ALL) {
                        char buf[0x18];
                        strcpy(buf, staff->mName);
                        char* ptr = NULL;
                        if (!hasDp) {
                            char* tmpPtr = strchr(buf, ':');
                            ptr = tmpPtr;
                            if (tmpPtr != NULL) {
                                *tmpPtr = '\0';
                                ptr++;
                            }
                        }

                        if (strcmp(staffName, buf) == 0 && (tagId < 0 || tagId == staff->mTagID)) {
                            s16 num = 0;
                            if (ptr != NULL) {
                                char c;
                                while ((c = *ptr) != '\0') {
                                    if (c < '0' || '9' < c) {
                                        num = 0;
                                        break;
                                    }
                                    num = c - '0' + num * 10;
                                    ptr++;
                                }
                                if (evtIdx < 0 || num == evtIdx) {
                                    return staffNum;
                                }
                            } else {
                                return staffNum;
                            }
                        }

                        if (strcmp(staffName, "Alink") == 0 && strcmp("Link", buf) == 0 &&
                            tagId == staff->mTagID)
                        {
                            return staffNum;
                        }
                    }
                }
            }
        }
    }
    return -1;
}

/* 80047D4C-80047DAC 04268C 0060+00 0/0 9/9 417/417 .text getIsAddvance__16dEvent_manager_cFi */
int dEvent_manager_c::getIsAddvance(int staffIdx) {
    if (dComIfGp_getEvent().getMode() == EVT_MODE_NONE) {
        return 0;
    } else if (staffIdx == -1) {
        return 0;
    } else if (mCurrentEventCompositId == -1) {
        return 0;
    } else {
        return getBase().getStaffP(staffIdx)->field_0x40;
    }
}

/* 80047DAC-80047E10 0426EC 0064+00 1/1 0/0 0/0 .text            dEvmng_strcmp__FPCcPc */
static int dEvmng_strcmp(char const* strA, char* strB) {
    u32 len = 0;
    while (*strA != '\0') {
        if (*strB == '\0') {
            return 1;
        }
        if (len >= 100) {
            return -1;
        }
        if (*strA != *strB) {
            return 1;
        }
        len++;
        strA++;
        strB++;
    }
    return 0;
}

/* 80047E10-80047F5C 042750 014C+00 1/1 1/1 118/118 .text
 * getMyActIdx__16dEvent_manager_cFiPCPCciii                    */
int dEvent_manager_c::getMyActIdx(int staffIdx, char const* const* param_1, int param_2,
                                  int param_3, int param_4) {
    if (dComIfGp_getEvent().getMode() == EVT_MODE_NONE) {
        return 0;
    } else if (staffIdx == -1) {
        return -1;
    } else if (mCurrentEventCompositId == -1) {
        return -1;
    }

    dEvDtStaff_c* staff = getBase().getStaffP(staffIdx);
    if (staff) {
        if (staff->field_0x41 != false && param_3 == 0) {
            return staff->field_0x3c;
        }
    } else {
        return -1;
    }

    int i;
    char* nowCutName = getMyNowCutName(staffIdx);
    if (nowCutName == NULL) {
        staff->field_0x3c = -1;
        return -1;
    } else {
        staff->field_0x41 = true;
        for (i = 0; i < param_2; i++) {
            if (param_4 != 0) {
                if (dEvmng_strcmp(param_1[i], nowCutName) == 0) {
                    staff->field_0x3c = i;
                    return i;
                }
            } else {
                if (strcmp(param_1[i], nowCutName) == 0) {
                    staff->field_0x3c = i;
                    return i;
                }
            }
        }
        staff->field_0x3c = -1;
    }
    return 0;
}

/* 80047F5C-80047FC8 04289C 006C+00 1/1 9/9 62/62 .text getMyNowCutName__16dEvent_manager_cFi */
char* dEvent_manager_c::getMyNowCutName(int cutIndex) {
    if (dComIfGp_getEvent().getMode() == EVT_MODE_NONE) {
        return NULL;
    } else if (cutIndex == -1) {
        return NULL;
    } else if (mCurrentEventCompositId == -1) {
        return NULL;
    } else {
        return getBase().getCutStaffCurrentCutP(cutIndex)->getName();
    }
}

/* 80047FC8-800480EC 042908 0124+00 2/2 0/0 0/0 .text getMyDataP__16dEvent_manager_cFiPCci */
dEvDtData_c* dEvent_manager_c::getMyDataP(int index, char const* name, int type) {
    if (dComIfGp_getEvent().getMode() == EVT_MODE_NONE) {
        return NULL;
    } else if (index == -1) {
        return NULL;
    } else if (mCurrentEventCompositId == -1) {
        return NULL;
    } else {
        dEvDtCut_c* cut;
        if (type != 0) {
            cut = getBase().getCutStaffStartCutP(index);
        } else {
            cut = getBase().getCutStaffCurrentCutP(index);
        }

        int top = cut->getDataTop();
        while (top != -1) {
            dEvDtData_c* data = getBase().getDataP(top);
            if (!strcmp(name, data->getName())) {
                return data;
            }
            top = data->getNext();
        }

        return NULL;
    }
}

/* 800480EC-80048144 042A2C 0058+00 0/0 22/22 355/355 .text
 * getMySubstanceP__16dEvent_manager_cFiPCci                    */
void* dEvent_manager_c::getMySubstanceP(int index, char const* name, int type) {
    dEvDtData_c* data = getMyDataP(index, name, 0);
    if (data == NULL) {
        return NULL;
    }
    return getSubstance(data, type);
}

/* 80048144-8004817C 042A84 0038+00 0/0 12/12 0/0 .text getMySubstanceNum__16dEvent_manager_cFiPCc
 */
int dEvent_manager_c::getMySubstanceNum(int index, char const* name) {
    dEvDtData_c* data = getMyDataP(index, name, 0);
    if (data == NULL) {
        return NULL;
    } else {
        return data->getNumber();
    }
}

/* 8004817C-800481F4 042ABC 0078+00 1/1 78/78 182/182 .text            cutEnd__16dEvent_manager_cFi
 */
void dEvent_manager_c::cutEnd(int cutIndex) {
    if (dComIfGp_getEvent().getMode() == EVT_MODE_NONE) {
        return;
    } else if (cutIndex == -1) {
        return;
    } else if (mCurrentEventCompositId == -1) {
        return;
    } else {
        // instruction swap
        dEvDtCut_c* cut = getBase().getCutStaffCurrentCutP(cutIndex);
        mFlags.flagSet(cut->getFlagId());
    }
}

/* 800481F4-800482CC 042B34 00D8+00 0/0 4/4 0/0 .text
 * getEventPrio__16dEvent_manager_cFP10fopAc_ac_cs              */
int dEvent_manager_c::getEventPrio(fopAc_ac_c* pActor, s16 eventCompositId) {
    dEvDtEvent_c* event = NULL;
    dEvDtBase_c eventBase;
    if (getTypeCompositId(eventCompositId) == 2 && pActor != NULL &&
        pActor->eventInfo.getArchiveName() != NULL)
    {
        char* data = (char*)dComIfG_getObjectRes(pActor->eventInfo.getArchiveName(), DataFileName);
        eventBase.init(data, -1);
        event = eventBase.mEventP;
    }

    if (event == NULL) {
        event = getEventData(eventCompositId);
    }

    if (event == NULL) {
        return 0;
    } else {
        return event->getPriority();
    }
}

/* 800482CC-80048348 042C0C 007C+00 1/1 1/1 0/0 .text            issueStaff__16dEvent_manager_cFPCc
 */
void dEvent_manager_c::issueStaff(char const* name) {
    if (!strcmp(name, "ALL")) {
        fopAcM_Search((fopAcIt_JudgeFunc)extraOnObjectCallBack, NULL);
    } else {
        char nameBuf[0x20];
        strcpy(nameBuf, name);
        fopAcM_OnStatus(fopAcM_searchFromName4Event(nameBuf, -1), 0x800);
    }
}

/* 80048348-800483C4 042C88 007C+00 0/0 1/1 0/0 .text            cancelStaff__16dEvent_manager_cFPCc
 */
void dEvent_manager_c::cancelStaff(char const* name) {
    if (!strcmp(name, "ALL")) {
        fopAcM_Search((fopAcIt_JudgeFunc)extraOffObjectCallBack, NULL);
    } else {
        char nameBuf[0x20];
        strcpy(nameBuf, name);
        fopAcM_OffStatus(fopAcM_searchFromName4Event(nameBuf, -1), 0x800);
    }
}

/* 800483C4-800483E0 042D04 001C+00 1/1 2/2 38/38 .text setGoal__16dEvent_manager_cFP4cXyz */
void dEvent_manager_c::setGoal(cXyz* p_goal) {
    mGoal = *p_goal;
}

/* 800483E0-800483E8 042D20 0008+00 0/0 1/1 1/1 .text            getGoal__16dEvent_manager_cFv */
cXyz* dEvent_manager_c::getGoal() {
    return &mGoal;
}

/* 800483E8-8004846C 042D28 0084+00 0/0 5/5 27/27 .text getRunEventName__16dEvent_manager_cFv */
const char* dEvent_manager_c::getRunEventName() {
    if (mCurrentEventCompositId == -1) {
        return "NO DATA";
    }

    if (getBase().getHeaderP() == NULL) {
        return "NO DATA";
    }

    dEvDtEvent_c* event = getEventData(mCurrentEventCompositId);
    if (event != NULL && event->mEventState == 1) {
        return event->getName();
    } else {
        return "NOT RUNNING";
    }
}

struct FindShtrCbPrms {
    s16 profname;
    fopAc_ac_c* mActor;
};

/* 8004846C-80048520 042DAC 00B4+00 1/1 0/0 0/0 .text findShutterCallBack__FP10fopAc_ac_cPv */
static fopAc_ac_c* findShutterCallBack(fopAc_ac_c* pActor, void* param_1) {
    FindShtrCbPrms* prms = (FindShtrCbPrms*)param_1;
    if (prms->profname != fopAcM_GetProfName(pActor)) {
        return NULL;
    }

    cXyz diff = pActor->home.pos - prms->mActor->home.pos;
    if (diff.x < 10 && diff.x > -10 && diff.y < 10 && diff.y > -10 && diff.z < 10 && diff.z > -10) {
        return pActor;
    }
    return NULL;
}

/* 80048520-80048618 042E60 00F8+00 1/1 0/0 0/0 .text specialCast_Shutter__16dEvent_manager_cFsi
 */
fopAc_ac_c* dEvent_manager_c::specialCast_Shutter(s16 bsTypeId, int param_1) {
    FindShtrCbPrms prms;
    prms.profname = bsTypeId;
    prms.mActor = dComIfGp_getPlayer(0);
    fopAc_ac_c* shutterActor =
        (fopAc_ac_c*)fopAcIt_Judge((fopAcIt_JudgeFunc)findShutterCallBack, &prms);

    if (shutterActor != NULL && param_1 != 0) {
        cXyz goal(shutterActor->home.pos);
        s16 angle = prms.mActor->home.angle.y + 0x8000;
        goal.x += cM_ssin(angle) * 100;
        goal.z += cM_scos(angle) * 100;
        setGoal(&goal);
        dComIfGp_getEvent().setPt2(shutterActor);
        dComIfGp_getEvent().setPtD(shutterActor);
    }
    return shutterActor;
}

/* 80048618-80048748 042F58 0130+00 1/1 0/0 0/0 .text specialCast__16dEvent_manager_cFPCci */
fopAc_ac_c* dEvent_manager_c::specialCast(char const* name, int param_1) {
    fopAc_ac_c* shutterActor = NULL;
    if (name == NULL) {
        return NULL;
    }

    if (!strcmp(name, "SHUTTER_DOOR")) {
        shutterActor = specialCast_Shutter(0x226, param_1);
        if (shutterActor == NULL) {
            shutterActor = specialCast_Shutter(0x228, param_1);
        }
        if (shutterActor == NULL) {
            shutterActor = specialCast_Shutter(0x229, param_1);
        }
        if (shutterActor == NULL) {
            shutterActor = specialCast_Shutter(0x22A, param_1);
        }
        if (shutterActor == NULL) {
            shutterActor = specialCast_Shutter(0x22B, param_1);
        }
        if (shutterActor != NULL) {
            dComIfGp_getEvent().onEventFlag(0x10);
        }
    }

    if (shutterActor != NULL) {
        if (param_1 != 0) {
            fopAcM_OnStatus(shutterActor, 0x1000);
        } else {
            fopAcM_OffStatus(shutterActor, 0x1000);
        }
    }
    return shutterActor;
}

/* 80048748-800487F0 043088 00A8+00 1/1 0/0 0/0 .text            dEv_talkman_get_action__Fi */
static int dEv_talkman_get_action(int param_0) {
    int staffId = dComIfGp_getEventManager().getMyStaffId("TALKMAN", NULL, -1);
    if (staffId == -1) {
        return -1;
    } else {
        /* 803A82A8-803A82B8 -00001 000C+04 1/1 0/0 0/0 .data            action_table$5100 */
        static const char* action_table[] = {
            "WAIT",
            "TALK0",
            "TALK1",
        };
        int actIdx = dComIfGp_getEventManager().getMyActIdx(staffId, action_table,
                                                              ARRAY_SIZE(action_table), 0, 0);
        if (actIdx == param_0) {
            dComIfGp_getEventManager().cutEnd(staffId);
        }
        return actIdx;
    }
}

/* 800487F0-8004882C 043130 003C+00 0/0 0/0 108/108 .text ChkPresentEnd__16dEvent_manager_cFv */
int dEvent_manager_c::ChkPresentEnd() {
    return dEv_talkman_get_action(0) >= 1;
}

/* 8004882C-8004886C 04316C 0040+00 0/0 2/2 2/2 .text checkStartDemo__16dEvent_manager_cFv */
int dEvent_manager_c::checkStartDemo() {
    if (!dComIfGp_getEvent().runCheck()) {
        return 0;
    }

    if (mEventException.mEventInfoIdx == -1) {
        return 0;
    }

    if (mEventException.mEventInfoIdx == -2) {
        return 0;
    }
    return 1;
}
