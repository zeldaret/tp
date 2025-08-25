#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_allmato.h"
#include "d/actor/d_a_obj_itamato.h"
#include "d/actor/d_a_obj_boumato.h"
#include "d/actor/d_a_arrow.h"

/* 804897BC-804897FC -00001 0040+00 2/2 0/0 0/0 .data            l_evtList */
static daNpcT_evtData_c l_evtList[8] = {
    {"", 0},
    {"FOCUS_BOUMATO", 2},
    {"FOCUS_ITAMATO", 2},
    {"FOCUS_ITAMATO_ON_ROOF", 2},
    {"HIT_BOUMATO1", 2},
    {"HIT_BOUMATO2", 2},
    {"HIT_BOUMATO3", 2},
    {"NEARPIN_BOUMATO", 2},
};

#define EVT_NONE                  0
#define EVT_FOCUS_BOUMATO         1
#define EVT_FOCUS_ITAMATO         2
#define EVT_FOCUS_ITAMATO_ON_ROOF 3
#define EVT_HIT_BOUMATO1          4
#define EVT_HIT_BOUMATO2          5
#define EVT_HIT_BOUMATO3          6
#define EVT_NEARPIN_BOUMATO       7

/* 804897FC-80489808 -00001 000C+00 2/2 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[3] = {
    "",
    "Taro1",
    "Taro2",
};

/* 80487538-80487670 000078 0138+00 1/1 0/0 0/0 .text            create__15daTag_AllMato_cFv */
int daTag_AllMato_c::create() {
    int var_r29 = 0;
    fopAcM_SetupActor(this, daTag_AllMato_c);

    scale.x *= 100.0f;
    scale.y *= 100.0f;
    scale.z = scale.x;

    mEventIdx = -1;

    OS_REPORT("\t(%s:%d) onEvt:%d, offEvt:%d, onSWBit:%02x, offSWBit:%02x<%08x>\n",
              fopAcM_getProcNameString(this),
              getType(),
              getOnEvtBit(),
              getOffEvtBit(),
              getOnSwBit(),
              getOffSwBit(),
              fopAcM_GetParam(this));

    if (isDelete()) {
        return cPhs_ERROR_e;
    }

    return cPhs_COMPLEATE_e;
}

/* 804876B0-804876B8 0001F0 0008+00 1/1 0/0 0/0 .text            Delete__15daTag_AllMato_cFv */
int daTag_AllMato_c::Delete() {
    return 1;
}

/* 804876B8-80487C5C 0001F8 05A4+00 1/1 0/0 0/0 .text            Execute__15daTag_AllMato_cFv */
// NONMATCHING - issues with dComIfGp_getEventManager
int daTag_AllMato_c::Execute() {
    camera_class* camera_p = NULL;

    if (home.roomNo == dComIfGp_roomControl_getStayNo()) {
        fopAc_ac_c* actor_p = NULL;

        if (isDelete()) {
            fopAcM_delete(this);
            return 1;
        }

        if (dComIfGp_event_runCheck()) {
            if (!eventInfo.checkCommandTalk()) {
                if (eventInfo.checkCommandDemoAccrpt() && dComIfGp_getEventManager().endCheck(mEventIdx)) {
                    u16 evt_action = EVT_NONE;

                    switch (field_0x1d08) {
                    case 1:
                    case 2:
                        actor_p = mBrkMatoActorMngr.getActorP();
                        JUT_ASSERT(164, 0 != actor_p);

                        if (((daObj_BouMato_c*)actor_p)->getTgHitAcId() != fpcM_ERROR_PROCESS_ID_e) {
                            if (daNpcT_chkEvtBit(76)) {
                                if (daNpcT_chkEvtBit(75)) {
                                    evt_action = EVT_HIT_BOUMATO3;
                                } else {
                                    evt_action = EVT_HIT_BOUMATO2;
                                }
                            } else {
                                evt_action = EVT_HIT_BOUMATO1;
                            }

                            if (field_0x1d0e != 0) {
                                daNpcT_onTmpBit(9);
                            }
                        } else {
                            evt_action = EVT_NEARPIN_BOUMATO;
                            daNpcT_onTmpBit(63);
                        }

                        evtChange(evt_action);
                        ((daObj_BouMato_c*)actor_p)->clrTgHitAcId();
                        field_0x1d08 = 0;
                        break;
                    default:
                        if (field_0x1d0e != 0) {
                            dComIfGp_setPlayerStatus0(0, 0x200000);
                        }

                        dCam_getBody()->CorrectCenter();
                        dComIfGp_event_reset();
                        mEventIdx = -1;
                    }
                } else {
                    int camera_id;
                    int staff_id = dComIfGp_getEventManager().getMyStaffId("AllMato", this, -1);
                    if (staff_id != -1) {
                        const char* act_list[7] = {
                            "FOCUS_BOUMATO",
                            "FOCUS_ITAMATO",
                            "FOCUS_ITAMATO_ON_ROOF",
                            "HIT_BOUMATO1",
                            "HIT_BOUMATO2",
                            "HIT_BOUMATO3",
                            "NEARPIN_BOUMATO",
                        };

                        if (dComIfGp_getEventManager().getIsAddvance(staff_id)) {
                            actor_p = mBrkMatoActorMngr.getActorP();
                            JUT_ASSERT(218, 0 != actor_p);

                            dComIfGp_getEvent().setPt2(mBrkMatoActorMngr.getActorP());

                            if (field_0x1d08 != 0) {
                                switch (field_0x1d08) {
                                case 1:
                                case 2:
                                    camera_id = dComIfGp_getPlayerCameraID(0);
                                    camera_p = dComIfGp_getCamera(camera_id);
                                    JUT_ASSERT(228, 0 != camera_p);

                                    dComIfGp_saveCameraPosition(0,
                                        fopCamM_GetCenter_p(camera_p),
                                        fopCamM_GetEye_p(camera_p),
                                        fopCamM_GetFovy(camera_p),
                                        fopCamM_GetBank(camera_p));
                                case 3:
                                case 4:
                                    break;
                                }
                            }
                        }

                        int act_idx = dComIfGp_getEventManager().getMyActIdx(staff_id, act_list, 7, 0, 0);
                        switch (act_idx) {
                        case 0:
                            if (!checkCrsMato2()) {
                                dComIfGp_getEventManager().cutEnd(staff_id);
                            }
                            break;
                        default:
                            dComIfGp_getEventManager().cutEnd(staff_id);
                            break;
                        }
                    }
                }
            }
        } else {
            if (field_0x1d0f == 0) {
                entryBouMatoActors();
                entryItaMatoActors();
                field_0x1d0f = 1;
            }

            field_0x1d08 = checkCrsMato();
            u16 evt_action = EVT_NONE;

            if (field_0x1d08 != 0) {
                switch (field_0x1d08) {
                case 1:
                case 2:
                    if (field_0x1d10 == 0) {
                        dCam_getBody()->SaveZoomRatio();
                        evt_action = EVT_FOCUS_BOUMATO;
                    }
                    break;
                case 3:
                    actor_p = mBrkMatoActorMngr.getActorP();
                    JUT_ASSERT(292, 0 != actor_p);
    
                    if (field_0x1d10 == 0) {
                        switch (((daObj_ItaMato_c*)actor_p)->getNo()) { 
                        case 1:
                            evt_action = EVT_FOCUS_ITAMATO;
                            daNpcT_onTmpBit(65);
                            break;
                        case 2:
                            evt_action = EVT_FOCUS_ITAMATO_ON_ROOF;
                            break;
                        }
                    }
    
                    ((daObj_ItaMato_c*)actor_p)->onFake();
                }
            } else {
                field_0x1d08 = checkBrkMato();
                if (field_0x1d08 != 0) {
                    switch (field_0x1d08) {
                    case 4:
                        actor_p = mBrkMatoActorMngr.getActorP();
                        JUT_ASSERT(320, 0 != actor_p)

                        switch (((daObj_ItaMato_c*)actor_p)->getNo()) {
                        case 1:
                            evt_action = EVT_FOCUS_ITAMATO;
                            break;
                        case 2:
                            evt_action = EVT_FOCUS_ITAMATO_ON_ROOF;
                            break;
                        }   
                    }
                }
            }

            mEventIdx = -1;

            if (getTaroActorP() != NULL && strlen(l_evtList[evt_action].eventName) != 0 && (!daNpcT_chkEvtBit(76) || !daNpcT_chkEvtBit(75) || evt_action == EVT_FOCUS_BOUMATO)) {
                field_0x1d0e = dComIfGp_checkPlayerStatus0(0, 0x200000) != 0;
                daNpcT_offTmpBit(64);

                if (strlen(l_resNameList[l_evtList[evt_action].num]) != 0) {
                    eventInfo.setArchiveName(l_resNameList[l_evtList[evt_action].num]);
                    dComIfGp_getEventManager().setObjectArchive(eventInfo.getArchiveName());
                }

                mEventIdx = dComIfGp_getEventManager().getEventIdx(this, l_evtList[evt_action].eventName, 0xFF);
                fopAcM_orderOtherEventId(this, mEventIdx, 0xFF, 0xFFFF, 40, 1);
            }
        }

        attention_info.position = current.pos;
        eyePos = current.pos;

        if (mEventIdx < 0) {
            daNpcT_offTmpBit(9);
            daNpcT_offTmpBit(63);
            daNpcT_offTmpBit(65);
        }

        return 1;
    }

    return 0;
}

/* 80487C5C-80487C64 00079C 0008+00 1/1 0/0 0/0 .text            Draw__15daTag_AllMato_cFv */
int daTag_AllMato_c::Draw() {
    return 1;
}

/* 80489880-80489A10 000000 0190+00 9/9 0/0 0/0 .bss             l_findActorPtrs */
static fopAc_ac_c* l_findActorPtrs[100];

/* 80489A10-80489A14 000190 0004+00 9/9 0/0 0/0 .bss             l_findCount */
static u32 l_findCount;

/* 80487C64-80487D00 0007A4 009C+00 1/1 0/0 0/0 .text            srchBouMato__15daTag_AllMato_cFPvPv
 */
void* daTag_AllMato_c::srchBouMato(void* i_actor, void* i_data) {
    if (l_findCount < 100 && i_actor != NULL && i_actor != i_data) {
        if (fopAcM_IsExecuting(fopAcM_GetID(i_actor)) && fopAcM_GetName(i_actor) == PROC_OBJ_BOUMATO) {
            l_findActorPtrs[l_findCount] = (fopAc_ac_c*)i_actor;
            l_findCount++;
        }
    }

    return NULL;
}

/* 80487D00-80487D9C 000840 009C+00 1/1 0/0 0/0 .text            srchItaMato__15daTag_AllMato_cFPvPv
 */
void* daTag_AllMato_c::srchItaMato(void* i_actor, void* i_data) {
    if (l_findCount < 100 && i_actor != NULL && i_actor != i_data) {
        if (fopAcM_IsExecuting(fopAcM_GetID(i_actor)) && fopAcM_GetName(i_actor) == PROC_OBJ_ITAMATO) {
            l_findActorPtrs[l_findCount] = (fopAc_ac_c*)i_actor;
            l_findCount++;
        }
    }

    return NULL;
}

/* 80487D9C-80487E38 0008DC 009C+00 1/1 0/0 0/0 .text            srchTaro__15daTag_AllMato_cFPvPv */
void* daTag_AllMato_c::srchTaro(void* i_actor, void* i_data) {
    if (l_findCount < 100 && i_actor != NULL && i_actor != i_data) {
        if (fopAcM_IsExecuting(fopAcM_GetID(i_actor)) && fopAcM_GetName(i_actor) == PROC_NPC_TARO) {
            l_findActorPtrs[l_findCount] = (fopAc_ac_c*)i_actor;
            l_findCount++;
        }
    }

    return NULL;
}

/* 80487E38-80487ED4 000978 009C+00 1/1 0/0 0/0 .text            srchArrow__15daTag_AllMato_cFPvPv
 */
void* daTag_AllMato_c::srchArrow(void* i_actor, void* i_data) {
    if (l_findCount < 100 && i_actor != NULL && i_actor != i_data) {
        if (fopAcM_IsExecuting(fopAcM_GetID(i_actor)) && fopAcM_GetName(i_actor) == PROC_ARROW) {
            l_findActorPtrs[l_findCount] = (fopAc_ac_c*)i_actor;
            l_findCount++;
        }
    }

    return NULL;
}

/* 80487ED4-80487F80 000A14 00AC+00 2/2 0/0 0/0 .text            isDelete__15daTag_AllMato_cFv */
int daTag_AllMato_c::isDelete() {
    BOOL rt = FALSE;
    
    if (getOffEvtBit() != 0xFFFFFFFF) {
        if (daNpcF_chkEvtBit(getOffEvtBit())) {
            rt = TRUE;
        }
    }

    if (getOffSwBit() != 0xFF) {
        if (dComIfGs_isSwitch(getOffSwBit(), fopAcM_GetRoomNo(this))) {
            rt = TRUE;
        }
    }

    return rt;
}

/* 80487F80-80488034 000AC0 00B4+00 1/1 0/0 0/0 .text entryBouMatoActors__15daTag_AllMato_cFv */
void daTag_AllMato_c::entryBouMatoActors() {
    for (int i = 0; i < 1; i++) {
        mItaMatoActorMngr[i].remove();
    }

    mBouMatoActorNum = 0;

    l_findCount = 0;
    fpcM_Search(srchBouMato, this);

    for (int i = 0; i < (int)l_findCount && i < 1; i++) {
        mBouMatoActorMngr[i].entry(l_findActorPtrs[i]);
        mBouMatoActorNum++;
    }
}

/* 80488034-80488104 000B74 00D0+00 1/1 0/0 0/0 .text entryItaMatoActors__15daTag_AllMato_cFv */
void daTag_AllMato_c::entryItaMatoActors() {
    for (int i = 0; i < 2; i++) {
        mItaMatoActorMngr[i].remove();
    }

    mItaMatoActorNum = 0;

    l_findCount = 0;
    fpcM_Search(srchItaMato, this);

    for (int i = 0; i < (int)l_findCount && i < 2; i++) {
        mItaMatoActorMngr[i].entry(l_findActorPtrs[i]);
        mItaMatoActorNum++;
    }
}

/* 80488104-804881C0 000C44 00BC+00 1/1 0/0 0/0 .text            getTaroActorP__15daTag_AllMato_cFv
 */
fopAc_ac_c* daTag_AllMato_c::getTaroActorP() {
    int var_r28 = 0;
    l_findCount = 0;
    fpcM_Search(srchTaro, this);

    for (int i = 0; i < (int)l_findCount; i++) {
        daNpcT_c* actor_p = (daNpcT_c*)l_findActorPtrs[i];
        if (!actor_p->checkHide()) {
            return l_findActorPtrs[i];
        }
    }

    return NULL;
}

/* 804881C0-80488238 000D00 0078+00 2/2 0/0 0/0 .text            getArrowActorP__15daTag_AllMato_cFv
 */
 fopAc_ac_c* daTag_AllMato_c::getArrowActorP() {
    int var_r28 = 0;
    l_findCount = 0;
    fpcM_Search(srchArrow, this);

    for (int i = 0; i < (int)l_findCount; i++) {
        daArrow_c* actor_p = (daArrow_c*)l_findActorPtrs[i];
        if (actor_p->checkWait()) {
            return l_findActorPtrs[i];
        }
    }

    return NULL;
}

/* 80488238-80488994 000D78 075C+00 1/1 0/0 0/0 .text            checkCrsMato__15daTag_AllMato_cFv
 */
 int daTag_AllMato_c::checkCrsMato() {
    fopAc_ac_c* sp24 = NULL;
    if (mArrowActorMngr.getActorP() == NULL) {
        mArrowActorMngr.entry(getArrowActorP());
    }

    sp24 = mArrowActorMngr.getActorP();
    if (sp24 != NULL) {
        mBrkMatoActorMngr.remove();
        if (cM3d_IsZero(sp24->speedF) == false) {
            daArrow_c* arrow_p = (daArrow_c*)sp24;

            cXyz spA0(arrow_p->current.pos);
            cXyz sp94(arrow_p->speed);
            f32 var_f31 = arrow_p->getOutLengthRate();
            f32 var_f30 = arrow_p->gravity;

            mArrowActorMngr.remove();

            field_0x1d10 = 0;
            if (arrow_p->checkBombArrow()) {
                field_0x1d10 = 1;
            }

            field_0x590[0] = spA0;
            field_0x590[1] = spA0 + (sp94 * var_f31);

            for (int i = 2; i < 500; i++) {
                spA0 += sp94;
                field_0x590[i] = spA0 + (sp94 * var_f31);

                if (arrow_p->getFlyMax() < spA0.abs(arrow_p->getStartPos()) || var_f30 < 0.0f) {
                    var_f30 = -2.0f;
                    sp94.y += var_f30;
                    if (sp94.y < -100.0f) {
                        sp94.y = -100.0f;
                    }

                    var_f31 = arrow_p->getArrowOutLength() / sp94.abs();
                }
            }

            fopAc_ac_c* boumato_actor_p = NULL;
            fopAc_ac_c* itamato_actor_p = NULL;

            for (int i = 0; i < 499; i++) {
                for (int j = 0; j < mBouMatoActorNum; j++) {
                    boumato_actor_p = mBouMatoActorMngr[j].getActorP();
                    if (boumato_actor_p != NULL) {
                        int sp14 = ((daObj_BouMato_c*)boumato_actor_p)->checkCrs(arrow_p, field_0x590[i], field_0x590[i + 1], sp94.abs() + arrow_p->getArrowOutLength());
                        if (sp14 != 0) {
                            mBrkMatoActorMngr.entry(mBouMatoActorMngr[j].getActorP());
                            return sp14;
                        }
                    }
                }

                for (int j = 0; j < mItaMatoActorNum; j++) {
                    itamato_actor_p = mItaMatoActorMngr[j].getActorP();
                    if (itamato_actor_p != NULL) {                        
                        int sp14 = ((daObj_ItaMato_c*)itamato_actor_p)->checkCrs(arrow_p, field_0x590[i], field_0x590[i + 1], sp94.abs() + arrow_p->getArrowOutLength());
                        if (sp14 != 0) {
                            mBrkMatoActorMngr.entry(mItaMatoActorMngr[j].getActorP());
                            return sp14;
                        }
                    }
                }
            }
        }
    }

    return 0;
}

/* 80488994-80488F40 0014D4 05AC+00 1/1 0/0 0/0 .text            checkCrsMato2__15daTag_AllMato_cFv
 */
int daTag_AllMato_c::checkCrsMato2() {
    fopAc_ac_c* sp28;
    getArrowActorP();

    for (int i = 0; i < (int)l_findCount; i++) {
        sp28 = l_findActorPtrs[i];

        if (cM3d_IsZero(sp28->speedF) == false) {
            daArrow_c* arrow_p = (daArrow_c*)sp28;

            cXyz sp8C(arrow_p->current.pos);
            cXyz sp80(arrow_p->speed);
            f32 var_f31 = arrow_p->getOutLengthRate();
            f32 var_f30 = arrow_p->gravity;

            field_0x590[0] = sp8C;
            field_0x590[1] = sp8C + (sp80 * var_f31);

            for (int i = 2; i < 500; i++) {
                sp8C += sp80;
                field_0x590[i] = sp8C + (sp80 * var_f31);

                if (arrow_p->getFlyMax() < sp8C.abs(arrow_p->getStartPos()) || var_f30 < 0.0f) {
                    var_f30 = -2.0f;
                    sp80.y += var_f30;
                    if (sp80.y < -100.0f) {
                        sp80.y = -100.0f;
                    }

                    var_f31 = arrow_p->getArrowOutLength() / sp80.abs();
                }
            }

            fopAc_ac_c* sp18 = NULL;
            fopAc_ac_c* sp14 = NULL;

            for (int i = 0; i < 499; i++) {
                for (int j = 0; j < mBouMatoActorNum; j++) {
                    sp18 = mBouMatoActorMngr[j].getActorP();
                    if (sp18 != NULL) {
                        int sp14 = ((daObj_BouMato_c*)sp18)->checkCrs(arrow_p, field_0x590[i], field_0x590[i + 1], sp80.abs() + arrow_p->getArrowOutLength());
                        if (sp14 != 0) {
                            mBrkMatoActorMngr.entry(mBouMatoActorMngr[j].getActorP());
                            return sp14;
                        }
                    }
                }
            }
        }
    }

    return 0;
}

/* 80488F40-80488FD8 001A80 0098+00 1/1 0/0 0/0 .text            checkBrkMato__15daTag_AllMato_cFv
 */
int daTag_AllMato_c::checkBrkMato() {
    int rt = 0;

    for (int i = 0; i < mItaMatoActorNum; i++) {
        daObj_ItaMato_c* actor_p = (daObj_ItaMato_c*)mItaMatoActorMngr[i].getActorP();
        rt = actor_p->checkBrk();
        if (rt != 0) {
            mBrkMatoActorMngr.entry(mItaMatoActorMngr[i].getActorP());
            return rt;
        }
    }

    return 0;
}

/* 80488FD8-804890B0 001B18 00D8+00 1/1 0/0 0/0 .text            evtChange__15daTag_AllMato_cFUs */
void daTag_AllMato_c::evtChange(u16 i_action) {
    if (strlen(l_resNameList[l_evtList[i_action].num]) != 0) {
        eventInfo.setArchiveName(l_resNameList[l_evtList[i_action].num]);
        dComIfGp_getEventManager().setObjectArchive(eventInfo.getArchiveName());
    }

    mEventIdx = dComIfGp_getEventManager().getEventIdx(this, l_evtList[i_action].eventName, 0xFF);
    dComIfGp_getEvent().reset(this);
    fopAcM_orderChangeEventId(this, mEventIdx, 1, 0xFFFF);
}

/* 804890B0-804890D0 001BF0 0020+00 1/0 0/0 0/0 .text            daTag_AllMato_Create__FPv */
static int daTag_AllMato_Create(void* i_this) {
    return ((daTag_AllMato_c*)i_this)->create();
}

/* 804890D0-804890F0 001C10 0020+00 1/0 0/0 0/0 .text            daTag_AllMato_Delete__FPv */
static int daTag_AllMato_Delete(void* i_this) {
    return ((daTag_AllMato_c*)i_this)->Delete();
}

/* 804890F0-80489110 001C30 0020+00 1/0 0/0 0/0 .text            daTag_AllMato_Execute__FPv */
static int daTag_AllMato_Execute(void* i_this) {
    return ((daTag_AllMato_c*)i_this)->Execute();
}

/* 80489110-80489130 001C50 0020+00 1/0 0/0 0/0 .text            daTag_AllMato_Draw__FPv */
static int daTag_AllMato_Draw(void* i_this) {
    return ((daTag_AllMato_c*)i_this)->Draw();
}

/* 80489130-80489138 001C70 0008+00 1/0 0/0 0/0 .text            daTag_AllMato_IsDelete__FPv */
static int daTag_AllMato_IsDelete(void* i_this) {
    return 1;
}

/* 80489808-80489828 -00001 0020+00 1/0 0/0 0/0 .data            daTag_AllMato_MethodTable */
static actor_method_class daTag_AllMato_MethodTable = {
    (process_method_func)daTag_AllMato_Create,
    (process_method_func)daTag_AllMato_Delete,
    (process_method_func)daTag_AllMato_Execute,
    (process_method_func)daTag_AllMato_IsDelete,
    (process_method_func)daTag_AllMato_Draw
};

/* 80489828-80489858 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_TAG_ALLMATO */
extern actor_process_profile_definition g_profile_TAG_ALLMATO = {
    fpcLy_CURRENT_e,                // mLayerID
    10,                              // mListID
    fpcPi_CURRENT_e,                // mListPri
    PROC_TAG_ALLMATO,               // mProcName
    &g_fpcLf_Method.base,          // sub_method
    sizeof(daTag_AllMato_c),     // mSize
    0,                              // mSizeOther
    0,                              // mParameters
    &g_fopAc_Method.base,           // sub_method
    288,                             // mPriority
    &daTag_AllMato_MethodTable,  // sub_method
    0x44000,                        // mStatus
    fopAc_ACTOR_e,                              // mActorType
    fopAc_CULLBOX_CUSTOM_e,         // cullType
};
