/**
 * d_event_data.cpp
 * Event Data Processor
 */

#include "d/dolzel.h"

#include "d/d_event_data.h"
#include "d/actor/d_a_player.h"
#include "d/d_demo.h"
#include "d/d_gameover.h"
#include "d/d_msg_object.h"
#include "m_Do/m_Do_graphic.h"

inline BOOL dEvDtFlagCheck(int flag) {
    return dComIfGp_getEventManager().flagCheck(flag);
}

inline void dEvDtFlagSet(int flag) {
    dComIfGp_getEventManager().setFlag(flag);
}

struct TelopDataStruct {
    s32 mName;
    u16 mTelopNo;
    u16 _6;
    u16 _8;
    // padding
};

/* ############################################################################################## */
/* 803A7FB0-803A8238 0050D0 0288+00 2/2 0/0 0/0 .data            TelopData */
static TelopDataStruct TelopData[] = {
    {'D05\0', 1101, 4201, 3}, {'D05A', 1101, -1, 0},   {'D05B', 1101, -1, 0},
    {'D04\0', 1102, -1, 1},   {'D04A', 1102, -1, 0},   {'D04B', 1102, -1, 0},
    {'D01\0', 1103, 4728, 3}, {'D01A', 1103, -1, 0},   {'D01B', 1103, -1, 0},
    {'D10\0', 1104, 4908, 3}, {'D10A', 1104, -1, 0},   {'D10B', 1104, -1, 0},
    {'D11\0', 1105, 5240, 3}, {'D11A', 1105, -1, 0},   {'D11B', 1105, -1, 0},
    {'D06\0', 1106, 5465, 3}, {'D06A', 1106, -1, 0},   {'D06B', 1106, -1, 0},
    {'D07\0', 1107, 5689, 3}, {'D07A', 1107, -1, 0},   {'D07B', 1107, -1, 0},
    {'D08\0', 1108, -1, 1},   {'D08A', 1108, -1, 0},   {'D08B', 1108, -1, 0},
    {'D08C', 1108, -1, 0},    {'D08D', 1108, -1, 0},   {'D09\0', 1109, -1, 1},
    {'D09A', 1109, -1, 0},    {'D09B', 1109, -1, 0},   {'D09C', 1109, -1, 0},
    {'F00\0', 1110, -1, 1},   {'F103', 1111, 10, 3},   {'R01\0', 1111, -1, 0},
    {'F109', 1112, -1, 1},    {'R109', 1112, -1, 0},   {'R209', 1112, -1, 0},
    {'F112', 1113, 1033, 3},  {'F113', 1114, 1024, 3}, {'F108', 1115, -1, 1},
    {'R108', 1115, -1, 0},    {'F115', 1116, 1054, 3}, {'F111', 1118, -1, 1},
    {'F124', 1119, -1, 1},    {'F114', 1120, 2048, 3}, {'F125', 1121, 2572, 3},
    {'F121', 1122, 1581, 3},  {'F122', 1122, 1581, 3}, {'F123', 1122, 1581, 3},
    {'F117', 1123, -1, 1},    {'F128', 1134, 814, 3},  {'R128', 1134, -1, 0},
    {'F127', 1140, -1, 1},    {'R127', 1140, -1, 0},   {'F126', 1141, -1, 1}};

/* 80450640-80450648 0000C0 0004+04 2/2 0/0 0/0 .sdata           numTelopData */
static s32 numTelopData = ARRAY_SIZE(TelopData);

/* 8004372C-800437C4 03E06C 0098+00 2/2 0/0 0/0 .text            getTelopNo__FPCc */
static u16 getTelopNo(char const* pName) {
    s32 val =
        ((pName[3] == 'B' ? 'd' : pName[0]) << 0x18 | pName[4] << 0x10 | pName[5] << 8 | pName[6]);
    for (s32 i = 0; i < numTelopData; i++) {
        if (val == TelopData[i].mName) {
            return TelopData[i].mTelopNo;
        }
    }
    return 0xFFFF;
}

/* 800437C4-800437F0 03E104 002C+00 1/1 0/0 0/0 .text            getTelopNo__Fv */
static u16 getTelopNo() {
    return getTelopNo(dComIfGp_getStartStageName());
}

/* 800437F0-80043A14 03E130 0224+00 1/1 0/0 0/0 .text            getStartTelopNo__Fv */
static u16 getStartTelopNo() {
    const char* startStageName = dComIfGp_getStartStageName();
    const char* lastPlayStateName = dComIfGp_getLastPlayStageName();

    if (strcmp(startStageName, lastPlayStateName) == 0) {
        return 0xFFFF;
    }

    TelopDataStruct* telopData = NULL;
    s32 val = ((startStageName[3] == 'B' ? 'd' : startStageName[0]) << 0x18 |
               startStageName[4] << 0x10 | startStageName[5] << 8 | startStageName[6]);
    for (s32 i = 0; i < numTelopData; i++) {
        if (val == TelopData[i].mName) {
            telopData = &TelopData[i];
            break;
        }
    }

    if (telopData == NULL || telopData->_8 == 0) {
        return 0xFFFF;
    } else if (telopData->_8 == 2 && telopData->_6 != 0xFFFF &&
               !dComIfGs_isEventBit(telopData->_6))
    {
        return 0xFFFF;
    } else if (telopData->_8 == 3 && telopData->_6 != 0xFFFF &&
               !dComIfGs_isStageSwitch(telopData->_6 >> 8, telopData->_6 & 0xFF))
    {
        return 0xFFFF;
    } else {
        TelopDataStruct* lastTelopData = NULL;
        val = ((lastPlayStateName[3] == 'B' ? 'd' : lastPlayStateName[0]) << 0x18 |
               lastPlayStateName[4] << 0x10 | lastPlayStateName[5] << 8 | lastPlayStateName[6]);

        for (s32 i = 0; i < numTelopData; i++) {
            if (val == TelopData[i].mName) {
                lastTelopData = &TelopData[i];
                break;
            }
        }

        if (lastTelopData != NULL && telopData->mTelopNo == lastTelopData->mTelopNo) {
            return 0xFFFF;
        } else {
            return telopData->mTelopNo;
        }
    }
}

/* 80043A14-80043D60 03E354 034C+00 1/1 0/0 0/0 .text            dEvDt_Next_Stage__Fii */
static int dEvDt_Next_Stage(int index, int wipe_type) {
    char* stage;
    s16 point;
    int mode;
    s8 roomNo;
    s8 layer;
    s8 wipe;
    s32 noVisit;
    s32 wipe_time;
    f32 hour;
    f32 speed;
    mode = 0;
    wipe = wipe_type;
    noVisit = true;
    wipe_time = 0;
    hour = 0;
    bool setHour = false;
    speed = 0;

    int* p_id = dComIfGp_evmng_getMyIntegerP(index, "ID");
    if (p_id != NULL) {
        int id = *p_id;
        s8 room_no = dComIfGp_roomControl_getStayNo();
        stage_scls_info_dummy_class* info;

        if (room_no == -1) {
            info = dComIfGp_getStageSclsInfo();
        } else {
            info = dComIfGp_roomControl_getStatusRoomDt(room_no)->getSclsInfo();
        }

        if (info != NULL && id >= 0 && id < info->num) {
            stage_scls_info_class* stgInfo = &info->m_entries[id];
            stage = stgInfo->mStage;
            point = stgInfo->mStart;
            roomNo = (s8)stgInfo->mRoom;
            layer = dStage_sclsInfo_getSceneLayer(stgInfo);
            wipe = dStage_sclsInfo_getWipe(stgInfo);
            wipe_time = dStage_sclsInfo_getWipeTime(stgInfo);

            if (wipe == 15) {
                wipe = 0;
            }

            int timeH = dStage_sclsInfo_getTimeH(stgInfo);
            if (timeH >= 0 && timeH <= 23) {
                setHour = true;
                hour = timeH;
            }
        }
    }

    char* stageP = dComIfGp_evmng_getMyStringP(index, "Stage");
    if (stageP != NULL) {
        stage = stageP;
    }

    int* pointP = dComIfGp_evmng_getMyIntegerP(index, "StartCode");
    if (pointP != NULL) {
        point = *pointP;
    }

    int* roomP = dComIfGp_evmng_getMyIntegerP(index, "RoomNo");
    if (roomP != NULL) {
        roomNo = (s8)*roomP;
    }

    int* layerP = dComIfGp_evmng_getMyIntegerP(index, "Layer");
    if (layerP != NULL) {
        layer = *layerP;
    }

    int* wipeP = dComIfGp_evmng_getMyIntegerP(index, "Wipe");
    if (wipeP != NULL) {
        wipe = *wipeP;
    }

    int* modeP = dComIfGp_evmng_getMyIntegerP(index, "Mode");
    if (modeP != NULL) {
        mode = *modeP;
    }

    f32* speedP = dComIfGp_evmng_getMyFloatP(index, "Speed");
    if (speedP != NULL) {
        speed = *speedP;
    }

    f32* hourP = dComIfGp_evmng_getMyFloatP(index, "Hour");
    if (hourP != NULL) {
        hour = *hourP;
        setHour = true;
    }

    int* noVisitP = dComIfGp_evmng_getMyIntegerP(index, "NoVisit");
    if (noVisitP != NULL) {
        noVisit = false;
    }

    if (stage != NULL && point != -1) {
        if (setHour) {
            dKy_set_nexttime(15.0f * hour);
        }
        dComIfGp_setNextStage(stage, point, roomNo, layer, speed, mode, 1, wipe, 0, noVisit,
                              wipe_time);
    }
    return 1;
}

/* 80043D60-80043DC8 03E6A0 0068+00 3/3 0/0 0/0 .text            flagCheck__11dEvDtFlag_cFi */
BOOL dEvDtFlag_c::flagCheck(int flag) {
    if (flagMaxCheck(flag)) {
        return FALSE;
    } else {
        if (mFlags[(u32)flag / 0x20] & (1 << (flag & 0x1F))) {
            return TRUE;
        } else {
            return FALSE;
        }
    }
}

/* 80043DC8-80043E30 03E708 0068+00 2/2 1/1 0/0 .text            flagSet__11dEvDtFlag_cFi */
BOOL dEvDtFlag_c::flagSet(int flag) {
    if (flagMaxCheck(flag)) {
        return FALSE;
    } else {
        mFlags[(u32)flag / 0x20] |= (1 << (flag & 0x1F));
        return TRUE;
    }
}

BOOL dEvDtFlag_c::flagMaxCheck(int flag) {
    if (flag == -1) {
        return TRUE;
    }

    if (FlagMax <= flag) {
        return TRUE;
    } else {
        return FALSE;
    }
}

void dEvDtFlag_c::init() {
    for (int i = 0; i < 320; i++) {
        mFlags[i] = 0;
    }
}

/* 80043E78-80043EFC 03E7B8 0084+00 0/0 1/1 0/0 .text            finishCheck__12dEvDtEvent_cFv */
int dEvDtEvent_c::finishCheck() {
    for (int i = 0; i < 3; i++) {
        int tmp = field_0x88[i];
        if (tmp == -1) {
            return 1;
        }

        if (!dComIfGp_getEventManager().flagCheck(tmp)) {
            return 0;
        }
    }
    return 1;
}

/* 80043EFC-80043F70 03E83C 0074+00 0/0 1/1 0/0 .text            forceFinish__12dEvDtEvent_cFv */
int dEvDtEvent_c::forceFinish() {
    for (int i = 0; i < 3; i++) {
        int flag = field_0x88[i];
        if (flag == -1) {
            return 1;
        }

        dComIfGp_getEventManager().setFlag(flag);
    }
    return 1;
}

/* 80043F70-80043FD8 03E8B0 0068+00 0/0 1/1 0/0 .text
 * specialStaffProc__12dEvDtEvent_cFP12dEvDtStaff_c             */
void dEvDtEvent_c::specialStaffProc(dEvDtStaff_c* p_staff) {
    for (int i = 0; i < mNStaff; i++) {
        p_staff[mStaff[i]].specialProc();
    }
}

/* 80043FD8-8004403C 03E918 0064+00 4/4 0/0 0/0 .text specialProc_WaitStart__12dEvDtStaff_cFi */
void dEvDtStaff_c::specialProc_WaitStart(int index) {
    int* timer = dComIfGp_evmng_getMyIntegerP(index, "Timer");
    if (timer == NULL) {
        mWaitTimer = 0;
    } else {
        mWaitTimer = *timer;
    }
}

/* 8004403C-80044080 03E97C 0044+00 4/4 0/0 0/0 .text specialProc_WaitProc__12dEvDtStaff_cFi */
void dEvDtStaff_c::specialProc_WaitProc(int param_0) {
    if (mWaitTimer > 0) {
        mWaitTimer--;
    } else {
        dComIfGp_evmng_cutEnd(param_0);
    }
}

/* 80044080-80044134 03E9C0 00B4+00 2/1 0/0 0/0 .text            specialProc__12dEvDtStaff_cFv */
void dEvDtStaff_c::specialProc() {
    switch (mType) {
    case TYPE_PACKAGE:
        specialProcPackage();
        break;
    case TYPE_DIRECTOR:
        specialProcDirector();
        break;
    case TYPE_TIMEKEEPER:
        specialProcTimekeeper();
        break;
    case TYPE_ALL:
        dComIfGp_evmng_cutEnd(mIndex);
        break;
    case TYPE_EFFECT:
        specialProcEffect();
        break;
    case TYPE_CREATE:
        specialProcCreate();
        dComIfGp_evmng_cutEnd(mIndex);
        break;
    case TYPE_SOUND:
        specialProcSound();
        break;
    case TYPE_MESSAGE:
        specialProcMessage();
        break;
    case TYPE_LIGHT:
        specialProcLight();
        break;
    }
}

/* 80044134-80044170 03EA74 003C+00 0/0 1/1 0/0 .text            init__12dEvDtStaff_cFv */
void dEvDtStaff_c::init() {
    mCurrentCut = mStartCut;
    field_0x40 = true;
    field_0x41 = false;
    field_0x3c = -1;
    if (mType == TYPE_CAMERA) {
        dComIfGp_getEventManager().setCameraPlay(1);
    }
}

/* 80044170-80044190 03EAB0 0020+00 1/1 0/0 0/0 .text            advanceCut__12dEvDtStaff_cFi */
void dEvDtStaff_c::advanceCut(int cut) {
    mCurrentCut = cut;
    field_0x40 = true;
    field_0x41 = false;
    field_0x3c = -1;
}

/* 80044190-80044324 03EAD0 0194+00 1/1 0/0 0/0 .text            specialProcLight__12dEvDtStaff_cFv
 */
void dEvDtStaff_c::specialProcLight() {
    int staffId = dComIfGp_evmng_getMyStaffId("LIGHT", NULL, 0);
    if (staffId != -1) {
        char* nowCutName = dComIfGp_getEventManager().getMyNowCutName(staffId);

        if (dComIfGp_evmng_getIsAddvance(staffId)) {
            f32* hourP;

            switch (*(int*)nowCutName) {
            case 'CHAN':
                hourP = dComIfGp_evmng_getMyFloatP(staffId, "Hour");
                if (hourP != NULL) {
                    dKy_instant_timechg(*hourP * 15.0f);
                }

                int* weatherP = dComIfGp_evmng_getMyIntegerP(staffId, "Weather");
                if (weatherP != NULL) {
                    switch (*weatherP) {
                    case 0:
                        dKy_instant_rainchg();
                    }
                }
                break;
            case 'ADD_':
                hourP = dComIfGp_evmng_getMyFloatP(staffId, "Hour");
                if (hourP != NULL) {
                    f32 hours = dComIfGs_getTime() * (1.0f / 15.0f);
                    hours += *hourP;
                    while (hours >= 24.0) {
                        hours -= 24.0;
                    }
                    dKy_instant_timechg(hours * 15.0f);
                }
                break;
            }
        }
        dComIfGp_evmng_cutEnd(staffId);
    }
}

/* 80044324-80044A58 03EC64 0734+00 1/1 0/0 0/0 .text specialProcMessage__12dEvDtStaff_cFv */
void dEvDtStaff_c::specialProcMessage() {
    MessageData* data = (MessageData*)&mData;
    StaffWork* work = &mWork;
    int staffId = dComIfGp_evmng_getMyStaffId("MESSAGE", NULL, 0);
    if (staffId == -1) {
        return;
    }

    char* nowCutName = dComIfGp_getEventManager().getMyNowCutName(staffId);
    if (dComIfGp_evmng_getIsAddvance(staffId)) {
        switch (*(int*)nowCutName) {
        case 'WAIT':
            specialProc_WaitStart(staffId);
            break;
        case 'CREA':
        case 'SHOW':
            work->_0 = UINT_MAX;
            work->mLMsg = NULL;
            work->mMsgSubstanceNum = dComIfGp_evmng_getMySubstanceNum(staffId, "msgNo");
            work->mMsgSubstanceP = dComIfGp_evmng_getMyIntegerP(staffId, "msgNo");
            if (work->mMsgSubstanceNum < 1) {
                work->mMsgSubstanceNum = dComIfGp_evmng_getMySubstanceNum(staffId, "No");
                work->mMsgSubstanceP = dComIfGp_evmng_getMyIntegerP(staffId, "No");
            }
            work->mMsgNo = *work->mMsgSubstanceP;
            data->unk = 0;
            break;
        case 'END\0':
        case 'FINI':
            work->mLMsg->mode = 0x10;
            break;
        case 'CONT':
            work->mLMsg->mode = 0xF;
            int* ptr = dComIfGp_evmng_getMyIntegerP(staffId, "msgNo");
            if (ptr == NULL) {
                ptr = dComIfGp_evmng_getMyIntegerP(staffId, "No");
            }
            work->mMsgNo = *ptr;
            fopMsgM_messageSet(work->mMsgNo, 1000);
            break;
        case 'SAVE':
            work->mMsgNo = 1;
            int* typeP = dComIfGp_evmng_getMyIntegerP(staffId, "Type");
            if (typeP != NULL && *typeP == 1) {
                work->mMsgNo = 2;
            }
            work->_0 = d_GameOver_Create(work->mMsgNo);
            break;
        case 'TELO':
            int* forStartP = dComIfGp_evmng_getMyIntegerP(staffId, "ForStart");

            if (forStartP != NULL && *forStartP != 0) {
                work->mMsgNo = getStartTelopNo();
            } else {
                char* stageP = dComIfGp_evmng_getMyStringP(staffId, "Stage");
                int* noP = dComIfGp_evmng_getMyIntegerP(staffId, "No");
                if (noP != NULL) {
                    work->mMsgNo = *noP;
                } else if (stageP != NULL) {
                    work->mMsgNo = getTelopNo(stageP);
                } else {
                    work->mMsgNo = getTelopNo();
                }
            }

            data->unk = 0;
            if (work->mMsgNo != 0xFFFF) {
                work->_0 = fopMsgM_messageSetDemo(work->mMsgNo);
            }
        }
    }

    switch (*(int*)nowCutName) {
    case 'WAIT':
        specialProc_WaitProc(staffId);
        break;
    case 'CREA':
        switch (data->unk) {
        case 0:
            work->_0 = fopMsgM_messageSet(work->mMsgNo, 1000);
            if (work->_0 != UINT_MAX) {
                data->unk++;
            }
            break;
        case 1:
            work->mLMsg = fopMsgM_SearchByID(work->_0);
            if (work->mLMsg != NULL) {
                data->unk++;
            }
            break;
        case 2:
            dComIfGp_evmng_cutEnd(staffId);
            break;
        }
        break;
    case 'PUSH':
        if (work->mLMsg->mode == 0xE) {
            dComIfGp_evmng_cutEnd(staffId);
        }
        break;
    case 'TELO':
        dComIfGp_evmng_cutEnd(staffId);
        break;
    case 'SHOW':
        switch (data->unk) {
        case 0:
            work->_0 = fopMsgM_messageSet(work->mMsgNo, 1000);
            if (work->_0 != UINT_MAX) {
                data->unk = 1;
            } else {
                break;
            }
        case 1:
            work->mLMsg = fopMsgM_SearchByID(work->_0);
            if (work->mLMsg == NULL) {
                break;
            }

            switch (work->mLMsg->mode) {
            case 0xE:
                work->mLMsg->mode = 0x10;
                break;
            case 0x11:
                break;
            case 0x12:
                work->mLMsg->mode = 0x13;
                work->_0 = UINT_MAX;
                work->mLMsg = NULL;
                work->mMsgSubstanceNum--;
                if (work->mMsgSubstanceNum != 0) {
                    data->unk = 0;
                    work->mMsgSubstanceP++;
                    work->mMsgNo = *work->mMsgSubstanceP;
                } else {
                    dComIfGp_evmng_cutEnd(staffId);
                    data->unk = 99;
                }
                break;
            default:
                break;
            }
            break;
        default:
            dComIfGp_evmng_cutEnd(staffId);
            break;
        }
        break;
    case 'DELE':
    case 'FINI':
        if (work->mLMsg == NULL) {
            dComIfGp_evmng_cutEnd(staffId);
        } else if (work->mLMsg->mode == 0x12) {
            work->mLMsg->mode = 0x13;
            work->_0 = UINT_MAX;
            work->mLMsg = NULL;
            dComIfGp_evmng_cutEnd(staffId);
        }
        break;
    case 'CONT':
        dComIfGp_evmng_cutEnd(staffId);
        break;
    case 'END\0':
        switch (work->mLMsg->mode) {
        case 0x11:
        case 0x12:
            dComIfGp_evmng_cutEnd(staffId);
            break;
        }
        break;
    case 'SAVE':
        if (d_GameOver_CheckDelete(work->_0) && dComIfGp_getGameoverStatus() == 1) {
            dComIfGp_evmng_cutEnd(staffId);
            d_GameOver_Delete(work->_0);
        }
        break;
    default:
        dComIfGp_evmng_cutEnd(staffId);
        break;
    }
}

/* 80044A58-80044CB8 03F398 0260+00 1/1 0/0 0/0 .text            specialProcSound__12dEvDtStaff_cFv
 */
void dEvDtStaff_c::specialProcSound() {
    SoundData* data = (SoundData*)&mData;

    int staffId = dComIfGp_evmng_getMyStaffId("SOUND", NULL, 0);
    if (staffId == -1) {
        return;
    }

    char* nowCutName = dComIfGp_getEventManager().getMyNowCutName(staffId);
    if (dComIfGp_evmng_getIsAddvance(staffId)) {
        switch (*(int*)nowCutName) {
        case 'WAIT':
            specialProc_WaitStart(staffId);
            break;
        case 'STRM':
            mDoAud_bgmStreamPlay();
            break;
        case 'NOMS':
            specialProc_WaitStart(staffId);
            break;
        case 'RIDD':
            int* typeP = dComIfGp_evmng_getMyIntegerP(staffId, "Type");
            if (typeP != NULL && *typeP == 1) {
                mDoAud_seStart(Z2SE_READ_RIDDLE_A, NULL, 0, 0);
            } else {
                mDoAud_seStart(Z2SE_READ_RIDDLE_B, NULL, 0, 0);
            }
            break;
        case 'BGMS':
            int* timerP = dComIfGp_evmng_getMyIntegerP(staffId, "Timer");
            if (timerP != NULL) {
                mDoAud_bgmStop(*timerP);
            }
        }
    }

    switch (*(int*)nowCutName) {
    case 'WAIT':
        specialProc_WaitProc(staffId);
        break;
    case 'NOMS':
        if (data->timer <= dDemo_c::getFrameNoMsg()) {
            dComIfGp_evmng_cutEnd(staffId);
        }
        break;
    default:
        dComIfGp_evmng_cutEnd(staffId);
    }
}

/* 80044CB8-80044EE4 03F5F8 022C+00 1/1 0/0 0/0 .text            specialProcCreate__12dEvDtStaff_cFv
 */
void dEvDtStaff_c::specialProcCreate() {
    char* name;
    u32 arg;
    cXyz pos;
    csXyz angle;
    cXyz scale;
    dStage_objectNameInf* objNameInf;

    int staffId = dComIfGp_evmng_getMyStaffId("CREATER", NULL, 0);
    if (staffId == -1) {
        return;
    }

    char* nowCutName = dComIfGp_getEventManager().getMyNowCutName(staffId);
    if (dComIfGp_evmng_getIsAddvance(staffId)) {
        switch (*(int*)nowCutName) {
        case 'WAIT':
            break;
        case 'CREA':
            name = dComIfGp_evmng_getMyStringP(staffId, "MAKECAST");
            objNameInf = dStage_searchName(name);

            int* argP = dComIfGp_evmng_getMyIntegerP(staffId, "ARG");
            if (argP == NULL) {
                arg = UINT_MAX;
            } else {
                arg = *argP;
            }

            cXyz* posP = dComIfGp_evmng_getMyXyzP(staffId, "POS");
            if (posP == NULL) {
                fopAc_ac_c* player_p = dComIfGp_getPlayer(0);
                pos = player_p->current.pos;
            } else {
                pos = *posP;
            }

            int* angleP = dComIfGp_evmng_getMyIntegerP(staffId, "ANGLE");
            if (angleP == NULL) {
                angle.setall(0);
            } else {
                angle.set(angleP[0], angleP[1], angleP[2]);
            }

            cXyz* scaleP = dComIfGp_evmng_getMyXyzP(staffId, "SCALE");
            if (scaleP == NULL) {
                scale.setall(1.0f);
            } else {
                scale = *scaleP;
            }

            fopAcM_create(objNameInf->mProcName, arg, &pos, dComIfGp_roomControl_getStayNo(),
                          &angle, &scale, objNameInf->mSubtype);
            break;
        }
    }
}

/* 80044EE4-80045878 03F824 0994+00 1/1 0/0 0/0 .text specialProcDirector__12dEvDtStaff_cFv */
void dEvDtStaff_c::specialProcDirector() {
    DirectorData* data = (DirectorData*)mData;
    daPy_py_c* player = dComIfGp_getLinkPlayer();
    dEvt_control_c& evtControl = dComIfGp_getEvent();

    int staffId = dComIfGp_evmng_getMyStaffId("DIRECTOR", NULL, 0);
    if (staffId == -1) {
        return;
    }

    char* nowCutName = dComIfGp_getEventManager().getMyNowCutName(staffId);
    if (dComIfGp_evmng_getIsAddvance(staffId)) {
        int* eventFlagP = dComIfGp_evmng_getMyIntegerP(staffId, "EventFlag");
        if (eventFlagP != NULL) {
            dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[*eventFlagP]);
        }

        int* eventFlagOffP = dComIfGp_evmng_getMyIntegerP(staffId, "EventFlagOff");
        if (eventFlagOffP != NULL) {
            dComIfGs_offEventBit(dSv_event_flag_c::saveBitLabels[*eventFlagOffP]);
        }

        int* switchTableP = dComIfGp_evmng_getMyIntegerP(staffId, "SwitchTable");
        int switchTable;
        if (switchTableP != NULL) {
            switchTable = *switchTableP;
        } else {
            switchTable = dStage_stagInfo_GetSaveTbl(dComIfGp_getStageStagInfo());
        }

        int* switchBitP = dComIfGp_evmng_getMyIntegerP(staffId, "SwitchBit");
        if (switchBitP != NULL) {
            dComIfGs_onStageSwitch(switchTable, *switchBitP);
        }

        int* switchOffP = dComIfGp_evmng_getMyIntegerP(staffId, "SwitchOff");
        if (switchOffP != NULL) {
            dComIfGs_offStageSwitch(switchTable, *switchOffP);
        }

        int* tmpBitP = dComIfGp_evmng_getMyIntegerP(staffId, "TmpBit");
        if (tmpBitP != NULL) {
            dComIfGs_onTmpBit(dSv_event_tmp_flag_c::tempBitLabels[*tmpBitP]);
        }

        int* tmpOffP = dComIfGp_evmng_getMyIntegerP(staffId, "TmpBitOff");
        if (tmpOffP != NULL) {
            dComIfGs_offTmpBit(dSv_event_tmp_flag_c::tempBitLabels[*tmpOffP]);
        }

        switch (*(int*)nowCutName) {
        case 'WAIT':
            specialProc_WaitStart(staffId);
            break;
        case 'PLAY':
            if (strcmp(nowCutName, "PLAYER_NODRAW") == 0) {
                player->onPlayerNoDraw();
            } else if (strcmp(nowCutName, "PLAYER_DRAW") == 0) {
                player->offPlayerNoDraw();
            }
            break;
        case 'NEXT':
            dEvDt_Next_Stage(staffId, 0xD);
            break;
        case 'SKIP':
            char* zev = dComIfGp_evmng_getMyStringP(staffId, "Zev");
            // cast needed to match
            void* pt = (void*)evtControl.getPt1();
            if (NULL == pt) {
                pt = evtControl.getPt2();
            }

            if (zev != NULL) {
                evtControl.setSkipZev(pt, zev);
            } else {
                evtControl.setSkipProc(pt, dEv_defaultSkipProc, 0);
            }
            break;
        case 'FADE':
            f32* rateP = dComIfGp_evmng_getMyFloatP(staffId, "Rate");
            int* colorP = dComIfGp_evmng_getMyIntegerP(staffId, "Color");

            if (*rateP > 0) {
                mDoGph_gInf_c::setFadeRate(0);
            }
            if (colorP != NULL) {
                GXColor color;
                color.r = colorP[0];
                color.g = colorP[1];
                color.b = colorP[2];
                color.a = colorP[3];
                mDoGph_gInf_c::fadeOut(*rateP, color);
            } else {
                mDoGph_gInf_c::fadeOut(*rateP);
            }
            break;
        case 'VIBR':
            specialProc_WaitStart(staffId);
            int* patternP = dComIfGp_evmng_getMyIntegerP(staffId, "Pattern");
            int* typeP = dComIfGp_evmng_getMyIntegerP(staffId, "Type");
            dComIfGp_getVibration().StartQuake((u8*)patternP, 0, *typeP, cXyz(0, 1, 0));
            break;
        case 'WIPE':
            f32* wipeRateP = dComIfGp_evmng_getMyFloatP(staffId, "Rate");
            dDlst_list_c::wipeIn(-*wipeRateP);
            if (*wipeRateP > 0) {
                data->unk = 0;
            } else {
                data->unk = 1;
            }

            int* soundP = dComIfGp_evmng_getMyIntegerP(staffId, "SOUND");
            if (soundP != NULL) {
                switch (*soundP) {
                case 0:
                    mDoAud_seStart(Z2SE_SY_DUMMY, NULL, 0, 0);
                }
            }
            break;
        case 'MAPT':
            int* idP = dComIfGp_evmng_getMyIntegerP(staffId, "ID");
            data->unk = *idP;
            dStage_MapEvent_dt_c* mapEvent = dEvt_control_c::searchMapEventData(data->unk);
            if (mapEvent != NULL) {
                if (mapEvent->mType == 0) {
                    data->unk2 = mapEvent->field_0x14;
                } else {
                    data->unk2 = -1;
                }
            } else {
                data->unk2 = 0;
            }
            break;
        case 'CAST':
            char* pt2Name = dComIfGp_evmng_getMyStringP(staffId, "Pt2");
            if (pt2Name != NULL) {
                fopAc_ac_c* pt2 = fopAcM_searchFromName4Event(pt2Name, -1);
                if (pt2 != NULL) {
                    evtControl.setPt2(pt2);
                }
            }

            char* ptTName = dComIfGp_evmng_getMyStringP(staffId, "PtT");
            if (ptTName != NULL) {
                fopAc_ac_c* ptT = fopAcM_searchFromName4Event(ptTName, -1);
                if (ptT != NULL) {
                    evtControl.setPtT(ptT);
                }
            }

            char* ptIName = dComIfGp_evmng_getMyStringP(staffId, "PtI");
            if (ptIName != NULL) {
                fopAc_ac_c* ptI = fopAcM_searchFromName4Event(ptIName, -1);
                if (ptI != NULL) {
                    evtControl.setPtI(ptI);
                }
            }

            char* ptDName = dComIfGp_evmng_getMyStringP(staffId, "PtD");
            if (ptDName != NULL) {
                fopAc_ac_c* ptD = fopAcM_searchFromName4Event(ptDName, -1);
                if (ptD != NULL) {
                    evtControl.setPtD(ptD);
                }
            }
            break;
        case 'SPEC':
            int* specTypeP = dComIfGp_evmng_getMyIntegerP(staffId, "Type");
            if (specTypeP != NULL) {
                switch (*specTypeP) {
                case 8:
                        /* dSv_event_flag_c::F_0506 - N/A - Only met Ooccoo Sr. - not yet son (shared Forest - Snowpeak) */
                    if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[506])) {
                        /* dSv_event_flag_c::F_0566 - Ooccoo Sr. stuff - Letter from Ooccoo Sr. came in OK (no son) */
                        dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[566]);
                    }

                        /* dSv_event_flag_c::F_0507 - N/A - Also met the son in dungeon with first Ooccoo Sr. meeting - 
                                                            turns 506 OFF (shared Forest - Snowpeak) */
                    if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[507])) {
                        /* dSv_event_flag_c::F_0567 - Ooccoo Sr. stuff - Letter from Ooccoo Sr. came in OK (yes son) */
                        dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[567]);
                    }
                }
            }
            break;
        }
    }

    switch (*(int*)nowCutName) {
    case 'WAIT':
        specialProc_WaitProc(staffId);
        break;
    case 'FADE':
        if (!mDoGph_gInf_c::isFade()) {
            dComIfGp_evmng_cutEnd(staffId);
            break;
        }

        if (mDoGph_gInf_c::getFadeRate() >= 1) {
            f32* rateP = dComIfGp_evmng_getMyFloatP(staffId, "Rate");
            if (*rateP > 0) {
                dComIfGp_evmng_cutEnd(staffId);
            }
        }
        break;
    case 'NEXT':
        break;
    case 'VIBR':
        if (data->unk2 > 0) {
            data->unk2--;
            if (data->unk2 == 0) {
                dComIfGp_getVibration().StopQuake(0x1F);
            }
        } else {
            dComIfGp_evmng_cutEnd(staffId);
        }
        break;
    case 'WIPE':
        if (data->unk != 0) {
            if (dDlst_list_c::getWipeRate() == 0) {
                dComIfGp_evmng_cutEnd(staffId);
            }
        } else {
            if (dDlst_list_c::getWipeRate() >= 1) {
                dComIfGp_evmng_cutEnd(staffId);
            }
        }
        break;
    case 'MAPT':
        data->unk2--;
        if (data->unk2 <= 0) {
            dComIfGp_evmng_cutEnd(staffId);
        }
        break;
    default:
        dComIfGp_evmng_cutEnd(staffId);
        break;
    }
}

/* 80045878-80045AFC 0401B8 0284+00 1/1 0/0 0/0 .text specialProcPackage__12dEvDtStaff_cFv */
void dEvDtStaff_c::specialProcPackage() {
    dMsgObject_c* msgObj = dComIfGp_getMsgObjectClass();
    if (!!msgObj) {
        dMsgObject_demoMessageGroup();
    }

    int staffId = dComIfGp_evmng_getMyStaffId("PACKAGE", NULL, 0);
    if (staffId == -1) {
        return;
    }

    char* nowCutName = dComIfGp_getEventManager().getMyNowCutName(staffId);
    if (dComIfGp_evmng_getIsAddvance(staffId)) {
        switch (*(int*)nowCutName) {
        case 'WAIT':
            specialProc_WaitStart(staffId);
            break;
        case 'PLAY':
            char* fileName = dComIfGp_evmng_getMyStringP(staffId, "FileName");
            cXyz* offsetPos = dComIfGp_evmng_getMyXyzP(staffId, "OffsetPos");
            f32* offsetAngYP = dComIfGp_evmng_getMyFloatP(staffId, "OffsetAngY");
            f32 offsetAngY;
            if (offsetAngYP != NULL) {
                offsetAngY = *offsetAngYP;
            } else {
                offsetAngY = 0.0f;
            }

            // should not save event from g_dComIfG_gameInfo to register
            dComIfG_play_c& info = g_dComIfG_gameInfo.play;
            u8* demoData = (u8*)info.getEvent().getStbDemoData(fileName);
            dDemo_c::start(demoData, offsetPos, offsetAngY);
            info.getEvent().setCullRate(10.0f);

            int* eventFlagP = dComIfGp_evmng_getMyIntegerP(staffId, "EventFlag");
            if (eventFlagP != NULL) {
                dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[*eventFlagP]);
            }
            break;
        }
    }
    switch (*(int*)nowCutName) {
    case 'WAIT':
        specialProc_WaitProc(staffId);
        break;
    case 'PLAY':
        dEvt_control_c& evtControl = dComIfGp_getEvent();
        if (dDemo_c::getMode() == 2) {
            dStage_MapEvent_dt_c* event = evtControl.getStageEventDt();
            if (event != NULL && event->field_0x7 != 0xFF && !evtControl.chkFlag2(1)) {
                dDemo_c::getControl()->referObject_control().suspend(100);
                dComIfGp_evmng_cutEnd(staffId);
            } else {
                dDemo_c::end();
            }
        }

        if (dDemo_c::getMode() == 0) {
            dComIfGp_evmng_cutEnd(staffId);
        }
        break;
    default:
        dComIfGp_evmng_cutEnd(staffId);
        break;
    }
}

/* 80045AFC-80045C34 04043C 0138+00 1/1 0/0 0/0 .text specialProcTimekeeper__12dEvDtStaff_cFv */
void dEvDtStaff_c::specialProcTimekeeper() {
    TimerKeeperData* dataP = (TimerKeeperData*)&mData;
    int staffId = dComIfGp_evmng_getMyStaffId("TIMEKEEPER", NULL, 0);
    if (staffId == -1) {
        return;
    }

    char* nowCutName = dComIfGp_getEventManager().getMyNowCutName(staffId);
    if (dComIfGp_evmng_getIsAddvance(staffId)) {
        switch (*(int*)nowCutName) {
        case 'COUN':
            dataP->timer = *dComIfGp_evmng_getMyIntegerP(staffId, "Timer");
            break;
        case 'WAIT':
            break;
        }
    }

    switch (*(int*)nowCutName) {
    case 'COUN':
        if (dataP->timer > 0) {
            dataP->timer--;
        } else {
            dComIfGp_evmng_cutEnd(staffId);
        }
        break;
    case 'WAIT':
    default:
        dComIfGp_evmng_cutEnd(staffId);
    }
}

/* 80045C34-800460A8 040574 0474+00 1/1 0/0 0/0 .text            specialProcEffect__12dEvDtStaff_cFv
 */
void dEvDtStaff_c::specialProcEffect() {
    EffectData* data = (EffectData*)mData;
    int staffId = dComIfGp_evmng_getMyStaffId("EFFECT", NULL, 0);
    if (staffId == -1) {
        return;
    }

    char* nowCutName = dComIfGp_getEventManager().getMyNowCutName(staffId);
    if (dComIfGp_evmng_getIsAddvance(staffId)) {
        data->unk = 0;
        switch (*(int*)nowCutName) {
        case 'WAIT': {
            int* timerP = dComIfGp_evmng_getMyIntegerP(staffId, "Timer");
            int timer;
            if (timerP != NULL) {
                timer = *timerP;
            } else {
                timer = 0;
            }
            data->unk = timer;
        } break;
        case 'SHOC': {
            int* powerP = dComIfGp_evmng_getMyIntegerP(staffId, "Power");
            int power;
            if (powerP != NULL) {
                power = *powerP;
            } else {
                power = 5;
            }

            int* typeP = dComIfGp_evmng_getMyIntegerP(staffId, "Type");
            int type;
            if (typeP != NULL) {
                type = *typeP;
            } else {
                type = 0xF;
            }
            dComIfGp_getVibration().StartShock(power, type, cXyz(0, 1, 0));
        } break;
        case 'QUAK': {
            int power;
            int type;
            int timer;
            int random;
            u8* pattern;

            int* timerP = dComIfGp_evmng_getMyIntegerP(staffId, "Timer");
            if (timerP != NULL) {
                timer = *timerP;
            } else {
                timer = 30;
            }

            data->unk = timer;
            int* powerP = dComIfGp_evmng_getMyIntegerP(staffId, "Power");
            if (powerP != NULL) {
                power = *powerP;
            } else {
                power = 5;
            }

            int* typeP = dComIfGp_evmng_getMyIntegerP(staffId, "Type");
            if (typeP != NULL) {
                type = *typeP;
            } else {
                type = 0xF;
            }

            pattern = (u8*)dComIfGp_evmng_getMyStringP(staffId, "Pattern");
            if (pattern != NULL) {
                int* randomP = dComIfGp_evmng_getMyIntegerP(staffId, "Random");
                if (randomP != NULL) {
                    random = *randomP;
                } else {
                    random = 0;
                }
                dComIfGp_getVibration().StartQuake(pattern, random, type, cXyz(0, 1, 0));
            } else {
                dComIfGp_getVibration().StartQuake(power, type, cXyz(0, 1, 0));
            }
        } break;
        case 'BLUR': {
            int* timerP = dComIfGp_evmng_getMyIntegerP(staffId, "Timer");
            int timer;
            if (timerP != NULL) {
                timer = *timerP;
            } else {
                timer = 30;
            }
            int timer2 = data->unk = timer;

            f32* alphaP = dComIfGp_evmng_getMyFloatP(staffId, "Alpha");
            f32 alpha;
            if (alphaP != NULL) {
                alpha = *alphaP;
            } else {
                alpha = 0.8f;
            }

            f32* scaleP = dComIfGp_evmng_getMyFloatP(staffId, "Scale");
            f32 scale;
            if (scaleP != NULL) {
                scale = *scaleP;
            } else {
                scale = 1.0f;
            }
            dCam_getBody()->StartBlure(timer2, NULL, alpha, scale);
        } break;
        }
    }
    if (data->unk != 0) {
        data->unk--;
    }
    switch (*(int*)nowCutName) {
    case 'WAIT':
        if (data->unk == 0) {
            dComIfGp_evmng_cutEnd(staffId);
        }
        break;
    case 'QUAK':
        if (data->unk == 0) {
            dComIfGp_getVibration().StopQuake(0x1F);
            dComIfGp_evmng_cutEnd(staffId);
        }
        break;
    case 'BLUR':
        if (data->unk == 0) {
            dComIfGp_evmng_cutEnd(staffId);
        }
        break;
    default:
        dComIfGp_evmng_cutEnd(staffId);
        break;
    }
}

/* 800460A8-80046138 0409E8 0090+00 1/1 0/0 0/0 .text            startCheck__10dEvDtCut_cFv */
int dEvDtCut_c::startCheck() {
    for (int i = 0; i < 3; i++) {
        int flag = this->getStartFlag(i);
        if (flag == -1) {
            if (i == 0) {
                return -1;
            } else {
                return 1;
            }
        }

        if (!dEvDtFlagCheck(flag)) {
            return 0;
        }
    }
    return 1;
}

/* 80046138-8004616C 040A78 0034+00 1/1 7/7 0/0 .text            init__11dEvDtBase_cFv */
int dEvDtBase_c::init() {
    mHeaderP = NULL;
    mEventP = NULL;
    mStaffP = NULL;
    mCutP = NULL;
    mDataP = NULL;
    mFDataP = NULL;
    mIDataP = NULL;
    mSDataP = NULL;
    mRoomNo = -1;
    return 0;
}

/* 8004616C-8004628C 040AAC 0120+00 0/0 6/6 0/0 .text            init__11dEvDtBase_cFPci */
int dEvDtBase_c::init(char* p_data, int roomNo) {
    init();
    if (p_data == NULL) {
        return 0;
    } else {
        setHeaderP((event_binary_data_header*)p_data);

        if (getEventNum() > 0) {
            setEventP((dEvDtEvent_c*)(p_data + getEventTop()));
        }

        if (getStaffNum() > 0) {
            setStaffP((dEvDtStaff_c*)(p_data + getStaffTop()));
        }

        if (getCutNum() > 0) {
            setCutP((dEvDtCut_c*)(p_data + getCutTop()));
        }

        if (getDataNum() > 0) {
            setDataP((dEvDtData_c*)(p_data + getDataTop()));
        }

        if (getFDataNum() > 0) {
            setFDataP((f32*)(p_data + getFDataTop()));
        }

        if (getIDataNum() > 0) {
            setIDataP((int*)(p_data + getIDataTop()));
        }

        if (getSDataNum() > 0) {
            setSDataP((char*)(p_data + getSDataTop()));
        }

        mRoomNo = roomNo;
        return getEventNum();
    }
}

/* 8004628C-800462FC 040BCC 0070+00 0/0 1/1 0/0 .text advanceCut__11dEvDtBase_cFP12dEvDtEvent_c */
void dEvDtBase_c::advanceCut(dEvDtEvent_c* p_event) {
    for (int i = 0; i < p_event->getNStaff(); i++) {
        advanceCutLocal(mStaffP + p_event->getStaff(i));
    }
}

/* 800462FC-800463DC 040C3C 00E0+00 1/1 0/0 0/0 .text
 * advanceCutLocal__11dEvDtBase_cFP12dEvDtStaff_c               */
BOOL dEvDtBase_c::advanceCutLocal(dEvDtStaff_c* p_staff) {
    dEvDtCut_c* cut = &mCutP[p_staff->getCurrentCut()];
    if (dEvDtFlagCheck(cut->getFlagId()) && cut->getNext() != -1) {
        switch (mCutP[cut->getNext()].startCheck()) {
        case -1:
            p_staff->advanceCut(cut->getNext());
            return TRUE;
        case 1:
            dEvDtFlagSet(cut->getFlagId());
            p_staff->advanceCut(cut->getNext());
            return TRUE;
        }
    }
    p_staff->field_0x40 = false;
    return FALSE;
}
