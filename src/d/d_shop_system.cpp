/**
 * d_shop_system.cpp
 * Main Shop System
 */

#include "d/dolzel.h"

#include "d/d_shop_system.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_a_shop_item_static.h"
#include "d/d_item.h"
#include "d/d_lib.h"
#include "d/d_select_cursor.h"
#include "d/d_meter2_info.h"
#include "d/d_meter_HIO.h"
#include "d/d_msg_object.h"
#include "m_Do/m_Do_controller_pad.h"
#include "m_Do/m_Do_lib.h"
#include "d/actor/d_a_tag_shop_item.h"


/* 803BB8A4-803BB8C0 0189C4 001C+00 6/6 0/0 0/0 .data            dShopSystem_itemActor */
static daTag_ShopItem_c* dShopSystem_itemActor[7] = {
    NULL, NULL, NULL, NULL, NULL, NULL, NULL,
};

/* 804506E8-804506F0 000168 0007+01 7/7 0/0 0/0 .sdata           dShopSystem_itemNo */
static u8 dShopSystem_itemNo[7] = {
    fpcNm_ITEM_NONE, fpcNm_ITEM_NONE, fpcNm_ITEM_NONE, fpcNm_ITEM_NONE, fpcNm_ITEM_NONE, fpcNm_ITEM_NONE, fpcNm_ITEM_NONE,
};

/* 80451058-8045105C 000558 0004+00 9/9 0/0 0/0 .sbss            None */
static u8 dShopSystem_sellItemMax;

/* 8045105C-80451060 00055C 0004+00 6/6 0/0 0/0 .sbss            dShopSystem_item_count */
static int dShopSystem_item_count;

/* 80451060-80451064 000560 0004+00 4/4 0/0 0/0 .sbss            None */
static u8 data_80451060;

/* 80197098-80197270 1919D8 01D8+00 1/1 0/0 0/0 .text            dShopSystem_searchItemActor__FPvPv
 */
static int dShopSystem_searchItemActor(void* i_actor, void* param_1) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_TAG_SHOPITM) {
        if ((fopAcM_GetParam(param_1) & 0xF0000000) == (fopAcM_GetParam(i_actor) & 0xF0000000) &&
            dShopSystem_item_count < dShopSystem_sellItemMax)
        {
            u8 i_posID = (fopAcM_GetParam(i_actor) >> 0x18) & 0xF;
            JUT_ASSERT(0, i_posID <= dShopSystem_c::ITEM_MAX_e);

            if (dShopSystem_itemActor[0] != i_actor && dShopSystem_itemActor[1] != i_actor &&
                dShopSystem_itemActor[2] != i_actor && dShopSystem_itemActor[3] != i_actor &&
                dShopSystem_itemActor[4] != i_actor && dShopSystem_itemActor[5] != i_actor &&
                dShopSystem_itemActor[6] != i_actor)
            {
                u8 sw = static_cast<fopAc_ac_c*>(i_actor)->home.angle.z;
                u8 sw2 = ((u16) static_cast<fopAc_ac_c*>(i_actor)->home.angle.z) >> 8;
                u8 item_no = fopAcM_GetParam(i_actor) & 0xFF;

                if ((sw == 0xFF || !dComIfGs_isSaveSwitch(sw)) &&
                    (sw2 == 0xFF || dComIfGs_isSaveSwitch(sw2)))
                {
                    if (sw != 0xFF && item_no == fpcNm_ITEM_HYLIA_SHIELD && checkItemGet(item_no, true)) {
                        dComIfGs_onSaveSwitch(sw);
                    } else {
                        if (i_posID == 0) {
                            data_80451060 = 1;
                            dShopSystem_itemActor[dShopSystem_item_count] =
                                (daTag_ShopItem_c*)i_actor;
                            dShopSystem_itemNo[dShopSystem_item_count] = item_no;
                        } else if (dShopSystem_itemActor[i_posID - 1] == NULL) {
                            dShopSystem_itemActor[i_posID - 1] = (daTag_ShopItem_c*)i_actor;
                            dShopSystem_itemNo[i_posID - 1] = item_no;
                        }

                        dShopSystem_item_count++;
                    }
                }
            }
        }
    }

    return 0;
}

/* 804506F0-804506F8 000170 0008+00 6/6 0/0 0/0 .sdata           dShopSystem_cameraActor */
static fopAc_ac_c* dShopSystem_cameraActor[2] = {NULL, NULL};

/* 80451064-80451068 000564 0004+00 5/5 0/0 0/0 .sbss            dShopSystem_camera_count */
static int dShopSystem_camera_count;

/* 80197270-80197338 191BB0 00C8+00 1/1 0/0 0/0 .text dShopSystem_searchCameraActor__FPvPv */
static int dShopSystem_searchCameraActor(void* i_actor, void* param_1) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_TAG_SHOPCAM) {
        if ((fopAcM_GetParam(param_1) & 0xf0000000) == (fopAcM_GetParam(i_actor) & 0xf0000000) &&
            dShopSystem_camera_count < 2)
        {
            switch (fopAcM_GetParam(i_actor) & 0xf) {
            case 0:
                if (dShopSystem_cameraActor[0] == NULL) {
                    dShopSystem_cameraActor[0] = (fopAc_ac_c*)i_actor;
                    dShopSystem_camera_count++;
                }
                break;
            case 1:
                if (dShopSystem_cameraActor[1] == NULL) {
                    dShopSystem_cameraActor[1] = (fopAc_ac_c*)i_actor;
                    dShopSystem_camera_count++;
                }
                break;
            default:
                break;
            }
        }
    }
    return 0;
}

/* 80197338-801974E4 191C78 01AC+00 0/0 0/0 19/19 .text            initShopSystem__13dShopSystem_cFv
 */
void dShopSystem_c::initShopSystem() {
    dShopSystem_sellItemMax = 3;
    data_80451060 = 0;

    for (int i = 0; i < 7; i++) {
        dShopSystem_itemActor[i] = NULL;
        dShopSystem_itemNo[i] = fpcNm_ITEM_NONE;
    }
    dShopSystem_item_count = 0;

    for (int i = 0; i < 2; i++) {
        dShopSystem_cameraActor[i] = NULL;
    }
    dShopSystem_camera_count = 0;

    if (mpStick == NULL) {
        mpStick = new STControl();
    }

    if (mpDrawCursor == NULL) {
        mpDrawCursor = new dSelect_cursor_c(1, 1.0f, NULL);
        mpDrawCursor->setParam(1.0f, 1.0f, 0.1f, 0.7f, 0.7f);
    }

    field_0xf64 = -1;
    mEventParam = 0;
    field_0xf58 = 0;
    mFlag = 0;
    mCursorPos = 0;
    mLastCursorPos = 0;
    field_0xf68 = 0;
    mSeq = 0;
    field_0xf71 = mSeq;
    field_0xf79 = 0;
    field_0xf7a = 0;
    mWaitTimer = 0;
    mSoldOutFlag = -1;
    mSoldOutItemFlags = 0;
    offSpMode();
    field_0xf6c = 0;
    field_0xf76 = 0;
    mMasterType = 9;
    field_0xf78 = -1;
    mFlow.onNonStopJunpFlowFlag();
}

struct shop_item_data {
    Vec mItemPos[3];
};

/* 803BB8C0-803BB8E4 0189E0 0024+00 1/0 0/0 0/0 .data            item_seira_shop */
static shop_item_data item_seira_shop = {
    {
        {110.0f, 150.0f, -115.0f},
        {160.0f, 150.0f, -115.0f},
        {210.0f, 150.0f, -115.0f},
    },
};

static processFunc process[] = {
    &dShopSystem_c::seq_wait,        &dShopSystem_c::seq_start,
    &dShopSystem_c::seq_select_wait, &dShopSystem_c::seq_select_start,
    &dShopSystem_c::seq_select,      &dShopSystem_c::seq_moving,
    &dShopSystem_c::seq_decide,      &dShopSystem_c::seq_choose,
    &dShopSystem_c::seq_decide_yes,  &dShopSystem_c::seq_decide_no,
    &dShopSystem_c::seq_finish,      (processFunc)&dShopSystem_c::seq_event,
};

/* 801974E4-801975C0 191E24 00DC+00 1/0 0/0 10/10 .text            __dt__13dShopSystem_cFv */
dShopSystem_c::~dShopSystem_c() {
    deleteObject();
    dShopSystem_sellItemMax = 0;
    data_80451060 = 0;

    for (int i = 0; i < 7; i++) {
        dShopSystem_itemActor[i] = NULL;
        dShopSystem_itemNo[i] = fpcNm_ITEM_NONE;
    }
    dShopSystem_item_count = 0;

    for (int i = 0; i < 2; i++) {
        dShopSystem_cameraActor[i] = NULL;
    }
    dShopSystem_camera_count = 0;
}

/* 801975C0-801975DC 191F00 001C+00 6/6 0/0 0/0 .text            onFlag__13dShopSystem_cFi */
void dShopSystem_c::onFlag(int i_flag) {
    mFlag |= (u16)(1 << i_flag);
}

/* 801975DC-801975F8 191F1C 001C+00 7/7 0/0 0/0 .text            offFlag__13dShopSystem_cFi */
void dShopSystem_c::offFlag(int i_flag) {
    mFlag &= ~(u16)(1 << i_flag);
}

/* 801975F8-80197618 191F38 0020+00 8/8 1/1 0/0 .text            isFlag__13dShopSystem_cFi */
BOOL dShopSystem_c::isFlag(int i_flag) {
    return mFlag & (u16)(1 << i_flag) ? TRUE : FALSE;
}

/* 80197618-80197634 191F58 001C+00 1/1 0/0 0/0 .text onSoldOutItemFlag__13dShopSystem_cFi */
void dShopSystem_c::onSoldOutItemFlag(int i_flag) {
    mSoldOutItemFlags |= (u8)(1 << i_flag);
}

/* 80197634-80197650 191F74 001C+00 1/1 0/0 0/0 .text offSoldOutItemFlag__13dShopSystem_cFi */
void dShopSystem_c::offSoldOutItemFlag(int i_flag) {
    mSoldOutItemFlags &= ~(u8)(1 << i_flag);
}

/* 80197650-80197670 191F90 0020+00 2/2 0/0 0/0 .text isSoldOutItemFlag__13dShopSystem_cFi */
BOOL dShopSystem_c::isSoldOutItemFlag(int i_flag) {
    return mSoldOutItemFlags & (u8)(1 << i_flag) ? TRUE : FALSE;
}

/* 80197670-80197808 191FB0 0198+00 3/3 0/0 0/0 .text
 * checkController__13dShopSystem_cFUcP10dMsgFlow_c             */
int dShopSystem_c::checkController(u8 i_seq, dMsgFlow_c* i_flow) {
    if (mWaitTimer != 0) {
        if (mDoCPd_c::getTrigA(PAD_1)) {
            dMsgObject_setShopWaitTimer(1);
        }
        return 0;
    }

    if (!dpdMove()) {
        mpStick->checkTrigger();
    }

    int control_status;
    if (dShopSystem_sellItemMax == 4) {
        control_status = chooseItem4(i_seq);
    } else if (dShopSystem_sellItemMax == 5) {
        control_status = chooseItem5(i_seq);
    } else {
        control_status = chooseItem3(i_seq);
    }

    if (control_status != 0) {
        return control_status;
    }

    dMsgObject_c* msg = dMsgObject_getMsgObjectClass();
    if (msg->getSelectPushFlag() != 0) {
        return msg->getSelectPushFlag() == 2 ? 2 : 1;
    }

    if (mDoCPd_c::getTrigA(PAD_1)) {
        if (msg->getStatus() != 6 && msg->getStatus() != 8 && msg->getStatus() != 9 &&
            msg->getStatus() != 20 && i_seq != SEQ_WAIT)
        {
            return 1;
        }
    }

    if (mDoCPd_c::getTrigB(PAD_1)) {
        if (i_seq != SEQ_SELECT_WAIT) {
            mLastCursorPos = mCursorPos;
            mCursorPos = 0;
        }

        if (!i_flow->isSelectMessage()) {
            return 2;
        }
    }

    return 0;
}

/* 80197808-80197DD0 192148 05C8+00 1/1 0/0 0/0 .text            chooseItem3__13dShopSystem_cFUc */
int dShopSystem_c::chooseItem3(u8 i_seq) {
    u8 old_cursor = mLastCursorPos;
    if (checkLeftTrigger(mpStick) && i_seq != SEQ_SELECT_WAIT) {
        u8 cursor_pos = mCursorPos;

        if (cursor_pos == 7) {
            mCursorPos = mLastCursorPos;
            mLastCursorPos = 7;

            if (mCursorPos != 0 && isFlag(mCursorPos - 1)) {
                mCursorPos = mLastCursorPos;
                mLastCursorPos = old_cursor;
            } else {
                if (i_seq != SEQ_START) {
                    if (mCursorPos != 0) {
                        mDoAud_seStart(Z2SE_SY_TALK_NEXT, NULL, 0, 0);
                    }

                    mShopCamAction.SetSelectIdx(mCursorPos);
                }

                return 3;
            }
        } else if (cursor_pos == 4) {
            mLastCursorPos = cursor_pos;
            mCursorPos = 0;

            if (i_seq != SEQ_START) {
                if (mCursorPos != 0) {
                    mDoAud_seStart(Z2SE_SY_TALK_NEXT, NULL, 0, 0);
                }

                mShopCamAction.SetSelectIdx(mCursorPos);
            }

            return 3;
        } else if (cursor_pos != 0) {
            mLastCursorPos = cursor_pos;
            mCursorPos--;

            if (mCursorPos != 0 && isFlag(mCursorPos - 1)) {
                mCursorPos = mLastCursorPos;
                mLastCursorPos = old_cursor;
            } else {
                if (i_seq != SEQ_START) {
                    if (mCursorPos != 0) {
                        mDoAud_seStart(Z2SE_SY_TALK_NEXT, NULL, 0, 0);
                    }

                    mShopCamAction.SetSelectIdx(mCursorPos);
                }
                return 3;
            }
        }
    }

    if (checkRightTrigger(mpStick) && i_seq != SEQ_SELECT_WAIT) {
        u8 cursor_pos = mCursorPos;

        if (cursor_pos != 7) {
            if (cursor_pos != 3 && cursor_pos != 6) {
                mLastCursorPos = cursor_pos;
                mCursorPos++;

                if (mCursorPos != 0 && isFlag(mCursorPos - 1)) {
                    mCursorPos = mLastCursorPos;
                    mLastCursorPos = old_cursor;
                } else {
                    if (i_seq != SEQ_START) {
                        mDoAud_seStart(Z2SE_SY_TALK_NEXT, NULL, 0, 0);
                        mShopCamAction.SetSelectIdx(mCursorPos);
                    }
                    return 4;
                }
            } else if (dShopSystem_sellItemMax == 7) {
                mLastCursorPos = cursor_pos;
                mCursorPos = 7;

                if (mCursorPos != 0 && isFlag(mCursorPos - 1)) {
                    mCursorPos = mLastCursorPos;
                    mLastCursorPos = old_cursor;
                } else {
                    if (i_seq != SEQ_START) {
                        mDoAud_seStart(Z2SE_SY_TALK_NEXT, NULL, 0, 0);
                        mShopCamAction.SetSelectIdx(mCursorPos);
                    }
                    return 4;
                }
            }
        }
    }

    if (dShopSystem_sellItemMax >= 6) {
        if (mpStick->checkUpTrigger() && i_seq != SEQ_SELECT_WAIT && mCursorPos <= 3) {
            mLastCursorPos = mCursorPos;
            mCursorPos += 3;

            if (mCursorPos != 0 && isFlag(mCursorPos - 1)) {
                mCursorPos = mLastCursorPos;
                mLastCursorPos = old_cursor;
            } else {
                if (i_seq != SEQ_START) {
                    if (mCursorPos != 0) {
                        mDoAud_seStart(Z2SE_SY_TALK_NEXT, NULL, 0, 0);
                    }

                    mShopCamAction.SetSelectIdx(mCursorPos);
                }

                return 5;
            }
        }

        if (mpStick->checkDownTrigger() && i_seq != SEQ_SELECT_WAIT) {
            u8 cursor_pos = mCursorPos;

            if (cursor_pos > 3 && cursor_pos <= 6) {
                mLastCursorPos = cursor_pos;
                mCursorPos -= 3;

                if (mCursorPos != 0 && isFlag(mCursorPos - 1)) {
                    mCursorPos = mLastCursorPos;
                    mLastCursorPos = old_cursor;
                } else {
                    if (i_seq != SEQ_START) {
                        mDoAud_seStart(Z2SE_SY_TALK_NEXT, NULL, 0, 0);
                        mShopCamAction.SetSelectIdx(mCursorPos);
                    }
                    return 6;
                }
            }
        }
    }

    return 0;
}

/* 80197DD0-80198250 192710 0480+00 1/1 0/0 0/0 .text            chooseItem5__13dShopSystem_cFUc */
int dShopSystem_c::chooseItem5(u8 i_seq) {
    u8 old_cursor = mLastCursorPos;
    if (checkLeftTrigger(mpStick) && i_seq != SEQ_SELECT_WAIT) {
        u8 cursor_pos = mCursorPos;

        if (cursor_pos == 3) {
            mLastCursorPos = cursor_pos;
            mCursorPos = 0;
            if (i_seq != SEQ_START) {
                if (mCursorPos != 0) {
                    mDoAud_seStart(Z2SE_SY_TALK_NEXT, NULL, 0, 0);
                }

                mShopCamAction.SetSelectIdx(mCursorPos);
            }
            return 3;
        }

        if (cursor_pos != 0) {
            mLastCursorPos = cursor_pos;
            mCursorPos--;

            if (mCursorPos != 0 && isFlag(mCursorPos - 1)) {
                mCursorPos = mLastCursorPos;
                mLastCursorPos = old_cursor;
            } else {
                if (i_seq != SEQ_START) {
                    if (mCursorPos != 0) {
                        mDoAud_seStart(Z2SE_SY_TALK_NEXT, NULL, 0, 0);
                    }

                    mShopCamAction.SetSelectIdx(mCursorPos);
                }
                return 3;
            }
        }
    }

    if (checkRightTrigger(mpStick) && i_seq != SEQ_SELECT_WAIT) {
        u8 cursor_pos = mCursorPos;

        if (cursor_pos != 2 && cursor_pos != 5) {
            mLastCursorPos = cursor_pos;
            mCursorPos++;

            if (mCursorPos != 0 && isFlag(mCursorPos - 1)) {
                mCursorPos = mLastCursorPos;
                mLastCursorPos = old_cursor;
            } else {
                if (i_seq != SEQ_START) {
                    mDoAud_seStart(Z2SE_SY_TALK_NEXT, NULL, 0, 0);
                    mShopCamAction.SetSelectIdx(mCursorPos);
                }
                return 4;
            }
        }
    }

    if (mpStick->checkUpTrigger() && i_seq != SEQ_SELECT_WAIT) {
        u8 cursor_pos = mCursorPos;

        if (cursor_pos == 3 || cursor_pos == 5) {
            mLastCursorPos = cursor_pos;

            if (mCursorPos == 3) {
                mCursorPos = 1;
            } else if (mCursorPos == 5) {
                mCursorPos = 2;
            }

            if (mCursorPos != 0 && isFlag(mCursorPos - 1)) {
                mCursorPos = mLastCursorPos;
                mLastCursorPos = old_cursor;
            } else {
                if (i_seq != SEQ_START) {
                    if (mCursorPos != 0) {
                        mDoAud_seStart(Z2SE_SY_TALK_NEXT, NULL, 0, 0);
                    }

                    mShopCamAction.SetSelectIdx(mCursorPos);
                }
                return 5;
            }
        }
    }

    if (mpStick->checkDownTrigger() && i_seq != SEQ_SELECT_WAIT) {
        u8 cursor_pos = mCursorPos;

        if (cursor_pos == 1 || cursor_pos == 2) {
            mLastCursorPos = cursor_pos;

            if (mCursorPos == 1) {
                mCursorPos = 3;
            } else if (mCursorPos == 2) {
                mCursorPos = 5;
            }

            if (mCursorPos != 0 && isFlag(mCursorPos - 1)) {
                mCursorPos = mLastCursorPos;
                mLastCursorPos = old_cursor;
            } else {
                if (i_seq != SEQ_START) {
                    mDoAud_seStart(Z2SE_SY_TALK_NEXT, NULL, 0, 0);
                    mShopCamAction.SetSelectIdx(mCursorPos);
                }
                return 6;
            }
        }
    }

    return 0;
}

/* 80198250-80198444 192B90 01F4+00 1/1 0/0 0/0 .text            chooseItem4__13dShopSystem_cFUc */
int dShopSystem_c::chooseItem4(u8 i_seq) {
    u8 old_cursor = mLastCursorPos;
    if (checkLeftTrigger(mpStick) && i_seq != SEQ_SELECT_WAIT && mCursorPos != 0) {
        mLastCursorPos = mCursorPos;
        mCursorPos--;

        if (mCursorPos != 0 && isFlag(mCursorPos - 1)) {
            mCursorPos = mLastCursorPos;
            mLastCursorPos = old_cursor;
        } else {
            if (i_seq != SEQ_START) {
                if (mCursorPos != 0) {
                    mDoAud_seStart(Z2SE_SY_TALK_NEXT, NULL, 0, 0);
                }

                mShopCamAction.SetSelectIdx(mCursorPos);
            }

            return 3;
        }
    }

    if (checkRightTrigger(mpStick) && i_seq != SEQ_SELECT_WAIT && mCursorPos < 4) {
        mLastCursorPos = mCursorPos;
        mCursorPos++;

        if (mCursorPos != 0 && isFlag(mCursorPos - 1)) {
            mCursorPos = mLastCursorPos;
            mLastCursorPos = old_cursor;
        } else {
            if (i_seq != SEQ_START) {
                mDoAud_seStart(Z2SE_SY_TALK_NEXT, NULL, 0, 0);
                mShopCamAction.SetSelectIdx(mCursorPos);
            }

            return 4;
        }
    }

    return 0;
}

/* 80198444-80198488 192D84 0044+00 5/5 0/0 0/0 .text            moveCursor__13dShopSystem_cFiUc */
int dShopSystem_c::moveCursor(int control_status, u8 param_1) {
    int cursor_status;
    if (field_0xf60 >= 0) {
        cursor_status = moveCursor0(control_status, param_1);
    } else {
        cursor_status = moveCursor1(control_status, param_1);
    }

    field_0xf6c = cursor_status;
    return cursor_status;
}

/* 80198488-80198708 192DC8 0280+00 1/1 0/0 0/0 .text            moveCursor0__13dShopSystem_cFiUc */
int dShopSystem_c::moveCursor0(int control_status, u8 param_1) {
    offFlag(7);

    switch (control_status) {
    case 3:
        if (mCursorPos == 0) {
            return getEventParamU8(mCursorPos) + 0x52;
        }

        return (getEventParamU8(mCursorPos) - 1) * 2 + 0x66;

    case 4:
        if (mCursorPos == 0) {
            return getEventParamU8(mCursorPos) + 0x52;
        }

        return (getEventParamU8(mCursorPos) - 1) * 2 + 0x66;

    case 7:
        if (mCursorPos == 0) {
            return getEventParamU8(mCursorPos) + 0x52;
        }

        return (getEventParamU8(mCursorPos) - 1) * 2 + 0x66;

    case 1:
        if (mCursorPos == 0) {
            return getEventParamU8(mCursorPos) + 0x52;
        }

        if (param_1 != 2) {
            return (getEventParamU8(mCursorPos) - 1) * 2 + 0x65;
        }

        return (getEventParamU8(mCursorPos) - 1) * 2 + 0x66;

    case 2:
        onFlag(7);
        mShopCamAction.SetSelectIdx(mCursorPos);

        if (mCursorPos == 0) {
            return getEventParamU8(mCursorPos) + 0x52;
        }

        if (param_1 != 2) {
            return (getEventParamU8(mCursorPos) - 1) * 2 + 0x65;
        }

        return (getEventParamU8(mCursorPos) - 1) * 2 + 0x66;
    }

    return 0;
}

/* 80198708-80198878 193048 0170+00 1/1 0/0 0/0 .text            moveCursor1__13dShopSystem_cFiUc */
int dShopSystem_c::moveCursor1(int control_status, u8 param_1) {
    offFlag(7);

    switch (control_status) {
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
        if (mCursorPos == 0) {
            return getFlowNodeNum() + 1;
        }

        return mItemCtrl.getMessageIndex(mCursorPos - 1) + 1;

    case 1:
        if (mCursorPos == 0) {
            return getFlowNodeNum() + 1;
        } else if (param_1 != 2) {
            return mItemCtrl.getMessageIndex(mCursorPos - 1);
        }

        return mItemCtrl.getMessageIndex(mCursorPos - 1) + 1;

    case 2:
        onFlag(7);
        mShopCamAction.SetSelectIdx(mCursorPos);

        if (mCursorPos == 0) {
            return getFlowNodeNum() + 1;
        } else if (param_1 != 2) {
            return mItemCtrl.getMessageIndex(mCursorPos - 1);
        }

        return mItemCtrl.getMessageIndex(mCursorPos - 1) + 1;

    default:
        return 0;
    }
}

/* 80198878-80198950 1931B8 00D8+00 0/0 0/0 9/9 .text            drawCursor__13dShopSystem_cFv */
int dShopSystem_c::drawCursor() {
    if ((mSeq == 4 || mSeq == 5 ||
         ((mSeq == 6 || mSeq == SEQ_SELECT_WAIT) && isFlag(mCursorPos - 1))) &&
        mCursorPos != 0 && mItemCtrl.isHomePos(mCursorPos - 1))
    {
        mpDrawCursor->addAlpha();
    } else {
        mpDrawCursor->decAlpha();
    }

    mpDrawCursor->setScale(g_cursorHIO.mShopCursorScale);
    if (mCursorPos != 0) {
        dComIfGd_set2DOpa(mpDrawCursor);
    }

    return 1;
}

/* 80198950-80198A2C 193290 00DC+00 0/0 0/0 9/9 .text            itemRotate__13dShopSystem_cFv */
int dShopSystem_c::itemRotate() {
    u8 item_index = 0;
    u8 cursor_pos = mCursorPos;

    if (cursor_pos != 0 && mSeq != SEQ_WAIT) {
        if (dShopSystem_itemNo[cursor_pos - 1] == fpcNm_ITEM_ARMOR) {
            int tmp_index;
            if (isFlag(8) == false) {
                tmp_index = 0;
            } else {
                tmp_index = mCursorPos;
            }
            item_index = tmp_index;
        } else {
            bool no_rotate = false;
            int tmp_index;
            if (isFlag(cursor_pos - 1) || isSoldOutItemFlag(mCursorPos - 1)) {
                no_rotate = true;
            }

            if (no_rotate) {
                tmp_index = 0;
            } else {
                tmp_index = mCursorPos;
            }
            item_index = tmp_index;
        }
    }

    mItemCtrl.setRotateAnime(item_index);
    return 1;
}

/* 80198A2C-801990B0 19336C 0684+00 0/0 0/0 9/9 .text            itemZoom__13dShopSystem_cFP4cXyz */
int dShopSystem_c::itemZoom(cXyz* param_0) {
    cXyz local_1c;

    if (field_0xf60 >= 0) {
        local_1c.set(*param_0);

        if (dShopSystem_itemNo[mCursorPos - 1] == fpcNm_ITEM_OIL_BOTTLE) {
            mItemCtrl.setZoomAnime(mCursorPos, &local_1c,
                                   g_cursorHIO.mSeraShopObjZoomAngleX + -5000,
                                   isFlag(8) ? true : false);
        } else {
            mItemCtrl.setZoomAnime(mCursorPos, &local_1c, g_cursorHIO.mSeraShopObjZoomAngleX,
                                   isFlag(8) ? true : false);
        }
    } else {
        cXyz local_28;
        cXyz local_34;

        if (dShopSystem_itemActor[1] != NULL && dShopSystem_cameraActor[1] != NULL) {
            cXyz local_40;
            local_40.set(dShopSystem_itemActor[1]->home.pos);

            f32 tmp_05 = 0.5f;
            if (dShopSystem_sellItemMax == 4) {
                if (dShopSystem_itemActor[2] != NULL) {
                    f32 tmp = (dShopSystem_itemActor[2]->home.pos.x +
                               dShopSystem_itemActor[1]->home.pos.x);
                    local_40.x = tmp * tmp_05;

                    f32 tmp2 = (dShopSystem_itemActor[2]->home.pos.y +
                                dShopSystem_itemActor[1]->home.pos.y);
                    local_40.y = tmp2 * tmp_05;

                    f32 tmp3 = (dShopSystem_itemActor[2]->home.pos.z +
                                dShopSystem_itemActor[1]->home.pos.z);
                    local_40.z = tmp3 * tmp_05;
                }
            } else if (dShopSystem_sellItemMax == 5) {
                f32 tmp =
                    (dShopSystem_itemActor[2]->home.pos.x + dShopSystem_itemActor[3]->home.pos.x);
                local_40.x = tmp * tmp_05;

                local_40.y = dShopSystem_itemActor[0]->home.pos.y;

                f32 tmp3 =
                    (dShopSystem_itemActor[2]->home.pos.z + dShopSystem_itemActor[3]->home.pos.z);
                local_40.z = tmp3 * tmp_05;
            }

            cXyz local_4c = local_40 - dShopSystem_cameraActor[1]->current.pos;
            s16 atan = cM_atan2s(local_4c.x, local_4c.z);

            if (!strcmp("R_SP01", dComIfGp_getStartStageName())) {
                local_34.set(g_cursorHIO.mObjZoom.x, g_cursorHIO.mObjZoom.y + -25.0f,
                             g_cursorHIO.mObjZoom.z + 150.0f);
            } else {
                if (mMasterType == 5) {
                    if (dShopSystem_itemNo[mCursorPos - 1] == fpcNm_ITEM_ARROW_10 ||
                        dShopSystem_itemNo[mCursorPos - 1] == fpcNm_ITEM_ARROW_20 ||
                        dShopSystem_itemNo[mCursorPos - 1] == fpcNm_ITEM_ARROW_30)
                    {
                        local_34.set(g_cursorHIO.mObjZoom.x, -50.0f + g_cursorHIO.mObjZoom.y + 5.0f,
                                     (g_cursorHIO.mObjZoom.z + 250.0f) - 60.0f);
                    } else {
                        local_34.set(g_cursorHIO.mObjZoom.x,
                                     -50.0f + g_cursorHIO.mObjZoom.y + 20.0f,
                                     (g_cursorHIO.mObjZoom.z + 250.0f) - 60.0f);
                    }
                } else if (mCursorPos == 7) {
                    local_34.set(g_cursorHIO.mMagicArmorObjZoom.x,
                                 g_cursorHIO.mMagicArmorObjZoom.y + -130.0f,
                                 g_cursorHIO.mMagicArmorObjZoom.z + 215.0f);
                } else {
                    local_34.set(g_cursorHIO.mObjZoom.x, g_cursorHIO.mObjZoom.y + -50.0f,
                                 g_cursorHIO.mObjZoom.z + 250.0f);
                }
            }

            cLib_offsetPos(&local_28, &dShopSystem_cameraActor[1]->current.pos, atan, &local_34);
            if (dShopSystem_sellItemMax == 6 || dShopSystem_sellItemMax == 5) {
                param_0->y += 15.0f;
            }
            local_1c.set(local_28.x + param_0->x, local_28.y + param_0->y, local_28.z + param_0->z);
        } else {
            local_28.set(*param_0);
            local_1c.set(*param_0);
        }

        u8 dvar1 = mMasterType;
        if (dvar1 == 1) {
            if (dShopSystem_itemNo[mCursorPos - 1] == fpcNm_ITEM_OIL_BOTTLE) {
                mItemCtrl.setZoomAnime(mCursorPos, &local_1c,
                                       g_cursorHIO.mShopObjZoomAngleX + -7000,
                                       isFlag(8) ? true : false);
            } else {
                mItemCtrl.setZoomAnime(mCursorPos, &local_1c, g_cursorHIO.mShopObjZoomAngleX,
                                       isFlag(8) ? true : false);
            }
        } else if (dvar1 == 2) {
            if (dShopSystem_itemNo[mCursorPos - 1] == fpcNm_ITEM_RED_BOTTLE) {
                mItemCtrl.setZoomAnime(mCursorPos, &local_1c, g_cursorHIO.mShopObjZoomAngleX - 3000,
                                       isFlag(8) ? true : false);
            } else {
                mItemCtrl.setZoomAnime(mCursorPos, &local_1c, g_cursorHIO.mShopObjZoomAngleX,
                                       isFlag(8) ? true : false);
            }
        } else if (dvar1 == 5) {
            if (dShopSystem_itemNo[mCursorPos - 1] == fpcNm_ITEM_ARROW_10 ||
                dShopSystem_itemNo[mCursorPos - 1] == fpcNm_ITEM_ARROW_20 ||
                dShopSystem_itemNo[mCursorPos - 1] == fpcNm_ITEM_ARROW_30)
            {
                mItemCtrl.setZoomAnime(mCursorPos, &local_1c, g_cursorHIO.mShopObjZoomAngleX - 4000,
                                       isFlag(8) ? true : false);
            } else {
                mItemCtrl.setZoomAnime(mCursorPos, &local_1c, g_cursorHIO.mShopObjZoomAngleX - 2000,
                                       isFlag(8) ? true : false);
            }
        } else if (mCursorPos == 7) {
            mItemCtrl.setZoomAnime(mCursorPos, &local_1c, g_cursorHIO.mMagicArmorObjZoomAngleX,
                                   isFlag(8) ? true : false);
        } else if (dShopSystem_sellItemMax == 7) {
            mItemCtrl.setZoomAnime(mCursorPos, &local_1c, g_cursorHIO.mShopObjZoomAngleX - 3000,
                                   isFlag(8) ? true : false);
        } else {
            mItemCtrl.setZoomAnime(mCursorPos, &local_1c, g_cursorHIO.mShopObjZoomAngleX,
                                   isFlag(8) ? true : false);
        }
    }

    return 1;
}

/* 801990B0-801990B8 1939F0 0008+00 1/0 0/0 0/0 .text
 * seq_wait__13dShopSystem_cFP10fopAc_ac_cP10dMsgFlow_c         */
int dShopSystem_c::seq_wait(fopAc_ac_c* param_0, dMsgFlow_c* param_1) {
    return 0;
}

inline void pos3Dto2D(Vec* a, Vec* b) {
    mDoLib_project(a, b);
}

/* 801990B8-8019936C 1939F8 02B4+00 1/0 0/0 0/0 .text
 * seq_start__13dShopSystem_cFP10fopAc_ac_cP10dMsgFlow_c        */
int dShopSystem_c::seq_start(fopAc_ac_c* actor, dMsgFlow_c* i_flow) {
    if (field_0xf79 != 0) {
        dComIfGp_setDoStatusForce(0, 0);
        dComIfGp_setAStatusForce(0, 0);
        field_0xf79 = 0;
    }

    cXyz pos3d;
    cXyz pos2d;
    pos3d.set(mItemCtrl.getCurrentPos(0));
    pos3Dto2D(&pos3d, &pos2d);
    mpDrawCursor->setPos(pos2d.x, pos2d.y + g_cursorHIO.mShopCursorOffsetY);

    if (chkSpMode() && !beforeStartSeqAction(i_flow, field_0xf5c)) {
        return 0;
    } else {
        if (dMsgObject_c::isMsgSendControl()) {
            dComIfGp_setDoStatusForce(0, 0);
            dComIfGp_setAStatusForce(0x2A, 0);

            int control_status = checkController(SEQ_WAIT, i_flow);
            if (control_status != 0) {
                dMsgObject_c::onMsgSend();
                int cursor_status = moveCursor(control_status, 0);

                if (chkSpMode()) {
                    if (mCursorPos != 0) {
                        field_0xf5c = cursor_status;
                        mShopCamAction.setCameraSpeed(0.0f, 0.0f, 0.0f, 0.0f);
                        setSeq(SEQ_SELECT);
                    } else if (i_flow->doFlow(actor, NULL, cursor_status)) {
                        mShopCamAction.setCameraSpeed(0.0f, 0.0f, 0.0f, 0.0f);
                        setSeq(SEQ_FINISH);
                    }
                } else if (i_flow->doFlow(actor, NULL, cursor_status)) {
                    if (mCursorPos == 0) {
                        setSeq(SEQ_FINISH);
                    } else {
                        setSeq(SEQ_SELECT);
                    }
                }
            }
        } else {
            if (i_flow->doFlow(actor, NULL, 0)) {
                int itemNo;
                if (mFlow.getEventId(&itemNo) == 1) {
                    if (mItemPartnerId == fpcM_ERROR_PROCESS_ID_e) {
                        mItemPartnerId = fopAcM_createItemForPresentDemo(&current.pos, itemNo, 0, -1,
                                                                      -1, NULL, NULL);
                    }

                    if (fpcEx_IsExist(mItemPartnerId)) {
                        mEvtNo = 1;
                        evtChange();
                        return 1;
                    } else {
                        return 0;
                    }
                } else {
                    return 1;
                }
            }
        }
    }

    return 0;
}

/* 8019936C-801993C4 193CAC 0058+00 1/0 0/0 0/0 .text
 * seq_select_wait__13dShopSystem_cFP10fopAc_ac_cP10dMsgFlow_c  */
int dShopSystem_c::seq_select_wait(fopAc_ac_c*, dMsgFlow_c*) {
    if (mItemCtrl.isHomePos(mCursorPos - 1)) {
        setSoldOut();
        setSeq(SEQ_SELECT);
    }

    return 0;
}

/* 801993C4-8019959C 193D04 01D8+00 1/0 0/0 0/0 .text
 * seq_select_start__13dShopSystem_cFP10fopAc_ac_cP10dMsgFlow_c */
int dShopSystem_c::seq_select_start(fopAc_ac_c*, dMsgFlow_c*) {
    if (field_0xf60 < 0 && field_0xf76 == 0 && dShopSystem_item_count != -1) {
        if (dShopSystem_item_count != dShopSystem_sellItemMax) {
            return 0;
        }
        searchItemActor();
    }

    if (isFlag(mCursorPos - 1)) {
        switch (mCursorPos) {
        case 1:
            mCursorPos = 2;
            if (isFlag(mCursorPos - 1)) {
                mCursorPos = 3;
                if (isFlag(mCursorPos - 1)) {
                    mCursorPos = 0;
                }
            }
            break;

        case 2:
            mCursorPos = 1;
            if (isFlag(mCursorPos - 1)) {
                mCursorPos = 3;
                if (isFlag(mCursorPos - 1)) {
                    mCursorPos = 0;
                }
            }
            break;

        case 3:
            mCursorPos = 2;
            if (isFlag(mCursorPos - 1)) {
                mCursorPos = 1;
                if (isFlag(mCursorPos - 1)) {
                    mCursorPos = 0;
                }
            }
            break;
        }
    }

    mShopCamAction.SetSelectIdx(mCursorPos);
    int cursor_status = moveCursor(4, 0);
    initTalk(cursor_status, NULL);
    setSeq(SEQ_SELECT);

    return 0;
}

/* 8019959C-80199A18 193EDC 047C+00 1/0 0/0 0/0 .text
 * seq_select__13dShopSystem_cFP10fopAc_ac_cP10dMsgFlow_c       */
int dShopSystem_c::seq_select(fopAc_ac_c* actor, dMsgFlow_c* i_flow) {
    if (chkSpMode() && !beforeSelectSeqAction(i_flow, field_0xf5c)) {
        return 0;
    }

    if (field_0xf76 != 0) {
        field_0xf76 = 0;
    }

    int control_status = checkController(SEQ_START, i_flow);
    dComIfGp_setDoStatusForce(0x22, 0);
    dComIfGp_setAStatusForce(0x2A, 0);

    if (control_status != 0) {
        int cursor_status = moveCursor(control_status, 1);

        int spMode = chkSpMode();
        if (spMode && control_status == 2) {
            field_0xf5c = cursor_status;
            mShopCamAction.setCameraSpeed(0.0f, 0.0f, 0.0f, 0.0f);
            setSeq(SEQ_FINISH);
        } else if (spMode && mCursorPos == 0) {
            field_0xf5c = cursor_status;
            mShopCamAction.SetSelectIdx(mCursorPos);
            mShopCamAction.setCameraSpeed(0.0f, 0.0f, 0.0f, 0.0f);
            setSeq(SEQ_START);
        } else if (i_flow->doFlow(actor, NULL, cursor_status)) {
            if (control_status == 3) {
                if (mCursorPos != 0) {
                    mDoAud_seStart(Z2SE_SY_TALK_NEXT, NULL, 0, 0);
                }

                mShopCamAction.SetSelectIdx(mCursorPos);
            } else if (control_status == 4 || control_status == 5 || control_status == 6) {
                mDoAud_seStart(Z2SE_SY_TALK_NEXT, NULL, 0, 0);

                mShopCamAction.SetSelectIdx(mCursorPos);
            }

            dComIfGp_setMesgCancelButton(1);

            if (control_status == 1) {
                if (!isFlag(mCursorPos - 1) && !isSoldOutItemFlag(mCursorPos - 1)) {
                    onFlag(8);
                }
                dMeter2Info_set2DVibrationM();
                setSeq(SEQ_DECIDE);
            } else if (control_status == 2) {
                setSeq(SEQ_FINISH);
            } else if (mCursorPos == 0) {
                setSeq(SEQ_START);
            } else {
                field_0xf68 = 0;
                setSeq(SEQ_MOVING);

                if (mLastCursorPos != 0) {
                    return 0;
                }
            }
        } else if (control_status == 3 || control_status == 4 || control_status == 5 ||
                   control_status == 6 || control_status == 7 || control_status == 2)
        {
            if (mLastCursorPos == 7) {
                mLastCursorPos = mCursorPos;
                mCursorPos = 7;
            } else {
                mCursorPos = mLastCursorPos;
            }

            field_0xf7a = 0;

            if (control_status == 2) {
                mShopCamAction.SetSelectIdx(mCursorPos);
            }
        }
    } else {
        i_flow->doFlow(actor, NULL, 0);
    }

    u8 old_cursor = 0;
    if (mCursorPos != 0) {
        old_cursor = mCursorPos;
    } else if (mLastCursorPos != 0) {
        old_cursor = mLastCursorPos;
    }

    if (old_cursor != 0) {
        cXyz pos3d;
        cXyz pos2d;
        pos3d.set(mItemCtrl.getCurrentPos(old_cursor - 1));
        pos3Dto2D(&pos3d, &pos2d);

        if (old_cursor == 7) {
            pos2d.x += g_cursorHIO.mMagicArmorCursorOffsetX;
            pos2d.y += g_cursorHIO.mMagicArmorCursorOffsetY;
        } else {
            pos2d.y += g_cursorHIO.mShopCursorOffsetY;
        }

        mpDrawCursor->setPos(pos2d.x, pos2d.y);
    }

    return 0;
}

/* 80199A18-80199BF8 194358 01E0+00 1/0 0/0 0/0 .text
 * seq_moving__13dShopSystem_cFP10fopAc_ac_cP10dMsgFlow_c       */
int dShopSystem_c::seq_moving(fopAc_ac_c*, dMsgFlow_c*) {
    field_0xf68++;

    cXyz last_pos3d;
    cXyz pos3d;
    cXyz last_pos2d;
    cXyz pos2d;

    pos3d.set(mItemCtrl.getCurrentPos(mCursorPos - 1));
    pos3Dto2D(&pos3d, &pos2d);

    if (mCursorPos == 7) {
        pos2d.x += g_cursorHIO.mMagicArmorCursorOffsetX;
        pos2d.y += g_cursorHIO.mMagicArmorCursorOffsetY;
    } else {
        pos2d.y += g_cursorHIO.mShopCursorOffsetY;
    }

    if (mLastCursorPos != 0) {
        last_pos3d.set(mItemCtrl.getCurrentPos(mLastCursorPos - 1));
        pos3Dto2D(&last_pos3d, &last_pos2d);

        if (mLastCursorPos == 7) {
            last_pos2d.x += g_cursorHIO.mMagicArmorCursorOffsetX;
            last_pos2d.y += g_cursorHIO.mMagicArmorCursorOffsetY;
        } else {
            last_pos2d.y += g_cursorHIO.mShopCursorOffsetY;
        }

        f32 tmp = (f32)(field_0xf68 * field_0xf68) / 9.0f;
        mpDrawCursor->setPos(last_pos2d.x + tmp * (pos2d.x - last_pos2d.x),
                             last_pos2d.y + tmp * (pos2d.y - last_pos2d.y));

    } else {
        mpDrawCursor->setPos(pos2d.x, pos2d.y);
    }

    if (field_0xf68 >= 3) {
        setSeq(SEQ_SELECT);
    }

    return 0;
}

/* 80199BF8-80199D14 194538 011C+00 1/0 0/0 0/0 .text
 * seq_decide__13dShopSystem_cFP10fopAc_ac_cP10dMsgFlow_c       */
int dShopSystem_c::seq_decide(fopAc_ac_c* actor, dMsgFlow_c* i_flow) {
    int control_status = checkController(SEQ_SELECT_WAIT, i_flow);

    dComIfGp_setDoStatusForce(0x22, 0);
    if (!i_flow->isSelectMessage()) {
        dComIfGp_setAStatusForce(0x2A, 0);
    } else if (dMsgObject_getMsgObjectClass()->getSelectCancelPos() != 0) {
        dComIfGp_setAStatusForce(0x2A, 0);
    }

    if (control_status != 0) {
        int cursor_status = moveCursor(control_status, 2);

        if (i_flow->doFlow(actor, NULL, cursor_status)) {
            offFlag(8);
            setSeq(SEQ_SELECT_WAIT);
        } else if (i_flow->isSelectMessage()) {
            field_0xf58 = control_status;
            setSeq(SEQ_CHOOSE);
        }
    } else {
        i_flow->doFlow(actor, NULL, 0);
    }

    return 0;
}

/* 80199D14-80199E28 194654 0114+00 1/0 0/0 0/0 .text
 * seq_choose__13dShopSystem_cFP10fopAc_ac_cP10dMsgFlow_c       */
int dShopSystem_c::seq_choose(fopAc_ac_c* actor, dMsgFlow_c* i_flow) {
    dComIfGp_setDoStatusForce(0x22, 0);
    if (!i_flow->isSelectMessage()) {
        dComIfGp_setAStatusForce(0x2A, 0);
    } else if (dMsgObject_getMsgObjectClass()->getSelectCancelPos() != 0) {
        dComIfGp_setAStatusForce(0x2A, 0);
    }

    i_flow->doFlow(actor, NULL, 0);

    u16 select_num = i_flow->getSelectNum();
    if (dMsgObject_c::getStatus() != 6 && dMsgObject_c::getStatus() != 8 &&
        dMsgObject_c::getStatus() != 9 && dMsgObject_c::getStatus() != 20)
    {
        if (select_num == 0) {
            setSeq(SEQ_DECIDE_YES);
        } else {
            setSeq(SEQ_DECIDE_NO);
        }
    }

    return 0;
}

/* 80199E28-80199FA4 194768 017C+00 1/0 0/0 0/0 .text
 * seq_decide_yes__13dShopSystem_cFP10fopAc_ac_cP10dMsgFlow_c   */
int dShopSystem_c::seq_decide_yes(fopAc_ac_c* actor, dMsgFlow_c* i_flow) {
    if (dMsgObject_getMessageID() == 0x1B82) {
        mShopCamAction.SetSelectIdx(0);
        field_0xf76 = 1;
    }

    int itemNo;
    if (mFlow.getEventId(&itemNo) == 1) {
        if (i_flow->doFlow(actor, NULL, 0)) {
            if (mItemPartnerId == fpcM_ERROR_PROCESS_ID_e) {
                mItemPartnerId =
                    fopAcM_createItemForPresentDemo(&current.pos, itemNo, 0, -1, -1, NULL, NULL);
            }

            if (fpcEx_IsExist(mItemPartnerId)) {
                offFlag(8);
                setSoldOutItemHide();
                mEvtNo = 1;
                evtChange();
                return 2;
            }

            return 0;
        }
    } else {
        int flow;
        if (field_0xf60 >= 0) {
            flow = 100;
        } else {
            flow = mItemCtrl.getMessageIndex(mCursorPos - 1) + 1;
        }

        if (i_flow->doFlow(actor, NULL, flow)) {
            offFlag(8);
            setSeq(SEQ_SELECT_WAIT);
        }
    }

    return 0;
}

/* 80199FA4-8019A020 1948E4 007C+00 1/0 0/0 0/0 .text
 * seq_decide_no__13dShopSystem_cFP10fopAc_ac_cP10dMsgFlow_c    */
int dShopSystem_c::seq_decide_no(fopAc_ac_c* actor, dMsgFlow_c* i_flow) {
    if (i_flow->doFlow(actor, NULL, moveCursor(field_0xf58, 2))) {
        offFlag(8);
        setSeq(SEQ_SELECT_WAIT);
    }

    return 0;
}

/* 8019A020-8019A0C0 194960 00A0+00 1/0 0/0 0/0 .text
 * seq_finish__13dShopSystem_cFP10fopAc_ac_cP10dMsgFlow_c       */
int dShopSystem_c::seq_finish(fopAc_ac_c* actor, dMsgFlow_c* i_flow) {
    if (chkSpMode() && !beforeStartSeqAction(i_flow, field_0xf5c)) {
        return 0;
    } else if (i_flow->doFlow(actor, NULL, 0)) {
        setSeq(SEQ_WAIT);
        return 1;
    }

    return 0;
}

/* 8019A0C0-8019A0D0 194A00 0010+00 1/0 0/0 0/0 .text
 * seq_event__13dShopSystem_cFP10fopAc_ac_cP10dMsgFlow_c        */
bool dShopSystem_c::seq_event(fopAc_ac_c*, dMsgFlow_c*) {
    return mEvtNo == 0;
}

/* 8019A0D0-8019A158 194A10 0088+00 0/0 0/0 9/9 .text            shop_init__13dShopSystem_cFb */
int dShopSystem_c::shop_init(bool param_0) {
    if (param_0) {
        setSeq(SEQ_SELECT_START);
        dMeter2Info_onShopTalkFlag();
        setSoldOut();
        return 1;
    } else if (mSeq == SEQ_WAIT) {
        setSeq(SEQ_START);
        dMeter2Info_onShopTalkFlag();
        return 1;
    } else {
        return 0;
    }
}

/* 8019A158-8019A238 194A98 00E0+00 0/0 0/0 9/9 .text
 * shop_process__13dShopSystem_cFP10fopAc_ac_cP10dMsgFlow_c     */
int dShopSystem_c::shop_process(fopAc_ac_c* param_0, dMsgFlow_c* param_1) {
    int iVar1;
    iVar1 = (this->*process[mSeq])(param_0, param_1);

    if (mWaitTimer != 0) {
        mWaitTimer--;
    }
    if (field_0xf7a != 0) {
        dMeter2Info_set2DVibration();
        field_0xf7a = 0;
    }
    if (iVar1 != 0) {
        g_meter2_info.offShopTalkFlag();
        if (mSeq != 0) {
            setSeq(0);
        }
        if (iVar1 != 2) {
            mCursorPos = 0;
            mLastCursorPos = 0;
        }
    }
    if (mSeq != field_0xf71) {
        field_0xf71 = mSeq;
        field_0xf79 = 1;
    }
    return iVar1;
}

/* 804506F8-80450700 -00001 0004+04 1/1 0/0 0/0 .sdata           shop_item_pos_data_tbl */
static shop_item_data* shop_item_pos_data_tbl = &item_seira_shop;

/* 8019A238-8019A344 194B78 010C+00 0/0 0/0 1/1 .text            createShopItem__13dShopSystem_cFi
 */
void dShopSystem_c::createShopItem(int itemType) {
    static const u8 item_no[6] = {
        fpcNm_ITEM_MILK_BOTTLE, fpcNm_ITEM_BEE_CHILD, fpcNm_ITEM_PACHINKO, fpcNm_ITEM_MILK_BOTTLE, fpcNm_ITEM_BEE_CHILD, fpcNm_ITEM_NONE,
    };

    if (itemType != -1) {
        field_0xf60 = itemType;
        mSoldOutFlag = -1;

        cXyz pos;
        for (int i = 0; i < 3; i++) {
            const u8* itemTbl = item_no + (itemType * 3);

            pos.x = shop_item_pos_data_tbl->mItemPos[i].x + current.pos.x;
            pos.y = shop_item_pos_data_tbl->mItemPos[i].y + current.pos.y;
            pos.z = shop_item_pos_data_tbl->mItemPos[i].z + current.pos.z;

            if (itemTbl[i] != fpcNm_ITEM_NONE) {
                u32 index = fopAcM_create(PROC_ShopItem, itemTbl[i], &pos, fopAcM_GetRoomNo(this),
                                          &current.angle, NULL, -1);
                mItemCtrl.setItemIndex(i, index);
                offFlag(i);
            } else {
                mItemCtrl.setItemIndex(i, -1);
                onFlag(i);
            }
        }
    }
}

/* 8019A344-8019A354 194C84 0010+00 12/12 0/0 0/0 .text            setSeq__13dShopSystem_cFUc */
void dShopSystem_c::setSeq(u8 i_seq) {
    mSeq = i_seq;
    mWaitTimer = 2;
}

/* 8019A354-8019A364 194C94 0010+00 0/0 1/1 0/0 .text            setSoldOutFlag__13dShopSystem_cFv
 */
void dShopSystem_c::setSoldOutFlag() {
    mSoldOutFlag = mCursorPos - 1;
}

/* 8019A364-8019A4F4 194CA4 0190+00 2/2 0/0 0/0 .text            setSoldOut__13dShopSystem_cFv */
void dShopSystem_c::setSoldOut() {
    if (mSoldOutFlag != 0xFF) {
        if (field_0xf60 < 0) {
            u8 sw = (u8)dShopSystem_itemActor[mSoldOutFlag]->home.angle.z & 0xFF;
            if (sw != 0xFF && !dComIfGs_isSaveSwitch(sw)) {
                dComIfGs_onSaveSwitch(sw);
            }
        }

        int index = mSoldOutFlag;
        mSoldOutFlag = -1;
        if (field_0xf60 >= 0) {
            fopAcM_delete(mItemCtrl.getItemIndex(index));
            mItemCtrl.setItemIndex(index, -1);
            onFlag(index);
            return;
        } else if (index == 0) {
            dShopSystem_itemActor[0] = NULL;
            dShopSystem_itemNo[0] = fpcNm_ITEM_NONE;
            dShopSystem_item_count = 2;
        } else if (index == 1) {
            dShopSystem_itemActor[1] = NULL;
            dShopSystem_itemNo[1] = fpcNm_ITEM_NONE;
            dShopSystem_item_count = 2;
        } else if (index == 2) {
            dShopSystem_itemActor[2] = NULL;
            dShopSystem_itemNo[2] = fpcNm_ITEM_NONE;
            dShopSystem_item_count = 2;
        } else if (index == 6) {
            dShopSystem_itemActor[6] = NULL;
            dShopSystem_itemNo[6] = fpcNm_ITEM_NONE;
            dShopSystem_item_count = 6;
        }

        if (field_0xf76 != 0) {
            onFlag(index);
        }
    }
}

/* 8019A4F4-8019A564 194E34 0070+00 1/1 0/0 0/0 .text setSoldOutItemHide__13dShopSystem_cFv */
void dShopSystem_c::setSoldOutItemHide() {
    if (field_0xf60 < 0) {
        fopAcM_delete(mItemCtrl.getItemIndex(mSoldOutFlag));
    } else {
        daShopItem_c* item = (daShopItem_c*)fopAcM_SearchByID(mItemCtrl.getItemIndex(mSoldOutFlag));

        if (item != NULL) {
            item->hide();
        }
    }
}

/* 8019A564-8019A5D0 194EA4 006C+00 1/1 0/0 10/10 .text            deleteObject__13dShopSystem_cFv
 */
void dShopSystem_c::deleteObject() {
    if (mpStick != NULL) {
        delete mpStick;
        mpStick = NULL;
    }

    if (mpDrawCursor != NULL) {
        delete mpDrawCursor;
        mpDrawCursor = NULL;
    }
}

/* 8019A5D0-8019AB00 194F10 0530+00 1/1 0/0 8/8 .text            searchItemActor__13dShopSystem_cFv
 */
bool dShopSystem_c::searchItemActor() {
    u8 temp_data;
    if ((dShopSystem_item_count != -1 &&
         ((dShopSystem_item_count < (temp_data = dShopSystem_sellItemMax)) ||
          dShopSystem_camera_count < 2)))
    {
        if (dShopSystem_item_count < temp_data) {
            fpcEx_Search((fpcLyIt_JudgeFunc)dShopSystem_searchItemActor, this);
        }
        if (dShopSystem_camera_count < 2) {
            fpcEx_Search((fpcLyIt_JudgeFunc)dShopSystem_searchCameraActor, this);
        }
        return 0;
    }

    if (dShopSystem_item_count >= dShopSystem_sellItemMax && dShopSystem_camera_count >= 2) {
        mSoldOutFlag = -1;

        if (data_80451060) {
            f32 actorDistArr[7];
            u8 itemNoArr[7];
            f32 arr2[7];
            daTag_ShopItem_c* actorArr[7];
            u8 arr3[7];

            for (int i = 0; i < dShopSystem_sellItemMax; i++) {
                actorArr[i] = dShopSystem_itemActor[i];
                itemNoArr[i] = dShopSystem_itemNo[i];
                actorDistArr[i] = fopAcM_searchActorDistance(this, actorArr[i]);
                arr2[i] = 0.0f;
                arr3[i] = 0;
            }

            for (int i = 0; i < dShopSystem_sellItemMax; i++) {
                arr2[i] = actorDistArr[i];
                arr3[i] = i;

                if (i > 0) {
                    for (int j = i; j >= 0; j--) {
                        if (arr2[j] < arr2[j - 1]) {
                            f32 temp = arr2[j];
                            arr2[j] = arr2[j - 1];
                            arr2[j - 1] = temp;

                            u8 temp2 = arr3[j];
                            arr3[j] = arr3[j - 1];
                            arr3[j - 1] = temp2;
                        }
                    }
                }
            }

            for (int i = 0; i < dShopSystem_sellItemMax; i++) {
                dShopSystem_itemActor[i] = actorArr[arr3[i]];
                dShopSystem_itemNo[i] = itemNoArr[arr3[i]];
            }
        }

        for (int i = 0; i < dShopSystem_sellItemMax; i++) {
            u32 processId = dShopSystem_itemActor[i]->getProcessID();
            mItemCtrl.setItemIndex(i, processId);
            mItemCtrl.setMessageIndex(i, (u16)dShopSystem_itemActor[i]->home.angle.x != 0xFFFF ?
                                             (u16)dShopSystem_itemActor[i]->home.angle.x :
                                             -1);

            if (processId + 0x10000 == 0xFFFF) {
                onFlag(i);
                onSoldOutItemFlag(i);
            } else {
                offFlag(i);

                if ((u8)fopAcM_GetParam(dShopSystem_itemActor[i]) == 0xFF) {
                    onSoldOutItemFlag(i);
                } else {
                    offSoldOutItemFlag(i);
                }
            }
        }

        if (mMasterType == 8) {
            dShopSystem_cameraActor[0]->current.pos.set(-175.0f, 165.0f, 10.0f);
            dShopSystem_cameraActor[1]->current.pos.set(215.0f, 225.0f, 370.0f);
        }

        if (dShopSystem_sellItemMax > 3) {
            mShopCamAction.setCamDataIdx2(
                this, dShopSystem_itemActor[0], dShopSystem_itemActor[1], dShopSystem_itemActor[2],
                dShopSystem_itemActor[3], dShopSystem_itemActor[4], dShopSystem_itemActor[5],
                &dShopSystem_cameraActor[0]->current.pos, &dShopSystem_cameraActor[1]->current.pos);

            if (mMasterType == 8) {
                cXyz camCtrPos;
                camCtrPos.set(-180.0f, 245.0f, -380.0f);
                mShopCamAction.setMasterCamCtrPos(&camCtrPos);
            }

            for (int i = 0; i < 7; i++) {
                if (dShopSystem_itemActor[i] != NULL) {
                    u8 sw0 = dShopSystem_itemActor[i]->home.angle.z;
                    u8 sw1 = ((u16)dShopSystem_itemActor[i]->home.angle.z) >> 8;

                    if ((sw0 != 0xFF && !dComIfGs_isSaveSwitch(sw0)) &&
                        (sw1 != 0xFF && !dComIfGs_isSaveSwitch(sw1)))
                    {
                        onFlag(i);
                        onSoldOutItemFlag(i);
                    }
                }
            }

            dShopSystem_item_count = -1;
        } else {
            mShopCamAction.setCamDataIdx(
                this, dShopSystem_itemActor[0], dShopSystem_itemActor[1], dShopSystem_itemActor[2],
                &dShopSystem_cameraActor[0]->current.pos, &dShopSystem_cameraActor[1]->current.pos);

            for (int i = 0; i < 7; i++) {
                if (dShopSystem_itemActor[i] != NULL) {
                    u8 sw0 = dShopSystem_itemActor[i]->home.angle.z;
                    u8 sw1 = ((u16)dShopSystem_itemActor[i]->home.angle.z) >> 8;

                    if ((sw0 != 0xFF && !dComIfGs_isSaveSwitch(sw0)) &&
                        (sw1 != 0xFF && !dComIfGs_isSaveSwitch(sw1)))
                    {
                        onFlag(i);
                        onSoldOutItemFlag(i);
                    }
                }
            }

            dShopSystem_item_count = -1;
        }
    }

    return 1;
}

/* 8019AB00-8019AB1C 195440 001C+00 1/1 0/0 0/0 .text            getFlowNodeNum__13dShopSystem_cFv
 */
int dShopSystem_c::getFlowNodeNum() {
    u16 num = home.angle.x;
    if (num == 0xFFFF) {
        return -1;
    }

    return num;
}

// fake, used to fix weak function order
void dShopSystem_c::dummyWeakOrder() {
    static const char* bck_str = ".bck";
    static const char* btp_str = ".btp";
    static const char* btk_str = ".btk";

    getResName2(0);
}

/* 8019AB1C-8019AB24 19545C 0008+00 0/0 0/0 8/8 .text            setSellItemMax__13dShopSystem_cFUc
 */
void dShopSystem_c::setSellItemMax(u8 i_max) {
    dShopSystem_sellItemMax = i_max;
}

/* 8019AB24-8019AB60 195464 003C+00 0/0 0/0 9/9 .text            checkShopOpen__13dShopSystem_cFv */
BOOL dShopSystem_c::checkShopOpen() {
    for (int i = 0; i < 2; i++) {
        if (dShopSystem_cameraActor[i] != NULL) {
            return true;
        }
    }

    if (dShopSystem_camera_count) {
        return true;
    } else {
        return false;
    }
}

/* 8019AB60-8019AB84 1954A0 0024+00 3/3 0/0 0/0 .text
 * checkLeftTrigger__13dShopSystem_cFP9STControl                */
bool dShopSystem_c::checkLeftTrigger(STControl* i_stick) {
    return i_stick->checkLeftTrigger();
}

/* 8019AB84-8019ABA8 1954C4 0024+00 3/3 0/0 0/0 .text
 * checkRightTrigger__13dShopSystem_cFP9STControl               */
bool dShopSystem_c::checkRightTrigger(STControl* i_stick) {
    return i_stick->checkRightTrigger();
}

/* 8019ABA8-8019ABB0 1954E8 0008+00 1/1 0/0 0/0 .text            dpdMove__13dShopSystem_cFv */
bool dShopSystem_c::dpdMove() {
    return false;
}
