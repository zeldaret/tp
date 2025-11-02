/**
 * @file d_a_obj_lv7BsGate.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_lv7BsGate.h"

class daLv7BsGate_HIO_c : public mDoHIO_entry_c {
public:
    /* 80C848AC */ daLv7BsGate_HIO_c();
    /* 80C85164 */ virtual ~daLv7BsGate_HIO_c() {}

    void genMessage(JORMContext*);

    /* 0x04 */ f32 open_speed;
    /* 0x08 */ f32 close_speed;
    /* 0x0C */ u8 vibration;
};

/* 80C8536C-80C8537C 000014 0010+00 3/3 0/0 0/0 .bss             l_HIO */
static daLv7BsGate_HIO_c l_HIO;

/* 80C85264-80C8526C -00001 0008+00 3/3 0/0 0/0 .data            l_type */
static char* l_type[2] = {
    "L7Gate",
    "L7GateL",
};

/* 80C8526C-80C85274 000028 0008+00 1/1 0/0 0/0 .data            l_bmdIdx */
static int l_bmdIdx[] = {4, 4};

/* 80C85274-80C8527C 000030 0008+00 1/1 0/0 0/0 .data            l_dzbIdx */
static int l_dzbIdx[] = {7, 7};

/* 80C848AC-80C848E8 0000EC 003C+00 1/1 0/0 0/0 .text            __ct__17daLv7BsGate_HIO_cFv */
daLv7BsGate_HIO_c::daLv7BsGate_HIO_c() {
    open_speed = 2.0f;
    close_speed = 12.0f;
    vibration = 3;
}

/* 80C84930-80C849CC 000170 009C+00 2/2 0/0 0/0 .text            setBaseMtx__13daLv7BsGate_cFv */
void daLv7BsGate_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mDoMtx_stack_c::transM(field_0x5b8, 0.0f, 0.0f);
    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80C849CC-80C84A4C 00020C 0080+00 1/0 0/0 0/0 .text            CreateHeap__13daLv7BsGate_cFv */
int daLv7BsGate_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_type[mType], l_bmdIdx[mType]);
    JUT_ASSERT(191, modelData != NULL);

    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    return 1;
}

/* 80C84A4C-80C84BCC 00028C 0180+00 1/1 0/0 0/0 .text            create__13daLv7BsGate_cFv */
int daLv7BsGate_c::create() {
    fopAcM_ct(this, daLv7BsGate_c);

    mType = getType();

    int phase_state = dComIfG_resLoad(&mPhase, l_type[mType]);
    if (phase_state == cPhs_COMPLEATE_e) {
        if (MoveBGCreate(l_type[mType], l_dzbIdx[mType], dBgS_MoveBGProc_TypicalRotY, 0x2600, NULL) == cPhs_ERROR_e) {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());

        mIsSwitch = fopAcM_isSwitch(this, getSw());
        mLR = getLR();
        field_0x5b4 = -450.0f;

        if (mLR == 1) {
            shape_angle.y += 0x8000;
        }

        field_0x5b8 = 0.0f;

        if (mIsSwitch) {
            field_0x5b8 = field_0x5b4;
        }

        init_modeWait();
        setBaseMtx();

        #if DEBUG
        l_HIO.entryHIO("ぶら下がりスイッチゲート(Lv7)");
        #endif
    }

    return phase_state;
}

/* 80C84BCC-80C84C1C 00040C 0050+00 1/0 0/0 0/0 .text            Execute__13daLv7BsGate_cFPPA3_A4_f
 */
int daLv7BsGate_c::Execute(Mtx** param_0) {
    moveGate();
    *param_0 = &mpModel->getBaseTRMtx();
    setBaseMtx();
    return 1;
}

/* 80C84C1C-80C84D24 00045C 0108+00 1/1 0/0 0/0 .text            moveGate__13daLv7BsGate_cFv */
void daLv7BsGate_c::moveGate() {
    static void (daLv7BsGate_c::*mode_proc[])() = {
        &daLv7BsGate_c::modeWait,
        &daLv7BsGate_c::modeOpen,
        &daLv7BsGate_c::modeClose,
    };

    u8 prev_switch = mIsSwitch;
    mIsSwitch = fopAcM_isSwitch(this, getSw());
    if (mIsSwitch != prev_switch) {
        if (mIsSwitch) {
            init_modeOpen();
        } else {
            init_modeClose();
        }
    }

    (this->*mode_proc[mMode])();
}

/* 80C84D24-80C84D30 000564 000C+00 3/3 0/0 0/0 .text            init_modeWait__13daLv7BsGate_cFv */
void daLv7BsGate_c::init_modeWait() {
    mMode = 0;
}

/* 80C84D30-80C84D34 000570 0004+00 1/0 0/0 0/0 .text            modeWait__13daLv7BsGate_cFv */
void daLv7BsGate_c::modeWait() {}

/* 80C84D34-80C84D40 000574 000C+00 1/1 0/0 0/0 .text            init_modeOpen__13daLv7BsGate_cFv */
void daLv7BsGate_c::init_modeOpen() {
    mMode = 1;
}

/* 80C84D40-80C84E94 000580 0154+00 1/0 0/0 0/0 .text            modeOpen__13daLv7BsGate_cFv */
void daLv7BsGate_c::modeOpen() {
    if (mLR == 0) {
        mDoAud_seStartLevel(Z2SE_OBJ_SW_W_DR_OP, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    }

    if (0.0f == cLib_addCalc(&field_0x5b8, field_0x5b4, 0.2f, l_HIO.open_speed, 0.5f)) {
        if (mLR == 0) {
            mDoAud_seStart(Z2SE_OBJ_SW_W_DR_OP_STOP, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
        }

        dComIfGp_getVibration().StartShock(l_HIO.vibration, 0xF, cXyz(0.0f, 1.0f, 0.0f));
        init_modeWait();
    }
}

/* 80C84E94-80C84EA0 0006D4 000C+00 1/1 0/0 0/0 .text            init_modeClose__13daLv7BsGate_cFv
 */
void daLv7BsGate_c::init_modeClose() {
    mMode = 2;
}

/* 80C84EA0-80C84FF4 0006E0 0154+00 1/0 0/0 0/0 .text            modeClose__13daLv7BsGate_cFv */
void daLv7BsGate_c::modeClose() {
    if (mLR == 0) {
        mDoAud_seStartLevel(Z2SE_OBJ_SW_W_DR_CL, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    }

    if (0.0f == cLib_addCalc(&field_0x5b8, 0.0f, 0.4f, l_HIO.close_speed, 0.5f)) {
        if (mLR == 0) {
            mDoAud_seStart(Z2SE_OBJ_SW_W_DR_CL_STOP, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
        }

        dComIfGp_getVibration().StartShock(l_HIO.vibration, 0xF, cXyz(0.0f, 1.0f, 0.0f));
        init_modeWait();
    }
}

/* 80C84FF4-80C85098 000834 00A4+00 1/0 0/0 0/0 .text            Draw__13daLv7BsGate_cFv */
int daLv7BsGate_c::Draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80C85098-80C850D8 0008D8 0040+00 1/0 0/0 0/0 .text            Delete__13daLv7BsGate_cFv */
int daLv7BsGate_c::Delete() {
    dComIfG_resDelete(&mPhase, l_type[mType]);
    #if DEBUG
    l_HIO.removeHIO();
    #endif
    return 1;
}

/* 80C850D8-80C85104 000918 002C+00 1/0 0/0 0/0 .text            daLv7BsGate_Draw__FP13daLv7BsGate_c
 */
static int daLv7BsGate_Draw(daLv7BsGate_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C85104-80C85124 000944 0020+00 1/0 0/0 0/0 .text daLv7BsGate_Execute__FP13daLv7BsGate_c */
static int daLv7BsGate_Execute(daLv7BsGate_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C85124-80C85144 000964 0020+00 1/0 0/0 0/0 .text daLv7BsGate_Delete__FP13daLv7BsGate_c */
static int daLv7BsGate_Delete(daLv7BsGate_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C85144-80C85164 000984 0020+00 1/0 0/0 0/0 .text            daLv7BsGate_Create__FP10fopAc_ac_c
 */
static int daLv7BsGate_Create(fopAc_ac_c* i_this) {
    return ((daLv7BsGate_c*)i_this)->create();
}

/* 80C852C4-80C852E4 -00001 0020+00 1/0 0/0 0/0 .data            l_daLv7BsGate_Method */
static actor_method_class l_daLv7BsGate_Method = {
    (process_method_func)daLv7BsGate_Create,
    (process_method_func)daLv7BsGate_Delete,
    (process_method_func)daLv7BsGate_Execute,
    0,
    (process_method_func)daLv7BsGate_Draw,
};

/* 80C852E4-80C85314 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv7BsGate */
extern actor_process_profile_definition g_profile_Obj_Lv7BsGate = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Lv7BsGate,     // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daLv7BsGate_c),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  642,                    // mPriority
  &l_daLv7BsGate_Method,  // sub_method
  0x00040000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
