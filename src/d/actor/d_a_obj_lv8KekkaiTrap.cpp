/**
 * @file d_a_obj_lv8KekkaiTrap.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_lv8KekkaiTrap.h"

class daKekaiTrap_HIO_c : public mDoHIO_entry_c {
public:
    /* 80C87CAC */ daKekaiTrap_HIO_c();
    /* 80C88438 */ virtual ~daKekaiTrap_HIO_c() {}

    void genMessage(JORMContext*);

    /* 0x04 */ f32 appear_init_speed;
    /* 0x08 */ f32 appear_max_speed;
    /* 0x0C */ u8 appear_wait;
    /* 0x10 */ f32 disappear_init_speed;
    /* 0x14 */ f32 disappear_max_speed;
    /* 0x18 */ u8 disappear_wait;
};

/* 80C8861C-80C88638 000014 001C+00 5/5 0/0 0/0 .bss             l_HIO */
static daKekaiTrap_HIO_c l_HIO;

/* 80C88524-80C88528 -00001 0004+00 3/3 0/0 0/0 .data            l_type */
static char* l_type[] = {"Lv8Kekkai"};

/* 80C88528-80C8852C 000024 0004+00 1/1 0/0 0/0 .data            l_bmdIdx */
static int l_bmdIdx[] = {4};

/* 80C8852C-80C88530 000028 0004+00 1/1 0/0 0/0 .data            l_dzbIdx */
static int l_dzbIdx[] = {7};

/* 80C87CAC-80C87CF8 0000EC 004C+00 1/1 0/0 0/0 .text            __ct__17daKekaiTrap_HIO_cFv */
daKekaiTrap_HIO_c::daKekaiTrap_HIO_c() {
    appear_init_speed = 0.0f;
    appear_max_speed = 0.7f;
    appear_wait = 10;
    disappear_init_speed = 0.0f;
    disappear_max_speed = 0.7f;
    disappear_wait = 30;
}

/* 80C87D40-80C87DC8 000180 0088+00 2/2 0/0 0/0 .text            setBaseMtx__13daKekaiTrap_cFv */
void daKekaiTrap_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80C87DC8-80C87E48 000208 0080+00 1/0 0/0 0/0 .text            CreateHeap__13daKekaiTrap_cFv */
int daKekaiTrap_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_type[mType], l_bmdIdx[mType]);
    JUT_ASSERT(170, modelData != NULL);

    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    return 1;
}

/* 80C87E48-80C87FB0 000288 0168+00 1/1 0/0 0/0 .text            create__13daKekaiTrap_cFv */
int daKekaiTrap_c::create() {
    fopAcM_ct(this, daKekaiTrap_c);

    mType = getType();
    
    int phase_state = dComIfG_resLoad(&mPhase, l_type[mType]);
    if (phase_state == cPhs_COMPLEATE_e) {
        if (MoveBGCreate(l_type[mType], l_dzbIdx[mType], dBgS_MoveBGProc_TypicalRotY, 0x4000, NULL) == cPhs_ERROR_e) {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());

        mSwbit = getSwBit();
        mIsSwitch = fopAcM_isSwitch(this, mSwbit);
        if (!mIsSwitch) {
            if (mpBgW != NULL) {
                dComIfG_Bgsp().Release(mpBgW);
            }
            scale.y = 0.0f;
        }

        init_modeWait();
        setBaseMtx();

        #if DEBUG
        l_HIO.entryHIO("結界トラップ(Lv8)");
        #endif
    }

    return phase_state;
}

/* 80C87FB0-80C88000 0003F0 0050+00 1/0 0/0 0/0 .text            Execute__13daKekaiTrap_cFPPA3_A4_f
 */
int daKekaiTrap_c::Execute(Mtx** param_0) {
    moveMain();
    *param_0 = &mpModel->getBaseTRMtx();
    setBaseMtx();
    return 1;
}

/* 80C88000-80C88104 000440 0104+00 1/1 0/0 0/0 .text            moveMain__13daKekaiTrap_cFv */
void daKekaiTrap_c::moveMain() {
    static void (daKekaiTrap_c::*mode_proc[])() = {
        &daKekaiTrap_c::modeWait,
        &daKekaiTrap_c::modeMoveUp,
        &daKekaiTrap_c::modeMoveDown,
    };

    u8 prev_switch = mIsSwitch;
    mIsSwitch = fopAcM_isSwitch(this, mSwbit);
    if (mIsSwitch != prev_switch) {
        if (mIsSwitch) {
            init_modeMoveUp();
        } else {
            init_modeMoveDown();
        }
    }

    (this->*mode_proc[mMode])();
}

/* 80C88104-80C88110 000544 000C+00 3/3 0/0 0/0 .text            init_modeWait__13daKekaiTrap_cFv */
void daKekaiTrap_c::init_modeWait() {
    mMode = 0;
}

/* 80C88110-80C88114 000550 0004+00 1/0 0/0 0/0 .text            modeWait__13daKekaiTrap_cFv */
void daKekaiTrap_c::modeWait() {}

/* 80C88114-80C88138 000554 0024+00 1/1 0/0 0/0 .text            init_modeMoveUp__13daKekaiTrap_cFv
 */
void daKekaiTrap_c::init_modeMoveUp() {
    fopAcM_SetSpeedF(this, l_HIO.appear_init_speed);
    mTimer = l_HIO.appear_wait;
    mMode = 1;
}

/* 80C88138-80C881F0 000578 00B8+00 1/0 0/0 0/0 .text            modeMoveUp__13daKekaiTrap_cFv */
void daKekaiTrap_c::modeMoveUp() {
    if (mTimer != 0) {
        mTimer--;
        return;
    }

    cLib_chaseF(&speedF, l_HIO.appear_max_speed, l_HIO.appear_max_speed / 30.0f);

    if (cLib_addCalc(&scale.y, 1.0f, 1.0f, fopAcM_GetSpeedF(this), 0.03f) == 0.0f) {
        if (mpBgW != NULL) {
            dComIfG_Bgsp().Regist(mpBgW, this);
        }
        init_modeWait();
    }
}

/* 80C881F0-80C88214 000630 0024+00 1/1 0/0 0/0 .text init_modeMoveDown__13daKekaiTrap_cFv */
void daKekaiTrap_c::init_modeMoveDown() {
    fopAcM_SetSpeedF(this, l_HIO.disappear_init_speed);
    mTimer = l_HIO.disappear_wait;
    mMode = 2;
}

/* 80C88214-80C882C8 000654 00B4+00 1/0 0/0 0/0 .text            modeMoveDown__13daKekaiTrap_cFv */
void daKekaiTrap_c::modeMoveDown() {
    if (mTimer != 0) {
        mTimer--;
        return;
    }

    cLib_chaseF(&speedF, l_HIO.disappear_max_speed, l_HIO.disappear_max_speed / 30.0f);

    if (cLib_addCalc(&scale.y, 0.0f, 1.0f, fopAcM_GetSpeedF(this), 0.03f) == 0.0f) {
        if (mpBgW != NULL) {
            dComIfG_Bgsp().Release(mpBgW);
        }
        init_modeWait();
    }
}

/* 80C882C8-80C8836C 000708 00A4+00 1/0 0/0 0/0 .text            Draw__13daKekaiTrap_cFv */
int daKekaiTrap_c::Draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80C8836C-80C883AC 0007AC 0040+00 1/0 0/0 0/0 .text            Delete__13daKekaiTrap_cFv */
int daKekaiTrap_c::Delete() {
    dComIfG_resDelete(&mPhase, l_type[mType]);
    #if DEBUG
    l_HIO.removeHIO();
    #endif
    return 1;
}

/* 80C883AC-80C883D8 0007EC 002C+00 1/0 0/0 0/0 .text            daKekaiTrap_Draw__FP13daKekaiTrap_c
 */
static int daKekaiTrap_Draw(daKekaiTrap_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C883D8-80C883F8 000818 0020+00 1/0 0/0 0/0 .text daKekaiTrap_Execute__FP13daKekaiTrap_c */
static int daKekaiTrap_Execute(daKekaiTrap_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C883F8-80C88418 000838 0020+00 1/0 0/0 0/0 .text daKekaiTrap_Delete__FP13daKekaiTrap_c */
static int daKekaiTrap_Delete(daKekaiTrap_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C88418-80C88438 000858 0020+00 1/0 0/0 0/0 .text            daKekaiTrap_Create__FP10fopAc_ac_c
 */
static int daKekaiTrap_Create(fopAc_ac_c* i_this) {
    return ((daKekaiTrap_c*)i_this)->create();
}

/* 80C88578-80C88598 -00001 0020+00 1/0 0/0 0/0 .data            l_daKekaiTrap_Method */
static actor_method_class l_daKekaiTrap_Method = {
    (process_method_func)daKekaiTrap_Create,
    (process_method_func)daKekaiTrap_Delete,
    (process_method_func)daKekaiTrap_Execute,
    NULL,
    (process_method_func)daKekaiTrap_Draw,
};

/* 80C88598-80C885C8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv8KekkaiTrap */
extern actor_process_profile_definition g_profile_Obj_Lv8KekkaiTrap = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Lv8KekkaiTrap, // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daKekaiTrap_c),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  644,                    // mPriority
  &l_daKekaiTrap_Method,  // sub_method
  0x00044000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
