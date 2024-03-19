/**
 * d_a_obj_myogan.cpp
 * Dangoro Arena Lava
 */

#include "rel/d/a/obj/d_a_obj_myogan/d_a_obj_myogan.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "SSystem/SComponent/c_math.h"
#include "d/bg/d_bg_w.h"
#include "d/com/d_com_inf_game.h"
#include "d/bg/d_bg_s_movebg_actor.h"
#include "d/d_procname.h"

/* 80C9EBAC-80C9EBDC 0000EC 0030+00 1/1 0/0 0/0 .text            __ct__18daObj_Myogan_HIO_cFv */
daObj_Myogan_HIO_c::daObj_Myogan_HIO_c() {
    field_0x4 = -1;
    mSize = 1.0f;
    mNormalHeight = 0.0f;
}

/* 80C9EBDC-80C9EC70 00011C 0094+00 1/0 0/0 0/0 .text daObj_Myogan_Draw__FP16obj_myogan_class */
static int daObj_Myogan_Draw(obj_myogan_class* i_this) {
    g_env_light.settingTevStruct(0x10, &i_this->current.pos, &i_this->tevStr);
    g_env_light.setLightTevColorType_MAJI(i_this->mpModel, &i_this->tevStr);

    i_this->mpBrk->entry(i_this->mpModel->getModelData());
    i_this->mpBtk->entry(i_this->mpModel->getModelData());

    mDoExt_modelUpdateDL(i_this->mpModel);
    return 1;
}

/* 80C9F318-80C9F31C 000008 0004+00 2/2 0/0 0/0 .bss             None */
static bool initialized;

/* 80C9F328-80C9F338 000018 0010+00 3/3 0/0 0/0 .bss             l_HIO */
static daObj_Myogan_HIO_c l_HIO;

/* 80C9EC70-80C9ED5C 0001B0 00EC+00 1/1 0/0 0/0 .text            action__FP16obj_myogan_class */
static void action(obj_myogan_class* i_this) {
    switch (i_this->mAction) {
    case 0:
        cLib_addCalc2(&i_this->current.pos.y, i_this->home.pos.y + l_HIO.mNormalHeight, 0.05f,
                      10.0f);
        break;
    case 1:
        break;
    }

    mDoMtx_stack_c::transS(i_this->current.pos.x, i_this->current.pos.y, i_this->current.pos.z);
    mDoMtx_stack_c::YrotM(i_this->shape_angle.y);
    mDoMtx_stack_c::scaleM(l_HIO.mSize, l_HIO.mSize, l_HIO.mSize);

    i_this->mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), i_this->mBgMtx);

    i_this->mpBgW->Move();
    i_this->mpBrk->play();
    i_this->mpBtk->play();
}

/* 80C9ED5C-80C9EDB8 00029C 005C+00 2/1 0/0 0/0 .text daObj_Myogan_Execute__FP16obj_myogan_class
 */
static int daObj_Myogan_Execute(obj_myogan_class* i_this) {
    i_this->field_0x57c++;

    for (int i = 0; i < 2; i++) {
        if (i_this->field_0x582[i] != 0) {
            i_this->field_0x582[i]--;
        }
    }

    action(i_this);
    return 1;
}

/* 80C9EDB8-80C9EDC0 0002F8 0008+00 1/0 0/0 0/0 .text daObj_Myogan_IsDelete__FP16obj_myogan_class
 */
static int daObj_Myogan_IsDelete(obj_myogan_class* i_this) {
    return 1;
}

/* 80C9EDC0-80C9EE28 000300 0068+00 1/0 0/0 0/0 .text daObj_Myogan_Delete__FP16obj_myogan_class */
static int daObj_Myogan_Delete(obj_myogan_class* i_this) {
    dComIfG_resDelete(&i_this->mPhase, "S_YOGAN");
    if (i_this->mInitialized) {
        initialized = false;
    }

    dComIfG_Bgsp().Release(i_this->mpBgW);
    return 1;
}

/* 80C9EE28-80C9F064 000368 023C+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    obj_myogan_class* a_this = (obj_myogan_class*)i_this;

    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("S_YOGAN", 6);
    a_this->mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000284);
    if (a_this->mpModel == NULL) {
        return 0;
    }

    a_this->mpBrk = new mDoExt_brkAnm();
    if (a_this->mpBrk == NULL) {
        return 0;
    }

    J3DAnmTevRegKey* brk = (J3DAnmTevRegKey*)dComIfG_getObjectRes("S_YOGAN", 9);
    if (!a_this->mpBrk->init(a_this->mpModel->getModelData(), brk, TRUE,
                             J3DFrameCtrl::LOOP_REPEAT_e, 1.0f, 0, -1))
    {
        return 0;
    }

    a_this->mpBtk = new mDoExt_btkAnm();
    if (a_this->mpBtk == NULL) {
        return 0;
    }

    J3DAnmTextureSRTKey* btk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("S_YOGAN", 12);
    if (!a_this->mpBtk->init(a_this->mpModel->getModelData(), btk, TRUE,
                             J3DFrameCtrl::LOOP_REPEAT_e, 1.0f, 0, -1))
    {
        return 0;
    }

    a_this->mpBgW = new dBgW();
    if (a_this->mpBgW == NULL) {
        return 0;
    }

    cBgD_t* dzb = (cBgD_t*)dComIfG_getObjectRes("S_YOGAN", 15);
    if (a_this->mpBgW->Set(dzb, dBgW::MOVE_BG_e, &a_this->mBgMtx) == 1) {
        return 0;
    }

    a_this->mpBgW->SetCrrFunc(dBgS_MoveBGProc_Typical);
    return 1;
}

/* 80C9F0AC-80C9F1F0 0005EC 0144+00 1/0 0/0 0/0 .text            daObj_Myogan_Create__FP10fopAc_ac_c
 */
static int daObj_Myogan_Create(fopAc_ac_c* i_this) {
    fopAcM_SetupActor(i_this, obj_myogan_class);
    obj_myogan_class* a_this = (obj_myogan_class*)i_this;

    int phase = dComIfG_resLoad(&a_this->mPhase, "S_YOGAN");
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(a_this, useHeapInit, 0x4B000)) {
            return cPhs_ERROR_e;
        }

        if (dComIfG_Bgsp().Regist(a_this->mpBgW, a_this)) {
            return cPhs_ERROR_e;
        }

        if (!initialized) {
            a_this->mInitialized = 1;
            initialized = true;
            l_HIO.field_0x4 = -1;
        }

        a_this->field_0x57c = cM_rndF(65536.0f);

        if (dComIfGs_isStageMiddleBoss()) {
            a_this->mAction = 1;
            a_this->current.pos.y = 1150.0f;
        }

        daObj_Myogan_Execute(a_this);
    }

    return phase;
}

/* 80C9F2A8-80C9F2C8 -00001 0020+00 1/0 0/0 0/0 .data            l_daObj_Myogan_Method */
static actor_method_class l_daObj_Myogan_Method = {
    (process_method_func)daObj_Myogan_Create,  (process_method_func)daObj_Myogan_Delete,
    (process_method_func)daObj_Myogan_Execute, (process_method_func)daObj_Myogan_IsDelete,
    (process_method_func)daObj_Myogan_Draw,
};

/* 80C9F2C8-80C9F2F8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_MYOGAN */
extern actor_process_profile_definition g_profile_OBJ_MYOGAN = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_OBJ_MYOGAN,
    &g_fpcLf_Method.mBase,
    sizeof(obj_myogan_class),
    0,
    0,
    &g_fopAc_Method.base,
    52,
    &l_daObj_Myogan_Method,
    0x44000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
