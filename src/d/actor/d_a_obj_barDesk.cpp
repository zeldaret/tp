/**
 * d_a_obj_barDesk.cpp
 * Object - Table
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_barDesk.h"
#include "d/d_procname.h"
#include "d/d_bg_w.h"
#include "d/d_com_inf_game.h"

/* 80BA9D24-80BA9D2C 000014 0008+00 2/2 0/0 0/0 .bss             l_HIO */
static daBarDesk_HIO_c l_HIO;

/* 80BA9D2C-80BA9D30 00001C 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80BA9D2C[4];

/* 80BA9B70-80BA9BA0 000000 0030+00 2/2 0/0 0/0 .rodata          mCcDObjInfo__11daBarDesk_c */
dCcD_SrcGObjInf const daBarDesk_c::mCcDObjInfo = {
    {0, {{0, 0, 0}, {0xD8FAFDBF, 0x11}, {0}}},
    {1, 0, 0, 0, 0},
    {0xA, 0, 0, 0, 6},
    {0}
};

/* 80BA9BDC-80BA9C20 000020 0044+00 2/2 0/0 0/0 .data            mCcDCyl__11daBarDesk_c */
dCcD_SrcCyl daBarDesk_c::mCcDCyl = {
    mCcDObjInfo,
    {{0.0f, 0.0f, 0.0f}, 0.0f, 0.0f}
};

/* 80BA918C-80BA91B8 0000EC 002C+00 1/1 0/0 0/0 .text            __ct__15daBarDesk_HIO_cFv */
daBarDesk_HIO_c::daBarDesk_HIO_c() : field_0x4(10), field_0x5(3) {
    /* empty function */
}

/* 80BA9200-80BA9288 000160 0088+00 2/2 0/0 0/0 .text            setBaseMtx__11daBarDesk_cFv */
void daBarDesk_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80BA9288-80BA92F4 0001E8 006C+00 1/0 0/0 0/0 .text            CreateHeap__11daBarDesk_cFv */
int daBarDesk_c::CreateHeap() {
    J3DModelData* model_data = (J3DModelData*)dComIfG_getObjectRes("KHdesk", 4);
    mpModel = mDoExt_J3DModel__create(model_data, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }
    return 1;
}

/* 80BA92F4-80BA94B8 000254 01C4+00 1/1 0/0 0/0 .text            create__11daBarDesk_cFv */
cPhs__Step daBarDesk_c::create() {
    fopAcM_SetupActor(this, daBarDesk_c);
    if (fopAcM_isSwitch(this, (u8)fopAcM_GetParam(this))) {
        return cPhs_ERROR_e;
    }
    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&mPhase, "KHdesk");
    if (step == cPhs_COMPLEATE_e) {
        if (MoveBGCreate("KHdesk", 7, dBgS_MoveBGProc_TypicalRotY, 0xe50, NULL) == cPhs_ERROR_e) {
            return cPhs_ERROR_e;
        }
        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());
        mColStatus.Init(0xff, 0xff, this);
        mColCyl.Set(mCcDCyl);
        mColCyl.SetStts(&mColStatus);
        init_modeWait();
        setBaseMtx();
    }
    return step;
}

/* 80BA95A4-80BA95F4 000504 0050+00 1/0 0/0 0/0 .text            Execute__11daBarDesk_cFPPA3_A4_f */
int daBarDesk_c::Execute(Mtx** i_mtxP) {
    windowProc();
    *i_mtxP = &mpModel->getBaseTRMtx();
    setBaseMtx();
    return 1;
}

/* 80BA95F4-80BA9680 000554 008C+00 1/1 0/0 0/0 .text            windowProc__11daBarDesk_cFv */
void daBarDesk_c::windowProc() {
    typedef void (daBarDesk_c::*daBarDesk_modeFunc)();
    static daBarDesk_modeFunc mode_proc[2] = {
        &modeWait,
        &modeBreak,
    };
    (this->*mode_proc[mMode])();
}

/* 80BA9680-80BA968C 0005E0 000C+00 1/1 0/0 0/0 .text            init_modeWait__11daBarDesk_cFv */
void daBarDesk_c::init_modeWait() {
    mMode = 0;
}

/* 80BA968C-80BA973C 0005EC 00B0+00 1/0 0/0 0/0 .text            modeWait__11daBarDesk_cFv */
void daBarDesk_c::modeWait() {
    if (mColCyl.ChkTgHit()) {
        if (mpBgW != NULL) {
            dComIfG_Bgsp().Release(mpBgW);
        }
        init_modeBreak();
    }
    mColCyl.SetR(90.0f);
    mColCyl.SetH(90.0f);
    mColCyl.SetC(current.pos);
    dComIfG_Ccsp()->Set(&mColCyl);
    mColCyl.ClrTgHit();
}

/* 80BA973C-80BA9824 00069C 00E8+00 1/1 0/0 0/0 .text            init_modeBreak__11daBarDesk_cFv */
void daBarDesk_c::init_modeBreak() {
    mDoAud_seStart(Z2SE_OBJ_TABLE_BRAKE, &current.pos, 0,
                   dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    setBreakEffect();
    dComIfGp_getVibration().StartShock(l_HIO.field_0x5, 15, cXyz(0.0f, 1.0f, 0.0f));
    fopAcM_onSwitch(this, (u8)fopAcM_GetParam(this));
    mMode = 1;
}

/* 80BA9824-80BA9844 000784 0020+00 1/0 0/0 0/0 .text            modeBreak__11daBarDesk_cFv */
void daBarDesk_c::modeBreak() {
    fopAcM_delete(this);
}

/* 80BA9844-80BA98E8 0007A4 00A4+00 1/1 0/0 0/0 .text            setBreakEffect__11daBarDesk_cFv */
void daBarDesk_c::setBreakEffect() {
    static const u16 particle_id[2] = {0x85F4, 0x85F5};
    for (int i = 0; i < 2; i++) {
        dComIfGp_particle_set(particle_id[i], &current.pos, NULL, &scale,
                              0xff, NULL, -1, NULL, NULL, NULL);
    }
}

/* 80BA98E8-80BA998C 000848 00A4+00 1/0 0/0 0/0 .text            Draw__11daBarDesk_cFv */
int daBarDesk_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80BA998C-80BA99BC 0008EC 0030+00 1/0 0/0 0/0 .text            Delete__11daBarDesk_cFv */
int daBarDesk_c::Delete() {
    dComIfG_resDelete(&mPhase, "KHdesk");
    return 1;
}

/* 80BA99BC-80BA99E8 00091C 002C+00 1/0 0/0 0/0 .text            daBarDesk_Draw__FP11daBarDesk_c */
static int daBarDesk_Draw(daBarDesk_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80BA99E8-80BA9A08 000948 0020+00 1/0 0/0 0/0 .text            daBarDesk_Execute__FP11daBarDesk_c
 */
static int daBarDesk_Execute(daBarDesk_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80BA9A08-80BA9A28 000968 0020+00 1/0 0/0 0/0 .text            daBarDesk_Delete__FP11daBarDesk_c
 */
static int daBarDesk_Delete(daBarDesk_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80BA9A28-80BA9A48 000988 0020+00 1/0 0/0 0/0 .text            daBarDesk_Create__FP10fopAc_ac_c */
static cPhs__Step daBarDesk_Create(fopAc_ac_c* i_this) {
    return static_cast<daBarDesk_c*>(i_this)->create();
}

/* 80BA9C50-80BA9C70 -00001 0020+00 1/0 0/0 0/0 .data            l_daBarDesk_Method */
static actor_method_class l_daBarDesk_Method = {
    (process_method_func)daBarDesk_Create,
    (process_method_func)daBarDesk_Delete,
    (process_method_func)daBarDesk_Execute,
    (process_method_func)NULL,
    (process_method_func)daBarDesk_Draw,
};

/* 80BA9C70-80BA9CA0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_BarDesk */
extern actor_process_profile_definition g_profile_Obj_BarDesk = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_Obj_BarDesk,
    &g_fpcLf_Method.base,
    sizeof(daBarDesk_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x279,
    &l_daBarDesk_Method,
    0x40100,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
