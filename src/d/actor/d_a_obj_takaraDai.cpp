/**
* @file d_a_obj_takaraDai.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_takaraDai.h"
#include "d/d_bg_w.h"
#include "d/d_com_inf_game.h"

/* 80D06D8C-80D06E1C 0000EC 0090+00 1/1 0/0 0/0 .text            __ct__15daTkraDai_HIO_cFv */
daTkraDai_HIO_c::daTkraDai_HIO_c() {
    field_0x04 = 12.0f;
    field_0x10 = 4.0f;
    field_0x0c = 3.0f;
    field_0x08 = 130.0f;
    field_0x14 = 0.06f;
    field_0x18 = 5.0f;
    field_0x1c = 1.0f;
    field_0x20 = 90.0f;
    field_0x24 = 30.0f;
    field_0x28 = 10.0f;
    field_0x2c = 0.01f;
    field_0x30 = 5.0f;
    field_0x34 = 0.3f;
    field_0x38 = 15;
}

/* 80D06E64-80D06FFC 0001C4 0198+00 2/2 0/0 0/0 .text            setBaseMtx__11daTkraDai_cFv */
void daTkraDai_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(current.angle.x, current.angle.y, current.angle.z);
    mDoMtx_stack_c::ZXYrotM(field_0x5d4.x, field_0x5d4.y, field_0x5d4.z);
    mpBaseModel->setBaseScale(scale);
    mpBaseModel->setBaseTRMtx(mDoMtx_stack_c::get());
    cMtx_copy(mDoMtx_stack_c::get(), mBgMtx);

    mDoMtx_stack_c::ZXYrotS(current.angle.x, current.angle.y, current.angle.z);
    mDoMtx_stack_c::ZXYrotM(field_0x5d4.x, field_0x5d4.y, field_0x5d4.z);
    field_0x61c.set(-1235.0f, 2050.0f, -1235.0f);
    mDoMtx_stack_c::multVec(&field_0x61c, &field_0x61c);
    mDoMtx_stack_c::transS(current.pos.x + field_0x61c.x, current.pos.y + field_0x61c.y,
                           current.pos.z + field_0x61c.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mpTopModel->setBaseScale(scale);
    mpTopModel->setBaseTRMtx(mDoMtx_stack_c::get());
    cMtx_copy(mDoMtx_stack_c::get(), field_0x62c);
}

/* 80D06FFC-80D07140 00035C 0144+00 1/0 0/0 0/0 .text            CreateHeap__11daTkraDai_cFv */
int daTkraDai_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("M_TakaraD", 4);
    mpBaseModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpBaseModel == NULL) {
        return 0;
    }

    modelData = (J3DModelData*)dComIfG_getObjectRes("M_TakaraD", 5);
    mpTopModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpTopModel == NULL) {
        return 0;
    }

    mpBgW = new dBgW();
    if (mpBgW != NULL &&
        !mpBgW->Set((cBgD_t*)dComIfG_getObjectRes("M_TakaraD", 9), 1, &field_0x62c))
    {
        mpBgW->SetCrrFunc(dBgS_MoveBGProc_TypicalRotY);
    } else {
        mpBgW = NULL;
        return 0;
    }

    return 1;
}

/* 80D07140-80D07344 0004A0 0204+00 1/1 0/0 0/0 .text            create__11daTkraDai_cFv */
int daTkraDai_c::create() {
    fopAcM_SetupActor(this, daTkraDai_c);

    cPhs__Step phase = static_cast<cPhs__Step>(dComIfG_resLoad(&mPhase, "M_TakaraD"));
    if (phase == cPhs_COMPLEATE_e) {
        if (MoveBGCreate("M_TakaraD", 8, dBgS_MoveBGProc_Typical, 0x2e00, NULL) == cPhs_ERROR_e) {
            return cPhs_ERROR_e;
        }
        fopAcM_SetMtx(this, mpBaseModel->getBaseTRMtx());
        J3DJoint* joint = mpBaseModel->getModelData()->getJointNodePointer(0);
        fopAcM_setCullSizeBox(this, scale.x * ((joint->getMin()->x - 250.0f)),
                              scale.y * joint->getMin()->y, scale.z * (joint->getMin()->z - 250.0f),
                              scale.x * joint->getMax()->x, scale.y * (joint->getMax()->y + 50.0f),
                              scale.z * joint->getMax()->z);

        if (mpBgW) {
            dComIfG_Bgsp().Regist(mpBgW, this);
            mpBgW->Move();
        }
        field_0x5d4.setall(0);
        field_0x5dc = 0;
        field_0x5f4 = 0.0f;
        field_0x5f8 = 0.0f;
        field_0x5fc = 0.0f;
        field_0x608 = 0.0f;
        field_0x5e4 = 0.0f;
        field_0x5e0 = 0.0f;
        field_0x5e8 = 0.0f;
        field_0x5ec = 0.0f;
        field_0x5f0 = 0.0f;
        field_0x600 = 0.0f;
        field_0x604 = 0.0f;
        field_0x60c = 0.0f;
        field_0x610 = 0.0f;
        field_0x614 = 0.0f;
        field_0x618 = 1;
        field_0x5d0 = 0;

        mDoMtx_stack_c::ZXYrotS(current.angle.x, current.angle.y, current.angle.z);
        field_0x61c.set(-1235.0f, 2050.0f, -1235.0f);
        mDoMtx_stack_c::multVec(&field_0x61c, &field_0x61c);
        setBaseMtx();
        init_modeWait();
    }
    return phase;
}

/* 80D07344-80D073A4 0006A4 0060+00 1/0 0/0 0/0 .text            Execute__11daTkraDai_cFPPA3_A4_f */
int daTkraDai_c::Execute(Mtx** param_0) {
    procMain();
    setBaseMtx();
    *param_0 = &mpBaseModel->getBaseTRMtx();
    if (mpBgW != NULL) {
        mpBgW->Move();
    }
    return 1;
}

/* 80D0791C-80D07958 000014 003C+00 3/3 0/0 0/0 .bss             l_HIO */
static daTkraDai_HIO_c l_HIO;

/* 80D073A4-80D074D0 000704 012C+00 1/1 0/0 0/0 .text            procMain__11daTkraDai_cFv */
void daTkraDai_c::procMain() {
    typedef void (daTkraDai_c::*daTkraDai_modeFunc)();
    static daTkraDai_modeFunc mode_proc[] = {
        &daTkraDai_c::modeWait,
    };
    (this->*mode_proc[mMode])();

    field_0x5d4.z = field_0x5dc * cM_scos(field_0x5d0 * cM_deg2s(field_0x5e4));
    field_0x5d4.x = field_0x5dc * cM_ssin(field_0x5d0 * cM_deg2s(field_0x5e0));
    field_0x5d0++;
}

/* 80D074D0-80D07528 000830 0058+00 1/1 0/0 0/0 .text            init_modeWait__11daTkraDai_cFv */
void daTkraDai_c::init_modeWait() {
    field_0x5dc = l_HIO.field_0x08;
    field_0x61a = cM_deg2s(360.0f / (l_HIO.field_0x04 * 30.0f));
    mMode = 0;
}

/* 80D07528-80D075A4 000888 007C+00 1/0 0/0 0/0 .text            modeWait__11daTkraDai_cFv */
void daTkraDai_c::modeWait() {
    field_0x5dc = l_HIO.field_0x08;
    field_0x5e4 = l_HIO.field_0x0c;
    field_0x5e0 = l_HIO.field_0x10;

    u32 tmp = getSwBit();
    if (!fopAcM_isSwitch(this, tmp)) {
        shape_angle.y += field_0x61a;
    }
}

/* 80D075A4-80D07668 000904 00C4+00 1/0 0/0 0/0 .text            Draw__11daTkraDai_cFv */
int daTkraDai_c::Draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpBaseModel, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpTopModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpBaseModel);
    mDoExt_modelUpdateDL(mpTopModel);
    dComIfGd_setList();
    return 1;
}

/* 80D07668-80D076D0 0009C8 0068+00 1/0 0/0 0/0 .text            Delete__11daTkraDai_cFv */
int daTkraDai_c::Delete() {
    dComIfG_resDelete(&mPhase, "M_TakaraD");
    if (mpBgW != NULL && mpBgW->ChkUsed()) {
        dComIfG_Bgsp().Release(mpBgW);
    }
    return 1;
}

/* 80D076D0-80D076FC 000A30 002C+00 1/0 0/0 0/0 .text            daTkraDai_Draw__FP11daTkraDai_c */
static int daTkraDai_Draw(daTkraDai_c* i_this) {
    return i_this->Draw();
}

/* 80D076FC-80D0771C 000A5C 0020+00 1/0 0/0 0/0 .text            daTkraDai_Execute__FP11daTkraDai_c
 */
static int daTkraDai_Execute(daTkraDai_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80D0771C-80D0773C 000A7C 0020+00 1/0 0/0 0/0 .text            daTkraDai_Delete__FP11daTkraDai_c
 */
static int daTkraDai_Delete(daTkraDai_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80D0773C-80D0775C 000A9C 0020+00 1/0 0/0 0/0 .text            daTkraDai_Create__FP10fopAc_ac_c */
static int daTkraDai_Create(fopAc_ac_c* i_this) {
    fopAcM_GetID(i_this);
    return static_cast<daTkraDai_c*>(i_this)->create();
}

/* 80D07878-80D07898 -00001 0020+00 1/0 0/0 0/0 .data            l_daTkraDai_Method */
static actor_method_class l_daTkraDai_Method = {
    (process_method_func)daTkraDai_Create,  (process_method_func)daTkraDai_Delete,
    (process_method_func)daTkraDai_Execute, 0,
    (process_method_func)daTkraDai_Draw,
};

/* 80D07898-80D078C8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_TakaraDai */
extern actor_process_profile_definition g_profile_Obj_TakaraDai = {
    fpcLy_CURRENT_e,         // mLayerID
    3,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_TakaraDai,      // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daTkraDai_c),     // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    654,                     // mPriority
    &l_daTkraDai_Method,     // sub_method
    0x00040100,              // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
