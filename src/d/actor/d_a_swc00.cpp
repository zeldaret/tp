/**
 * @file d_a_swc00.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_swc00.h"
#include "d/actor/d_a_player.h"
#include "d/actor/d_a_horse.h"
#include "d/d_debug_viewer.h"
#include "d/d_s_play.h"
#include "dol2asm.h"
#include "d/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"

/* 805A13F8-805A15DC 000078 01E4+00 1/1 0/0 0/0 .text            hitCheck__FP9daSwc00_c */
static BOOL hitCheck(daSwc00_c* i_swc) {
    fopAc_ac_c* a_this = i_swc;
    fopAc_ac_c* playerAc = daPy_getPlayerActorClass();
    fopAc_ac_c* player;

    u8 condition = daSwc00_getCondition(i_swc);
    if (condition == 2) {
        player = dComIfGp_getHorseActor();
    } else {
        player = playerAc;
    }

    if (player == NULL) {
        return FALSE;
    }

    int shape = daSwc00_getShape(i_swc);
    if (shape == 3) {
        f32 xz_dist = fopAcM_searchActorDistanceXZ2(a_this, player);
        f32 y_dist = fopAcM_searchActorDistanceY(a_this, player);

        if (xz_dist < a_this->scale.x && -100.0f < y_dist && y_dist < a_this->scale.y) {
            return TRUE;
        }
    } else if (shape == 0) {
        cXyz tmp1 = i_swc->field_0x568 - a_this->current.pos;
        cXyz tmp2 = i_swc->field_0x574 - a_this->current.pos;
        cXyz player_dist = player->current.pos - a_this->current.pos;

        mDoMtx_stack_c::YrotS(-a_this->current.angle.y);
        mDoMtx_stack_c::multVec(&player_dist, &player_dist);

        if ((tmp1.x <= player_dist.x && player_dist.x <= tmp2.x) &&
            (tmp1.y <= player_dist.y && player_dist.y <= tmp2.y) &&
            (tmp1.z <= player_dist.z && player_dist.z <= tmp2.z)) {
            return TRUE;
        }
    }

    return FALSE;
}

#ifdef DEBUG

int daSwc00_Draw(daSwc00_c* i_this) {
    fopAc_ac_c* a_this = i_this;
    if (g_envHIO.mOther.field_0x46) {
        int shape = daSwc00_getShape(i_this);
        if (shape == 3) {
            GXColor local_44 = {0, 0, 0xff, 0xa0};
            GXColor* pColor = &local_44;
            dDbVw_drawCylinderXlu(a_this->current.pos, JMAFastSqrt(a_this->scale.x) - 30.0f, a_this->scale.y, *pColor, 1);
        } else if (shape == 0) {
            cXyz cStack_2c = i_this->field_0x574 - i_this->field_0x568;
            cStack_2c *= 0.5f;
            cXyz cStack_38 = i_this->field_0x568 + cStack_2c;
            csXyz cStack_40(0, 0, 0);
            cStack_40 = a_this->current.angle;
            GXColor local_48 = {0, 0, 0xff, 0xa0};
            GXColor* pColor = &local_48;
            dDbVw_drawCubeXlu(cStack_38, cStack_2c, cStack_40, *pColor);
        }
    }
    return 1;
}

#endif

/* 805A15DC-805A15FC 00025C 0020+00 1/0 0/0 0/0 .text            daSwc00_Execute__FP9daSwc00_c */
static int daSwc00_Execute(daSwc00_c* i_this) {
    return i_this->execute();
}

inline static int daSwc00_getType(daSwc00_c *i_this) {
    return (i_this->shape_angle.x & 0xf00) >> 8;
}

inline static int daSwc00_getSw1No(daSwc00_c *i_this) {
    return fopAcM_GetParam(i_this) & 0xff;
}

inline static int daSwc00_getSw2No(daSwc00_c* i_this) {
    return (fopAcM_GetParam(i_this) >> 8) & 0xff; 
}

/* 805A15FC-805A18E8 00027C 02EC+00 2/1 0/0 0/0 .text            execute__9daSwc00_cFv */
int daSwc00_c::execute() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    u8 condition = daSwc00_getCondition(this);
    switch(condition) {
    case 1:
        if (!player->checkHorseRide()) {
            return 1;
        }
        break;
    case 3:
        if (daPy_py_c::checkNowWolf() || player->checkHorseRide()) {
            return 1;
        }
        break;
    case 4:
        if (player->getKandelaarFlamePos() == NULL) {
            return 1;
        }
        break;
    }

    int type = daSwc00_getType(this);
    int sw2 = daSwc00_getSw2No(this);

    switch (type) {
    case 0:
    case 1:
    case 2:
    case 7:
    case 15:
        if (sw2 != 0xff && !fopAcM_isSwitch(this, sw2)) {
            return 1;
        }
        break;
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:
        if (sw2 != 0xff && fopAcM_isSwitch(this, sw2)) {
            return 1;
        }
        break;
    default:
        OSReport_Error("領域スイッチ：引数０が不正値<%d>です\n", type);
        JUT_PANIC(289, "0");
        break;
    }
    
    int sw1 = daSwc00_getSw1No(this);
    switch (daSwc00_getType(this)) {
    case 3:
    case 15:
        if (hitCheck(this)) {
            dComIfGs_onSwitch(sw1, fopAcM_GetRoomNo(this));
            field_0x583 = 1;
            field_0x584 = 1;
        }
        break;
    case 0:
    case 4:
        if (hitCheck(this)) {
            dComIfGs_onSwitch(sw1, fopAcM_GetRoomNo(this));
            field_0x584 = 1;
        } else {
            dComIfGs_offSwitch(sw1, fopAcM_GetRoomNo(this));
        }
        break;
    case 1:
    case 5:
        if (hitCheck(this)) {
            dComIfGs_onSwitch(sw1, fopAcM_GetRoomNo(this));
            field_0x584 = 1;
        }
        break;
    case 2:
    case 6:
        if (hitCheck(this)) {
            dComIfGs_offSwitch(sw1, fopAcM_GetRoomNo(this));
            field_0x584 = 1;
        }
        break;
    
    case 7:
    case 8:
        if (hitCheck(this)) {
            dComIfGs_offSwitch(sw1, fopAcM_GetRoomNo(this));
            field_0x584 = 1;
            field_0x583 = 1;
        }
    }
    event_proc_call();
    return 1;
}

/* 805A18E8-805A19A4 000568 00BC+00 1/1 0/0 0/0 .text            event_proc_call__9daSwc00_cFv */
void daSwc00_c::event_proc_call() {
    static daSwc00_c::actionFunc l_func[4] = {
        &daSwc00_c::actionWait,
        &daSwc00_c::actionOrderEvent,
        &daSwc00_c::actionEvent,
        &daSwc00_c::actionDead,
    };
    (this->*l_func[mAction])();
}

static inline u8 daSwc00_getEvID(daSwc00_c* i_this) {
    return fopAcM_GetParam(i_this) >> 24;
}

/* 805A19A4-805A1A28 000624 0084+00 1/0 0/0 0/0 .text            actionWait__9daSwc00_cFv */
void daSwc00_c::actionWait() {
    if (field_0x584 != 0) {
        if (daSwc00_getEvID(this) != 0xff) {
            setAction(ACTION_ORDER_EVENT);
            fopAcM_orderOtherEventId(this, mEventID, daSwc00_getEvID(this),
                                                     0xffff, 0, 1);
            eventInfo.onCondition(dEvtCnd_CANDEMO_e);
        } else {
            setAction(ACTION_DEAD);
        }
    }
}

/* 805A1A28-805A1A94 0006A8 006C+00 1/0 0/0 0/0 .text            actionOrderEvent__9daSwc00_cFv */
void daSwc00_c::actionOrderEvent() {
    if (eventInfo.checkCommandDemoAccrpt()) {
        setAction(ACTION_EVENT);
    } else {
        fopAcM_orderOtherEventId(this, mEventID, daSwc00_getEvID(this), 0xffff, 0, 1);
        eventInfo.onCondition(dEvtCnd_CANDEMO_e);
    }
}

/* 805A1A94-805A1AF0 000714 005C+00 1/0 0/0 0/0 .text            actionEvent__9daSwc00_cFv */
void daSwc00_c::actionEvent() {
    if (dComIfGp_evmng_endCheck(mEventID)) {
        setAction(ACTION_DEAD);
        dComIfGp_event_reset();
    }
}

/* 805A1AF0-805A1B1C 000770 002C+00 1/0 0/0 0/0 .text            actionDead__9daSwc00_cFv */
void daSwc00_c::actionDead() {
    if (field_0x583 != 0) {
        fopAcM_delete(this);
    }
}

/* 805A1B1C-805A1B24 00079C 0008+00 1/0 0/0 0/0 .text            daSwc00_IsDelete__FP9daSwc00_c */
static int daSwc00_IsDelete(daSwc00_c* i_this) {
    return 1;
}

/* 805A1B24-805A1B2C 0007A4 0008+00 1/0 0/0 0/0 .text            daSwc00_Delete__FP9daSwc00_c */
static int daSwc00_Delete(daSwc00_c* i_this) {
    fpc_ProcID id = fopAcM_GetID(i_this);
    return 1;
}

static inline int daSwc00_getScale(daSwc00_c* i_this) {
    return (fopAcM_GetParam(i_this) >> 20) & 0xf;
}

/* 805A1B2C-805A1D8C 0007AC 0260+00 2/0 0/0 0/0 .text            daSwc00_Create__FP10fopAc_ac_c */
static int daSwc00_Create(fopAc_ac_c* a_this) {
    daSwc00_c* i_this = (daSwc00_c*)a_this;
    fopAcM_SetupActor(i_this, daSwc00_c);
    fpc_ProcID id = fopAcM_GetID(a_this);
    int sw1 = daSwc00_getSw1No(i_this);
    if (dComIfGs_isSwitch(sw1, fopAcM_GetRoomNo(a_this))) {
        switch (daSwc00_getType(i_this)) {
        case 3:
        case 15:
            return cPhs_ERROR_e;
        case 0:
        case 4:
            dComIfGs_offSwitch(daSwc00_getSw1No(i_this), fopAcM_GetRoomNo(a_this));
            break;
        case 1:
        case 2:
        case 5:
        case 6:
        case 7:
        case 8:
        default:
            break;
        }
    } else {
        switch (daSwc00_getType(i_this)) {
        case 7:
        case 8:
            return cPhs_ERROR_e;
        }
    }
    int shape = daSwc00_getShape(i_this);
    int swcScale = daSwc00_getScale(i_this);
    if (shape == 3) {
        switch (swcScale) {
        case 0:
        default:
            a_this->scale.x *= 100.0f;
            a_this->scale.x += 30.0f;
            a_this->scale.x *= a_this->scale.x;
            a_this->scale.y *= 100.0f;
            break;
        case 1:
            a_this->scale.x *= 1000.0f;
            a_this->scale.x += 30.0f;
            a_this->scale.x *= a_this->scale.x;
            a_this->scale.y *= 1000.0f;
            break;
        }
    } else if (shape == 0) {
        switch (swcScale) {
        case 1:
            a_this->scale.x = 10.0f * a_this->scale.x;
            a_this->scale.y = 10.0f * a_this->scale.y;
            a_this->scale.z = 10.0f * a_this->scale.z;
            break;
        case 0:
        default:
            break;
        }
        i_this->field_0x568.set(a_this->current.pos.x - 50.0f * a_this->scale.x,
                                a_this->current.pos.y,
                                a_this->current.pos.z - 50.0f * a_this->scale.z);
        i_this->field_0x574.set(a_this->current.pos.x + 50.0f * a_this->scale.x,
                                a_this->current.pos.y + 100.0f * a_this->scale.y,
                                a_this->current.pos.z + 50.0f * a_this->scale.z);
    }
    i_this->mEventID = dComIfGp_getEventManager().getEventIdx(a_this, daSwc00_getEvID(i_this));
    return cPhs_COMPLEATE_e;
}

/* 805A1ED4-805A1EF4 -00001 0020+00 1/0 0/0 0/0 .data            l_daSwc00_Method */
static actor_method_class l_daSwc00_Method = {
    (process_method_func)daSwc00_Create,
    (process_method_func)daSwc00_Delete,
    (process_method_func)daSwc00_Execute,
    (process_method_func)daSwc00_IsDelete,
    #ifdef DEBUG
    (process_method_func)daSwc00_Draw,
    #else
    NULL
    #endif
};

/* 805A1EF4-805A1F24 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_SWC00 */
extern actor_process_profile_definition g_profile_SWC00 = {
  fpcLy_CURRENT_e,       // mLayerID
  7,                     // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_SWC00,            // mProcName
  &g_fpcLf_Method.base, // sub_method
  sizeof(daSwc00_c),     // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  277,                   // mPriority
  &l_daSwc00_Method,     // sub_method
  0x00040000,            // mStatus
  fopAc_ACTOR_e,         // mActorType
  fopAc_CULLBOX_0_e,     // cullType
};

/* 805A1DAC-805A1DAC 000018 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
