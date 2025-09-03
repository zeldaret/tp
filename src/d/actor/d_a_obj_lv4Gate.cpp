/**
 * d_a_obj_lv4Gate.cpp
 * Arbiter's Grounds Generic Gate
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv4Gate.h"
#include "d/d_com_inf_game.h"
#include "d/d_procname.h"

/* 80C5F52C-80C5F538 000014 000C+00 3/3 0/0 0/0 .bss             l_HIO */
static daLv4Gate_HIO_c l_HIO;

/* 80C5EB6C-80C5EB9C 0000EC 0030+00 1/1 0/0 0/0 .text            __ct__15daLv4Gate_HIO_cFv */
daLv4Gate_HIO_c::daLv4Gate_HIO_c() {
    mMoveSpeed = 2.0f;
    mShockStrength = 3;
}

/* 80C5EBE4-80C5EC80 000164 009C+00 2/2 0/0 0/0 .text            setBaseMtx__11daLv4Gate_cFv */
void daLv4Gate_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mDoMtx_stack_c::transM(mMoveValue, 0.0f, 0.0f);

    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80C5EC80-80C5ECEC 000200 006C+00 1/0 0/0 0/0 .text            CreateHeap__11daLv4Gate_cFv */
int daLv4Gate_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("L4Gate", 4);

    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    return 1;
}

/* 80C5ECEC-80C5EE54 00026C 0168+00 1/1 0/0 0/0 .text            create__11daLv4Gate_cFv */
int daLv4Gate_c::create() {
    fopAcM_SetupActor(this, daLv4Gate_c);

    int phase = dComIfG_resLoad(&mPhase, "L4Gate");
    if (phase == cPhs_COMPLEATE_e) {
        if (MoveBGCreate("L4Gate", 7, dBgS_MoveBGProc_TypicalRotY, 0x2300, NULL) == cPhs_ERROR_e) {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());

        mInitMove = fopAcM_isSwitch(this, fopAcM_GetParam(this) & 0xFF);
        mMoveType = fopAcM_GetParam(this) >> 8;

        f32 target;
        // type 0 is a right side gate, otherwise a left side gate
        if (mMoveType == 0) {
            target = -250.0f;
        } else {
            target = 250.0f;
        }

        mMoveTarget = target;
        mMoveValue = 0.0f;
        mGateOpened = false;

        if (mInitMove) {
            mMoveValue = mMoveTarget;
            mGateOpened = true;
            init_modeMoveEnd();
        } else {
            init_modeWait();
        }

        setBaseMtx();
    }

    return phase;
}

/* 80C5EE54-80C5EEA4 0003D4 0050+00 1/0 0/0 0/0 .text            Execute__11daLv4Gate_cFPPA3_A4_f */
int daLv4Gate_c::Execute(Mtx** i_mtxP) {
    moveGate();
    *i_mtxP = &mpModel->getBaseTRMtx();
    setBaseMtx();

    return 1;
}

/* 80C5EEA4-80C5EF48 000424 00A4+00 1/1 0/0 0/0 .text            moveGate__11daLv4Gate_cFv */
void daLv4Gate_c::moveGate() {
    typedef void (daLv4Gate_c::*modeFunc)();
    static modeFunc mode_proc[] = {&daLv4Gate_c::modeWait, &daLv4Gate_c::modeMove,
                                   &daLv4Gate_c::modeMoveEnd};

    (this->*mode_proc[mMode])();
}

/* 80C5EF48-80C5EF54 0004C8 000C+00 1/1 0/0 0/0 .text            init_modeWait__11daLv4Gate_cFv */
void daLv4Gate_c::init_modeWait() {
    mMode = MODE_WAIT_e;
}

/* 80C5EF54-80C5EFB0 0004D4 005C+00 1/0 0/0 0/0 .text            modeWait__11daLv4Gate_cFv */
void daLv4Gate_c::modeWait() {
    mInitMove = fopAcM_isSwitch(this, fopAcM_GetParam(this) & 0xFF);
    if (mInitMove) {
        init_modeMove();
    }
}

/* 80C5EFB0-80C5EFBC 000530 000C+00 1/1 0/0 0/0 .text            init_modeMove__11daLv4Gate_cFv */
void daLv4Gate_c::init_modeMove() {
    mMode = MODE_MOVE_e;
}

/* 80C5EFBC-80C5F0C4 00053C 0108+00 1/0 0/0 0/0 .text            modeMove__11daLv4Gate_cFv */
void daLv4Gate_c::modeMove() {
    mDoMtx_stack_c::ZXYrotS(shape_angle.x, shape_angle.y, shape_angle.z);

    cXyz sound_pos(mMoveTarget, 0.0f, 0.0f);
    mDoMtx_stack_c::multVec(&sound_pos, &sound_pos);
    sound_pos += current.pos;

    mDoAud_seStartLevel(Z2SE_OBJ_GORONGATE_MOVE, &sound_pos, 0,
                          dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

    if (cLib_addCalc(&mMoveValue, mMoveTarget, 0.2f, l_HIO.mMoveSpeed, 0.5f) == 0.0f) {
        init_modeMoveEnd();
    }
}

/* 80C5F0C4-80C5F1E4 000644 0120+00 2/2 0/0 0/0 .text            init_modeMoveEnd__11daLv4Gate_cFv
 */
void daLv4Gate_c::init_modeMoveEnd() {
    if (!mGateOpened) {
        mDoMtx_stack_c::ZXYrotS(shape_angle.x, shape_angle.y, shape_angle.z);

        cXyz sound_pos(mMoveTarget, 0.0f, 0.0f);
        mDoMtx_stack_c::multVec(&sound_pos, &sound_pos);
        sound_pos += current.pos;

        mDoAud_seStart(Z2SE_OBJ_GORONGATE_STOP, &sound_pos, 0,
                       dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

        dComIfGp_getVibration().StartShock(l_HIO.mShockStrength, 15, cXyz(0.0f, 1.0f, 0.0f));
    }

    mMode = MODE_MOVE_END_e;
}

/* 80C5F1E4-80C5F1E8 000764 0004+00 1/0 0/0 0/0 .text            modeMoveEnd__11daLv4Gate_cFv */
void daLv4Gate_c::modeMoveEnd() {}

/* 80C5F1E8-80C5F28C 000768 00A4+00 1/0 0/0 0/0 .text            Draw__11daLv4Gate_cFv */
int daLv4Gate_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80C5F28C-80C5F2BC 00080C 0030+00 1/0 0/0 0/0 .text            Delete__11daLv4Gate_cFv */
int daLv4Gate_c::Delete() {
    dComIfG_resDelete(&mPhase, "L4Gate");
    return 1;
}

/* 80C5F2BC-80C5F2E8 00083C 002C+00 1/0 0/0 0/0 .text            daLv4Gate_Draw__FP11daLv4Gate_c */
static int daLv4Gate_Draw(daLv4Gate_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C5F2E8-80C5F308 000868 0020+00 1/0 0/0 0/0 .text            daLv4Gate_Execute__FP11daLv4Gate_c
 */
static int daLv4Gate_Execute(daLv4Gate_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C5F308-80C5F328 000888 0020+00 1/0 0/0 0/0 .text            daLv4Gate_Delete__FP11daLv4Gate_c
 */
static int daLv4Gate_Delete(daLv4Gate_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C5F328-80C5F348 0008A8 0020+00 1/0 0/0 0/0 .text            daLv4Gate_Create__FP10fopAc_ac_c */
static int daLv4Gate_Create(fopAc_ac_c* i_this) {
    return static_cast<daLv4Gate_c*>(i_this)->create();
}

/* 80C5F484-80C5F4A4 -00001 0020+00 1/0 0/0 0/0 .data            l_daLv4Gate_Method */
static actor_method_class l_daLv4Gate_Method = {
    (process_method_func)daLv4Gate_Create,  (process_method_func)daLv4Gate_Delete,
    (process_method_func)daLv4Gate_Execute, (process_method_func)NULL,
    (process_method_func)daLv4Gate_Draw,
};

/* 80C5F4A4-80C5F4D4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv4Gate */
extern actor_process_profile_definition g_profile_Obj_Lv4Gate = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_Obj_Lv4Gate,
    &g_fpcLf_Method.base,
    sizeof(daLv4Gate_c),
    0,
    0,
    &g_fopAc_Method.base,
    637,
    &l_daLv4Gate_Method,
    0x40000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
