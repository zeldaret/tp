//
// Tag: Event Area
//

#include "rel/d/a/tag/d_a_tag_evtarea/d_a_tag_evtarea.h"
#include "d/a/d_a_npc.h"
#include "d/d_procname.h"

u32 daTag_EvtArea_c::getOnEvtBit() {
    u32 ret = fopAcM_GetParam(this) & 0xfff;
    return ret == 0xfff ? -1 : ret;
}

u32 daTag_EvtArea_c::getOffEvtBit() {
    u32 ret = (fopAcM_GetParam(this) & 0xfff000) >> 12;
    return ret == 0xfff ? -1 : ret;
}

u8 daTag_EvtArea_c::getBitSW() {
    return home.angle.x & 0xff;
}

u8 daTag_EvtArea_c::getBitSW2() {
    return (home.angle.x & 0xff00) >> 8;
}

/* 8048C4F8-8048C728 000078 0230+00 2/1 0/0 0/0 .text            create__15daTag_EvtArea_cFv */
cPhs__Step daTag_EvtArea_c::create() {
    fopAcM_SetupActor(this, daTag_EvtArea_c);

    switch (getType()) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
            scale.x *= 100.0f;
            scale.y *= 100.0f;
            scale.z *= 100.0f;
            break;
        case 13:
            scale.x *= 200.0f;
            scale.y *= 200.0f;
            scale.z *= 200.0f;
            break;
        case 14:
            scale.x *= 100.0f;
            scale.y *= 100.0f;
            scale.z *= 100.0f;
            break;
        case 15:
            scale.x *= 0.5f;
            scale.z *= 0.5f;
            scale.x *= 1000.0f;
            scale.y *= 1000.0f;
            scale.z *= 1000.0f;
            break;
        case 16:
        case 17:
        case 18:
        case 19:
        case 20:
            scale.x *= 100.0f;
            scale.y *= 100.0f;
            scale.z *= 100.0f;
            break;
        case 21:
            scale.x *= 1000.0f;
            scale.z *= 1000.0f;
            break;
        case 22:
        case 23:
            scale.x *= 100.0f;
            scale.y *= 100.0f;
            scale.z *= 100.0f;
            break;
        default:
            scale.x *= 100.0f;
            scale.y *= 100.0f;
            scale.z *= 100.0f;
    }
    if (isDelete()) {
        return cPhs_ERROR_e;
    } else {
        field_0x56c = 0;
        return cPhs_COMPLEATE_e;
    }
}

/* 8048C728-8048C730 0002A8 0008+00 1/1 0/0 0/0 .text            Delete__15daTag_EvtArea_cFv */
bool daTag_EvtArea_c::Delete() {
    return true;
}

/* 8048C730-8048C894 0002B0 0164+00 1/1 0/0 0/0 .text            Execute__15daTag_EvtArea_cFv */
bool daTag_EvtArea_c::Execute() {
    if (home.roomNo == dComIfGp_roomControl_getStayNo()) {
        if (isDelete()) {
            fopAcM_delete(this);
            return true;
        } else {
            attention_info.position = current.pos;
            if (getType() == 8) {
                attention_info.position.y += 100.0f;
            }
            group = 0;
            eyePos = attention_info.position;
            if (getType() == 15) {
                if (chkPointInArea(daPy_getPlayerActorClass()->current.pos)) {
                    eyePos = daPy_getPlayerActorClass()->eyePos;
                    group = 4;
                }
            }
            attention_info.flags = 0;
            return true;
        }
    } else {
        return false;
    }
}

/* 8048C894-8048C89C 000414 0008+00 1/1 0/0 0/0 .text            Draw__15daTag_EvtArea_cFv */
bool daTag_EvtArea_c::Draw() {
    return true;
}

/* 8048C89C-8048C94C 00041C 00B0+00 2/2 0/0 0/0 .text            isDelete__15daTag_EvtArea_cFv */
BOOL daTag_EvtArea_c::isDelete() {
    bool ret;
    if (getOffEvtBit() != -1) {
        if (daNpcT_chkEvtBit(getOffEvtBit())) {
            return true;
        }
    }
    ret = false;
    if (getBitSW2() != 0xff) {
        if (dComIfGs_isSwitch(getBitSW2(), fopAcM_GetRoomNo(this))) {
            ret = true;
        }
    }
    return ret;
}

/* 8048C94C-8048CC80 0004CC 0334+00 1/1 0/0 16/16 .text
 * chkPointInArea__15daTag_EvtArea_cF4cXyz4cXyz                 */
BOOL daTag_EvtArea_c::chkPointInArea(cXyz param_0, cXyz param_1) {
    cXyz local_24, local_30, local_3c, local_48, local_84, local_cc, local_6c, local_90;
    if (field_0x56c == 0) {
        if ((getOnEvtBit() != -1 && daNpcT_chkEvtBit(getOnEvtBit()))
            || (getBitSW() != 0xff && dComIfGs_isSwitch(getBitSW(), fopAcM_GetRoomNo(this)))
            || (getOnEvtBit() == -1 && getBitSW() == 0xff)) {
            local_84 = scale + param_1;
            if (getType() == 15 || getType() == 16) {
                local_6c = daPy_getPlayerActorClass()->current.pos;
                local_6c -= home.pos;
                mDoMtx_YrotS(mDoMtx_stack_c::now, -current.angle.y);
                mDoMtx_stack_c::multVec(&local_6c, &local_6c);
                local_48.x = -local_84.x;
                local_48.z = -local_84.z;
                local_3c.x = local_84.x;
                local_3c.z = -local_84.z;
                local_30.x = local_84.x;
                local_30.z = local_84.z;
                local_24.x = -local_84.x;
                local_24.z = local_84.z;
                if (local_48.x < local_6c.x && local_48.z < local_6c.z && local_84.x > local_6c.x && local_84.z > local_6c.z) {
                    local_90 = param_0 - current.pos;
                    if (0 <= (s32)local_90.y && (s32)local_90.y < (s32)local_84.y) {
                        return true;
                    }
                }
            } else {
                local_cc = current.pos;
                local_cc.y -= 10.0f;
                if (getType() == 21) {
                    return daNpcT_chkPointInArea(param_0, local_cc, local_84, shape_angle.y, 0);
                }
                return daNpcT_chkPointInArea(param_0, local_cc, local_84, shape_angle.y, 1);
            }
        }
    }
    return false;
}

/* 8048CC80-8048CCA0 000800 0020+00 1/0 0/0 0/0 .text            daTag_EvtArea_Create__FPv */
static cPhs__Step daTag_EvtArea_Create(void* i_this) {
    return static_cast<daTag_EvtArea_c*>(i_this)->create();
}

/* 8048CCA0-8048CCC0 000820 0020+00 1/0 0/0 0/0 .text            daTag_EvtArea_Delete__FPv */
static bool daTag_EvtArea_Delete(void* i_this) {
    return static_cast<daTag_EvtArea_c*>(i_this)->Delete();
}

/* 8048CCC0-8048CCE0 000840 0020+00 1/0 0/0 0/0 .text            daTag_EvtArea_Execute__FPv */
static bool daTag_EvtArea_Execute(void* i_this) {
    return static_cast<daTag_EvtArea_c*>(i_this)->Execute();
}

/* 8048CCE0-8048CD00 000860 0020+00 1/0 0/0 0/0 .text            daTag_EvtArea_Draw__FPv */
static bool daTag_EvtArea_Draw(void* i_this) {
    return static_cast<daTag_EvtArea_c*>(i_this)->Draw();
}

/* 8048CD00-8048CD08 000880 0008+00 1/0 0/0 0/0 .text            daTag_EvtArea_IsDelete__FPv */
static bool daTag_EvtArea_IsDelete(void* i_this) {
    return true;
}

/* 8048CE48-8048CE68 -00001 0020+00 1/0 0/0 0/0 .data            daTag_EvtArea_MethodTable */
static actor_method_class daTag_EvtArea_MethodTable = {
    (process_method_func)daTag_EvtArea_Create,
    (process_method_func)daTag_EvtArea_Delete,
    (process_method_func)daTag_EvtArea_Execute,
    (process_method_func)daTag_EvtArea_IsDelete,
    (process_method_func)daTag_EvtArea_Draw,
};

/* 8048CE68-8048CE98 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_TAG_EVTAREA */
extern actor_process_profile_definition g_profile_TAG_EVTAREA = {
    fpcLy_CURRENT_e,
    8,
    fpcPi_CURRENT_e,
    PROC_TAG_EVTAREA,
    &g_fpcLf_Method.mBase,
    sizeof(daTag_EvtArea_c),
    0,
    0,
    &g_fopAc_Method.base,
    287,
    &daTag_EvtArea_MethodTable,
    0x44000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};