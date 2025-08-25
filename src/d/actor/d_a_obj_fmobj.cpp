/**
 * @file d_a_obj_fmobj.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_fmobj.h"
#include "d/d_bg_w.h"
#include "d/d_com_inf_game.h"
#include "d/d_procname.h"
#include "d/d_s_play.h"
#include "SSystem/SComponent/c_math.h"

/* 8057CBD8-8057CC44 000078 006C+00 1/0 0/0 0/0 .text daObj_Fmobj_Draw__FP15obj_fmobj_class */
static int daObj_Fmobj_Draw(obj_fmobj_class* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)&i_this->mActor;
    J3DModel* model_p = i_this->mpModel;

    g_env_light.settingTevStruct(0x40, &a_this->current.pos, &a_this->tevStr);
    g_env_light.setLightTevColorType_MAJI(model_p, &a_this->tevStr);
    mDoExt_modelUpdateDL(model_p);
    return 1;
}

/* 8057CC44-8057CC84 0000E4 0040+00 1/0 0/0 0/0 .text daObj_Fmobj_Execute__FP15obj_fmobj_class */
static int daObj_Fmobj_Execute(obj_fmobj_class* i_this) {
    i_this->field_0x578++;

    for (int i = 0; i < 2; i++) {
        if (i_this->field_0x57e[i] != 0) {
            i_this->field_0x57e[i]--;
        }
    }

    return 1;
}

/* 8057CC84-8057CC8C 000124 0008+00 1/0 0/0 0/0 .text daObj_Fmobj_IsDelete__FP15obj_fmobj_class */
static int daObj_Fmobj_IsDelete(obj_fmobj_class* i_this) {
    return 1;
}

/* 8057CC8C-8057CCDC 00012C 0050+00 1/0 0/0 0/0 .text daObj_Fmobj_Delete__FP15obj_fmobj_class */
static int daObj_Fmobj_Delete(obj_fmobj_class* i_this) {
    dComIfG_resDelete(&i_this->mPhase, "Obj_Fmobj");
    dComIfG_Bgsp().Release(i_this->mpBgW);
    return 1;
}

/* 8057CCDC-8057CDE0 00017C 0104+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    obj_fmobj_class* a_this = (obj_fmobj_class*)i_this;

    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("Obj_Fmobj", 4);
    a_this->mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (a_this->mpModel == NULL) {
        return 0;
    }

    a_this->mpBgW = new dBgW();
    if (a_this->mpBgW == NULL) {
        return 0;
    }

    cBgD_t* pdzb = (cBgD_t*)dComIfG_getObjectRes("Obj_Fmobj", 7);
    if (a_this->mpBgW->Set(pdzb, cBgW::MOVE_BG_e, &a_this->mBgMtx) == 1) {
        return 0;
    }

    a_this->mpBgW->SetCrrFunc(dBgS_MoveBGProc_Typical);
    return 1;
}

/* 8057CDE0-8057CF60 000280 0180+00 1/0 0/0 0/0 .text            daObj_Fmobj_Create__FP10fopAc_ac_c
 */
static int daObj_Fmobj_Create(fopAc_ac_c* i_this_param) {
    // Fake match - debug says i_this is fake
    fopAc_ac_c* i_this = (fopAc_ac_c*)i_this_param;
    obj_fmobj_class* a_this = (obj_fmobj_class*)i_this_param;
    fopAcM_SetupActor(i_this, obj_fmobj_class);
    int phase;

    phase = dComIfG_resLoad(&a_this->mPhase, "Obj_Fmobj");
    if (phase == cPhs_COMPLEATE_e) {
        OS_REPORT("OBJ_FMOBJ PARAM %x\n", fopAcM_GetParam(i_this));
        a_this->field_0x570 = fopAcM_GetParam(i_this) & 0xFF;

        if (dComIfGs_isStageBossEnemy()) {
            return cPhs_ERROR_e;
        }
        
        OS_REPORT("OBJ_FMOBJ//////////////OBJ_FMOBJ SET 1 !!\n");
        if (!fopAcM_entrySolidHeap(i_this, useHeapInit, 0x4B000)) {
            OS_REPORT("//////////////OBJ_FMOBJ SET NON !!\n");
            return cPhs_ERROR_e;
        }

        OS_REPORT("//////////////OBJ_FMOBJ SET 2 !!\n");
        if (dComIfG_Bgsp().Regist(a_this->mpBgW, i_this)) {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(i_this, a_this->mpModel->getBaseTRMtx());
        i_this->shape_angle.y = cM_rndF(65536.0f);

        mDoMtx_stack_c::transS(i_this->current.pos.x, i_this->current.pos.y, i_this->current.pos.z);
        mDoMtx_stack_c::YrotM((s16)i_this->shape_angle.y);
        a_this->mpModel->setBaseTRMtx(mDoMtx_stack_c::get());

        mDoMtx_stack_c::transM(0.0f, YREG_F(9) + -30.0f, 0.0f);
        MTXCopy(mDoMtx_stack_c::get(), a_this->mBgMtx);

        a_this->mpBgW->Move();
    }

    return phase;
}

/* ############################################################################################## */
/* 8057CF80-8057CFA0 -00001 0020+00 1/0 0/0 0/0 .data            l_daObj_Fmobj_Method */
static actor_method_class l_daObj_Fmobj_Method = {
    (process_method_func)daObj_Fmobj_Create,  (process_method_func)daObj_Fmobj_Delete,
    (process_method_func)daObj_Fmobj_Execute, (process_method_func)daObj_Fmobj_IsDelete,
    (process_method_func)daObj_Fmobj_Draw,
};

/* 8057CFA0-8057CFD0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_FMOBJ */
extern actor_process_profile_definition g_profile_OBJ_FMOBJ = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_OBJ_FMOBJ,
    &g_fpcLf_Method.base,
    sizeof(obj_fmobj_class),
    0,
    0,
    &g_fopAc_Method.base,
    40,
    &l_daObj_Fmobj_Method,
    0x40100,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_7_e,
};
