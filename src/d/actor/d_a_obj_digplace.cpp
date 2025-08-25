/**
 * d_a_obj_digplace.cpp
 * Generic Wolf Digging Spots
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_digplace.h"
#include "d/actor/d_a_player.h"
#include "d/d_com_inf_game.h"
#include "d/d_procname.h"

/* 8057BF98-8057C138 000078 01A0+00 1/1 0/0 0/0 .text            create__12daObjDigpl_cFv */
int daObjDigpl_c::create() {
    fopAcM_SetupActor(this, daObjDigpl_c);

    mType = (fopAcM_GetParam(this) >> 8) & 0xF;
    mSwitch = fopAcM_GetParam(this) & 0xFF;

    if (mType == 5) {
        fopAcM_OffStatus(this, 0x80);
        mpDigPoints =
            dPath_GetRoomPath((fopAcM_GetParam(this) >> 0x14) & 0xFF, fopAcM_GetRoomNo(this));
    }

    if (mType >= 4) {
        mType = 0;
    }

    if (mSwitch != 0xFF && fopAcM_isSwitch(this, mSwitch)) {
        return cPhs_ERROR_e;
    }

    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mDoMtx_copy(mDoMtx_stack_c::get(), field_0x570);
    fopAcM_SetMtx(this, field_0x570);

    attention_info.position = current.pos;
    eyePos = attention_info.position;
    tevStr.room_no = dComIfGp_roomControl_getStayNo();
    fopAcM_SetMin(this, -550.0f, -250.0f, -550.0f);
    fopAcM_SetMax(this, 550.0f, 250.0f, 550.0f);
    attention_info.distances[fopAc_attn_ETC_e] = 27;

    return cPhs_COMPLEATE_e;
}

/* 8057C138-8057C158 000218 0020+00 1/0 0/0 0/0 .text            daObjDigpl_Create__FP10fopAc_ac_c
 */
static int daObjDigpl_Create(fopAc_ac_c* i_this) {
    return static_cast<daObjDigpl_c*>(i_this)->create();
}

/* 8057C158-8057C1B8 000238 0060+00 1/0 0/0 0/0 .text            __dt__12daObjDigpl_cFv */
daObjDigpl_c::~daObjDigpl_c() {}

/* 8057C1B8-8057C1EC 000298 0034+00 1/0 0/0 0/0 .text            daObjDigpl_Delete__FP12daObjDigpl_c
 */
static int daObjDigpl_Delete(daObjDigpl_c* i_this) {
    i_this->~daObjDigpl_c();
    return 1;
}

/* 8057C1EC-8057C880 0002CC 0694+00 1/1 0/0 0/0 .text            execute__12daObjDigpl_cFv */
int daObjDigpl_c::execute() {
    daPy_py_c* player_p = daPy_getLinkPlayerActorClass();

    if (mDigFlg == 1) {
        if (mSwitch != 0xFF) {
            fopAcM_onSwitch(this, mSwitch);
        }

        cXyz item_pos(current.pos.x, current.pos.y - 30.0f, current.pos.z);

        u8 item_no;
        if (mpDigPoints != NULL) {
            item_no = mpDigPoints->m_points[mCurrentDigPoint].mArg1;
        } else {
            item_no = getItemNum();
        }

        if (mType == 0) {
            fopAcM_createItem(&item_pos, item_no, -1, fopAcM_GetRoomNo(this),
                              &player_p->shape_angle, NULL, 9);
        } else if (mType == 2) {
            fopAcM_createItemFromTable(&item_pos, item_no, -1, fopAcM_GetRoomNo(this),
                                       &player_p->shape_angle, 9, NULL, NULL, NULL, false);
        }

        if (mType == 1) {
            mDigFlg = 2;
        } else if (mpDigPoints != NULL) {
            mUsedDigFlags[mCurrentDigPoint >> 5] |= 1 << (mCurrentDigPoint % 32);
            mDigFlg = 0;
        } else {
            fopAcM_delete(this);
            return 1;
        }
    }

    attention_info.flags &= ~0x80;

    if (mpDigPoints != NULL) {
        current.pos.y = player_p->current.pos.y + 100000.0f;
        attention_info.position.y = current.pos.y;
        cXyz point_pos;

        dPnt* point_p = mpDigPoints->m_points;
        f32 dist_to_current_pnt = FLT_MAX;

        for (int i = 0; i < mpDigPoints->m_num; i++, point_p++) {
            if ((mUsedDigFlags[i >> 5] & (1 << (i % 32))) == 0) {
                point_pos.set(point_p->m_position.x, point_p->m_position.y, point_p->m_position.z);

                if (player_p->current.pos.abs(point_pos) < 1000.0f) {
                    dComIfGp_particle_setSimple(0x70F, &point_pos, 255, g_whiteColor, g_whiteColor,
                                                0, 0.0f);
                    dComIfGp_particle_setSimple(0x73D, &point_pos, 255, g_whiteColor, g_whiteColor,
                                                0, 0.0f);
                }

                f32 point_to_plyr_dist = player_p->current.pos.abs2XZ(point_pos);
                if (dist_to_current_pnt > point_to_plyr_dist &&
                    fabsf(point_pos.y - player_p->current.pos.y) < 200.0f)
                {
                    dist_to_current_pnt = point_to_plyr_dist;

                    mCurrentDigPoint = i;
                    current.pos = point_pos;
                    attention_info.position = point_pos;
                    eyePos = point_pos;

                    if (point_p->mArg0 == 0) {
                        mType = 0;
                    } else {
                        mType = 2;
                    }
                }
            }
        }
    }

    if (daPy_py_c::checkNowWolf() && mDigFlg == 0) {
        if (field_0x56b == 0) {
            int seen_angle = fopAcM_seenActorAngleY(player_p, this);
            f32 dist_to_player = fopAcM_searchPlayerDistanceXZ2(this);

            if (seen_angle <= 0x2800 || dist_to_player < 1600.0f) {
                attention_info.flags |= 0x80;
            }

            if (dist_to_player < 250000.0f &&
                fabsf(current.pos.y - player_p->current.pos.y) < 200.0f)
            {
                daPy_py_c::setLookPos(&attention_info.position);
            }
        }

        if (mpDigPoints == NULL && player_p->current.pos.abs(current.pos) < 1000.0f) {
            dComIfGp_particle_setSimple(0x70F, &current.pos, 255, g_whiteColor, g_whiteColor, 0,
                                        0.0f);
            dComIfGp_particle_setSimple(0x73D, &current.pos, 255, g_whiteColor, g_whiteColor, 0,
                                        0.0f);
        }
    }

    return 1;
}

/* 8057C880-8057C8A0 000960 0020+00 1/0 0/0 0/0 .text daObjDigpl_Execute__FP12daObjDigpl_c */
static int daObjDigpl_Execute(daObjDigpl_c* i_this) {
    return i_this->execute();
}

/* 8057C8A0-8057C8A8 000980 0008+00 1/0 0/0 0/0 .text            daObjDigpl_Draw__FP12daObjDigpl_c
 */
static int daObjDigpl_Draw(daObjDigpl_c* i_this) {
    return 1;
}

/* 8057C8F8-8057C918 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjDigpl_Method */
static actor_method_class l_daObjDigpl_Method = {
    (process_method_func)daObjDigpl_Create,  (process_method_func)daObjDigpl_Delete,
    (process_method_func)daObjDigpl_Execute, (process_method_func)NULL,
    (process_method_func)daObjDigpl_Draw,
};

/* 8057C918-8057C948 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Digpl */
extern actor_process_profile_definition g_profile_Obj_Digpl = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_Obj_Digpl,
    &g_fpcLf_Method.base,
    sizeof(daObjDigpl_c),
    0,
    0,
    &g_fopAc_Method.base,
    250,
    &l_daObjDigpl_Method,
    0x44080,
    fopAc_ENV_e,
    fopAc_CULLBOX_CUSTOM_e,
};
