/**
* @file d_a_obj_lv4prelvtr.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv4prelvtr.h"
#include "d/d_com_inf_game.h"

/* 80C68B98-80C68B9C -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "PRElvtr";

/* 80C685F8-80C68688 000078 0090+00 1/1 0/0 0/0 .text            create1st__14daObjPRElvtr_cFv */
int daObjPRElvtr_c::create1st() {
    int phase = dComIfG_resLoad(this, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        setMtx();
        phase = MoveBGCreate(l_arcName, 7, dBgS_MoveBGProc_Trans, 0x3680, &mMtx1);
        if (phase == cPhs_ERROR_e) {
            return phase;
        }
    }
    return phase;
}

/* 80C68688-80C686F8 000108 0070+00 2/2 0/0 0/0 .text            setMtx__14daObjPRElvtr_cFv */
void daObjPRElvtr_c::setMtx() {
    PSMTXTrans(mDoMtx_stack_c::get(), current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(current.angle.y);
    PSMTXCopy(mDoMtx_stack_c::get(), mMtx2);
    PSMTXCopy(mDoMtx_stack_c::get(), mMtx1);
}

/* 80C686F8-80C68768 000178 0070+00 1/0 0/0 0/0 .text            CreateHeap__14daObjPRElvtr_cFv */
int daObjPRElvtr_c::CreateHeap() {
    J3DModelData* model_data = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 4);
    mpModel = mDoExt_J3DModel__create(model_data, 0x80000, 0x11000084);
    return mpModel != NULL ? 1 : 0;
}

/* 80C68B68-80C68B80 000000 0018+00 1/1 0/0 0/0 .rodata          l_cull_box */
static const cull_box l_cull_box = {
    {-725.0f, -315.0f, -725.0f},
    {725.0f, -15.0f, 725.0f},
};

/* 80C68768-80C687D0 0001E8 0068+00 1/0 0/0 0/0 .text            Create__14daObjPRElvtr_cFv */
int daObjPRElvtr_c::Create() {
    mpModel->setBaseTRMtx(mMtx2);
    fopAcM_SetMtx(this, mMtx2);
    fopAcM_setCullSizeBox(this, l_cull_box.min.x, l_cull_box.min.y, l_cull_box.min.z,
                          l_cull_box.max.x, l_cull_box.max.y, l_cull_box.max.z);
    return 1;
}

/* 80C687D0-80C68844 000250 0074+00 1/1 0/0 0/0 .text            searchObjSwTurn__FPvPv */
static fopAc_ac_c* searchObjSwTurn(void* i_actor1, void* i_actor2) {
    if (i_actor1 != NULL && fopAcM_IsActor(i_actor1) &&
        fopAcM_GetProfName(i_actor1) == PROC_Obj_SwTurn)
    {
        if (((daObjSwTurn_c*)i_actor1)->getSwNo() == ((daObjPRElvtr_c*)i_actor2)->getSwNo()) {
            return (fopAc_ac_c*)i_actor1;
        }
    }

    return NULL;
}

/* 80C68844-80C68944 0002C4 0100+00 1/0 0/0 0/0 .text            Execute__14daObjPRElvtr_cFPPA3_A4_f
 */
int daObjPRElvtr_c::Execute(Mtx** i_mtx) {
    daObjSwTurn_c* sw_turn =
        (daObjSwTurn_c*)fopAcM_Search((fopAcIt_JudgeFunc)searchObjSwTurn, this);

    if (sw_turn != NULL) {
        field_0x60c = sw_turn->getRotateAngle();
        f32 fVar1 = (field_0x60c / 16383.0f) * 900.0f;
        current.pos.y = home.pos.y - fVar1;
        sw_turn->current.pos.y = sw_turn->home.pos.y - fVar1;
    }

    setMtx();
    mpModel->setBaseTRMtx(mMtx2);
    *i_mtx = &mMtx1;

    return 1;
}

/* 80C68944-80C689E8 0003C4 00A4+00 1/0 0/0 0/0 .text            Draw__14daObjPRElvtr_cFv */
int daObjPRElvtr_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80C689E8-80C68A24 000468 003C+00 1/0 0/0 0/0 .text            Delete__14daObjPRElvtr_cFv */
int daObjPRElvtr_c::Delete() {
    dComIfG_resDelete(this, l_arcName);
    return 1;
}

/* 80C68A24-80C68A84 0004A4 0060+00 1/0 0/0 0/0 .text daObjPRElvtr_create1st__FP14daObjPRElvtr_c
 */
static int daObjPRElvtr_create1st(daObjPRElvtr_c* i_this) {
    fopAcM_SetupActor(i_this, daObjPRElvtr_c);
    return i_this->create1st();
}

/* 80C68A84-80C68AA4 000504 0020+00 1/0 0/0 0/0 .text
 * daObjPRElvtr_MoveBGDelete__FP14daObjPRElvtr_c                */
static int daObjPRElvtr_MoveBGDelete(daObjPRElvtr_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C68AA4-80C68AC4 000524 0020+00 1/0 0/0 0/0 .text
 * daObjPRElvtr_MoveBGExecute__FP14daObjPRElvtr_c               */
static int daObjPRElvtr_MoveBGExecute(daObjPRElvtr_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C68AC4-80C68AF0 000544 002C+00 1/0 0/0 0/0 .text daObjPRElvtr_MoveBGDraw__FP14daObjPRElvtr_c
 */
static int daObjPRElvtr_MoveBGDraw(daObjPRElvtr_c* i_this) {
    return i_this->Draw();
}

/* 80C68B9C-80C68BBC -00001 0020+00 1/0 0/0 0/0 .data            daObjPRElvtr_METHODS */
static actor_method_class daObjPRElvtr_METHODS = {
    (process_method_func)daObjPRElvtr_create1st,     (process_method_func)daObjPRElvtr_MoveBGDelete,
    (process_method_func)daObjPRElvtr_MoveBGExecute, 0,
    (process_method_func)daObjPRElvtr_MoveBGDraw,
};

/* 80C68BBC-80C68BEC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_PRElvtr */
extern actor_process_profile_definition g_profile_Obj_PRElvtr = {
    fpcLy_CURRENT_e,         // mLayerID
    3,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_PRElvtr,        // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daObjPRElvtr_c),  // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    665,                     // mPriority
    &daObjPRElvtr_METHODS,   // sub_method
    0x00040100,              // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
