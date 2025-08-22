/**
 * @file d_a_obj_brakeeff.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_brakeeff.h"
#include "dol2asm.h"
#include "d/d_kankyo.h"
#include "m_Do/m_Do_ext.h"
#include "m_Do/m_Do_mtx.h"
#include "d/d_com_inf_game.h"
#include "d/d_bg_s.h"
#include "d/d_bg_w.h"
#include "dolphin/mtx.h"
#include "d/d_com_inf_game.h"
#include "d/d_cc_uty.h"

//Particle IDS
u16 e_name[5] = {
    0x00, 0x00, 0x00, 0x00, 0x00
};

//model data per effect type
u32 bef_bmd[2] = {
    5,
    6,
};

//J3DAnmTevRegKey per effect type
u32 bef_brk[2] = {
    9,
    10,
};

/* 8046DCB8-8046DD38 000078 0080+00 1/0 0/0 0/0 .text daObj_Brakeeff_Draw__FP18obj_brakeeff_class
 */
int daObj_Brakeeff_Draw(obj_brakeeff_class* i_this) {
    J3DModel* model = i_this->mpModel;

    g_env_light.settingTevStruct(64, &i_this->current.pos, &i_this->tevStr);
    g_env_light.setLightTevColorType_MAJI(model->mModelData, &i_this->tevStr);

    i_this->mpBrk->entry(model->getModelData());
    mDoExt_modelUpdateDL(model);
    return 1;
}

/* 8046DD38-8046DF80 0000F8 0248+00 1/1 0/0 0/0 .text obj_brakeeff_1__FP18obj_brakeeff_class */
void obj_brakeeff_1(obj_brakeeff_class* i_this) {
    cXyz pos (i_this->current.pos);
    cXyz misc_vector(1.0f, 1.0f, 1.0f);

    if(i_this->mEffectType == 0){
        pos.y += 75.0f;
    }
    else if(i_this->mEffectType == 1){
        pos.y += 50.0f;
        misc_vector.set(0.56f, 0.56f, 0.56f);
    }
    switch (i_this->mMiscTimer3) {
        default:
            return;
        case 0:
            i_this->mMiscTimer3 = 1;
            i_this->mMiscTimers[0] = 60;
            break;
        case 1:
            break;
    }

    for(int i = 0; i < 2; i++){
        i_this->mRuntimeParticleIds[i] = dComIfGp_particle_set(i_this->mRuntimeParticleIds[i], e_name[i],&pos, &i_this->current.angle, &misc_vector);
    }

    if(i_this->mMiscTimers[0] == 0){
        i_this->mDCcD_Sph.SetC(pos);
        dComIfG_Ccsp()->Set(&i_this->mDCcD_Sph);

        if(i_this->mDCcD_Sph.ChkTgHit()){
            i_this->mMiscTimer3 = 2;

            dCcU_AtInfo atInfo;

            atInfo.mpCollider = i_this->mDCcD_Sph.GetTgHitObj();
            at_power_check(&atInfo);

            cXyz result = i_this->current.pos - atInfo.mpActor->current.pos;
            i_this->current.angle.y = cM_atan2s(result.x, result.z);

            for(int i = 2; i < 5; i++){
                dComIfGp_particle_set(e_name[i], &pos, &i_this->current.angle, &misc_vector);
            }
            fopAcM_delete(i_this);
        }
    }
}

/* 8046DF80-8046DFB0 000340 0030+00 1/1 0/0 0/0 .text            action__FP18obj_brakeeff_class */
void action(obj_brakeeff_class* i_this) {
    switch (i_this->mMiscTimer2){
    case 0:
        obj_brakeeff_1(i_this);
        break;
    }
}

/* 8046DFB0-8046E098 000370 00E8+00 2/1 0/0 0/0 .text
 * daObj_Brakeeff_Execute__FP18obj_brakeeff_class               */
int daObj_Brakeeff_Execute(obj_brakeeff_class* i_this) {
    i_this->mMiscTimer1++;

    for(int i = 0; i < 2; i++) {
        if(i_this->mMiscTimers[i] != 0){
            i_this->mMiscTimers[i]--;
        }
    }

    action(i_this);

    mDoMtx_stack_c::transS(i_this->current.pos.x, i_this->current.pos.y, i_this->current.pos.z);
    mDoMtx_stack_c::YrotM(i_this->shape_angle.y);
    mDoMtx_stack_c::XrotM(i_this->shape_angle.x);
    mDoMtx_stack_c::ZrotM(i_this->shape_angle.z);

    i_this->mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), i_this->mStoredMatrix);

    i_this->mpDBgW->Move();
    i_this->mpBrk->play();
    return 1;
}

/* 8046E098-8046E0A0 000458 0008+00 1/0 0/0 0/0 .text
 * daObj_Brakeeff_IsDelete__FP18obj_brakeeff_class              */
int daObj_Brakeeff_IsDelete(obj_brakeeff_class* i_this) {
    return 1;
}

/* 8046E0A0-8046E0F0 000460 0050+00 1/0 0/0 0/0 .text
 * daObj_Brakeeff_Delete__FP18obj_brakeeff_class                */
int daObj_Brakeeff_Delete(obj_brakeeff_class* i_this) {
    dComIfG_resDelete(&i_this->mRequestOfPhase, "Obj_Bef");
    dComIfG_Bgsp().Release(i_this->mpDBgW);

    return 1;
}

/* 8046E0F0-8046E2B0 0004B0 01C0+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
int useHeapInit(fopAc_ac_c* i_this) {
    obj_brakeeff_class* a_this = static_cast<obj_brakeeff_class*>(i_this);

    J3DModelData* modelData = static_cast<J3DModelData*>(dComIfG_getObjectRes("Obj_Bef", bef_bmd[a_this->mEffectType]));

    a_this->mpModel = mDoExt_J3DModel__create(modelData, 0x80000,0x11000084);

    if (a_this->mpModel == NULL) {
        return 0;
    }

    a_this->mpBrk = new mDoExt_brkAnm();

    if(!a_this->mpBrk){
        return 0;
    }

    J3DAnmTevRegKey* tev_anm = static_cast<J3DAnmTevRegKey*>(dComIfG_getObjectRes("Obj_Bef", bef_brk[a_this->mEffectType]));

    if (!a_this->mpBrk->init(a_this->mpModel->getModelData(), tev_anm, 1,0,1.0f,0,-1)) {
        return 0;
    }

    a_this->mpDBgW = new dBgW();

    if(!a_this->mpDBgW){
        return 0;
    }

    cBgD_t* cbgd = (cBgD_t *)dComIfG_getObjectRes("Obj_Bef", 13);

    u32 res = a_this->mpDBgW->Set(cbgd, 1, &a_this->mStoredMatrix);
    if(res == 1){
        return 0;
    }

    a_this->mpDBgW->SetCrrFunc(dBgS_MoveBGProc_Typical);
    return 1;
}

/* 8046E2F8-8046E490 0006B8 0198+00 1/0 0/0 0/0 .text daObj_Brakeeff_Create__FP10fopAc_ac_c */
int daObj_Brakeeff_Create(fopAc_ac_c* i_this) {
    static dCcD_SrcSph cc_sph_src = {
        {
            {0x0, {{0x0, 0x0, 0x0}, {0x20, 0x11}, 0x0}}, // mObj
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
            {0x0}, // mGObjCo
        }, // mObjInf
        {
            {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
        } // mSphAttr
    };

    obj_brakeeff_class* a_this = static_cast<obj_brakeeff_class*>(i_this);

    fopAcM_SetupActor(a_this, obj_brakeeff_class);

    int res_load_result = dComIfG_resLoad(&a_this->mRequestOfPhase, "Obj_Bef");

    if(res_load_result == cPhs_COMPLEATE_e){
        a_this->mEffectType = fopAcM_GetParam(i_this);

        bool is_heap_set = fopAcM_entrySolidHeap(i_this, useHeapInit,0x4b000);

        if(!is_heap_set) return cPhs_ERROR_e;

        bool is_registered = dComIfG_Bgsp().Regist(a_this->mpDBgW, i_this);
        if(is_registered) return cPhs_ERROR_e;

        fopAcM_SetMtx(i_this, a_this->mpModel->getBaseTRMtx());
        a_this->mDCcD_Stts.Init(255, 0, i_this);
        a_this->mDCcD_Sph.Set(cc_sph_src);
        a_this->mDCcD_Sph.SetStts(&a_this->mDCcD_Stts);

        daObj_Brakeeff_Execute(a_this);
    }
    return res_load_result;
}


/* 8046E59C-8046E5BC -00001 0020+00 1/0 0/0 0/0 .data            l_daObj_Brakeeff_Method */
actor_method_class l_daObj_Brakeeff_Method = {
    (process_method_func)daObj_Brakeeff_Create,
    (process_method_func)daObj_Brakeeff_Delete,
    (process_method_func)daObj_Brakeeff_Execute,
    (process_method_func)daObj_Brakeeff_IsDelete,
    (process_method_func)daObj_Brakeeff_Draw,
};

/* 8046E5BC-8046E5EC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_BEF */
extern actor_process_profile_definition g_profile_OBJ_BEF = {
    fpcLy_CURRENT_e,            // mLayerID
    3,                          // mListID
    fpcPi_CURRENT_e,            // mListPrio
    PROC_OBJ_BEF,               // mProcName
    &g_fpcLf_Method.base,      // sub_method
    sizeof(obj_brakeeff_class), // mSize
    0,                          // mSizeOther
    0,                          // mParameters
    &g_fopAc_Method.base,       // sub_method
    39,                         // mPriority
    &l_daObj_Brakeeff_Method,   // sub_method
    0x00040100,                 // mStatus
    fopAc_ACTOR_e,              // mActorType
    fopAc_CULLBOX_7_e,          // cullType
  };
