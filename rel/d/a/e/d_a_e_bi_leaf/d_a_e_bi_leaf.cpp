/**
 * d_a_e_bi_leaf.cpp
 *
 */

#include "rel/d/a/e/d_a_e_bi_leaf/d_a_e_bi_leaf.h"
#include "d/com/d_com_inf_game.h"

/* 8068DC58-8068DCD0 000078 0078+00 1/0 0/0 0/0 .text daE_BI_LEAF_Draw__FP15e_bi_leaf_class */
static int daE_BI_LEAF_Draw(e_bi_leaf_class* i_this) {
    if (i_this->field_0x5b4 == 1) {
        return 1;
    }

    g_env_light.settingTevStruct(0, &i_this->current.pos, &i_this->tevStr);
    g_env_light.setLightTevColorType_MAJI(i_this->mpModel, &i_this->tevStr);
    mDoExt_modelUpdateDL(i_this->mpModel);
    return 1;
}

/* 8068DCD0-8068DDD0 0000F0 0100+00 1/1 0/0 0/0 .text            action__FP15e_bi_leaf_class */
static void action(e_bi_leaf_class* i_this) {
    switch (i_this->mAction) {
    case 0:
        if (i_this->mTimer == 0) {
            fopAc_ac_c* parent_p = fopAcM_SearchByID(i_this->parentActorID);
            if (parent_p == NULL) {
                OS_REPORT("//////////////LEAF ID 2  %d\n", i_this->parentActorID);

                if (fopAcM_GetRoomNo(i_this) == 50) {
                    i_this->mTimer = 90;
                } else {
                    i_this->mTimer = 60;
                }

                i_this->mAction = 1;
            }
        }
        break;
    case 1:
        if (i_this->mTimer == 0) {
            i_this->mAction = 0;

            i_this->parentActorID =
                fopAcM_createChild(PROC_E_BI, fopAcM_GetID(i_this), (i_this->field_0x5b4 << 8) | 1,
                                   &i_this->current.pos, fopAcM_GetRoomNo(i_this),
                                   &i_this->current.angle, NULL, -1, NULL);
            i_this->mTimer = 20;
        }
        break;
    }
}

/* 8068DDD0-8068DE68 0001F0 0098+00 2/1 0/0 0/0 .text daE_BI_LEAF_Execute__FP15e_bi_leaf_class */
static int daE_BI_LEAF_Execute(e_bi_leaf_class* i_this) {
    if (i_this->mTimer != 0) {
        i_this->mTimer--;
    }

    action(i_this);

    if (i_this->field_0x5b4 == 1) {
        return 1;
    }

    mDoMtx_stack_c::transS(i_this->current.pos.x, i_this->current.pos.y, i_this->current.pos.z);
    mDoMtx_stack_c::YrotM(i_this->shape_angle.y);
    i_this->mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    return 1;
}

/* 8068DE68-8068DE70 000288 0008+00 1/0 0/0 0/0 .text daE_BI_LEAF_IsDelete__FP15e_bi_leaf_class */
static int daE_BI_LEAF_IsDelete(e_bi_leaf_class* i_this) {
    return 1;
}

/* 8068DE70-8068DEA0 000290 0030+00 1/0 0/0 0/0 .text daE_BI_LEAF_Delete__FP15e_bi_leaf_class */
static int daE_BI_LEAF_Delete(e_bi_leaf_class* i_this) {
    dComIfG_resDelete(&i_this->mPhase, "E_BI");
    return 1;
}

/* 8068DEA0-8068DF24 0002C0 0084+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    e_bi_leaf_class* a_this = static_cast<e_bi_leaf_class*>(i_this);

    if (a_this->field_0x5b4 != 1) {
        J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("E_BI", 15);
        JUT_ASSERT(modelData != 0);

        a_this->mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
        if (a_this->mpModel == NULL) {
            return 0;
        }
    }

    return 1;
}

/* 8068DF24-8068DFD8 000344 00B4+00 1/0 0/0 0/0 .text            daE_BI_LEAF_Create__FP10fopAc_ac_c
 */
static int daE_BI_LEAF_Create(fopAc_ac_c* i_this) {
    e_bi_leaf_class* a_this = static_cast<e_bi_leaf_class*>(i_this);
    fopAcM_SetupActor(a_this, e_bi_leaf_class);

    int phase_state = dComIfG_resLoad(&a_this->mPhase, "E_BI");
    if (phase_state == cPhs_COMPLEATE_e) {
        a_this->field_0x5b4 = fopAcM_GetParam(a_this) & 0xFF;
        OS_REPORT("E_BI_LEAF//////////////E_BI_LEAF SET 1 !!\n");

        if (!fopAcM_entrySolidHeap(a_this, useHeapInit, 0xA00)) {
            OS_REPORT("//////////////E_BI_LEAF SET NON !!\n");
            return cPhs_ERROR_e;
        }

        OS_REPORT("//////////////E_BI_LEAF SET 2 !!\n");

        fopAcM_SetMtx(a_this, a_this->mpModel->getBaseTRMtx());
        daE_BI_LEAF_Execute(a_this);
    }

    return phase_state;
}

/* 8068DFE8-8068E008 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_BI_LEAF_Method */
static actor_method_class l_daE_BI_LEAF_Method = {
    (process_method_func)daE_BI_LEAF_Create,  (process_method_func)daE_BI_LEAF_Delete,
    (process_method_func)daE_BI_LEAF_Execute, (process_method_func)daE_BI_LEAF_IsDelete,
    (process_method_func)daE_BI_LEAF_Draw,
};

/* 8068E008-8068E038 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_BI_LEAF */
extern actor_process_profile_definition g_profile_E_BI_LEAF = {
    fpcLy_CURRENT_e,
    9,
    fpcPi_CURRENT_e,
    PROC_E_BI_LEAF,
    &g_fpcLf_Method.mBase,
    sizeof(e_bi_leaf_class),
    0,
    0,
    &g_fopAc_Method.base,
    148,
    &l_daE_BI_LEAF_Method,
    0x40000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_0_e,
};
