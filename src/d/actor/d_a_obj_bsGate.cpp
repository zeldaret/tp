/**
 * d_a_obj_bsGate.cpp
 * Object - Lakebed Temple Gate
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_bsGate.h"
#include "d/d_com_inf_game.h"
#include "d/d_procname.h"

/* 80BC288C-80BC28C8 0000EC 003C+00 1/1 0/0 0/0 .text            __ct__14daBsGate_HIO_cFv */
daBsGate_HIO_c::daBsGate_HIO_c() {
    mOpenSpeed = 2.0f;
    mCloseSpeed = 12.0f;
    mShockStrength = 3;
}

/* 80BC2910-80BC29AC 000170 009C+00 2/2 0/0 0/0 .text            setBaseMtx__10daBsGate_cFv */
void daBsGate_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mDoMtx_stack_c::transM(mOpenDist, 0.0f, 0.0f);
    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80BC29AC-80BC2A18 00020C 006C+00 1/0 0/0 0/0 .text            CreateHeap__10daBsGate_cFv */
int daBsGate_c::CreateHeap() {
    J3DModelData* model_data = (J3DModelData*)dComIfG_getObjectRes("S_Zgate", 4);
    mpModel = mDoExt_J3DModel__create(model_data, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }
    return 1;
}

/* 80BC2A18-80BC2B6C 000278 0154+00 1/1 0/0 0/0 .text            create__10daBsGate_cFv */
cPhs__Step daBsGate_c::create() {
    fopAcM_SetupActor(this, daBsGate_c);
    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&mPhaseReq, "S_Zgate");
    if (step == cPhs_COMPLEATE_e) {
        if (MoveBGCreate("S_Zgate", 7, dBgS_MoveBGProc_TypicalRotY, 0xf00, NULL) == cPhs_ERROR_e) {
            return cPhs_ERROR_e;
        }
        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());
        mOpen = fopAcM_isSwitch(this, fopAcM_GetParam(this) & 0xff);
        mSide = (fopAcM_GetParam(this) >> 8) & 0xff;
        mTargetDist = -250.0f;
        if (mSide == 1) {
            shape_angle.y += 0x8000;
        }
        mOpenDist = 0.0f;
        if (mOpen) {
            mOpenDist = mTargetDist;
        }
        init_modeWait();
        setBaseMtx();
    }
    return step;
}

/* 80BC2B6C-80BC2BBC 0003CC 0050+00 1/0 0/0 0/0 .text            Execute__10daBsGate_cFPPA3_A4_f */
int daBsGate_c::Execute(Mtx** i_mtxP) {
    moveGate();
    *i_mtxP = &mpModel->getBaseTRMtx();
    setBaseMtx();
    return 1;
}

/* 80BC32DC-80BC32EC 000014 0010+00 3/3 0/0 0/0 .bss             l_HIO */
static daBsGate_HIO_c l_HIO;

/* 80BC2BBC-80BC2CC4 00041C 0108+00 1/1 0/0 0/0 .text            moveGate__10daBsGate_cFv */
void daBsGate_c::moveGate() {
    typedef void (daBsGate_c::*daBsGate_modeFunc)();
    static daBsGate_modeFunc mode_proc[3] = {
        &modeWait,
        &modeOpen,
        &modeClose,
    };
    u8 was_open = mOpen;
    mOpen = fopAcM_isSwitch(this, fopAcM_GetParam(this) & 0xff);
    if (mOpen != was_open) {
        if (mOpen) {
            init_modeOpen();
        } else {
            init_modeClose();
        }
    }
    (this->*mode_proc[mMode])();
}

/* 80BC2CC4-80BC2CD0 000524 000C+00 3/3 0/0 0/0 .text            init_modeWait__10daBsGate_cFv */
void daBsGate_c::init_modeWait() {
    mMode = MODE_WAIT;
}

/* 80BC2CD0-80BC2CD4 000530 0004+00 1/0 0/0 0/0 .text            modeWait__10daBsGate_cFv */
void daBsGate_c::modeWait() {
    /* empty function */
}

/* 80BC2CD4-80BC2CE0 000534 000C+00 1/1 0/0 0/0 .text            init_modeOpen__10daBsGate_cFv */
void daBsGate_c::init_modeOpen() {
    mMode = MODE_OPEN;
}

/* 80BC2CE0-80BC2E34 000540 0154+00 1/0 0/0 0/0 .text            modeOpen__10daBsGate_cFv */
void daBsGate_c::modeOpen() {
    if (mSide == 0) {
        mDoAud_seStartLevel(Z2SE_OBJ_SW_W_DR_OP, &current.pos, 0,
                            dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    }
    if (cLib_addCalc(&mOpenDist, mTargetDist, 0.2f, l_HIO.mOpenSpeed, 0.5f) == 0.0f) {
        if (mSide == 0) {
            mDoAud_seStart(Z2SE_OBJ_SW_W_DR_OP_STOP, &current.pos, 0,
                           dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
        }
        dComIfGp_getVibration().StartShock(l_HIO.mShockStrength, 0xf, cXyz(0.0f, 1.0f, 0.0f));
        init_modeWait();
    }
}

/* 80BC2E34-80BC2E40 000694 000C+00 1/1 0/0 0/0 .text            init_modeClose__10daBsGate_cFv */
void daBsGate_c::init_modeClose() {
    mMode = MODE_CLOSE;
}

/* 80BC2E40-80BC2F94 0006A0 0154+00 1/0 0/0 0/0 .text            modeClose__10daBsGate_cFv */
void daBsGate_c::modeClose() {
    if (mSide == 0) {
        mDoAud_seStartLevel(Z2SE_OBJ_SW_W_DR_CL, &current.pos, 0,
                            dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    }
    if (cLib_addCalc(&mOpenDist, 0.0f, 0.4f, l_HIO.mCloseSpeed, 0.5f) == 0.0f) {
        if (mSide == 0) {
            mDoAud_seStart(Z2SE_OBJ_SW_W_DR_CL_STOP, &current.pos, 0,
                           dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
        }
        dComIfGp_getVibration().StartShock(l_HIO.mShockStrength, 0xf, cXyz(0.0f, 1.0f, 0.0f));
        init_modeWait();
    }
}

/* 80BC2F94-80BC3038 0007F4 00A4+00 1/0 0/0 0/0 .text            Draw__10daBsGate_cFv */
int daBsGate_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80BC3038-80BC3068 000898 0030+00 1/0 0/0 0/0 .text            Delete__10daBsGate_cFv */
int daBsGate_c::Delete() {
    dComIfG_resDelete(&mPhaseReq, "S_Zgate");
    return 1;
}

/* 80BC3068-80BC3094 0008C8 002C+00 1/0 0/0 0/0 .text            daBsGate_Draw__FP10daBsGate_c */
static int daBsGate_Draw(daBsGate_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80BC3094-80BC30B4 0008F4 0020+00 1/0 0/0 0/0 .text            daBsGate_Execute__FP10daBsGate_c */

static int daBsGate_Execute(daBsGate_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80BC30B4-80BC30D4 000914 0020+00 1/0 0/0 0/0 .text            daBsGate_Delete__FP10daBsGate_c */
static int daBsGate_Delete(daBsGate_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80BC30D4-80BC30F4 000934 0020+00 1/0 0/0 0/0 .text            daBsGate_Create__FP10fopAc_ac_c */
static cPhs__Step daBsGate_Create(fopAc_ac_c* i_this) {
    return static_cast<daBsGate_c*>(i_this)->create();
}

/* 80BC3234-80BC3254 -00001 0020+00 1/0 0/0 0/0 .data            l_daBsGate_Method */
static actor_method_class l_daBsGate_Method = {
    (process_method_func)daBsGate_Create,
    (process_method_func)daBsGate_Delete,
    (process_method_func)daBsGate_Execute,
    (process_method_func)NULL,
    (process_method_func)daBsGate_Draw,
};

/* 80BC3254-80BC3284 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_BsGate */
extern actor_process_profile_definition g_profile_Obj_BsGate = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_Obj_BsGate,
    &g_fpcLf_Method.base,
    sizeof(daBsGate_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x206,
    &l_daBsGate_Method,
    0x40000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
