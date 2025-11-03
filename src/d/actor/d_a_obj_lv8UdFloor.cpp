/**
 * @file d_a_obj_lv8UdFloor.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_lv8UdFloor.h"

class daUdFloor_HIO_c : public mDoHIO_entry_c {
public:
    /* 80C8BD0C */ daUdFloor_HIO_c();
    /* 80C8CB44 */ virtual ~daUdFloor_HIO_c() {}

    void genMessage(JORMContext*);

    /* 0x04 */ u8 field_0x4;
    /* 0x08 */ f32 init_speed;
    /* 0x0C */ u8 vibration;
    /* 0x0D */ u8 down_color_R;
    /* 0x0E */ u8 down_color_G;
    /* 0x0F */ u8 down_color_B;
    /* 0x10 */ u8 down_framecount;
    /* 0x11 */ u8 up_color_R;
    /* 0x12 */ u8 up_color_G;
    /* 0x13 */ u8 up_color_B;
    /* 0x14 */ u8 up_framecount;
};

/* 80C8CC64-80C8CC6C -00001 0008+00 3/3 0/0 0/0 .data            l_resNameIdx */
static char* l_resNameIdx[2] = {
    "L8Step",
    "L8StepX",
};

/* 80C8BD0C-80C8BD80 0000EC 0074+00 1/1 0/0 0/0 .text            __ct__15daUdFloor_HIO_cFv */
daUdFloor_HIO_c::daUdFloor_HIO_c() {
    field_0x4 = 60;
    init_speed = 0.0f;
    vibration = 4;

    down_color_R = 7;
    down_color_G = 14;
    down_color_B = 16;
    down_framecount = 10;

    up_color_R = 0;
    up_color_G = 255;
    up_color_B = 255;
    up_framecount = 15;
}

/* 80C8BDC8-80C8BE64 0001A8 009C+00 2/2 0/0 0/0 .text            setBaseMtx__11daUdFloor_cFv */
void daUdFloor_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(0, current.angle.y, 0);
    mDoMtx_stack_c::transM(0.0f, field_0x5c0, 0.0f);
    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80C8CBF4-80C8CBFC 000004 0008+00 1/1 0/0 0/0 .rodata          l_bmdIdx */
static const int l_bmdIdx[] = {4, 4};

/* 80C8BE64-80C8BEE4 000244 0080+00 1/0 0/0 0/0 .text            CreateHeap__11daUdFloor_cFv */
int daUdFloor_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_resNameIdx[mModelType], l_bmdIdx[mModelType]);
    JUT_ASSERT(231, modelData != NULL);

    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    return 1;
}

/* 80C8CBFC-80C8CC04 00000C 0008+00 0/1 0/0 0/0 .rodata          l_dzbIdx */
static const int l_dzbIdx[] = {7, 7};

/* 80C8CC04-80C8CC0C 000014 0008+00 0/1 0/0 0/0 .rodata          l_heap_size */
static const u32 l_heap_size[] = {0x1200, 0x1400};

/* 80C8CD8C-80C8CDA4 000014 0018+00 7/7 0/0 0/0 .bss             l_HIO */
static daUdFloor_HIO_c l_HIO;

/* 80C8BEE4-80C8C0DC 0002C4 01F8+00 1/1 0/0 0/0 .text            create__11daUdFloor_cFv */
int daUdFloor_c::create() {
    fopAcM_ct(this, daUdFloor_c);

    mModelType = getModelType();

    int phase_state = dComIfG_resLoad(&mPhase, l_resNameIdx[mModelType]);
    if (phase_state == cPhs_COMPLEATE_e) {
        if (MoveBGCreate(l_resNameIdx[mModelType], l_dzbIdx[mModelType], dBgS_MoveBGProc_TypicalRotY, l_heap_size[mModelType], NULL) == cPhs_ERROR_e) {
            return cPhs_ERROR_e;
        }
    
        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());

        s8 move_height = getMoveHeight();
        field_0x5b0 = 50.0f * move_height;

        u8 move_speed = getMoveSpeed();
        field_0x5b4 = field_0x5b0 / move_speed;

        mTimer = getTimer();
        mIsSwitch = fopAcM_isSwitch(this, getSw());
    
        if (mIsSwitch) {
            field_0x5c0 = field_0x5b0;
            mColorR = l_HIO.up_color_R;
            mColorG = l_HIO.up_color_G;
            mColorB = l_HIO.up_color_B;
        } else {
            field_0x5c0 = 0.0f;
            mColorR = l_HIO.down_color_R;
            mColorG = l_HIO.down_color_G;
            mColorB = l_HIO.down_color_B;
        }
    
        init_modeWait();
        setBaseMtx();

        #if DEBUG
        l_HIO.entryHIO("上下床(Lv8)");
        #endif
    }

    return phase_state;
}

/* 80C8C0DC-80C8C12C 0004BC 0050+00 1/0 0/0 0/0 .text            Execute__11daUdFloor_cFPPA3_A4_f */
int daUdFloor_c::Execute(Mtx** param_0) {
    moveLift();
    *param_0 = &mpModel->getBaseTRMtx();
    setBaseMtx();
    return 1;
}

/* 80C8C12C-80C8C264 00050C 0138+00 1/1 0/0 0/0 .text            moveLift__11daUdFloor_cFv */
void daUdFloor_c::moveLift() {
    static void (daUdFloor_c::*mode_proc[])() = {
        &daUdFloor_c::modeWait,
        &daUdFloor_c::modeUpMoveInit,
        &daUdFloor_c::modeUpMove,
        &daUdFloor_c::modeDownMoveInit,
        &daUdFloor_c::modeDownMove,
    };

    u8 prev_switch = mIsSwitch;
    mIsSwitch = fopAcM_isSwitch(this, getSw());
    if (prev_switch != mIsSwitch) {
        if (mIsSwitch) {
            init_modeUpMoveInit();
        } else {
            init_modeDownMoveInit();
        }
    }

    (this->*mode_proc[mMode])();
}

/* 80C8C264-80C8C270 000644 000C+00 3/3 0/0 0/0 .text            init_modeWait__11daUdFloor_cFv */
void daUdFloor_c::init_modeWait() {
    mMode = 0;
}

/* 80C8C270-80C8C274 000650 0004+00 1/0 0/0 0/0 .text            modeWait__11daUdFloor_cFv */
void daUdFloor_c::modeWait() {}

/* 80C8C274-80C8C310 000654 009C+00 1/1 0/0 0/0 .text init_modeUpMoveInit__11daUdFloor_cFv */
void daUdFloor_c::init_modeUpMoveInit() {
    field_0x5c4 = 0;
    field_0x5c5 = l_HIO.up_framecount;
    mDoAud_seStart(Z2SE_OBJ_L8_STAIR_ON, &home.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    mMode = 1;
}

/* 80C8C310-80C8C354 0006F0 0044+00 1/0 0/0 0/0 .text            modeUpMoveInit__11daUdFloor_cFv */
void daUdFloor_c::modeUpMoveInit() {
    if (colorAnm(1) == TRUE) {
        init_modeUpMove();
    }
}

/* 80C8C354-80C8C5E4 000734 0290+00 2/2 0/0 0/0 .text            colorAnm__11daUdFloor_cFi */
u8 daUdFloor_c::colorAnm(BOOL param_0) {
    u8 rt = FALSE;

    f32 temp_f31 = field_0x5c4 / (field_0x5c5 - 1.0f);
    if (param_0) {
        mColorR = l_HIO.down_color_R + (temp_f31 * ((f32)l_HIO.up_color_R - (f32)l_HIO.down_color_R));
        mColorG = l_HIO.down_color_G + (temp_f31 * ((f32)l_HIO.up_color_G - (f32)l_HIO.down_color_G));
        mColorB = l_HIO.down_color_B + (temp_f31 * ((f32)l_HIO.up_color_B - (f32)l_HIO.down_color_B));
    } else {
        mColorR = l_HIO.up_color_R - (temp_f31 * ((f32)l_HIO.up_color_R - (f32)l_HIO.down_color_R));
        mColorG = l_HIO.up_color_G - (temp_f31 * ((f32)l_HIO.up_color_G - (f32)l_HIO.down_color_G));
        mColorB = l_HIO.up_color_B - (temp_f31 * ((f32)l_HIO.up_color_B - (f32)l_HIO.down_color_B));
    }

    field_0x5c4++;
    if (field_0x5c4 > field_0x5c5 - 1) {
        rt = TRUE;
    }

    return rt;
}

/* 80C8C5E4-80C8C68C 0009C4 00A8+00 1/1 0/0 0/0 .text            init_modeUpMove__11daUdFloor_cFv */
void daUdFloor_c::init_modeUpMove() {
    fopAcM_SetSpeedF(this, l_HIO.init_speed);
    field_0x5ba = mTimer;
    if (field_0x5ba == 0) {
        mDoAud_seStart(Z2SE_OBJ_L8_STAIR_MV_UP, &home.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    }
    mMode = 2;
}

/* 80C8C68C-80C8C7F8 000A6C 016C+00 1/0 0/0 0/0 .text            modeUpMove__11daUdFloor_cFv */
void daUdFloor_c::modeUpMove() {
    if (field_0x5ba != 0) {
        field_0x5ba--;
        if (field_0x5ba == 0) {
            mDoAud_seStart(Z2SE_OBJ_L8_STAIR_MV_UP, &home.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
        }
    } else {
        cLib_chaseF(&speedF, field_0x5b4, field_0x5b4 / 30.0f);
        if (cLib_addCalc(&field_0x5c0, field_0x5b0, 1.0f, fopAcM_GetSpeedF(this), 0.1f) == 0.0f) {
            mDoAud_seStart(Z2SE_OBJ_L8_STAIR_ST_UP, &home.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
            dComIfGp_getVibration().StartShock(l_HIO.vibration, 0xF, cXyz(0.0f, 1.0f, 0.0f));
            init_modeWait();
        }
    }
}

/* 80C8C7F8-80C8C81C 000BD8 0024+00 1/1 0/0 0/0 .text init_modeDownMoveInit__11daUdFloor_cFv */
void daUdFloor_c::init_modeDownMoveInit() {
    field_0x5c4 = 0;
    field_0x5c5 = l_HIO.down_framecount;
    mMode = 3;
}

/* 80C8C81C-80C8C860 000BFC 0044+00 1/0 0/0 0/0 .text            modeDownMoveInit__11daUdFloor_cFv
 */
void daUdFloor_c::modeDownMoveInit() {
    if (colorAnm(0) == TRUE) {
        init_modeDownMove();
    }
}

/* 80C8C860-80C8C8E4 000C40 0084+00 1/1 0/0 0/0 .text            init_modeDownMove__11daUdFloor_cFv
 */
void daUdFloor_c::init_modeDownMove() {
    mDoAud_seStart(Z2SE_OBJ_L8_STAIR_MV_DW, &home.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    mMode = 4;
}

/* 80C8C8E4-80C8C994 000CC4 00B0+00 1/0 0/0 0/0 .text            modeDownMove__11daUdFloor_cFv */
void daUdFloor_c::modeDownMove() {
    if (cLib_addCalc(&field_0x5c0, 0.0f, 0.3f, field_0x5b4, 0.1f) == 0.0f) {
        mDoAud_seStart(Z2SE_OBJ_L8_STAIR_ST_DW, &home.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
        init_modeWait();
    }
}

/* 80C8C994-80C8CA78 000D74 00E4+00 1/0 0/0 0/0 .text            Draw__11daUdFloor_cFv */
int daUdFloor_c::Draw() {
    g_env_light.settingTevStruct(64, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();

    J3DGXColor* matColor_p = mpModel->getModelData()->getMaterialNodePointer(1)->getTevKColor(1);
    matColor_p->r = mColorR;
    matColor_p->g = mColorG;
    matColor_p->b = mColorB;
    return 1;
}

/* 80C8CA78-80C8CAB8 000E58 0040+00 1/0 0/0 0/0 .text            Delete__11daUdFloor_cFv */
int daUdFloor_c::Delete() {
    dComIfG_resDelete(&mPhase, l_resNameIdx[mModelType]);
    #if DEBUG
    l_HIO.removeHIO();
    #endif
    return 1;
}

/* 80C8CAB8-80C8CAE4 000E98 002C+00 1/0 0/0 0/0 .text            daUdFloor_Draw__FP11daUdFloor_c */
static int daUdFloor_Draw(daUdFloor_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C8CAE4-80C8CB04 000EC4 0020+00 1/0 0/0 0/0 .text            daUdFloor_Execute__FP11daUdFloor_c
 */
static int daUdFloor_Execute(daUdFloor_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C8CB04-80C8CB24 000EE4 0020+00 1/0 0/0 0/0 .text            daUdFloor_Delete__FP11daUdFloor_c
 */
static int daUdFloor_Delete(daUdFloor_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C8CB24-80C8CB44 000F04 0020+00 1/0 0/0 0/0 .text            daUdFloor_Create__FP10fopAc_ac_c */
static int daUdFloor_Create(fopAc_ac_c* i_this) {
    return ((daUdFloor_c*)i_this)->create();
}

/* 80C8CCE4-80C8CD04 -00001 0020+00 1/0 0/0 0/0 .data            l_daUdFloor_Method */
static actor_method_class l_daUdFloor_Method = {
    (process_method_func)daUdFloor_Create,
    (process_method_func)daUdFloor_Delete,
    (process_method_func)daUdFloor_Execute,
    0,
    (process_method_func)daUdFloor_Draw,
};

/* 80C8CD04-80C8CD34 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv8UdFloor */
extern actor_process_profile_definition g_profile_Obj_Lv8UdFloor = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Lv8UdFloor,    // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daUdFloor_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  646,                    // mPriority
  &l_daUdFloor_Method,    // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
