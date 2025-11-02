/**
 * @file d_a_obj_lv9SwShutter.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_lv9SwShutter.h"

class daLv9SwShutter_HIO_c : public mDoHIO_entry_c {
public:
    /* 80C8CEAC */ daLv9SwShutter_HIO_c();
    /* 80C8D730 */ virtual ~daLv9SwShutter_HIO_c() {}

    void genMessage(JORMContext*);

    /* 0x04 */ f32 open_speed;
    /* 0x08 */ f32 close_speed;
    /* 0x0C */ f32 close_accel;
    /* 0x10 */ u8 vibration;
};

/* 80C8CEAC-80C8CEF0 0000EC 0044+00 1/1 0/0 0/0 .text            __ct__20daLv9SwShutter_HIO_cFv */
daLv9SwShutter_HIO_c::daLv9SwShutter_HIO_c() {
    open_speed = 6.0f;
    close_speed = 30.0f;
    close_accel = 15.0f;
    vibration = 3;
}

/* 80C8D91C-80C8D930 000014 0014+00 3/3 0/0 0/0 .bss             l_HIO */
static daLv9SwShutter_HIO_c l_HIO;

/* 80C8CF38-80C8CFD4 000178 009C+00 2/2 0/0 0/0 .text            setBaseMtx__16daLv9SwShutter_cFv */
void daLv9SwShutter_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mDoMtx_stack_c::transM(0.0f, field_0x5b0, 0.0f);
    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80C8CFD4-80C8D040 000214 006C+00 1/0 0/0 0/0 .text            CreateHeap__16daLv9SwShutter_cFv */
int daLv9SwShutter_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("L9SwShut", 4);
    JUT_ASSERT(167, modelData != NULL);

    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    return 1;
}

/* 80C8D040-80C8D168 000280 0128+00 1/1 0/0 0/0 .text            create__16daLv9SwShutter_cFv */
int daLv9SwShutter_c::create() {
    fopAcM_ct(this, daLv9SwShutter_c);

    int phase_state = dComIfG_resLoad(&mPhase, "L9SwShut");
    if (phase_state == cPhs_COMPLEATE_e) {
        if (MoveBGCreate("L9SwShut", 7, dBgS_MoveBGProc_TypicalRotY, 0x1300, NULL) == cPhs_ERROR_e) {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());

        mSwbit = getSw();
        field_0x5b0 = 0.0f;

        mIsSwitch = fopAcM_isSwitch(this, mSwbit);
        if (mIsSwitch) {
            field_0x5b0 = 600.0f;
        }

        init_modeWait();
        setBaseMtx();

        #if DEBUG
        l_HIO.entryHIO("スイッチシャッター(Lv9)");
        #endif
    }

    return phase_state;
}

/* 80C8D168-80C8D1B8 0003A8 0050+00 1/0 0/0 0/0 .text Execute__16daLv9SwShutter_cFPPA3_A4_f */
int daLv9SwShutter_c::Execute(Mtx** param_0) {
    moveShutter();
    *param_0 = &mpModel->getBaseTRMtx();
    setBaseMtx();
    return 1;
}

/* 80C8D1B8-80C8D2BC 0003F8 0104+00 1/1 0/0 0/0 .text            moveShutter__16daLv9SwShutter_cFv
 */
void daLv9SwShutter_c::moveShutter() {
    static void (daLv9SwShutter_c::*mode_proc[])() = {
        &daLv9SwShutter_c::modeWait,
        &daLv9SwShutter_c::modeOpen,
        &daLv9SwShutter_c::modeClose,
    };

    u8 prev_switch = mIsSwitch;
    mIsSwitch = fopAcM_isSwitch(this, mSwbit);
    if (mIsSwitch != prev_switch) {
        if (mIsSwitch) {
            init_modeOpen();
        } else {
            init_modeClose();
        }
    }

    (this->*mode_proc[mMode])();
}

/* 80C8D2BC-80C8D2C8 0004FC 000C+00 3/3 0/0 0/0 .text            init_modeWait__16daLv9SwShutter_cFv
 */
void daLv9SwShutter_c::init_modeWait() {
    mMode = 0;
}

/* 80C8D2C8-80C8D2CC 000508 0004+00 1/0 0/0 0/0 .text            modeWait__16daLv9SwShutter_cFv */
void daLv9SwShutter_c::modeWait() {}

/* 80C8D2CC-80C8D2D8 00050C 000C+00 1/1 0/0 0/0 .text            init_modeOpen__16daLv9SwShutter_cFv
 */
void daLv9SwShutter_c::init_modeOpen() {
    mMode = 1;
}

/* 80C8D2D8-80C8D440 000518 0168+00 1/0 0/0 0/0 .text            modeOpen__16daLv9SwShutter_cFv */
void daLv9SwShutter_c::modeOpen() {
    f32 temp_f31 = cLib_addCalc(&field_0x5b0, 600.0f, 0.1f, l_HIO.open_speed, 5.0f);
    mDoMtx_stack_c::ZXYrotS(shape_angle.x, shape_angle.y, shape_angle.z);
    cXyz sp8(0.0f, field_0x5b0, 0.0f);
    mDoMtx_stack_c::multVec(&sp8, &sp8);
    sp8 += current.pos;

    mDoAud_seStartLevel(Z2SE_OBJ_GATE_LV9_OP, &sp8, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    if (0.0f == temp_f31) {
        mDoAud_seStart(Z2SE_OBJ_GATE_LV9_STOP, &sp8, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
        init_modeWait();
    }
}

/* 80C8D440-80C8D458 000680 0018+00 1/1 0/0 0/0 .text init_modeClose__16daLv9SwShutter_cFv */
void daLv9SwShutter_c::init_modeClose() {
    fopAcM_SetSpeedF(this, 0.0f);
    mMode = 2;
}

/* 80C8D458-80C8D5D0 000698 0178+00 1/0 0/0 0/0 .text            modeClose__16daLv9SwShutter_cFv */
void daLv9SwShutter_c::modeClose() {
    cLib_chaseF(&speedF, l_HIO.close_speed, l_HIO.close_accel);

    f32 temp_f31 = cLib_addCalc(&field_0x5b0, 0.0f, 1.0f, fopAcM_GetSpeedF(this), 5.0f);
    mDoMtx_stack_c::ZXYrotS(shape_angle.x, shape_angle.y, shape_angle.z);
    cXyz sp8(0.0f, field_0x5b0, 0.0f);
    mDoMtx_stack_c::multVec(&sp8, &sp8);
    sp8 += current.pos;

    mDoAud_seStartLevel(Z2SE_OBJ_GATE_LV9_OP, &sp8, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    if (0.0f == temp_f31) {
        mDoAud_seStart(Z2SE_OBJ_GATE_LV9_STOP, &sp8, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
        init_modeWait();
    }
}

/* 80C8D5D0-80C8D674 000810 00A4+00 1/0 0/0 0/0 .text            Draw__16daLv9SwShutter_cFv */
int daLv9SwShutter_c::Draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80C8D674-80C8D6A4 0008B4 0030+00 1/0 0/0 0/0 .text            Delete__16daLv9SwShutter_cFv */
int daLv9SwShutter_c::Delete() {
    dComIfG_resDelete(&mPhase, "L9SwShut");
    #if DEBUG
    l_HIO.removeHIO();
    #endif
    return 1;
}

/* 80C8D6A4-80C8D6D0 0008E4 002C+00 1/0 0/0 0/0 .text daLv9SwShutter_Draw__FP16daLv9SwShutter_c */
static int daLv9SwShutter_Draw(daLv9SwShutter_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C8D6D0-80C8D6F0 000910 0020+00 1/0 0/0 0/0 .text daLv9SwShutter_Execute__FP16daLv9SwShutter_c
 */
static int daLv9SwShutter_Execute(daLv9SwShutter_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C8D6F0-80C8D710 000930 0020+00 1/0 0/0 0/0 .text daLv9SwShutter_Delete__FP16daLv9SwShutter_c
 */
static int daLv9SwShutter_Delete(daLv9SwShutter_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C8D710-80C8D730 000950 0020+00 1/0 0/0 0/0 .text daLv9SwShutter_Create__FP10fopAc_ac_c */
static int daLv9SwShutter_Create(fopAc_ac_c* i_this) {
    return ((daLv9SwShutter_c*)i_this)->create();
}

/* 80C8D874-80C8D894 -00001 0020+00 1/0 0/0 0/0 .data            l_daLv9SwShutter_Method */
static actor_method_class l_daLv9SwShutter_Method = {
    (process_method_func)daLv9SwShutter_Create,
    (process_method_func)daLv9SwShutter_Delete,
    (process_method_func)daLv9SwShutter_Execute,
    NULL,
    (process_method_func)daLv9SwShutter_Draw,
};

/* 80C8D894-80C8D8C4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv9SwShutter */
extern actor_process_profile_definition g_profile_Obj_Lv9SwShutter = {
  fpcLy_CURRENT_e,          // mLayerID
  3,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_Obj_Lv9SwShutter,    // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daLv9SwShutter_c), // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  647,                      // mPriority
  &l_daLv9SwShutter_Method, // sub_method
  0x00040000,               // mStatus
  fopAc_ACTOR_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};
