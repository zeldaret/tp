/**
 * d_a_tag_hstop.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_hstop.h"
#include "d/d_com_inf_game.h"
#include "d/d_meter2_info.h"
#include "f_op/f_op_actor_mng.h"
#include "d/actor/d_a_horse.h"

/* 805A43EC-805A45D8 0000EC 01EC+00 1/1 0/0 0/0 .text            create__12daTagHstop_cFv */
int daTagHstop_c::create() {
    fopAcM_SetupActor(this, daTagHstop_c);

    scale.x *= 100.0f;
    scale.y *= 100.0f;
    scale.z *= 100.0f;

    if (m_top != NULL) {
        daTagHstop_c* last = m_top;

        while (last->mNext != NULL) {
            last = last->mNext;
        }

        last->mNext = this;
        mPrev = last;
    } else {
        m_top = this;
    }

    mPrm0 = fopAcM_GetParam(this);
    mPrm1 = (fopAcM_GetParam(this) >> 8) & 0xF;

    if (mPrm1 == 15) {
        mPrm1 = 0;
    }

    setActive();

    if (mPrm1 == 2) {
        if (daPy_py_c::checkRoomRestartStart()) {
            if (!dComIfGs_isSwitch(0x8A, fopAcM_GetHomeRoomNo(this))) {
                dComIfGs_onSwitch(0x8A, fopAcM_GetHomeRoomNo(this));
            } else if (!dComIfGs_isSwitch(0x8B, fopAcM_GetHomeRoomNo(this))) {
                dComIfGs_onSwitch(0x8B, fopAcM_GetHomeRoomNo(this));
            } else if (!dComIfGs_isSwitch(0x8C, fopAcM_GetHomeRoomNo(this))) {
                dComIfGs_onSwitch(0x8C, fopAcM_GetHomeRoomNo(this));
            }
        }

        if (dComIfGs_isSwitch(0x8C, fopAcM_GetHomeRoomNo(this))) {
            field_0x574 = 0;
        } else {
            field_0x574 = 1200;
        }
    } else {
        field_0x574 = 0;
    }

    return cPhs_COMPLEATE_e;
}

/* 805A45D8-805A45F8 0002D8 0020+00 1/0 0/0 0/0 .text            daTagHstop_Create__FP10fopAc_ac_c
 */
static int daTagHstop_Create(fopAc_ac_c* i_this) {
    return static_cast<daTagHstop_c*>(i_this)->create();
}

/* 805A45F8-805A4690 0002F8 0098+00 1/1 0/0 0/0 .text            __dt__12daTagHstop_cFv */
daTagHstop_c::~daTagHstop_c() {
    if (mPrev != NULL) {
        mPrev->mNext = mNext;
    }

    if (mNext != NULL) {
        mNext->mPrev = mPrev;
    }

    if (m_top == this) {
        m_top = mNext;
    }
}

/* 805A4690-805A46B8 000390 0028+00 1/0 0/0 0/0 .text            daTagHstop_Delete__FP12daTagHstop_c
 */
static int daTagHstop_Delete(daTagHstop_c* i_this) {
    static_cast<daTagHstop_c*>(i_this)->~daTagHstop_c();
    return 1;
}

/* 805A46B8-805A475C 0003B8 00A4+00 2/2 0/0 0/0 .text            setActive__12daTagHstop_cFv */
void daTagHstop_c::setActive() {
    if (mPrm0 == 0xFF || mPrm1 == 2 ||
        (mPrm1 == 0 && dComIfGs_isSwitch(mPrm0, fopAcM_GetHomeRoomNo(this))) ||
        (mPrm1 == 1 && !dComIfGs_isSwitch(mPrm0, fopAcM_GetHomeRoomNo(this))))
    {
        mActive = true;
    } else {
        mActive = false;
    }
}

/* 805A4B8C-805A4BD8 000014 004C+00 2/2 0/0 0/0 .bss             m_msgFlow__12daTagHstop_c */
dMsgFlow_c daTagHstop_c::m_msgFlow;

/* 805A475C-805A4AA8 00045C 034C+00 1/1 0/0 0/0 .text            execute__12daTagHstop_cFv */
int daTagHstop_c::execute() {
    if (eventInfo.checkCommandTalk()) {
        if (field_0x573 == 2) {
            m_msgFlow.init(this, (u16)shape_angle.z, 0, NULL);
            field_0x573 = 3;
        } else if (m_msgFlow.doFlow(this, NULL, 0)) {
            dComIfGp_getEvent().reset();
            field_0x573 = 0;

            s16 arrow_num = dComIfGp_getItemMaxArrowNumCount();
            dComIfGp_setItemArrowNumCount(arrow_num);
            dComIfGs_onSwitch(0x8D, fopAcM_GetHomeRoomNo(this));
        }
    } else {
        if (field_0x574 != 0) {
            if (dComIfGs_isSwitch(0x8F, fopAcM_GetHomeRoomNo(this))) {
                field_0x574 = 0;
            } else if (dComIfGp_getLinkPlayer()->checkSingleBoarBattleSecondBowReady()) {
                dComIfGs_onSwitch(0x8F, fopAcM_GetHomeRoomNo(this));
                field_0x574 = 0;
            } else {
                field_0x574--;
            }
        }

        setActive();

        if (field_0x573) {
            daHorse_c* horse_p = dComIfGp_getHorseActor();

            if (mPrm1 != 2 || dComIfGs_getArrowNum() != 0 || horse_p == NULL) {
                field_0x573 = 0;
            } else if (field_0x573 == 1) {
                if (dComIfGp_getHorseActor()->checkTurnStand() &&
                    !dComIfGp_getHorseActor()->checkTurnStandCamera())
                {
                    field_0x573 = 2;
                }
            } else if (field_0x573 == 2 && !dComIfGp_getHorseActor()->checkTurnStand()) {
                fopAcM_orderSpeakEvent(this, 0, 0);
                eventInfo.onCondition(dEvtCnd_CANTALK_e);
            }
        } else if (mPrm1 == 2 && !dComIfGp_event_runCheck()) {
            if (dComIfGs_getArrowNum() == 0 && !dComIfGs_isSwitch(0x8D, fopAcM_GetHomeRoomNo(this)))
            {
                dComIfGs_onSwitch(0x8D, fopAcM_GetHomeRoomNo(this));
                dMeter2Info_setFloatingFlow(43, 90, true);

                if (!dComIfGs_isSwitch(0x8F, fopAcM_GetHomeRoomNo(this))) {
                    field_0x574 = 1200;
                    dComIfGs_offSwitch(0x8A, fopAcM_GetHomeRoomNo(this));
                    dComIfGs_offSwitch(0x8B, fopAcM_GetHomeRoomNo(this));
                    dComIfGs_offSwitch(0x8C, fopAcM_GetHomeRoomNo(this));
                }
            } else if (field_0x574 == 0 && !dComIfGs_isSwitch(0x8F, fopAcM_GetHomeRoomNo(this))) {
                dComIfGs_onSwitch(0x8F, fopAcM_GetHomeRoomNo(this));
                dComIfGs_onSwitch(0x8E, fopAcM_GetHomeRoomNo(this));
            }
        }
    }

    return 1;
}

/* 805A4AA8-805A4AC8 0007A8 0020+00 1/0 0/0 0/0 .text daTagHstop_Execute__FP12daTagHstop_c */
static int daTagHstop_Execute(daTagHstop_c* i_this) {
    return i_this->execute();
}

/* 805A4AC8-805A4AD0 0007C8 0008+00 1/0 0/0 0/0 .text            daTagHstop_Draw__FP12daTagHstop_c
 */
static int daTagHstop_Draw(daTagHstop_c*) {
    return 1;
}

/* ############################################################################################## */
/* 805A4B24-805A4B44 -00001 0020+00 1/0 0/0 0/0 .data            l_daTagHstop_Method */
static actor_method_class l_daTagHstop_Method = {
    (process_method_func)daTagHstop_Create,  (process_method_func)daTagHstop_Delete,
    (process_method_func)daTagHstop_Execute, (process_method_func)NULL,
    (process_method_func)daTagHstop_Draw,
};

/* 805A4B44-805A4B74 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_Hstop */
extern actor_process_profile_definition g_profile_Tag_Hstop = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_Tag_Hstop,
    &g_fpcLf_Method.base,
    sizeof(daTagHstop_c),
    0,
    0,
    &g_fopAc_Method.base,
    435,
    &l_daTagHstop_Method,
    0x40000,
    fopAc_ENV_e,
    fopAc_CULLBOX_CUSTOM_e,
};
