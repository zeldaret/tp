/**
 * @file d_a_obj_poCandle.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_poCandle.h"

class daPoCandle_HIO_c : public mDoHIO_entry_c {
public:
    /* 80CB1A6C */ daPoCandle_HIO_c();
    /* 80CB2508 */ virtual ~daPoCandle_HIO_c() {}

    void genMessage(JORMContext*);

    /* 0x4 */ u8 waittimer;
    /* 0x8 */ f32 firescale;
};

/* 80CB1A6C-80CB1A9C 0000EC 0030+00 1/1 0/0 0/0 .text            __ct__16daPoCandle_HIO_cFv */
daPoCandle_HIO_c::daPoCandle_HIO_c() {
    waittimer = 30;
    firescale = 3.0f;
}

/* 80CB1AE4-80CB1B6C 000164 0088+00 2/2 0/0 0/0 .text            setBaseMtx__12daPoCandle_cFv */
void daPoCandle_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(current.angle.x, current.angle.y, current.angle.z);
    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80CB1B6C-80CB1BD8 0001EC 006C+00 1/0 0/0 0/0 .text            CreateHeap__12daPoCandle_cFv */
int daPoCandle_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("P_PCNDL", 4);
    JUT_ASSERT(160, modelData != NULL);

    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    return 1;
}

/* 80CB1BD8-80CB1D74 000258 019C+00 1/1 0/0 0/0 .text            create__12daPoCandle_cFv */
int daPoCandle_c::create() {
    fopAcM_ct(this, daPoCandle_c);

    int phase_state = dComIfG_resLoad(&mPhase, "P_PCNDL");
    if (phase_state == cPhs_COMPLEATE_e) {
        if (MoveBGCreate("P_PCNDL", 7, dBgS_MoveBGProc_TypicalRotY, 0x1600, NULL) == cPhs_ERROR_e) {
            return cPhs_ERROR_e;
        }

        setBaseMtx();
        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());

        mFirePos.x = current.pos.x;
        mFirePos.y = 25.0f + current.pos.y;
        mFirePos.z = current.pos.z;

        mLightType = getLightType();
        if (mLightType == 0xFF) {
            mLightType = 1;
        }

        lightInit();
        mSwbit = getSwBit();
        mIDNum = getID();
        mFireFlag = 0;
        mOnPlight = 0;

        mIsSwitch = fopAcM_isSwitch(this, mSwbit);
        if (mIsSwitch) {
            mOnPlight = TRUE;
        }

        init_modeWait();
    }

    return phase_state;
}

/* 80CB1D74-80CB1E00 0003F4 008C+00 1/1 0/0 0/0 .text            lightInit__12daPoCandle_cFv */
void daPoCandle_c::lightInit() {
    mLightPos = mFirePos;
    mLightPos.y += 10.0f;

    if (mLightType != 0) {
        mLight.mPosition = mLightPos;
        mLight.mColor.r = 0xBC;
        mLight.mColor.g = 0x66;
        mLight.mColor.b = 0x42;
        mLight.mPow = 500.0f;
        mLight.mFluctuation = 1.0f;
        return;
    }
    
    mPlightRefDist = 0.0f;
}

/* 80CB1E00-80CB1E30 000480 0030+00 1/1 0/0 0/0 .text            setLight__12daPoCandle_cFv */
void daPoCandle_c::setLight() {
    if (mLightType != 0) {
        dKy_plight_set(&mLight);
    }
}

/* 80CB1E30-80CB1E60 0004B0 0030+00 1/1 0/0 0/0 .text            cutLight__12daPoCandle_cFv */
void daPoCandle_c::cutLight() {
    if (mLightType != 0) {
        dKy_plight_cut(&mLight);
    }
}

/* 80CB1E60-80CB1F10 0004E0 00B0+00 1/1 0/0 0/0 .text            pointLightProc__12daPoCandle_cFv */
void daPoCandle_c::pointLightProc() {
    if (mLightType == 0) {
        GXColor light_color = {0xBC, 0x66, 0x42, 0xFF};

        if (mOnPlight) {
            cLib_addCalc(&mPlightRefDist, 1.0f, 0.5f, 0.1f, 0.0001f);
        } else {
            cLib_addCalc(&mPlightRefDist, 0.0f, 0.5f, 0.1f, 0.0001f);
        }

        if (mPlightRefDist >= 0.000001f) {
            dKy_BossLight_set(&mLightPos, &light_color, mPlightRefDist, 0);
        }
    }
}

/* 80CB284C-80CB2858 000014 000C+00 3/3 0/0 0/0 .bss             l_HIO */
static daPoCandle_HIO_c l_HIO;

/* 80CB1F10-80CB2140 000590 0230+00 1/0 0/0 0/0 .text            Execute__12daPoCandle_cFPPA3_A4_f
 */
int daPoCandle_c::Execute(Mtx** param_0) {
    static void (daPoCandle_c::*mode_proc[])() = {
        &daPoCandle_c::modeWait,
        &daPoCandle_c::modeOnFire,
        &daPoCandle_c::modeOnSwWait,
        &daPoCandle_c::modeEnd,
    };

    eventUpdate();

    if (mOnPlight) {
        cXyz effscale(l_HIO.firescale, l_HIO.firescale, l_HIO.firescale);
        mGlowEmtID = dComIfGp_particle_set(mGlowEmtID, dPa_RM(ID_ZF_S_POFIRED00_GLOW), &mFirePos, &shape_angle, &effscale);
        mFireEmtID = dComIfGp_particle_set(mFireEmtID, dPa_RM(ID_ZF_S_POFIRED01_FIRE), &mFirePos, &shape_angle, &effscale);
        mDoAud_seStartLevel(Z2SE_OBJ_FIRE_BURNING, &mFirePos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    }

    (this->*mode_proc[mMode])();

    *param_0 = &mpModel->getBaseTRMtx();
    setBaseMtx();
    pointLightProc();
    return 1;
}

/* 80CB2140-80CB214C 0007C0 000C+00 2/2 0/0 0/0 .text            init_modeWait__12daPoCandle_cFv */
void daPoCandle_c::init_modeWait() {
    mMode = 0;
}

/* 80CB214C-80CB21D8 0007CC 008C+00 1/0 0/0 0/0 .text            modeWait__12daPoCandle_cFv */
void daPoCandle_c::modeWait() {
    u8 prev_switch = mIsSwitch;
    mIsSwitch = fopAcM_isSwitch(this, mSwbit);

    if (prev_switch != mIsSwitch) {
        if (mIsSwitch) {
            mFireFlag = 1;
            init_modeOnFire();
            return;
        } else {
            mFireFlag = 0;
            mOnPlight = FALSE;
            cutLight();
        }
    }
}

/* 80CB21D8-80CB22D4 000858 00FC+00 2/2 0/0 0/0 .text            init_modeOnFire__12daPoCandle_cFv
 */
void daPoCandle_c::init_modeOnFire() {
    mDoAud_seStart(Z2SE_OBJ_FIRE_IGNITION, &mFirePos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    cXyz effscale(l_HIO.firescale, l_HIO.firescale, l_HIO.firescale);
    dComIfGp_particle_set(dPa_RM(ID_ZF_S_POFIRED02_FIRE), &mFirePos, &shape_angle, &effscale);
    setLight();
    mOnPlight = TRUE;
    mMode = 1;
}

/* 80CB22D4-80CB22F4 000954 0020+00 1/0 0/0 0/0 .text            modeOnFire__12daPoCandle_cFv */
void daPoCandle_c::modeOnFire() {
    init_modeWait();
}

/* 80CB22F4-80CB2354 000974 0060+00 1/0 0/0 0/0 .text            modeOnSwWait__12daPoCandle_cFv */
void daPoCandle_c::modeOnSwWait() {
    if (mSwWaitTimer != 0) {
        mSwWaitTimer--;
    } else {
        fopAcM_onSwitch(this, mSwbit);
        init_modeEnd();
    }
}

/* 80CB2354-80CB2360 0009D4 000C+00 1/1 0/0 0/0 .text            init_modeEnd__12daPoCandle_cFv */
void daPoCandle_c::init_modeEnd() {
    mMode = 3;
}

/* 80CB2360-80CB2364 0009E0 0004+00 1/0 0/0 0/0 .text            modeEnd__12daPoCandle_cFv */
void daPoCandle_c::modeEnd() {}

/* 80CB2364-80CB2388 0009E4 0024+00 2/1 0/0 0/0 .text            eventStart__12daPoCandle_cFv */
bool daPoCandle_c::eventStart() {
    init_modeOnFire();
    return true;
}

/* 80CB2388-80CB242C 000A08 00A4+00 1/0 0/0 0/0 .text            Draw__12daPoCandle_cFv */
int daPoCandle_c::Draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80CB242C-80CB247C 000AAC 0050+00 1/0 0/0 0/0 .text            Delete__12daPoCandle_cFv */
int daPoCandle_c::Delete() {
    dComIfG_resDelete(&mPhase, "P_PCNDL");
    if (mLightType != 0) {
        dKy_plight_cut(&mLight);
    }

    return 1;
}

/* 80CB247C-80CB24A8 000AFC 002C+00 1/0 0/0 0/0 .text            daPoCandle_Draw__FP12daPoCandle_c
 */
static int daPoCandle_Draw(daPoCandle_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80CB24A8-80CB24C8 000B28 0020+00 1/0 0/0 0/0 .text daPoCandle_Execute__FP12daPoCandle_c */
static int daPoCandle_Execute(daPoCandle_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80CB24C8-80CB24E8 000B48 0020+00 1/0 0/0 0/0 .text            daPoCandle_Delete__FP12daPoCandle_c
 */
static int daPoCandle_Delete(daPoCandle_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80CB24E8-80CB2508 000B68 0020+00 1/0 0/0 0/0 .text            daPoCandle_Create__FP10fopAc_ac_c
 */
static int daPoCandle_Create(fopAc_ac_c* i_this) {
    return ((daPoCandle_c*)i_this)->create();
}

/* 80CB2770-80CB2790 -00001 0020+00 1/0 0/0 0/0 .data            l_daPoCandle_Method */
static actor_method_class l_daPoCandle_Method = {
    (process_method_func)daPoCandle_Create,
    (process_method_func)daPoCandle_Delete,
    (process_method_func)daPoCandle_Execute,
    0,
    (process_method_func)daPoCandle_Draw,
};

/* 80CB2790-80CB27C0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_poCandle */
extern actor_process_profile_definition g_profile_Obj_poCandle = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_poCandle,      // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daPoCandle_c),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  650,                    // mPriority
  &l_daPoCandle_Method,   // sub_method
  0x00044000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
