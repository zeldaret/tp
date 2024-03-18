/**
 * d_a_e_hb_leaf.cpp
 *
 */

#include "rel/d/a/e/d_a_e_hb_leaf/d_a_e_hb_leaf.h"
#include "d/com/d_com_inf_game.h"
#include "d/s/d_s_play.h"

/* 806DFF58-806DFFC0 000078 0068+00 1/0 0/0 0/0 .text daE_HB_LEAF_Draw__FP15e_hb_leaf_class */
static int daE_HB_LEAF_Draw(e_hb_leaf_class* i_this) {
    g_env_light.settingTevStruct(0, &i_this->current.pos, &i_this->tevStr);
    g_env_light.setLightTevColorType_MAJI(i_this->mpMorf->getModel(), &i_this->tevStr);
    i_this->mpMorf->entryDL();
    return 1;
}

/* 806DFFC0-806E00A0 0000E0 00E0+00 2/1 0/0 0/0 .text daE_HB_LEAF_Execute__FP15e_hb_leaf_class */
static int daE_HB_LEAF_Execute(e_hb_leaf_class* i_this) {
    mDoMtx_stack_c::transS(i_this->current.pos.x, i_this->current.pos.y, i_this->current.pos.z);
    mDoMtx_stack_c::YrotM(i_this->shape_angle.y);
    mDoMtx_stack_c::XrotM(i_this->shape_angle.x);
    i_this->mpMorf->getModel()->setBaseTRMtx(mDoMtx_stack_c::get());
    i_this->mpMorf->modelCalc();

    fopAc_ac_c* actor = fopAcM_SearchByID(i_this->field_0x5bc);
    if (i_this->field_0x5ba == 0) {
        if (actor != NULL) {
            i_this->field_0x5ba++;
        }
    } else if (i_this->field_0x5ba == 1 && actor == NULL) {
        i_this->field_0x5ba++;
        i_this->field_0x5b8 = TREG_S(8) + 100;
    }

    return 1;
}

/* 806E00A0-806E00A8 0001C0 0008+00 1/0 0/0 0/0 .text daE_HB_LEAF_IsDelete__FP15e_hb_leaf_class */
static int daE_HB_LEAF_IsDelete(e_hb_leaf_class* i_this) {
    return 1;
}

/* 806E00A8-806E00D8 0001C8 0030+00 1/0 0/0 0/0 .text daE_HB_LEAF_Delete__FP15e_hb_leaf_class */
static int daE_HB_LEAF_Delete(e_hb_leaf_class* i_this) {
    dComIfG_resDelete(&i_this->mPhase, "E_HB");
    return 1;
}

/* 806E00D8-806E01D8 0001F8 0100+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    e_hb_leaf_class* a_this = static_cast<e_hb_leaf_class*>(i_this);

    a_this->mpMorf = new mDoExt_McaMorf((J3DModelData*)dComIfG_getObjectRes("E_HB", 0x18), NULL,
                                        NULL, (J3DAnmTransform*)dComIfG_getObjectRes("E_HB", 0x13),
                                        2, 1.0f, 0, -1, 1, NULL, 0x80000, 0x11000084);
    if (a_this->mpMorf == NULL || a_this->mpMorf->getModel() == NULL) {
        return 0;
    }

    return 1;
}

/* 806E01D8-806E0288 0002F8 00B0+00 1/0 0/0 0/0 .text            daE_HB_LEAF_Create__FP10fopAc_ac_c
 */
static int daE_HB_LEAF_Create(fopAc_ac_c* i_this) {
    e_hb_leaf_class* a_this = static_cast<e_hb_leaf_class*>(i_this);
    fopAcM_SetupActor(a_this, e_hb_leaf_class);

    int phase_state = dComIfG_resLoad(&a_this->mPhase, "E_HB");
    if (phase_state == cPhs_COMPLEATE_e) {
        OS_REPORT("E_HB_LEAF//////////////E_HB_LEAF SET 1 !!\n");

        if (!fopAcM_entrySolidHeap(a_this, useHeapInit, 0xB00)) {
            OS_REPORT("//////////////E_HB_LEAF SET NON !!\n");
            return cPhs_ERROR_e;
        }

        OS_REPORT("//////////////E_HB_LEAF SET 2 !!\n");

        fopAcM_SetMtx(a_this, a_this->mpMorf->getModel()->getBaseTRMtx());
        daE_HB_LEAF_Execute(a_this);
    }

    return phase_state;
}

/* 806E029C-806E02BC -00001 0020+00 1/0 0/0 0/0 .data            l_daE_HB_LEAF_Method */
static actor_method_class l_daE_HB_LEAF_Method = {
    (process_method_func)daE_HB_LEAF_Create,  (process_method_func)daE_HB_LEAF_Delete,
    (process_method_func)daE_HB_LEAF_Execute, (process_method_func)daE_HB_LEAF_IsDelete,
    (process_method_func)daE_HB_LEAF_Draw,
};

/* 806E02BC-806E02EC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_HB_LEAF */
extern actor_process_profile_definition g_profile_E_HB_LEAF = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_E_HB_LEAF,
    &g_fpcLf_Method.mBase,
    sizeof(e_hb_leaf_class),
    0,
    0,
    &g_fopAc_Method.base,
    141,
    &l_daE_HB_LEAF_Method,
    0x40000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_0_e,
};
