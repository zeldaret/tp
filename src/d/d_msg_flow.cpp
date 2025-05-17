#include "d/d_msg_flow.h"
#include "d/actor/d_a_alink.h"
#include "d/d_com_static.h"
#include "d/d_item.h"
#include "d/d_msg_object.h"
#include "d/d_shop_system.h"
#include "d/d_meter2_info.h"
#include "f_op/f_op_msg_mng.h"
#include "m_Do/m_Do_graphic.h"
#include "d/actor/d_a_midna.h"
#include "d/actor/d_a_myna.h"
#include "d/actor/d_a_obj_ss_base.h"
#include "SSystem/SComponent/c_math.h"

/* 803C14B8-803C14C4 01E5D8 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80249F00-80249F48 244840 0048+00 0/0 5/5 154/154 .text            __ct__10dMsgFlow_cFv */
dMsgFlow_c::dMsgFlow_c() {
    mNonStopJunpFlowFlag = 0;
    setInitValue(1);
}

/* 80249F48-80249F90 244888 0048+00 1/0 7/7 111/111 .text            __dt__10dMsgFlow_cFv */
dMsgFlow_c::~dMsgFlow_c() {}

/* 80249F90-8024A13C 2448D0 01AC+00 0/0 10/10 86/86 .text
 * init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c             */
void dMsgFlow_c::init(fopAc_ac_c* i_partner, int i_flowID, int param_2, fopAc_ac_c** i_talkPartners) {
    if (!dMsgObject_isTalkNowCheck()) {
        if (i_talkPartners == NULL) {
            dComIfGp_setMesgCameraInfoActor(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                            NULL);
        }

        if (param_2 == 0 && g_MsgObject_HIO_c.mMsgDebug == 2) {
            i_flowID = g_MsgObject_HIO_c.mFlowIndex;
        }

        u8* labelInfoTBL = NULL;
        u16 prevFlowID = i_flowID;

        dMsgObject_changeFlowGroup(i_flowID);

        if (param_2 == 0) {
            setInitValue(1);
            
            mFlow_p = getMsgDataBlock("FLW1");
            JUT_ASSERT(121, 0 != mFlow_p);

            mLabelInfo_p = getMsgDataBlock("FLI1");
            JUT_ASSERT(125, 0 != mLabelInfo_p);

            labelInfoTBL = mLabelInfo_p + 0x10;
            mFlowNodeTBL = (mesg_flow*)(mFlow_p + 0x10);
            mFlowIdxTBL = (u16*)(mFlowNodeTBL + (*(u16*)(mFlow_p + 8)));
            field_0x18 = mFlowIdxTBL + *(u16*)(mFlow_p + 8);

            mFlow = prevFlowID;

            if (i_partner != NULL) {
                dMsgObject_setTalkPartner(i_partner);
            }

            setNodeIndex(getInitNodeIndex(mFlow), i_talkPartners);
        } else {
            u16 nodeIdx = mNodeIdx;
            setInitValue(0);

            if (i_partner != NULL) {
                dMsgObject_setTalkPartner(i_partner);
            }

            setNodeIndex(nodeIdx, i_talkPartners);
        }
#ifdef DEBUG
        dbgPrint();
#endif
        dMsgObject_setSelectWordFlag(0);
    }
}

void dMsgFlow_c::initWord(fopAc_ac_c* i_partner, const char* i_word, u8 i_outputType, int param_3, fopAc_ac_c** param_4) {
    int flowID = 0x1324;
    dMsgObject_setWord(i_word);
    dMsgObject_setSelectWord(0, "");
    dMsgObject_setSelectWord(1, "");
    dMsgObject_setSelectWord(2, "");

    if (i_outputType != 0xFF) {
        dMsgObject_setMsgOutputType(i_outputType);
    }

    init(i_partner, flowID, param_3, param_4);
}

/* 8024A13C-8024A2D8 244A7C 019C+00 2/0 0/0 2/2 .text checkOpenDoor__10dMsgFlow_cFP10fopAc_ac_cPi
 */
int dMsgFlow_c::checkOpenDoor(fopAc_ac_c* i_speaker_p, int* param_2) {
    if (dMsgObject_isTalkNowCheck()) {
        return 0;
    }

    BOOL var_r27 = FALSE;
    int var_r26 = 0;
    BOOL var_r25 = FALSE;

    u16 flowID = mFlow;
    u16 nodeIdx = getInitNodeIndex(flowID);

    mesg_flow_node* msg_node = NULL;
    mesg_flow_node_branch* branch_node = NULL;
    mesg_flow_node_event* event_node = NULL;

    while ((nodeIdx != 0xFFFF && !var_r27) && !var_r25) {
        u8 type = mFlowNodeTBL[nodeIdx].message.type;

        switch(type) {
        case NODETYPE_MESSAGE_e: {
            msg_node = &mFlowNodeTBL[nodeIdx].message;
            nodeIdx = msg_node->next_node_idx;
            var_r26++;
            break;
        }
        case NODETYPE_BRANCH_e: {
            branch_node = (mesg_flow_node_branch*)&mFlowNodeTBL[nodeIdx].branch;

            switch(branch_node->query_idx) {
            case 0:
            case 4:
            case 7:
            case 8:
            case 9:
            case 25:
                var_r25 = TRUE;
                break;
            }

            u16 query_ret = (this->*mQueryList[branch_node->query_idx])(branch_node, i_speaker_p, 0);
            u16 spE = branch_node->next_node_idx + query_ret;
            nodeIdx = mFlowIdxTBL[spE];
            break;
        }
        case NODETYPE_EVENT_e: {
            event_node = &mFlowNodeTBL[nodeIdx].event;

            switch(event_node->event_idx) {
            case 12:
                var_r27 = TRUE;
                break;
            case 8:
            case 9:
            case 13:
            case 16:
            case 19:
            case 29:
                var_r25 = TRUE;
                break;
            default:
                nodeIdx = mFlowIdxTBL[event_node->next_node_idx];
                break;
            }
            break;
        }
        case 0:
        default:
            JUT_ASSERT(362, 0);
            break;
        }
    }

    if (param_2 != NULL) {
        *param_2 = var_r26;
    }

    return var_r27;
}

/* 8024A2D8-8024A424 244C18 014C+00 0/0 21/21 78/78 .text
 * doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci            */
int dMsgFlow_c::doFlow(fopAc_ac_c* i_speaker_p, fopAc_ac_c** i_talkPartners, int i_flowID) {
    BOOL check = FALSE;
    int var_r26 = 0;

    u16 flowID = i_flowID;
    dMsgObject_changeFlowGroup(mFlow);

    if (dMsgObject_isKillMessageFlag()) {
        field_0x27 = 1;
        field_0x26 = 1;
        flowID = 0;
    }

    if (field_0x26 != 0 && flowID != 0) {
        setInitValue(0);
        mFlow = flowID;
        setNodeIndex(getInitNodeIndex(mFlow), i_talkPartners);
        check = true;
    }

    if (field_0x26 != 0 || field_0x27 != 0) {
        msg_class* aMsg_p = fopMsgM_SearchByID(mMsg);
        if (aMsg_p != NULL) {
            if (aMsg_p->mode != 18) {
                return 0;
            }

            aMsg_p->mode = 19;
            mMsg = fpcM_ERROR_PROCESS_ID_e;
        }

        field_0x27 = 0;
    }

    if (field_0x26 != 0) {
        daPy_py_c::setMidnaMotionNum(0);
        daPy_py_c::setMidnaFaceNum(0);
        return 1;
    }

    var_r26 = nodeProc(i_speaker_p, i_talkPartners);
    return var_r26 != 0 || check;
}

/* 8024A424-8024A4C4 244D64 00A0+00 0/0 2/2 1/1 .text checkEventRender__10dMsgFlow_cFPiPiPiPi */
int dMsgFlow_c::checkEventRender(int* param_0, int* param_1, int* param_2, int* param_3) {
    if (field_0x47) {
        if (param_0 != NULL) {
            *param_0 = field_0x42 == 0xFF ? -1 : field_0x42;
        }

        if (param_1 != NULL) {
            *param_1 = field_0x43 == 0xFF ? -1 : field_0x43;
        }

        if (param_2 != NULL) {
            *param_2 = field_0x44 == 0xFF ? -1 : field_0x44;
        }

        if (param_3 != NULL) {
            *param_3 = field_0x45 == 0xFF ? -1 : field_0x45;
        }
    }

    return field_0x47 == 1;
}

/* 8024A4C4-8024A528 244E04 0064+00 0/0 0/0 10/10 .text            remove__10dMsgFlow_cFv */
void dMsgFlow_c::remove() {
    field_0x27 = 0;
    field_0x26 = 1;

    msg_class* aMsg_p = fopMsgM_SearchByID(mMsg);
    if (aMsg_p != NULL) {
        dMsgObject_onKillMessageFlag();
        mMsg = fpcM_ERROR_PROCESS_ID_e;
    }

    daPy_py_c::setMidnaMotionNum(0);
    daPy_py_c::setMidnaFaceNum(0);
}

/* 8024A528-8024A538 244E68 0010+00 0/0 2/2 66/66 .text            getEventId__10dMsgFlow_cFPi */
u16 dMsgFlow_c::getEventId(int* oItemId_p) {
    JUT_ASSERT(555, 0 != oItemId_p);
    *oItemId_p = field_0x30;
    return mEventId;
}

/* 8024A538-8024A540 244E78 0008+00 0/0 3/3 4/4 .text            getMsgNo__10dMsgFlow_cFv */
u32 dMsgFlow_c::getMsgNo() {
    return mMsgNo;
}

/* 8024A540-8024A548 244E80 0008+00 0/0 0/0 12/12 .text            getNowMsgNo__10dMsgFlow_cFv */
u32 dMsgFlow_c::getNowMsgNo() {
    return mNowMsgNo;
}

/* 8024A548-8024A580 244E88 0038+00 0/0 2/2 4/4 .text            getMsg__10dMsgFlow_cFv */
msg_class* dMsgFlow_c::getMsg() {
    if (mMsg != fpcM_ERROR_PROCESS_ID_e) {
        return fopMsgM_SearchByID(mMsg);
    }

    return NULL;
}

/* 8024A580-8024A618 244EC0 0098+00 5/5 0/0 0/0 .text            setInitValue__10dMsgFlow_cFi */
void dMsgFlow_c::setInitValue(int param_0) {
    if (param_0 != 0) {
        mFlow_p = NULL;
        mLabelInfo_p = NULL;
        mFlowNodeTBL = NULL;
        mFlowIdxTBL = NULL;
        field_0x18 = NULL;
        mMsg = fpcM_ERROR_PROCESS_ID_e;
        mMsgNo = 0;
        mNowMsgNo = 0;
    }

    mNodeIdx = -1;
    mFlow = 0;
    mSelType = SELTYPE_NONE_e;
    mSelectMessage = 0;
    field_0x25 = 0;
    field_0x26 = 0;
    field_0x27 = 0;
    field_0x30 = 0;
    mEventId = 0;
    field_0x34 = 91;
    field_0x38 = 0;
    mChoiceNo = -1;
    mTimer = 0;
    field_0x40 = 0;
    field_0x41 = 0;
    field_0x42 = -1;
    field_0x43 = -1;
    field_0x44 = -1;
    field_0x45 = -1;
    field_0x47 = 0;
}

/* 8024A618-8024A6EC 244F58 00D4+00 1/1 0/0 0/0 .text
 * setInitValueGroupChange__10dMsgFlow_cFiPP10fopAc_ac_c        */
void dMsgFlow_c::setInitValueGroupChange(int i_msgNo, fopAc_ac_c** i_talkPartners) {
    u8* labelInfoTBL = NULL;
    u16 var_r28 = i_msgNo;

    dMsgObject_changeFlowGroup(i_msgNo);
    setInitValue(0);

    mFlow_p = getMsgDataBlock("FLW1");
    JUT_ASSERT(680, 0 != mFlow_p);

    mLabelInfo_p = getMsgDataBlock("FLI1");
    JUT_ASSERT(684, 0 != mLabelInfo_p);

    labelInfoTBL = mLabelInfo_p + 0x10;

    mFlowNodeTBL = (mesg_flow*)(mFlow_p + 0x10);
    mFlowIdxTBL = (u16*)(mFlowNodeTBL + *(u16*)(mFlow_p + 8));
    field_0x18 = mFlowIdxTBL + *(u16*)(mFlow_p + 8);
    mFlow = var_r28;
    setNodeIndex(getInitNodeIndex(mFlow), i_talkPartners);
}

/* 8024A6EC-8024A784 24502C 0098+00 4/4 0/0 0/0 .text            getMsgDataBlock__10dMsgFlow_cFPCc
 */
u8* dMsgFlow_c::getMsgDataBlock(char const* block_tag) {
    u8* block_p = NULL;
    u8* aMsgRes_p = NULL;

    char tag[5] = {0};

    aMsgRes_p = dMsgObject_getMsgDtPtr();
    JUT_ASSERT(742, 0 != aMsgRes_p);

    u32 num = *(u32*)(aMsgRes_p + 0xC);
    aMsgRes_p += 0x20;

    for (u32 i = 0; i < num; i++) {
        block_p = aMsgRes_p;
        memcpy(tag, block_p, 4);

        if (strcmp(tag, block_tag) == 0) {
            return aMsgRes_p;
        }

        aMsgRes_p += *(int*)(block_p + 4);
    }

    return NULL;
}

/* 8024A784-8024A7CC 2450C4 0048+00 5/5 0/0 0/0 .text            getInitNodeIndex__10dMsgFlow_cFUs
 */
u16 dMsgFlow_c::getInitNodeIndex(u16 param_1) {
    u8* var_r30 = NULL;
    u16 var_r27 = -1;

    JUT_ASSERT(777, 0 != mLabelInfo_p);
    var_r30 = mLabelInfo_p + 0x10;

    for (int i = 0; i < *(u16*)(mLabelInfo_p + 8); i++) {
        if (*(u32*)var_r30 >> 16 == param_1) {
            var_r27 = *(u16*)(var_r30 + 4);
        }

        var_r30 += 0x8;
    }

    return var_r27;
}

/* 8024A7CC-8024A95C 24510C 0190+00 6/6 0/0 0/0 .text setNodeIndex__10dMsgFlow_cFUsPP10fopAc_ac_c
 */
void dMsgFlow_c::setNodeIndex(u16 i_nodeIdx, fopAc_ac_c** i_talkPartners) {
    msg_class* aMsg_p = NULL;
    if (mMsg != fpcM_ERROR_PROCESS_ID_e) {
        aMsg_p = fopMsgM_SearchByID(mMsg);
        JUT_ASSERT(806, 0 != aMsg_p);
    }

    if (i_nodeIdx == 0xFFFF) {
        if (aMsg_p != NULL) {
            aMsg_p->mode = 16;
        }

        dMsgObject_endFlowGroup();
        field_0x26 = 1;
    } else {
        switch (mFlowNodeTBL[i_nodeIdx].message.type) {
        case 0:
            break;
        case NODETYPE_MESSAGE_e:
            field_0x25 = 1;
            break;
        case NODETYPE_BRANCH_e:
            break;
        case NODETYPE_EVENT_e:
            mesg_flow_node_event* node = NULL;
            node = &mFlowNodeTBL[i_nodeIdx].event;

            if (node->event_idx == 21 || node->event_idx == 32 || node->event_idx == 33) {
                if (node->event_idx == 21) {
                    mTimer = getParam(node->params);
                } else {
                    u16 prm[2];
                    getParam(prm, prm + 1, node->params);
                    mTimer = prm[1] + 1;
                }

                if (aMsg_p != NULL) {
                    aMsg_p->mode = 16;
                    dMsgObject_endFlowGroup();
                }

                field_0x27 = 1;
            }

            if (node->event_idx == 9) {
                field_0x27 = 1;
            } else if (node->event_idx == 19) {
                u16 prm1;
                u16 prm0;
                getParam(&prm0, &prm1, node->params);
                field_0x38 = (u16)prm1;

                // "Speaker Set"
                OS_REPORT("\x1B[44;32m話し手セット　　　　　　　　　　　　\x1B[m|:");
                OS_REPORT("flow:%d, prm0:%d, prm1:%d\n", mFlow, prm0, prm1);

                if (i_talkPartners != NULL) {
                    dMsgObject_setTalkPartner(i_talkPartners[field_0x38]);
                }
                break;
            }
        }
    }

    mNodeIdx = i_nodeIdx;
}

/* 8024A95C-8024AA50 24529C 00F4+00 1/1 0/0 0/0 .text
 * setSelectMsg__10dMsgFlow_cFP14mesg_flow_nodeP14mesg_flow_nodeP10fopAc_ac_c */
int dMsgFlow_c::setSelectMsg(mesg_flow_node* i_flowNode_p, mesg_flow_node* param_2,
                             fopAc_ac_c* i_speaker_p) {
    u16* inf_p = NULL;
    u16 temp_r25;
    u16 msg_no;

    mesg_flow_node* var_r29 = NULL;

    inf_p = (u16*)getMsgDataBlock("INF1");

    var_r29 = param_2;
    temp_r25 = ((inf_p + (var_r29->msg_index) * 10))[10];

    var_r29 = i_flowNode_p;
    msg_no = ((inf_p + (var_r29->msg_index) * 10))[10];

    // "Message Set (Select)"
    OS_REPORT("\x1B[44;37mメッセ−ジセット（選択）　　　　　　\x1B[m|:");

#ifdef DEBUG
    if (i_speaker_p != NULL) {
        const char* speaker_name = fopAcM_getProcNameString(i_speaker_p);
        OS_REPORT("flow:%d, msg:%d(%d), speaker:%s\n", mFlow, msg_no, temp_r25, speaker_name);
    } else {
        OS_REPORT("flow:%d, msg:%d(%d), speaker:NULL\n", mFlow, msg_no, temp_r25);
    }
#endif
    
    if (mMsg != fpcM_ERROR_PROCESS_ID_e) {
        msg_class* aMsg_p = NULL;
        aMsg_p = fopMsgM_SearchByID(mMsg);
        JUT_ASSERT(944, 0 != aMsg_p);

        aMsg_p->mode = 15;
        fopMsgM_messageSet(msg_no, temp_r25);
    } else {
        if (dMeter2Info_getFloatingFlowID() == 0xFFFF) {
            mMsg = fopMsgM_messageSet(msg_no, i_speaker_p, temp_r25);
            if (mMsg == fpcM_ERROR_PROCESS_ID_e) {
                return 0;
            }

            dMsgObject_setNowTalkFlowNo(mFlow);
        }
    }

    mMsgNo = msg_no;
    field_0x41 = 1;
    return 1;
}

/* 8024AA50-8024AB30 245390 00E0+00 1/1 0/0 0/0 .text
 * setNormalMsg__10dMsgFlow_cFP14mesg_flow_nodeP10fopAc_ac_c    */
int dMsgFlow_c::setNormalMsg(mesg_flow_node* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    u16* inf_p = NULL;
    mesg_flow_node* var_r29 = NULL;
    u16 msg_no;

    var_r29 = i_flowNode_p;
    inf_p = (u16*)getMsgDataBlock("INF1");
    msg_no = ((inf_p + (var_r29->msg_index) * 10))[10];

    // "Message Set"
    OS_REPORT("\x1B[44;37mメッセ−ジセット　　　　　　　　　　\x1B[m|:");

#ifdef DEBUG
    if (i_speaker_p != NULL) {
        const char* speaker_name = fopAcM_getProcNameString(i_speaker_p);
        OS_REPORT("flow:%d, msg:%d, speaker:%s\n", mFlow, msg_no, speaker_name);
    } else {
        OS_REPORT("flow:%d, msg:%d, speaker:NULL\n", mFlow, msg_no);
    }
#endif
    
    if (mMsg != fpcM_ERROR_PROCESS_ID_e) {
        msg_class* aMsg_p = NULL;
        aMsg_p = fopMsgM_SearchByID(mMsg);
        JUT_ASSERT(1007, 0 != aMsg_p);

        aMsg_p->mode = 15;
        fopMsgM_messageSet(msg_no, 1000);
    } else {
        if (dMeter2Info_getFloatingFlowID() == 0xFFFF) {
            mMsg = fopMsgM_messageSet(msg_no, i_speaker_p, 1000);
            if (mMsg == fpcM_ERROR_PROCESS_ID_e) {
                return 0;
            }

            dMsgObject_setNowTalkFlowNo(mFlow);
        }
    }

    mMsgNo = msg_no;
    field_0x41 = 1;
    return 1;
}

/* 8024AB30-8024AD54 245470 0224+00 2/1 0/0 0/0 .text
 * messageNodeProc__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_c    */
int dMsgFlow_c::messageNodeProc(fopAc_ac_c* i_speaker_p, fopAc_ac_c** i_talkPartners) {
    mesg_flow_node* flowNode_p = NULL;
    flowNode_p = &mFlowNodeTBL[mNodeIdx].message;

    if (field_0x25 != 0) {
        if (mSelType != SELTYPE_NONE_e) {
            u16 aNextNodeIndex = flowNode_p->next_node_idx;
            JUT_ASSERT(1051, 0xFFFF != aNextNodeIndex);

            if (mSelType == SELTYPE_VERTICAL_e && mFlowNodeTBL[aNextNodeIndex].message.type == NODETYPE_MESSAGE_e) {
                JUT_ASSERT(1056, NODETYPE_MESSAGE_e == mFlowNodeTBL[aNextNodeIndex].message.type);
                if (setSelectMsg(&mFlowNodeTBL[mNodeIdx].message, &mFlowNodeTBL[aNextNodeIndex].message, i_speaker_p)) {
                    mNodeIdx = aNextNodeIndex;
                    mSelType = SELTYPE_NONE_e;
                    field_0x25 = 0;
                }
            } else if (mSelType == SELTYPE_HORIZONTAL_e && mFlowNodeTBL[aNextNodeIndex].message.type == NODETYPE_BRANCH_e) {
                if (setNormalMsg(&mFlowNodeTBL[mNodeIdx].message, i_speaker_p)) {
                    mSelType = SELTYPE_NONE_e;
                    field_0x25 = 0;
                }
            } else {
                OS_REPORT("★sel select mesg ===> %d, %d, %d\n", mSelType, aNextNodeIndex, mFlowNodeTBL[aNextNodeIndex].message.type);
                JUT_ASSERT(1077, 0);
            }
        } else {
            if (setNormalMsg(&mFlowNodeTBL[mNodeIdx].message, i_speaker_p)) {
                field_0x25 = 0;
            }
        }

        return 0;
    }

    msg_class* aMsg_p = fopMsgM_SearchByID(mMsg);
    if (aMsg_p == NULL) {
        field_0x25 = 1;
    } else {
        dComIfG_MesgCamInfo_c* aMsgCamInfo_p = dComIfGp_getMesgCameraInfo();
        if (aMsgCamInfo_p->mBasicID != field_0x34) {
            field_0x34 = aMsgCamInfo_p->mBasicID;
        }

        switch (aMsg_p->mode) {
        case 2:
            field_0x41 = 1;
            mNowMsgNo = aMsg_p->msg_idx;
            break;
        case 6:
            field_0x40 = field_0x41;

            int mesgAnimeAttrInfo = -1;
            int mesgFaceAnimeAttrInfo = -1;

            if (field_0x41 != 0) {
                mesgAnimeAttrInfo = dComIfGp_getMesgAnimeAttrInfo();
                mesgFaceAnimeAttrInfo = dComIfGp_getMesgFaceAnimeAttrInfo();
            }

            if (mesgAnimeAttrInfo >= 0x1f) {
                daPy_py_c::setMidnaMotionNum(mesgAnimeAttrInfo);
            }

            if (mesgFaceAnimeAttrInfo >= 0x1f) {
                daPy_py_c::setMidnaFaceNum(mesgFaceAnimeAttrInfo);
            }

            field_0x41 = 0;
            mNowMsgNo = aMsg_p->msg_idx;
            break;
        case 14:
        case 18:
            setNodeIndex(flowNode_p->next_node_idx, i_talkPartners);

            mesg_flow_node* var_r26 = &mFlowNodeTBL[flowNode_p->next_node_idx].message;
            if (var_r26->field_0x1 == 0x15 || var_r26->field_0x1 == 0x20 || var_r26->field_0x1 == 0x21) {
                return 0;
            }

            return 1;
        }
    }

    return 0;
}

/* 8024AD54-8024ADEC 245694 0098+00 1/1 0/0 0/0 .text
 * branchNodeProc__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_c     */
int dMsgFlow_c::branchNodeProc(fopAc_ac_c* i_speaker_p, fopAc_ac_c** i_talkPartners) {
    mesg_flow_node_branch* node = NULL;
    node = &mFlowNodeTBL[mNodeIdx].branch;
    u16 proc_status = (this->*mQueryList[node->query_idx])(node, i_speaker_p, 1);

    u16 var_r28 = node->next_node_idx + proc_status;
    setNodeIndex(mFlowIdxTBL[var_r28], i_talkPartners);
    return 1;
}

/* 8024ADEC-8024AFF8 24572C 020C+00 1/1 0/0 0/0 .text
 * eventNodeProc__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_c      */
int dMsgFlow_c::eventNodeProc(fopAc_ac_c* i_speaker_p, fopAc_ac_c** i_talkPartners) {
    mesg_flow_node_event* node = NULL;
    node = &mFlowNodeTBL[mNodeIdx].event;
    int proc_status = (this->*mEventList[node->event_idx])(node, i_speaker_p);

    switch (node->event_idx) {
    case 8:
        getParam(&mEventId, &field_0x30, node->params);
        setNodeIndex(mFlowIdxTBL[node->next_node_idx], i_talkPartners);

        if (field_0x26 != 0) {
            break;
        }

        u16 prev_idx = mNodeIdx;
        setNodeIndex(-1, i_talkPartners);
        mNodeIdx = prev_idx;
        break;
    case 9:
        if (getParam(node->params) == 0) {
            int msgNum;
            if (daAlink_getAlinkActorClass()->getMidnaMsgNum() == 0xFFFF) {
                msgNum = dStage_FileList_dt_GetMsg(dComIfGp_roomControl_getStatusRoomDt(dComIfGp_roomControl_getStayNo())->getFileListInfo());
            } else {
                msgNum = daAlink_getAlinkActorClass()->getMidnaMsgNum();
                daAlink_getAlinkActorClass()->setMidnaMsg();
            }

            setInitValueGroupChange(msgNum, i_talkPartners);
            break;
        }

        setInitValue(0);
        mFlow = getParam(node->params);
        setNodeIndex(getInitNodeIndex(mFlow), i_talkPartners);

        if (mNonStopJunpFlowFlag) {
            break;
        }

        if (dMsgObject_getMsgObjectClass()->isMidonaMessage()) {
            break;
        }

        return 0;
    case 21:
    case 32:
    case 33:
        if (mTimer != 0) {
            return 0;
        }
    default:
        setNodeIndex(mFlowIdxTBL[node->next_node_idx], i_talkPartners);
    }

    return 1;
}

/* 8024AFF8-8024B0F0 245938 00F8+00 1/1 0/0 0/0 .text
 * nodeProc__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_c           */
int dMsgFlow_c::nodeProc(fopAc_ac_c* i_speaker_p, fopAc_ac_c** i_talkPartners) {
    fopAc_ac_c* aSpeaker_p = i_speaker_p;
    int proc_status = 1;

    field_0x47 = 0;
    field_0x42 = -1;
    field_0x43 = -1;
    field_0x44 = -1;
    field_0x45 = -1;

    while (proc_status != 0 && field_0x26 == 0) {
        if (i_talkPartners != NULL) {
            aSpeaker_p = i_talkPartners[field_0x38];
        }

        u8 type = mFlowNodeTBL[mNodeIdx].message.type;
        switch (type) {
        case NODETYPE_MESSAGE_e:
            proc_status = messageNodeProc(aSpeaker_p, i_talkPartners);
            break;
        case NODETYPE_BRANCH_e:
            proc_status = branchNodeProc(aSpeaker_p, i_talkPartners);
            break;
        case NODETYPE_EVENT_e:
            proc_status = eventNodeProc(aSpeaker_p, i_talkPartners);
            break;
        case 0:
        default:
            JUT_ASSERT(1323, 0);
            break;
        }
    }

    return 0;
}

/* 8024B0F0-8024B108 245A30 0018+00 16/16 0/0 0/0 .text            getParam__10dMsgFlow_cFPUsPUsPUc
 */
int dMsgFlow_c::getParam(u16* prm0, u16* prm1, u8* params) {
    *prm0 = *(u16*)params;
    *prm1 = *(u16*)(params + 2);

    return *(int*)params;
}

/* 8024B108-8024B130 245A48 0028+00 3/3 0/0 0/0 .text            getParam__10dMsgFlow_cFPUcPUc */
int dMsgFlow_c::getParam(u8* prm0, u8* params) {
    for (int i = 0; i < 4; i++) {
        prm0[i] = params[i];
    }

    return *(int*)params;
}

/* 8024B130-8024B138 245A70 0008+00 20/20 0/0 0/0 .text            getParam__10dMsgFlow_cFPUc */
int dMsgFlow_c::getParam(u8* params) {
    return *(int*)params;
}

/* 803C184C-803C1AC8 01E96C 027C+00 2/3 0/0 0/0 .data            mQueryList__10dMsgFlow_c */
queryFunc dMsgFlow_c::mQueryList[53] = {
    &dMsgFlow_c::query005, &dMsgFlow_c::query001, &dMsgFlow_c::query002, &dMsgFlow_c::query003,
    &dMsgFlow_c::query006, &dMsgFlow_c::query007, &dMsgFlow_c::query004, &dMsgFlow_c::query008,
    &dMsgFlow_c::query009, &dMsgFlow_c::query010, &dMsgFlow_c::query011, &dMsgFlow_c::query012,
    &dMsgFlow_c::query013, &dMsgFlow_c::query014, &dMsgFlow_c::query015, &dMsgFlow_c::query016,
    &dMsgFlow_c::query017, &dMsgFlow_c::query018, &dMsgFlow_c::query019, &dMsgFlow_c::query020,
    &dMsgFlow_c::query021, &dMsgFlow_c::query022, &dMsgFlow_c::query023, &dMsgFlow_c::query024,
    &dMsgFlow_c::query025, &dMsgFlow_c::query026, &dMsgFlow_c::query027, &dMsgFlow_c::query028,
    &dMsgFlow_c::query029, &dMsgFlow_c::query030, &dMsgFlow_c::query031, &dMsgFlow_c::query032,
    &dMsgFlow_c::query033, &dMsgFlow_c::query034, &dMsgFlow_c::query035, &dMsgFlow_c::query036,
    &dMsgFlow_c::query037, &dMsgFlow_c::query038, &dMsgFlow_c::query039, &dMsgFlow_c::query040,
    &dMsgFlow_c::query041, &dMsgFlow_c::query042, &dMsgFlow_c::query043, &dMsgFlow_c::query044,
    &dMsgFlow_c::query045, &dMsgFlow_c::query046, &dMsgFlow_c::query047, &dMsgFlow_c::query048,
    &dMsgFlow_c::query049, &dMsgFlow_c::query050, &dMsgFlow_c::query051, &dMsgFlow_c::query052,
    &dMsgFlow_c::query053,
};

#ifdef DEBUG
void dMsgFlow_c::dbgPrint() {}
#endif

/* 8024B138-8024B180 245A78 0048+00 1/0 0/0 0/0 .text
 * query001__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query001(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    const u16 prm0 = i_flowNode_p->param;
    u16 ret = dComIfGs_isEventBit((u16)dSv_event_flag_c::saveBitLabels[prm0]) == false;

    if (param_2 != 0) {
        // "Flag Check"
        OS_REPORT("\x1B[44;33mフラグチェック　　　　　　　　　　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d, prm0:%d\n", mFlow, ret, prm0);
    }

    return ret;
}

/* 8024B180-8024B208 245AC0 0088+00 1/0 0/0 0/0 .text
 * query002__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query002(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    u16 ret;
    if (daPy_py_c::checkNowWolf()) {
        ret = 1;
    } else if (daPy_getPlayerActorClass()->checkHorseRide() || daPy_getPlayerActorClass()->checkBoarRide()) {
        ret = 2;
    } else {
        ret = 0;
    }

    if (param_2 != 0) {
        // "Appearance Check"
        OS_REPORT("\x1B[44;33m容姿チェック　　　　　　　　　　　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d\n", mFlow, ret);
    }

    return ret;
}

/* 8024B208-8024B250 245B48 0048+00 1/0 0/0 0/0 .text
 * query003__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query003(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    const u16 prm0 = i_flowNode_p->param;
    u16 ret = cM_rndF(prm0);

    if (param_2 != 0) {
        // "Random"
        OS_REPORT("\x1B[44;33mランダム　　　　　　　　　　　　　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d, prm0:%d\n", mFlow, ret, prm0);
    }

    return ret;
}


/* 8024B250-8024B2C0 245B90 0070+00 1/0 0/0 0/0 .text
 * query004__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query004(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    const u16 prm0 = i_flowNode_p->param;
    u16 ret;

    if (prm0 == 0) {
        ret = dComIfGs_getRupee() < dComIfGs_getRupeeMax();
    } else {
        ret = dComIfGs_getRupee() < prm0;
    }

    if (param_2 != 0) {
        // "Rupee Check"
        OS_REPORT("\x1B[44;33mルピ−チェック　　　　　　　　　　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d, prm0:%d\n", mFlow, ret, prm0);
    }

    return ret;    
}

/* 8024B2C0-8024B2F8 245C00 0038+00 2/1 1/1 1/1 .text
 * query005__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query005(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    msg_class* aMsg_p = fopMsgM_SearchByID(mMsg);
    JUT_ASSERT(1668, 0 != aMsg_p);

    u16 ret = aMsg_p->select_idx;
    mChoiceNo = ret;

    if (param_2 != 0) {
        // "Two-way Branch"
        OS_REPORT("\x1B[44;33m二択分岐　　　　　　　　　　　　　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d\n", mFlow, ret);
    }

    return ret;
}

/* 8024B2F8-8024B32C 245C38 0034+00 1/0 0/0 0/0 .text
 * query006__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query006(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    u16 ret = query005(i_flowNode_p, i_speaker_p, 0);
    mChoiceNo = ret;

    if (param_2 != 0) {
        // "Three-way Branch"
        OS_REPORT("\x1B[44;33m三択分岐　　　　　　　　　　　　　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d\n", mFlow, ret);
    }

    return ret;
}

/* 8024B32C-8024B45C 245C6C 0130+00 1/0 0/0 0/0 .text
 * query007__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query007(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    const u16 prm0 = i_flowNode_p->param;
    u16 ret;

    cXyz player_attention_pos(daPy_getPlayerActorClass()->attention_info.position);
    player_attention_pos.y -= daPy_py_c::getAttentionOffsetY();

    cSGlobe sp10(i_speaker_p->attention_info.position - player_attention_pos);
    s16 attention_angle = sp10.U() - fopAcM_GetShapeAngle_p(daPy_getPlayerActorClass())->y;

    u8 speak_dist = i_speaker_p->attention_info.distances[fopAc_attn_SPEAK_e];
    f32 max_dist = dComIfGp_getAttention().getDistTable(speak_dist).mDistMaxRelease;
    if (prm0 != 0) {
        max_dist = prm0;
    }

    ret = dComIfGp_getAttention().checkDistance(
        &player_attention_pos, attention_angle, &i_speaker_p->attention_info.position, max_dist,
        dComIfGp_getAttention().getDistTable(speak_dist).mDistanceAdjust,
        dComIfGp_getAttention().getDistTable(speak_dist).mUpperY,
        dComIfGp_getAttention().getDistTable(speak_dist).mLowerY);

    if (param_2 != 0) {
        // "Conversation Distance Branch"
        OS_REPORT("\x1B[44;33m会話距離分岐　　　　　　　　　　　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d, prm0:%d\n", mFlow, ret, prm0);
    }

    return ret;
}

/* 8024B45C-8024B4A4 245D9C 0048+00 1/0 0/0 0/0 .text
 * query008__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query008(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    const u16 prm0 = i_flowNode_p->param;
    u16 ret = daNpcKakashi_getSwdTutorialStep() - 1 != prm0;

    if (param_2 != 0) {
        // "Sword Action Branch"
        OS_REPORT("\x1B[44;33m剣アクション分岐　　　　　　　　　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d, prm0:%d\n", mFlow, ret, prm0);
    }

    return ret;
}

/* 8024B4A4-8024B4D0 245DE4 002C+00 1/0 0/0 0/0 .text
 * query009__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query009(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    u16 ret = daNpcKakashi_getSwdTutorialResult() == FALSE;

    if (param_2 != 0) {
        // "Sword Action success judge"
        OS_REPORT("\x1B[44;33m剣アクション成功判定　　　　　　　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d\n", mFlow, ret);
    }

    return ret;
}

/* 8024B4D0-8024B504 245E10 0034+00 1/0 0/0 0/0 .text
 * query010__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query010(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    u16 ret = daNpcKakashi_getSuccessCount() != 1;

    if (param_2 != 0) {
        // "Sword Action count branch"
        OS_REPORT("\x1B[44;33m剣アクション回数分岐　　　　　　　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d\n", mFlow, ret);
    }

    return ret;
}

/* 8024B504-8024B54C 245E44 0048+00 1/0 0/0 0/0 .text
 * query011__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query011(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    const u16 prm0 = i_flowNode_p->param;
    u16 ret = dComIfGs_isTmpBit((u16)dSv_event_tmp_flag_c::tempBitLabels[prm0]) == FALSE;

    if (param_2 != 0) {
        // "Temporary Flag Check"
        OS_REPORT("\x1B[44;33m一時フラグチェック　　　　　　　　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d, prm0:%d\n", mFlow, ret, prm0);
    }

    return ret;
}

/* 8024B54C-8024B584 245E8C 0038+00 1/0 0/0 0/0 .text
 * query012__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query012(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    const int prm0 = i_flowNode_p->param;
    u16 ret = dComIfGs_isTbox(prm0) == FALSE;

    if (param_2 != 0) {
        // "(Save) Treasure Chest Bit Check"
        OS_REPORT("\x1B[44;33m（セ−ブ）宝箱ビットチェック　　　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d, prm0:%d\n", mFlow, ret, prm0);
    }

    return ret;
}

/* 8024B584-8024B5BC 245EC4 0038+00 1/0 0/0 0/0 .text
 * query013__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query013(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    const int prm0 = i_flowNode_p->param;
    u16 ret = dComIfGs_isSaveSwitch(prm0) == FALSE;

    if (param_2 != 0) {
        // "(Save) Switch Bit Check"
        OS_REPORT("\x1B[44;33m（セ−ブ）スイッチビットチェック　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d, prm0:%d\n", mFlow, ret, prm0);
    }

    return ret;
}

/* 8024B5BC-8024B5F4 245EFC 0038+00 1/0 0/0 0/0 .text
 * query014__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query014(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    const int prm0 = i_flowNode_p->param;
    u16 ret = dComIfGs_isSaveItem(prm0) == FALSE;

    if (param_2 != 0) {
        // "(Save) Item Bit Check"
        OS_REPORT("\x1B[44;33m（セ−ブ）アイテムビットチェック　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d, prm0:%d\n", mFlow, ret, prm0);
    }

    return ret;
}

/* 8024B5F4-8024B62C 245F34 0038+00 1/0 0/0 0/0 .text
 * query015__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query015(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    const int prm0 = i_flowNode_p->param;
    u16 ret = dComIfGs_isSaveDunSwitch(prm0) == FALSE;

    if (param_2 != 0) {
        // "(Dungeon) Switch Bit Check"
        OS_REPORT("\x1B[44;33m（ダンジョン）スイッチビットチェック\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d, prm0:%d\n", mFlow, ret, prm0);
    }

    return ret;
}

/* 8024B62C-8024B664 245F6C 0038+00 1/0 0/0 0/0 .text
 * query016__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query016(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    const int prm0 = i_flowNode_p->param;
    u16 ret = dComIfGs_isSaveDunItem(prm0) == FALSE;

    if (param_2 != 0) {
        // "(Dungeon) Item Bit Check"
        OS_REPORT("\x1B[44;33m（ダンジョン）アイテムビットチェック\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d, prm0:%d\n", mFlow, ret, prm0);
    }

    return ret;
}

/* 8024B664-8024B6A8 245FA4 0044+00 1/0 0/0 0/0 .text
 * query017__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query017(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    const int prm0 = i_flowNode_p->param;
    int roomNo = -1;
    
    if (i_speaker_p != NULL) {
        roomNo = fopAcM_GetRoomNo(i_speaker_p);
    }
    
    u16 ret = dComIfGs_isZoneSwitch(prm0, roomNo) == FALSE;

    if (param_2 != 0) {
        // "(Zone) Switch Bit Check"
        OS_REPORT("\x1B[44;33m（ゾ−ン）スイッチビットチェック　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d, prm0:%d\n", mFlow, ret, prm0);
    }

    return ret;
}

/* 8024B6A8-8024B6EC 245FE8 0044+00 1/0 0/0 0/0 .text
 * query018__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query018(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    const int prm0 = i_flowNode_p->param;
    int roomNo = -1;
    
    if (i_speaker_p != NULL) {
        roomNo = fopAcM_GetRoomNo(i_speaker_p);
    }
    
    u16 ret = dComIfGs_isZoneItem(prm0, roomNo) == FALSE;

    if (param_2 != 0) {
        // "(Zone) Item Bit Check"
        OS_REPORT("\x1B[44;33m（ゾ−ン）アイテムビットチェック　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d, prm0:%d\n", mFlow, ret, prm0);
    }

    return ret;
}

/* 8024B6EC-8024B730 24602C 0044+00 1/0 0/0 0/0 .text
 * query019__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query019(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    const int prm0 = i_flowNode_p->param;
    int roomNo = -1;
    
    if (i_speaker_p != NULL) {
        roomNo = fopAcM_GetRoomNo(i_speaker_p);
    }
    
    u16 ret = dComIfGs_isOneZoneSwitch(prm0, roomNo) == FALSE;

    if (param_2 != 0) {
        // "(One Zone) Switch Bit Check"
        OS_REPORT("\x1B[44;33m（ワンゾ−ン）スイッチビットチェック\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d, prm0:%d\n", mFlow, ret, prm0);
    }

    return ret;
}

/* 8024B730-8024B774 246070 0044+00 1/0 0/0 0/0 .text
 * query020__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query020(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    const int prm0 = i_flowNode_p->param;
    int roomNo = -1;
    
    if (i_speaker_p != NULL) {
        roomNo = fopAcM_GetRoomNo(i_speaker_p);
    }
    
    u16 ret = dComIfGs_isOneZoneItem(prm0, roomNo) == FALSE;

    if (param_2 != 0) {
        // "(One Zone) Item Bit Check"
        OS_REPORT("\x1B[44;33m（ワンゾ−ン）アイテムビットチェック\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d, prm0:%d\n", mFlow, ret, prm0);
    }

    return ret;
}

/* 8024B774-8024B8E4 2460B4 0170+00 1/0 0/0 0/0 .text
 * query021__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query021(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    const u8 prm0 = i_flowNode_p->param;
    u16 ret = 0;

    switch (prm0) {
    case fpcNm_ITEM_SWORD:
    case fpcNm_ITEM_MASTER_SWORD:
    case fpcNm_ITEM_LIGHT_SWORD:
        if (dComIfGs_getSelectEquipSword() == prm0) {
            ret = 1;
        }
        break;
    case fpcNm_ITEM_WOOD_SHIELD:
    case fpcNm_ITEM_SHIELD:
    case fpcNm_ITEM_HYLIA_SHIELD:
        if (dComIfGs_getSelectEquipShield() == prm0) {
            ret = 1;
        }
        break;
    case fpcNm_ITEM_WEAR_KOKIRI:
    case fpcNm_ITEM_ARMOR:
    case fpcNm_ITEM_WEAR_ZORA:
        if (dComIfGs_getSelectEquipClothes() == prm0) {
            ret = 1;
        }
        break;
    default:
        if (dComIfGs_getItem(dComIfGs_getSelectItemIndex(0), true) == prm0 ||
            dComIfGs_getItem(dComIfGs_getSelectItemIndex(1), true) == prm0 ||
            dComIfGs_getItem(dComIfGs_getSelectItemIndex(2), true) == prm0
#if (PLATFORM_WII || PLATFORM_SHIELD)
            || dComIfGs_getItem(dComIfGs_getSelectItemIndex(3), true) == prm0
#endif
           )
        {
            ret = 1;
        }
    }

    if (param_2 != 0) {
        // "Equipment Check"
        OS_REPORT("\x1B[44;33m装備チェック　　　　　　　　　　　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d, prm0:%d\n", mFlow, ret, prm0);
    }

    return ret;
}

/* 8024B8E4-8024B918 246224 0034+00 1/0 0/0 0/0 .text
 * query022__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query022(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    const u8 prm0 = i_flowNode_p->param;
    u16 ret = checkItemGet(prm0 & 0xFF, 1) ? 0 : 1;

    if (param_2 != 0) {
        // "Get Check"
        OS_REPORT("\x1B[44;33m所持チェック　　　　　　　　　　　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d, prm0:%d\n", mFlow, ret, prm0);
    }

    return ret;
}

/* 8024B918-8024B954 246258 003C+00 1/0 0/0 0/0 .text
 * query023__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query023(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    const u8 prm0 = i_flowNode_p->param;
    int i_bagNum = 3 - dComIfGs_checkBombBag(fpcNm_ITEM_NONE);
    JUT_ASSERT(2312, i_bagNum >= 0);

    u16 ret = i_bagNum;

    if (param_2 != 0) {
        // "Bomb Bag Count Check"
        OS_REPORT("\x1B[44;33mボム袋数チェック　　　　　　　　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d, prm0:%d\n", mFlow, ret, prm0);
    }

    return ret;
}

/* 8024B954-8024B974 246294 0020+00 1/0 0/0 0/0 .text
 * query024__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query024(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    const u8 prm0 = i_flowNode_p->param;
    u16 ret = dComIfGs_getArrowNum() >= prm0 ? 0 : 1;

    if (param_2 != 0) {
        // "Normal Arrow Count Check"
        OS_REPORT("\x1B[44;33mノ−マル矢数チェック　　　　　　　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d, prm0:%d, arrow(%d/%d)\n", mFlow, ret, prm0, dComIfGs_getArrowNum(), dComIfGs_getArrowMax());
    }

    return ret;
}

/* 8024B974-8024B9BC 2462B4 0048+00 1/0 0/0 0/0 .text
 * query025__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query025(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    const u8 prm0 = i_flowNode_p->param;
    u16 ret = dComIfGs_checkEmptyBottle() >= prm0 ? 0 : 1;

    if (param_2 != 0) {
        // "Empty Bottle Count Check"
        OS_REPORT("\x1B[44;33m空きビン数チェック　　　　　　　　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d, prm0:%d\n", mFlow, ret, prm0);
    }

    return ret;
}

/* 8024B9BC-8024B9E8 2462FC 002C+00 1/0 0/0 0/0 .text
 * query026__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query026(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    dShopSystem_c* shop_ac = (dShopSystem_c*)i_speaker_p;
    const int prm0 = i_flowNode_p->param;
    u16 ret = shop_ac->isFlag(7);

    if (param_2 != 0) {
        // "Shop Conversation Check"
        OS_REPORT("\x1B[44;33m店員会話チェック　　　　　　　　　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d, prm0:%d\n", mFlow, ret, prm0);
    }

    return ret;
}

/* 8024B9E8-8024BA4C 246328 0064+00 1/0 0/0 0/0 .text
 * query027__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query027(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    u8 prm0 = i_flowNode_p->param & 0xFF;
    if (prm0 == 0) {
        prm0 = dComIfGp_getNeedLightDropNum() & 0xFF;
    }

    u16 ret = dComIfGs_getLightDropNum(dComIfGp_getStartStageDarkArea()) >= prm0 ? 0 : 1;

    if (param_2 != 0) {
        // "Light Drop Check"
        OS_REPORT("\x1B[44;33m光の雫チェック　　　　　　　　　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d, prm0:%d  ( %d / %d)\n", mFlow, ret, prm0, dComIfGs_getLightDropNum(dComIfGp_getStartStageDarkArea()), dComIfGp_getNeedLightDropNum());
    }

    return ret;
}

/* 8024BA4C-8024BAA0 24638C 0054+00 1/0 0/0 0/0 .text
 * query028__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query028(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    const u16 prm0 = i_flowNode_p->param;
    u16 ret = dMeter2Info_getTimeMs() <= prm0 * 1000 + 999 ? 0 : 1;

    dMeter2Info_setMsgTimeMs(dMeter2Info_getTimeMs() <= prm0 * 1000 + 999 ?
                             (prm0 * 1000 + 999) - dMeter2Info_getTimeMs() :
                             (dMeter2Info_getTimeMs() - prm0 * 1000) + 999);

    if (param_2 != 0) {
        // "Goat-Herd Time Check"
        OS_REPORT("\x1B[44;33m:牛追いタイム分岐　　　　　　　　　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d, prm0:%d  time:%dms\n", mFlow, ret, prm0, dMeter2Info_getTimeMs());
    }

    return ret;
}

/* 8024BAA0-8024BAE0 2463E0 0040+00 1/0 0/0 0/0 .text
 * query029__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query029(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    u8 ret = 1;
    if (dComIfGs_getOil() == 0 || dComIfGs_getMaxOil() == 0) {
        ret = 2;
    } else if (dComIfGs_getOil() == dComIfGs_getMaxOil()) {
        ret = 0;
    }

    if (param_2 != 0) {
        // "Lantern Content Check"
        OS_REPORT("\x1B[44;33m:カンテラの中身チェック　　　　　　　　　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d\n", mFlow, ret);
    }

    return ret;
}

/* 8024BAE0-8024BB18 246420 0038+00 1/0 0/0 0/0 .text
 * query030__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query030(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    u8 ret = dComIfGs_getTmpReg(0xFBFF);

    if (param_2 != 0) {
        // "Register Branch (5)"
        OS_REPORT("\x1B[44;33m:レジスタ分岐（５）　　　　　　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d\n", mFlow, ret);
    }

    return ret;
}

/* 8024BB18-8024BB74 246458 005C+00 1/0 0/0 0/0 .text
 * query031__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query031(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    const int prm0 = i_flowNode_p->param;
    int reg = dComIfGs_getEventReg(0xFF1F);
    u8 ret = 1;

    reg = 20 - reg;
    if (prm0 <= reg) {
        ret = 0;
    } else {
        ret = 1;
    }

    if (param_2 != 0) {
        // "Runaway Goat Remaining Check"
        OS_REPORT("\x1B[44;33m:暴走山羊残りチェック  　　　　　\x1B[m|:");
        OS_REPORT("flow:%d, param:%d, ret:%d\n", mFlow, prm0, ret);
    }

    return ret;
}

/* 8024BB74-8024BB9C 2464B4 0028+00 1/0 0/0 0/0 .text
 * query032__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query032(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    const int prm0 = i_flowNode_p->param;

    u8 ret = 1;
    if (dComIfGs_getLife() >= prm0) {
        ret = 0;
    }

    if (param_2 != 0) {
        // "Life Check"
        OS_REPORT("\x1B[44;33m:体力チェック　　　　　　　　　　\x1B[m|:");
        OS_REPORT("flow:%d, param:%d, ret:%d\n", mFlow, prm0, ret);
    }

    return ret;
}

/* 8024BB9C-8024BBE4 2464DC 0048+00 1/0 0/0 0/0 .text
 * query033__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query033(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    u8 ret = 1;
    if (daPy_getPlayerActorClass()->checkUseKandelaar(1)) {
        ret = 0;
    } else {
        ret = 1;
    }

    if (param_2 != 0) {
        // "Lantern Hold Check"
        OS_REPORT("\x1B[44;33m:カンテラもっているかチェック　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d\n", mFlow, ret);
    }

    return ret;
}

/* 8024BBE4-8024BC14 246524 0030+00 1/0 0/0 0/0 .text
 * query034__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query034(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    u8 ret = 0;
    ret = (int)(dComIfGs_getTime() * (1.0f / 15.0f)) & 0xFF;

    if (param_2 != 0) {
        // "Time Check"
        OS_REPORT("\x1B[44;33m:時間チェック　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d, TIME:%d\n", mFlow, ret, (int)(dComIfGs_getTime() * (1.0f / 15.0f)));
    }

    return ret;
}

/* 8024BC14-8024BC3C 246554 0028+00 1/0 0/0 0/0 .text
 * query035__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query035(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    const int prm0 = i_flowNode_p->param;
    u8 ret = 0;
    if (dComIfGs_getMagic() < prm0) {
        ret = 1;
    }

    if (param_2 != 0) {
        // "Magic Check"
        OS_REPORT("\x1B[44;33m:魔法力チェック　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d,  param:%d\n", mFlow, ret, prm0);
    }

    return ret;
}

/* 8024BC3C-8024BC80 24657C 0044+00 1/0 0/0 0/0 .text
 * query036__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query036(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    msg_class* aMsg_p = fopMsgM_SearchByID(mMsg);
    JUT_ASSERT(2751, 0 != aMsg_p);

    u16 ret = aMsg_p->select_idx;
    if (dMsgObject_getMsgObjectClass()->getSelectPushFlag() == 2) {
        ret = 2;
    }

    if (param_2 != 0) {
        // "2 Choice Branch (B enabled)"
        OS_REPORT("\x1B[44;33m:２択分岐（Ｂ対応）　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d\n", mFlow, ret);
    }

    return ret;
}

/* 8024BC80-8024BCC4 2465C0 0044+00 1/0 0/0 0/0 .text
 * query037__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query037(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    msg_class* aMsg_p = fopMsgM_SearchByID(mMsg);
    JUT_ASSERT(2789, 0 != aMsg_p);

    u16 ret = aMsg_p->select_idx;
    if (dMsgObject_getMsgObjectClass()->getSelectPushFlag() == 2) {
        ret = 3;
    }

    if (param_2 != 0) {
        // "3 Choice Branch (B enabled)"
        OS_REPORT("\x1B[44;33m:３択分岐（Ｂ対応）　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d:%d\n", mFlow, ret);
    }

    return ret;
}

/* 8024BCC4-8024BDB0 246604 00EC+00 1/0 0/0 0/0 .text
 * query038__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query038(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    const int prm0 = i_flowNode_p->param;

    u8 BombBag;
    if (prm0 >= 1 && prm0 < 4) {
        BombBag = prm0 - 1;
    } else if (prm0 == 4) {
        if (dMeter2Info_getRentalBombBag() != 0xFF) {
            BombBag = dMeter2Info_getRentalBombBag();
        }
    } else {
        BombBag = dComIfGs_getTmpReg(0xFBFF) - 1;
    }

    u8 ret = 0;
    switch(dComIfGs_getItem((u8)(BombBag + SLOT_15), false)) {
    case fpcNm_ITEM_NORMAL_BOMB:
        ret = 1;
        break;
    case fpcNm_ITEM_WATER_BOMB:
        ret = 2;
        break;
    case fpcNm_ITEM_POKE_BOMB:
        ret = 3;
        break;
    }

    dMsgObject_setEquipBombInfo();

    if (param_2 != 0) {
        // "Bomb Bag contents Check"
        OS_REPORT("\x1B[44;33m:ボム袋中身チェック　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d,  param:%d, BombBag:%d\n", mFlow, ret, prm0, BombBag);
    }

    return ret;
} 

/* 8024BDB0-8024BE4C 2466F0 009C+00 1/0 0/0 0/0 .text
 * query039__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query039(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    const int prm0 = i_flowNode_p->param;

    u8 BombBag = dComIfGs_getTmpReg(0xFBFF) - 1;
    u8 BombNum = dComIfGs_getBombNum(BombBag);
    u8 BombMax = dComIfGs_getBombMax(fpcNm_ITEM_NORMAL_BOMB);

    u8 ret = 0;
    if (BombMax < BombNum + prm0) {
        ret = 0;
    } else {
        ret = 1;
    }

    if (param_2 != 0) {
        // "Normal Bomb over MAX Check"
        OS_REPORT("\x1B[44;33m:通常爆弾ＭＡＸ超えチェック　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d,  param:%d, BombBag:%d, BombNum:%d, BombMax:%d\n", mFlow, ret, prm0, BombBag, BombNum, BombMax);
    }

    return ret;
}

/* 8024BE4C-8024BF50 24678C 0104+00 1/0 0/0 0/0 .text
 * query040__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query040(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    const int prm0 = i_flowNode_p->param;

    u8 BombBag;
    if (prm0 >= 1 && prm0 < 4) {
        BombBag = prm0 - 1;
    } else if (prm0 == 4) {
        if (dMeter2Info_getRentalBombBag() != 0xFF) {
            BombBag = dMeter2Info_getRentalBombBag();
        }
    } else {
        BombBag = dComIfGs_getTmpReg(0xFBFF) - 1;
    }

    u8 BombNum = dComIfGs_getBombNum(BombBag);
    u8 BombType = dComIfGs_getItem((u8)(BombBag + SLOT_15), false);
    u8 BombMax = dComIfGs_getBombMax(BombType);

    u8 ret = 0;
    if (BombNum == 0) {
        ret = 0;
    } else if (BombNum >= BombMax) {
        ret = 2;
    } else {
        ret = 1;
    }
    
    if (param_2 != 0) {
        // "Bomb contents count Check"
        OS_REPORT("\x1B[44;33m:ボム袋中身個数チェック　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d,  param:%d, BombBag:%d\n", mFlow, ret, prm0, BombBag);
    }

    return ret;
}

/* 8024BF50-8024BFEC 246890 009C+00 1/0 0/0 0/0 .text
 * query041__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query041(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    const int prm0 = i_flowNode_p->param;

    u8 BombBag = dComIfGs_getTmpReg(0xFBFF) - 1;
    u8 BombNum = dComIfGs_getBombNum(BombBag);
    u8 BombMax = dComIfGs_getBombMax(fpcNm_ITEM_WATER_BOMB);

    u8 ret = 0;
    if (BombMax < BombNum + prm0) {
        ret = 0;
    } else {
        ret = 1;
    }

    if (param_2 != 0) {
        // "Water Bomb over MAX Check"
        OS_REPORT("\x1B[44;33m:水中爆弾ＭＡＸ超えチェック　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d,  param:%d, BombBag:%d, BombNum:%d, BombMax:%d\n", mFlow, ret, prm0, BombBag, BombNum, BombMax);
    }

    return ret;
}

/* 8024BFEC-8024C0A8 24692C 00BC+00 1/0 0/0 0/0 .text
 * query042__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query042(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    daMidna_c* midna_p = daPy_py_c::getMidnaActor();

    u8 ret = 0;
    if (strcmp("F_SP116", dComIfGp_getStartStageName()) == 0 && dComIfGs_isSaveDunSwitch(60)) {
        ret = 4;
    } else if (midna_p->checkNpcNear()) {
        ret = 1;
    } else if (midna_p->checkNpcFar()) {
        ret = 2;
    } else if (g_env_light.mEvilInitialized & 0x80) {
        ret = 3;
    }

    if (param_2 != 0) {
        // "Transform Range Check"
        OS_REPORT("\x1B[44;33m:変身可能範囲チェック　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d\n", mFlow, ret);
    }

    return ret;
}

/* 8024C0A8-8024C144 2469E8 009C+00 1/0 0/0 0/0 .text
 * query043__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query043(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    const int prm0 = i_flowNode_p->param;
    u8 BombBag = dComIfGs_getTmpReg(0xFBFF) - 1;
    u8 BombNum = dComIfGs_getBombNum(BombBag);
    u8 BombMax = dComIfGs_getBombMax(fpcNm_ITEM_POKE_BOMB);

    u8 ret = 0;
    if (BombMax < BombNum + prm0) {
        ret = 0;
    } else {
        ret = 1;
    }

    if (param_2 != 0) {
        // "Poke Bug over MAX"
        OS_REPORT("\x1B[44;33m:ポケ虫ＭＡＸ超える　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d\n", mFlow, ret);
    }

    return ret;
}

/* 8024C144-8024C18C 246A84 0048+00 1/0 0/0 0/0 .text
 * query044__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query044(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    u8 ret;
    if (daAlink_getAlinkActorClass()->checkAcceptDungeonWarpAlink(0)) {
        ret = 0;
    } else {
        ret = 1;
    }

    if (param_2 != 0) {
        // "Possible Warp Area"
        OS_REPORT("\x1B[44;33m:ワープ可能エリア　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d\n", mFlow, ret);
    }

    return ret;
}

/* 8024C18C-8024C218 246ACC 008C+00 1/0 0/0 0/0 .text
 * query045__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query045(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    u8 insectNum = dComIfGs_checkGetInsectNum();
    u8 ret = 0;
    if (insectNum == 0) {
        ret = 0;
    } else if (insectNum >= 1 && insectNum <= 11) {
        ret = 1;
    } else if (insectNum >= 12 && insectNum <= 22) {
        ret = 2;
    } else if (insectNum == 23) {
        ret = 3;
    } else if (insectNum == 24) {
        ret = 4;
    }

    if (param_2 != 0) {
        // "Captured Insect"
        OS_REPORT("\x1B[44;33m:捕獲した虫　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d\n", mFlow, ret);
    }

    return ret;
}

/* 8024C218-8024C248 246B58 0030+00 1/0 0/0 0/0 .text
 * query046__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query046(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    u8 ret = dComIfGs_checkInsectBottle();

    if (param_2 != 0) {
        // "Insect Bottle Check"
        OS_REPORT("\x1B[44;33m:虫入りビンチェック　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d\n", mFlow, ret);
    }

    return ret;
}

/* 8024C248-8024C250 246B88 0008+00 1/0 0/0 0/0 .text
 * query047__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query047(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    u8 ret = 0;

    if (param_2 != 0) {
        // "Landmine over MAX (Missing Num)"
        OS_REPORT("\x1B[44;33m:地雷ＭＡＸ超える（欠番）　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d\n", mFlow, ret);
    }

    JUT_ASSERT(3305, 0);
    return ret;
}

/* 8024C250-8024C2A0 246B90 0050+00 1/0 0/0 0/0 .text
 * query048__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query048(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    u8 ret = dMeter2Info_getNewLetterNum();

    if (ret > 2) {
        ret = 2;
    }

    if (ret == 1) {
        dMeter2Info_setNewLetterSender();
    }

    if (param_2 != 0) {
        // "Letter Number Check"
        OS_REPORT("\x1B[44;33m:手紙の数チェック　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d\n", mFlow, ret);
    }

    return ret;
}

/* 8024C2A0-8024C2FC 246BE0 005C+00 1/0 0/0 0/0 .text
 * query049__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query049(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    u8 num = dComIfGs_getPohSpiritNum();

    u8 ret = 0;
    if (num == 0) {
        ret = 0;
    } else if (num <= 19)  {
        ret = 1;
    } else if (num <= 39) {
        ret = 2;
    } else if (num <= 59) {
        ret = 3;
    } else {
        ret = 4;
    }

    if (param_2 != 0) {
        // "Collected Souls count"
        OS_REPORT("\x1B[44;33m:集めた魂の数　　\x1B[m|:");
        OS_REPORT("flow:%d, num:%d, ret:%d\n", mFlow, num, ret);
    }

    return ret;
}

/* 8024C2FC-8024C340 246C3C 0044+00 1/0 0/0 0/0 .text
 * query050__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query050(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    const int num = i_flowNode_p->param;
    u8 ret;
    if (num <= dMsgObject_getOffering()) {
        ret = 0;
    } else {
        ret = 1;
    }

    if (param_2 != 0) {
        // "Offering Total Amount"
        OS_REPORT("\x1B[44;33m:お布施総額　　\x1B[m|:");
        OS_REPORT("flow:%d, num:%d, ret:%d\n", mFlow, num, ret);
    }

    return ret;
}

/* 8024C340-8024C3A0 246C80 0060+00 1/0 0/0 0/0 .text
 * query051__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query051(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    int num = dComIfGp_getMessageCountNumber();
    u8 ret;
    if (num == 0) {
        ret = 0;
    } else if (num < 1000) {
        ret = 1;
    } else if (num < 10000) {
        ret = 2;
    } else if (num < 0xF00E) {
        ret = 3;
    } else {
        ret = 4;
    }

    if (param_2 != 0) {
        // "Balloon Break Score"
        OS_REPORT("\x1B[44;33m:風船割りの点数　　\x1B[m|:");
        OS_REPORT("flow:%d, num:%d, ret:%d\n", mFlow, num, ret);
    }

    return ret;
}

/* 8024C3A0-8024C3D4 246CE0 0034+00 1/0 0/0 0/0 .text
 * query052__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query052(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    u8 ret = 0;
    if (daPy_getPlayerActorClass()->checkWaterInMove() || dComIfGp_checkPlayerStatus0(0, 0x100000)) {
        ret = 1;
    }

    if (param_2 != 0) {
        // "In-Water Check"
        OS_REPORT("\x1B[44;33m:水中チェック　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d\n", mFlow, ret);
    }

    return ret;
}

/* 8024C3D4-8024C3FC 246D14 0028+00 1/0 0/0 0/0 .text
 * query053__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci */
u16 dMsgFlow_c::query053(mesg_flow_node_branch* i_flowNode_p, fopAc_ac_c* i_speaker_p, int param_2) {
    u8 ret = 0;
    if (daPy_getPlayerActorClass()->checkEquipHeavyBoots()) {
        ret = 1;
    }

    if (param_2 != 0) {
        // "Wearing Iron Boots Check"
        OS_REPORT("\x1B[44;33m:アイアンブーツ履いているかチェック　　\x1B[m|:");
        OS_REPORT("flow:%d, ret:%d\n", mFlow, ret);
    }

    return ret;
}

/* 803C1CCC-803C1ED0 01EDEC 0204+00 1/2 0/0 0/0 .data            mEventList__10dMsgFlow_c */
eventFunc dMsgFlow_c::mEventList[43] = {
    &dMsgFlow_c::event000, &dMsgFlow_c::event001, &dMsgFlow_c::event002, &dMsgFlow_c::event003,
    &dMsgFlow_c::event004, &dMsgFlow_c::event005, &dMsgFlow_c::event006, &dMsgFlow_c::event007,
    &dMsgFlow_c::event008, &dMsgFlow_c::event009, &dMsgFlow_c::event010, &dMsgFlow_c::event011,
    &dMsgFlow_c::event012, &dMsgFlow_c::event013, &dMsgFlow_c::event014, &dMsgFlow_c::event015,
    &dMsgFlow_c::event016, &dMsgFlow_c::event017, &dMsgFlow_c::event018, &dMsgFlow_c::event019,
    &dMsgFlow_c::event020, &dMsgFlow_c::event021, &dMsgFlow_c::event022, &dMsgFlow_c::event023,
    &dMsgFlow_c::event024, &dMsgFlow_c::event025, &dMsgFlow_c::event026, &dMsgFlow_c::event027,
    &dMsgFlow_c::event028, &dMsgFlow_c::event029, &dMsgFlow_c::event030, &dMsgFlow_c::event031,
    &dMsgFlow_c::event032, &dMsgFlow_c::event033, &dMsgFlow_c::event034, &dMsgFlow_c::event035,
    &dMsgFlow_c::event036, &dMsgFlow_c::event037, &dMsgFlow_c::event038, &dMsgFlow_c::event039,
    &dMsgFlow_c::event040, &dMsgFlow_c::event041, &dMsgFlow_c::event042,
};

/* 8024C3FC-8024C488 246D3C 008C+00 1/0 0/0 0/0 .text
 * event000__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event000(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    u16 prm1;
    u16 prm0;
    getParam(&prm0, &prm1, i_flowNode_p->params);

    // "Event Flag ON"
    OS_REPORT("\x1B[44;32mイベントフラグＯＮ　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, prm0:%d, prm1:%d\n", mFlow, prm0, prm1);

    if (prm0 != 0) {
        dComIfGs_onEventBit((u16)dSv_event_flag_c::saveBitLabels[prm0]);
    }

    if (prm1 != 0) {
        dComIfGs_onEventBit((u16)dSv_event_flag_c::saveBitLabels[prm1]);
    }

    return 1;
}

/* 8024C488-8024C514 246DC8 008C+00 1/0 0/0 0/0 .text
 * event001__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event001(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    u16 prm1;
    u16 prm0;
    getParam(&prm0, &prm1, i_flowNode_p->params);

    OS_REPORT("\x1B[44;32mイベントフラグＯＦＦ　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, prm0:%d, prm1:%d\n", mFlow, prm0, prm1);

    if (prm0 != 0) {
        dComIfGs_offEventBit((u16)dSv_event_flag_c::saveBitLabels[prm0]);
    }

    if (prm1 != 0) {
        dComIfGs_offEventBit((u16)dSv_event_flag_c::saveBitLabels[prm1]);
    }

    return 1;
}

/* 8024C514-8024C550 246E54 003C+00 1/0 0/0 0/0 .text
 * event002__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event002(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    int prm0 = getParam(i_flowNode_p->params);
    dComIfGp_setItemRupeeCount(prm0);

    // "Rupee Increase"
    OS_REPORT("\x1B[44;32mルピ−増　　　　　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, prm0:%d\n", mFlow, prm0);

    return 1;
}

/* 8024C550-8024C590 246E90 0040+00 1/0 0/0 0/0 .text
 * event003__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event003(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    int prm0 = getParam(i_flowNode_p->params);
    dComIfGp_setItemRupeeCount(-prm0);

    // "Rupee Decrease"
    OS_REPORT("\x1B[44;32mルピ−減　　　　　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, prm0:%d\n", mFlow, prm0);

    return 1;
}

/* 8024C590-8024C5F0 246ED0 0060+00 1/0 0/0 0/0 .text
 * event004__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event004(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    f32 prm0 = getParam(i_flowNode_p->params);
    dComIfGp_setItemLifeCount(prm0, 0);

    // "Heart Increase"
    OS_REPORT("\x1B[44;32mハ−ト増　　　　　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, prm0:%f\n", mFlow, prm0);

    return 1;
}

/* 8024C5F0-8024C654 246F30 0064+00 1/0 0/0 0/0 .text
 * event005__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event005(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    f32 prm0 = getParam(i_flowNode_p->params);
    dComIfGp_setItemLifeCount((f32)-prm0, 0);

    // "Heart Decrease"
    OS_REPORT("\x1B[44;32mハ−ト減　　　　　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, prm0:%f\n", mFlow, prm0);

    return 1;
}

/* 8024C654-8024C694 246F94 0040+00 1/0 0/0 0/0 .text
 * event006__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event006(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    int prm0 = getParam(i_flowNode_p->params);
    dComIfGp_setItemMagicCount(prm0);

    // "MP Increase"
    OS_REPORT("\x1B[44;32mＭＰ増　　　　　　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, prm0:%d\n", mFlow, prm0);

    return 1;
}

/* 8024C694-8024C6D8 246FD4 0044+00 1/0 0/0 0/0 .text
 * event007__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event007(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    int prm0 = getParam(i_flowNode_p->params);
    dComIfGp_setItemMagicCount(-prm0);

    // "MP Decrease"
    OS_REPORT("\x1B[44;32mＭＰ減　　　　　　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, prm0:%d\n", mFlow, prm0);

    return 1;
}

/* 8024C6D8-8024C744 247018 006C+00 1/0 0/0 0/0 .text
 * event008__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event008(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    u16 prm1;
    u16 prm0;
    getParam(&prm0, &prm1, i_flowNode_p->params);

    if (prm0 == 27) {
        int remaining = 2000 - dMsgObject_getFundRaising();
        if (remaining >= 200) {
            dMsgObject_setFundRaising(0);
        } else {
            dMsgObject_setFundRaising(200 - remaining);
        }
    }

    // "Event Start"
    OS_REPORT("\x1B[44;32mイベント開始　　　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, prm0:%d, prm1:%d\n", mFlow, prm0, prm1);

    return 1;
}

/* 8024C744-8024C76C 247084 0028+00 1/0 0/0 0/0 .text
 * event009__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event009(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    u16 prm0 = getParam(i_flowNode_p->params);

    // "Flow Jump"
    OS_REPORT("\x1B[44;32mフロ−ジャンプ　　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, prm0:%d\n", mFlow, prm0);

    return 1;
}

/* 8024C76C-8024C7F8 2470AC 008C+00 1/0 0/0 0/0 .text
 * event010__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event010(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    u16 prm1;
    u16 prm0;
    getParam(&prm0, &prm1, i_flowNode_p->params);

    // "Temporary Flag ON"
    OS_REPORT("\x1B[44;32m一時フラグＯＮ　　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, prm0:%d, prm1:%d\n", mFlow, prm0, prm1);

    if (prm0 != 0) {
        dComIfGs_onTmpBit((u16)dSv_event_tmp_flag_c::tempBitLabels[prm0]);
    }

    if (prm1 != 0) {
        dComIfGs_onTmpBit((u16)dSv_event_tmp_flag_c::tempBitLabels[prm1]);
    }

    return 1;
}

/* 8024C7F8-8024C884 247138 008C+00 1/0 0/0 0/0 .text
 * event011__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event011(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    u16 prm1;
    u16 prm0;
    getParam(&prm0, &prm1, i_flowNode_p->params);

    // "Temporary Flag OFF"
    OS_REPORT("\x1B[44;32m一時フラグＯＦＦ　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, prm0:%d, prm1:%d\n", mFlow, prm0, prm1);

    if (prm0 != 0) {
        dComIfGs_offTmpBit((u16)dSv_event_tmp_flag_c::tempBitLabels[prm0]);
    }

    if (prm1 != 0) {
        dComIfGs_offTmpBit((u16)dSv_event_tmp_flag_c::tempBitLabels[prm1]);
    }

    return 1;
}

/* 8024C884-8024C88C 2471C4 0008+00 1/0 0/0 0/0 .text
 * event012__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event012(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    // "Door OPEN"
    OS_REPORT("\x1B[44;32mドアＯＰＥＮ　　　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d\n", mFlow);

    return 1;
}

/* 8024C88C-8024C8CC 2471CC 0040+00 1/0 0/0 0/0 .text
 * event013__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event013(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    mSelType = SELTYPE_VERTICAL_e;
    mSelectMessage = 1;
    field_0x25 = 1;

    int prm0 = getParam(i_flowNode_p->params);

    OS_REPORT("\x1B[44;32mＳＥＬＥＣＴ　　　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, prm0:%d\n", mFlow, prm0);

    dMsgObject_setSelectCancelPos(prm0);
    return 1;
}

/* 8024C8CC-8024C994 24720C 00C8+00 1/0 0/0 0/0 .text
 * event014__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event014(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    u16 prm1;
    u16 prm0;
    getParam(&prm0, &prm1, i_flowNode_p->params);

    // "Switch Bit ON"
    OS_REPORT("\x1B[44;32mスイッチビットＯＮ　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, prm0:%d, prm1:%d\n", mFlow, prm0, prm1);

    int roomNo = -1;
    if (i_speaker_p != NULL) {
        roomNo = fopAcM_GetRoomNo(i_speaker_p);
    }

    switch (prm0) {
    case 0:
        dComIfGs_onSaveSwitch(prm1);
        break;
    case 1:
        dComIfGs_onSaveDunSwitch(prm1);
        break;
    case 2:
        dComIfGs_onZoneSwitch(prm1, roomNo);
        break;
    case 3:
        dComIfGs_onOneZoneSwitch(prm1, roomNo);
        break;
    }

    return 1;
}

/* 8024C994-8024CA5C 2472D4 00C8+00 1/0 0/0 0/0 .text
 * event015__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event015(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    u16 prm1;
    u16 prm0;
    getParam(&prm0, &prm1, i_flowNode_p->params);

    // "Switch Bit OFF"
    OS_REPORT("\x1B[44;32mスイッチビットＯＦＦ　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, prm0:%d, prm1:%d\n", mFlow, prm0, prm1);

    int roomNo = -1;
    if (i_speaker_p != NULL) {
        roomNo = fopAcM_GetRoomNo(i_speaker_p);
    }

    switch (prm0) {
    case 0:
        dComIfGs_offSaveSwitch(prm1);
        break;
    case 1:
        dComIfGs_offSaveDunSwitch(prm1);
        break;
    case 2:
        dComIfGs_offZoneSwitch(prm1, roomNo);
        break;
    case 3:
        dComIfGs_offOneZoneSwitch(prm1, roomNo);
        break;
    }

    return 1;
}

/* 8024CA5C-8024CA94 24739C 0038+00 1/0 0/0 0/0 .text
 * event016__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event016(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    dShopSystem_c* shop = (dShopSystem_c*)i_speaker_p;
    shop->setEventParam(*(u32*)i_flowNode_p->params);

    u8 prm[4];
    getParam(prm, i_flowNode_p->params);

    // "Item Selection Start"
    OS_REPORT("\x1B[44;32m商品選択開始　　　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, prm0:%d, prm1:%d, prm2:%d, prm3:%d\n", mFlow, prm[0], prm[1], prm[2], prm[3]);

    return 1;
}

/* 8024CA94-8024CBB0 2473D4 011C+00 1/0 0/0 0/0 .text
 * event017__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event017(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    u16 prm1;
    u16 prm0;
    getParam(&prm0, &prm1, i_flowNode_p->params);

    // "Item Set"
    OS_REPORT("\x1B[44;32mアイテムセット　　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, prm0:%d, prm1:%d\n", mFlow, prm0, prm1);

    if (prm1 <= 1) {
        switch (prm0) {
        case fpcNm_ITEM_DROP_CONTAINER:
            dMeter2Info_setLightDropGetFlag(0, 1);
            dComIfGs_onLightDropGetFlag(0);
            break;
        case fpcNm_ITEM_DROP_CONTAINER02:
            dMeter2Info_setLightDropGetFlag(1, 1);
            dComIfGs_onLightDropGetFlag(1);
            break;
        case fpcNm_ITEM_DROP_CONTAINER03:
            dMeter2Info_setLightDropGetFlag(2, 1);
            dComIfGs_onLightDropGetFlag(2);
            break;
        default:
            execItemGet(prm0);
        }

        return 1;
    }

    for (int i = 0; i < prm1; i++) {
        execItemGet(prm0);
    }

    return 1;
}

/* 8024CBB0-8024CCA4 2474F0 00F4+00 1/0 0/0 0/0 .text
 * event018__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event018(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    u8 prm[4];
    getParam(prm, i_flowNode_p->params);

    field_0x47 = 1;
    field_0x42 = prm[0];
    field_0x43 = prm[1];
    field_0x44 = prm[2];
    field_0x45 = prm[3];

    if (i_speaker_p != NULL) {
        if (dComIfGp_roomControl_getStayNo() != 0) {
            s8 reverb = dComIfGp_getReverb(dComIfGp_roomControl_getStayNo());
            mDoAud_messageSePlay(field_0x45, &i_speaker_p->current.pos, reverb);
        } else {
            mDoAud_messageSePlay(field_0x45, &i_speaker_p->current.pos, 0);
        }
    } else {
        if (dComIfGp_roomControl_getStayNo() != 0) {
            s8 reverb = dComIfGp_getReverb(dComIfGp_roomControl_getStayNo());
            mDoAud_messageSePlay(field_0x45, NULL, reverb);
        } else {
            mDoAud_messageSePlay(field_0x45, NULL, 0);
        }
    }

    // "Event Direction"
    OS_REPORT("\x1B[44;32mイベント演出　　　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, prm0:%d, prm1:%d, prm2:%d, prm3:%d\n", mFlow, field_0x42, field_0x43, field_0x44, field_0x45);

    return 1;
}

/* 8024CCA4-8024CCAC 2475E4 0008+00 1/0 0/0 0/0 .text
 * event019__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event019(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    return 1;
}

/* 8024CCAC-8024CD84 2475EC 00D8+00 1/0 0/0 0/0 .text
 * event020__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event020(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    int prm0 = getParam(i_flowNode_p->params);
    daPy_py_c* player = daPy_getPlayerActorClass();
    dStage_roomDt_c* room = dComIfGp_roomControl_getStatusRoomDt(fopAcM_GetRoomNo(i_speaker_p));
    stage_actor_data_class* actor_data = room->getPlayer()->m_entries;

    for (int i = 0; i < room->getPlayerNum(); i++, actor_data++) {
        if ((u8)actor_data->base.angle.z == prm0) {
            player->setPlayerPosAndAngle(&actor_data->base.position, player->current.angle.y, 0);
            break;
        }
    }

    // "Player Warp"
    OS_REPORT("\x1B[44;32mプレイヤ−ワ−プ　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, prm0:%d\n", mFlow, prm0);

    return 1;
}

/* 8024CD84-8024CDAC 2476C4 0028+00 1/0 0/0 0/0 .text
 * event021__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event021(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    cLib_calcTimer(&mTimer);

    // "WAIT"
    OS_REPORT("\x1B[44;32mＷＡＩＴ　　　　　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, prm0:%d\n", mFlow, mTimer);

    return 1;
}

/* 8024CDAC-8024CE40 2476EC 0094+00 1/0 0/0 0/0 .text
 * event022__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event022(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    int prm0 = getParam(i_flowNode_p->params);
    if (prm0 == 0) {
        prm0 = 100;
    }

    f32 var_f31 = prm0 / 100.0f;
    s32 oilCount = dComIfGs_getMaxOil() * var_f31;
    dComIfGp_setItemOilCount(oilCount);

    // "Lantern Supply"
    OS_REPORT("\x1B[44;32mカンテラ補給　　　　　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, prm0:%d\n", mFlow, prm0);

    return 1;
}

/* 8024CE40-8024CF2C 247780 00EC+00 2/0 0/0 0/0 .text
 * event023__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event023(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    int prm0 = getParam(i_flowNode_p->params);

    switch (prm0) {
    case 1:
        dComIfGs_setEmptyBottleItemIn(fpcNm_ITEM_RED_BOTTLE);
        break;
    case 2:
        dComIfGs_setEmptyBottleItemIn(fpcNm_ITEM_GREEN_BOTTLE);
        break;
    case 3:
        dComIfGs_setEmptyBottleItemIn(fpcNm_ITEM_BLUE_BOTTLE);
        break;
    case 4:
        dComIfGs_setEmptyBottleItemIn(fpcNm_ITEM_MILK_BOTTLE);
        break;
    case 5:
        dComIfGs_setEmptyBottleItemIn(fpcNm_ITEM_HALF_MILK_BOTTLE);
        break;
    case 6:
        dComIfGs_setEmptyBottleItemIn(fpcNm_ITEM_OIL_BOTTLE);
        break;
    case 7:
        dComIfGs_setEmptyBottleItemIn(fpcNm_ITEM_HOT_SPRING);
        break;
    }

    // "Bottle Content Set"
    OS_REPORT("\x1B[44;32mビンの中身セット　　　　　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, prm0:%d\n", mFlow, prm0);

    return 1;
}

/* 8024CF2C-8024CF54 24786C 0028+00 1/0 0/0 0/0 .text
 * event024__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event024(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    dShopSystem_c* shop = (dShopSystem_c*)i_speaker_p;
    shop->setSoldOutFlag();

    // "Sold Out"
    OS_REPORT("\x1B[44;32m売り切れ　　　　　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d\n", mFlow);

    return 1;
}

/* 8024CF54-8024CF9C 247894 0048+00 1/0 0/0 0/0 .text
 * event025__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event025(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    int prm0 = getParam(i_flowNode_p->params);
    u8 value = prm0 & 0xFF;
    dComIfGs_setTmpReg(0xFBFF, value);

    // "Register Set"
    OS_REPORT("\x1B[44;32mレジスタセット　　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, prm0:%d\n", mFlow, prm0);

    return 1;
}

/* 8024CF9C-8024D004 2478DC 0068+00 1/0 0/0 0/0 .text
 * event026__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event026(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    fopAc_ac_c* speaker_p;
    if (fopAcM_GetName(i_speaker_p) == PROC_MYNA) {
        daMyna_c* myna = (daMyna_c*)i_speaker_p;
        speaker_p = myna->getSpeakActorPtr();
    } else {
        speaker_p = i_speaker_p;
    }

    if (speaker_p != NULL) {
        if (fopAcM_GetName(speaker_p) == PROC_OBJ_SSITEM ||
            fopAcM_GetName(speaker_p) == PROC_OBJ_SSDRINK ||
            fopAcM_GetName(speaker_p) == PROC_TAG_SSDRINK)
        {
            daObj_SSBase_c* ss_item = (daObj_SSBase_c*)speaker_p;
            ss_item->setSoldOut();
        }
    }

    // "Buying from unanttended tent"
    OS_REPORT("\x1B[44;32m無人テント購入　　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d\n", mFlow);

    return 1;
}

/* 8024D004-8024D3C4 247944 03C0+00 2/0 0/0 0/0 .text
 * event027__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event027(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    u16 prm1;
    u16 prm0;
    getParam(&prm0, &prm1, i_flowNode_p->params);

    u8 aParam8[2];
    getParam(aParam8, i_flowNode_p->params);

    JUT_ASSERT(4509, (aParam8[0] >= 0 && aParam8[0] <= dSv_player_item_c::BOMB_BAG_MAX) || (aParam8[0] == 4));

    u8 BombBag;
    if (aParam8[0] >= 1 && aParam8[0] < 4) {
        BombBag = aParam8[0] - 1;
    } else if (aParam8[0] == 4) {
        if (dMeter2Info_getRentalBombBag() != 0xFF) {
            BombBag = dMeter2Info_getRentalBombBag();
        }
    } else {
        BombBag = dComIfGs_getTmpReg(0xFBFF) - 1;
    }

    switch (aParam8[1]) {
    case 0:
        if (dComIfGs_getItem((u8)(SLOT_15 + BombBag), false) == fpcNm_ITEM_BOMB_BAG_LV1) {
            dComIfGs_setItem((u8)(SLOT_15 + BombBag), fpcNm_ITEM_NORMAL_BOMB);
        }

        if (prm1 != 0) {
            dComIfGp_setItemBombNumCount(BombBag, (u8)prm1);
        } else {
            dComIfGp_setItemBombNumCount(BombBag, dComIfGs_getBombMax(fpcNm_ITEM_NORMAL_BOMB));
        }
        break;
    case 1:
        if (dComIfGs_getItem((u8)(SLOT_15 + BombBag), false) == fpcNm_ITEM_BOMB_BAG_LV1) {
            dComIfGs_setItem((u8)(SLOT_15 + BombBag), fpcNm_ITEM_WATER_BOMB);
        }

        if (prm1 != 0) {
            dComIfGp_setItemBombNumCount(BombBag, (u8)prm1);
        } else {
            dComIfGp_setItemBombNumCount(BombBag, dComIfGs_getBombMax(fpcNm_ITEM_WATER_BOMB));
        }
        break;
    case 2:
        if (dComIfGs_getItem((u8)(SLOT_15 + BombBag), false) == fpcNm_ITEM_BOMB_BAG_LV1) {
            dComIfGs_setItem((u8)(SLOT_15 + BombBag), fpcNm_ITEM_POKE_BOMB);
        }

        if (prm1 != 0) {
            dComIfGp_setItemBombNumCount(BombBag, (u8)prm1);
        } else {
            dComIfGp_setItemBombNumCount(BombBag, dComIfGs_getBombMax(fpcNm_ITEM_POKE_BOMB));
        }
        break;
    case 3:
        break;
    case 4:
    case 5:
        dComIfGp_setItemBombNumCount(BombBag, (u8)prm1);
        break;
    case 6:
        dComIfGs_setItem((u8)(SLOT_15 + BombBag), fpcNm_ITEM_NORMAL_BOMB);
        dComIfGp_setItemBombNumCount(BombBag, dComIfGs_getBombMax(fpcNm_ITEM_NORMAL_BOMB));
        break;
    case 7:
        dComIfGs_setItem((u8)(SLOT_15 + BombBag), fpcNm_ITEM_WATER_BOMB);
        dComIfGp_setItemBombNumCount(BombBag, dComIfGs_getBombMax(fpcNm_ITEM_WATER_BOMB));
        break;
    case 8:
        dComIfGs_setItem((u8)(SLOT_15 + BombBag), fpcNm_ITEM_POKE_BOMB);
        dComIfGp_setItemBombNumCount(BombBag, dComIfGs_getBombMax(fpcNm_ITEM_POKE_BOMB));
        break;
    case 9:
    case 10:
    case 11:
        break;
    }

    // "Bomb Supply"
    OS_REPORT("\x1B[44;32m爆弾補給　　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, prm0:%d, prm1:%d, prm2:%d, BombBag:%d\n", mFlow, aParam8[0], aParam8[1], prm1, BombBag);
 
    return 1;
}

/* 8024D3C4-8024D500 247D04 013C+00 1/0 0/0 0/0 .text
 * event028__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
// NONMATCHING regalloc
int dMsgFlow_c::event028(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    u8 pos = dComIfGs_getTmpReg(0xFBFF) - 1;
    dMsgObject_c::setSelectCursorPos(pos);
    u8 BombBag = dMsgObject_c::getSelectBombBagID();
    s16 BombPrice = dMsgObject_c::getSelectBombPrice();

    dComIfGp_setItemRupeeCount(BombPrice);
    dComIfGs_setBombNum(BombBag, 0);

    if (dComIfGs_getItem((u8)(SLOT_15 + BombBag), true) != fpcNm_ITEM_BOMB_ARROW) {
        dComIfGs_setItem((u8)(SLOT_15 + BombBag), fpcNm_ITEM_BOMB_BAG_LV1);
    } else {
        for (int i = 0; i < 3; i++) {
            if (SLOT_15 + BombBag == dComIfGs_getSelectItemIndex(i)) {
                u8 mix_item = dComIfGs_getMixItemIndex(i);

                dComIfGs_setMixItemIndex(i, fpcNm_ITEM_NONE);
                dComIfGs_setSelectItemIndex(i, mix_item);
                dComIfGp_setSelectItem(i);
            }
        }

        dComIfGs_setItem((u8)(SLOT_15 + BombBag), fpcNm_ITEM_BOMB_BAG_LV1);
    }

    // "Bomb Purchase"
    OS_REPORT("\x1B[44;32m爆弾買取　　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, BombBag:%d\n", mFlow, BombBag);

    return 1;
}

/* 8024D500-8024D544 247E40 0044+00 1/0 0/0 0/0 .text
 * event029__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event029(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    mSelType = SELTYPE_HORIZONTAL_e;
    mSelectMessage = 1;
    field_0x25 = 1;

    int prm0 = getParam(i_flowNode_p->params);

    // "Horizontal SELECT"
    OS_REPORT("\x1B[44;32m横ＳＥＬＥＣＴ　　　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, prm0:%d\n", mFlow, prm0);

    dMsgObject_c::setSelectCancelPos(prm0);
    return 1;
}

/* 8024D544-8024D5BC 247E84 0078+00 1/0 0/0 0/0 .text
 * event030__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event030(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    u16 prm1;
    u16 prm0;
    getParam(&prm0, &prm1, i_flowNode_p->params);

    s16 arrow = prm1;
    if (arrow == 0) {
        arrow = dComIfGs_getArrowMax();
    }

    if (prm0 == 0) {
        dComIfGp_setItemArrowNumCount(arrow);
    } else {
        dMsgObject_c::setArrowNum(arrow);
    }

    // "Arrow Supply"
    OS_REPORT("\x1B[44;32m矢補給　　　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, prm0:%d, prm1:%d, arrow:%d\n", mFlow, prm0, prm1, arrow);

    return 1;
}

/* 8024D5BC-8024D5EC 247EFC 0030+00 1/0 0/0 0/0 .text
 * event031__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event031(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    dMeter2Info_resetMiniGameItem(false);

    // "Rental Bomb Return"
    OS_REPORT("\x1B[44;32mレンタル爆弾返却　　　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d\n", mFlow);

    return 1;
}

/* 8024D5EC-8024D6BC 247F2C 00D0+00 1/0 0/0 0/0 .text
 * event032__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event032(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    u16 prm1;
    u16 prm0;
    GXColor color;

    getParam(&prm0, &prm1, i_flowNode_p->params);

    if (prm1 + 1 == mTimer) {
        if (prm0 == 0) {
            color.r = 0;
            color.g = 0;
            color.b = 0;
            color.a = 0;
        } else {
            color = g_saftyWhiteColor;
        }

        mDoGph_gInf_c::fadeIn(1.0f / prm1, color);
    }

    cLib_calcTimer(&mTimer);

    // "Fade-In"
    OS_REPORT("\x1B[44;32mフェ−ドイン　　　　　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, prm0:%d\n", mFlow, mTimer);

    return 1;
}

/* 8024D6BC-8024D788 247FFC 00CC+00 1/0 0/0 0/0 .text
 * event033__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event033(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    u16 prm1;
    u16 prm0;
    GXColor color;

    getParam(&prm0, &prm1, i_flowNode_p->params);

    if (prm1 + 1 == mTimer) {
        if (prm0 == 0) {
            color.r = 0;
            color.g = 0;
            color.b = 0;
            color.a = 0;
        } else {
            color = g_saftyWhiteColor;
        }

        mDoGph_gInf_c::fadeOut(1.0f / prm1, color);
    }

    cLib_calcTimer(&mTimer);

    // "Fade-Out"
    OS_REPORT("\x1B[44;32mフェ−ドアウト　　　　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, prm0:%d\n", mFlow, mTimer);

    return 1;
}

/* 8024D788-8024D7C8 2480C8 0040+00 1/0 0/0 0/0 .text
 * event034__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event034(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    int prm0 = getParam(i_flowNode_p->params);
    dComIfGs_setWarashibeItem(prm0);

    // "Trade Item Set"
    OS_REPORT("\x1B[44;32mわらしべセット　　　　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, prm0:%d\n", mFlow, prm0);

    return 1;
}

/* 8024D7C8-8024D870 248108 00A8+00 1/0 0/0 0/0 .text
 * event035__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event035(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    int prm0 = getParam(i_flowNode_p->params);

    if (prm0 == fpcNm_ITEM_TOMATO_PUREE || prm0 == fpcNm_ITEM_TASTE) {
        dComIfGs_offItemFirstBit(prm0);
    } else if (prm0 == fpcNm_ITEM_RAFRELS_MEMO || prm0 == fpcNm_ITEM_ASHS_SCRIBBLING) {
        dComIfGs_setItem(SLOT_19, fpcNm_ITEM_NONE);
    } else if (prm0 == fpcNm_ITEM_LETTER || prm0 == fpcNm_ITEM_BILL || prm0 == fpcNm_ITEM_WOOD_STATUE || prm0 == fpcNm_ITEM_IRIAS_PENDANT) {
        dComIfGs_setWarashibeItem(fpcNm_ITEM_NONE);
    }

    // "Item Remove"
    OS_REPORT("\x1B[44;32mアイテム削除　　　　　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, prm0:%d\n", mFlow, prm0);

    return 1;
}

/* 8024D870-8024D8C4 2481B0 0054+00 1/0 0/0 0/0 .text
 * event036__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event036(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    u16 prm1;
    u16 prm0;
    getParam(&prm0, &prm1, i_flowNode_p->params);

    dComIfGs_onSaveSwitch(prm0, prm1);

    // "Save Bit ON"
    OS_REPORT("\x1B[44;32mセーブビットＯＮ　　　　　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, prm0:%d, prm1:%d\n", mFlow, prm0, prm1);

    return 1;
}

/* 8024D8C4-8024D918 248204 0054+00 1/0 0/0 0/0 .text
 * event037__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event037(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    u16 prm1;
    u16 prm0;
    getParam(&prm0, &prm1, i_flowNode_p->params);

    dComIfGs_offSaveSwitch(prm0, prm1);

    // "Save Bit OFF"
    OS_REPORT("\x1B[44;32mセーブビットＯＦＦ　　　　　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, prm0:%d, prm1:%d\n", mFlow, prm0, prm1);

    return 1;
}

/* 8024D918-8024D93C 248258 0024+00 1/0 0/0 0/0 .text
 * event038__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event038(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    dMeter2Info_recieveLetter();

    // "Mail Receive"
    OS_REPORT("\x1B[44;32mメール受信　　　　　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d\n", mFlow);

    return 1;
}

/* 8024D93C-8024D970 24827C 0034+00 1/0 0/0 0/0 .text
 * event039__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event039(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    int prm0 = getParam(i_flowNode_p->params);
    dMeter2Info_setTableMapRegionNo(prm0);

    // "Resistance Map"
    OS_REPORT("\x1B[44;32mレジスタンスの地図　　　　　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, prm0:%d\n", mFlow, prm0);

    return 1;
}

/* 8024D970-8024DA78 2482B0 0108+00 2/0 0/0 0/0 .text
 * event040__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event040(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    int prm0 = getParam(i_flowNode_p->params);

    switch (prm0) {
    case 0:
        break;
    case 1:
        dComIfGs_setBottleItemIn(fpcNm_ITEM_RED_BOTTLE, fpcNm_ITEM_EMPTY_BOTTLE);
        break;
    case 2:
        dComIfGs_setBottleItemIn(fpcNm_ITEM_GREEN_BOTTLE, fpcNm_ITEM_EMPTY_BOTTLE);
        break;
    case 3:
        dComIfGs_setBottleItemIn(fpcNm_ITEM_BLUE_BOTTLE, fpcNm_ITEM_EMPTY_BOTTLE);
        break;
    case 4:
        dComIfGs_setBottleItemIn(fpcNm_ITEM_MILK_BOTTLE, fpcNm_ITEM_EMPTY_BOTTLE);
        break;
    case 5:
        dComIfGs_setBottleItemIn(fpcNm_ITEM_HALF_MILK_BOTTLE, fpcNm_ITEM_EMPTY_BOTTLE);
        break;
    case 6:
        dComIfGs_setBottleItemIn(fpcNm_ITEM_OIL_BOTTLE, fpcNm_ITEM_EMPTY_BOTTLE);
        break;
    case 7:
        dComIfGs_setBottleItemIn(fpcNm_ITEM_HOT_SPRING, fpcNm_ITEM_EMPTY_BOTTLE);
        break;
    }

    // "Bottle Contents Remove"
    OS_REPORT("\x1B[44;32mビンの中身削除　　　　　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, prm0:%d\n", mFlow, prm0);

    return 1;
}

/* 8024DA78-8024DAA8 2483B8 0030+00 1/0 0/0 0/0 .text
 * event041__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event041(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    int prm0 = getParam(i_flowNode_p->params);
    dMsgObject_addOffering(prm0);

    // "Offering"
    OS_REPORT("\x1B[44;32mお布施　　　　　　　　　　　　　　\x1B[m|:");
    OS_REPORT("flow:%d, prm0:%d\n", mFlow, prm0);

    return 1;
}

/* 8024DAA8-8024DAB0 2483E8 0008+00 1/0 0/0 0/0 .text
 * event042__10dMsgFlow_cFP20mesg_flow_node_eventP10fopAc_ac_c  */
int dMsgFlow_c::event042(mesg_flow_node_event* i_flowNode_p, fopAc_ac_c* i_speaker_p) {
    return 1;
}
