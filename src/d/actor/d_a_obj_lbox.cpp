/**
 * d_a_obj_lbox.cpp
 * Object - Unused Block (HIO Label is "Block for boss battle")
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lbox.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"
#include "m_Do/m_Do_hostIO.h"

/* 80C54008-80C54048 000000 0040+00 1/1 0/0 0/0 .data            cc_sph_src$3950 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x0}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},                // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2},                // mGObjTg
        {0x0},                                             // mGObjCo
    },                                                     // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f}  // mSph
    }                                // mSphAttr
};

/* 80C540E8-80C540EC 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_80C540E8;

/* 80C540F8-80C54108 000018 0010+00 3/3 0/0 0/0 .bss             l_HIO */
static daObj_Lbox_HIO_c l_HIO;

/* 80C5356C-80C5359C 0000EC 0030+00 1/1 0/0 0/0 .text            __ct__16daObj_Lbox_HIO_cFv */
daObj_Lbox_HIO_c::daObj_Lbox_HIO_c() {
    field_0x4 = -1;
    mSize = 2.0f;
    mHeight = 0.0f;
}

/* 80C5359C-80C53600 00011C 0064+00 1/0 0/0 0/0 .text            daObj_Lbox_Draw__FP14obj_lbox_class
 */
static int daObj_Lbox_Draw(obj_lbox_class* i_this) {
    g_env_light.settingTevStruct(16, &i_this->current.pos, &i_this->tevStr);
    g_env_light.setLightTevColorType_MAJI(i_this->mpModel, &i_this->tevStr);
    mDoExt_modelUpdateDL(i_this->mpModel);
    return 1;
}

/* 80C53600-80C5396C 000180 036C+00 1/1 0/0 0/0 .text            action__FP14obj_lbox_class */
static void action(obj_lbox_class* i_this) {
    switch (i_this->field_0x57a) {
    case 2:
        break;
    case 0:
        i_this->current.pos.x = 0.0f;
        i_this->current.pos.y = 4500.0f;
        i_this->current.pos.z = -3450.0f;
        if (i_this->mSph.ChkTgHit()) {
            i_this->field_0x57a = 1;
            i_this->field_0x57c = 0;
            fopAcM_seStart(i_this, JA_SE_CM_MAGBALL_BOUND, 0);
            i_this->field_0x57e[0] = 20;
        }
        break;
    case 1:
        if (i_this->field_0x57e[0] == 0) {
            i_this->speed.y -= 5.0f;
            i_this->shape_angle.z = 0.0f;
        } else if (i_this->field_0x57e[0] < 0xf) {
            i_this->shape_angle.z = cM_ssin(i_this->field_0x578 * 13000) * 200.0f;
            i_this->speed.y -= 0.1f;
        }
        i_this->current.pos.y += i_this->speed.y;
        if (i_this->mObjAcch.m_flags & 0x20) {
            dComIfGp_getVibration().StartShock(5, 15, cXyz(0.0f, 1.0f, 0.0f));
            fopAcM_seStart(i_this, Z2SE_EN_FM_FOOTNOTE, 0);
            i_this->field_0x57a = 2;
            i_this->field_0x57c = 0;
            fopAcM_effSmokeSet1(&i_this->field_0xa84, &i_this->field_0xa88, &i_this->current.pos,
                                &i_this->shape_angle, 3.5f, &i_this->tevStr, 1);
        }
        break;
    }

    fopAcM_OffStatus(i_this, 0);
    i_this->attention_info.flags = 0;
    i_this->mObjAcch.CrrPos(dComIfG_Bgsp());
    mDoMtx_stack_c::transS(i_this->current.pos.x, i_this->current.pos.y, i_this->current.pos.z);
    mDoMtx_stack_c::YrotM(i_this->shape_angle.y);
    mDoMtx_stack_c::ZrotM(i_this->shape_angle.z);
    mDoMtx_stack_c::scaleM(l_HIO.mSize, l_HIO.mSize, l_HIO.mSize);
    i_this->mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), i_this->mMtx);
    i_this->mpBgW->Move();
    cXyz cStack_48(i_this->current.pos);
    cStack_48.y += 50.0f * l_HIO.mSize;
    if (i_this->field_0x57a != 0) {
        cStack_48.y += 20000.0f;
    }
    i_this->mSph.SetC(cStack_48);
    i_this->mSph.SetR(150.0f * l_HIO.mSize);
    dComIfG_Ccsp()->Set(&i_this->mSph);
    i_this->eyePos = i_this->current.pos;
    i_this->attention_info.position = i_this->eyePos;
}

/* 80C5396C-80C539C8 0004EC 005C+00 2/1 0/0 0/0 .text daObj_Lbox_Execute__FP14obj_lbox_class */
static int daObj_Lbox_Execute(obj_lbox_class* i_this) {
    i_this->field_0x578++;
    for (int i = 0; i < 2; i++) {
        if (i_this->field_0x57e[i] != 0) {
            i_this->field_0x57e[i]--;
        }
    }
    action(i_this);
    return 1;
}

/* 80C539C8-80C539D0 000548 0008+00 1/0 0/0 0/0 .text daObj_Lbox_IsDelete__FP14obj_lbox_class */
static int daObj_Lbox_IsDelete(obj_lbox_class* i_this) {
    return 1;
}

/* 80C539D0-80C53A38 000550 0068+00 1/0 0/0 0/0 .text daObj_Lbox_Delete__FP14obj_lbox_class */
static int daObj_Lbox_Delete(obj_lbox_class* i_this) {
    fopAcM_GetID(i_this);
    dComIfG_resDelete(&i_this->mPhaseReq, "Obj_lbox");
    if (i_this->field_0xa8c != 0) {
        data_80C540E8 = 0;
    }
    dComIfG_Bgsp().Release(i_this->mpBgW);
    return 1;
}

/* 80C53A38-80C53B3C 0005B8 0104+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    obj_lbox_class* a_this = static_cast<obj_lbox_class*>(i_this);

    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("Obj_lbox", 4);
    JUT_ASSERT(478, modelData != 0);
    a_this->mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (a_this->mpModel == NULL) {
        return 0;
    }

    a_this->mpBgW = new dBgW();
    if (a_this->mpBgW == NULL) {
        return 0;
    }

    cBgD_t* dzb = (cBgD_t*)dComIfG_getObjectRes("Obj_lbox", 7);
    if (a_this->mpBgW->Set(dzb, 1, &a_this->mMtx) == true) {
        return 0;
    }

    a_this->mpBgW->SetCrrFunc(dBgS_MoveBGProc_Typical);
    return 1;
}

/* 80C53B3C-80C53E14 0006BC 02D8+00 1/0 0/0 0/0 .text            daObj_Lbox_Create__FP10fopAc_ac_c
 */
static cPhs__Step daObj_Lbox_Create(fopAc_ac_c* i_this) {
    obj_lbox_class* a_this = static_cast<obj_lbox_class*>(i_this);
    fopAcM_SetupActor(a_this, obj_lbox_class);
    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&a_this->mPhaseReq, "Obj_lbox");

    if (step == cPhs_COMPLEATE_e) {
        a_this->mParam = fopAcM_GetParam(i_this);
        if (a_this->mParam == 0xFF) {
            a_this->mParam = 0;
        }

        if (!fopAcM_entrySolidHeap(a_this, useHeapInit, 0x4b000)) {
            return cPhs_ERROR_e;
        }

        if (dComIfG_Bgsp().Regist(a_this->mpBgW, a_this)) {
            return cPhs_ERROR_e;
        }

        if (data_80C540E8 == 0) {
            a_this->field_0xa8c = 1;
            data_80C540E8 = 1;
            l_HIO.field_0x4 = -1;
        }

        fopAcM_SetMtx(a_this, a_this->mpModel->getBaseTRMtx());
        fopAcM_SetMin(a_this, -200.0f, -3000.0f, -200.0f);
        fopAcM_SetMax(a_this, 200.0f, 3000.0f, 200.0f);

        a_this->mStts.Init(0xff, 0, a_this);
        a_this->mSph.Set(cc_sph_src);
        a_this->mSph.SetStts(&a_this->mStts);
        a_this->mObjAcch.Set(fopAcM_GetPosition_p(a_this), fopAcM_GetOldPosition_p(a_this), a_this, 1,
                            &a_this->mAcchCir, fopAcM_GetSpeed_p(a_this), NULL, NULL);
        a_this->mAcchCir.SetWall(50.0f, 50.0f);

        a_this->attention_info.distances[fopAc_attn_BATTLE_e] = 0x16;

        daObj_Lbox_Execute(a_this);
    }

    return step;
}

/* 80C54048-80C54068 -00001 0020+00 1/0 0/0 0/0 .data            l_daObj_Lbox_Method */
static actor_method_class l_daObj_Lbox_Method = {
    (process_method_func)daObj_Lbox_Create, (process_method_func)daObj_Lbox_Delete,
    (process_method_func)daObj_Lbox_Execute, (process_method_func)daObj_Lbox_IsDelete,
    (process_method_func)daObj_Lbox_Draw};

/* 80C54068-80C54098 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_LBOX */
extern actor_process_profile_definition g_profile_OBJ_LBOX = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_OBJ_LBOX,
    &g_fpcLf_Method.base,
    sizeof(obj_lbox_class),
    0,
    0,
    &g_fopAc_Method.base,
    0x29,
    &l_daObj_Lbox_Method,
    0x40100,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};

/* 80C53E14-80C53E5C 000994 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */

/* 80C53E5C-80C53EA4 0009DC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */

/* 80C53EA4-80C53F14 000A24 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */

/* 80C53F14-80C53F5C 000A94 0048+00 2/1 0/0 0/0 .text            __dt__16daObj_Lbox_HIO_cFv */

/* 80C53F5C-80C53F98 000ADC 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_lbox_cpp */

/* 80C53F98-80C53FA0 000B18 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */

/* 80C53FA0-80C53FA8 000B20 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */

/* 80C53FFC-80C53FFC 000040 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
