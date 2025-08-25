/**
 * d_a_obj_snowEffTag.cpp
 * Snow Effect Generator Tag
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_snowEffTag.h"
#include "SSystem/SComponent/c_math.h"
#include "d/actor/d_a_player.h"
#include "d/d_com_inf_game.h"
#include "d/d_procname.h"

/* 80CDF0AC-80CDF0E4 0000EC 0038+00 1/1 0/0 0/0 .text            __ct__18daSnowEffTag_HIO_cFv */
daSnowEffTag_HIO_c::daSnowEffTag_HIO_c() {
    field_0x4 = 20;
    mDisplayRange = false;
    mTop = 1;
    mBottom = 1;
}

/* 80CDF12C-80CDF184 00016C 0058+00 1/1 0/0 0/0 .text            setBaseMtx__14daSnowEffTag_cFv */
void daSnowEffTag_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
}

/* 80CDF184-80CDF2B8 0001C4 0134+00 1/1 0/0 0/0 .text            create__14daSnowEffTag_cFv */
int daSnowEffTag_c::create() {
    fopAcM_SetupActor(this, daSnowEffTag_c);

    mMaxSize = scale.x * 100.0f;

    switch (getArg0()) {
    case -1:
    case 0:
        mSize = mMaxSize;
        break;
    case 1:
        mSize = mMaxSize * 0.5f;
        break;
    case 2:
        mSize = mMaxSize * 0.25f;
        break;
    case 3:
        mSize = mMaxSize * 0.125f;
        break;
    }

    s16 tan = cM_atan2s(mMaxSize - mSize, scale.y * 100.0f);
    field_0x574 = cM_ssin(tan) / cM_scos(tan);
    mPlayedSound = false;

    setBaseMtx();
    return cPhs_COMPLEATE_e;
}

/* 80CDF2B8-80CDF498 0002F8 01E0+00 1/1 0/0 0/0 .text            playerAreaCheck__14daSnowEffTag_cFv
 */
bool daSnowEffTag_c::playerAreaCheck() {
    fopAc_ac_c* player_p = dComIfGp_getPlayer(0);
    bool in_area = false;

    if (player_p->current.pos.y < current.pos.y ||
        player_p->current.pos.y > current.pos.y + scale.y * 100.0f)
    {
        return false;
    } else {
        cXyz pos_diff = current.pos - player_p->current.pos;
        f32 dist_to_player = pos_diff.absXZ();

        // supposed to be std::fabs, but it changes regalloc
        if (dist_to_player <=
            mMaxSize - field_0x574 * fabsf(player_p->current.pos.y - current.pos.y))
        {
            in_area = true;
        } else {
            mPlayedSound = false;
        }
    }

    return in_area;
}

/* 80CDF498-80CDF5E4 0004D8 014C+00 1/1 0/0 0/0 .text            Execute__14daSnowEffTag_cFv */
int daSnowEffTag_c::Execute() {
    if (playerAreaCheck() == true) {
        if (!mPlayedSound) {
            mDoAud_seStart(Z2SE_OBJ_SNOWTREE_HIT, &current.pos, 0,
                           dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
            mPlayedSound = true;
        }

        mEmitterID = dComIfGp_particle_set(mEmitterID, 0x886D, &current.pos, NULL, NULL);

        JPABaseEmitter* emitter_p = dComIfGp_particle_getEmitter(mEmitterID);
        if (emitter_p != NULL) {
            MtxP link_mtx = daPy_getLinkPlayerActorClass()->getLinkBackBone1Matrix();
            emitter_p->setGlobalRTMatrix(link_mtx);
        }
    }

    return 1;
}

/* 80CDF5E4-80CDF5EC 000624 0008+00 1/1 0/0 0/0 .text            Draw__14daSnowEffTag_cFv */
int daSnowEffTag_c::Draw() {
    return 1;
}

/* 80CDF5EC-80CDF5F4 00062C 0008+00 1/1 0/0 0/0 .text            Delete__14daSnowEffTag_cFv */
int daSnowEffTag_c::Delete() {
    return 1;
}

/* 80CDF5F4-80CDF614 000634 0020+00 1/0 0/0 0/0 .text daSnowEffTag_Draw__FP14daSnowEffTag_c */
static int daSnowEffTag_Draw(daSnowEffTag_c* i_this) {
    return i_this->Draw();
}

/* 80CDF614-80CDF634 000654 0020+00 1/0 0/0 0/0 .text daSnowEffTag_Execute__FP14daSnowEffTag_c */
static int daSnowEffTag_Execute(daSnowEffTag_c* i_this) {
    return i_this->Execute();
}

/* 80CDF634-80CDF654 000674 0020+00 1/0 0/0 0/0 .text daSnowEffTag_Delete__FP14daSnowEffTag_c */
static int daSnowEffTag_Delete(daSnowEffTag_c* i_this) {
    return i_this->Delete();
}

/* 80CDF654-80CDF674 000694 0020+00 1/0 0/0 0/0 .text            daSnowEffTag_Create__FP10fopAc_ac_c
 */
static int daSnowEffTag_Create(fopAc_ac_c* i_this) {
    return static_cast<daSnowEffTag_c*>(i_this)->create();
}

/* 80CDF674-80CDF6D0 0006B4 005C+00 2/1 0/0 0/0 .text            __dt__18daSnowEffTag_HIO_cFv */
daSnowEffTag_HIO_c::~daSnowEffTag_HIO_c() {}

/* 80CDF7D4-80CDF7DC 000014 0008+00 1/1 0/0 0/0 .bss             l_HIO */
static daSnowEffTag_HIO_c l_HIO;

/* 80CDF758-80CDF778 -00001 0020+00 1/0 0/0 0/0 .data            l_daSnowEffTag_Method */
static actor_method_class l_daSnowEffTag_Method = {
    (process_method_func)daSnowEffTag_Create,  (process_method_func)daSnowEffTag_Delete,
    (process_method_func)daSnowEffTag_Execute, (process_method_func)NULL,
    (process_method_func)daSnowEffTag_Draw,
};

/* 80CDF778-80CDF7A8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_SnowEff */
extern actor_process_profile_definition g_profile_Tag_SnowEff = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_Tag_SnowEff,
    &g_fpcLf_Method.base,
    sizeof(daSnowEffTag_c),
    0,
    0,
    &g_fopAc_Method.base,
    656,
    &l_daSnowEffTag_Method,
    0x44000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
