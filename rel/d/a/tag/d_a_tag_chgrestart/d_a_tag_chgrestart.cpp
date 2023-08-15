/**
 * d_a_tag_chgrestart.cpp
 * 
 */

#include "rel/d/a/tag/d_a_tag_chgrestart/d_a_tag_chgrestart.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "d/d_procname.h"

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void getStatusRoomDt__20dStage_roomControl_cFi();
extern "C" void setRoom__13dSv_restart_cFRC4cXyzsSc();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];

/* 80D56758-80D567E4 000078 008C+00 1/1 0/0 0/0 .text            Create__17daTagChgRestart_cFv */
s32 daTagChgRestart_c::Create() {
    field_0x568[0].x = -100.0f * mScale.x;
    field_0x568[0].z = -100.0f * mScale.z;

    field_0x568[1].x = 100.0f * mScale.x;
    field_0x568[1].z = -100.0f * mScale.z;

    field_0x568[2].x = 100.0f * mScale.x;
    field_0x568[2].z = 100.0f * mScale.z;

    field_0x568[3].x = -100.0f * mScale.x;
    field_0x568[3].z = 100.0f * mScale.z;

    field_0x568[3].y = 0.0f;
    field_0x568[2].y = 0.0f;
    field_0x568[1].y = 0.0f;
    field_0x568[0].y = 0.0f;

    return 1;
}

/* 80D567E4-80D56878 000104 0094+00 1/1 0/0 0/0 .text            create__17daTagChgRestart_cFv */
s32 daTagChgRestart_c::create() { 
    SETUP_ACTOR(this, daTagChgRestart_c);
    
    if (!Create()) {
        return cPhs_ERROR_e;
    }

    return cPhs_COMPLEATE_e;
}

/* 80D568B8-80D56A84 0001D8 01CC+00 1/1 0/0 0/0 .text            execute__17daTagChgRestart_cFv */
#ifdef NONMATCHING
// do-while loop is wrong
s32 daTagChgRestart_c::execute() {
    if (i_fopAcM_isSwitch(this,daTagChgRestart_prm::getSwNo(this))) {
        return 1;
    }

    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    cXyz pos = player->current.pos;
    pos -= orig.pos;

    mDoMtx_stack_c::YrotS(-current.angle.y);
    mDoMtx_stack_c::multVec(&pos,&pos);

    if (field_0x568[0].x < pos.x && field_0x568[0].z < pos.z &&
        field_0x568[2].x > pos.x && field_0x568[2].z > pos.z) {
        cXyz l_restartPos = orig.pos;
        s16 l_restartAngle = orig.angle.y;
        
        u8 playerNo = daTagChgRestart_prm::getPlayerNo(this);
        if (playerNo != 0xFF) {
            dStage_roomStatus_c* roomStatusDt = dComIfGp_roomControl_getStatusRoomDt(fopAcM_GetRoomNo(this));
            stage_actor_class* actor = roomStatusDt->mRoomDt.getPlayer();
            stage_actor_data_class* actor_data = actor->mEntries;
            int entryNum = actor->mEntryNum;

            do {
                actor_data++;
            }
            while (entryNum > 0 && actor->mEntryNum > playerNo && actor_data != 0);
            
            l_restartPos = actor_data->mSpawnPos;
            l_restartAngle = actor_data->mAngle.y;
        }
        
        s32 l_roomNo = fopAcM_GetRoomNo(player);
        dComIfGs_setRestartRoom(l_restartPos,l_restartAngle,l_roomNo);
        i_fopAcM_onSwitch(this,daTagChgRestart_prm::getSwNo(this));
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm s32 daTagChgRestart_c::execute() {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_chgrestart/d_a_tag_chgrestart/execute__17daTagChgRestart_cFv.s"
}
#pragma pop
#endif

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
static s32 daTagChgRestart_Create(fopAc_ac_c* param_0) {
    return static_cast<daTagChgRestart_c*>(param_0)->create();
}

/* ############################################################################################## */
/* 80D56B00-80D56B20 -00001 0020+00 1/0 0/0 0/0 .data            l_daTagChgRestart_Method */
static actor_method_class l_daTagChgRestart_Method = {
    (process_method_func)daTagChgRestart_Create,
    (process_method_func)daTagChgRestart_Delete,
    (process_method_func)daTagChgRestart_Execute
};

/* 80D56B20-80D56B50 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_ChgRestart */
extern actor_process_profile_definition g_profile_Tag_ChgRestart = {
    -3,                         // mLayerID
    7,                          // mListID
    -3,                         // mListPrio
    PROC_Tag_ChgRestart,        // mProcName
    &g_fpcLf_Method.mBase,      // mSubMtd
    sizeof(daTagChgRestart_c),  // mSize
    0,                          // mSizeOther
    0,                          // mParameters
    &g_fopAc_Method.base,       // mSubMtd
    0x024F,                     // mPriority
    &l_daTagChgRestart_Method,  // mSubMtd
    0x00040000,                 // mStatus
    0,                          // mActorType
    0x0E                        // mCullType
};