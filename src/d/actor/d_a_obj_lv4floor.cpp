/**
 * d_a_obj_lv4floor.cpp
 * Moving sand-floor in Stallord Arena
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv4floor.h"
#include "d/d_com_inf_game.h"
#include "d/d_procname.h"

/* 80C677F8-80C67834 000078 003C+00 1/1 0/0 0/0 .text            initBaseMtx__15daObjLv4Floor_cFv */
void daObjLv4Floor_c::initBaseMtx() {
    mpModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80C67834-80C678B0 0000B4 007C+00 2/2 0/0 0/0 .text            setBaseMtx__15daObjLv4Floor_cFv */
void daObjLv4Floor_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y + mMoveYPos, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);

    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80C678B0-80C678D4 000130 0024+00 1/0 0/0 0/0 .text            Create__15daObjLv4Floor_cFv */
int daObjLv4Floor_c::Create() {
    initBaseMtx();
    return 1;
}

/* 80C67DBC-80C67DC0 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "P_L4Floor";

/* 80C678D4-80C67944 000154 0070+00 1/0 0/0 0/0 .text            CreateHeap__15daObjLv4Floor_cFv */
int daObjLv4Floor_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 4);
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    return 1;
}

/* 80C67944-80C679E4 0001C4 00A0+00 1/1 0/0 0/0 .text            create1st__15daObjLv4Floor_cFv */
int daObjLv4Floor_c::create1st() {
    int phase = dComIfG_resLoad(&mPhase, l_arcName);
    if (phase != cPhs_COMPLEATE_e) {
        return phase;
    }

    if (fopAcM_isSwitch(this, getSwbit())) {
        return cPhs_ERROR_e;
    }

    phase = MoveBGCreate(l_arcName, 7, dBgS_MoveBGProc_TypicalRotY, 0x4000, NULL);
    if (phase == cPhs_ERROR_e) {
        return phase;
    }

    return phase;
}

/* 80C679E4-80C67A30 000264 004C+00 1/0 0/0 0/0 .text Execute__15daObjLv4Floor_cFPPA3_A4_f */
int daObjLv4Floor_c::Execute(Mtx** param_0) {
    action();
    *param_0 = &mBgMtx;
    setBaseMtx();

    return 1;
}

/* 80C67A30-80C67AD4 0002B0 00A4+00 1/1 0/0 0/0 .text            action__15daObjLv4Floor_cFv */
void daObjLv4Floor_c::action() {
    typedef void (daObjLv4Floor_c::*actionFunc)();
    static actionFunc l_func[] = {&daObjLv4Floor_c::mode_wait, &daObjLv4Floor_c::mode_move,
                                  &daObjLv4Floor_c::mode_dead};

    (this->*l_func[mAction])();
}

/* 80C67AD4-80C67B28 000354 0054+00 1/0 0/0 0/0 .text            mode_wait__15daObjLv4Floor_cFv */
void daObjLv4Floor_c::mode_wait() {
    if (fopAcM_isSwitch(this, getSwbit())) {
        mode_init_move();
    }
}

/* 80C67B28-80C67B40 0003A8 0018+00 1/1 0/0 0/0 .text            mode_init_move__15daObjLv4Floor_cFv
 */
void daObjLv4Floor_c::mode_init_move() {
    speed.y = 0.0f;
    mAction = MODE_MOVE_e;
}

/* 80C67B40-80C67BA8 0003C0 0068+00 1/0 0/0 0/0 .text            mode_move__15daObjLv4Floor_cFv */
void daObjLv4Floor_c::mode_move() {
    cLib_chaseF(&speed.y, 3.8f, 0.08f);

    if (cLib_chaseF(&mMoveYPos, -1500.0f, speed.y)) {
        mode_init_dead();
    }
}

/* 80C67BA8-80C67BB4 000428 000C+00 1/1 0/0 0/0 .text            mode_init_dead__15daObjLv4Floor_cFv
 */
void daObjLv4Floor_c::mode_init_dead() {
    mAction = MODE_DEAD_e;
}

/* 80C67BB4-80C67BD4 000434 0020+00 1/0 0/0 0/0 .text            mode_dead__15daObjLv4Floor_cFv */
void daObjLv4Floor_c::mode_dead() {
    fopAcM_delete(this);
}

/* 80C67BD4-80C67C78 000454 00A4+00 1/0 0/0 0/0 .text            Draw__15daObjLv4Floor_cFv */
int daObjLv4Floor_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80C67C78-80C67CAC 0004F8 0034+00 1/0 0/0 0/0 .text            Delete__15daObjLv4Floor_cFv */
int daObjLv4Floor_c::Delete() {
    dComIfG_resDelete(&mPhase, l_arcName);
    return 1;
}

/* 80C67CAC-80C67D0C 00052C 0060+00 1/0 0/0 0/0 .text daObjLv4Floor_create1st__FP15daObjLv4Floor_c
 */
static int daObjLv4Floor_create1st(daObjLv4Floor_c* i_this) {
    fopAcM_SetupActor(i_this, daObjLv4Floor_c);
    return i_this->create1st();
}

/* 80C67D0C-80C67D2C 00058C 0020+00 1/0 0/0 0/0 .text
 * daObjLv4Floor_MoveBGDelete__FP15daObjLv4Floor_c              */
static int daObjLv4Floor_MoveBGDelete(daObjLv4Floor_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C67D2C-80C67D4C 0005AC 0020+00 1/0 0/0 0/0 .text
 * daObjLv4Floor_MoveBGExecute__FP15daObjLv4Floor_c             */
static int daObjLv4Floor_MoveBGExecute(daObjLv4Floor_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C67D4C-80C67D78 0005CC 002C+00 1/0 0/0 0/0 .text
 * daObjLv4Floor_MoveBGDraw__FP15daObjLv4Floor_c                */
static int daObjLv4Floor_MoveBGDraw(daObjLv4Floor_c* i_this) {
    return i_this->MoveBGDraw();
}

/* ############################################################################################## */
/* 80C67E08-80C67E28 -00001 0020+00 1/0 0/0 0/0 .data            daObjLv4Floor_METHODS */
static actor_method_class daObjLv4Floor_METHODS = {
    (process_method_func)daObjLv4Floor_create1st,
    (process_method_func)daObjLv4Floor_MoveBGDelete,
    (process_method_func)daObjLv4Floor_MoveBGExecute,
    (process_method_func)NULL,
    (process_method_func)daObjLv4Floor_MoveBGDraw,
};

/* 80C67E28-80C67E58 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv4Floor */
extern actor_process_profile_definition g_profile_Obj_Lv4Floor = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_Obj_Lv4Floor,
    &g_fpcLf_Method.base,
    sizeof(daObjLv4Floor_c),
    0,
    0,
    &g_fopAc_Method.base,
    584,
    &daObjLv4Floor_METHODS,
    0x44000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
