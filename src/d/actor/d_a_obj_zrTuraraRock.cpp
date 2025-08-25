/**
 * d_a_obj_zrTuraraRock.cpp
 * Object - Zora River Stalactite Debris
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_zrTuraraRock.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_com_inf_game.h"
#include "d/d_procname.h"

/* 80D425AC-80D425CC 000014 0020+00 2/2 0/0 0/0 .bss             l_HIO */
static daZrTuraRc_HIO_c l_HIO;

/* 80D4188C-80D418EC 0000EC 0060+00 1/1 0/0 0/0 .text            __ct__16daZrTuraRc_HIO_cFv */
daZrTuraRc_HIO_c::daZrTuraRc_HIO_c() {
    field_0x04 = 450.0f;
    mGravity = 10.0f;
    mMaxFallSpeed = 200.0f;
    field_0x10 = 30;
    field_0x14 = 5.0f;
    field_0x11 = 4;
    field_0x18 = 3.0f;
    field_0x1c = 5.0f;
}

/* 80D423D4-80D42404 000014 0030+00 1/1 0/0 0/0 .rodata          mCcDObjInfo__12daZrTuraRc_c */
dCcD_SrcGObjInf const daZrTuraRc_c::mCcDObjInfo = {
    {0, {
        {0x20, 1, 0x1F},
        {0, 0},
        {0x79}
    }},
    {1, 0, 1, 0, 0},
    {0xA, 0, 0, 0, 2},
    {0}
};

/* 80D42460-80D424A0 000020 0040+00 2/2 0/0 0/0 .data            mCcDSph__12daZrTuraRc_c */
dCcD_SrcSph daZrTuraRc_c::mCcDSph = {
    mCcDObjInfo,
    {{{0.0f, 0.0f, 0.0f}, 0.0f}}
};

/* 80D41934-80D419D4 000194 00A0+00 2/2 0/0 0/0 .text            setBaseMtx__12daZrTuraRc_cFv */
void daZrTuraRc_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mDoMtx_stack_c::scaleM(mScaleF, mScaleF, mScaleF);
    mpModel->setBaseScale(cXyz(1.0f, 1.0f, 1.0f));
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80D419D4-80D41A40 000234 006C+00 1/1 0/0 0/0 .text            CreateHeap__12daZrTuraRc_cFv */
int daZrTuraRc_c::CreateHeap() {
    J3DModelData* model_data = (J3DModelData*)dComIfG_getObjectRes("M_DRockHn", 3);
    mpModel = mDoExt_J3DModel__create(model_data, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }
    return 1;
}

/* 80D41A40-80D41D24 0002A0 02E4+00 1/1 0/0 0/0 .text            create__12daZrTuraRc_cFv */
cPhs__Step daZrTuraRc_c::create() {
    fopAcM_SetupActor(this, daZrTuraRc_c);
    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&mPhaseReq, "M_DRockHn");
    if (step == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x840)) {
            return cPhs_ERROR_e;
        }
        mAcchCir.SetWall(130.0f, 65.0f);
        mAcch.Set(&current.pos, &old.pos, this, 1, &mAcchCir, &speed, NULL, NULL);
        mAcch.SetWaterCheckOffset(10000.0f);
        mCcStatus.Init(0xff, 0xff, this);
        mCcSph.Set(mCcDSph);
        mCcSph.SetStts(&mCcStatus);
        mSound.init(&current.pos, 1);
        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());
        u8 scale = getScale();
        if (scale == 0xff) {
            scale = 0;
        }
        mScaleF = (scale * 0.1f + 1.0f) * (1.0f - fabsf(cM_rndFX(0.9f)));
        shape_angle.x = cM_deg2s(cM_rndFX(180.0f));
        shape_angle.y = cM_deg2s(cM_rndFX(180.0f));
        shape_angle.z = cM_deg2s(cM_rndFX(180.0f));
        setBaseMtx();
        init_modeDrop();
    }
    return step;
}

/* 80D41EF0-80D41F10 000750 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__12daZrTuraRc_cFP10fopAc_ac_c             */
int daZrTuraRc_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daZrTuraRc_c*>(i_this)->CreateHeap();
}

/* 80D41F10-80D41F78 000770 0068+00 1/1 0/0 0/0 .text            Execute__12daZrTuraRc_cFv */
int daZrTuraRc_c::Execute() {
    move();
    setBaseMtx();
    mCcStatus.Move();
    mSound.framework(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    return 1;
}

/* 80D41F78-80D4204C 0007D8 00D4+00 1/1 0/0 0/0 .text            move__12daZrTuraRc_cFv */
void daZrTuraRc_c::move() {
    typedef void (daZrTuraRc_c::*daZrTuraRc_modeFunc)();
    static daZrTuraRc_modeFunc mode_proc[2] = {
        &modeDrop,
        &modeDropEnd,
    };
    (this->*mode_proc[mMode])();
    mCcSph.SetR(mScaleF * 130.0f);
    mCcSph.SetC(current.pos);
    dComIfG_Ccsp()->Set(&mCcSph);
}

/* 80D4204C-80D42084 0008AC 0038+00 1/1 0/0 0/0 .text            init_modeDrop__12daZrTuraRc_cFv */
void daZrTuraRc_c::init_modeDrop() {
    fopAcM_SetGravity(this, -l_HIO.mGravity);
    fopAcM_SetMaxFallSpeed(this, -l_HIO.mMaxFallSpeed);
    fopAcM_SetSpeedF(this, 0.0f);
    mMode = 0;
}

/* 80D42084-80D420FC 0008E4 0078+00 1/0 0/0 0/0 .text            modeDrop__12daZrTuraRc_cFv */
void daZrTuraRc_c::modeDrop() {
    fopAcM_posMoveF(this, mCcStatus.GetCCMoveP());
    mSound.startLevelSound(Z2SE_OBJ_RG_ROCK_FALL, 0, -1);
    mAcch.CrrPos(dComIfG_Bgsp());
    bgCheck();
}

/* 80D420FC-80D42128 00095C 002C+00 1/1 0/0 0/0 .text            bgCheck__12daZrTuraRc_cFv */
void daZrTuraRc_c::bgCheck() {
    // this should be ChkGroundHit but that doesn't match
    if (mAcch.m_flags >> 5 & 1) {
        init_modeDropEnd();
    }
}

/* 80D42128-80D4215C 000988 0034+00 1/1 0/0 0/0 .text            init_modeDropEnd__12daZrTuraRc_cFv
 */
void daZrTuraRc_c::init_modeDropEnd() {
    fopAcM_delete(this);
    mMode = 1;
}

/* 80D4215C-80D42160 0009BC 0004+00 1/0 0/0 0/0 .text            modeDropEnd__12daZrTuraRc_cFv */
void daZrTuraRc_c::modeDropEnd() {
    /* empty function */
}

/* 80D42160-80D421C4 0009C0 0064+00 1/1 0/0 0/0 .text            Draw__12daZrTuraRc_cFv */
int daZrTuraRc_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    mDoExt_modelUpdateDL(mpModel);
    return 1;
}

/* 80D421C4-80D42208 000A24 0044+00 1/1 0/0 0/0 .text            Delete__12daZrTuraRc_cFv */
int daZrTuraRc_c::Delete() {
    dComIfG_resDelete(&mPhaseReq, "M_DRockHn");
    mSound.deleteObject();
    return 1;
}

/* 80D42208-80D42228 000A68 0020+00 1/0 0/0 0/0 .text            daZrTuraRc_Draw__FP12daZrTuraRc_c
 */
static int daZrTuraRc_Draw(daZrTuraRc_c* i_this) {
    return i_this->Draw();
}

/* 80D42228-80D42248 000A88 0020+00 1/0 0/0 0/0 .text daZrTuraRc_Execute__FP12daZrTuraRc_c */
static int daZrTuraRc_Execute(daZrTuraRc_c* i_this) {
    return i_this->Execute();
}

/* 80D42248-80D42268 000AA8 0020+00 1/0 0/0 0/0 .text            daZrTuraRc_Delete__FP12daZrTuraRc_c
 */
static int daZrTuraRc_Delete(daZrTuraRc_c* i_this) {
    return i_this->Delete();
}

/* 80D42268-80D42288 000AC8 0020+00 1/0 0/0 0/0 .text            daZrTuraRc_Create__FP10fopAc_ac_c
 */
static cPhs__Step daZrTuraRc_Create(fopAc_ac_c* i_this) {
    return static_cast<daZrTuraRc_c*>(i_this)->create();
}

/* 80D424D0-80D424F0 -00001 0020+00 1/0 0/0 0/0 .data            l_daZrTuraRc_Method */
static actor_method_class l_daZrTuraRc_Method = {
    (process_method_func)daZrTuraRc_Create,
    (process_method_func)daZrTuraRc_Delete,
    (process_method_func)daZrTuraRc_Execute,
    (process_method_func)NULL,
    (process_method_func)daZrTuraRc_Draw,
};

/* 80D424F0-80D42520 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_zrTuraraRc */
extern actor_process_profile_definition g_profile_Obj_zrTuraraRc = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_Obj_zrTuraraRc,
    &g_fpcLf_Method.base,
    sizeof(daZrTuraRc_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x28D,
    &l_daZrTuraRc_Method,
    0x40100,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
