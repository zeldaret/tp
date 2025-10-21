/**
 * @file d_a_obj_lv6Lblock.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_lv6Lblock.h"

/* 80C73D04-80C73D0C 000020 0008+00 1/1 0/0 0/0 .data            l_liftUpMax */
static f32 l_liftUpMax[] = {
    300.0f,
    150.0f,
};

/* 80C733EC-80C7341C 0000EC 0030+00 1/1 0/0 0/0 .text            __ct__17daLv6Lblock_HIO_cFv */
daLv6Lblock_HIO_c::daLv6Lblock_HIO_c() {
    speed = 15.0f;
    unk_0xc = 3;
}

/* 80C73464-80C734EC 000164 0088+00 2/2 0/0 0/0 .text            setBaseMtx__13daLv6Lblock_cFv */
void daLv6Lblock_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80C734EC-80C73558 0001EC 006C+00 1/0 0/0 0/0 .text            CreateHeap__13daLv6Lblock_cFv */
int daLv6Lblock_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("L6Lblock", 4);
    JUT_ASSERT(177, modelData != NULL);

    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    return 1;
}

/* 80C73558-80C736C0 000258 0168+00 1/1 0/0 0/0 .text            create__13daLv6Lblock_cFv */
int daLv6Lblock_c::create() {
    fopAcM_ct(this, daLv6Lblock_c);

    int phase_state = dComIfG_resLoad(&mPhase, "L6Lblock");
    if (phase_state == cPhs_COMPLEATE_e) {
        if (MoveBGCreate("L6Lblock", 7, dBgS_MoveBGProc_TypicalRotY, 0xD80, NULL) == cPhs_ERROR_e) {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());

        mSwState = getSwState();
        if (mSwState == 0xF) {
            mSwState = 0;
        }

        mSwbit = getSw();
        mIsSwitch = isSwitch();

        mMaxHeight = l_liftUpMax[getUpMax()];
        current.pos.y -= 300.0f;
        mBaseHeight = current.pos.y;

        if (mIsSwitch) {
            current.pos.y = mBaseHeight + mMaxHeight;
        } else {
            init_modeWait();
        }

        setBaseMtx();
    }

    return phase_state;
}

/* 80C736C0-80C7370C 0003C0 004C+00 2/2 0/0 0/0 .text            isSwitch__13daLv6Lblock_cFv */
u8 daLv6Lblock_c::isSwitch() {
    return mSwState ^ fopAcM_isSwitch(this, mSwbit);
}

/* 80C7370C-80C7375C 00040C 0050+00 1/0 0/0 0/0 .text            Execute__13daLv6Lblock_cFPPA3_A4_f
 */
int daLv6Lblock_c::Execute(Mtx** param_0) {
    moveBlock();
    *param_0 = &mpModel->getBaseTRMtx();
    setBaseMtx();
    return 1;
}

/* 80C73DFC-80C73E0C 000014 0010+00 3/3 0/0 0/0 .bss             l_HIO */
static daLv6Lblock_HIO_c l_HIO;

/* 80C7375C-80C73850 00045C 00F4+00 1/1 0/0 0/0 .text            moveBlock__13daLv6Lblock_cFv */
void daLv6Lblock_c::moveBlock() {
    static void (daLv6Lblock_c::*mode_proc[])() = {
        &daLv6Lblock_c::modeWait,
        &daLv6Lblock_c::modeLiftUp,
        &daLv6Lblock_c::modeLiftDown,
    };

    u8 prev_sw = mIsSwitch;
    mIsSwitch = isSwitch();

    if (mIsSwitch != prev_sw) {
        if (mIsSwitch) {
            init_modeLiftUp();
        } else {
            init_modeLiftDown();
        }
    }

    (this->*mode_proc[mMode])();
}

/* 80C73850-80C7385C 000550 000C+00 3/3 0/0 0/0 .text            init_modeWait__13daLv6Lblock_cFv */
void daLv6Lblock_c::init_modeWait() {
    mMode = 0;
}

/* 80C7385C-80C73860 00055C 0004+00 1/0 0/0 0/0 .text            modeWait__13daLv6Lblock_cFv */
void daLv6Lblock_c::modeWait() {}

/* 80C73860-80C7386C 000560 000C+00 1/1 0/0 0/0 .text            init_modeLiftUp__13daLv6Lblock_cFv
 */
void daLv6Lblock_c::init_modeLiftUp() {
    mMode = 1;
}

/* 80C7386C-80C7398C 00056C 0120+00 1/0 0/0 0/0 .text            modeLiftUp__13daLv6Lblock_cFv */
void daLv6Lblock_c::modeLiftUp() {
    f32 dist_to_target = cLib_addCalc(&current.pos.y, mBaseHeight + mMaxHeight, 0.1f, l_HIO.speed, 5.0f);
    mDoAud_seStartLevel(Z2SE_OBJ_L6_UD_BLOCK_UP, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

    if (0.0f == dist_to_target) {
        mDoAud_seStart(Z2SE_OBJ_L6_UD_BLOCK_UP_ST, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
        init_modeWait();
    }
}

/* 80C7398C-80C73998 00068C 000C+00 1/1 0/0 0/0 .text init_modeLiftDown__13daLv6Lblock_cFv */
void daLv6Lblock_c::init_modeLiftDown() {
    mMode = 2;
}

/* 80C73998-80C73AB0 000698 0118+00 1/0 0/0 0/0 .text            modeLiftDown__13daLv6Lblock_cFv */
void daLv6Lblock_c::modeLiftDown() {
    f32 dist_to_target = cLib_addCalc(&current.pos.y, mBaseHeight, 0.1f, l_HIO.speed, 5.0f);
    mDoAud_seStartLevel(Z2SE_OBJ_L6_UD_BLOCK_DW, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

    if (0.0f == dist_to_target) {
        mDoAud_seStart(Z2SE_OBJ_L6_UD_BLOCK_DW_ST, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
        init_modeWait();
    }
}

/* 80C73AB0-80C73B54 0007B0 00A4+00 1/0 0/0 0/0 .text            Draw__13daLv6Lblock_cFv */
int daLv6Lblock_c::Draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80C73B54-80C73B84 000854 0030+00 1/0 0/0 0/0 .text            Delete__13daLv6Lblock_cFv */
int daLv6Lblock_c::Delete() {
    dComIfG_resDelete(&mPhase, "L6Lblock");
    return 1;
}

/* 80C73B84-80C73BB0 000884 002C+00 1/0 0/0 0/0 .text            daLv6Lblock_Draw__FP13daLv6Lblock_c
 */
static int daLv6Lblock_Draw(daLv6Lblock_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C73BB0-80C73BD0 0008B0 0020+00 1/0 0/0 0/0 .text daLv6Lblock_Execute__FP13daLv6Lblock_c */
static int daLv6Lblock_Execute(daLv6Lblock_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C73BD0-80C73BF0 0008D0 0020+00 1/0 0/0 0/0 .text daLv6Lblock_Delete__FP13daLv6Lblock_c */
static int daLv6Lblock_Delete(daLv6Lblock_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C73BF0-80C73C10 0008F0 0020+00 1/0 0/0 0/0 .text            daLv6Lblock_Create__FP10fopAc_ac_c
 */
static int daLv6Lblock_Create(fopAc_ac_c* i_this) {
    return ((daLv6Lblock_c*)i_this)->create();
}

/* 80C73D54-80C73D74 -00001 0020+00 1/0 0/0 0/0 .data            l_daLv6Lblock_Method */
static actor_method_class l_daLv6Lblock_Method = {
    (process_method_func)daLv6Lblock_Create,
    (process_method_func)daLv6Lblock_Delete,
    (process_method_func)daLv6Lblock_Execute,
    (process_method_func)NULL,
    (process_method_func)daLv6Lblock_Draw,
};

/* 80C73D74-80C73DA4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv6Lblock */
extern actor_process_profile_definition g_profile_Obj_Lv6Lblock = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Lv6Lblock,     // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daLv6Lblock_c),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  625,                    // mPriority
  &l_daLv6Lblock_Method,  // sub_method
  0x00040000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
