/**
 * d_a_tag_chgrestart.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_chgrestart.h"
#include "d/d_procname.h"

/* 80D56758-80D567E4 000078 008C+00 1/1 0/0 0/0 .text            Create__17daTagChgRestart_cFv */
s32 daTagChgRestart_c::Create() {
    mVertices[0].x = -100.0f * scale.x;
    mVertices[0].z = -100.0f * scale.z;

    mVertices[1].x = 100.0f * scale.x;
    mVertices[1].z = -100.0f * scale.z;

    mVertices[2].x = 100.0f * scale.x;
    mVertices[2].z = 100.0f * scale.z;

    mVertices[3].x = -100.0f * scale.x;
    mVertices[3].z = 100.0f * scale.z;

    mVertices[3].y = 0.0f;
    mVertices[2].y = 0.0f;
    mVertices[1].y = 0.0f;
    mVertices[0].y = 0.0f;

    return 1;
}

/* 80D567E4-80D56878 000104 0094+00 1/1 0/0 0/0 .text            create__17daTagChgRestart_cFv */
s32 daTagChgRestart_c::create() {
    fopAcM_SetupActor(this, daTagChgRestart_c);

    if (!Create()) {
        return cPhs_ERROR_e;
    }

    return cPhs_COMPLEATE_e;
}

/* 80D568B8-80D56A84 0001D8 01CC+00 1/1 0/0 0/0 .text            execute__17daTagChgRestart_cFv */
s32 daTagChgRestart_c::execute() {
    if (fopAcM_isSwitch(this, daTagChgRestart_prm::getSwNo(this))) {
        return 1;
    }

    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    cXyz pos = player->current.pos;
    pos -= home.pos;

    mDoMtx_stack_c::YrotS(-current.angle.y);
    mDoMtx_stack_c::multVec(&pos, &pos);

    if (mVertices[0].x < pos.x && mVertices[0].z < pos.z && mVertices[2].x > pos.x &&
        mVertices[2].z > pos.z)
    {
        cXyz restart_pos = home.pos;
        s16 restart_angle = home.angle.y;

        u8 playerNo = daTagChgRestart_prm::getPlayerNo(this);
        if (playerNo != 0xFF) {
            dStage_roomDt_c* roomDt = dComIfGp_roomControl_getStatusRoomDt(fopAcM_GetRoomNo(this));
            stage_actor_class* player_data = roomDt->getPlayer();

            stage_actor_data_class* entry_p = player_data->m_entries;
            for (int i = 0; i < player_data->num; i++) {
                if ((entry_p->base.angle.z & 0xFF) == playerNo) {
                    break;
                }

                entry_p++;
            }

            restart_pos = entry_p->base.position;
            restart_angle = entry_p->base.angle.y;
        }

        dComIfGs_setRestartRoom(restart_pos, restart_angle, fopAcM_GetRoomNo(player));
        fopAcM_onSwitch(this, daTagChgRestart_prm::getSwNo(this));
    }

    return 1;
}

/* 80D56A84-80D56A8C 0003A4 0008+00 1/1 0/0 0/0 .text            _delete__17daTagChgRestart_cFv */
s32 daTagChgRestart_c::_delete() {
    return 1;
}

/* 80D56A8C-80D56AAC 0003AC 0020+00 1/0 0/0 0/0 .text
 * daTagChgRestart_Execute__FP17daTagChgRestart_c               */
static s32 daTagChgRestart_Execute(daTagChgRestart_c* i_this) {
    return i_this->execute();
}

/* 80D56AAC-80D56ACC 0003CC 0020+00 1/0 0/0 0/0 .text
 * daTagChgRestart_Delete__FP17daTagChgRestart_c                */
static s32 daTagChgRestart_Delete(daTagChgRestart_c* i_this) {
    return i_this->_delete();
}

/* 80D56ACC-80D56AEC 0003EC 0020+00 1/0 0/0 0/0 .text daTagChgRestart_Create__FP10fopAc_ac_c */
static s32 daTagChgRestart_Create(fopAc_ac_c* i_this) {
    return static_cast<daTagChgRestart_c*>(i_this)->create();
}

/* ############################################################################################## */
/* 80D56B00-80D56B20 -00001 0020+00 1/0 0/0 0/0 .data            l_daTagChgRestart_Method */
static actor_method_class l_daTagChgRestart_Method = {
    (process_method_func)daTagChgRestart_Create,
    (process_method_func)daTagChgRestart_Delete,
    (process_method_func)daTagChgRestart_Execute,
};

/* 80D56B20-80D56B50 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_ChgRestart */
extern actor_process_profile_definition g_profile_Tag_ChgRestart = {
    fpcLy_CURRENT_e,            // mLayerID
    7,                          // mListID
    fpcPi_CURRENT_e,            // mListPrio
    PROC_Tag_ChgRestart,        // mProcName
    &g_fpcLf_Method.base,      // sub_method
    sizeof(daTagChgRestart_c),  // mSize
    0,                          // mSizeOther
    0,                          // mParameters
    &g_fopAc_Method.base,       // sub_method
    591,                        // mPriority
    &l_daTagChgRestart_Method,  // sub_method
    0x40000,                    // mStatus
    fopAc_ACTOR_e,              // mActorType
    fopAc_CULLBOX_CUSTOM_e,     // cullType
};
