/**
 * d_a_obj_zrTurara.cpp
 * Object - Zora River Stalactite
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_zrTurara.h"
#include "d/d_bg_w.h"
#include "d/d_com_inf_game.h"
#include "d/d_procname.h"
#include "SSystem/SComponent/c_math.h"

/* 80D4056C-80D4059C 0000EC 0030+00 1/1 0/0 0/0 .text            __ct__16daZrTurara_HIO_cFv */
daZrTurara_HIO_c::daZrTurara_HIO_c() {
    mDebrisNum = 5;
    // mDebrisRange = 250.0f;
    mDebrisRange = 250.0f;
}

/* 80D4178C-80D41798 000014 000C+00 2/2 0/0 0/0 .bss             l_HIO */
static daZrTurara_HIO_c l_HIO;

/* 80D415A0-80D415D0 000004 0030+00 1/1 0/0 0/0 .rodata          mCcDObjInfo__12daZrTurara_c */
dCcD_SrcGObjInf const daZrTurara_c::mCcDObjInfo = {
    {0, {
        {0, 0, 0},
        {0x20, 0x11},
        {0}
    }},
    {1, 0, 1, 0, 0},
    {0xA, 0, 0, 0, 2},
    {0}
};

/* 80D41628-80D4166C 000020 0044+00 2/2 0/0 0/0 .data            mCcDCyl__12daZrTurara_c */
dCcD_SrcCyl daZrTurara_c::mCcDCyl = {
    mCcDObjInfo,
    {{0.0f, 0.0f, 0.0f}, 0.0f, 0.0f}
};

/* 80D405E4-80D40714 000164 0130+00 2/2 0/0 0/0 .text            setBaseMtx__12daZrTurara_cFv */
void daZrTurara_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mDoMtx_stack_c::scaleM(mScaleF, mScaleF, mScaleF);
    // cXyz scale(1.0f, 1.0f, 1.0f);
    cXyz scale(1.0f, 1.0f, 1.0f);
    mpBaseModel->setBaseScale(scale);
    mpBaseModel->setBaseTRMtx(mDoMtx_stack_c::get());
    PSMTXCopy(mDoMtx_stack_c::get(), mBgMtx);
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mDoMtx_stack_c::scaleM(mScaleF, mScaleF, mScaleF);
    mpRockModel->setBaseScale(scale);
    mpRockModel->setBaseTRMtx(mDoMtx_stack_c::get());
    PSMTXCopy(mDoMtx_stack_c::get(), mRockBgMtx);
}

/* 80D40714-80D40844 000294 0130+00 1/0 0/0 0/0 .text            CreateHeap__12daZrTurara_cFv */
int daZrTurara_c::CreateHeap() {
    J3DModelData* base_model_data = (J3DModelData*)dComIfG_getObjectRes("M_DrpRock", 5);
    mpBaseModel = mDoExt_J3DModel__create(base_model_data, 0x80000, 0x11000084);
    if (mpBaseModel == NULL) {
        return 0;
    }
    J3DModelData* rock_model_data = (J3DModelData*)dComIfG_getObjectRes("M_DrpRock", 4);
    mpRockModel = mDoExt_J3DModel__create(rock_model_data, 0x80000, 0x11000084);
    if (mpRockModel == NULL) {
        return 0;
    }
    mpRockBgW = new dBgW();
    if (mpRockBgW == NULL ||
        mpRockBgW->Set((cBgD_t*)dComIfG_getObjectRes("M_DrpRock", 8), 1, &mRockBgMtx))
    {
        mpRockBgW = NULL;
        return 0;
    }
    return 1;
}

/* 80D40844-80D40B1C 0003C4 02D8+00 1/1 0/0 0/0 .text            create__12daZrTurara_cFv */
cPhs__Step daZrTurara_c::create() {
    fopAcM_SetupActor(this, daZrTurara_c);
    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&mPhaseReq, "M_DrpRock");
    if (step == cPhs_COMPLEATE_e) {
        cPhs__Step bg_step = (cPhs__Step)MoveBGCreate("M_DrpRock", 9, dBgS_MoveBGProc_TypicalRotY,
                                                      0x2800, NULL);
        if (bg_step == cPhs_ERROR_e) {
            return cPhs_ERROR_e;
        }
        mSw2 = getSwBit2();
        mDrawRock = true;
        mCcStatus.Init(0xff, 0xff, this);
        mCcCyl.Set(mCcDCyl);
        mCcCyl.SetStts(&mCcStatus);
        int sw1 = getSwBit1();
        if (fopAcM_isSwitch(this, sw1)) {
            if (mpRockBgW != NULL) {
                dComIfG_Bgsp().Release(mpRockBgW);
                mpRockBgW->Move();
            }
            mCcCyl.OffTgSetBit();
            mDrawRock = false;
            init_modeEnd();
        } else if (mpRockBgW != NULL) {
            dComIfG_Bgsp().Regist(mpRockBgW, this);
            mpRockBgW->Move();
        }
        fopAcM_SetMtx(this, mpBaseModel->getBaseTRMtx());
        J3DJoint* base_joint = mpBaseModel->getModelData()->getJointNodePointer(0);
        J3DJoint* rock_joint = mpRockModel->getModelData()->getJointNodePointer(0);
        fopAcM_setCullSizeBox(
            this,
            scale.x * rock_joint->getMin()->x,
            scale.y * rock_joint->getMin()->y,
            scale.z * rock_joint->getMin()->z,
            scale.x * base_joint->getMax()->x,
            scale.y * base_joint->getMax()->y,
            scale.z * base_joint->getMax()->z
        );
        u8 scale = getScale();
        if (scale == 0xff) {
            scale = 0;
        }
        mScaleF = scale * 0.1f + 1.0f;
        setBaseMtx();
    }
    return step;
}

/* 80D40C08-80D40C68 000788 0060+00 1/0 0/0 0/0 .text            Execute__12daZrTurara_cFPPA3_A4_f
 */
int daZrTurara_c::Execute(Mtx** i_mtxP) {
    move();
    *i_mtxP = &mpBaseModel->getBaseTRMtx();
    setBaseMtx();
    if (mpRockBgW != NULL) {
        mpRockBgW->Move();
    }
    return 1;
}

/* 80D40C68-80D40D88 0007E8 0120+00 1/1 0/0 0/0 .text            move__12daZrTurara_cFv */
void daZrTurara_c::move() {
    typedef void (daZrTurara_c::*daZrTurara_modeFunc)();
    static daZrTurara_modeFunc mode_proc[3] = {
        &modeWait,
        &modeBreak,
        &modeEnd,
    };
    (this->*mode_proc[mMode])();
    mCcCyl.SetR(130.0f);
    mCcCyl.SetH(450.0f);
    cXyz pos = current.pos;
    pos.y -= 500.0f;
    mCcCyl.SetC(pos);
    dComIfG_Ccsp()->Set(&mCcCyl);
}


/* 80D40D88-80D40E0C 000908 0084+00 1/0 0/0 0/0 .text            modeWait__12daZrTurara_cFv */
void daZrTurara_c::modeWait() {
    if (mSw2 != 0xff && fopAcM_isSwitch(this, mSw2)) {
        init_modeBreak();
    }
    if (mCcCyl.ChkTgHit() && mCcCyl.GetTgHitGObj()->GetAtType() == AT_TYPE_BOMB) {
        init_modeBreak();
    }
}

/* 80D40E0C-80D410E0 00098C 02D4+00 1/1 0/0 0/0 .text            init_modeBreak__12daZrTurara_cFv */
void daZrTurara_c::init_modeBreak() {
    mDoAud_seStart(Z2SE_OBJ_RG_ROCK_BREAK, &current.pos, 0,
                   dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    if (mpRockBgW != NULL) {
        dComIfG_Bgsp().Release(mpRockBgW);
        mpRockBgW->Move();
    }
    mDrawRock = false;
    mCcCyl.OffTgSetBit();
    cXyz scale(mScaleF, mScaleF, mScaleF);
    dComIfGp_particle_set(0x8a93, &current.pos, NULL, &scale);
    dComIfGp_particle_set(0x8a94, &current.pos, NULL, &scale);
    dComIfGp_particle_set(0x8a95, &current.pos, NULL, &scale);
    dComIfGp_particle_set(0x8a96, &current.pos, NULL, &scale);
    dComIfGp_particle_set(0x8a97, &current.pos, NULL, &scale);
    mParticleKey = dComIfGp_particle_set(mParticleKey, 0x8a98, &current.pos, NULL, &scale);
    int sw1 = getSwBit1();
    fopAcM_onSwitch(this, sw1);
    mDebrisCount = 0;
    mBreakTimer = 0;
    mMode = 1;
}

/* 80D410E0-80D412A0 000C60 01C0+00 1/0 0/0 0/0 .text            modeBreak__12daZrTurara_cFv */
void daZrTurara_c::modeBreak() {
    cXyz scale(mScaleF, mScaleF, mScaleF);
    mParticleKey = dComIfGp_particle_set(mParticleKey, 0x8a98, &current.pos, NULL, &scale);
    if (mBreakTimer != 0) {
        mBreakTimer--;
    } else {
        cXyz pos = current.pos;
        pos.y -= 200.0f;
        pos.x += l_HIO.mDebrisRange * cM_rndFX(1.0f);
        pos.y += l_HIO.mDebrisRange * cM_rndFX(1.0f);
        fopAcM_create(PROC_Obj_zrTuraraRc, getScale(), &pos,
                      fopAcM_GetRoomNo(this), NULL, NULL, 0xff);
        mDebrisCount++;
        mBreakTimer = cM_rndF(1.0f) * 20.0f;
        if (mDebrisCount >= l_HIO.mDebrisNum) {
            JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(mParticleKey);
            if (emitter != NULL) {
                emitter->becomeInvalidEmitter();
            }
            init_modeEnd();
        }
    }
}

/* 80D412A0-80D412AC 000E20 000C+00 2/2 0/0 0/0 .text            init_modeEnd__12daZrTurara_cFv */
void daZrTurara_c::init_modeEnd() {
    mMode = 2;
}

/* 80D412AC-80D412B0 000E2C 0004+00 1/0 0/0 0/0 .text            modeEnd__12daZrTurara_cFv */
void daZrTurara_c::modeEnd() {
    /* empty function */
}

/* 80D412B0-80D41380 000E30 00D0+00 1/0 0/0 0/0 .text            Draw__12daZrTurara_cFv */
int daZrTurara_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpBaseModel, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpRockModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpBaseModel);
    if (mDrawRock) {
        mDoExt_modelUpdateDL(mpRockModel);
    }
    dComIfGd_setList();
    return 1;
}

/* 80D41380-80D413E8 000F00 0068+00 1/0 0/0 0/0 .text            Delete__12daZrTurara_cFv */
int daZrTurara_c::Delete() {
    dComIfG_resDelete(&mPhaseReq, "M_DrpRock");
    if (mpRockBgW != NULL && mpRockBgW->ChkUsed()) {
        dComIfG_Bgsp().Release(mpRockBgW);
    }
    return 1;
}

/* 80D413E8-80D41414 000F68 002C+00 1/0 0/0 0/0 .text            daZrTurara_Draw__FP12daZrTurara_c
 */
static int daZrTurara_Draw(daZrTurara_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80D41414-80D41434 000F94 0020+00 1/0 0/0 0/0 .text daZrTurara_Execute__FP12daZrTurara_c */
static int daZrTurara_Execute(daZrTurara_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80D41434-80D41454 000FB4 0020+00 1/0 0/0 0/0 .text            daZrTurara_Delete__FP12daZrTurara_c
 */
static int daZrTurara_Delete(daZrTurara_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80D41454-80D41474 000FD4 0020+00 1/0 0/0 0/0 .text            daZrTurara_Create__FP10fopAc_ac_c
 */
static cPhs__Step daZrTurara_Create(fopAc_ac_c* i_this) {
    return static_cast<daZrTurara_c*>(i_this)->create();
}

/* 80D416B4-80D416D4 -00001 0020+00 1/0 0/0 0/0 .data            l_daZrTurara_Method */
static actor_method_class l_daZrTurara_Method = {
    (process_method_func)daZrTurara_Create,
    (process_method_func)daZrTurara_Delete,
    (process_method_func)daZrTurara_Execute,
    (process_method_func)NULL,
    (process_method_func)daZrTurara_Draw,
};

/* 80D416D4-80D41704 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_zrTurara */
extern actor_process_profile_definition g_profile_Obj_zrTurara = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_Obj_zrTurara,
    &g_fpcLf_Method.base,
    sizeof(daZrTurara_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x28C,
    &l_daZrTurara_Method,
    0x40100,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
