/**
 * @file d_a_obj_rfHole.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_rfHole.h"
#include "d/d_com_inf_game.h"
#include "d/d_bg_w.h"

/* 80CB8E6C-80CB8EBC 0000EC 0050+00 1/1 0/0 0/0 .text            __ct__14daRfHole_HIO_cFv */
daRfHole_HIO_c::daRfHole_HIO_c() {
    field_0x04 = 130.0f;
    field_0x08 = 200.0f;
    field_0x10 = 0.0f;
    field_0x0c = 200.0f;
    field_0x14 = 10;
    field_0x15 = 4;
}

/* 80CB8F04-80CB8F8C 000184 0088+00 2/2 0/0 0/0 .text            setBaseMtx__10daRfHole_cFv */
void daRfHole_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mModel->setBaseScale(scale);
    mModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80CB8F8C-80CB8FF8 00020C 006C+00 1/0 0/0 0/0 .text            CreateHeap__10daRfHole_cFv */
int daRfHole_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("Otosiana", 4);
    JUT_ASSERT(167, modelData!=0);
    mModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    return mModel != NULL ? 1 : 0;
}

/* 80CB8FF8-80CB9148 000278 0150+00 1/1 0/0 0/0 .text            create__10daRfHole_cFv */
int daRfHole_c::create() {
    fopAcM_SetupActor(this, daRfHole_c);
    int rv = dComIfG_resLoad(&mPhase, "Otosiana");
    if (rv == cPhs_COMPLEATE_e) {
        if (MoveBGCreate("Otosiana", 7, dBgS_MoveBGProc_TypicalRotY, 0xb40, NULL) == cPhs_ERROR_e) {
            return cPhs_ERROR_e;
        } 
        fopAcM_SetMtx(this, mModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mModel->getModelData());
        if (fopAcM_isSwitch(this, (u8)fopAcM_GetParam(this))) {
            init_modeEnd();
        } else {
            field_0x5ad = (fopAcM_GetParam(this) >> 8) & 0xff;
            if (field_0x5ad != 1) {
                mpBgW->SetRideCallback(rideCallBack);
                init_modeWait();
            } else {
                init_modeBreakEff();
            }
        }
        field_0x5ae = 0;
        mRoofSoundOn = 0;
        setBaseMtx();
    }
    return rv;
}

/* 80CB9148-80CB9194 0003C8 004C+00 1/1 0/0 0/0 .text
 * rideCallBack__10daRfHole_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c  */
void daRfHole_c::rideCallBack(dBgW* param_1, fopAc_ac_c* param_2, fopAc_ac_c* param_3) {
    if (fopAcM_GetName(param_3) == PROC_ALINK && static_cast<daRfHole_c*>(param_2)->playerAreaCheck()) {
        static_cast<daRfHole_c*>(param_2)->field_0x5ae = 1;
    }
}

/* 80CB9BF4-80CB9C0C 000014 0018+00 4/4 0/0 0/0 .bss             l_HIO */
static daRfHole_HIO_c l_HIO;

/* 80CB9194-80CB940C 000414 0278+00 1/1 0/0 0/0 .text            playerAreaCheck__10daRfHole_cFv */
int daRfHole_c::playerAreaCheck() {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    cXyz cStack_30(l_HIO.field_0x0c, 0.0f, 0.0f);
    mDoMtx_stack_c::ZXYrotS(shape_angle.x, shape_angle.y, shape_angle.z);
    mDoMtx_stack_c::multVec(&cStack_30, &cStack_30);
    cXyz cStack_3c = current.pos + cStack_30;
    cXyz cStack_48 = cStack_3c - player->current.pos;
    f32 dVar8 = cStack_48.absXZ();
    int rv = 0;
    if (dVar8 <= l_HIO.field_0x04) {
        rv = 1;
    }
    u8 soundOn = 0;
    if (dVar8 <= l_HIO.field_0x08) {
        soundOn = 1;
        if (mRoofSoundOn != 1) {
            mDoAud_seStart(Z2SE_OBJ_ROOF_ANA, &cStack_3c, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
        }
    }
    mRoofSoundOn = soundOn;
    return rv;
}

/* 80CB940C-80CB9464 00068C 0058+00 1/0 0/0 0/0 .text            Execute__10daRfHole_cFPPA3_A4_f */
int daRfHole_c::Execute(Mtx** i_mtx) {
    holeProc();
    *i_mtx = &mModel->getBaseTRMtx();
    setBaseMtx();
    field_0x5ae = 0;
    return 1;
}

/* 80CB9464-80CB9520 0006E4 00BC+00 1/1 0/0 0/0 .text            holeProc__10daRfHole_cFv */
void daRfHole_c::holeProc() {
    static ModeFunc mode_proc[] = {&daRfHole_c::modeWait, &daRfHole_c::modeBreak,
                                   &daRfHole_c::modeBreakEff, &daRfHole_c::modeEnd};
    (this->*(mode_proc[mMode]))();
}

/* 80CB9520-80CB952C 0007A0 000C+00 1/1 0/0 0/0 .text            init_modeWait__10daRfHole_cFv */
void daRfHole_c::init_modeWait() {
    mMode = MODE_WAIT;
}

/* 80CB952C-80CB9558 0007AC 002C+00 1/0 0/0 0/0 .text            modeWait__10daRfHole_cFv */
void daRfHole_c::modeWait() {
    if (field_0x5ae != 0) {
        init_modeBreak();
    }
}

/* 80CB9558-80CB96AC 0007D8 0154+00 1/1 0/0 0/0 .text            init_modeBreak__10daRfHole_cFv */
void daRfHole_c::init_modeBreak() {
    setBreakEffect();
    dComIfGp_getVibration().StartShock(l_HIO.field_0x15, 15, cXyz(0.0f, 1.0f, 0.0f));
    cXyz acStack_20(l_HIO.field_0x0c, 0.0f, 0.0f);
    mDoMtx_stack_c::ZXYrotS(shape_angle.x, shape_angle.y, shape_angle.z);
    mDoMtx_stack_c::multVec(&acStack_20, &acStack_20);
    cXyz cStack_2c = current.pos + acStack_20;
    mDoAud_seStart(Z2SE_OBJ_WOODROOF_BREAK, &cStack_2c, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    fopAcM_onSwitch(this, (u8)fopAcM_GetParam(this));
    mMode = MODE_BREAK;
}

/* 80CB96AC-80CB96CC 00092C 0020+00 1/0 0/0 0/0 .text            modeBreak__10daRfHole_cFv */
void daRfHole_c::modeBreak() {
    fopAcM_delete(this);
}

/* 80CB96CC-80CB971C 00094C 0050+00 1/1 0/0 0/0 .text            init_modeBreakEff__10daRfHole_cFv
 */
void daRfHole_c::init_modeBreakEff() {
    setBreakEffect();
    fopAcM_onSwitch(this, (u8)fopAcM_GetParam(this));
    mMode = MODE_BREAK_EFF;
}

/* 80CB971C-80CB973C 00099C 0020+00 1/0 0/0 0/0 .text            modeBreakEff__10daRfHole_cFv */
void daRfHole_c::modeBreakEff() {
    fopAcM_delete(this);
}

/* 80CB973C-80CB9748 0009BC 000C+00 1/1 0/0 0/0 .text            init_modeEnd__10daRfHole_cFv */
void daRfHole_c::init_modeEnd() {
    mMode = MODE_END;
}

/* 80CB9748-80CB9768 0009C8 0020+00 1/0 0/0 0/0 .text            modeEnd__10daRfHole_cFv */
void daRfHole_c::modeEnd() {
    fopAcM_delete(this);
}

/* 80CB9768-80CB9878 0009E8 0110+00 2/2 0/0 0/0 .text            setBreakEffect__10daRfHole_cFv */
void daRfHole_c::setBreakEffect() {
    static u16 const particle_id[5] = {
        0x83B0, 0x83B1, 0x83B2, 0x83B3, 0x83B4,
    };
    cXyz acStack_24(l_HIO.field_0x0c, 0.0f, 0.0f);
    mDoMtx_stack_c::ZXYrotS(shape_angle.x, shape_angle.y, shape_angle.z);
    mDoMtx_stack_c::multVec(&acStack_24, &acStack_24);
    cXyz cStack_30 = current.pos + acStack_24;
    for (int i = 0; i < 5; i++) {
        dComIfGp_particle_set(particle_id[i], &cStack_30, NULL, &scale, 0xff, 0, 0xffffffff, NULL,
                              NULL, NULL);
    }
}

/* 80CB9878-80CB991C 000AF8 00A4+00 1/0 0/0 0/0 .text            Draw__10daRfHole_cFv */
int daRfHole_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mModel);
    dComIfGd_setList();
    return 1;
}

/* 80CB991C-80CB994C 000B9C 0030+00 1/0 0/0 0/0 .text            Delete__10daRfHole_cFv */
int daRfHole_c::Delete() {
    dComIfG_resDelete(&mPhase, "Otosiana");
    return 1;
}

/* 80CB994C-80CB9978 000BCC 002C+00 1/0 0/0 0/0 .text            daRfHole_Draw__FP10daRfHole_c */
static int daRfHole_Draw(daRfHole_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80CB9978-80CB9998 000BF8 0020+00 1/0 0/0 0/0 .text            daRfHole_Execute__FP10daRfHole_c */
static int daRfHole_Execute(daRfHole_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80CB9998-80CB99B8 000C18 0020+00 1/0 0/0 0/0 .text            daRfHole_Delete__FP10daRfHole_c */
static int daRfHole_Delete(daRfHole_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80CB99B8-80CB99D8 000C38 0020+00 1/0 0/0 0/0 .text            daRfHole_Create__FP10fopAc_ac_c */
static int daRfHole_Create(fopAc_ac_c* i_this) {
    fopAcM_GetID(i_this);
    return static_cast<daRfHole_c*>(i_this)->create();
}

/* 80CB9B4C-80CB9B6C -00001 0020+00 1/0 0/0 0/0 .data            l_daRfHole_Method */
static actor_method_class l_daRfHole_Method = {
    (process_method_func)daRfHole_Create,
    (process_method_func)daRfHole_Delete,
    (process_method_func)daRfHole_Execute,
    NULL,
    (process_method_func)daRfHole_Draw,
};

/* 80CB9B6C-80CB9B9C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_RfHole */
extern actor_process_profile_definition g_profile_Obj_RfHole = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_RfHole,        // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daRfHole_c),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  514,                    // mPriority
  &l_daRfHole_Method,     // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80CB9AC0-80CB9AC0 00003C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
