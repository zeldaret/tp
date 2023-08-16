/**
 * d_a_tag_mist.cpp
 *
 */

#include "rel/d/a/tag/d_a_tag_mist/d_a_tag_mist.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "d/com/d_com_inf_game.h"
#include "d/d_procname.h"

/* 8048F258-8048F2C4 000078 006C+00 1/1 0/0 0/0 .text            offSw__11daTagMist_cFv */
void daTagMist_c::offSw() {
    u8 sw_no_num;
    u8 top_sw_no;

    top_sw_no = daTagMist_prm::getTopSwNo(this);
    sw_no_num = daTagMist_prm::getSwNoNum(this);

    for (int i = 0; i < sw_no_num; i++) {
        i_fopAcM_offSwitch(this, top_sw_no + i);
    }
}

/* 8048F2C4-8048F310 0000E4 004C+00 1/1 0/0 0/0 .text            onMySw__11daTagMist_cFv */
void daTagMist_c::onMySw() {
    u32 my_sw_no;
    u32 top_sw_no;

    top_sw_no = daTagMist_prm::getTopSwNo(this);
    my_sw_no = daTagMist_prm::getMySwNo(this);

    if (my_sw_no != 0xFF) {
        i_fopAcM_onSwitch(this, top_sw_no + my_sw_no);
    }
}

/* 8048F310-8048F370 000130 0060+00 1/1 0/0 0/0 .text            isMySw__11daTagMist_cFv */
BOOL daTagMist_c::isMySw() {
    u32 my_sw_no;
    u32 top_sw_no;

    top_sw_no = daTagMist_prm::getTopSwNo(this);
    my_sw_no = daTagMist_prm::getMySwNo(this);

    if (my_sw_no != 0xFF && i_fopAcM_isSwitch(this, top_sw_no + my_sw_no)) {
        return TRUE;
    } else {
        return FALSE;
    }
}

/* 8048F370-8048F444 000190 00D4+00 1/1 0/0 0/0 .text            Create__11daTagMist_cFv */
int daTagMist_c::Create() {
    mVertices[0].x = mScale.x * -50.0f;
    mVertices[0].z = mScale.z * -50.0f;

    mVertices[1].x = mScale.x * 50.0f;
    mVertices[1].z = mScale.z * -50.0f;

    mVertices[2].x = mScale.x * 50.0f;
    mVertices[2].z = mScale.z * 50.0f;

    mVertices[3].x = mScale.x * -50.0f;
    mVertices[3].z = mScale.z * 50.0f;

    mVertices[3].y = 0.0f;
    mVertices[2].y = 0.0f;
    mVertices[1].y = 0.0f;
    mVertices[0].y = 0.0f;

    if (isMySw()) {
        setPlayerNo(daTagMist_prm::getExitNo(this));
    }

    mPlayerTouched = false;
    return 1;
}

/* 8048F444-8048F518 000264 00D4+00 1/1 0/0 0/0 .text            create__11daTagMist_cFv */
int daTagMist_c::create() {
    fopAcM_SetupActor(this, daTagMist_c);

    if (!mInitParams) {
        mInitParams = true;

        field_0x5a2 = orig.angle.x;
        field_0x5a4 = orig.angle.z;

        orig.angle.z = 0;
        orig.angle.x = 0;
        current.angle.z = 0;
        current.angle.x = 0;
        shape_angle.z = 0;
        shape_angle.x = 0;
    }

    if (!Create()) {
        return cPhs_ERROR_e;
    }

    return cPhs_COMPLEATE_e;
}

/* 8048F558-8048F690 000378 0138+00 1/1 0/0 0/0 .text            execute__11daTagMist_cFv */
int daTagMist_c::execute() {
    if (i_fopAcM_isSwitch(this, daTagMist_prm::getSwNo2(this))) {
        return 1;
    }

    fopAc_ac_c* player_p = dComIfGp_getPlayer(0);
    cXyz player_dist(player_p->current.pos);
    player_dist -= orig.pos;

    mDoMtx_stack_c::YrotS(-current.angle.y);
    mDoMtx_stack_c::multVec(&player_dist, &player_dist);

    u8 player_inside = (mVertices[0].x < player_dist.x && mVertices[0].z < player_dist.z) &&
                       (mVertices[2].x > player_dist.x && mVertices[2].z > player_dist.z);

    if (player_inside && !mPlayerTouched) {
        offSw();
        onMySw();
        mPlayerNo = daTagMist_prm::getExitNo(this);
    }

    mPlayerTouched = player_inside;
    return 1;
}

/* 8048F690-8048F698 0004B0 0008+00 1/1 0/0 0/0 .text            _delete__11daTagMist_cFv */
int daTagMist_c::_delete() {
    return 1;
}

/* 8048F698-8048F6B8 0004B8 0020+00 1/0 0/0 0/0 .text            daTagMist_Execute__FP11daTagMist_c
 */
static int daTagMist_Execute(daTagMist_c* i_this) {
    return i_this->execute();
}

/* 8048F6B8-8048F6D8 0004D8 0020+00 1/0 0/0 0/0 .text            daTagMist_Delete__FP11daTagMist_c
 */
static int daTagMist_Delete(daTagMist_c* i_this) {
    return i_this->_delete();
}

/* 8048F6D8-8048F6F8 0004F8 0020+00 1/0 0/0 0/0 .text            daTagMist_Create__FP10fopAc_ac_c */
static int daTagMist_Create(fopAc_ac_c* i_this) {
    return static_cast<daTagMist_c*>(i_this)->create();
}

/* ############################################################################################## */
/* 8048F70C-8048F72C -00001 0020+00 1/0 0/0 0/0 .data            l_daTagMist_Method */
static actor_method_class l_daTagMist_Method = {
    (process_method_func)daTagMist_Create,
    (process_method_func)daTagMist_Delete,
    (process_method_func)daTagMist_Execute,
    (process_method_func)NULL,
    (process_method_func)NULL,
};

/* 8048F72C-8048F75C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_Mist */
extern actor_process_profile_definition g_profile_Tag_Mist = {
    -3,
    7,
    -3,
    PROC_Tag_Mist,
    &g_fpcLf_Method.mBase,
    sizeof(daTagMist_c),
    0,
    0,
    &g_fopAc_Method.base,
    292,
    &l_daTagMist_Method,
    0x40000,
    0,
    14,
};
