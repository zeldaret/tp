/**
 * @file d_a_obj_lv4SlideWall.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_lv4SlideWall.h"

/* 80C61E2C-80C61E68 0000EC 003C+00 1/1 0/0 0/0 .text            __ct__15daSldWall_HIO_cFv */
daSldWall_HIO_c::daSldWall_HIO_c() {
    move_amount = 900.0f;
    speed = 4.0f;
    vibration = 3;
}

/* 80C61EB0-80C61F4C 000170 009C+00 2/2 0/0 0/0 .text            setBaseMtx__11daSldWall_cFv */
void daSldWall_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mDoMtx_stack_c::transM(field_0x5b0, 0.0f, 0.0f);
    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80C61F4C-80C61FB8 00020C 006C+00 1/0 0/0 0/0 .text            CreateHeap__11daSldWall_cFv */
int daSldWall_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("L4SldWall", 4);
    JUT_ASSERT(160, modelData != NULL);
    mpModel = mDoExt_J3DModel__create(modelData, J3DMdlFlag_DifferedDLBuffer, BMD_DEFAULT_DIFF_FLAGS);
    if (mpModel == NULL) {
        return 0;
    }

    return 1;
}

/* 80C627DC-80C627EC 000014 0010+00 5/5 0/0 0/0 .bss             l_HIO */
static daSldWall_HIO_c l_HIO;

/* 80C61FB8-80C620E4 000278 012C+00 1/1 0/0 0/0 .text            create__11daSldWall_cFv */
int daSldWall_c::create() {
    fopAcM_ct(this, daSldWall_c);

    int phase_state = dComIfG_resLoad(&mPhase, "L4SldWall");
    if (phase_state == cPhs_COMPLEATE_e) {
        if (MoveBGCreate("L4SldWall", 7, dBgS_MoveBGProc_TypicalRotY, 0x1300, NULL) == cPhs_ERROR_e) {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());

        mSwbit = getSw();
        mIsSwitch = fopAcM_isSwitch(this, mSwbit);
        field_0x5b0 = 0.0f;

        if (mIsSwitch) {
            field_0x5b0 = l_HIO.move_amount;
        }

        init_modeWait();
        setBaseMtx();

        #if DEBUG
        l_HIO.entryHIO("スライド壁(Lv4)");
        #endif
    }

    return phase_state;
}

/* 80C620E4-80C62134 0003A4 0050+00 1/0 0/0 0/0 .text            Execute__11daSldWall_cFPPA3_A4_f */
int daSldWall_c::Execute(Mtx** param_0) {
    moveWall();
    *param_0 = &mpModel->getBaseTRMtx();
    setBaseMtx();
    return 1;
}

/* 80C62134-80C62238 0003F4 0104+00 1/1 0/0 0/0 .text            moveWall__11daSldWall_cFv */
void daSldWall_c::moveWall() {
    static void (daSldWall_c::*mode_proc[])() = {
        &daSldWall_c::modeWait,
        &daSldWall_c::modeMoveOpen,
        &daSldWall_c::modeMoveClose,
    };

    u8 var_r30 = mIsSwitch;
    mIsSwitch = fopAcM_isSwitch(this, mSwbit);

    if (mIsSwitch != var_r30) {
        if (mIsSwitch) {
            init_modeMoveOpen();
        } else {
            init_modeMoveClose();
        }
    }

    (this->*mode_proc[mMode])();
}

/* 80C62238-80C62244 0004F8 000C+00 3/3 0/0 0/0 .text            init_modeWait__11daSldWall_cFv */
void daSldWall_c::init_modeWait() {
    mMode = 0;
}

/* 80C62244-80C62248 000504 0004+00 1/0 0/0 0/0 .text            modeWait__11daSldWall_cFv */
void daSldWall_c::modeWait() {}

/* 80C62248-80C62254 000508 000C+00 1/1 0/0 0/0 .text            init_modeMoveOpen__11daSldWall_cFv
 */
void daSldWall_c::init_modeMoveOpen() {
    mMode = 1;
}

/* 80C62254-80C62314 000514 00C0+00 1/0 0/0 0/0 .text            modeMoveOpen__11daSldWall_cFv */
void daSldWall_c::modeMoveOpen() {
    mDoAud_seStartLevel(0x801b1, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

    f32 var_f31 = cLib_addCalc(&field_0x5b0, l_HIO.move_amount, 0.2f, l_HIO.speed, 0.5f);
    if (var_f31 == 0.0f) {
        setSe();
        init_modeWait();
    }
}

/* 80C62314-80C62320 0005D4 000C+00 1/1 0/0 0/0 .text            init_modeMoveClose__11daSldWall_cFv
 */
void daSldWall_c::init_modeMoveClose() {
    mMode = 2;
}

/* 80C62320-80C623E0 0005E0 00C0+00 1/0 0/0 0/0 .text            modeMoveClose__11daSldWall_cFv */
void daSldWall_c::modeMoveClose() {
    mDoAud_seStartLevel(0x801b1, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

    f32 var_f31 = cLib_addCalc(&field_0x5b0, 0.0f, 0.2f, l_HIO.speed, 0.5f);
    if (var_f31 == 0.0f) {
        setSe();
        init_modeWait();
    }
}

/* 80C623E0-80C6249C 0006A0 00BC+00 2/2 0/0 0/0 .text            setSe__11daSldWall_cFv */
void daSldWall_c::setSe() {
    mDoAud_seStart(0x801b2, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    dComIfGp_getVibration().StartShock(l_HIO.vibration, 0xF, cXyz(0.0f, 1.0f, 0.0f));
}

/* 80C6249C-80C62540 00075C 00A4+00 1/0 0/0 0/0 .text            Draw__11daSldWall_cFv */
int daSldWall_c::Draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80C62540-80C62570 000800 0030+00 1/0 0/0 0/0 .text            Delete__11daSldWall_cFv */
int daSldWall_c::Delete() {
    dComIfG_resDelete(&mPhase, "L4SldWall");
    
    #if DEBUG
    l_HIO.removeHIO();
    #endif
    return 1;
}

/* 80C62570-80C6259C 000830 002C+00 1/0 0/0 0/0 .text            daSldWall_Draw__FP11daSldWall_c */
static int daSldWall_Draw(daSldWall_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C6259C-80C625BC 00085C 0020+00 1/0 0/0 0/0 .text            daSldWall_Execute__FP11daSldWall_c
 */
static int daSldWall_Execute(daSldWall_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C625BC-80C625DC 00087C 0020+00 1/0 0/0 0/0 .text            daSldWall_Delete__FP11daSldWall_c
 */
static int daSldWall_Delete(daSldWall_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C625DC-80C625FC 00089C 0020+00 1/0 0/0 0/0 .text            daSldWall_Create__FP10fopAc_ac_c */
static int daSldWall_Create(fopAc_ac_c* i_this) {
    return ((daSldWall_c*)i_this)->create();
}

/* 80C62738-80C62758 -00001 0020+00 1/0 0/0 0/0 .data            l_daSldWall_Method */
static actor_method_class l_daSldWall_Method = {
    (process_method_func)daSldWall_Create,
    (process_method_func)daSldWall_Delete,
    (process_method_func)daSldWall_Execute,
    0,
    (process_method_func)daSldWall_Draw,
};

/* 80C62758-80C62788 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv4SlideWall */
extern actor_process_profile_definition g_profile_Obj_Lv4SlideWall = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Lv4SlideWall,  // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daSldWall_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  639,                    // mPriority
  &l_daSldWall_Method,    // sub_method
  0x00040000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
