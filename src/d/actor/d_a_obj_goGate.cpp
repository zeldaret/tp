/**
* @file d_a_obj_goGate.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_goGate.h"
#include "d/d_com_inf_game.h"

/* 80BFD6AC-80BFD6DC 0000EC 0030+00 1/1 0/0 0/0 .text            __ct__14daGoGate_HIO_cFv */
daGoGate_HIO_c::daGoGate_HIO_c() {
    mSpeed = 2.0f;
    mShockStrength = 3;
}

/* 80BFD724-80BFD7C0 000164 009C+00 2/2 0/0 0/0 .text            setBaseMtx__10daGoGate_cFv */
void daGoGate_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mDoMtx_stack_c::transM(field_0x5b4, 0.0f, 0.0f);

    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80BFD7C0-80BFD82C 000200 006C+00 1/0 0/0 0/0 .text            CreateHeap__10daGoGate_cFv */
int daGoGate_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("P_Ggate", 4);
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    return mpModel ? 1 : 0;
}

/* 80BFD82C-80BFD984 00026C 0158+00 1/1 0/0 0/0 .text            create__10daGoGate_cFv */
cPhs__Step daGoGate_c::create() {
    fopAcM_SetupActor(this, daGoGate_c);

    cPhs__Step phase = static_cast<cPhs__Step>(dComIfG_resLoad(&mPhase, "P_Ggate"));
    if (phase == cPhs_COMPLEATE_e) {
        if (MoveBGCreate("P_Ggate", 7, dBgS_MoveBGProc_TypicalRotY, 0x1c00, NULL) == cPhs_ERROR_e) {
            return cPhs_ERROR_e;
        }
        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());
        mSw = getSw();
        mOpen = fopAcM_isSwitch(this, mSw);
        mLR = getLR();
        float tmp;
        if (mLR == 0) {
            tmp = -250.0f;
        } else {
            tmp = 250.0f;
        }
        field_0x5b0 = tmp;
        field_0x5b4 = 0.0f;
        if (mOpen != 0) {
            field_0x5b4 = field_0x5b0;
        }
        MoveBGExecute();
        init_modeWait();
        setBaseMtx();
    }
    return phase;
}

/* 80BFD984-80BFD9D4 0003C4 0050+00 1/0 0/0 0/0 .text            Execute__10daGoGate_cFPPA3_A4_f */
int daGoGate_c::Execute(Mtx** param_0) {
    moveGate();
    *param_0 = &mpModel->getBaseTRMtx();
    setBaseMtx();

    return 1;
}

/* 80BFE11C-80BFE128 000014 000C+00 4/4 0/0 0/0 .bss             l_HIO */
static daGoGate_HIO_c l_HIO;

/* 80BFD9D4-80BFDAD8 000414 0104+00 1/1 0/0 0/0 .text            moveGate__10daGoGate_cFv */
void daGoGate_c::moveGate() {
    typedef void (daGoGate_c::*daGoGate_modeFunc)();
    static daGoGate_modeFunc mode_proc[] = {
        &daGoGate_c::modeWait,
        &daGoGate_c::modeMoveOpen,
        &daGoGate_c::modeMoveClose,
    };

    u8 was_open = mOpen;
    mOpen = fopAcM_isSwitch(this, mSw);
    if (mOpen != was_open) {
        if (mOpen) {
            init_modeMoveOpen();
        } else {
            init_modeMoveClose();
        }
    }

    (this->*mode_proc[mMode])();
}

/* 80BFDAD8-80BFDAE4 000518 000C+00 3/3 0/0 0/0 .text            init_modeWait__10daGoGate_cFv */
void daGoGate_c::init_modeWait() {
    mMode = MODE_WAIT;
}

/* 80BFDAE4-80BFDAE8 000524 0004+00 1/0 0/0 0/0 .text            modeWait__10daGoGate_cFv */
void daGoGate_c::modeWait() {}

/* 80BFDAE8-80BFDAF4 000528 000C+00 1/1 0/0 0/0 .text            init_modeMoveOpen__10daGoGate_cFv
 */
void daGoGate_c::init_modeMoveOpen() {
    mMode = MODE_OPEN;
}

/* 80BFDAF4-80BFDC04 000534 0110+00 1/0 0/0 0/0 .text            modeMoveOpen__10daGoGate_cFv */
void daGoGate_c::modeMoveOpen() {
    mDoMtx_stack_c::ZXYrotS(shape_angle.x, shape_angle.y, shape_angle.z);
    cXyz local(field_0x5b0, 0.0f, 0.0f);
    mDoMtx_stack_c::multVec(&local, &local);
    local += current.pos;
    mDoAud_seStartLevel(Z2SE_OBJ_GORONGATE_MOVE, &current.pos, 0,
                        dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    if (cLib_addCalc(&field_0x5b4, field_0x5b0, 0.2f, l_HIO.mSpeed, 0.5f) == 0.0f) {
        setSe();
        init_modeWait();
    }
}

/* 80BFDC04-80BFDC10 000644 000C+00 1/1 0/0 0/0 .text            init_modeMoveClose__10daGoGate_cFv
 */
void daGoGate_c::init_modeMoveClose() {
    mMode = MODE_CLOSE;
}

/* 80BFDC10-80BFDD20 000650 0110+00 1/0 0/0 0/0 .text            modeMoveClose__10daGoGate_cFv */
void daGoGate_c::modeMoveClose() {
    mDoMtx_stack_c::ZXYrotS(shape_angle.x, shape_angle.y, shape_angle.z);

    cXyz local(field_0x5b0, 0.0f, 0.0f);
    mDoMtx_stack_c::multVec(&local, &local);
    local += current.pos;

    mDoAud_seStartLevel(Z2SE_OBJ_GORONGATE_MOVE, &current.pos, 0,
                        dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

    if (cLib_addCalc(&field_0x5b4, 0.0f, 0.2f, l_HIO.mSpeed, 0.5f) == 0.0f) {
        setSe();
        init_modeWait();
    }
}

/* 80BFDD20-80BFDDDC 000760 00BC+00 2/2 0/0 0/0 .text            setSe__10daGoGate_cFv */
void daGoGate_c::setSe() {
    mDoAud_seStart(Z2SE_OBJ_GORONGATE_STOP, &current.pos, 0,
                   dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    dComIfGp_getVibration().StartShock(l_HIO.mShockStrength, 0xf, cXyz(0.0f, 1.0f, 0.0f));
}

/* 80BFDDDC-80BFDE80 00081C 00A4+00 1/0 0/0 0/0 .text            Draw__10daGoGate_cFv */
int daGoGate_c::Draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80BFDE80-80BFDEB0 0008C0 0030+00 1/0 0/0 0/0 .text            Delete__10daGoGate_cFv */
int daGoGate_c::Delete() {
    dComIfG_resDelete(&mPhase, "P_Ggate");
    return 1;
}

/* 80BFDEB0-80BFDEDC 0008F0 002C+00 1/0 0/0 0/0 .text            daGoGate_Draw__FP10daGoGate_c */
static int daGoGate_Draw(daGoGate_c* i_this) {
    return i_this->Draw();
}

/* 80BFDEDC-80BFDEFC 00091C 0020+00 1/0 0/0 0/0 .text            daGoGate_Execute__FP10daGoGate_c */
static int daGoGate_Execute(daGoGate_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80BFDEFC-80BFDF1C 00093C 0020+00 1/0 0/0 0/0 .text            daGoGate_Delete__FP10daGoGate_c */
static int daGoGate_Delete(daGoGate_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80BFDF1C-80BFDF3C 00095C 0020+00 1/0 0/0 0/0 .text            daGoGate_Create__FP10fopAc_ac_c */
static int daGoGate_Create(fopAc_ac_c* i_this) {
    fopAcM_GetID(i_this);
    return static_cast<daGoGate_c*>(i_this)->create();
}

/* 80BFE078-80BFE098 -00001 0020+00 1/0 0/0 0/0 .data            l_daGoGate_Method */
static actor_method_class l_daGoGate_Method = {
    (process_method_func)daGoGate_Create,  (process_method_func)daGoGate_Delete,
    (process_method_func)daGoGate_Execute, (process_method_func)NULL,
    (process_method_func)daGoGate_Draw,
};

/* 80BFE098-80BFE0C8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_GoGate */
extern actor_process_profile_definition g_profile_Obj_GoGate = {
    fpcLy_CURRENT_e,         // mLayerID
    3,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_GoGate,         // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daGoGate_c),      // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    504,                     // mPriority
    &l_daGoGate_Method,      // sub_method
    0x00040000,              // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
