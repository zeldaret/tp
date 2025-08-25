/**
 * d_a_obj_lv4PoGate.cpp
 * Arbiter's Grounds Poe Gate
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv4PoGate.h"
#include "d/d_com_inf_game.h"
#include "d/d_procname.h"

/* 80C5FBEC-80C5FC5C 0000EC 0070+00 1/1 0/0 0/0 .text            __ct__17daLv4PoGate_HIO_cFv */
daLv4PoGate_HIO_c::daLv4PoGate_HIO_c() {
    mOpenSpeed = 10.0f;
    mCloseStep1Speed = 10.0f;
    mCloseStep2Speed = 2.0f;
    mCloseStep1Amount = 995.0f;
    mCloseStep2Amount = 980.0f;
    mCloseStep1Wait = 0;
    mCloseStep2Wait = 5;
    mCloseStep3Speed = 0.1f;
    mCloseStep3Max = 45.0f;
    mShockStrength = 3;
}

/* 80C5FCA4-80C5FD40 0001A4 009C+00 2/2 0/0 0/0 .text            setBaseMtx__13daLv4PoGate_cFv */
void daLv4PoGate_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mDoMtx_stack_c::transM(0.0f, mMoveValue, 0.0f);

    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80C5FD40-80C5FDAC 000240 006C+00 1/0 0/0 0/0 .text            CreateHeap__13daLv4PoGate_cFv */
int daLv4PoGate_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("L4R02Gate", 4);

    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    return 1;
}

/* 80C5FDAC-80C5FEDC 0002AC 0130+00 1/1 0/0 0/0 .text            create__13daLv4PoGate_cFv */
int daLv4PoGate_c::create() {
    fopAcM_SetupActor(this, daLv4PoGate_c);

    int phase = dComIfG_resLoad(&mPhase, "L4R02Gate");
    if (phase == cPhs_COMPLEATE_e) {
        if (MoveBGCreate("L4R02Gate", 7, dBgS_MoveBGProc_TypicalRotY, 0x1F00, NULL) == cPhs_ERROR_e)
        {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());

        mSw = getSw();
        mInitMove = fopAcM_isSwitch(this, mSw);

        mMoveTarget = 1000.0f;
        mMoveValue = 0.0f;

        if (!mInitMove) {
            mMoveValue = mMoveTarget;
        }

        init_modeWait();
        setBaseMtx();
    }

    return phase;
}

/* 80C5FEDC-80C5FF2C 0003DC 0050+00 1/0 0/0 0/0 .text            Execute__13daLv4PoGate_cFPPA3_A4_f
 */
int daLv4PoGate_c::Execute(f32 (**param_0)[3][4]) {
    moveGate();
    *param_0 = &mpModel->getBaseTRMtx();
    setBaseMtx();

    return 1;
}

/* 80C609C4-80C609EC 000014 0028+00 9/9 0/0 0/0 .bss             l_HIO */
static daLv4PoGate_HIO_c l_HIO;

/* 80C5FF2C-80C60090 00042C 0164+00 1/1 0/0 0/0 .text            moveGate__13daLv4PoGate_cFv */
void daLv4PoGate_c::moveGate() {
    typedef void (daLv4PoGate_c::*modeFunc)();
    static modeFunc mode_proc[] = {
        &daLv4PoGate_c::modeWait,       &daLv4PoGate_c::modeMoveOpen,
        &daLv4PoGate_c::modeMoveClose,  &daLv4PoGate_c::modeMoveCloseWait,
        &daLv4PoGate_c::modeMoveClose2, &daLv4PoGate_c::modeMoveClose2Wait,
        &daLv4PoGate_c::modeMoveClose3,
    };

    u8 current_state = mInitMove;
    mInitMove = fopAcM_isSwitch(this, mSw);

    if (mInitMove != current_state) {
        if (mInitMove) {
            init_modeMoveClose();
        } else {
            init_modeMoveOpen();
        }
    }

    (this->*mode_proc[mMode])();
}

/* 80C60090-80C6009C 000590 000C+00 3/3 0/0 0/0 .text            init_modeWait__13daLv4PoGate_cFv */
void daLv4PoGate_c::init_modeWait() {
    mMode = MODE_WAIT_e;
}

/* 80C6009C-80C600A0 00059C 0004+00 1/0 0/0 0/0 .text            modeWait__13daLv4PoGate_cFv */
void daLv4PoGate_c::modeWait() {}

/* 80C600A0-80C60150 0005A0 00B0+00 1/1 0/0 0/0 .text init_modeMoveOpen__13daLv4PoGate_cFv */
void daLv4PoGate_c::init_modeMoveOpen() {
    cXyz sound_pos(current.pos);
    sound_pos.y = home.pos.y;

    mDoAud_seStart(Z2SE_OBJ_POU_GATE_OP, &sound_pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    setEffect(0);
    mMode = MODE_MOVE_OPEN_e;
}

/* 80C60150-80C60200 000650 00B0+00 1/0 0/0 0/0 .text            modeMoveOpen__13daLv4PoGate_cFv */
void daLv4PoGate_c::modeMoveOpen() {
    if (cLib_addCalc(&mMoveValue, mMoveTarget, 0.5f, l_HIO.mOpenSpeed, 0.5f) == 0.0f) {
        mDoAud_seStart(Z2SE_READ_RIDDLE_A, NULL, 0, 0);
        setSe();
        init_modeWait();
    }
}

/* 80C60200-80C602B0 000700 00B0+00 1/1 0/0 0/0 .text init_modeMoveClose__13daLv4PoGate_cFv */
void daLv4PoGate_c::init_modeMoveClose() {
    cXyz sound_pos(current.pos);
    sound_pos.y = home.pos.y;

    mDoAud_seStart(Z2SE_OBJ_POU_GATE_CL, &sound_pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    setEffect(1);
    mMode = MODE_MOVE_CLOSE_e;
}

/* 80C602B0-80C6031C 0007B0 006C+00 1/0 0/0 0/0 .text            modeMoveClose__13daLv4PoGate_cFv */
void daLv4PoGate_c::modeMoveClose() {
    if (cLib_addCalc(&mMoveValue, l_HIO.mCloseStep1Amount, 0.5f, l_HIO.mCloseStep1Speed, 0.1f) ==
        0.0f)
    {
        init_modeMoveCloseWait();
    }
}

/* 80C6031C-80C60338 00081C 001C+00 1/1 0/0 0/0 .text init_modeMoveCloseWait__13daLv4PoGate_cFv */
void daLv4PoGate_c::init_modeMoveCloseWait() {
    mCloseWaitTime = l_HIO.mCloseStep1Wait;
    mMode = MODE_MOVE_CLOSE_WAIT_e;
}

/* 80C60338-80C60370 000838 0038+00 1/0 0/0 0/0 .text modeMoveCloseWait__13daLv4PoGate_cFv */
void daLv4PoGate_c::modeMoveCloseWait() {
    if (mCloseWaitTime != 0) {
        mCloseWaitTime--;
    } else {
        init_modeMoveClose2();
    }
}

/* 80C60370-80C6037C 000870 000C+00 1/1 0/0 0/0 .text init_modeMoveClose2__13daLv4PoGate_cFv */
void daLv4PoGate_c::init_modeMoveClose2() {
    mMode = MODE_MOVE_CLOSE2_e;
}

/* 80C6037C-80C603E0 00087C 0064+00 1/0 0/0 0/0 .text            modeMoveClose2__13daLv4PoGate_cFv
 */
void daLv4PoGate_c::modeMoveClose2() {
    if (cLib_addCalc(&mMoveValue, l_HIO.mCloseStep2Amount, 0.5f, l_HIO.mCloseStep2Speed, 0.5f) ==
        0.0f)
    {
        init_modeMoveClose2Wait();
    }
}

/* 80C603E0-80C603FC 0008E0 001C+00 1/1 0/0 0/0 .text init_modeMoveClose2Wait__13daLv4PoGate_cFv
 */
void daLv4PoGate_c::init_modeMoveClose2Wait() {
    mCloseWaitTime = l_HIO.mCloseStep2Wait;
    mMode = MODE_MOVE_CLOSE2_WAIT_e;
}

/* 80C603FC-80C60434 0008FC 0038+00 1/0 0/0 0/0 .text modeMoveClose2Wait__13daLv4PoGate_cFv */
void daLv4PoGate_c::modeMoveClose2Wait() {
    if (mCloseWaitTime != 0) {
        mCloseWaitTime--;
    } else {
        init_modeMoveClose3();
    }
}

/* 80C60434-80C60450 000934 001C+00 1/1 0/0 0/0 .text init_modeMoveClose3__13daLv4PoGate_cFv */
void daLv4PoGate_c::init_modeMoveClose3() {
    fopAcM_SetSpeedF(this, l_HIO.mCloseStep3Speed);
    mMode = MODE_MOVE_CLOSE3_e;
}

/* 80C60450-80C604D8 000950 0088+00 1/0 0/0 0/0 .text            modeMoveClose3__13daLv4PoGate_cFv
 */
void daLv4PoGate_c::modeMoveClose3() {
    cLib_chaseF(&speedF, l_HIO.mCloseStep3Max, l_HIO.mCloseStep3Max / 30.0f);

    if (cLib_addCalc(&mMoveValue, 0.0f, 1.0f, speedF, 1.0f) == 0.0f) {
        setSe();
        init_modeWait();
    }
}

/* 80C604D8-80C60534 0009D8 005C+00 2/2 0/0 0/0 .text            setSe__13daLv4PoGate_cFv */
void daLv4PoGate_c::setSe() {
    dComIfGp_getVibration().StartShock(l_HIO.mShockStrength, 15, cXyz(0.0f, 1.0f, 0.0f));
}

/* 80C60534-80C605F8 000A34 00C4+00 2/2 0/0 0/0 .text            setEffect__13daLv4PoGate_cFi */
void daLv4PoGate_c::setEffect(int param_0) {
    static u16 const particle_id[] = {0x88C9, 0x88CA, 0x88CB, 0x88CC, 0x88CD,
                                      0x88CE, 0x88CF, 0x88D0, 0x88D1, 0x88D2};

    int start_idx;
    int num;

    if (param_0 != 0) {
        start_idx = 0;
        num = 6;
    } else {
        start_idx = 6;
        num = 10;
    }

    for (int i = start_idx; i < num; i++) {
        dComIfGp_particle_set(particle_id[i], &current.pos, &shape_angle, &scale, 255, NULL, -1,
                              NULL, NULL, NULL);
    }
}

/* 80C605F8-80C6069C 000AF8 00A4+00 1/0 0/0 0/0 .text            Draw__13daLv4PoGate_cFv */
int daLv4PoGate_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80C6069C-80C606CC 000B9C 0030+00 1/0 0/0 0/0 .text            Delete__13daLv4PoGate_cFv */
int daLv4PoGate_c::Delete() {
    dComIfG_resDelete(&mPhase, "L4R02Gate");
    return 1;
}

/* 80C606CC-80C606F8 000BCC 002C+00 1/0 0/0 0/0 .text            daLv4PoGate_Draw__FP13daLv4PoGate_c
 */
static int daLv4PoGate_Draw(daLv4PoGate_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C606F8-80C60718 000BF8 0020+00 1/0 0/0 0/0 .text daLv4PoGate_Execute__FP13daLv4PoGate_c */
static int daLv4PoGate_Execute(daLv4PoGate_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C60718-80C60738 000C18 0020+00 1/0 0/0 0/0 .text daLv4PoGate_Delete__FP13daLv4PoGate_c */
static int daLv4PoGate_Delete(daLv4PoGate_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C60738-80C60758 000C38 0020+00 1/0 0/0 0/0 .text            daLv4PoGate_Create__FP10fopAc_ac_c
 */
static int daLv4PoGate_Create(fopAc_ac_c* i_this) {
    return static_cast<daLv4PoGate_c*>(i_this)->create();
}

/* 80C6091C-80C6093C -00001 0020+00 1/0 0/0 0/0 .data            l_daLv4PoGate_Method */
static actor_method_class l_daLv4PoGate_Method = {
    (process_method_func)daLv4PoGate_Create,  (process_method_func)daLv4PoGate_Delete,
    (process_method_func)daLv4PoGate_Execute, (process_method_func)NULL,
    (process_method_func)daLv4PoGate_Draw,
};

/* 80C6093C-80C6096C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv4PoGate */
extern actor_process_profile_definition g_profile_Obj_Lv4PoGate = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_Obj_Lv4PoGate,
    &g_fpcLf_Method.base,
    sizeof(daLv4PoGate_c),
    0,
    0,
    &g_fopAc_Method.base,
    638,
    &l_daLv4PoGate_Method,
    0x40000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
