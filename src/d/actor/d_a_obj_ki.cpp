/**
 * d_a_obj_ki.cpp
 * Object - Tree
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_ki.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_com_inf_game.h"
#include "d/d_procname.h"

/* 80C44B90-80C44B98 000000 0008+00 1/1 0/0 0/0 .data            ki_bmd */
static int ki_bmd[2] = {9, 10};

/* 80C44C08-80C44C0C 000008 0004+00 2/2 0/0 0/0 .bss             None */
static bool hioInit;

/* 80C44C18-80C44C20 000018 0008+00 2/2 0/0 0/0 .bss             l_HIO */
static daObj_Ki_HIO_c l_HIO;

/* 80C43EEC-80C43F0C 0000EC 0020+00 1/1 0/0 0/0 .text            __ct__14daObj_Ki_HIO_cFv */
daObj_Ki_HIO_c::daObj_Ki_HIO_c() {
    field_0x4 = -1;
    field_0x5 = 0;
}

/* 80C43F0C-80C44010 00010C 0104+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static int nodeCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        int jnt_no = i_joint->getJntNo();
        J3DModel* model = j3dSys.getModel();
        obj_ki_class* _this = (obj_ki_class*)model->getUserArea();
        if (_this != NULL && jnt_no >= 2 && jnt_no <= 4) {
            PSMTXCopy(model->getAnmMtx(jnt_no), *calc_mtx);
            mDoMtx_YrotM(*calc_mtx, _this->field_0x58c[jnt_no - 2].y);
            mDoMtx_XrotM(*calc_mtx, _this->field_0x58c[jnt_no - 2].x);
            mDoMtx_ZrotM(*calc_mtx, _this->field_0x58c[jnt_no - 2].z);
            model->setAnmMtx(jnt_no, *calc_mtx);
            PSMTXCopy(*calc_mtx, J3DSys::mCurrentMtx);
        }
    }
    return 1;
}

/* 80C44010-80C44080 000210 0070+00 1/0 0/0 0/0 .text            daObj_Ki_Draw__FP12obj_ki_class */
static int daObj_Ki_Draw(obj_ki_class* i_this) {
    J3DModel* model = i_this->mpMorf->getModel();
    g_env_light.settingTevStruct(0, &i_this->current.pos, &i_this->tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &i_this->tevStr);
    i_this->mpMorf->entryDL();
    return 1;
}

/* 80C44080-80C4408C 000280 000C+00 1/1 0/0 0/0 .text            action__FP12obj_ki_class */
static void action(obj_ki_class* i_this) {
    cXyz vec;
    if (i_this->field_0x57a == 0) {
        return;
    }
}

/* 80C440C8-80C443E0 0002C8 0318+00 2/1 0/0 0/0 .text            daObj_Ki_Execute__FP12obj_ki_class
 */
static int daObj_Ki_Execute(obj_ki_class* i_this) {
    i_this->mCounter++;
    for (int i = 0; i < 4; i++) {
        if (i_this->mTimers[i] != 0) {
            i_this->mTimers[i]--;
        }
    }

    action(i_this);

    mDoMtx_stack_c::transS(i_this->current.pos.x, i_this->current.pos.y, i_this->current.pos.z);
    mDoMtx_stack_c::YrotM(i_this->shape_angle.y);
    mDoMtx_stack_c::XrotM(i_this->shape_angle.x);
    mDoMtx_stack_c::ZrotM(i_this->shape_angle.z);
    mDoMtx_stack_c::scaleM(i_this->scale.x, i_this->scale.y, i_this->scale.z);
    i_this->mpMorf->getModel()->setBaseTRMtx(mDoMtx_stack_c::get());
    PSMTXCopy(mDoMtx_stack_c::get(), i_this->mMtx);
    i_this->mpBgW->Move();
    i_this->mpMorf->modelCalc();

    for (int i = 0; i < 3; i++) {
        csXyz ang;
        ang.set(0, 0, 0);
        if (i_this->field_0x59e[i] != 0) {
            i_this->field_0x59e[i]--;
            ang.x = i_this->field_0x59e[i]
                    * cM_ssin(10000 * i_this->field_0x59e[i] + 7000 * i) * 50.0f;
            ang.y = i_this->field_0x59e[i]
                    * cM_ssin(12000 * i_this->field_0x59e[i] + 8000 * i) * 50.0f;
            ang.z = i_this->field_0x59e[i]
                    * cM_ssin(14000 * i_this->field_0x59e[i] + 5000 * i) * 50.0f;
        }
        i_this->field_0x58c[i].x = ang.x + cM_ssin(500 * i_this->mCounter + 7000 * i) * 700.0f;
        i_this->field_0x58c[i].y = ang.y + cM_ssin(400 * i_this->mCounter + 8000 * i) * 700.0f;
        i_this->field_0x58c[i].z = ang.z + cM_ssin(600 * i_this->mCounter + 5000 * i) * 700.0f;
    }

    return 1;
}

/* 80C4441C-80C44424 00061C 0008+00 1/0 0/0 0/0 .text            daObj_Ki_IsDelete__FP12obj_ki_class
 */
static int daObj_Ki_IsDelete(obj_ki_class* i_this) {
    return 1;
}

/* 80C44424-80C4448C 000624 0068+00 1/0 0/0 0/0 .text            daObj_Ki_Delete__FP12obj_ki_class
 */
static int daObj_Ki_Delete(obj_ki_class* i_this) {
    dComIfG_resDelete(&i_this->mPhaseReq, "Obj_Ki");
    if (i_this->mHIOInit) {
        hioInit = false;
    }
    dComIfG_Bgsp().Release(i_this->mpBgW);
    return 1;
}

/* 80C4448C-80C4466C 00068C 01E0+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    obj_ki_class* _this = static_cast<obj_ki_class*>(i_this);

    _this->mpMorf =
        new mDoExt_McaMorf((J3DModelData*)dComIfG_getObjectRes("Obj_Ki", ki_bmd[_this->mBmdIdx]),
                           NULL, NULL, NULL, 0, 1.0f, 0, -1, 1, NULL, 0x80000, 0x11000084);
    if (_this->mpMorf == NULL || _this->mpMorf->getModel() == NULL) {
        return 0;
    }
    if (_this->mpMorf == NULL || _this->mpMorf->getModel() == NULL) {
        return 0;
    }
    
    J3DModel* model = _this->mpMorf->getModel();
    model->setUserArea((u32)_this);
    for (u16 i = 0; i < model->getModelData()->getJointNum(); i++) {
        model->getModelData()->getJointNodePointer(i)->setCallBack(nodeCallBack);
    }

    _this->mpBgW = new dBgW();
    if (_this->mpBgW == NULL) {
        return 0;
    }
    static int ki_dzb[2] = {13, 14};
    cBgD_t* dzb = (cBgD_t*)dComIfG_getObjectRes("Obj_Ki", ki_dzb[_this->mBmdIdx]);
    if (_this->mpBgW->Set(dzb, 1, &_this->mMtx) == 1) {
        return 0;
    }
    _this->mpBgW->SetCrrFunc(dBgS_MoveBGProc_Typical);

    return 1;
}

/* 80C4466C-80C449F8 00086C 038C+00 1/0 0/0 0/0 .text            daObj_Ki_Create__FP10fopAc_ac_c */
static cPhs__Step daObj_Ki_Create(fopAc_ac_c* i_this) {
    obj_ki_class* _this = static_cast<obj_ki_class*>(i_this);
    fopAcM_SetupActor(_this, obj_ki_class);
    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&_this->mPhaseReq, "Obj_Ki");

    if (step == cPhs_COMPLEATE_e) {
        _this->mBmdIdx = (u8)fopAcM_GetParam(_this);
        if (_this->mBmdIdx != 0) {
            _this->mBmdIdx = 1;
        }
        _this->mScaleXZ = (u8)(fopAcM_GetParam(_this) >> 8);
        _this->mScaleY = (u8)(fopAcM_GetParam(_this) >> 0x10);

        if (!fopAcM_entrySolidHeap(i_this, useHeapInit, 0x4b000)) {
            return cPhs_ERROR_e;
        }

        if (dComIfG_Bgsp().Regist(_this->mpBgW, _this)) {
            return cPhs_ERROR_e;
        }

        if (!hioInit) {
            _this->mHIOInit = true;
            hioInit = true;
            l_HIO.field_0x4 = -1;
        }

        fopAcM_SetMtx(_this, _this->mpMorf->getModel()->getBaseTRMtx());

        if (_this->mScaleXZ != 0xff) {
            _this->scale.x = _this->mScaleXZ * 0.1f;
            _this->scale.z = _this->scale.x;
        } else {
            _this->scale.x = cM_rndFX(0.2f) + 1.0f;
            _this->scale.z = _this->scale.x;
        }

        if (_this->mScaleY != 0xff) {
            _this->scale.y = _this->mScaleY * 0.1f;
        } else {
            _this->scale.y = cM_rndFX(0.2f) + 1.0f;
        }

        cXyz vec;
        for (int i = 0; i < 3; i++) {
            MtxTrans(_this->current.pos.x, _this->current.pos.y, _this->current.pos.z, 0);
            mDoMtx_YrotM(*calc_mtx, _this->shape_angle.y + i * 0x5555 + 6000);
            MtxScale(_this->scale.x, _this->scale.y, _this->scale.z, 1);
            vec.x = 0.0f;
            vec.y = 0.0f;
            vec.z = 50.0f;
            MtxPosition(&vec, &_this->field_0x5a4[i].field_0x0[0]);
            vec.y = 150.0f;
            vec.z = 40.0f;
            MtxPosition(&vec, &_this->field_0x5a4[i].field_0x0[1]);
            if (i == 0 && _this->mBmdIdx == 1) {
                vec.y = 240.0f;
                vec.z = 30.0f;
            } else {
                vec.y = 330.0f;
                vec.z = 35.0f;
            }
            MtxPosition(&vec, &_this->field_0x5a4[i].field_0x0[2]);
            if (i == 0 && _this->mBmdIdx == 1) {
                vec.y = 270.0f;
            } else {
                vec.y = 360.0f;
            }
            vec.z = 0.0f;
            MtxPosition(&vec, &_this->field_0x5a4[i].field_0x0[3]);
        }

        daObj_Ki_Execute(_this);
    }
    return step;
}

/* 80C44BA0-80C44BC0 -00001 0020+00 1/0 0/0 0/0 .data            l_daObj_Ki_Method */
static actor_method_class l_daObj_Ki_Method = {
    (process_method_func)daObj_Ki_Create,
    (process_method_func)daObj_Ki_Delete,
    (process_method_func)daObj_Ki_Execute,
    (process_method_func)daObj_Ki_IsDelete,
    (process_method_func)daObj_Ki_Draw,
};

/* 80C44BC0-80C44BF0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_KI */
extern actor_process_profile_definition g_profile_OBJ_KI = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_OBJ_KI,
    &g_fpcLf_Method.base,
    sizeof(obj_ki_class),
    0,
    0,
    &g_fopAc_Method.base,
    0x2C2,
    &l_daObj_Ki_Method,
    0x40100,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_7_e,
};
