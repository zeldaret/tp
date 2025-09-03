/**
 * @file d_a_L7low_dr.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_L7low_dr.h"
#include "d/d_com_inf_game.h"

/* 805AA5F8-805AA69C 000078 00A4+00 1/1 0/0 0/0 .text
 * setAction__11daL7lowDr_cFM11daL7lowDr_cFPCvPv_v              */
void daL7lowDr_c::setAction(daL7lowDr_c::actionFn i_action) {
    if (mAction != NULL) {
        field_0x63c = -1;
        (this->*mAction)();
    }

    field_0x630 = mAction;
    mAction = i_action;
    field_0x63c = 0;
    (this->*mAction)();
}

/* 805AA69C-805AA748 00011C 00AC+00 1/1 0/0 0/0 .text            action__11daL7lowDr_cFv */
void daL7lowDr_c::action() {
    if (field_0x640 != 0) {
        field_0x640--;
    }

    (this->*mAction)();

    shape_angle = current.angle;
    fopAcM_posMoveF(this, NULL);
    mpModelMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

    mtx_set();
    eyePos = current.pos;
}

/* 805AA748-805AA798 0001C8 0050+00 1/1 0/0 0/0 .text            _delete__11daL7lowDr_cFv */
int daL7lowDr_c::_delete() {
    dComIfG_resDelete(&mPhase, "L7lowDr");

    if (heap != NULL) {
        mpModelMorf->stopZelAnime();
    }

    return 1;
}

/* 805AA798-805AA7B8 000218 0020+00 1/0 0/0 0/0 .text            daL7lowDr_Delete__FP11daL7lowDr_c
 */
static int daL7lowDr_Delete(daL7lowDr_c* i_this) {
    return i_this->_delete();
}

/* 805AA7B8-805AA828 000238 0070+00 1/1 0/0 0/0 .text            mtx_set__11daL7lowDr_cFv */
void daL7lowDr_c::mtx_set() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);

    J3DModel* model = mpModelMorf->getModel();
    model->setBaseScale(scale);
    model->setBaseTRMtx(mDoMtx_stack_c::get());

    mpModelMorf->modelCalc();
}

/* 805AA828-805AABF8 0002A8 03D0+00 1/0 0/0 0/0 .text            fly__11daL7lowDr_cFv */
void daL7lowDr_c::fly() {
    if (field_0x63c == 0) {
        s16 var_r28 = cM_rndFX(32768.0f);
        current.pos.set(cM_ssin(var_r28) * 2800.0f, 8000.0f, cM_scos(var_r28) * 2800.0f);
        current.pos += home.pos;
        current.angle.y = cLib_targetAngleY(&current.pos, &home.pos) + 0x4000;

        mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("L7lowDr", 4), 2, 20.0f, 1.0f, 0.0f, -1.0f);
        speedF = 30.0f;
        field_0x640 = cM_rndFX(60.0f) + 210.0f;
        field_0x63c++;
    } else if (field_0x63c != -1) {
        current.angle.y = cLib_targetAngleY(&current.pos, &home.pos) + 0x4000;
        fopAcM_posMoveF(this, NULL);

        if (field_0x63c == 1) {
            cLib_chaseAngleS(&current.angle.z, 0, 0x20);

            if (mpModelMorf->isStop()) {
                mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("L7lowDr", 4), 2, 3.0f, 1.0f, 0.0f, -1.0f);
            }

            if (field_0x640 == 0 && mpModelMorf->getFrame() >= 33.0f) {
                if ((int)cM_rndF(2.0f) != 0) {
                    field_0x640 = cM_rndFX(60.0f) + 210.0f;
                } else {
                    mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("L7lowDr", 5), 0, 3.0f, 1.0f, 0.0f, -1.0f);
                    field_0x640 = cM_rndFX(60.0f) + 180.0f;
                    field_0x63c++;
                }
            }
        } else {
            cLib_chaseAngleS(&current.angle.z, 0x1000, 0x20);

            if (mpModelMorf->isStop()) {
                mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("L7lowDr", 6), 2, 3.0f, 1.0f, 0.0f, -1.0f);
            }

            if (field_0x640 == 0 && mpModelMorf->getFrame() >= 67.0f) {
                mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("L7lowDr", 7), 0, 3.0f, 1.0f, 0.0f, -1.0f);
                field_0x640 = cM_rndFX(60.0f) + 210.0f;
                field_0x63c = 1;
            }
        }
    }
}

/* 805AABF8-805AAC1C 000678 0024+00 1/1 0/0 0/0 .text            execute__11daL7lowDr_cFv */
int daL7lowDr_c::execute() {
    action();
    return 1;
}

/* 805AAC1C-805AAC3C 00069C 0020+00 2/1 0/0 0/0 .text            daL7lowDr_Execute__FP11daL7lowDr_c
 */
static int daL7lowDr_Execute(daL7lowDr_c* i_this) {
    return i_this->execute();
}

/* 805AAC3C-805AAC5C 0006BC 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    daL7lowDr_c* a_this = (daL7lowDr_c*)i_this;
    return a_this->CreateHeap();
}

/* 805AAC5C-805AAD58 0006DC 00FC+00 1/1 0/0 0/0 .text            CreateHeap__11daL7lowDr_cFv */
int daL7lowDr_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("L7lowDr", 10);
    JUT_ASSERT(244, modelData != 0);
    mpModelMorf = new mDoExt_McaMorfSO(modelData, NULL, NULL, (J3DAnmTransform*)dComIfG_getObjectRes("L7lowDr", 4), 0, 1.0f, 0, -1, &mSound, 0x80000, 0x11000084);
    if (mpModelMorf == NULL || mpModelMorf->getModel() == NULL) {
        return 0;
    }

    J3DModel* model = mpModelMorf->getModel();
    model->setUserArea((u32)this);
    return 1;
}

/* 805AAD58-805AAE88 0007D8 0130+00 1/1 0/0 0/0 .text            create__11daL7lowDr_cFv */
int daL7lowDr_c::create() {
    fopAcM_SetupActor(this, daL7lowDr_c);

    int phase_state = dComIfG_resLoad(&mPhase, "L7lowDr");
    if (phase_state == cPhs_COMPLEATE_e) {
        OS_REPORT("////////////// L7lowDr ///////////////////\n");
        if (!fopAcM_entrySolidHeap(this, useHeapInit, 0x1D20)) {
            return cPhs_ERROR_e;
        }

        OS_REPORT("//////////// L7lowDr SET OK //////////////\n");

        if (dComIfGs_isStageBossEnemy()) {
            OS_REPORT("L7俯瞰翼竜：ボス死んでるのでセットしない\n");
            return cPhs_ERROR_e;
        }

        scale.setall(1.0f);
        attention_info.flags = 0;

        mSound.init(&current.pos, &eyePos, 3, 1);

        setAction(&daL7lowDr_c::fly);
        daL7lowDr_Execute(this);
    }

    return phase_state;
}

/* 805AAE88-805AAEA8 000908 0020+00 1/0 0/0 0/0 .text            daL7lowDr_Create__FP11daL7lowDr_c
 */
static int daL7lowDr_Create(daL7lowDr_c* i_this) {
    return i_this->create();
}

/* 805AAEA8-805AAF44 000928 009C+00 1/1 0/0 0/0 .text            draw__11daL7lowDr_cFv */
int daL7lowDr_c::draw() {
         /* dSv_event_flag_c::F_0510 - City in the Sky - Watched City in the Sky start cutscene */
    if (!dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[510])) {
        return 1;
    }

    J3DModel* model = mpModelMorf->getModel();

    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &tevStr);
    mpModelMorf->entryDL();
    return 1;
}

/* 805AAF44-805AAF64 0009C4 0020+00 1/0 0/0 0/0 .text            daL7lowDr_Draw__FP11daL7lowDr_c */
static int daL7lowDr_Draw(daL7lowDr_c* i_this) {
    return i_this->draw();
}

/* 805AAF64-805AAF6C 0009E4 0008+00 1/0 0/0 0/0 .text            daL7lowDr_IsDelete__FP11daL7lowDr_c
 */
static int daL7lowDr_IsDelete(daL7lowDr_c* i_this) {
    return 1;
}

/* 805AAFC4-805AAFE4 -00001 0020+00 1/0 0/0 0/0 .data            l_daL7lowDr_Method */
static actor_method_class l_daL7lowDr_Method = {
    (process_method_func)daL7lowDr_Create,
    (process_method_func)daL7lowDr_Delete,
    (process_method_func)daL7lowDr_Execute,
    (process_method_func)daL7lowDr_IsDelete,
    (process_method_func)daL7lowDr_Draw,
};

/* 805AAFE4-805AB014 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_L7lowDr */
extern actor_process_profile_definition g_profile_L7lowDr = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_L7lowDr,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daL7lowDr_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  207,                    // mPriority
  &l_daL7lowDr_Method,    // sub_method
  0x00040000,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
