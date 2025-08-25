//
// d_a_obj_saidan.cpp
// Object - Altar
//

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_saidan.h"

#include "d/d_com_inf_game.h"

//
// Declarations:
//

static daSaidan_HIO_c l_HIO;

/* 80CC3DAC-80CC3DE0 0000EC 0034+00 1/1 0/0 0/0 .text            __ct__14daSaidan_HIO_cFv */
daSaidan_HIO_c::daSaidan_HIO_c() {
    mMaxStep = 2.0f;
    mTargetPosX = 250.0f;
}

/* 80CC3E28-80CC3EB0 000168 0088+00 2/2 0/0 0/0 .text            setBaseMtx__10daSaidan_cFv */
void daSaidan_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80CC3EB0-80CC3F1C 0001F0 006C+00 1/0 0/0 0/0 .text            CreateHeap__10daSaidan_cFv */
int daSaidan_c::CreateHeap() {
    J3DModelData* model_data = (J3DModelData*)dComIfG_getObjectRes("H_Saidan", 4);
    mpModel = mDoExt_J3DModel__create(model_data, 0x80000, 0x11000084);

    if (mpModel == NULL) {
        return FALSE;
    }

    return TRUE;
}

/* 80CC3F1C-80CC4054 00025C 0138+00 1/1 0/0 0/0 .text            create__10daSaidan_cFv */
cPhs__Step daSaidan_c::create() {
    fopAcM_SetupActor(this, daSaidan_c);

    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&mPhaseReq, "H_Saidan");
    if (step == cPhs_COMPLEATE_e) {
        if (MoveBGCreate("H_Saidan", 7, dBgS_MoveBGProc_TypicalRotY, 0x21b0, NULL) == cPhs_ERROR_e)
        {
            return cPhs_ERROR_e;
        } else {
            fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
            fopAcM_setCullSizeBox2(this, mpModel->getModelData());
            mIsSwitch = fopAcM_isSwitch(this, fopAcM_GetParam(this) & 0xff);
            mOriginalPosX = current.pos.x;

            if (mIsSwitch != 0) {
                current.pos.x = mOriginalPosX - l_HIO.mTargetPosX;
                init_modeMoveEnd();
            } else {
                init_modeWait();
            }
            setBaseMtx();
        }
    }

    return step;
}

/* 80CC4054-80CC40A4 000394 0050+00 1/0 0/0 0/0 .text            Execute__10daSaidan_cFPPA3_A4_f */
int daSaidan_c::Execute(Mtx** i_mtx) {
    moveProc();
    *i_mtx = &mpModel->getBaseTRMtx();
    setBaseMtx();

    return TRUE;
}

/* 80CC40A4-80CC4148 0003E4 00A4+00 1/1 0/0 0/0 .text            moveProc__10daSaidan_cFv */
void daSaidan_c::moveProc() {
    typedef void (daSaidan_c::*proc_func)();
    static proc_func mode_proc[] = {
        &daSaidan_c::modeWait,
        &daSaidan_c::modeMove,
        &daSaidan_c::modeMoveEnd,
    };

    (this->*mode_proc[mMode])();
}

/* 80CC4148-80CC4154 000488 000C+00 1/1 0/0 0/0 .text            init_modeWait__10daSaidan_cFv */
void daSaidan_c::init_modeWait() {
    mMode = MODE_WAIT_e;
}

/* 80CC4154-80CC41B0 000494 005C+00 1/0 0/0 0/0 .text            modeWait__10daSaidan_cFv */
void daSaidan_c::modeWait() {
    mIsSwitch = fopAcM_isSwitch(this, (u8)fopAcM_GetParam(this));
    if (mIsSwitch != 0) {
        init_modeMove();
    }
}

/* 80CC41B0-80CC41BC 0004F0 000C+00 1/1 0/0 0/0 .text            init_modeMove__10daSaidan_cFv */
void daSaidan_c::init_modeMove() {
    mMode = MODE_MOVE_e;
}

/* 80CC41BC-80CC4290 0004FC 00D4+00 1/0 0/0 0/0 .text            modeMove__10daSaidan_cFv */
void daSaidan_c::modeMove() {
    f32 currX =
        cLib_addCalc(&current.pos.x, mOriginalPosX - l_HIO.mTargetPosX, 0.2f, l_HIO.mMaxStep, 0.5f);

    fopAcM_seStartCurrentLevel(this, Z2SE_OBJ_CHURCH_ALTER_MOVE, 0);

    if (currX == 0.0f) {
        init_modeMoveEnd();
    }
}

/* 80CC4290-80CC4314 0005D0 0084+00 2/2 0/0 0/0 .text            init_modeMoveEnd__10daSaidan_cFv */
void daSaidan_c::init_modeMoveEnd() {
    fopAcM_seStartCurrent(this, Z2SE_OBJ_CHURCH_ALTER_STOP, 0);

    mMode = MODE_MOVE_END_e;
}

/* 80CC4314-80CC4318 000654 0004+00 1/0 0/0 0/0 .text            modeMoveEnd__10daSaidan_cFv */
void daSaidan_c::modeMoveEnd() {
    /* empty function */
}

/* 80CC4318-80CC43BC 000658 00A4+00 1/0 0/0 0/0 .text            Draw__10daSaidan_cFv */
int daSaidan_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();

    return TRUE;
}

/* 80CC43BC-80CC43EC 0006FC 0030+00 1/0 0/0 0/0 .text            Delete__10daSaidan_cFv */
int daSaidan_c::Delete() {
    dComIfG_resDelete(&mPhaseReq, "H_Saidan");
    return TRUE;
}

/* 80CC43EC-80CC4418 00072C 002C+00 1/0 0/0 0/0 .text            daSaidan_Draw__FP10daSaidan_c */
static int daSaidan_Draw(daSaidan_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80CC4418-80CC4438 000758 0020+00 1/0 0/0 0/0 .text            daSaidan_Execute__FP10daSaidan_c */
static int daSaidan_Execute(daSaidan_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80CC4438-80CC4458 000778 0020+00 1/0 0/0 0/0 .text            daSaidan_Delete__FP10daSaidan_c */
static int daSaidan_Delete(daSaidan_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80CC4458-80CC4478 000798 0020+00 1/0 0/0 0/0 .text            daSaidan_Create__FP10fopAc_ac_c */
static int daSaidan_Create(fopAc_ac_c* i_this) {
    return static_cast<daSaidan_c*>(i_this)->create();
}

/* 80CC45B4-80CC45D4 -00001 0020+00 1/0 0/0 0/0 .data            l_daSaidan_Method */
static actor_method_class l_daSaidan_Method = {
    (process_method_func)daSaidan_Create,  (process_method_func)daSaidan_Delete,
    (process_method_func)daSaidan_Execute, NULL,
    (process_method_func)daSaidan_Draw,
};

/* 80CC45D4-80CC4604 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Saidan */
extern actor_process_profile_definition g_profile_Obj_Saidan = {
    fpcLy_CURRENT_e,         // mLayerID
    3,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_Saidan,         // mProcName
    &g_fpcLf_Method.base,   // sub_method
    sizeof(daSaidan_c),      // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    508,                     // mPriority
    &l_daSaidan_Method,      // sub_method
    0x40000,                 // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
