/**
 * @file d_a_obj_rotTrap.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_rotTrap.h"
#include "d/d_s_play.h"

/* 80CBF8AC-80CBF8F8 0000EC 004C+00 1/1 0/0 0/0 .text            __ct__15daRotTrap_HIO_cFv */
daRotTrap_HIO_c::daRotTrap_HIO_c() {
    vibration = 3;
    rotate_time = 4.5f;
    field_0x8 = 10;
    AT_adjust_SW = 0;
    index = 0;
    acc = 150;
}

/* 80CC0AC4-80CC0AD4 000014 0010+00 4/4 0/0 0/0 .bss             l_HIO */
static daRotTrap_HIO_c l_HIO;

/* 80CC080C-80CC083C 000004 0030+00 1/1 0/0 0/0 .rodata          mCcDObjInfo__11daRotTrap_c */
dCcD_SrcGObjInf const daRotTrap_c::mCcDObjInfo = {
    {0, {{AT_TYPE_800, 0x1, 0x1F}, {0x0, 0x0}, {0}}},
    {dCcD_SE_SWORD, 0, 1, 0, 0},
    {dCcD_SE_STONE, 0, 0, 0, 0},
    {0}
};

/* 80CC0880-80CC08C4 000020 0044+00 2/2 0/0 0/0 .data            mCcDCyl__11daRotTrap_c */
dCcD_SrcCyl daRotTrap_c::mCcDCyl = {
    mCcDObjInfo,
    {{0.0f, 0.0f, 0.0f}, 0.0f, 0.0f}
};

/* 80CC08C4-80CC096C 000064 00A8+00 0/1 0/0 0/0 .data            atPos */
static Vec atPos[] = {
    {-37.0f, 130.0f, -200.0f},
    {-37.0f, 130.0f, -300.0f},
    {-37.0f, 130.0f, -400.0f},
    {-37.0f, 130.0f, -500.0f},
    {-37.0f, 130.0f, -600.0f},
    {-37.0f, 130.0f, -700.0f},
    {-37.0f, 130.0f, -800.0f},
    {37.0f, 130.0f, 200.0f},
    {37.0f, 130.0f, 300.0f},
    {37.0f, 130.0f, 400.0f},
    {37.0f, 130.0f, 500.0f},
    {37.0f, 130.0f, 600.0f},
    {37.0f, 130.0f, 700.0f},
    {37.0f, 130.0f, 800.0f},
};

/* 80CC096C-80CC09A4 00010C 0038+00 0/1 0/0 0/0 .data            atR */
static f32 atR[] = {
    50.0f,
    50.0f,
    50.0f,
    50.0f,
    50.0f,
    50.0f,
    50.0f,
    50.0f,
    50.0f,
    50.0f,
    50.0f,
    50.0f,
    50.0f,
    50.0f,
};

/* 80CBF940-80CBF9D8 000180 0098+00 2/2 0/0 0/0 .text            setBaseMtx__11daRotTrap_cFv */
void daRotTrap_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);

    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80CBF9D8-80CBFAC8 000218 00F0+00 1/0 0/0 0/0 .text            CreateHeap__11daRotTrap_cFv */
int daRotTrap_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("P_kama", 4);
    JUT_ASSERT(214, modelData != NULL);

    mpModel = mDoExt_J3DModel__create(modelData, J3DMdlFlag_DifferedDLBuffer, BMD_DEFAULT_DIFF_FLAGS);
    if (mpModel == NULL) {
        return 0;
    }

    mpBgW2 = new dBgW();
    if (mpBgW2 == NULL || mpBgW2->Set((cBgD_t*)dComIfG_getObjectRes("P_kama", 8), 1, &mBgMtx)) {
        mpBgW2 = NULL;
        return 0;
    }

    return 1;
}

/* 80CBFAC8-80CBFC88 000308 01C0+00 1/1 0/0 0/0 .text            create__11daRotTrap_cFv */
int daRotTrap_c::create() {
    fopAcM_ct(this, daRotTrap_c);

    int phase_state = dComIfG_resLoad(&mPhase, "P_kama");
    if (phase_state == cPhs_COMPLEATE_e) {
        if (MoveBGCreate("P_kama", 7, dBgS_MoveBGProc_TypicalRotY, 0x7DF0, NULL) == cPhs_ERROR_e) {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());
        mCcStts.Init(0xFF, 0xFF, this);

        for (int i = 0; i < 14; i++) {
            mCcCyl[i].Set(mCcDCyl);
            mCcCyl[i].SetStts(&mCcStts);
        }

        mSwbit = getSw();

        if (mSwbit == 0xFF) {
            init_modeMove();
        } else if (fopAcM_isSwitch(this, mSwbit)) {
            init_modeMove();
        } else {
            init_modeWait();
        }
    
        setBaseMtx();
    }

    return phase_state;
}

/* 80CBFEC4-80CBFF1C 000704 0058+00 1/0 0/0 0/0 .text            Execute__11daRotTrap_cFPPA3_A4_f */
int daRotTrap_c::Execute(Mtx** param_0) {
    procMain();
    *param_0 = &mpModel->getBaseTRMtx();
    setBaseMtx();
    mCcStts.Move();
    return 1;
}

/* 80CBFF1C-80CC00AC 00075C 0190+00 1/1 0/0 0/0 .text            procMain__11daRotTrap_cFv */
void daRotTrap_c::procMain() {
    static void (daRotTrap_c::*mode_proc[])() = {
        &daRotTrap_c::modeWait,
        &daRotTrap_c::modeAcc,
        &daRotTrap_c::modeMove,
    };

    (this->*mode_proc[mMode])();

#if DEBUG
    if (l_HIO.AT_adjust_SW == TRUE) {
        shape_angle.y = 0;
    }
#endif

    for (int i = 0; i < 14; i++) {
#if DEBUG
        if (l_HIO.AT_adjust_SW == TRUE && i == l_HIO.index) {
            f32 adjust_value = 1.0f;

            if (mDoCPd_c::getHoldR(PAD_2)) {
                adjust_value = 10.0f;
            }

            if (mDoCPd_c::getTrigUp(PAD_2)) {
                atPos[i].z -= adjust_value;
            } else if (mDoCPd_c::getTrigDown(PAD_2)) {
                atPos[i].z += adjust_value;
            } else if (mDoCPd_c::getTrigLeft(PAD_2)) {
                atPos[i].x -= adjust_value;
            } else if (mDoCPd_c::getTrigRight(PAD_2)) {
                atPos[i].x += adjust_value;
            } else if (mDoCPd_c::getTrigA(PAD_2)) {
                atPos[i].y += adjust_value;
            } else if (mDoCPd_c::getTrigB(PAD_2)) {
                atPos[i].y -= adjust_value;
            } else if (mDoCPd_c::getTrigX(PAD_2)) {
                atR[i] += adjust_value;
            } else if (mDoCPd_c::getTrigY(PAD_2)) {
                atR[i] -= adjust_value;
            }

            OS_REPORT("==%d  x:%f y:%f z:%f s:%f ==\n", i, atPos[i].x, atPos[i].y, atPos[i].z, atR[i]);
        }
#endif

        mDoMtx_stack_c::ZXYrotS(shape_angle.x, shape_angle.y, shape_angle.z);
        cXyz sp14;
        cXyz sp8(atPos[i]);
        mDoMtx_stack_c::multVec(&sp8, &sp14);
        sp14 += current.pos;

        mCcCyl[i].SetR(atR[i]);
        mCcCyl[i].SetH(45.0f + oREG_F(1));
        mCcCyl[i].SetC(sp14);
        dComIfG_Ccsp()->Set(&mCcCyl[i]);
    }
}

/* 80CC00AC-80CC0120 0008EC 0074+00 1/1 0/0 0/0 .text            init_modeWait__11daRotTrap_cFv */
void daRotTrap_c::init_modeWait() {
    if (mpBgW != NULL) {
        dComIfG_Bgsp().Release(mpBgW);
    }

    if (mpBgW2 != NULL) {
        dComIfG_Bgsp().Regist(mpBgW2, this);
        mpBgW2->Move();
    }

    mMode = 0;
}

/* 80CC0120-80CC0180 000960 0060+00 1/0 0/0 0/0 .text            modeWait__11daRotTrap_cFv */
void daRotTrap_c::modeWait() {
    if (fopAcM_isSwitch(this, mSwbit)) {
        init_modeAcc();
    }

    if (mpBgW2 != NULL) {
        mpBgW2->Move();
    }
}

/* 80CC0180-80CC027C 0009C0 00FC+00 1/1 0/0 0/0 .text            init_modeAcc__11daRotTrap_cFv */
void daRotTrap_c::init_modeAcc() {
    if (mpBgW2 != NULL) {
        dComIfG_Bgsp().Release(mpBgW2);
        mpBgW2->Move();
    }

    if (mpBgW != NULL) {
        dComIfG_Bgsp().Regist(mpBgW, this);
    }

    dComIfGp_getVibration().StartShock(l_HIO.vibration, 0xF, cXyz(0.0f, 1.0f, 0.0f));
    field_0x5b0 = cM_deg2s(360.0f / (30.0f * l_HIO.rotate_time));
    field_0x5b2 = 0;
    field_0x5ae = 0;
    mMode = 1;
}

/* 80CC027C-80CC034C 000ABC 00D0+00 1/0 0/0 0/0 .text            modeAcc__11daRotTrap_cFv */
void daRotTrap_c::modeAcc() {
    mDoAud_seStartLevel(Z2SE_OBJ_RL_SWD_LV, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    BOOL temp_r30 = cLib_chaseAngleS(&field_0x5b2, field_0x5b0, field_0x5b0 / l_HIO.acc);
    shape_angle.y += field_0x5b2;
    seSet();

    if (temp_r30 == TRUE) {
        init_modeMove();
    }
}

/* 80CC034C-80CC0360 000B8C 0014+00 2/2 0/0 0/0 .text            init_modeMove__11daRotTrap_cFv */
void daRotTrap_c::init_modeMove() {
    field_0x5ae = 0;
    mMode = 2;
}

/* 80CC0360-80CC0440 000BA0 00E0+00 1/0 0/0 0/0 .text            modeMove__11daRotTrap_cFv */
void daRotTrap_c::modeMove() {
    mDoAud_seStartLevel(Z2SE_OBJ_RL_SWD_LV, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    field_0x5b0 = cM_deg2s(360.0f / (30.0f * l_HIO.rotate_time));

    if (0.0f != l_HIO.rotate_time) {
        shape_angle.y += field_0x5b0;
    }

    seSet();
}

/* 80CC0440-80CC0548 000C80 0108+00 2/2 0/0 0/0 .text            seSet__11daRotTrap_cFv */
void daRotTrap_c::seSet() {
    if (shape_angle.y & 0x8000) {
        if (field_0x5ae == 0) {
            mDoAud_seStart(Z2SE_OBJ_RL_SWD_TRG, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
            field_0x5ae = 1;
        }
    } else if (field_0x5ae != 0) {
        mDoAud_seStart(Z2SE_OBJ_RL_SWD_TRG, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
        field_0x5ae = 0;
    }
}

/* 80CC0548-80CC05EC 000D88 00A4+00 1/0 0/0 0/0 .text            Draw__11daRotTrap_cFv */
int daRotTrap_c::Draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80CC05EC-80CC0654 000E2C 0068+00 1/0 0/0 0/0 .text            Delete__11daRotTrap_cFv */
int daRotTrap_c::Delete() {
    dComIfG_resDelete(&mPhase, "P_kama");

    if (mpBgW2 != NULL && mpBgW2->ChkUsed()) {
        dComIfG_Bgsp().Release(mpBgW2);
    }

    return 1;
}

/* 80CC0654-80CC0680 000E94 002C+00 1/0 0/0 0/0 .text            daRotTrap_Draw__FP11daRotTrap_c */
static int daRotTrap_Draw(daRotTrap_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80CC0680-80CC06A0 000EC0 0020+00 1/0 0/0 0/0 .text            daRotTrap_Execute__FP11daRotTrap_c
 */
static int daRotTrap_Execute(daRotTrap_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80CC06A0-80CC06C0 000EE0 0020+00 1/0 0/0 0/0 .text            daRotTrap_Delete__FP11daRotTrap_c
 */
static int daRotTrap_Delete(daRotTrap_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80CC06C0-80CC06E0 000F00 0020+00 1/0 0/0 0/0 .text            daRotTrap_Create__FP10fopAc_ac_c */
static int daRotTrap_Create(fopAc_ac_c* i_this) {
    fpc_ProcID id = fopAcM_GetID(i_this);
    return ((daRotTrap_c*)i_this)->create();
}

/* 80CC09EC-80CC0A0C -00001 0020+00 1/0 0/0 0/0 .data            l_daRotTrap_Method */
static actor_method_class l_daRotTrap_Method = {
    (process_method_func)daRotTrap_Create,
    (process_method_func)daRotTrap_Delete,
    (process_method_func)daRotTrap_Execute,
    (process_method_func)NULL,
    (process_method_func)daRotTrap_Draw,
};

/* 80CC0A0C-80CC0A3C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_RotTrap */
extern actor_process_profile_definition g_profile_Obj_RotTrap = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_RotTrap,       // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daRotTrap_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  525,                    // mPriority
  &l_daRotTrap_Method,    // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
