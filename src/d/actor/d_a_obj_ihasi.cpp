/**
* @file d_a_obj_ihasi.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_ihasi.h"
#include "d/d_com_inf_game.h"

/* 80C26018-80C2611C 000078 0104+00 1/0 0/0 0/0 .text daObj_Ihasi_Draw__FP15obj_ihasi_class */
static int daObj_Ihasi_Draw(obj_ihasi_class* i_this) {
    if (i_this->mFlag1 != 1) {
        g_env_light.settingTevStruct(0x20, &i_this->current.pos, &i_this->tevStr);
        g_env_light.setLightTevColorType_MAJI(i_this->mpModel1, &i_this->tevStr);

        dComIfGd_setListBG();
        mDoExt_modelUpdateDL(i_this->mpModel1);
        dComIfGd_setList();
    } else {
        g_env_light.settingTevStruct(0x10, &i_this->current.pos, &i_this->tevStr);
        g_env_light.setLightTevColorType_MAJI(i_this->mpModel2, &i_this->tevStr);

        i_this->mpBtkAnm->entry(i_this->mpModel2->getModelData());
        mDoExt_modelUpdateDL(i_this->mpModel2);
    }

    return 1;
}

/* 80C2611C-80C26120 00017C 0004+00 1/1 0/0 0/0 .text            ih_normal__FP15obj_ihasi_class */
static void ih_normal(obj_ihasi_class* i_this) {}

/* 80C26120-80C26124 000180 0004+00 1/1 0/0 0/0 .text            ih_disappear__FP15obj_ihasi_class
 */
static void ih_disappear(obj_ihasi_class* i_this) {}

/* 80C26124-80C26204 000184 00E0+00 1/1 0/0 0/0 .text            action__FP15obj_ihasi_class */
static void action(obj_ihasi_class* i_this) {
    switch (i_this->mFlag1) {
    case 0:
        ih_normal(i_this);
        break;
    case 1:
        ih_disappear(i_this);
        break;
    }

    mDoMtx_stack_c::transS(i_this->current.pos.x, i_this->current.pos.y, i_this->current.pos.z);

    if (i_this->mFlag1 == 1) {
        mDoMtx_stack_c::transM(34800.0f, -300.0f, -26735.0f);
        i_this->mpBtkAnm->play();
        i_this->mpModel2->setBaseTRMtx(mDoMtx_stack_c::get());
    } else {
        i_this->mpModel1->setBaseTRMtx(mDoMtx_stack_c::get());
        MTXCopy(mDoMtx_stack_c::get(), i_this->mMtx);
        i_this->mpBgW->Move();
    }

    return;
}

/* 80C26204-80C262C4 000264 00C0+00 2/1 0/0 0/0 .text daObj_Ihasi_Execute__FP15obj_ihasi_class */
static int daObj_Ihasi_Execute(obj_ihasi_class* i_this) {
    i_this->field_0x57c += 1;

    for (int i = 0; i < 2; i++) {
        if (i_this->mArr[i] != 0) {
            i_this->mArr[i] -= 1;
        }
    }

    if (i_this->mFlag2 != 0) {
        i_this->mFlag1 = 1;
        i_this->mFlag2 = 0;

        dComIfG_Bgsp().Release(i_this->mpBgW);
        i_this->mpBgW = NULL;
        /* dSv_event_flag_c::M_050 - Main Event - Eldin Bridge disappears */
        dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[0x53]);
    }

    action(i_this);
    return 1;
}

/* 80C262C4-80C262CC 000324 0008+00 1/0 0/0 0/0 .text daObj_Ihasi_IsDelete__FP15obj_ihasi_class */
static int daObj_Ihasi_IsDelete(obj_ihasi_class* param_0) {
    return 1;
}

/* 80C262CC-80C26324 00032C 0058+00 1/0 0/0 0/0 .text daObj_Ihasi_Delete__FP15obj_ihasi_class */
static int daObj_Ihasi_Delete(obj_ihasi_class* _this) {
    dComIfG_resDelete(&_this->mPhaseReq, "Obj_ihasi");

    if (_this->mpBgW != NULL) {
        dComIfG_Bgsp().Release(_this->mpBgW);
    }

    return 1;
}

/* 80C26324-80C264F8 000384 01D4+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_actor) {
    obj_ihasi_class* i_this = static_cast<obj_ihasi_class*>(i_actor);

    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("Obj_ihasi", 5);
    i_this->mpModel1 = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000284);

    if (i_this->mpModel1 == NULL) {
        return 0;
    }

    i_this->mpBgW = new dBgW();
    if (i_this->mpBgW == NULL) {
        return 0;
    }

    cBgD_t* pdzb = (cBgD_t*)dComIfG_getObjectRes("Obj_ihasi", 0xc);
    if (i_this->mpBgW->Set(pdzb, 1, &i_this->mMtx) == 1) {
        return 0;
    }

    i_this->mpBgW->SetCrrFunc(dBgS_MoveBGProc_Typical);

    J3DModelData* modelData2 = (J3DModelData*)dComIfG_getObjectRes("Obj_ihasi", 6);
    i_this->mpModel2 = mDoExt_J3DModel__create(modelData2, 0x80000, 0x11000284);
    if (i_this->mpModel2 == NULL) {
        return 0;
    }

    i_this->mpBtkAnm = new mDoExt_btkAnm();
    if (i_this->mpBtkAnm == NULL) {
        return 0;
    }

    J3DAnmTextureSRTKey* key = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("Obj_ihasi", 9);
    if (i_this->mpBtkAnm->init(i_this->mpModel2->getModelData(), key, 1, 0, 1.0f, 0, -1) == 0) {
        return 0;
    }

    return 1;
}

/* 80C26540-80C26880 0005A0 0340+00 1/0 0/0 0/0 .text            daObj_Ihasi_Create__FP10fopAc_ac_c
 */
static int daObj_Ihasi_Create(fopAc_ac_c* i_actor) {
    fopAcM_SetupActor(i_actor, obj_ihasi_class);
    obj_ihasi_class* i_this = static_cast<obj_ihasi_class*>(i_actor);

    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&i_this->mPhaseReq, "Obj_ihasi");

    if (step == cPhs_COMPLEATE_e) {
        u32 param;
        csXyz angle;
        cXyz pos;

            /* dSv_event_flag_c::M_050 - Main Event - Eldin Bridge disappears */
        if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x53])) {
            angle.set(0x0, -0x8000, 0x0);
            pos.set(34750.0f, -300.0f, -44000.0f);

            param = fopAcM_GetParam(i_actor) & 0xff000000 | 0xfffe00;
            fopAcM_create(PROC_E_S1, param, &pos, fopAcM_GetRoomNo(i_actor), &angle, NULL, -1);

            pos.set(35250.0f, -300.0f, -43500.0f);
            angle.y += 0x5555;
            fopAcM_create(PROC_E_S1, param, &pos, fopAcM_GetRoomNo(i_actor), &angle, NULL, -1);

            pos.set(34250.0f, -300.0f, -43500.0f);
            angle.y += 0x5555;
            fopAcM_create(PROC_E_S1, param, &pos, fopAcM_GetRoomNo(i_actor), &angle, NULL, -1);

            return cPhs_ERROR_e;
        }

        if (!fopAcM_entrySolidHeap(i_actor, useHeapInit, 0x43b0)) {
            return cPhs_ERROR_e;
        }

        if (dComIfG_Bgsp().Regist(i_this->mpBgW, i_this)) {
            return cPhs_ERROR_e;
        }

        i_this->field_0x57c = cM_rndF(65536.0f);

        if (!strcmp(dComIfGp_getStartStageName(), "F_SP121") && fopAcM_GetRoomNo(i_actor) == 0) {
            pos.set(34800.0f, 5700.0f, -26735.0f);
            fopAcM_create(PROC_E_WAP, 0xffffff35, &pos, fopAcM_GetRoomNo(i_actor), NULL, NULL, -1);

            angle.set(0x0, -0x8000, 0x0);
            pos.set(34800.0f, -300.0f, -30340.0f);
            param = fopAcM_GetParam(i_actor) & 0xff000000 | 0xfffe00;
            fopAcM_create(PROC_E_S1, param, &pos, fopAcM_GetRoomNo(i_actor), &angle, NULL, -1);

            pos.set(35087.0f, -300.0f, -29879.0f);
            fopAcM_create(PROC_E_S1, param, &pos, fopAcM_GetRoomNo(i_actor), &angle, NULL, -1);

            pos.set(34500.0f, -300.0f, -29879.0f);
            fopAcM_create(PROC_E_S1, param, &pos, fopAcM_GetRoomNo(i_actor), &angle, NULL, -1);
        }

        daObj_Ihasi_Execute(i_this);
    }

    return step;
}

/* 80C268D8-80C268F8 -00001 0020+00 1/0 0/0 0/0 .data            l_daObj_Ihasi_Method */
static actor_method_class l_daObj_Ihasi_Method = {
    (process_method_func)daObj_Ihasi_Create,  (process_method_func)daObj_Ihasi_Delete,
    (process_method_func)daObj_Ihasi_Execute, (process_method_func)daObj_Ihasi_IsDelete,
    (process_method_func)daObj_Ihasi_Draw,
};

/* 80C268F8-80C26928 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_IHASI */
extern actor_process_profile_definition g_profile_OBJ_IHASI = {
    fpcLy_CURRENT_e,          // mLayerID
    3,                        // mListID
    fpcPi_CURRENT_e,          // mListPrio
    PROC_OBJ_IHASI,           // mProcName
    &g_fpcLf_Method.base,     // sub_method
    sizeof(obj_ihasi_class),  // mSize
    0,                        // mSizeOther
    0,                        // mParameters
    &g_fopAc_Method.base,     // sub_method
    533,                      // mPriority
    &l_daObj_Ihasi_Method,    // sub_method
    0x00044000,               // mStatus
    fopAc_ACTOR_e,            // mActorType
    fopAc_CULLBOX_CUSTOM_e,   // cullType
};
