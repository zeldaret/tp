/**
* @file d_a_obj_sWallShutter.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_sWallShutter.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_com_inf_game.h"

/* 80598FE8-80598FF0 -00001 0008+00 3/3 0/0 0/0 .data            l_resNameIdx */
static char* l_resNameIdx[2] = {
    "P_Rgate",
    "SDGate",
};

/* 805981EC-8059825C 0000EC 0070+00 1/1 0/0 0/0 .text            __ct__17daSwShutter_HIO_cFv */
daSwShutter_HIO_c::daSwShutter_HIO_c() {
    mInitSpeed = 0.0f;
    mMaxSpeed = 100.0f;
    mAcceleration = 0.2f;
    mVibrationStrength = 4;
    mShakeAmpZ = 90.0f;
    mShakeAmpY = 45.0f;
    mShakeStrength = 150.0f;
    mShakeAtten = 0.1f;
    mMaxAtten = 5.0f;
    mMinAtten = 0.1f;
}

/* 805982A4-80598344 0001A4 00A0+00 2/2 0/0 0/0 .text            setBaseMtx__13daSwShutter_cFv */
void daSwShutter_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mDoMtx_stack_c::ZXYrotM(mShakeRot.x, mShakeRot.y, mShakeRot.z);

    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80598F98-80598FA0 000020 0008+00 1/1 0/0 0/0 .rodata          l_bmdIdx */
static const int l_bmdIdx[2] = {4, 4};

/* 80598344-805983C4 000244 0080+00 1/0 0/0 0/0 .text            CreateHeap__13daSwShutter_cFv */
int daSwShutter_c::CreateHeap() {
    J3DModelData* modelData =
        (J3DModelData*)dComIfG_getObjectRes(l_resNameIdx[mModelType], l_bmdIdx[mModelType]);
    JUT_ASSERT(199, modelData != 0);
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    return 1;
}

/* 80598FA0-80598FA8 000028 0008+00 0/1 0/0 0/0 .rodata          l_dzbIdx */
static const int l_dzbIdx[2] = {7, 7};

/* 805983C4-80598564 0002C4 01A0+00 1/1 0/0 0/0 .text            create__13daSwShutter_cFv */
int daSwShutter_c::create() {
    fopAcM_SetupActor(this, daSwShutter_c);

    mModelType = getModelType();
    if (mModelType == 0xF) {
        mModelType = TYPE_ROCKWALL_e;
    }

    int phase_state = dComIfG_resLoad(&mPhase, l_resNameIdx[mModelType]);
    if (phase_state == cPhs_COMPLEATE_e) {
        if (MoveBGCreate(l_resNameIdx[mModelType], l_dzbIdx[mModelType],
                         dBgS_MoveBGProc_TypicalRotY, 0x1000, NULL) == cPhs_ERROR_e)
        {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());
        mCounter = 0;
        field_0x5b0 = 0.0f;

        if (fopAcM_isSwitch(this, getSwBit())) {
            current.pos.y += -450.0f;
            init_modeMoveDownEnd();
        } else {
            mShakeRot.x = 0;
            mShakeRot.y = 0;
            mShakeRot.z = 0;

            mShakeStrength = 0.0f;
            mShakeAmpY = 0.0f;
            mShakeAmpZ = 0.0f;
            mShakeAtten = 0.0f;
            mMaxAtten = 0.0f;
            mMinAtten = 0.0f;

            init_modeWait();
        }

        setBaseMtx();
    }

    return phase_state;
}

/* 80598564-805985B4 000464 0050+00 1/0 0/0 0/0 .text            Execute__13daSwShutter_cFPPA3_A4_f
 */
int daSwShutter_c::Execute(Mtx** param_0) {
    moveMain();
    *param_0 = &mpModel->getBaseTRMtx();
    setBaseMtx();
    return 1;
}

/* 805990F4-80599120 000014 002C+00 4/4 0/0 0/0 .bss             l_HIO */
static daSwShutter_HIO_c l_HIO;

/* 805985B4-8059873C 0004B4 0188+00 1/1 0/0 0/0 .text            moveMain__13daSwShutter_cFv */
void daSwShutter_c::moveMain() {
    typedef void (daSwShutter_c::*modeFunc)();
    static modeFunc mode_proc[] = {
        &daSwShutter_c::modeWait,
        &daSwShutter_c::modeMoveDownInit,
        &daSwShutter_c::modeMoveDown,
        &daSwShutter_c::modeMoveDownEnd,
    };

    (this->*mode_proc[mMode])();

    mShakeRot.z = mShakeStrength * cM_scos(mCounter * (s16)cM_deg2s(mShakeAmpY));
    mShakeRot.y = mShakeStrength * cM_ssin(mCounter * (s16)cM_deg2s(mShakeAmpZ));

    cLib_addCalc(&mShakeStrength, 0.0f, mShakeAtten, mMaxAtten, mMinAtten);
    mCounter++;
}

/* 8059873C-80598748 00063C 000C+00 1/1 0/0 0/0 .text            init_modeWait__13daSwShutter_cFv */
void daSwShutter_c::init_modeWait() {
    mMode = MODE_WAIT;
}

/* 80598748-8059879C 000648 0054+00 1/0 0/0 0/0 .text            modeWait__13daSwShutter_cFv */
void daSwShutter_c::modeWait() {
    if (fopAcM_isSwitch(this, getSwBit())) {
        init_modeMoveDownInit();
    }
}

/* 8059879C-805989D0 00069C 0234+00 1/1 0/0 0/0 .text init_modeMoveDownInit__13daSwShutter_cFv */
void daSwShutter_c::init_modeMoveDownInit() {
    mShakeStrength = l_HIO.mShakeStrength;
    mShakeAmpY = l_HIO.mShakeAmpY;
    mShakeAmpZ = l_HIO.mShakeAmpZ;
    mShakeAtten = l_HIO.mShakeAtten;
    mMaxAtten = l_HIO.mMaxAtten;
    mMinAtten = l_HIO.mMinAtten;

    if (mModelType == TYPE_SUBDAN_e) {
        dComIfGp_particle_set(0x8C73, &current.pos, &shape_angle, NULL);
        dComIfGp_particle_set(0x8C74, &current.pos, &shape_angle, NULL);
    } else {
        dComIfGp_particle_set(0x8709, &current.pos, &shape_angle, NULL);
        dComIfGp_particle_set(0x870A, &current.pos, &shape_angle, NULL);
    }

    mDoAud_seStart(Z2SE_OBJ_WALLSHUTTER_OPEN, &current.pos, 0,
                   dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    dComIfGp_getVibration().StartQuake(2, 15, cXyz(0.0f, 1.0f, 0.0f));
    mMode = MODE_MOVE_DOWN_INIT;
}

/* 805989D0-80598A04 0008D0 0034+00 1/0 0/0 0/0 .text            modeMoveDownInit__13daSwShutter_cFv
 */
void daSwShutter_c::modeMoveDownInit() {
    if (mShakeStrength == 0.0f) {
        init_modeMoveDown();
    }
}

/* 80598A04-80598AFC 000904 00F8+00 1/1 0/0 0/0 .text init_modeMoveDown__13daSwShutter_cFv */
void daSwShutter_c::init_modeMoveDown() {
    fopAcM_SetSpeedF(this, l_HIO.mInitSpeed);

    if (mModelType == TYPE_SUBDAN_e) {
        dComIfGp_particle_set(0x8C77, &current.pos, &shape_angle, NULL);
    } else {
        dComIfGp_particle_set(0x870D, &current.pos, &shape_angle, NULL);
    }

    mMode = MODE_MOVE_DOWN;
}

/* 80598AFC-80598D4C 0009FC 0250+00 1/0 0/0 0/0 .text            modeMoveDown__13daSwShutter_cFv */
void daSwShutter_c::modeMoveDown() {
    cLib_chaseF(&speedF, l_HIO.mMaxSpeed, l_HIO.mAcceleration);
    f32 target_dist =
        cLib_addCalc(&current.pos.y, home.pos.y + -450.0f, 1.0f, fopAcM_GetSpeedF(this), 1.0f);

    if (mModelType == TYPE_SUBDAN_e) {
        mEmitterID0 = dComIfGp_particle_set(mEmitterID0, 0x8C75, &current.pos, &shape_angle, NULL);
        mEmitterID1 = dComIfGp_particle_set(mEmitterID1, 0x8C76, &current.pos, &shape_angle, NULL);
    } else {
        mEmitterID0 = dComIfGp_particle_set(mEmitterID0, 0x870B, &current.pos, &shape_angle, NULL);
        mEmitterID1 = dComIfGp_particle_set(mEmitterID1, 0x870C, &current.pos, &shape_angle, NULL);
    }

    if (target_dist == 0.0f) {
        dComIfGp_getVibration().StopQuake(15);
        dComIfGp_getVibration().StartShock(l_HIO.mVibrationStrength, 15, cXyz(0.0f, 1.0f, 0.0f));
        init_modeMoveDownEnd();
    }
}

/* 80598D4C-80598D58 000C4C 000C+00 2/2 0/0 0/0 .text init_modeMoveDownEnd__13daSwShutter_cFv */
void daSwShutter_c::init_modeMoveDownEnd() {
    mMode = MODE_MOVE_DOWN_END;
}

/* 80598D58-80598D5C 000C58 0004+00 1/0 0/0 0/0 .text            modeMoveDownEnd__13daSwShutter_cFv
 */
void daSwShutter_c::modeMoveDownEnd() {}

/* 80598D5C-80598E00 000C5C 00A4+00 1/0 0/0 0/0 .text            Draw__13daSwShutter_cFv */
int daSwShutter_c::Draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80598E00-80598E40 000D00 0040+00 1/0 0/0 0/0 .text            Delete__13daSwShutter_cFv */
int daSwShutter_c::Delete() {
    dComIfG_resDelete(&mPhase, l_resNameIdx[mModelType]);
    return 1;
}

/* 80598E40-80598E6C 000D40 002C+00 1/0 0/0 0/0 .text            daSwShutter_Draw__FP13daSwShutter_c
 */
static int daSwShutter_Draw(daSwShutter_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80598E6C-80598E8C 000D6C 0020+00 1/0 0/0 0/0 .text daSwShutter_Execute__FP13daSwShutter_c */
static int daSwShutter_Execute(daSwShutter_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80598E8C-80598EAC 000D8C 0020+00 1/0 0/0 0/0 .text daSwShutter_Delete__FP13daSwShutter_c */
static int daSwShutter_Delete(daSwShutter_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80598EAC-80598ECC 000DAC 0020+00 1/0 0/0 0/0 .text            daSwShutter_Create__FP10fopAc_ac_c
 */
static int daSwShutter_Create(fopAc_ac_c* i_this) {
    return ((daSwShutter_c*)i_this)->create();
}

/* 80599050-80599070 -00001 0020+00 1/0 0/0 0/0 .data            l_daSwShutter_Method */
static actor_method_class l_daSwShutter_Method = {
    (process_method_func)daSwShutter_Create,  (process_method_func)daSwShutter_Delete,
    (process_method_func)daSwShutter_Execute, (process_method_func)NULL,
    (process_method_func)daSwShutter_Draw,
};

/* 80599070-805990A0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_SwallShutter */
extern actor_process_profile_definition g_profile_Obj_SwallShutter = {
    fpcLy_CURRENT_e,         // mLayerID
    3,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_SwallShutter,   // mProcName
    &g_fpcLf_Method.base,   // sub_method
    sizeof(daSwShutter_c),   // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    619,                     // mPriority
    &l_daSwShutter_Method,   // sub_method
    0x00044000,              // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
