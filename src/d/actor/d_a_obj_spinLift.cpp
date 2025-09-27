/**
 * @file d_a_obj_spinLift.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_spinLift.h"
#include "dol2asm.h"

class daSpinLift_HIO_c : public mDoHIO_entry_c {
public:
    /* 80CE3DAC */ daSpinLift_HIO_c();
    /* 80CE4C10 */ ~daSpinLift_HIO_c() {};

#ifdef DEBUG
    void genMessage(JORMContext*);
#endif

    /* 0x06 */ u8 field_0x06;
    /* 0x08 */ f32 mInitialSpeed;
    /* 0x0C */ u8 mVibration;
};

/* 80CE4ED4-80CE4EE4 000014 0010+00 4/4 0/0 0/0 .bss             l_HIO */
static daSpinLift_HIO_c l_HIO;

/* 80CE3DAC-80CE3DE4 0000EC 0038+00 1/1 0/0 0/0 .text            __ct__16daSpinLift_HIO_cFv */
daSpinLift_HIO_c::daSpinLift_HIO_c() {
    field_0x06 = 0x3c;
    mInitialSpeed = 0.0f;
    mVibration = 4;
}

#ifdef DEBUG
void daSpinLift_HIO_c::genMessage(JORMContext* ctx) {
    // === Ascent ===
    ctx->genLabel("\n=== 上昇 ===", 0, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
    // Initial Speed
    ctx->genSlider("初速", &mInitialSpeed, 0.0f, 100.0f, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
    // Vibration
    ctx->startComboBox("振動", &mVibration, 0, NULL, 0xffff, 0xffff, 0x100, 0x1a);
    // Strength 1 - 8
    ctx->genComboBoxItem("強さ１", 1);
    ctx->genComboBoxItem("強さ２", 2);
    ctx->genComboBoxItem("強さ３", 3);
    ctx->genComboBoxItem("強さ４", 4);
    ctx->genComboBoxItem("強さ５", 5);
    ctx->genComboBoxItem("強さ６", 6);
    ctx->genComboBoxItem("強さ７", 7);
    ctx->genComboBoxItem("強さ８", 8);
    ctx->endComboBox();
}
#endif

/* 80CE4DA8-80CE4DCC -00001 0024+00 3/3 0/0 0/0 .data            l_resNameIdx */
static char* l_resNameIdx[] = {
    "L4_N_Entr", "L4_N_SlpH", "L4_N_SlpL", "L4_Center", "L4_Switch",
    "L4_S_Slp",  "L4_Wal_ZE", "L4_Wal_ZW", "L4_Wal_X",
};

/* 80CE3E2C-80CE3E9C 00016C 0070+00 2/2 0/0 0/0 .text            setBaseMtx__12daSpinLift_cFv */
void daSpinLift_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80CE3E9C-80CE3F1C 0001DC 0080+00 1/0 0/0 0/0 .text            CreateHeap__12daSpinLift_cFv */
int daSpinLift_c::CreateHeap() {
    static u32 const l_bmdIdx[] = {4, 4, 4, 4, 4, 4, 4, 4, 4};
    J3DModelData* modelData =
        (J3DModelData*)dComIfG_getObjectRes(l_resNameIdx[mModelType], l_bmdIdx[mModelType]);
    JUT_ASSERT(222, modelData != 0);
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    return mpModel == NULL ? 0 : 1;
}

/* 80CE3F1C-80CE40FC 00025C 01E0+00 1/1 0/0 0/0 .text            create__12daSpinLift_cFv */
int daSpinLift_c::create() {
    static const int l_dzbIdx[] = {7, 7, 7, 7, 7, 7, 7, 7, 7};
    fopAcM_SetupActor(this, daSpinLift_c);
    mModelType = getModelType();
    int phase = dComIfG_resLoad(&mPhase, l_resNameIdx[mModelType]);

    if (phase == cPhs_COMPLEATE_e) {
        if (MoveBGCreate(l_resNameIdx[mModelType], l_dzbIdx[mModelType],
                         dBgS_MoveBGProc_TypicalRotY, 0x9300, NULL) == cPhs_ERROR_e)
        {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());

        s8 move_height = (s8)getMoveHeight();
        mMoveHeight = move_height * 50.0f;

        u8 move_speed = (u8)getMoveSpeed();
        mMoveSpeed = mMoveHeight / move_speed;

        mTimer = getTimer();
        field_0x5bc = fopAcM_isSwitch(this, getSw());

        if (fopAcM_isSwitch(this, getEndSw())) {
            current.pos.y += mMoveHeight;
            init_modeMoveEnd();
        } else {
            init_modeWait();
        }

        setBaseMtx();
#ifdef DEBUG
        // Spin Lift
        l_HIO.entryHIO("スピンリフト");
#endif
    }

    return phase;
}

/* 80CE40FC-80CE414C 00043C 0050+00 1/0 0/0 0/0 .text            Execute__12daSpinLift_cFPPA3_A4_f
 */
int daSpinLift_c::Execute(Mtx** param_0) {
    moveLift();
    *param_0 = &mpModel->getBaseTRMtx();
    setBaseMtx();
    return 1;
}

/* 80CE414C-80CE4290 00048C 0144+00 1/1 0/0 0/0 .text            moveLift__12daSpinLift_cFv */
void daSpinLift_c::moveLift() {
    static daSpinLift_c::modeFunc mode_proc[] = {
        &daSpinLift_c::modeWait,
        &daSpinLift_c::modeUpMove,
        &daSpinLift_c::modeDownMove,
        &daSpinLift_c::modeMoveEnd,
    };

    if (!fopAcM_isSwitch(this, getEndSw())) {
        u8 f5bc = field_0x5bc;
        field_0x5bc = fopAcM_isSwitch(this, getSw());
        if (f5bc != field_0x5bc) {
            if (field_0x5bc != 0) {
                init_modeUpMove();
            } else {
                init_modeDownMove();
            }
        }
    }

    (this->*mode_proc[field_0x5ac])();
}

/* 80CE4290-80CE429C 0005D0 000C+00 3/3 0/0 0/0 .text            init_modeWait__12daSpinLift_cFv */
void daSpinLift_c::init_modeWait() {
    field_0x5ac = 0;
}

/* 80CE429C-80CE42A0 0005DC 0004+00 1/0 0/0 0/0 .text            modeWait__12daSpinLift_cFv */
void daSpinLift_c::modeWait() {}

/* 80CE42A0-80CE42C4 0005E0 0024+00 1/1 0/0 0/0 .text            init_modeUpMove__12daSpinLift_cFv
 */
void daSpinLift_c::init_modeUpMove() {
    fopAcM_SetSpeedF(this, l_HIO.mInitialSpeed);
    field_0x5ba = mTimer;
    field_0x5ac = 1;
}

/* 80CE42C4-80CE468C 000604 03C8+00 1/0 0/0 0/0 .text            modeUpMove__12daSpinLift_cFv */
void daSpinLift_c::modeUpMove() {
    if (field_0x5ba != 0) {
        field_0x5ba--;
        return;
    }

    int unused = cLib_chaseF(&speedF, mMoveSpeed, mMoveSpeed / 30.0f);
    f32 dVar3 =
        cLib_addCalc(&current.pos.y, home.pos.y + mMoveHeight, 1.0f, fopAcM_GetSpeedF(this), 0.1f);
    cXyz cStack_34(current.pos);
    cStack_34.y += cull.box.max.y;
    mDoAud_seStartLevel(Z2SE_OBJ_STN_SPRL_RAIL, &cStack_34, 0,
                        dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

    if (dVar3 == 0.0f) {
        if (mModelType == 1 || mModelType == 4) {
            init_modeMoveEnd();
            return;
        }

        mDoAud_seStart(Z2SE_OBJ_STN_SPRL_RAIL_ST, 0, 0, 0);
        dComIfGp_getVibration().StartShock(l_HIO.mVibration, 15, cXyz(0.0f, 1.0f, 0.0f));

        csXyz local_48(shape_angle);
        local_48.x = 0;

        dComIfGp_particle_set(dPa_RM(ID_ZI_S_LV4SLPH_KIDOU_A), &current.pos, &local_48, NULL);
        dComIfGp_particle_set(dPa_RM(ID_ZI_S_LV4SLPH_KIDOU_B), &current.pos, &local_48, NULL);
        dComIfGp_particle_set(dPa_RM(ID_ZI_S_LV4SLPH_KIDOU_C), &current.pos, &local_48, NULL);
        dComIfGp_particle_set(dPa_RM(ID_ZI_S_LV4SLPH_KIDOU_D), &current.pos, &local_48, NULL);
        dComIfGp_particle_set(dPa_RM(ID_ZI_S_LV4SLPH_KIDOU_E), &current.pos, &local_48, NULL);
        dComIfGp_particle_set(dPa_RM(ID_ZI_S_LV4SLPH_KIDOU_F), &current.pos, &local_48, NULL);
        dComIfGp_particle_set(dPa_RM(ID_ZI_S_LV4SLPH_KIDOU_G), &current.pos, &local_48, NULL);
        init_modeWait();
    }
}

/* 80CE468C-80CE4698 0009CC 000C+00 1/1 0/0 0/0 .text            init_modeDownMove__12daSpinLift_cFv
 */
void daSpinLift_c::init_modeDownMove() {
    field_0x5ac = 2;
}

/* 80CE4698-80CE4790 0009D8 00F8+00 1/0 0/0 0/0 .text            modeDownMove__12daSpinLift_cFv */
void daSpinLift_c::modeDownMove() {
    f32 dVar3 = cLib_addCalc(&current.pos.y, home.pos.y, 0.3f, mMoveSpeed, 0.1f);

    if (current.pos.y != home.pos.y) {
        cXyz acStack_38(current.pos);
        acStack_38.y += cull.box.max.y;
        mDoAud_seStartLevel(Z2SE_OBJ_STN_SPRL_RAIL_DW, &acStack_38, 0,
                            dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    }

    if (dVar3 == 0.0f) {
        init_modeWait();
    }
}

/* 80CE4790-80CE4A9C 000AD0 030C+00 2/2 0/0 0/0 .text            init_modeMoveEnd__12daSpinLift_cFv
 */
void daSpinLift_c::init_modeMoveEnd() {
    if (fopAcM_isSwitch(this, getEndSw()) == 0) {
        fopAcM_onSwitch(this, getEndSw());
        mDoAud_seStart(Z2SE_OBJ_STN_SPRL_RAIL_ST, 0, 0, 0);
        dComIfGp_getVibration().StartShock(l_HIO.mVibration, 15, cXyz(0.0f, 1.0f, 0.0f));

        csXyz local_28(shape_angle);
        local_28.x = 0;

        dComIfGp_particle_set(dPa_RM(ID_ZI_S_LV4SLPH_KIDOU_A), &current.pos, &local_28, NULL);
        dComIfGp_particle_set(dPa_RM(ID_ZI_S_LV4SLPH_KIDOU_B), &current.pos, &local_28, NULL);
        dComIfGp_particle_set(dPa_RM(ID_ZI_S_LV4SLPH_KIDOU_C), &current.pos, &local_28, NULL);
        dComIfGp_particle_set(dPa_RM(ID_ZI_S_LV4SLPH_KIDOU_D), &current.pos, &local_28, NULL);
        dComIfGp_particle_set(dPa_RM(ID_ZI_S_LV4SLPH_KIDOU_E), &current.pos, &local_28, NULL);
        dComIfGp_particle_set(dPa_RM(ID_ZI_S_LV4SLPH_KIDOU_F), &current.pos, &local_28, NULL);
        dComIfGp_particle_set(dPa_RM(ID_ZI_S_LV4SLPH_KIDOU_G), &current.pos, &local_28, NULL);
    }

    field_0x5ac = 3;
}

/* 80CE4A9C-80CE4AA0 000DDC 0004+00 1/0 0/0 0/0 .text            modeMoveEnd__12daSpinLift_cFv */
void daSpinLift_c::modeMoveEnd() {}

/* 80CE4AA0-80CE4B44 000DE0 00A4+00 1/0 0/0 0/0 .text            Draw__12daSpinLift_cFv */
int daSpinLift_c::Draw() {
    g_env_light.settingTevStruct(0x40, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80CE4B44-80CE4B84 000E84 0040+00 1/0 0/0 0/0 .text            Delete__12daSpinLift_cFv */
int daSpinLift_c::Delete() {
    dComIfG_resDelete(&mPhase, l_resNameIdx[mModelType]);
#ifdef DEBUG
    l_HIO.removeHIO();
#endif
    return 1;
}

/* 80CE4B84-80CE4BB0 000EC4 002C+00 1/0 0/0 0/0 .text            daSpinLift_Draw__FP12daSpinLift_c
 */
static int daSpinLift_Draw(daSpinLift_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80CE4BB0-80CE4BD0 000EF0 0020+00 1/0 0/0 0/0 .text daSpinLift_Execute__FP12daSpinLift_c */
static int daSpinLift_Execute(daSpinLift_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80CE4BD0-80CE4BF0 000F10 0020+00 1/0 0/0 0/0 .text            daSpinLift_Delete__FP12daSpinLift_c
 */
static int daSpinLift_Delete(daSpinLift_c* i_this) {
    fpc_ProcID proc_id = fopAcM_GetID(i_this);
    return i_this->MoveBGDelete();
}

/* 80CE4BF0-80CE4C10 000F30 0020+00 1/0 0/0 0/0 .text            daSpinLift_Create__FP10fopAc_ac_c
 */
static int daSpinLift_Create(fopAc_ac_c* a_this) {
    daSpinLift_c* i_this = (daSpinLift_c*)a_this;
    fpc_ProcID proc_id = fopAcM_GetID(a_this);
    return i_this->create();
}

/* 80CE4E2C-80CE4E4C -00001 0020+00 1/0 0/0 0/0 .data            l_daSpinLift_Method */
static actor_method_class l_daSpinLift_Method = {
    (process_method_func)daSpinLift_Create,  (process_method_func)daSpinLift_Delete,
    (process_method_func)daSpinLift_Execute, 0,
    (process_method_func)daSpinLift_Draw,
};

/* 80CE4E4C-80CE4E7C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_SpinLift */
extern actor_process_profile_definition g_profile_Obj_SpinLift = {
    fpcLy_CURRENT_e,         // mLayerID
    3,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_SpinLift,       // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daSpinLift_c),    // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    512,                     // mPriority
    &l_daSpinLift_Method,    // sub_method
    0x00040100,              // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
