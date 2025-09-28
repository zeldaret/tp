/**
 * d_event_manager.cpp
 * Event System Manager
 */

#include "d/dolzel.h" // IWYU pragma: keep

#include "d/d_event_manager.h"
#include "SSystem/SComponent/c_math.h"
#include "d/actor/d_a_player.h"
#include "d/d_camera.h"
#include "d/d_com_inf_game.h"
#include "d/d_demo.h"
#include "d/d_s_play.h"
#include "SSystem/SComponent/c_counter.h"
#include <cstring.h>

#if DEBUG
static dEvM_HIO_c l_HIO;
#endif

namespace {
inline s16 makeCompositId(const s16 index, int type) {
    return index | (type << 8);
}

inline s16 getIndexCompositId(s16 compositId) {
    if (compositId == -1) {
        return -1;
    } else {
        return compositId & 0xFF;
    }
}

inline int getTypeCompositId(s16 compositId) {
    // TODO: reconcile this
    #if DEBUG
    if (compositId == -1) {
        return 0;
    } else {
        return compositId >> 8;
    }
    #else
    return compositId == -1 ? 0 : compositId >> 8;
    #endif
}
}

void dEvent_exception_c::init() {
    mEventInfoIdx = -1;
    mState = 0;
}

/* 800463F0-80046480 040D30 0090+00 0/0 2/2 0/0 .text setStartDemo__18dEvent_exception_cFi */
int dEvent_exception_c::setStartDemo(int mapToolID) {
    int roomNo = dComIfGp_roomControl_getStayNo();
    dStage_MapEvent_dt_c* mapdata = dEvt_control_c::searchMapEventData(mapToolID, roomNo);

    if (mapdata != NULL && mapdata->switch_no != 0xFF && dComIfGs_isSwitch(mapdata->switch_no, roomNo)) {
        return 0xFF;
    } else if (mEventInfoIdx != mapToolID) {
        mEventInfoIdx = mapToolID;
        OS_REPORT("event manager: setStartDemo: %d \n", mapToolID);
    }

    return mapToolID;
}

/* 80046480-800465E8 040DC0 0168+00 1/1 0/0 0/0 .text getEventName__18dEvent_exception_cFv */
const char* dEvent_exception_c::getEventName() {
    static const char* soecial_names[14] = {
        "NORMAL_COMEBACK",
        "DEFAULT_START",
        "SHUTTER_START",
        "SHUTTER_START_STOP",
        "BS_SHUTTER_START",
        "BS_SHUTTER_START_B",
        "KNOB_START",
        "KNOB_START_B",
        "FMASTER_START",
        "FALL_START",
        "CRAWLOUT_START",
        "BOSSWARP_START",
        "PORTALWARP_START",
        "PORTALWARP_START_B",
    };

    int roomNo = dComIfGp_roomControl_getStayNo();
    dStage_roomDt_c* roomDt = dComIfGp_roomControl_getStatusRoomDt(roomNo);
    dStage_MapEventInfo_c* eventInfo = roomDt->getMapEventInfo();

    if (mEventInfoIdx == -1) {
        return "(!NO REGIST!)";
    }

    if (200 < mEventInfoIdx && mEventInfoIdx < 215) {
        if (mEventInfoIdx == 203) {
            stage_stag_info_class* stage_info = dComIfGp_getStageStagInfo();
            JUT_ASSERT(136, stage_info);

            u32 sp8 = dStage_stagInfo_GetSTType(stage_info);
        } else if (mEventInfoIdx == 213) {
            switch (dComIfGp_SelectWarpPt_get()) {
            case 3:
                mEventInfoIdx = 214;
            }
        }

        return soecial_names[mEventInfoIdx - 201];
    }

    if (eventInfo == NULL) {
        OS_REPORT("event manager: get name: no event info!!\n\n");
        return "(!NO INFO!)";
    }

    if (mEventInfoIdx < 0 || mEventInfoIdx > eventInfo->num) {
        OS_REPORT("event manager: get name: illegal number %d!!\n\n", mEventInfoIdx);
        return "(!BAD NUMBER!)";
    }

    switch (eventInfo->m_entries[mEventInfoIdx].type) {
    case 1:
    case 2:
        return eventInfo->m_entries[mEventInfoIdx].data.event_name;
    case 0:
        return "(MAP TOOL CAMERA)";
    default:
        return "(!BAD DATA!)";
    }
}

#if DEBUG
void dEvent_manager_c::debugBfProc() {
    s16 id = makeCompositId(l_HIO.m_playtest.mEventIdx, BASE_DEBUG);
    char* eventname;

    if (mEventList[BASE_DEBUG].getHeaderP() != NULL) {
        eventname = mEventList[BASE_DEBUG].getEventName(l_HIO.m_playtest.mEventIdx);

        switch (l_HIO.m_playtest.field_0xA) {
        case 1:
            if (startCheck(id)) {
                l_HIO.m_playtest.field_0xA = 2;
                mFlags.init();
            }
            break;
        case 2:
            if (endCheck(id)) {
                dComIfGp_getEvent().reset();
                l_HIO.m_playtest.field_0xA = 0;
            }
            break;
        case 3:
            if (endCheck(id)) {
                dComIfGp_getEvent().reset();
                l_HIO.m_playtest.field_0xA = 0;
            }
            break;
        }

        switch (l_HIO.m_playtest.mEventCameraMode) {
        case 1:
            if (l_HIO.m_playtest.field_0xA == 0) {
                l_HIO.m_playtest.field_0xA = 1;
                l_HIO.m_playtest.mEventIdx = l_HIO.m_playtest.mTargetEvent;
            }
            break;
        case 2:
            switch (l_HIO.m_playtest.field_0xA) {
            case 1:
                l_HIO.m_playtest.field_0xA = 0;
                break;
            case 2:
                closeProc(mEventList[BASE_DEBUG].getEventP(l_HIO.m_playtest.mEventIdx));

                if (dDemo_c::getMode() != 0) {
                    dDemo_c::end();
                }

                l_HIO.m_playtest.field_0xA = 3;
                break;
            }
            break;
        }

        eventname = mEventList[BASE_DEBUG].getEventName(l_HIO.m_playtest.mEventIdx);
        switch (l_HIO.m_playtest.field_0xA) {
        case 1:
            fopAcM_orderOtherEvent(daPy_getPlayerActorClass(), eventname, 0xFFFF, 1, 0);
        }

        l_HIO.m_playtest.mEventCameraMode = 0;
    }
}
#endif

#if DEBUG
static void dummyStrings() {
    char* s = "debugPrint\n";
    s = "header->event.num = %d\n";
    s = "event[%d] = (name %s, n_staff = %d endSound = %d)\n";
    s = "  staff[%d] = %d\n";
    s = "staff[%d] = {name %s, tag_id = %d, startCut = %d type = %d, always = %d}\n";
    s = "cut[%d] = {name %s, startFlag (%d,%d,%d) ,flagId %d, dataTop %d,next %d}\n";
    s = "data[%d] = {name %s, type %d, index %d, number %d, next %d}\n";
    s = "string = %s\n";
}
#endif

/* 800465E8-80046688 040F28 00A0+00 1/1 0/0 0/0 .text
 * getSubstance__16dEvent_manager_cFP11dEvDtData_ci             */
void* dEvent_manager_c::getSubstance(dEvDtData_c* evData, int type) {
    if (evData->getIndex() < 0 || evData->getNumber() <= 0) {
        JUT_ASSERT(378, FALSE);
        return NULL;
    }

    if (type != -1 && type != evData->getType()) {
        JUT_ASSERT(383, FALSE);
    }

    switch (evData->getType()) {
    case dEvDtData_c::TYPE_FLOAT:
    case dEvDtData_c::TYPE_VEC:
    case 2:
        return getBase().getFDataP(evData->getIndex());
    case dEvDtData_c::TYPE_INT:
        return getBase().getIDataP(evData->getIndex());
    case dEvDtData_c::TYPE_STRING:
        return getBase().getSDataP(evData->getIndex());
    default:
        // "dEvent_manager_c::getSubstance unsupported type %d"
        OS_REPORT("dEvent_manager_c::getSubstance 未対応タイプ %d\n", evData->getType());
        JUT_ASSERT(403, FALSE);
    }

    return NULL;
}

#if DEBUG
void dEvent_manager_c::setDbgData(const char* srcData) {
    if (srcData != NULL) {
        char* data = const_cast<char*>(srcData);
        mEventList[BASE_DEBUG].init(data, -1);
    }
}
#endif

dEvent_manager_c::dEvent_manager_c() {
    mDataLoaded = false;
}

/* 80379F50-80379F60 0065B0 000F+01 6/6 0/0 0/0 .rodata
 * DataFileName__29@unnamed@d_event_manager_cpp@                */
namespace {
static char const DataFileName[] = "event_list.dat";
};

/* 80046710-80046800 041050 00F0+00 0/0 1/1 0/0 .text            create__16dEvent_manager_cFv */
int dEvent_manager_c::create() {
    mCameraPlay = 0;
    mException.init();
    mFlags.init();
    mCurrentEvType = 0;
    mCurrentEvId = -1;
    unk_0x1b8 = 0;
    mRoomNo = -1;
    mDataLoaded = 0;

    char* res;
    int base_status;
    int i;

    // "event manager: Stage Data init!!"
    OS_REPORT("event manager: \x1b[31mステージデータ初期化！！\n\x1b[m");
    for (i = BASE_ROOM0; i <= BASE_ROOM5; i++) {
        mEventList[i].init();
    }

    res = (char*)dComIfG_getStageRes(DataFileName);
    base_status = mEventList[BASE_STAGE].init(res, -1);

#if DEBUG
    if (res != NULL) {
        // "event manager: BASE_SCENE loaded (%d)"
        OS_REPORT("event manager: BASE_SCENEを読み込んだ (%d)\n", base_status);
    } else {
        // "event manager: BASE_SCENE couldn't be loaded"
        OS_REPORT("event manager: BASE_SCENEは読み込めなかった\n");
    }
#endif

    mEventList[BASE_DEMO].init();

    res = (char*)dComIfG_getObjectRes("Event", DataFileName);
    base_status = mEventList[BASE_KEEP].init(res, -1);

    #if DEBUG
    if (base_status) {
        // "event manager: BASE_KEEP loaded (%d)"
        OS_REPORT("event manager: BASE_KEEPを読み込んだ (%d)\n", base_status);
    } else {
        // "event manager: BASE_KEEP couldn't be loaded"
        OS_REPORT("event manager: BASE_KEEPは読み込めなかった\n");
    }
    #endif
    
    mEventList[BASE_ACTOR].init();

#if DEBUG
    if (l_HIO.field_0x004 < 0) {
        // "Event Manager"
        l_HIO.field_0x004 = mDoHIO_CREATE_CHILD("イベントマネージャ", &l_HIO);
    }

    if (mDoCPd_c::getHoldL(PAD_2)) {
        // "event: file priority mode ON!!"
        OS_REPORT("event: 常駐優先モード ON!!\n");
        l_HIO.m_prioritize_file = true;
    }

    if (l_HIO.m_prioritize_file) {
        mEventList[BASE_DEBUG].init(res, -1);
    } else {
        mEventList[BASE_DEBUG].init();
    }

    if (l_HIO.m_evm_debug && res == NULL) {
        // "!!\n!!\n!!\nEvent List not found!!\n!!\n!!\n"
        OS_REPORT("!!\n!!\n!!\nイベントリスト見つからず!!\n!!\n!!\n");
    }
#endif

    return 1;
}

/* 80046800-80046888 041140 0088+00 0/0 8/8 24/24 .text setObjectArchive__16dEvent_manager_cFPc */
bool dEvent_manager_c::setObjectArchive(char* arcname) {
    char* rt = NULL;

    if (arcname != NULL) {
        char* res = (char*)dComIfG_getObjectRes(arcname, DataFileName);
        rt = res;
        int base_status = mEventList[BASE_ACTOR].init(res, -1);

        #if DEBUG
        if (base_status) {
            // "event manager: BASE_ACTOR loaded (%d)"
            OS_REPORT("event manager: BASE_ACTORを読み込んだ (%d)\n", base_status);
        } else {
            // "event manager: BASE_ACTOR couldn't be loaded"
            OS_REPORT("event manager: BASE_ACTORは読み込めなかった\n");
        }
        #endif
    } else {
        mEventList[BASE_ACTOR].init();
    }

    return rt != NULL;
}

/* 80046888-80046904 0411C8 007C+00 0/0 1/1 0/0 .text            demoInit__16dEvent_manager_cFv */
void dEvent_manager_c::demoInit() {
    if (!mDataLoaded) {
        // "event manager: init demo data!!"
        OS_REPORT("event manager: \x1b[31mデモデータ初期化！！\n\x1b[m");

        char* demo_arcname = dStage_roomControl_c::getDemoArcName();
        if (demo_arcname[0] != '\0') {
            char* res = (char*)dComIfG_getObjectRes(demo_arcname, DataFileName);
            int base_status = mEventList[BASE_DEMO].init(res, -1);

            #if DEBUG
            if (base_status) {
                // "event manager: BASE_DEMO loaded (%d)"
                OS_REPORT("event manager: BASE_DEMO[%s]を読み込んだ (%d)\n", demo_arcname, base_status);
            } else {
                // "event manager: BASE_DEMO couldn't be loaded"
                OS_REPORT("event manager: BASE_DEMO[%s]は読み込めなかった\n", demo_arcname);
            }
            #endif
        } else {
            // "event manager: BASE_DEMO not available."
            OS_REPORT("event manager: BASE_DEMOはありません。\n");
        }

        mDataLoaded = true;
    }
}

/* 80046904-800469EC 041244 00E8+00 0/0 1/1 0/0 .text            roomInit__16dEvent_manager_cFi */
void dEvent_manager_c::roomInit(int roomNo) {
    // "event manager: room data init!! (%d)"
    OS_REPORT("event manager: \x1b[31m部屋データ初期化！！(%d)\n\x1b[m", roomNo);

    if (roomNo == -1) {
        roomNo = dComIfGp_roomControl_getStayNo();
    }

    char arcname[8];
    strcpy(arcname, dComIfG_getRoomArcName(roomNo));
    char* res = (char*)dComIfG_getStageRes(arcname, DataFileName);

    int i;
    int room_idx = -1;
    for (i = BASE_ROOM0; i <= BASE_ROOM5; i++) {
        if (mEventList[i].getHeaderP() == NULL) {
            room_idx = i;
            continue;
        }

        if (mEventList[i].roomNo() == roomNo) {
            room_idx = i;
            break;
        }
    }

    int base_status;
    if (room_idx != -1) {
        base_status = mEventList[room_idx].init(res, roomNo);
    }

    mRoomNo = roomNo;

#if DEBUG
    if (room_idx == -1) {
        // "event manager: BASE_ROOM no free space."
        OS_REPORT("event manager: BASE_ROOM空きがなかった。\n");
    } else if (base_status != 0) {
        // "event manager: BASE_ROOM:%d[%s] loaded (%d)"
        OS_REPORT("event manager: BASE_ROOM:%d[%s]を読み込んだ (%d)\n", room_idx, arcname, base_status);
    } else {
        // "event manager: BASE_ROOM[%s] couldn't be loaded"
        OS_REPORT("event manager: BASE_ROOM[%s]は読み込めなかった\n", arcname);
    }
#endif
}

void dEvent_manager_c::roomFinish(int roomNo) {
    int i;
    for (i = BASE_ROOM0; i <= BASE_ROOM5; i++) {
        if (mEventList[i].getHeaderP() != NULL && roomNo == mEventList[i].roomNo()) {
            // "event manager: BASE_ROOM:%d[%s] delete."
            OS_REPORT("event manager: BASE_ROOM:%d[%s]削除。\n", i, dComIfG_getRoomArcName(roomNo));
            mEventList[i].init();
        }
    }
}

/* 80046A58-80046C0C 041398 01B4+00 0/0 1/1 0/0 .text orderStartDemo__16dEvent_manager_cFv */
int dEvent_manager_c::orderStartDemo() {
    BOOL success = FALSE;
    fopAc_ac_c* var_r26 = NULL;

    if (mException.mEventInfoIdx == -2) {
        return -2;
    }

    s16 evId;
    if (200 < mException.mEventInfoIdx && mException.mEventInfoIdx < 215) {
        evId = getEventIdx(mException.getEventName(), 0xFF, -1);
        OS_REPORT("event manager: event ID %d (%s) order as soecial %d\n", evId, mException.getEventName(), mException.mEventInfoIdx);

        success = fopAcM_orderOtherEventId(var_r26, evId, 0xFF, 0xFFFF, 5, 1);
    } else if (mException.mEventInfoIdx != -1 && mException.mEventInfoIdx != 0xFF) {
        u8 eventInfoIdx = mException.mEventInfoIdx;
        daPy_py_c* spC = daPy_getPlayerActorClass();
        evId = getEventIdx(NULL, eventInfoIdx, -1);
        OS_REPORT("event manager: event ID %d order as maptool %d\n", evId, mException.mEventInfoIdx);
        JUT_ASSERT(679, evId != (-1));

        success = fopAcM_orderMapToolAutoNextEvent(var_r26, eventInfoIdx, evId, 0xFFFF, 1, 5);
    } else if (dComIfGp_getStartStagePoint() == -2 || dComIfGp_getStartStagePoint() == -3) {
        evId = getEventIdx( daPy_py_c::checkNowWolf() ? "WOLF_WORLD_CHANGE_OUT" : "WORLD_CHANGE_OUT", 0xFF, -1);
        OS_REPORT("event manager: event ID %d (WORLD_CHANGE_OUT) order for [%d]\n", evId, mException.mEventInfoIdx);

        success = fopAcM_orderOtherEventId(var_r26, evId, 0xFF, 0xFFFF, 5, 1);
    }

    if (success == FALSE) {
        evId = getEventIdx("DEFAULT_START", 0xFF, -1);
        OS_REPORT("event manager: event ID %d (DEFAULT_START) order for [%d]\n", evId, mException.mEventInfoIdx);

        fopAcM_orderOtherEventId(var_r26, evId, 0xFF, 0xFFFF, 5, 1);
    }

    return evId;
}

void dEvent_manager_c::remove() {
    int i;
    for (i = 0; i < BASE_MAX; i++) {
        mEventList[i].init();
    }

    mCameraPlay = 0;
    mException.init();
    mFlags.init();

#if DEBUG
    if (l_HIO.field_0x004 >= 0) {
        mDoHIO_DELETE_CHILD(l_HIO.field_0x004);
        l_HIO.field_0x004 = -1;
    }
#endif
}

/* 80046C74-80046C88 0415B4 0014+00 1/1 0/0 0/0 .text extraOnObjectCallBack__FP10fopAc_ac_cPv */
static void* extraOnObjectCallBack(fopAc_ac_c* actor, void* data) {
    fopAcM_OnStatus(actor, fopAcM_STATUS_UNK_0x800);
    return NULL;
}

/* 80046C88-80046C9C 0415C8 0014+00 1/1 0/0 0/0 .text extraOffObjectCallBack__FP10fopAc_ac_cPv */
static void* extraOffObjectCallBack(fopAc_ac_c* actor, void* data) {
    fopAcM_OffStatus(actor, fopAcM_STATUS_UNK_0x800);
    return NULL;
}

/* 80046C9C-80046CB8 0415DC 001C+00 1/1 0/0 0/0 .text allOffObjectCallBack__FP10fopAc_ac_cPv */
static void* allOffObjectCallBack(fopAc_ac_c* actor, void* data) {
    fopAc_ac_c* spC = (fopAc_ac_c*)data;

    fopAcM_OffStatus(actor, fopAcM_STATUS_UNK_0x8000 | fopAcM_STATUS_UNK_0x1000);
    return NULL;
}

/* 80046CB8-80046DA0 0415F8 00E8+00 1/1 0/0 0/0 .text
 * startProc__16dEvent_manager_cFP12dEvDtEvent_c                */
void dEvent_manager_c::startProc(dEvDtEvent_c* event) {
    #if DEBUG
    if (l_HIO.m_evm_debug) {
        // "event manager: event %s started!!"
        OS_REPORT("\x1b[34m%06d: event manager: %sのイベント開始!!\n\x1b[m", g_Counter.mCounter0, event->getName());
    }
    #endif

    dEvDtStaff_c* staff;
    fopAc_ac_c* event_actor_p;
    int staffNo;

    int i;
    for (i = 0; i < event->getNStaff(); i++) {
        staffNo = event->getStaff(i);
        staff = getBase().getStaffP(staffNo);

        if (staff->getType() == dEvDtStaff_c::TYPE_DEFAULT) {
            #if DEBUG
            if (l_HIO.m_evm_debug) {
                // "participant %s"
                OS_REPORT("参加者 %s\n", staff->getName());
            }
            #endif

            event_actor_p = specialCast(staff->getName(), 1);
            if (event_actor_p == NULL) {
                event_actor_p = fopAcM_searchFromName4Event(staff->getName(), -1);
            }

            if (event_actor_p != NULL) {
                fopAcM_OnStatus(event_actor_p, fopAcM_STATUS_UNK_0x8000);
                // "event manager: C:Staff ON %s!!"
                OS_REPORT("\x1B[34m%06d: event manager: Ｃ：スタッフ　ON　%s!!\n\x1B[m", g_Counter.mCounter0, dStage_getName(fopAcM_GetProfName(event_actor_p), -1));
            } else {
                #if DEBUG
                if (l_HIO.m_evm_debug) {
                    // "No actor for demo!! Name<%s>"
                    OS_REPORT("デモの出演者がいません！！ 名前<%s>\n", staff->getName());
                }
                #endif
            }
        }

        if (staff->getType() == dEvDtStaff_c::TYPE_ALL) {
            #if DEBUG
            if (l_HIO.m_evm_debug) {
                // "bystander %s"
                OS_REPORT("傍観者 %s\n", staff->getName());
            }
            #endif

            issueStaff(staff->getName());
        }

        staff->init();
    }

    event->mEventState = dEvDt_State_START_e;
    mFlags.init();
}

/* 80046DA0-80046DAC 0416E0 000C+00 2/2 0/0 0/0 .text
 * closeProc__16dEvent_manager_cFP12dEvDtEvent_c                */
void dEvent_manager_c::closeProc(dEvDtEvent_c* event) {
    event->mEventState = dEvDt_State_END_e;
}

/* 80046DAC-80046E64 0416EC 00B8+00 0/0 2/2 0/0 .text            endProc__16dEvent_manager_cFsi */
void dEvent_manager_c::endProc(s16 evId, BOOL isClose) {
    #if DEBUG
    if (l_HIO.m_evm_debug) {
        // "event manager: evId = %d event end process!!"
        OS_REPORT("\x1b[34m%06d: event manager: evId = %d の イベント終了処理!! \n\x1b[m", g_Counter.mCounter0, evId);
    }
    #endif

    dEvDtEvent_c* event = getEventData(evId);

    if (event == NULL) {
        #if DEBUG
        if (l_HIO.m_evm_debug) {
            // "event manager: event not found!!"
            OS_REPORT("\x1b[31mイベントが見つからない!!\n\x1b[m");
        }
        #endif
        return;
    }

    if (isClose) {
        closeProc(event);
    }

    if (event->mEventState != dEvDt_State_END_e) {
        #if DEBUG
        if (l_HIO.m_evm_debug) {
            // "%s(%d) event not in end state!! state = %d"
            OS_REPORT("%s(%d) イベントが終了条件でない!! state = %d\n", getBase().getEventName(evId), evId, event->mEventState);
        }
        #endif
        return;
    }

    const char* param = "ALL";
    fopAcM_Search((fopAcIt_JudgeFunc)allOffObjectCallBack, (void*)param);
    mCameraPlay = 2;
    event->mEventState = 0;
    mCurrentEvType = 0;
    mCurrentEvId = -1;
    dComIfGp_getEvent().setPtD(NULL);
    dComIfGp_getEvent().setPtI(NULL);
}

/* 80046E64-800473FC 0417A4 0598+00 0/0 1/1 0/0 .text            Sequencer__16dEvent_manager_cFv */
void dEvent_manager_c::Sequencer() {
    dEvt_control_c& evtControl = dComIfGp_getEvent();
    dEvDtEvent_c* event = getEventData(mCurrentEvId);
    dStage_MapEvent_dt_c* mapdata = evtControl.getStageEventDt();

    if (event != NULL) {
        if (evtControl.chkEventFlag(0x100)) {
            char* name = NULL;
            if (mapdata != NULL) {
                switch (mapdata->type) {
                case dStage_MapEvent_dt_TYPE_MAPTOOLCAMERA:
                default:
                    break;
                case dStage_MapEvent_dt_TYPE_ZEV:
                case dStage_MapEvent_dt_TYPE_STB:
                    name = mapdata->data.event_name;
                    break;
                }

                if (
                    #if DEBUG
                    (dStage_MapEvent_dt_c_getEventSCutSW(mapdata) != 0 || l_HIO.m_enable_skip) &&
                    #else
                    dStage_MapEvent_dt_c_getEventSCutSW(mapdata) != 0 &&
                    #endif
                    !evtControl.chkFlag2(2)
                ) {
                    int scut_type = dStage_MapEvent_dt_c_getEventSCutType(mapdata);
                    if (scut_type == 2) {
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
                        switch (mapdata->type) {
                        case dStage_MapEvent_dt_TYPE_STB:
                            evtControl.setSkipProc(actor, dEv_defaultSkipStb, 0);
                            break;
                        case dStage_MapEvent_dt_TYPE_ZEV:
                            evtControl.setSkipProc(actor, dEv_defaultSkipZev, 0);
                            break;
                        case dStage_MapEvent_dt_TYPE_MAPTOOLCAMERA:
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

            int exitId = -1;
            bool iVar5 = evtControl.chkFlag2(2) != 0;

            if (mapdata != NULL) {
                int scut_type = dStage_MapEvent_dt_c_getEventSCutType(mapdata);
                if (iVar5 && scut_type != 1) {
                    bVar1 = true;
                    cXyz pl_attn_pos(dComIfGp_getPlayer(0)->attention_info.position);
                    cXyz cam_center = dCam_getBody()->Center();
                    f32 distance = cXyz((pl_attn_pos - cam_center)).abs();

                    OS_REPORT("camera: event manager: skip after %d (%f)\n", scut_type, distance);

                    if (scut_type == 0) {
                        if (distance > 180) {
                            dCam_getBody()->EventRecoverNotime();
                        }
                    } else {
                        switch (mapdata->field_0x3) {
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

                switch (mapdata->type) {
                case dStage_MapEvent_dt_TYPE_MAPTOOLCAMERA:
                    switch (mapdata->data.maptool.sound_type) {
                    case EVT_SE_RIDDLE_A:
                        mDoAud_seStart(Z2SE_READ_RIDDLE_A, NULL, 0, 0);
                        break;
                    case EVT_SE_RIDDLE_B:
                        mDoAud_seStart(Z2SE_READ_RIDDLE_B, NULL, 0, 0);
                        break;
                    }

                    if (!bVar1) {
                        if (iVar5 && mapdata->field_0x9 != 0xFF) {
                            exitId = mapdata->field_0x9;
                            evtControl.sceneChange(exitId);
                        } else if (mapdata->data.maptool.field_0x17 != 0xFF) {
                            exitId = mapdata->data.maptool.field_0x17;
                            evtControl.sceneChange(exitId);
                        }
                    }

                    if (mapdata->field_0x7 != 0xFF) {}
                    break;
                case dStage_MapEvent_dt_TYPE_STB:
                    if (!bVar1) {
                        if (iVar5 && mapdata->field_0x9 != 0xFF) {
                            exitId = mapdata->field_0x9;
                            evtControl.sceneChange(exitId);
                        } else if (mapdata->field_0x7 != 0xFF) {
                            exitId = mapdata->field_0x7;
                            evtControl.sceneChange(exitId);
                        }
                    }
                    break;
                case dStage_MapEvent_dt_TYPE_ZEV:
                    if (!bVar1) {
                        if (iVar5 && mapdata->field_0x9 != 0xFF) {
                            exitId = mapdata->field_0x9;
                            evtControl.sceneChange(exitId);
                        } else if (mapdata->field_0x7 != 0xFF) {
                            exitId = mapdata->field_0x7;
                            evtControl.sceneChange(exitId);
                        }
                    }
                    break;
                }
            }

            if (exitId == -1) {
                getBase().advanceCut(event);
                closeProc(event);
                evtControl.reset();
            }
        } else {
            if (event->mEventState == dEvDt_State_START_e) {
                getBase().advanceCut(event);
            }
        }

        if (unk_0x1b8 != 0) {
            unk_0x1b8--;
        }
    } else {
        if (evtControl.chkEventFlag(0x100)) {
            Z2GetAudioMgr()->setDemoName(NULL);
        }
    }
}

/* 800473FC-80047454 041D3C 0058+00 0/0 1/1 0/0 .text            Experts__16dEvent_manager_cFv */
void dEvent_manager_c::Experts() {
    dEvDtEvent_c* event = getEventData(mCurrentEvId);
    if (event != NULL && event->mEventState == dEvDt_State_START_e) {
        event->specialStaffProc(getBase().getStaffP());
    }
}

/* 80047454-800474BC 041D94 0068+00 1/1 0/0 0/0 .text            getEventData__16dEvent_manager_cFsi
 */
dEvDtEvent_c* dEvent_manager_c::getEventData(s16 evIdx, int evType) {
    if (evType <= 0 || evType > BASE_MAX) {
        return NULL;
    }

    dEvDtBase_c* base = &mEventList[evType];
    if (base == NULL || base->getHeaderP() == NULL) {
        return NULL;
    } else if (evIdx < 0 || evIdx >= base->getEventNum()) {
        return NULL;
    } else {
        return base->getEventP(evIdx);
    }

    return NULL;
}

/* 800474BC-80047514 041DFC 0058+00 9/9 3/3 4/4 .text            getEventData__16dEvent_manager_cFs
 */
dEvDtEvent_c* dEvent_manager_c::getEventData(s16 evCompositId) {
    if (evCompositId == -1) {
        return NULL;
    } else {
        return getEventData(getIndexCompositId(evCompositId),
                            getTypeCompositId(evCompositId));
    }
}

/* 80047514-80047698 041E54 0184+00 3/3 8/8 3/3 .text getEventIdx__16dEvent_manager_cFPCcUcl */
s16 dEvent_manager_c::getEventIdx(const char* eventName, u8 mapToolID, s32 roomNo) {
    static char map_tool_name[17];

    if (roomNo == -1) {
        roomNo = dComIfGp_roomControl_getStayNo();
    }

    int index, type;
    dStage_MapEvent_dt_c* mapdata = NULL;
    if (mapToolID != 0xFF) {
        mapdata = dEvt_control_c::searchMapEventData(mapToolID, roomNo);
        if (mapdata != NULL) {
            switch (mapdata->type) {
            case dStage_MapEvent_dt_TYPE_ZEV:
            case dStage_MapEvent_dt_TYPE_STB:
                return getEventIdx(mapdata->data.event_name, 0xFF, roomNo);
            case dStage_MapEvent_dt_TYPE_MAPTOOLCAMERA:
                sprintf(map_tool_name, "MapToolCamera%d", mapToolID);
                return getEventIdx(map_tool_name, 0xFF, roomNo);
            default:
                JUT_ASSERT(1278, FALSE);
            }
        }
    }

    if (eventName == NULL) {
        return -1;
    }

    for (type = BASE_MAX - 1; type >= BASE_KEEP; type--) {
        if (type < BASE_ROOM0 || BASE_ROOM5 < type || roomNo == mEventList[type].roomNo()) {
            if (mEventList[type].getHeaderP() != NULL) {
                for (index = 0; index < mEventList[type].getEventNum(); index++) {
                    if (strcmp(eventName, mEventList[type].getEventName(index)) == 0) {
                        return makeCompositId(index, type);
                    }
                }
            }
        }
    }

    return -1;
}

/* 80047698-80047758 041FD8 00C0+00 0/0 3/3 25/25 .text
 * getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc              */
s16 dEvent_manager_c::getEventIdx(fopAc_ac_c* actor, u8 mapToolID) {
    static char map_tool_name[17];

    s32 roomNo = fopAcM_GetRoomNo(actor);
    dStage_MapEvent_dt_c* mapdata = NULL;

    mapdata = dEvt_control_c::searchMapEventData(mapToolID, roomNo);
    if (mapdata != NULL) {
        switch (mapdata->type) {
        case dStage_MapEvent_dt_TYPE_ZEV:
        case dStage_MapEvent_dt_TYPE_STB:
            return getEventIdx(actor, mapdata->data.event_name, 0xFF);
        case dStage_MapEvent_dt_TYPE_MAPTOOLCAMERA:
            sprintf(map_tool_name, "MapToolCamera%d", mapToolID);
            return getEventIdx(actor, map_tool_name, 0xFF);
        default:
            JUT_ASSERT(1341, FALSE);
        }
    }

    return -1;
}

/* 80047758-80047930 042098 01D8+00 1/1 10/10 92/92 .text
 * getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc           */
s16 dEvent_manager_c::getEventIdx(fopAc_ac_c* actor, const char* eventName, u8 mapToolID) {
    static char map_tool_name[17];
    s32 actorRoomNo = fopAcM_GetRoomNo(actor);

    int type, index;
    dStage_MapEvent_dt_c* mapdata = NULL;

    if (mapToolID != 0xFF) {
        mapdata = dEvt_control_c::searchMapEventData(mapToolID, actorRoomNo);
        if (mapdata != NULL) {
            switch (mapdata->type) {
            case dStage_MapEvent_dt_TYPE_ZEV:
            case dStage_MapEvent_dt_TYPE_STB:
                return getEventIdx(actor, mapdata->data.event_name, 0xFF);
            case dStage_MapEvent_dt_TYPE_MAPTOOLCAMERA:
                sprintf(map_tool_name, "MapToolCamera%d", mapToolID);
                return getEventIdx(actor, map_tool_name, 0xFF);
            default:
                JUT_ASSERT(1376, FALSE);
            }
        }
    }

    if (eventName == NULL) {
        return -1;
    }

    for (type = BASE_MAX - 1; type >= BASE_KEEP; type--) {
        dEvDtBase_c* base = &mEventList[type];
        dEvDtBase_c actor_event;
        if (type < BASE_ROOM0 || BASE_ROOM5 < type || actorRoomNo == mEventList[type].roomNo()) {
            if (actor != NULL && type == BASE_ACTOR) {
                char* arcname = actor->eventInfo.getArchiveName();
                if (arcname != NULL) {
                    char* data = (char*)dComIfG_getObjectRes(arcname, DataFileName);
                    actor_event.init(data, -1);
                    base = &actor_event;
                }
            }

            if (base->getHeaderP() != NULL) {
                for (index = 0; index < base->getEventNum(); index++) {
                    if (strcmp(eventName, base->getEventName(index)) == 0) {
                        return makeCompositId(index, type);
                    }
                }
            }
        }
    }

    return -1;
}

/* 80047930-80047984 042270 0054+00 0/0 0/0 1/1 .text isMapToolCamera__16dEvent_manager_cFUcl */
BOOL dEvent_manager_c::isMapToolCamera(u8 mapToolID, s32 roomNo) {
    if (roomNo == -1) {
        roomNo = dComIfGp_roomControl_getStayNo();
    }

    dStage_MapEvent_dt_c* mapdata = dEvt_control_c::searchMapEventData(mapToolID, roomNo);
    if (mapdata != NULL) {
        return mapdata->type == dStage_MapEvent_dt_TYPE_MAPTOOLCAMERA;
    } else {
        return FALSE;
    }
}

/* 80047984-800479F8 0422C4 0074+00 0/0 6/6 0/0 .text            order__16dEvent_manager_cFs */
int dEvent_manager_c::order(s16 evCompositId) {
    dEvDtEvent_c* event = getEventData(evCompositId);
    if (event == NULL) {
        return 0;
    }

    #if DEBUG
    if (l_HIO.m_evm_debug) {
        // "event manager: event(%d) ready!!"
        OS_REPORT("\x1b[34m%06d: event manager: イベント(%d)準備状態!! \n\x1b[m", g_Counter.mCounter0, evCompositId);
    }
    #endif

    mCurrentEvType = getTypeCompositId(evCompositId);
    mCurrentEvId = evCompositId;
    startProc(event);
    return 1;
}

/* 800479F8-80047A38 042338 0040+00 1/1 0/0 9/9 .text            startCheck__16dEvent_manager_cFs */
int dEvent_manager_c::startCheck(s16 evCompositId) {
    dEvDtEvent_c* event = getEventData(evCompositId);
    if (event == NULL) {
        return FALSE;
    }

    if (event->mEventState == dEvDt_State_START_e) {
        return TRUE;
    } else {
        return FALSE;
    }
}

/* 80047A38-80047A78 042378 0040+00 0/0 2/2 0/0 .text startCheckOld__16dEvent_manager_cFPCc */
int dEvent_manager_c::startCheckOld(const char* eventname) {
    s16 evId = getEventIdx(eventname, 0xFF, -1);
    return startCheck(evId);
}

/* 80047A78-80047ADC 0423B8 0064+00 1/1 2/2 122/122 .text            endCheck__16dEvent_manager_cFs
 */
int dEvent_manager_c::endCheck(s16 eventID) {
    s16 compositId = dComIfGp_getEvent().runningEventID(eventID);
    dEvDtEvent_c* event = getEventData(compositId);
    if (event == NULL) {
        return 0;
    }

    if (event->mEventState == dEvDt_State_END_e) {
        return TRUE;
    } else {
        return FALSE;
    }
}

/* 80047ADC-80047B1C 04241C 0040+00 0/0 2/2 10/10 .text endCheckOld__16dEvent_manager_cFPCc */
int dEvent_manager_c::endCheckOld(const char* eventname) {
    s16 evId = getEventIdx(eventname, 0xFF, -1);
    return endCheck(evId);
}

/* 80047B1C-80047D4C 04245C 0230+00 1/1 10/10 210/210 .text
 * getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci           */
int dEvent_manager_c::getMyStaffId(const char* staffName, fopAc_ac_c* actor, int tagId) {
    int i;
    int staff_id;
    int n_staff;
    int evtIdx = -1;

    if (dComIfGp_getEvent().getMode() == dEvt_mode_WAIT_e) {
        return -1;
    }

    if (actor != NULL) {
        evtIdx = actor->eventInfo.getIdx();
    }

    if (mCurrentEvId == -1) {
        return -1;
    }

    dEvDtEvent_c* event = getEventData(mCurrentEvId);
    if (event != NULL && (event->mEventState == dEvDt_State_START_e || event->mEventState == dEvDt_State_END_e)) {
        n_staff = event->getNStaff();
    
        bool hasDp = false;
        if (strchr(staffName, ':') != NULL) {
            hasDp = true;
        }

        for (i = 0; i < n_staff; i++) {
            staff_id = event->getStaff(i);
            dEvDtStaff_c* staff = getBase().getStaffP(staff_id);
            if (staff->getType() != dEvDtStaff_c::TYPE_ALL) {
                char buf[20];
                strcpy(buf, staff->getName());

                char* ptr = NULL;
                if (!hasDp) {
                    ptr = std::strchr(buf, ':');
                    if (ptr != NULL) {
                        *ptr = '\0';
                        ptr++;
                    }
                }

                if (strcmp(staffName, buf) == 0 && (tagId < 0 || tagId == staff->getTagID())) {
                    s16 num = 0;
                    if (ptr != NULL) {
                        while (*ptr != '\0') {
                            if (*ptr < '0' || '9' < *ptr) {
                                num = 0;
                                break;
                            }
                            num = *ptr - '0' + num * 10;
                            ptr++;
                        }

                        if (evtIdx < 0 || num == evtIdx) {
                            return staff_id;
                        }
                    } else {
                        return staff_id;
                    }
                }

                if (strcmp(staffName, "Alink") == 0 && strcmp("Link", buf) == 0 &&
                    tagId == staff->getTagID())
                {
                    return staff_id;
                }
            }
        }
    }

    return -1;
}

/* 80047D4C-80047DAC 04268C 0060+00 0/0 9/9 417/417 .text getIsAddvance__16dEvent_manager_cFi */
int dEvent_manager_c::getIsAddvance(int staffId) {
    if (dComIfGp_getEvent().getMode() == dEvt_mode_WAIT_e) {
        if (OREG_F(8)) {
            // "%s: %d: events not running so don't call."
            OS_REPORT("%s: %d: イベント走ってないので呼ばないでください。\n", __FILE__, 1672);
        }
        return 0;
    } else if (staffId == -1) {
        return 0;
    } else if (mCurrentEvId == -1) {
        return 0;
    } else {
        return getBase().getStaffP(staffId)->field_0x40;
    }
}

/* 80047DAC-80047E10 0426EC 0064+00 1/1 0/0 0/0 .text            dEvmng_strcmp__FPCcPc */
static int dEvmng_strcmp(const char* strA, char* strB) {
    u32 len = 0;
    while (strA[len] != '\0') {
        if (strB[len] == '\0') {
            return 1;
        }

        if (len >= 100) {
            return -1;
        }

        if (strA[len] != strB[len]) {
            return 1;
        }

        len++;
    }

    return 0;
}

/* 80047E10-80047F5C 042750 014C+00 1/1 1/1 118/118 .text
 * getMyActIdx__16dEvent_manager_cFiPCPCciii                    */
int dEvent_manager_c::getMyActIdx(int staffId, const char* const* action, int n_action,
                                  BOOL param_3, BOOL param_4) {
    if (dComIfGp_getEvent().getMode() == dEvt_mode_WAIT_e) {
        if (OREG_F(8)) {
            // "%s: %d: events not running so don't call."
            OS_REPORT("%s: %d: イベント走ってないので呼ばないでください。\n", __FILE__, 1733);
        }
        return 0;
    } else if (staffId == -1) {
        return -1;
    } else if (mCurrentEvId == -1) {
        return -1;
    }

    dEvDtStaff_c* staff = getBase().getStaffP(staffId);
    if (staff != NULL) {
        if (staff->field_0x41 != false && !param_3) {
            return staff->field_0x3c;
        }
    } else {
        // "event: getMyActIdx(): staff ID %d data not found."
        OS_REPORT_ERROR("event: getMyActIdx(): スタッフＩＤ %d のデータが見つかりません。\n", staffId);
        return -1;
    }

    int i;
    char* nowCutName = getMyNowCutName(staffId);
    if (nowCutName == NULL) {
        staff->field_0x3c = -1;
        // "event: getMyActIdx(): staff %s is not an active participant."
        OS_REPORT_ERROR("event: getMyActIdx(): スタッフ %s はアクティブな参加者ではありません。\n", staff->getName());
        return -1;
    }

    staff->field_0x41 = true;
    for (i = 0; i < n_action; i++) {
        JUT_ASSERT(1772, action[i]);
        if (param_4) {
            if (dEvmng_strcmp(action[i], nowCutName) == 0) {
                staff->field_0x3c = i;
                return i;
            }
        } else {
            if (strcmp(action[i], nowCutName) == 0) {
                staff->field_0x3c = i;
                return i;
            }
        }
    }

    staff->field_0x3c = -1;

    if (!param_3) {
        // "event: getMyActIdx(): action %s not found. current action %s"
        OS_REPORT_ERROR("event: getMyActIdx(): 動作 %s が見つかりません。現在の動作 %s\n", nowCutName, staff->getName());
    }

    return 0;
}

/* 80047F5C-80047FC8 04289C 006C+00 1/1 9/9 62/62 .text getMyNowCutName__16dEvent_manager_cFi */
char* dEvent_manager_c::getMyNowCutName(int staffId) {
    dEvDtCut_c* cut;
    if (dComIfGp_getEvent().getMode() == dEvt_mode_WAIT_e) {
        if (OREG_F(8)) {
            // "%s: %d: events not running so don't call."
            OS_REPORT("%s: %d: イベント走ってないので呼ばないでください。\n", __FILE__, 1856);
        }
        return NULL;
    } else if (staffId == -1) {
        return NULL;
    } else if (mCurrentEvId == -1) {
        return NULL;
    } else {
        cut = getBase().getCutStaffCurrentCutP(staffId);
        return cut->getName();
    }
}

/* 80047FC8-800480EC 042908 0124+00 2/2 0/0 0/0 .text getMyDataP__16dEvent_manager_cFiPCci */
dEvDtData_c* dEvent_manager_c::getMyDataP(int staffId, const char* dataname, BOOL isSeekStart) {
    dEvDtData_c* data;
    int index;
    dEvDtCut_c* cut;

    if (dComIfGp_getEvent().getMode() == dEvt_mode_WAIT_e) {
        if (OREG_F(8)) {
            // "%s: %d: events not running so don't call."
            OS_REPORT("%s: %d: イベント走ってないので呼ばないでください。\n", __FILE__, 1886);
        }
        return NULL;
    } else if (staffId == -1) {
        return NULL;
    } else if (mCurrentEvId == -1) {
        return NULL;
    } else {
        if (isSeekStart) {
            cut = getBase().getCutStaffStartCutP(staffId);
        } else {
            cut = getBase().getCutStaffCurrentCutP(staffId);
        }

        index = cut->getDataTop();
        while (index != -1) {
            data = getBase().getDataP(index);
            if (strcmp(dataname, data->getName()) == 0) {
                return data;
            }
            index = data->getNext();
        }

        return NULL;
    }
}

/* 800480EC-80048144 042A2C 0058+00 0/0 22/22 355/355 .text
 * getMySubstanceP__16dEvent_manager_cFiPCci                    */
void* dEvent_manager_c::getMySubstanceP(int staffId, const char* dataname, int datatype) {
    dEvDtData_c* data = getMyDataP(staffId, dataname, FALSE);
    if (data == NULL) {
        return NULL;
    }

    return getSubstance(data, datatype);
}

/* 80048144-8004817C 042A84 0038+00 0/0 12/12 0/0 .text getMySubstanceNum__16dEvent_manager_cFiPCc
 */
int dEvent_manager_c::getMySubstanceNum(int staffId, const char* dataname) {
    dEvDtData_c* data = getMyDataP(staffId, dataname, FALSE);
    if (data == NULL) {
        return NULL;
    } else {
        return data->getNumber();
    }
}

/* 8004817C-800481F4 042ABC 0078+00 1/1 78/78 182/182 .text            cutEnd__16dEvent_manager_cFi
 */
void dEvent_manager_c::cutEnd(int staffId) {
    dEvDtCut_c* cut;
    if (dComIfGp_getEvent().getMode() == dEvt_mode_WAIT_e) {
        if (OREG_F(8)) {
            // "%s: %d: events not running so don't call."
            OS_REPORT("%s: %d: イベント走ってないので呼ばないでください。\n", __FILE__, 1984);
        }
        return;
    } else if (staffId == -1) {
        return;
    } else if (mCurrentEvId == -1) {
        return;
    } else {
        cut = getBase().getCutStaffCurrentCutP(staffId);
        mFlags.flagSet(cut->getFlagId());
    }
}

/* 800481F4-800482CC 042B34 00D8+00 0/0 4/4 0/0 .text
 * getEventPrio__16dEvent_manager_cFP10fopAc_ac_cs              */
int dEvent_manager_c::getEventPrio(fopAc_ac_c* actor, s16 evCompositId) {
    dEvDtEvent_c* event = NULL;
    dEvDtBase_c eventBase;

    if (getTypeCompositId(evCompositId) == 2 && actor != NULL) {
        char* arcname = actor->eventInfo.getArchiveName();
        if (arcname != NULL) {
            char* data = (char*)dComIfG_getObjectRes(arcname, DataFileName);
            eventBase.init(data, -1);
            event = eventBase.getEventP();
        }
    }

    if (event == NULL) {
        event = getEventData(evCompositId);
    }

    if (event == NULL) {
        return 0;
    } else {
        return event->getPriority();
    }
}

/* 800482CC-80048348 042C0C 007C+00 1/1 1/1 0/0 .text            issueStaff__16dEvent_manager_cFPCc
 */
void dEvent_manager_c::issueStaff(const char* staffname) {
    if (strcmp(staffname, "ALL") == 0) {
        fopAcM_Search((fopAcIt_JudgeFunc)extraOnObjectCallBack, NULL);
    } else {
        char nameBuf[32];
        strcpy(nameBuf, staffname);
        fopAc_ac_c* actor = fopAcM_searchFromName4Event(nameBuf, -1);
        fopAcM_OnStatus(actor, fopAcM_STATUS_UNK_0x800);
    }
}

/* 80048348-800483C4 042C88 007C+00 0/0 1/1 0/0 .text            cancelStaff__16dEvent_manager_cFPCc
 */
void dEvent_manager_c::cancelStaff(const char* staffname) {
    if (!strcmp(staffname, "ALL")) {
        fopAcM_Search((fopAcIt_JudgeFunc)extraOffObjectCallBack, NULL);
    } else {
        char nameBuf[32];
        strcpy(nameBuf, staffname);
        fopAc_ac_c* actor = fopAcM_searchFromName4Event(nameBuf, -1);
        fopAcM_OffStatus(actor, fopAcM_STATUS_UNK_0x800);
    }
}

/* 800483C4-800483E0 042D04 001C+00 1/1 2/2 38/38 .text setGoal__16dEvent_manager_cFP4cXyz */
void dEvent_manager_c::setGoal(cXyz* pos) {
    mGoal.set(*pos);
}

/* 800483E0-800483E8 042D20 0008+00 0/0 1/1 1/1 .text            getGoal__16dEvent_manager_cFv */
cXyz* dEvent_manager_c::getGoal() {
    return &mGoal;
}

/* 800483E8-8004846C 042D28 0084+00 0/0 5/5 27/27 .text getRunEventName__16dEvent_manager_cFv */
const char* dEvent_manager_c::getRunEventName() {
    if (mCurrentEvId == -1) {
        return "NO DATA";
    }

    if (getBase().getHeaderP() == NULL) {
        return "NO DATA";
    }

    dEvDtEvent_c* event = getEventData(mCurrentEvId);
    if (event != NULL && event->mEventState == dEvDt_State_START_e) {
        return event->getName();
    } else {
        return "NOT RUNNING";
    }
}

#if DEBUG
dEvM_HIO_c& dEvent_manager_c::getEventHIO() {
    return l_HIO;
}
#endif

struct FindShtrCbPrms {
    s16 profname;
    fopAc_ac_c* actor;
};

/* 8004846C-80048520 042DAC 00B4+00 1/1 0/0 0/0 .text findShutterCallBack__FP10fopAc_ac_cPv */
static fopAc_ac_c* findShutterCallBack(fopAc_ac_c* actor, void* data) {
    FindShtrCbPrms* prms = (FindShtrCbPrms*)data;
    cXyz diff;

    if (prms->profname != fopAcM_GetProfName(actor)) {
        return NULL;
    }

    diff = actor->home.pos - prms->actor->home.pos;
    if (diff.x < 10 && diff.x > -10 && diff.y < 10 && diff.y > -10 && diff.z < 10 && diff.z > -10) {
        return actor;
    }

    return NULL;
}

/* 80048520-80048618 042E60 00F8+00 1/1 0/0 0/0 .text specialCast_Shutter__16dEvent_manager_cFsi
 */
fopAc_ac_c* dEvent_manager_c::specialCast_Shutter(s16 actorName, BOOL param_1) {
    fopAc_ac_c* shutterActor = NULL;

    FindShtrCbPrms prms;
    prms.profname = actorName;
    prms.actor = dComIfGp_getPlayer(0);

    if (prms.actor == NULL) {
        JUT_ASSERT(2238, FALSE);
    }

    shutterActor = fopAcM_Search((fopAcIt_JudgeFunc)findShutterCallBack, &prms);
    if (shutterActor != NULL && param_1) {
        cXyz goal(shutterActor->home.pos);
        s16 angle = prms.actor->home.angle.y + 0x8000;

        goal.x += cM_ssin(angle) * 100;
        goal.z += cM_scos(angle) * 100;
        setGoal(&goal);

        dComIfGp_getEvent().setPt2(shutterActor);
        dComIfGp_getEvent().setPtD(shutterActor);
    }

    return shutterActor;
}

/* 80048618-80048748 042F58 0130+00 1/1 0/0 0/0 .text specialCast__16dEvent_manager_cFPCci */
fopAc_ac_c* dEvent_manager_c::specialCast(const char* staffname, BOOL param_1) {
    fopAc_ac_c* shutterActor = NULL;
    if (staffname == NULL) {
        return shutterActor;
    }

    if (strcmp(staffname, "SHUTTER_DOOR") == 0) {
        shutterActor = specialCast_Shutter(PROC_KNOB20, param_1);
        if (shutterActor == NULL) {
            shutterActor = specialCast_Shutter(PROC_BOSS_DOOR, param_1);
        }
        if (shutterActor == NULL) {
            shutterActor = specialCast_Shutter(PROC_L1BOSS_DOOR, param_1);
        }
        if (shutterActor == NULL) {
            shutterActor = specialCast_Shutter(PROC_L1MBOSS_DOOR, param_1);
        }
        if (shutterActor == NULL) {
            shutterActor = specialCast_Shutter(PROC_L5BOSS_DOOR, param_1);
        }
        if (shutterActor != NULL) {
            dComIfGp_getEvent().onEventFlag(0x10);
        }
    }

    if (shutterActor != NULL) {
        if (param_1) {
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
    }

    static const char* action_table[] = {
        "WAIT",
        "TALK0",
        "TALK1",
    };

    int actIdx = dComIfGp_getEventManager().getMyActIdx(staffId, action_table, ARRAY_SIZE(action_table), FALSE, FALSE);
    if (actIdx == param_0) {
        dComIfGp_getEventManager().cutEnd(staffId);
    }

    return actIdx;

}

/* 800487F0-8004882C 043130 003C+00 0/0 0/0 108/108 .text ChkPresentEnd__16dEvent_manager_cFv */
int dEvent_manager_c::ChkPresentEnd() {
    return dEv_talkman_get_action(0) >= 1;
}

/* 8004882C-8004886C 04316C 0040+00 0/0 2/2 2/2 .text checkStartDemo__16dEvent_manager_cFv */
int dEvent_manager_c::checkStartDemo() {
    if (!dComIfGp_getEvent().runCheck()) {
        return FALSE;
    }

    if (mException.mEventInfoIdx == -1) {
        return FALSE;
    }

    if (mException.mEventInfoIdx == -2) {
        return FALSE;
    }

    return TRUE;
}
