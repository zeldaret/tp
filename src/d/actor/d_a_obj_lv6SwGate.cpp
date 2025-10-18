/**
 * @file d_a_obj_lv6SwGate.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep
#include "d/d_s_play.h"

#include "d/actor/d_a_obj_lv6SwGate.h"

daLv6SwGate_HIO_c::daLv6SwGate_HIO_c() {
    mSpeed = 15.0f;
    mMaximumSpeed = 30.0f;
    mAcceleration = 15.0f;
    mMovementAmount = 275.0f;
    unk18 = 3;
}

#if DEBUG
void daLv6SwGate_HIO_c::genMessage(JORMContext* context)
{
    context->genLabel("--- 開く ---", 0, 0, 0, -1, -1, 0x200, 0x18);
    context->genSlider("速度", &this->mSpeed, 0.1f, 100.0f, 0, NULL, -1, -1, 0x200, 0x18);
    context->genLabel("\n--- 閉まる ---", 0, 0, 0, -1, -1, 0x200, 0x18);
    context->genSlider("最大速度", &this->mMaximumSpeed, 0.1f, 100.0f, 0, NULL, -1, -1, 0x200, 0x18);
    context->genSlider("加速度", &this->mAcceleration, 0.1f, 100.0f, 0, NULL, -1, -1, 0x200, 0x18);
    context->genLabel("\n------", 0, 0, 0, -1, -1, 0x200, 0x18);
    context->genSlider("移動量", &this->mMovementAmount, 0.1f, 100.0f, 0, NULL, -1, -1, 0x200, 0x18);
}
#endif

/* 80C75754-80C7576C 000014 0018+00 4/4 0/0 0/0 .bss             l_HIO */
static daLv6SwGate_HIO_c l_HIO;

/* 80C75530-80C75560 00000C 0030+00 1/1 0/0 0/0 .rodata          mCcDObjInfo__13daLv6SwGate_c */
const dCcD_SrcGObjInf daLv6SwGate_c::mCcDObjInfo = {
    {0, {{0, 0, 0}, {0x400, 0x11}, {0x79}}}, {1, 0, 0, 0, 0}, {0xA, 0, 0, 0, 0}, {0}
};

/* 80C755B8-80C755FC 000020 0044+00 2/2 0/0 0/0 .data            mCcDCyl__13daLv6SwGate_c */
dCcD_SrcCyl daLv6SwGate_c::mCcDCyl = {mCcDObjInfo};

/* 80C755FC-80C75614 000064 0018+00 1/1 0/0 0/0 .data            l_cull_box */
static cull_box l_cull_box = {-1200.0f, -300.0f, -100.0f, 1200.0f, 300.0f, 100.0f};

/* 80C74004-80C74158 0001E4 0154+00 2/2 0/0 0/0 .text            setBaseMtx__13daLv6SwGate_cFv */
void daLv6SwGate_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mDoMtx_stack_c::transM(-150.0f - mMovementAmount, 0.0f, 0.0f);
    mModel1->setBaseScale(scale);
    mModel1->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y + 0x8000, shape_angle.z);
    mDoMtx_stack_c::transM(-150.0f - mMovementAmount, 0.0f, 0.0f);
    mModel2->setBaseScale(scale);
    mModel2->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), mMtx);
}

/* 80C74158-80C7429C 000338 0144+00 1/0 0/0 0/0 .text            CreateHeap__13daLv6SwGate_cFv */
int daLv6SwGate_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("L6SwGate", 4);
    JUT_ASSERT(273, modelData != NULL);
    mModel1 = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);

    if (mModel1 == NULL) {
        return FALSE;
    }
    modelData = (J3DModelData*)dComIfG_getObjectRes("L6SwGate", 4);
    JUT_ASSERT(284, modelData != NULL);
    mModel2 = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mModel2 == NULL) {
        return FALSE;
    }
    mpBgW = new dBgW();
    if (mpBgW != NULL && !mpBgW->Set((cBgD_t*)dComIfG_getObjectRes("L6SwGate", 7), 0x1, &mMtx)) {
        mpBgW->SetCrrFunc(dBgS_MoveBGProc_TypicalRotY);
    } else {
        mpBgW = NULL;
        return FALSE;
    }
    return TRUE;
}

/* 80C7429C-80C744E4 00047C 0248+00 1/1 0/0 0/0 .text            create__13daLv6SwGate_cFv */
int daLv6SwGate_c::create() {
    fopAcM_ct(this, daLv6SwGate_c);
    if (getSw2() != 0xff && fopAcM_isSwitch(this, getSw2())) {
        return cPhs_ERROR_e;
    }
    int phase = dComIfG_resLoad(&mPhase, "L6SwGate");
    if (phase == cPhs_COMPLEATE_e) {
        if (MoveBGCreate("L6SwGate", 7, dBgS_MoveBGProc_TypicalRotY, 0x1700, NULL) == cPhs_ERROR_e)
        {
            return cPhs_ERROR_e;
        }
        fopAcM_SetMtx(this, mModel1->getBaseTRMtx());
        // copy-paste error? l_cull_box.max.y twice
        fopAcM_setCullSizeBox(this, l_cull_box.min.x, l_cull_box.min.y, l_cull_box.min.z,
                              l_cull_box.max.x, l_cull_box.max.y, l_cull_box.max.y);
        mCcStts.Init(0xff, 0xff, this);
        for (int i = 0; i < 12; i++) {
            mCcDCyls[i].Set(mCcDCyl);
            mCcDCyls[i].SetStts(&mCcStts);
        }
        if (mpBgW != NULL) {
            dComIfG_Bgsp().Regist(mpBgW, this);
            mpBgW->Move();
        }
        mUnderlyingSwitchState = getSwState();
        if (mUnderlyingSwitchState == 0xf) {
            mUnderlyingSwitchState = 0;
        }
        mUnderylingSwitch = getSw();
        mIsSwitch = isSwitch();
        mMovementAmount = 0.0f;
        if (mIsSwitch) {
            mMovementAmount = l_HIO.mMovementAmount;
        }
        init_modeWait();
        setBaseMtx();
#if DEBUG
        l_HIO.entryHIO("スイッチゲート(Lv6)");
#endif
    }
    return phase;
}

/* 80C74720-80C7476C 000900 004C+00 2/2 0/0 0/0 .text            isSwitch__13daLv6SwGate_cFv */
u8 daLv6SwGate_c::isSwitch() {
    return fopAcM_isSwitch(this, mUnderylingSwitch) ^ mUnderlyingSwitchState;
}

/* 80C7476C-80C74A3C 00094C 02D0+00 1/0 0/0 0/0 .text            Execute__13daLv6SwGate_cFPPA3_A4_f
 */
int daLv6SwGate_c::Execute(Mtx** i_pMTx) {
    moveGate();
    for (int i = 0; i < 12; i++) {
        if (mCcDCyls[i].ChkTgHit()) {
            dCcD_GObjInf* o = mCcDCyls[i].GetTgHitGObj();
            if (o->GetAtType() & 0x400) {
                init_modeBreak();
                break;
            }
        }
    }
    for (int i = 0; i < 6; i++) {
        cXyz p(-150.0f - mMovementAmount + 120.0f - i * (55.0f + oREG_F(2)), 0.0f, 0.0f);
        mDoMtx_stack_c::ZXYrotS(shape_angle.x, shape_angle.y, shape_angle.z);
        mDoMtx_stack_c::multVec(&p, &p);
        p += current.pos;
        mCcDCyls[i].SetR(30.0f + oREG_F(0));
        mCcDCyls[i].SetH(300.0f + oREG_F(1));
        mCcDCyls[i].SetC(p);
        dComIfG_Ccsp()->Set(&mCcDCyls[i]);
    }
    for (int i = 0; i < 6; i++) {
        cXyz p(-150.0f - mMovementAmount + 120.0f - i * (55.0f + oREG_F(3)), 0.0f, 0.0f);
        mDoMtx_stack_c::ZXYrotS(shape_angle.x, shape_angle.y + 0x8000, shape_angle.z);
        mDoMtx_stack_c::multVec(&p, &p);
        p += current.pos;
        mCcDCyls[i + 6].SetR(30.0f + oREG_F(0));
        mCcDCyls[i + 6].SetH(300.0f + oREG_F(1));
        mCcDCyls[i + 6].SetC(p);
        dComIfG_Ccsp()->Set(&mCcDCyls[i + 6]);
    }
    *i_pMTx = &mModel1->getBaseTRMtx();
    setBaseMtx();
    if (mpBgW != NULL) {
        mpBgW->Move();
    }
    return TRUE;
}

enum DALV6SWGATE_C_MODE {
    DALV6SWGATE_C_MODE_WAIT,
    DALV6SWGATE_C_MODE_OPEN,
    DALV6SWGATE_C_MODE_CLOSE,
    DALV6SWGATE_C_MODE_BREAK,
};

/* 80C74A3C-80C74B48 000C1C 010C+00 1/1 0/0 0/0 .text            moveGate__13daLv6SwGate_cFv */
void daLv6SwGate_c::moveGate() {
    typedef void (daLv6SwGate_c::*func_call)();
    const static func_call mode_proc[] = {
        /* DALV6SWGATE_C_MODE_WAIT  */ &daLv6SwGate_c::modeWait,
        /* DALV6SWGATE_C_MODE_OPEN  */ &daLv6SwGate_c::modeOpen,
        /* DALV6SWGATE_C_MODE_CLOSE */ &daLv6SwGate_c::modeClose,
        /* DALV6SWGATE_C_MODE_BREAK */ &daLv6SwGate_c::modeBreak,
    };
    
    u8 oldIsSwitch = mIsSwitch;
    mIsSwitch = isSwitch();
    if (mIsSwitch != oldIsSwitch) {
        if (mIsSwitch) {
            init_modeOpen();
        } else {
            init_modeClose();
        }
    }
    (this->*mode_proc[mMode])();
}

/* 80C74B48-80C74B54 000D28 000C+00 3/3 0/0 0/0 .text            init_modeWait__13daLv6SwGate_cFv */
void daLv6SwGate_c::init_modeWait() {
    mMode = DALV6SWGATE_C_MODE_WAIT;
}

/* 80C74B54-80C74B58 000D34 0004+00 1/0 0/0 0/0 .text            modeWait__13daLv6SwGate_cFv */
void daLv6SwGate_c::modeWait() {
    return;
}

/* 80C74B58-80C74B64 000D38 000C+00 1/1 0/0 0/0 .text            init_modeOpen__13daLv6SwGate_cFv */
void daLv6SwGate_c::init_modeOpen() {
    mMode = DALV6SWGATE_C_MODE_OPEN;
}

/* 80C74B64-80C74C7C 000D44 0118+00 1/0 0/0 0/0 .text            modeOpen__13daLv6SwGate_cFv */
void daLv6SwGate_c::modeOpen() {
    f32 calc = cLib_addCalc(&mMovementAmount, l_HIO.mMovementAmount, 0.1f, l_HIO.mSpeed, 5.0f);
    mDoAud_seStartLevel(Z2SE_OBJ_L6_SW_GATE_OP_MV, &current.pos, 0,
                        dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    if (calc == 0.0f) {
        mDoAud_seStart(Z2SE_OBJ_L6_SW_GATE_OP_ST, &current.pos, 0,
                       dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
        init_modeWait();
    }
}

/* 80C74C7C-80C74C94 000E5C 0018+00 1/1 0/0 0/0 .text            init_modeClose__13daLv6SwGate_cFv
 */
void daLv6SwGate_c::init_modeClose() {
    fopAcM_SetSpeedF(this, 0.0f);
    mMode = DALV6SWGATE_C_MODE_CLOSE;
}

/* 80C74C94-80C74DBC 000E74 0128+00 1/0 0/0 0/0 .text            modeClose__13daLv6SwGate_cFv */
void daLv6SwGate_c::modeClose() {
    int unused = cLib_chaseF(&speedF, l_HIO.mMaximumSpeed, l_HIO.mAcceleration);
    f32 calc = cLib_addCalc(&mMovementAmount, 0.0f, 1.0f, fopAcM_GetSpeedF(this), 5.0f);
    mDoAud_seStartLevel(Z2SE_OBJ_L6_SW_GATE_CL_MV, &current.pos, 0,
                        dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    if (calc == 0.0f) {
        mDoAud_seStart(Z2SE_OBJ_L6_SW_GATE_CL_ST, &current.pos, 0,
                       dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
        init_modeWait();
    }
}

/* 80C74DBC-80C74E40 000F9C 0084+00 1/1 0/0 0/0 .text            init_modeBreak__13daLv6SwGate_cFv
 */
void daLv6SwGate_c::init_modeBreak() {
    OS_REPORT("== break! ==\n");
    mDoAud_seStart(Z2SE_OBJ_TRAP_BREAK, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    mMode = DALV6SWGATE_C_MODE_BREAK;
}

/* 80C74E40-80C7524C 001020 040C+00 1/0 0/0 0/0 .text            modeBreak__13daLv6SwGate_cFv */
void daLv6SwGate_c::modeBreak() {
    cXyz p(-150.0f - mMovementAmount, 0.0f, 0.0f);
    mDoMtx_stack_c::ZXYrotS(shape_angle.x, shape_angle.y, shape_angle.z);
    mDoMtx_stack_c::multVec(&p, &p);
    p += current.pos;
    dComIfGp_particle_set(0x8B79, &p, &shape_angle, 0);
    dComIfGp_particle_set(0x8B7A, &p, &shape_angle, 0);
    dComIfGp_particle_set(0x8B7B, &p, &shape_angle, 0);
    dComIfGp_particle_set(0x8B7C, &p, &shape_angle, 0);
    dComIfGp_particle_set(0x8B7D, &p, &shape_angle, 0);
    p.set(-150.0f - mMovementAmount, 0.0f, 0.0f);
    csXyz shapeAngle(shape_angle);
    shapeAngle.y += 0x8000;
    mDoMtx_stack_c::ZXYrotS(shapeAngle.x, shapeAngle.y, shapeAngle.z);
    mDoMtx_stack_c::multVec(&p, &p);
    p += current.pos;
    dComIfGp_particle_set(0x8B79, &p, &shapeAngle, 0);
    dComIfGp_particle_set(0x8B7A, &p, &shapeAngle, 0);
    dComIfGp_particle_set(0x8B7B, &p, &shapeAngle, 0);
    dComIfGp_particle_set(0x8B7C, &p, &shapeAngle, 0);
    dComIfGp_particle_set(0x8B7D, &p, &shapeAngle, 0);
    if (getSw2() != 0xff) {
        fopAcM_onSwitch(this, getSw2());
    }
    fopAcM_delete(this);
}

/* 80C7524C-80C752F8 00142C 00AC+00 1/0 0/0 0/0 .text            Draw__13daLv6SwGate_cFv */
int daLv6SwGate_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mModel1, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mModel1);
    mDoExt_modelUpdateDL(mModel2);
    dComIfGd_setList();
    return TRUE;
}

/* 80C752F8-80C75360 0014D8 0068+00 1/0 0/0 0/0 .text            Delete__13daLv6SwGate_cFv */
int daLv6SwGate_c::Delete() {
    dComIfG_resDelete(&mPhase, "L6SwGate");
    if (mpBgW != NULL && mpBgW->ChkUsed()) {
        dComIfG_Bgsp().Release(mpBgW);
    }
#if DEBUG
    l_HIO.removeHIO(this);
#endif
    return TRUE;
}

/* 80C75360-80C7538C 001540 002C+00 1/0 0/0 0/0 .text            daLv6SwGate_Draw__FP13daLv6SwGate_c
 */
static int daLv6SwGate_Draw(daLv6SwGate_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C7538C-80C753AC 00156C 0020+00 1/0 0/0 0/0 .text daLv6SwGate_Execute__FP13daLv6SwGate_c */
static int daLv6SwGate_Execute(daLv6SwGate_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C753AC-80C753CC 00158C 0020+00 1/0 0/0 0/0 .text daLv6SwGate_Delete__FP13daLv6SwGate_c */
static int daLv6SwGate_Delete(daLv6SwGate_c* i_this) {
    fpc_ProcID id = fopAcM_GetID(i_this);
    return i_this->MoveBGDelete();
}

/* 80C753CC-80C753EC 0015AC 0020+00 1/0 0/0 0/0 .text            daLv6SwGate_Create__FP10fopAc_ac_c
 */
static int daLv6SwGate_Create(fopAc_ac_c* i_this) {
    daLv6SwGate_c* this_gate = (daLv6SwGate_c*)i_this;
    fpc_ProcID id = fopAcM_GetID(i_this);
    return this_gate->create();
}

/* 80C75674-80C75694 -00001 0020+00 1/0 0/0 0/0 .data            l_daLv6SwGate_Method */
static actor_method_class l_daLv6SwGate_Method = {
    (process_method_func)daLv6SwGate_Create,  
    (process_method_func)daLv6SwGate_Delete,
    (process_method_func)daLv6SwGate_Execute, 
    NULL,
    (process_method_func)daLv6SwGate_Draw,
};

/* 80C75694-80C756C4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv6SwGate */
extern actor_process_profile_definition g_profile_Obj_Lv6SwGate = {
    fpcLy_CURRENT_e,         // mLayerID
    3,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_Lv6SwGate,      // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daLv6SwGate_c),   // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    624,                     // mPriority
    &l_daLv6SwGate_Method,   // sub_method
    0x00040000,              // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
