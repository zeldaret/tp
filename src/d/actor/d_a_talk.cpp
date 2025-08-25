/**
 * @file d_a_talk.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_talk.h"
#include "d/d_msg_object.h"
#include "f_op/f_op_msg_mng.h"

//
// Forward References:
//

//
// External References:
//

//
// Declarations:
//

/* 80D66378-80D663E4 000078 006C+00 1/1 0/0 0/0 .text            __dt__8daTalk_cFv */
daTalk_c::~daTalk_c() {
    dMsgObject_getMsgObjectClass()->setProcessID(-1);
}

/* 80D663E4-80D664AC 0000E4 00C8+00 1/1 0/0 0/0 .text            create__8daTalk_cFv */
int daTalk_c::create() {
    fopAcM_SetupActor(this, daTalk_c);

    if (getStatus() != 1) {
        return cPhs_ERROR_e;
    }

    attention_info = dMsgObject_getMsgObjectClass()->getpTalkActor()->attention_info;
    mMessageID = -1;
    return cPhs_COMPLEATE_e;
}

/* 80D664AC-80D6665C 0001AC 01B0+00 1/1 0/0 0/0 .text            execute__8daTalk_cFv */
int daTalk_c::execute() {
    dComIfG_inf_c& dcomif = g_dComIfG_gameInfo;
    if (dcomif.play.getEvent().runCheck()) {
        if (!eventInfo.checkCommandTalk()) {
            fopAcM_delete(this);
        }
    } else {
        if (fopAcM_searchPlayerDistanceXZ(this) >
            dAttention_c::getDistTable(attention_info.distances[fopAc_attn_TALK_e]).mDistMaxRelease)
        {
            mMessageID = -1;
            fopAcM_delete(this);
        } else {
            eventInfo.onCondition(dEvtCnd_CANTALK_e);
        }
    }

    if (eventInfo.checkCommandTalk()) {
        if (dMsgObject_getMsgObjectClass()->getNodeIdx() == 0xFF) {
            if (mMessageID == -1) {
                mMessageID = messageSet();
            } else if (getStatus() == 14) {
                setStatus(16);
            } else if (getStatus() == 18) {
                dcomif.play.getEvent().reset();
                setStatus(19);
                mMessageID = -1;
                fopAcM_delete(this);
            }
        } else if (mMessageID == -1) {
            mMsgFlow.init(this, dMsgObject_getMsgObjectClass()->getNodeIdx(), 0, NULL);
            mMessageID = 2;
        } else if (mMsgFlow.doFlow(dMsgObject_getMsgObjectClass()->getpTalkActor(), NULL, 0)) {
            dcomif.play.getEvent().reset();
            mMessageID = -1;
            fopAcM_delete(this);
        }
    }

    return 1;
}

/* 80D6665C-80D66664 00035C 0008+00 1/1 0/0 0/0 .text            draw__8daTalk_cFv */
int daTalk_c::draw() {
    return 1;
}

/* 80D66664-80D66688 000364 0024+00 1/1 0/0 0/0 .text            setStatus__8daTalk_cFUs */
void daTalk_c::setStatus(u16 i_status) {
    dMsgObject_getMsgObjectClass()->setStatus(i_status);
}

/* 80D66688-80D666A8 000388 0020+00 2/2 0/0 0/0 .text            getStatus__8daTalk_cFv */
u16 daTalk_c::getStatus() {
    return dMsgObject_getMsgObjectClass()->getStatus();
}

/* 80D666A8-80D666E4 0003A8 003C+00 1/1 0/0 0/0 .text            messageSet__8daTalk_cFv */
u32 daTalk_c::messageSet() {
    return fopMsgM_messageSet(dMsgObject_getMsgObjectClass()->getIdx(),
                              dMsgObject_getMsgObjectClass()->getpTalkActor(), 1000);
}

/* 80D666E4-80D66704 0003E4 0020+00 1/0 0/0 0/0 .text            daTalk_Create__FP10fopAc_ac_c */
static int daTalk_Create(fopAc_ac_c* i_this) {
    return static_cast<daTalk_c*>(i_this)->create();
}

/* 80D66704-80D6672C 000404 0028+00 1/0 0/0 0/0 .text            daTalk_Delete__FP8daTalk_c */
static int daTalk_Delete(daTalk_c* i_this) {
    i_this->~daTalk_c();
    return 1;
}

/* 80D6672C-80D6674C 00042C 0020+00 1/0 0/0 0/0 .text            daTalk_Execute__FP8daTalk_c */
static int daTalk_Execute(daTalk_c* i_this) {
    return i_this->execute();
}

/* 80D6674C-80D6676C 00044C 0020+00 1/0 0/0 0/0 .text            daTalk_Draw__FP8daTalk_c */
static int daTalk_Draw(daTalk_c* i_this) {
    return i_this->draw();
}

/* ############################################################################################## */
/* 80D66774-80D66794 -00001 0020+00 1/0 0/0 0/0 .data            l_daTalk_Method */
static actor_method_class l_daTalk_Method = {
    (process_method_func)daTalk_Create,  (process_method_func)daTalk_Delete,
    (process_method_func)daTalk_Execute, (process_method_func)NULL,
    (process_method_func)daTalk_Draw,
};

/* 80D66794-80D667C4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_TALK */
extern actor_process_profile_definition g_profile_TALK = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_TALK,
    &g_fpcLf_Method.base,
    sizeof(daTalk_c),
    0,
    0,
    &g_fopAc_Method.base,
    766,
    &l_daTalk_Method,
    0x44000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_6_e,
};
