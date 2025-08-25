// Translation Unit: d_a_tag_lightball

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_lightball.h"
#include "d/d_com_inf_game.h"
#include "d/d_procname.h"

/* 80D5A7F8-80D5A818 000078 0020+00 1/1 0/0 0/0 .text   initBaseMtx__16daTagLightBall_cFv */
void daTagLightBall_c::initBaseMtx() {
    setBaseMtx();
}

/* 80D5A818-80D5A870 000098 0058+00 1/1 0/0 0/0 .text   setBaseMtx__16daTagLightBall_cFv */
void daTagLightBall_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
}

/* 80D5A870-80D5A9B8 0000F0 0148+00 1/1 0/0 0/0 .text   Create__16daTagLightBall_cFv */
int daTagLightBall_c::Create() {
    initBaseMtx();
    u8 swbit = getSwBit();
    if (fopAcM_GetRoomNo(this) == 7) {
        if (!fopAcM_isSwitch(this, 70)) {
            fopAcM_offSwitch(this, swbit);
        }
    }

    mInfluence.mPos = current.pos;
    mInfluence.field_0xc = scale.x * 100.0f;

    if (swbit != 0xFF) {
        if (getType() == 15) {
            if (fopAcM_isSwitch(this, swbit)) {
                dKy_dalkmist_inf_set(&mInfluence);
                mInfSet = true;
            }
        } else {
            if (!fopAcM_isSwitch(this, swbit)) {
                dKy_dalkmist_inf_set(&mInfluence);
                mInfSet = true;
            }
        }
    }

    field_0x57c = fopAcM_isSwitch(this, swbit);
    return 1;
}

/* 80D5A9B8-80D5AA20 000238 0068+00 1/1 0/0 0/0 .text   create__16daTagLightBall_cFv */
int daTagLightBall_c::create() {
    fopAcM_SetupActor(this, daTagLightBall_c);

    if (!Create()) {
        return cPhs_ERROR_e;
    }

    return cPhs_COMPLEATE_e;
}

/* 80D5AA20-80D5ABA0 0002A0 0180+00 1/1 0/0 0/0 .text   execute__16daTagLightBall_cFv */
int daTagLightBall_c::execute() {
    u8 swbit = getSwBit();
    if (swbit != 0xFF) {
        if (getType() == 15) {
            if (field_0x57c && !fopAcM_isSwitch(this, swbit)) {
                dKy_dalkmist_inf_cut(&mInfluence);
                mInfSet = false;
            } else if (!field_0x57c && fopAcM_isSwitch(this, swbit)) {
                dKy_dalkmist_inf_set(&mInfluence);
                mInfSet = true;
            }
        } else if (!field_0x57c && fopAcM_isSwitch(this, swbit)) {
            dKy_dalkmist_inf_cut(&mInfluence);
            mInfSet = false;
        } else if (field_0x57c && !fopAcM_isSwitch(this, swbit)) {
            dKy_dalkmist_inf_set(&mInfluence);
            mInfSet = true;
        }
    }

    mInfluence.mPos = current.pos;
    field_0x57c = fopAcM_isSwitch(this, swbit);
    return 1;
}

/* 80D5ABA0-80D5ABA8 000420 0008+00 1/1 0/0 0/0 .text   draw__16daTagLightBall_cFv */
int daTagLightBall_c::draw() {
    return 1;
}

/* 80D5ABA8-80D5ABF0 000428 0048+00 1/1 0/0 0/0 .text   _delete__16daTagLightBall_cFv */
int daTagLightBall_c::_delete() {
    if (mInfSet) {
        dKy_dalkmist_inf_cut(&mInfluence);
        mInfSet = false;
    }

    return 1;
}

/* 80D5ABF0-80D5AC10 000470 0020+00 1/0 0/0 0/0 .text   daTagLightBall_Draw__FP16daTagLightBall_c */
static int daTagLightBall_Draw(daTagLightBall_c* i_this) {
    return i_this->draw();
}

/* 80D5AC10-80D5AC30 000490 0020+00 1/0 0/0 0/0 .text   daTagLightBall_Execute__FP16daTagLightBall_c
 */
static int daTagLightBall_Execute(daTagLightBall_c* i_this) {
    return i_this->execute();
}

/* 80D5AC30-80D5AC50 0004B0 0020+00 1/0 0/0 0/0 .text   daTagLightBall_Delete__FP16daTagLightBall_c
 */
static int daTagLightBall_Delete(daTagLightBall_c* i_this) {
    return i_this->_delete();
}

/* 80D5AC50-80D5AC70 0004D0 0020+00 1/0 0/0 0/0 .text   daTagLightBall_Create__FP10fopAc_ac_c */
static int daTagLightBall_Create(fopAc_ac_c* i_this) {
    return static_cast<daTagLightBall_c*>(i_this)->create();
}

/* ############################################################################################## */
/* 80D5AC7C-80D5AC9C -00001 0020+00 1/0 0/0 0/0 .data   l_daTagLightBall_Method */
static actor_method_class l_daTagLightBall_Method = {
    (process_method_func)daTagLightBall_Create,  (process_method_func)daTagLightBall_Delete,
    (process_method_func)daTagLightBall_Execute, (process_method_func)NULL,
    (process_method_func)daTagLightBall_Draw,
};

/* 80D5AC9C-80D5ACCC -00001 0030+00 0/0 0/0 1/0 .data   g_profile_Tag_LightBall */
extern actor_process_profile_definition g_profile_Tag_LightBall = {
    fpcLy_CURRENT_e,           // mLayerID
    7,                         // mListID
    fpcPi_CURRENT_e,           // mListPrio
    PROC_Tag_LightBall,        // mProcName
    &g_fpcLf_Method.base,     // sub_method
    sizeof(daTagLightBall_c),  // mSize
    0,                         // mSizeOther
    0,                         // mParameters
    &g_fopAc_Method.base,      // sub_method
    547,                       // mPriority
    &l_daTagLightBall_Method,  // sub_method
    0x40100,                   // mStatus
    fopAc_ACTOR_e,             // mActorType
    fopAc_CULLBOX_CUSTOM_e,    // cullType
};
