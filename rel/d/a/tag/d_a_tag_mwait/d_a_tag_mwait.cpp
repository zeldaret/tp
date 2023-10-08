/**
 * d_a_tag_mwait.cpp
 * Midna Wait Trigger
 */

#include "rel/d/a/tag/d_a_tag_mwait/d_a_tag_mwait.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "d/a/d_a_alink.h"
#include "d/com/d_com_inf_game.h"
#include "d/d_procname.h"

/* 80D5BE18-80D5BFFC 000078 01E4+00 1/1 0/0 0/0 .text            create__12daTagMwait_cFv */
int daTagMwait_c::create() {
    fopAcM_SetupActor(this, daTagMwait_c);

    mEnterSw = fopAcM_GetParam(this) >> 8;

    if (i_fopAcM_isSwitch(this, mEnterSw)) {
        return cPhs_ERROR_e;
    }

    mOnSw = fopAcM_GetParam(this);

    u32 prm = (fopAcM_GetParam(this) >> 0x10) & 0xFF;
    if (prm == 0 || prm == 0xFF) {
        field_0x570 = -1.0f;
    } else {
        field_0x570 = prm * prm * 100.0f;
    }

    mWarpToPos = shape_angle.x & 0xF;
    if (mWarpToPos >= 2) {
        mWarpToPos = 0;
    }

    field_0x56d = (shape_angle.x >> 4) & 0xF;
    if (field_0x56d >= 2) {
        field_0x56d = 0;
    }

    mScale *= 100.0f;

    u32 wait_y_offset = (fopAcM_GetParam(this) >> 0x18) & 0xFF;
    if (wait_y_offset == 0 || wait_y_offset == 0xFF) {
        wait_y_offset = 0;
    }

    mWaitPosition.set(current.pos.x, current.pos.y + (wait_y_offset * 10.0f), current.pos.z);
    mAttentionInfo.mPosition.set(mWaitPosition.x, mWaitPosition.y + 220.0f, mWaitPosition.z);
    mEyePos.set(mWaitPosition.x, mWaitPosition.y + 150.0f, mWaitPosition.z);

    mAttentionInfo.field_0x0[1] = 54;
    mAttentionInfo.mFlags = 0;
    return cPhs_COMPLEATE_e;
}

/* 80D5BFFC-80D5C01C 00025C 0020+00 1/0 0/0 0/0 .text            daTagMwait_Create__FP10fopAc_ac_c
 */
static int daTagMwait_Create(fopAc_ac_c* i_this) {
    return static_cast<daTagMwait_c*>(i_this)->create();
}

/* 80D5C01C-80D5C080 00027C 0064+00 1/1 0/0 0/0 .text            __dt__12daTagMwait_cFv */
daTagMwait_c::~daTagMwait_c() {}

/* 80D5C080-80D5C0A8 0002E0 0028+00 1/0 0/0 0/0 .text            daTagMwait_Delete__FP12daTagMwait_c
 */
static int daTagMwait_Delete(daTagMwait_c* i_this) {
    i_this->~daTagMwait_c();
    return 1;
}

/* 80D5C0A8-80D5C550 000308 04A8+00 1/1 0/0 0/0 .text            execute__12daTagMwait_cFv */
int daTagMwait_c::execute() {
    daMidna_c* midna_p = daPy_py_c::getMidnaActor();
    daPy_py_c* player_p = daPy_getLinkPlayerActorClass();

    if (midna_p == NULL) {
        return 1;
    }

    mAttentionInfo.mFlags = 0;

    if (mEvtInfo.checkCommandTalk()) {
        if (!mEnteredTrigger || !midna_p->checkReturnAnime()) {
            if (!mInitMsgFlow) {
                mMsgFlow.init(this, (u16)shape_angle.z, 0, NULL);
                mInitMsgFlow = true;
            } else if (mMsgFlow.doFlow(this, NULL, 0)) {
                i_dComIfGp_event_reset();

                if (mEnteredTrigger) {
                    fopAcM_delete(this);
                    return 1;
                }
            }
        }
    } else if (mEnteredTrigger) {
        fopAcM_orderSpeakEvent(this, 0, 0);
        mEvtInfo.i_onCondition(1);
        mAttentionInfo.mPosition = midna_p->mAttentionInfo.mPosition;
        mEyePos = mAttentionInfo.mPosition;
    } else {
        mInitMsgFlow = false;

        if (daPy_py_c::i_checkNowWolf() && midna_p != NULL && i_fopAcM_isSwitch(this, mOnSw))
        {
            if (mWarpToPos == 1) {
                midna_p->onTagWaitPosWarp(&mWaitPosition);
            } else {
                midna_p->onTagWaitPos(&mWaitPosition);
            }

            if (midna_p->current.pos.abs(mWaitPosition) < 5.0f) {
                if (field_0x56d == 1) {
                    midna_p->onTagNoHairLead();
                }

                f32 player_dist = player_p->current.pos.abs2XZ(current.pos);
                if ((player_dist <= mScale.x * mScale.x &&
                     player_p->current.pos.y >= current.pos.y &&
                     player_p->current.pos.y <= current.pos.y + mScale.y) ||
                    i_fopAcM_isSwitch(this, mEnterSw))
                {
                    midna_p->offTagWaitPos();
                    i_fopAcM_onSwitch(this, mEnterSw);
                    mEnteredTrigger = true;

                    if (shape_angle.z == 0) {
                        fopAcM_delete(this);
                    } else {
                        mAttentionInfo.mPosition = midna_p->mAttentionInfo.mPosition;
                        mEyePos = mAttentionInfo.mPosition;
                        fopAcM_orderSpeakEvent(this, 0, 0);
                        mEvtInfo.i_onCondition(1);
                    }
                } else if (field_0x570 > 0.0f && player_dist < field_0x570 &&
                           player_p->current.pos.y >= current.pos.y &&
                           player_p->current.pos.y <= current.pos.y + mScale.y)
                {
                    mAttentionInfo.mFlags = 2;
                    mEvtInfo.i_onCondition(1);
                }
            }
        }
    }

    return 1;
}

/* 80D5C550-80D5C570 0007B0 0020+00 1/0 0/0 0/0 .text daTagMwait_Execute__FP12daTagMwait_c */
static int daTagMwait_Execute(daTagMwait_c* i_this) {
    return i_this->execute();
}

/* 80D5C570-80D5C578 0007D0 0008+00 1/0 0/0 0/0 .text            daTagMwait_Draw__FP12daTagMwait_c
 */
static int daTagMwait_Draw(daTagMwait_c* i_this) {
    return 1;
}

/* ############################################################################################## */
/* 80D5C5C4-80D5C5E4 -00001 0020+00 1/0 0/0 0/0 .data            l_daTagMwait_Method */
static actor_method_class l_daTagMwait_Method = {
    (process_method_func)daTagMwait_Create,  (process_method_func)daTagMwait_Delete,
    (process_method_func)daTagMwait_Execute, (process_method_func)NULL,
    (process_method_func)daTagMwait_Draw,
};

/* 80D5C5E4-80D5C614 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_Mwait */
extern actor_process_profile_definition g_profile_Tag_Mwait = {
    -3,
    7,
    -3,
    PROC_Tag_Mwait,
    &g_fpcLf_Method.mBase,
    sizeof(daTagMwait_c),
    0,
    0,
    &g_fopAc_Method.base,
    256,
    &l_daTagMwait_Method,
    0x44000,
    3,
    14,
};
