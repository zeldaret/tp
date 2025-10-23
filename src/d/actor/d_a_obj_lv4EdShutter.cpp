/**
 * @file d_a_obj_lv4EdShutter.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_lv4EdShutter.h"

class daLv4EdShutter_HIO_c : public mDoHIO_entry_c {
public:
    /* 80C5DDAC */ daLv4EdShutter_HIO_c();
    /* 80C5E72C */ virtual ~daLv4EdShutter_HIO_c() {}

    void genMessage(JORMContext*);

    /* 0x04 */ f32 close_max_speed;
    /* 0x08 */ f32 open_speed_max;
    /* 0x0C */ s16 field_0xc;
    /* 0x0E */ u8 field_0xe;
};

/* 80C5DDAC-80C5DDF0 0000EC 0044+00 1/1 0/0 0/0 .text            __ct__20daLv4EdShutter_HIO_cFv */
daLv4EdShutter_HIO_c::daLv4EdShutter_HIO_c() {
    close_max_speed = 80.0f;
    open_speed_max = 40.0f;
    field_0xc = 60;
    field_0xe = 4;
}

/* 80C5DE38-80C5DEC8 000178 0090+00 2/2 0/0 0/0 .text            setBaseMtx__16daLv4EdShutter_cFv */
void daLv4EdShutter_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y + mMovePos, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, 0);
    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80C5DEC8-80C5DF34 000208 006C+00 1/0 0/0 0/0 .text            CreateHeap__16daLv4EdShutter_cFv */
int daLv4EdShutter_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("P_AShtr", 4);
    JUT_ASSERT(165, modelData != NULL);
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    return 1;
}

/* 80C5DF34-80C5E0A4 000274 0170+00 1/1 0/0 0/0 .text            create__16daLv4EdShutter_cFv */
int daLv4EdShutter_c::create() {
    fopAcM_ct(this, daLv4EdShutter_c);

    int phase_state = dComIfG_resLoad(&mPhase, "P_AShtr");
    if (phase_state == cPhs_COMPLEATE_e) {
        if (MoveBGCreate("P_AShtr", 7, dBgS_MoveBGProc_TypicalRotY, 0x1900, NULL) == cPhs_ERROR_e) {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());

        mOpenSw = getOpenSw();
        mCloseSw = getCloseSw();
        mMovePos = -300.0f;
        mStatus = 0;
        shape_angle.y += 0x4000;
        setBaseMtx();
        mZenmetuSw = getZenmetuSw();

        if (mZenmetuSw != 0xFF && fopAcM_isSwitch(this, mZenmetuSw)) {
            init_modeEnd();
        } else {
            init_modeWait();
        }
    }

    return phase_state;
}

/* 80C5E0A4-80C5E0F4 0003E4 0050+00 1/0 0/0 0/0 .text Execute__16daLv4EdShutter_cFPPA3_A4_f */
int daLv4EdShutter_c::Execute(Mtx** param_0) {
    move();
    *param_0 = &mpModel->getBaseTRMtx();
    setBaseMtx();
    return 1;
}

/* 80C5EA64-80C5EA74 000014 0010+00 3/3 0/0 0/0 .bss             l_HIO */
static daLv4EdShutter_HIO_c l_HIO;

/* 80C5E0F4-80C5E1B0 000434 00BC+00 1/1 0/0 0/0 .text            move__16daLv4EdShutter_cFv */
void daLv4EdShutter_c::move() {
    static void (daLv4EdShutter_c::*mode_proc[])() = {
        &daLv4EdShutter_c::modeWait,
        &daLv4EdShutter_c::modeOpen,
        &daLv4EdShutter_c::modeClose,
        &daLv4EdShutter_c::modeEnd,
    };

    (this->*mode_proc[mMode])();
}

/* 80C5E1B0-80C5E1C8 0004F0 0018+00 3/3 0/0 0/0 .text            init_modeWait__16daLv4EdShutter_cFv
 */
void daLv4EdShutter_c::init_modeWait() {
    mWaitTimer = getWaitTime();
    mMode = 0;
}

/* 80C5E1C8-80C5E2E0 000508 0118+00 1/0 0/0 0/0 .text            modeWait__16daLv4EdShutter_cFv */
void daLv4EdShutter_c::modeWait() {
    if (mStatus == 0) {
        if (fopAcM_isSwitch(this, mCloseSw)) {
            if (mWaitTimer == 0) {
                if (getEventID() != 0xFF) {
                    orderEvent(getEventID(), 0xFF, 1);
                } else {
                    eventStart();
                }
            } else {
                mWaitTimer--;
            }
        }
    } else if (fopAcM_isSwitch(this, mOpenSw)) {
        if (mWaitTimer == 0) {
            if (getEventID() != 0xFF) {
                orderEvent(getEventID(), 0xFF, 1);
            } else {
                eventStart();
            }
        } else {
            mWaitTimer--;
        }
    }
}

/* 80C5E2E0-80C5E394 000620 00B4+00 1/1 0/0 0/0 .text            init_modeOpen__16daLv4EdShutter_cFv
 */
void daLv4EdShutter_c::init_modeOpen() {
    mMoveSpeed = l_HIO.open_speed_max;

    cXyz se_pos(current.pos);
    se_pos.y = home.pos.y;
    mDoAud_seStart(Z2SE_OBJ_STL_FENCE_DW, &se_pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    mMode = 1;
}

/* 80C5E394-80C5E464 0006D4 00D0+00 1/0 0/0 0/0 .text            modeOpen__16daLv4EdShutter_cFv */
void daLv4EdShutter_c::modeOpen() {
    f32 remaining = cLib_addCalc(&mMovePos, -300.0f, 0.3f, mMoveSpeed, 5.0f);
    if (remaining == 0.0f) {
        mStatus = 0;
        fopAcM_offSwitch(this, mOpenSw);
        fopAcM_offSwitch(this, mCloseSw);

        if (mZenmetuSw != 0xFF && fopAcM_isSwitch(this, mZenmetuSw)) {
            init_modeEnd();
        } else {
            init_modeWait();
        }
    }
}

/* 80C5E464-80C5E518 0007A4 00B4+00 1/1 0/0 0/0 .text init_modeClose__16daLv4EdShutter_cFv */
void daLv4EdShutter_c::init_modeClose() {
    mMoveSpeed = l_HIO.close_max_speed;

    cXyz se_pos(current.pos);
    se_pos.y = home.pos.y;
    mDoAud_seStart(Z2SE_OBJ_STL_FENCE_UP, &se_pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    mMode = 2;
}

/* 80C5E518-80C5E584 000858 006C+00 1/0 0/0 0/0 .text            modeClose__16daLv4EdShutter_cFv */
void daLv4EdShutter_c::modeClose() {
    f32 remaining = cLib_addCalc(&mMovePos, 0.0f, 0.3f, mMoveSpeed, 5.0f);
    if (remaining == 0.0f) {
        mStatus = 1;
        init_modeWait();
    }
}

/* 80C5E584-80C5E590 0008C4 000C+00 2/2 0/0 0/0 .text            init_modeEnd__16daLv4EdShutter_cFv
 */
void daLv4EdShutter_c::init_modeEnd() {
    mMode = 3;
}

/* 80C5E590-80C5E594 0008D0 0004+00 1/0 0/0 0/0 .text            modeEnd__16daLv4EdShutter_cFv */
void daLv4EdShutter_c::modeEnd() {}

/* 80C5E594-80C5E5CC 0008D4 0038+00 2/1 0/0 0/0 .text            eventStart__16daLv4EdShutter_cFv */
bool daLv4EdShutter_c::eventStart() {
    if (mStatus == 0) {
        init_modeClose();
    } else {
        init_modeOpen();
    }

    return true;
}

/* 80C5E5CC-80C5E670 00090C 00A4+00 1/0 0/0 0/0 .text            Draw__16daLv4EdShutter_cFv */
int daLv4EdShutter_c::Draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80C5E670-80C5E6A0 0009B0 0030+00 1/0 0/0 0/0 .text            Delete__16daLv4EdShutter_cFv */
int daLv4EdShutter_c::Delete() {
    dComIfG_resDelete(&mPhase, "P_AShtr");
    return 1;
}

/* 80C5E6A0-80C5E6CC 0009E0 002C+00 1/0 0/0 0/0 .text daLv4EdShutter_Draw__FP16daLv4EdShutter_c */
static int daLv4EdShutter_Draw(daLv4EdShutter_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C5E6CC-80C5E6EC 000A0C 0020+00 1/0 0/0 0/0 .text daLv4EdShutter_Execute__FP16daLv4EdShutter_c
 */
static int daLv4EdShutter_Execute(daLv4EdShutter_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C5E6EC-80C5E70C 000A2C 0020+00 1/0 0/0 0/0 .text daLv4EdShutter_Delete__FP16daLv4EdShutter_c
 */
static int daLv4EdShutter_Delete(daLv4EdShutter_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C5E70C-80C5E72C 000A4C 0020+00 1/0 0/0 0/0 .text daLv4EdShutter_Create__FP10fopAc_ac_c */
static int daLv4EdShutter_Create(fopAc_ac_c* i_this) {
    return ((daLv4EdShutter_c*)i_this)->create();
}

/* 80C5E984-80C5E9A4 -00001 0020+00 1/0 0/0 0/0 .data            l_daLv4EdShutter_Method */
static actor_method_class l_daLv4EdShutter_Method = {
    (process_method_func)daLv4EdShutter_Create,
    (process_method_func)daLv4EdShutter_Delete,
    (process_method_func)daLv4EdShutter_Execute,
    NULL,
    (process_method_func)daLv4EdShutter_Draw,
};

/* 80C5E9A4-80C5E9D4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv4EdShutter */
extern actor_process_profile_definition g_profile_Obj_Lv4EdShutter = {
  fpcLy_CURRENT_e,          // mLayerID
  3,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_Obj_Lv4EdShutter,    // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daLv4EdShutter_c), // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  636,                      // mPriority
  &l_daLv4EdShutter_Method, // sub_method
  0x00040100,               // mStatus
  fopAc_ACTOR_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};
