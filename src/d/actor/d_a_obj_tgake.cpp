/**
 * d_a_obj_tgake.cpp
 * Howling Cliff
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_tgake.h"
#include "d/d_bg_w.h"
#include "d/d_com_inf_game.h"
#include "d/d_procname.h"

/* 80D0BC18-80D0BC54 000078 003C+00 1/1 0/0 0/0 .text            initBaseMtx__11daObjGake_cFv */
void daObjGake_c::initBaseMtx() {
    mpModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80D0BC54-80D0BCB8 0000B4 0064+00 1/1 0/0 0/0 .text            setBaseMtx__11daObjGake_cFv */
void daObjGake_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);

    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80D0BCB8-80D0BD30 000118 0078+00 1/0 0/0 0/0 .text            Create__11daObjGake_cFv */
int daObjGake_c::Create() {
    mEventBit1 = getEventBit1();
    mEventBit2 = getEventBit2();
    eventInfo.setIdx(getType());

    initBaseMtx();
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    fopAcM_setCullSizeBox2(this, mpModel->getModelData());

    MoveBGExecute();
    return 1;
}

/* 80D0C144-80D0C148 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "A_TGake";

/* 80D0BD30-80D0BDA0 000190 0070+00 1/0 0/0 0/0 .text            CreateHeap__11daObjGake_cFv */
int daObjGake_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 4);
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    return 1;
}

/* 80D0BDA0-80D0BE24 000200 0084+00 1/1 0/0 0/0 .text            create1st__11daObjGake_cFv */
int daObjGake_c::create1st() {
    int phase = dComIfG_resLoad(&mPhase, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        phase = MoveBGCreate(l_arcName, 7, dBgS_MoveBGProc_TypicalRotY, 0x4000, NULL);
        if (phase == cPhs_ERROR_e) {
            return phase;
        }
    }

    return phase;
}

/* 80D0BE24-80D0BF7C 000284 0158+00 1/0 0/0 0/0 .text            Execute__11daObjGake_cFPPA3_A4_f */
int daObjGake_c::Execute(Mtx** param_0) {
    if ((mEventBit2 != 0x3FF &&
         dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[mEventBit2])) ||
        (mEventBit1 != 0x3FF &&
         !dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[mEventBit1])))
    {
        if (mpBgW != NULL && mpBgW->ChkUsed()) {
            dComIfG_Bgsp().Release(mpBgW);
        }

        mHide = true;
        return 1;
    }

    if (mEventBit1 != 0x3FF && dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[mEventBit1])) {
        if (mpBgW != NULL && !mpBgW->ChkUsed()) {
            dComIfG_Bgsp().Regist(mpBgW, this);
        }

        mHide = false;
        return 1;
    }

    *param_0 = &mBgMtx;
    return 1;
}

/* 80D0BF7C-80D0C034 0003DC 00B8+00 1/0 0/0 0/0 .text            Draw__11daObjGake_cFv */
int daObjGake_c::Draw() {
    if (mHide) {
        return 1;
    }

    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();

    return 1;
}

/* 80D0C034-80D0C068 000494 0034+00 1/0 0/0 0/0 .text            Delete__11daObjGake_cFv */
int daObjGake_c::Delete() {
    dComIfG_resDelete(&mPhase, l_arcName);
    return 1;
}

/* 80D0C068-80D0C0C8 0004C8 0060+00 1/0 0/0 0/0 .text daObjGake_create1st__FP11daObjGake_c */
static int daObjGake_create1st(daObjGake_c* i_this) {
    fopAcM_SetupActor(i_this, daObjGake_c);

    return i_this->create1st();
}

/* 80D0C0C8-80D0C0E8 000528 0020+00 1/0 0/0 0/0 .text daObjGake_MoveBGDelete__FP11daObjGake_c */
static int daObjGake_MoveBGDelete(daObjGake_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80D0C0E8-80D0C108 000548 0020+00 1/0 0/0 0/0 .text daObjGake_MoveBGExecute__FP11daObjGake_c */
static int daObjGake_MoveBGExecute(daObjGake_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80D0C108-80D0C134 000568 002C+00 1/0 0/0 0/0 .text daObjGake_MoveBGDraw__FP11daObjGake_c */
static int daObjGake_MoveBGDraw(daObjGake_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80D0C148-80D0C168 -00001 0020+00 1/0 0/0 0/0 .data            daObjGake_METHODS */
static actor_method_class daObjGake_METHODS = {
    (process_method_func)daObjGake_create1st,     (process_method_func)daObjGake_MoveBGDelete,
    (process_method_func)daObjGake_MoveBGExecute, (process_method_func)NULL,
    (process_method_func)daObjGake_MoveBGDraw,
};

/* 80D0C168-80D0C198 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Gake */
extern actor_process_profile_definition g_profile_Obj_Gake = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_Obj_Gake,
    &g_fpcLf_Method.base,
    sizeof(daObjGake_c),
    0,
    0,
    &g_fopAc_Method.base,
    568,
    &daObjGake_METHODS,
    0x40100,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
