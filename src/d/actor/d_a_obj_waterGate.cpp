/**
 * @file d_a_obj_waterGate.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_waterGate.h"
#include "d/d_com_inf_game.h"

typedef void (daWtGate_c::*actionFunc)();

static int daWtGate_Draw(daWtGate_c*);
static int daWtGate_Execute(daWtGate_c*);
static int daWtGate_Delete(daWtGate_c*);
static int daWtGate_Create(fopAc_ac_c*);

/* 80D2C5BC-80D2C5C8 000014 000C+00 3/3 0/0 0/0 .bss             l_HIO */
static daWtGate_HIO_c l_HIO;

/* 80D2BB8C-80D2BBC4 0000EC 0038+00 1/1 0/0 0/0 .text            __ct__14daWtGate_HIO_cFv */
daWtGate_HIO_c::daWtGate_HIO_c() {
    mMaxSpeed = 4.0f;
    field_0x8 = 30;
    field_0x9 = 4;
}

#ifdef DEBUG
void daWtGate_HIO_c::genMessage(JORMContext* ctx) {
    // "Maximum speed"
    ctx->genSlider("最大速度", &mMaxSpeed, 0.1, 500.0, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
}
#endif

/* 80D2BC0C-80D2BC94 00016C 0088+00 2/2 0/0 0/0 .text            setBaseMtx__10daWtGate_cFv */
void daWtGate_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z); 
    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80D2BC94-80D2BD00 0001F4 006C+00 1/0 0/0 0/0 .text            CreateHeap__10daWtGate_cFv */
int daWtGate_c::CreateHeap() {
    J3DModelData* const modelData = static_cast<J3DModelData*>(dComIfG_getObjectRes("S_Zsuimon", 4));
    JUT_ASSERT(159, modelData != 0);

    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);

    if(!mpModel)
        return 0;
    else
        return 1;
}

/* 80D2BD00-80D2BE7C 000260 017C+00 1/1 0/0 0/0 .text            create__10daWtGate_cFv */
cPhs__Step daWtGate_c::create() {
    fopAcM_SetupActor(this, daWtGate_c);

    const cPhs__Step resPhase = static_cast<cPhs__Step>(dComIfG_resLoad(&mPhase, "S_Zsuimon"));
    if(resPhase == cPhs_COMPLEATE_e) {
        if(MoveBGCreate("S_Zsuimon", 7, dBgS_MoveBGProc_TypicalRotY, 0xE00, NULL) == cPhs_ERROR_e)
            return cPhs_ERROR_e;
        
        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());

        mOpenYOffset = ((fopAcM_GetParam(this) & 0xFF00) >> 8) * 10.0f;

        if(static_cast<u8>(fopAcM_GetParam(this)) == 0xFF) {
            // Gate is never opened
            current.pos.y -= mOpenYOffset;
            init_modeEnd();
        }
        else {
            mPrevSwitchState = fopAcM_isSwitch(this, static_cast<u8>(fopAcM_GetParam(this)));
            mClosedYPos = current.pos.y;

            // Place gate in open position if it was previously opened
            if(mPrevSwitchState != CLOSED)
                current.pos.y += mOpenYOffset;

            init_modeWait();
        }

        setBaseMtx();


        // "Sluice gate(Lv3)"
        #ifdef DEBUG
        l_HIO.entryHIO("水門(Lv3)");
        #endif
    }

    return resPhase;
}

/* 80D2BE7C-80D2BECC 0003DC 0050+00 1/0 0/0 0/0 .text            Execute__10daWtGate_cFPPA3_A4_f */
int daWtGate_c::Execute(Mtx** i_mtx) {
    move();

    *i_mtx = &mpModel->getBaseTRMtx();
    setBaseMtx();

    return 1;
}

/* 80D2BECC-80D2BF88 00042C 00BC+00 1/1 0/0 0/0 .text            move__10daWtGate_cFv */
void daWtGate_c::move() {
    static const actionFunc mode_proc[] = {
        &daWtGate_c::modeWait, &daWtGate_c::modeOpen,
        &daWtGate_c::modeClose, &daWtGate_c::modeEnd
    };

    (this->*mode_proc[mMode])();
}

/* 80D2BF88-80D2BF94 0004E8 000C+00 3/3 0/0 0/0 .text            init_modeWait__10daWtGate_cFv */
void daWtGate_c::init_modeWait() {
    mMode = WAIT;
}

/* 80D2BF94-80D2C010 0004F4 007C+00 1/0 0/0 0/0 .text            modeWait__10daWtGate_cFv */
void daWtGate_c::modeWait() {
    //  The state of the switch never actually changes in-game, so after a water gate opens,
    //  it never closes. The aesthetic functionality of closing still works, though
    u8 currentSwitchState = fopAcM_isSwitch(this, static_cast<u8>(fopAcM_GetParam(this))); 
    if(currentSwitchState != mPrevSwitchState) {
        if(currentSwitchState != CLOSED)
            init_modeOpen();
        else
            init_modeClose();

        mPrevSwitchState = currentSwitchState;
    }
}

/* 80D2C010-80D2C02C 000570 001C+00 1/1 0/0 0/0 .text            init_modeOpen__10daWtGate_cFv */
void daWtGate_c::init_modeOpen() {
    mMaxMoveSpeed = l_HIO.mMaxSpeed;
    mMode = OPEN;
}

/* 80D2C02C-80D2C134 00058C 0108+00 1/0 0/0 0/0 .text            modeOpen__10daWtGate_cFv */
void daWtGate_c::modeOpen() {
    const f32 currentAndOpenedYPosDiff = cLib_addCalc(&current.pos.y, mClosedYPos + mOpenYOffset, 1.0f / 5.0f, mMaxMoveSpeed, 1.0f);
    if(currentAndOpenedYPosDiff == 0.0f) {
        fopAcM_seStartCurrent(this, Z2SE_OBJ_OPEN_CHAIN_SW_DOOR, 0);
        init_modeWait();
    }
    else {
        fopAcM_seStartCurrentLevel(this, Z2SE_OBJ_WATERGATE_MOVE, 0);
    }
}

/* 80D2C134-80D2C150 000694 001C+00 1/1 0/0 0/0 .text            init_modeClose__10daWtGate_cFv */
void daWtGate_c::init_modeClose() {
    mMaxMoveSpeed = l_HIO.mMaxSpeed;
    mMode = CLOSE;
}

/* 80D2C150-80D2C250 0006B0 0100+00 1/0 0/0 0/0 .text            modeClose__10daWtGate_cFv */
void daWtGate_c::modeClose() {
    const f32 currentAndClosedYPosDiff = cLib_addCalc(&current.pos.y, mClosedYPos, 1.0f / 5.0f, mMaxMoveSpeed, 1.0f);
    if(currentAndClosedYPosDiff == 0.0f) {
        fopAcM_seStartCurrent(this, Z2SE_OBJ_OPEN_CHAIN_SW_DOOR, 0);
        init_modeWait();
    }
    else {
        fopAcM_seStartCurrentLevel(this, Z2SE_OBJ_WATERGATE_MOVE, 0);
    }
}

/* 80D2C250-80D2C25C 0007B0 000C+00 1/1 0/0 0/0 .text            init_modeEnd__10daWtGate_cFv */
void daWtGate_c::init_modeEnd() {
    mMode = END;
}

/* 80D2C25C-80D2C260 0007BC 0004+00 1/0 0/0 0/0 .text            modeEnd__10daWtGate_cFv */
void daWtGate_c::modeEnd() {
    /* empty function */
}

/* 80D2C260-80D2C304 0007C0 00A4+00 1/0 0/0 0/0 .text            Draw__10daWtGate_cFv */
int daWtGate_c::Draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();

    return 1;
}

/* 80D2C304-80D2C334 000864 0030+00 1/0 0/0 0/0 .text            Delete__10daWtGate_cFv */
int daWtGate_c::Delete() {
    dComIfG_resDelete(&mPhase, "S_Zsuimon");

    #ifdef DEBUG
    l_HIO.removeHIO();
    #endif

    return 1;
}

/* 80D2C334-80D2C360 000894 002C+00 1/0 0/0 0/0 .text            daWtGate_Draw__FP10daWtGate_c */
static int daWtGate_Draw(daWtGate_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80D2C360-80D2C380 0008C0 0020+00 1/0 0/0 0/0 .text            daWtGate_Execute__FP10daWtGate_c */
static int daWtGate_Execute(daWtGate_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80D2C380-80D2C3A0 0008E0 0020+00 1/0 0/0 0/0 .text            daWtGate_Delete__FP10daWtGate_c */
static int daWtGate_Delete(daWtGate_c* i_this) {
    const fpc_ProcID procID = fopAcM_GetID(i_this);
    return i_this->MoveBGDelete();
}

/* 80D2C3A0-80D2C3C0 000900 0020+00 1/0 0/0 0/0 .text            daWtGate_Create__FP10fopAc_ac_c */
static int daWtGate_Create(fopAc_ac_c* i_this) {
    daWtGate_c* const waterGate = static_cast<daWtGate_c*>(i_this);
    const fpc_ProcID procID = fopAcM_GetID(i_this);
    return waterGate->create();
}

/* 80D2C518-80D2C538 -00001 0020+00 1/0 0/0 0/0 .data            l_daWtGate_Method */
static actor_method_class l_daWtGate_Method = {
    (process_method_func)daWtGate_Create,
    (process_method_func)daWtGate_Delete,
    (process_method_func)daWtGate_Execute,
    0,
    (process_method_func)daWtGate_Draw,
};

/* 80D2C538-80D2C568 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_WtGate */
extern actor_process_profile_definition g_profile_Obj_WtGate = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_WtGate,        // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daWtGate_c),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  522,                    // mPriority
  &l_daWtGate_Method,     // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
