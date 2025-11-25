/**
 * @file d_a_obj_lv7PropellerY.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_lv7PropellerY.h"

class daPropY_HIO_c : public mDoHIO_entry_c {
public:
    /* 80C8546C */ daPropY_HIO_c();
    /* 80C86084 */ virtual ~daPropY_HIO_c() {}

    void genMessage(JORMContext*);

    /* 0x04 */ f32 rot_speed;
    /* 0x08 */ f32 rot_accel;
    /* 0x0C */ f32 field_0xc;
    /* 0x10 */ f32 max_rot_speed;
    /* 0x14 */ f32 rot_time_sec;
    /* 0x18 */ u8 wait_time;
    /* 0x1C */ f32 y_offset;
};

/* 80C86194-80C8619C -00001 0008+00 3/3 0/0 0/0 .data            l_type */
static char* l_type[2] = {
    "stickwl00",
    "stickwl01",
};

/* 80C8619C-80C861A4 000028 0008+00 1/1 0/0 0/0 .data            l_bmdIdx */
static int l_bmdIdx[] = {4, 4};

/* 80C861A4-80C861AC 000030 0008+00 1/1 0/0 0/0 .data            l_dzbIdx */
static int l_dzbIdx[] = {7, 7};

/* 80C8546C-80C854C4 0000EC 0058+00 1/1 0/0 0/0 .text            __ct__13daPropY_HIO_cFv */
daPropY_HIO_c::daPropY_HIO_c() {
    rot_speed = 0.0f;
    rot_accel = 0.1f;
    field_0xc = 0.003f;
    max_rot_speed = 1.0f;
    rot_time_sec = 20.0f;
    wait_time = 30;
    y_offset = 0.0f;
}

/* 80C862CC-80C862EC 000014 0020+00 7/7 0/0 0/0 .bss             l_HIO */
static daPropY_HIO_c l_HIO;

/* 80C8550C-80C855A4 00018C 0098+00 2/2 0/0 0/0 .text            setBaseMtx__9daPropY_cFv */
void daPropY_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y + l_HIO.y_offset, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80C855A4-80C85624 000224 0080+00 1/0 0/0 0/0 .text            CreateHeap__9daPropY_cFv */
int daPropY_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_type[mType], l_bmdIdx[mType]);
    JUT_ASSERT(184, modelData != NULL);

    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    return 1;
}

/* 80C85624-80C85810 0002A4 01EC+00 1/1 0/0 0/0 .text            create__9daPropY_cFv */
int daPropY_c::create() {
    fopAcM_ct(this, daPropY_c);

    mType = getType();

    int phase_state = dComIfG_resLoad(&mPhase, l_type[mType]);
    if (phase_state == cPhs_COMPLEATE_e) {
        if (MoveBGCreate(l_type[mType], l_dzbIdx[mType], dBgS_MoveBGProc_TypicalRotY, 0x2A40, NULL) == cPhs_ERROR_e) {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());
        setBaseMtx();

        mSwbit = getSw();
        mTurnType = getTurnType();
        mTurnVec = getTurnVec();
        if (mTurnVec > 1) {
            mTurnVec = 0;
        }

        if (mTurnVec == 0) {
            field_0x5b2 = -1;
            field_0x5b6 = -0x8000;
        } else {
            field_0x5b2 = 1;
            field_0x5b6 = 0;
        }

        if (mSwbit == 0xFF) {
            if (mTurnType == 0) {
                init_modeMove();
            } else {
                init_modeWait();
            }
        } else {
            mIsSwitch = fopAcM_isSwitch(this, mSwbit);
            if (mIsSwitch) {
                if (mTurnType == 0) {
                    init_modeMove();
                } else {
                    init_modeWait();
                }
            } else {
                init_modeMoveWait();
            }
        }

        #if DEBUG
        l_HIO.entryHIO("プロペラ横");
        #endif
    }

    return phase_state;
}

/* 80C85810-80C85860 000490 0050+00 1/0 0/0 0/0 .text            Execute__9daPropY_cFPPA3_A4_f */
int daPropY_c::Execute(Mtx** param_0) {
    procMain();
    *param_0 = &mpModel->getBaseTRMtx();
    setBaseMtx();
    return 1;
}

/* 80C85860-80C859B4 0004E0 0154+00 1/1 0/0 0/0 .text            procMain__9daPropY_cFv */
void daPropY_c::procMain() {
    static void (daPropY_c::*mode_proc[])() = {
        &daPropY_c::modeMoveWait,
        &daPropY_c::modeMove,
        &daPropY_c::modeWait,
        &daPropY_c::modeMove2,
        &daPropY_c::modeStop,
    };

    if (mSwbit != 0xFF) {
        u8 prev_switch = mIsSwitch;
        mIsSwitch = fopAcM_isSwitch(this, mSwbit);
        if (mIsSwitch != prev_switch) {
            if (mIsSwitch) {
                if (mTurnType == 0) {
                    init_modeMove();
                } else {
                    init_modeMove2();
                }
            } else {
                init_modeStop();
            }
        }
    }

    (this->*mode_proc[mMode])();
}

/* 80C859B4-80C859C0 000634 000C+00 2/2 0/0 0/0 .text            init_modeMoveWait__9daPropY_cFv */
void daPropY_c::init_modeMoveWait() {
    mMode = 0;
}

/* 80C859C0-80C859C4 000640 0004+00 1/0 0/0 0/0 .text            modeMoveWait__9daPropY_cFv */
void daPropY_c::modeMoveWait() {}

/* 80C859C4-80C859E0 000644 001C+00 2/2 0/0 0/0 .text            init_modeMove__9daPropY_cFv */
void daPropY_c::init_modeMove() {
    fopAcM_SetSpeedF(this, 0.0f);
    field_0x5c4 = 0.0f;
    mMode = 1;
}

/* 80C859E0-80C85B08 000660 0128+00 1/0 0/0 0/0 .text            modeMove__9daPropY_cFv */
void daPropY_c::modeMove() {
    cLib_chaseF(&speedF, 360.0f / (30.0f * l_HIO.rot_time_sec), l_HIO.field_0xc);
    field_0x5b4 = cM_deg2s(speedF);
    field_0x5c4 = 127.0f * (speedF / (360.0f / (30.0f * l_HIO.rot_time_sec)));
    mDoAud_seStartLevel(Z2SE_OBJ_AMI_ROLL, &current.pos, field_0x5c4, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

    if (l_HIO.rot_time_sec != 0.0f) {
        shape_angle.y += (field_0x5b4 * field_0x5b2);
    }
}

/* 80C85B08-80C85B24 000788 001C+00 2/2 0/0 0/0 .text            init_modeWait__9daPropY_cFv */
void daPropY_c::init_modeWait() {
    mTimer = l_HIO.wait_time;
    mMode = 2;
}

/* 80C85B24-80C85B5C 0007A4 0038+00 1/0 0/0 0/0 .text            modeWait__9daPropY_cFv */
void daPropY_c::modeWait() {
    if (mTimer == 0) {
        init_modeMove2();
    } else {
        mTimer--;
    }
}

/* 80C85B5C-80C85B84 0007DC 0028+00 2/2 0/0 0/0 .text            init_modeMove2__9daPropY_cFv */
void daPropY_c::init_modeMove2() {
    fopAcM_SetSpeedF(this, l_HIO.rot_speed);
    field_0x5c4 = 0.0f;
    mMode = 3;
}

/* 80C85B84-80C85CAC 000804 0128+00 1/0 0/0 0/0 .text            modeMove2__9daPropY_cFv */
void daPropY_c::modeMove2() {
    cLib_chaseF(&speedF, l_HIO.max_rot_speed, l_HIO.rot_accel);
    s16 temp_r30 = cLib_addCalcAngleS(&shape_angle.y, field_0x5b6, 1, (182.04445f * fopAcM_GetSpeedF(this)), 1);
    field_0x5c4 = 127.0f * (speedF / l_HIO.max_rot_speed);
    mDoAud_seStartLevel(Z2SE_OBJ_AMI_ROLL, &current.pos, field_0x5c4, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

    if (temp_r30 == 0) {
        if (mTurnVec == 0) {
            field_0x5b6 -= 0x8000;
        } else {
            field_0x5b6 += 0x7FFF;
        }
        init_modeWait();
    }
}

/* 80C85CAC-80C85DD0 00092C 0124+00 1/1 0/0 0/0 .text            init_modeStop__9daPropY_cFv */
void daPropY_c::init_modeStop() {
    if (mTurnType == 0) {
        fopAcM_SetSpeedF(this, cM_deg2s(360.0f / (30.0f * l_HIO.rot_time_sec)));
    }

    if (mTurnVec == 0) {
        if (shape_angle.y <= 0) {
            field_0x5b6 = home.angle.y - 0x8000;
        } else {
            field_0x5b6 = home.angle.y;
        }
    } else if (shape_angle.y >= 0) {
        field_0x5b6 = home.angle.y + 0x7FFF;
    } else {
        field_0x5b6 = home.angle.y;
    }

    field_0x5bc = std::fabs((f32)shape_angle.y - (f32)field_0x5b6);
    field_0x5c0 = field_0x5c4;
    mMode = 4;
}

/* 80C85DD0-80C85F14 000A50 0144+00 1/0 0/0 0/0 .text            modeStop__9daPropY_cFv */
void daPropY_c::modeStop() {
    s16 var_r30;
    if (mTurnType == 0) {
        var_r30 = cLib_addCalcAngleS(&shape_angle.y, field_0x5b6, 16, fopAcM_GetSpeedF(this), cM_deg2s(0.1f));
    } else {
        var_r30 = cLib_addCalcAngleS(&shape_angle.y, field_0x5b6, 1, (182.04445f * fopAcM_GetSpeedF(this)), 1);
    }

    // probably not a real version difference - GCN has fsub for some reason instead of fsubs
#if PLATFORM_GCN
    field_0x5c4 = field_0x5c0 * ((f32)std::fabs((f64)var_r30) / field_0x5bc);
#else
    field_0x5c4 = field_0x5c0 * (std::fabs((f32)var_r30) / field_0x5bc);
#endif
    mDoAud_seStartLevel(Z2SE_OBJ_AMI_ROLL, &current.pos, field_0x5c4, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

    if (var_r30 == 0) {
        init_modeMoveWait();
    }
}

/* 80C85F14-80C85FB8 000B94 00A4+00 1/0 0/0 0/0 .text            Draw__9daPropY_cFv */
int daPropY_c::Draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80C85FB8-80C85FF8 000C38 0040+00 1/0 0/0 0/0 .text            Delete__9daPropY_cFv */
int daPropY_c::Delete() {
    dComIfG_resDelete(&mPhase, l_type[mType]);
    #if DEBUG
    l_HIO.removeHIO();
    #endif
    return 1;
}

/* 80C85FF8-80C86024 000C78 002C+00 1/0 0/0 0/0 .text            daPropY_Draw__FP9daPropY_c */
static int daPropY_Draw(daPropY_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C86024-80C86044 000CA4 0020+00 1/0 0/0 0/0 .text            daPropY_Execute__FP9daPropY_c */
static int daPropY_Execute(daPropY_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C86044-80C86064 000CC4 0020+00 1/0 0/0 0/0 .text            daPropY_Delete__FP9daPropY_c */
static int daPropY_Delete(daPropY_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C86064-80C86084 000CE4 0020+00 1/0 0/0 0/0 .text            daPropY_Create__FP10fopAc_ac_c */
static int daPropY_Create(fopAc_ac_c* i_this) {
    return ((daPropY_c*)i_this)->create();
}

/* 80C86224-80C86244 -00001 0020+00 1/0 0/0 0/0 .data            l_daPropY_Method */
static actor_method_class l_daPropY_Method = {
    (process_method_func)daPropY_Create,
    (process_method_func)daPropY_Delete,
    (process_method_func)daPropY_Execute,
    NULL,
    (process_method_func)daPropY_Draw,
};

/* 80C86244-80C86274 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv7PropY */
extern actor_process_profile_definition g_profile_Obj_Lv7PropY = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Lv7PropY,      // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daPropY_c),      // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  641,                    // mPriority
  &l_daPropY_Method,      // sub_method
  0x00040000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
