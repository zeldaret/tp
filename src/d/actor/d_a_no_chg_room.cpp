/**
 * d_a_no_chg_room.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_no_chg_room.h"
#include "d/d_s_room.h"
#include "d/actor/d_a_horse.h"
#include "d/actor/d_a_spinner.h"

/* 801451EC-801452DC 13FB2C 00F0+00 1/1 0/0 0/0 .text            isLoadRoom__Fi */
static bool isLoadRoom(int i_roomNo) {
    roomRead_class* room = dComIfGp_getStageRoom();

    if (room != NULL && room->num > i_roomNo) {
        int load_room_index;
        int num;
        u8* data;

        num = room->m_entries[i_roomNo]->num;
        data = room->m_entries[i_roomNo]->m_rooms;

        for (int i = 0; i < num; i++) {
            load_room_index = dStage_roomRead_dt_c_GetLoadRoomIndex(data[i]);
            if (dComIfGp_roomControl_checkStatusFlag(load_room_index, 2)) {
                // "Room <%d> loading!\n"
                OS_REPORT("部屋<%d>読み込み中！\n", load_room_index);
                return false;
            }

            if (dComIfGp_roomControl_checkStatusFlag(load_room_index, 9) == (u32)TRUE) {
                room_of_scene_class* roomScene = (room_of_scene_class*)fopScnM_SearchByID(
                    dStage_roomControl_c::getStatusProcID(load_room_index));
                JUT_ASSERT(0, roomScene != 0);

                if (roomScene->field_0x1d4 >= 0 || !fpcNd_IsDeleteTiming(&roomScene->base)) {
                    // "Room <%d> objects loading!\n"
                    OS_REPORT("部屋<%d>オブジェクト読み込み中！\n", load_room_index);
                    return false;
                }
            }
        }
    }

    return true;
}

/* 801452DC-80145508 13FC1C 022C+00 1/1 0/0 0/0 .text            execute__9daNocrm_cFv */
int daNocrm_c::execute() {
    daPy_py_c* player_p = daPy_getPlayerActorClass();
    cXyz cur_player_pos(player_p->current.pos);

    if (player_p->checkHorseRide()) {
        cur_player_pos.y = dComIfGp_getHorseActor()->current.pos.y;
    } else if (player_p->checkSpinnerRide()) {
        daSpinner_c* spinner_actor = player_p->getSpinnerActor();

        if (spinner_actor != NULL) {
            cur_player_pos.y = spinner_actor->current.pos.y;
        }
    }

    cXyz sp14;
    mDoMtx_multVec(mInvMtx, &cur_player_pos, &sp14);

    if (sp14.y < 0.0f || sp14.y > scale.y || fabsf(sp14.x) > scale.x || fabsf(sp14.z) > scale.z)
    {
        if (subtype == 0 || !mRoomLoading ||
            dStage_stagInfo_GetSTType(dComIfGp_getStage()->getStagInfo()) != 0)
        {
            return 1;
        }

        if (isLoadRoom(getRoomNo(sp14.z < 0.0f ? 0 : 1))) {
            mRoomLoading = false;
            return 1;
        }

        sp14.z = sp14.z < 0.0f ? -scale.z : scale.z;

        cXyz new_player_pos;
        mDoMtx_multVec(mMtx, &sp14, &new_player_pos);

        daPy_getLinkPlayerActorClass()->setPlayerPosAndAngle(&new_player_pos,
                                                             player_p->shape_angle.y, 1);
    }

    if (subtype == 0) {
        dStage_roomControl_c::setRoomReadId(getReadRoomId());
    } else {
        dStage_roomControl_c::onNoChangeRoom();
        mRoomLoading = true;
    }

    return 1;
}

/* 80145508-801455A8 13FE48 00A0+00 1/1 0/0 0/0 .text            getRoomNo__9daNocrm_cFi */
int daNocrm_c::getRoomNo(int param_0) {
    if (mRoomNo[param_0] < 0) {
        f32 z_offset = param_0 ? -scale.z : scale.z;

        cXyz offset(0.0f, scale.y, z_offset);
        cXyz check_pos;
        mDoMtx_multVec(mMtx, &offset, &check_pos);

        bool groundHit = fopAcM_gc_c::gndCheck(&check_pos);
        JUT_ASSERT(0, groundHit);

        int roomNo = fopAcM_gc_c::getRoomId();
        JUT_ASSERT(0, 0 <= roomNo && roomNo < 64);

        mRoomNo[param_0] = roomNo;
    }

    return mRoomNo[param_0];
}

int daNocrm_c::create() {
    if (subtype == 0 && getReadRoomId() < 0) {
        // "Room Load Rectangle: Load ID is -1, so destroy self!\n"
        OSReport_Warning("部屋読み込み矩形：読み込みＩＤが−１ですので、自滅します！\n");
        return cPhs_ERROR_e;
    }

    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    cMtx_copy(mDoMtx_stack_c::get(), mMtx);
    cMtx_inverse(mDoMtx_stack_c::get(), mInvMtx);

    scale *= getScaleType() ? 1000.0f : 100.0f;
    mRoomNo[0] = -1;
    mRoomNo[1] = -1;
    return cPhs_COMPLEATE_e;
}

/* 801455A8-801456A4 13FEE8 00FC+00 1/0 0/0 0/0 .text            daNocrm_create__FP9daNocrm_c */
static int daNocrm_create(daNocrm_c* i_this) {
    fopAcM_SetupActor(i_this, daNocrm_c);
    return i_this->create();
}

/* 801456A4-801456AC 13FFE4 0008+00 1/0 0/0 0/0 .text            daNocrm_Delete__FP9daNocrm_c */
static int daNocrm_Delete(daNocrm_c* i_this) {
    return 1;
}

/* 801456AC-801456CC 13FFEC 0020+00 1/0 0/0 0/0 .text            daNocrm_execute__FP9daNocrm_c */
static int daNocrm_execute(daNocrm_c* i_this) {
    return i_this->execute();
}

/* 801456CC-801456D4 14000C 0008+00 1/0 0/0 0/0 .text            daNocrm_draw__FP9daNocrm_c */
static int daNocrm_draw(daNocrm_c* i_this) {
    return 1;
}

/* 803B3658-803B3678 -00001 0020+00 1/0 0/0 0/0 .data            daNocrm_METHODS */
static actor_method_class daNocrm_METHODS = {
    (process_method_func)daNocrm_create,  (process_method_func)daNocrm_Delete,
    (process_method_func)daNocrm_execute, (process_method_func)NULL,
    (process_method_func)daNocrm_draw,
};

/* 803B3678-803B36A8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NO_CHG_ROOM */
extern actor_process_profile_definition g_profile_NO_CHG_ROOM = {
    fpcLy_CURRENT_e,
    2,
    fpcPi_CURRENT_e,
    PROC_NO_CHG_ROOM,
    &g_fpcLf_Method.base,
    sizeof(daNocrm_c),
    0,
    0,
    &g_fopAc_Method.base,
    762,
    &daNocrm_METHODS,
    0x60000,
    fopAc_UNK_GROUP_5_e,
    fopAc_CULLBOX_0_e,
};
