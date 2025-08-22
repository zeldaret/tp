/**
* @file d_a_obj_burnbox.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_burnbox.h"
#include "d/d_com_inf_game.h"

//
// Declarations:
//

/* 8046E698-8046E6D4 000078 003C+00 1/1 0/0 0/0 .text            initBaseMtx__14daObjBurnBox_cFv */
void daObjBurnBox_c::initBaseMtx() {
    mpBoxModel->setBaseScale(scale);
    setBaseMtx();
}

/* 8046E6D4-8046E738 0000B4 0064+00 2/2 0/0 0/0 .text            setBaseMtx__14daObjBurnBox_cFv */
void daObjBurnBox_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mpBoxModel->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

/* ############################################################################################## */
/* 8046EE48-8046EE54 000000 000C+00 2/2 0/0 0/0 .rodata          l_bmd */
const u32 l_bmd[3] = {
    0x04,
    0x04,
    0x03,
};

/* 8046EE54-8046EE60 00000C 000C+00 1/1 0/0 0/0 .rodata          l_heap_size */
const u32 l_heap_size[3] = {
    0x0820,
    0x0C00,
    0x0820,
};

/* 8046EE60-8046EEA4 000018 0044+00 0/1 0/0 0/0 .rodata          l_cyl_src */
const dCcD_SrcCyl l_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x1e}, {0x0, 0x1e}, 0x79}}, // mObj
        {dCcD_SE_NONE, 0x1, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x6}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        40.0f, // mRadius
        100.0f // mHeight
    } // mCyl
};

/* 8046E738-8046E8BC 000118 0184+00 1/0 0/0 0/0 .text            Create__14daObjBurnBox_cFv */
int daObjBurnBox_c::Create() {
    static const u16 particle_id[5] = {
        0x8526, 0x8527, 0x8528, 0x8529, 0x8746,
    };

    initBaseMtx();
    fopAcM_SetMtx(this, mpBoxModel->getBaseTRMtx());
    mStts.Init(0xff, 0xff, this);
    mCyl.Set(l_cyl_src);
    mCyl.SetStts(&mStts);
    fopAcM_setCullSizeBox2(this, mpBoxModel->getModelData());
    cXyz particlePos = current.pos;
    cXyz particleScale = scale;
    int type = getType();

    switch (type) {
    case 0:
    case 2:
        particlePos.y += 37.5f;
        particleScale.setall(0.5f);
        break;
    case 1:
        particlePos.y += 75.0f;
        break;
    }

    for (int index = 0; index < 5; index++) {
        mpEmitters[index] = dComIfGp_particle_set(particle_id[index], &particlePos, NULL, &particleScale, 0xff,
            NULL, -1, NULL, NULL, NULL);
    }
    return 1;
}

/* ############################################################################################## */
/* 8046EED4-8046EEE0 -00001 000C+00 3/3 0/0 0/0 .data            l_arcName */
const char* l_arcName[3] = {
    "Kkiba_00", // crate
    "Kkiba_00",
    "J_taru00", // barrel
};

/* 8046E8BC-8046E93C 00029C 0080+00 1/0 0/0 0/0 .text            CreateHeap__14daObjBurnBox_cFv */
int daObjBurnBox_c::CreateHeap() {
    u8 type = getType();
    J3DModelData* modelData = (J3DModelData*) dComIfG_getObjectRes(l_arcName[type], l_bmd[type]);
    JUT_ASSERT(0x106, modelData != 0);

    mpBoxModel = mDoExt_J3DModel__create(modelData, J3DMdlFlag_Unk80000, 0x11000084);
    if (mpBoxModel == NULL) {
        return 0;
    }
    return 1;
}

/* 8046E93C-8046E9EC 00031C 00B0+00 1/1 0/0 0/0 .text            create1st__14daObjBurnBox_cFv */
cPhs__Step daObjBurnBox_c::create1st() {
    cPhs__Step phaseStep = (cPhs__Step) dComIfG_resLoad(&mPhaseReq, l_arcName[getType()]);
    if (phaseStep == cPhs_COMPLEATE_e) {
        int dzb_id = -1;
        u8 type = getType();

        switch (type) {
        case 1:
            dzb_id = 7;
        }

        phaseStep = (cPhs__Step) MoveBGCreate(l_arcName[type], dzb_id, dBgS_MoveBGProc_TypicalRotY,
                                             l_heap_size[type], NULL);
        if (phaseStep == cPhs_ERROR_e) {
            return phaseStep;
        }
    }
    return phaseStep;
}

/* 8046E9EC-8046EABC 0003CC 00D0+00 1/0 0/0 0/0 .text            Execute__14daObjBurnBox_cFPPA3_A4_f
 */
int daObjBurnBox_c::Execute(Mtx** mtx) {
    field_0x724++;
    if (field_0x724 % 3 == 0) {
        field_0x728--;
        if (field_0x728 == -20) {
            fopAcM_delete(this);
        }
    }

    *mtx = &mBgMtx;
    setBaseMtx();

    switch (getType()) {
    case 0:
    case 2:
        mCyl.SetC(current.pos);
        dComIfG_Ccsp()->Set(&mCyl);
    }

    return 1;
}

/* 8046EABC-8046EC10 00049C 0154+00 1/0 0/0 0/0 .text            Draw__14daObjBurnBox_cFv */
int daObjBurnBox_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpBoxModel, &tevStr);
    dComIfGd_setListBG();

    J3DModelData* boxModelData = mpBoxModel->getModelData();
    for (u16 index = 0; index < boxModelData->getMaterialNum(); index++) {
        J3DGXColorS10* tevColor = boxModelData->getMaterialNodePointer(index)->getTevColor(0);
        tevColor->r = field_0x728;
        tevColor->g = field_0x728;
        tevColor->b = field_0x728;
    }
    mDoExt_modelUpdateDL(mpBoxModel);
    for (u16 index = 0; index < boxModelData->getMaterialNum(); index++) {
        J3DGXColorS10* tevColor = boxModelData->getMaterialNodePointer(index)->getTevColor(0);
        tevColor->r = 0;
        tevColor->g = 0;
        tevColor->b = 0;
    }
    dComIfGd_setList();
    return 1;
}

/* 8046EC10-8046EC50 0005F0 0040+00 1/0 0/0 0/0 .text            Delete__14daObjBurnBox_cFv */
int daObjBurnBox_c::Delete() {
    dComIfG_resDelete(&mPhaseReq, l_arcName[getType()]);
    return 1;
}

/* 8046EC50-8046ED44 000630 00F4+00 1/0 0/0 0/0 .text daObjBurnBox_create1st__FP14daObjBurnBox_c
 */
int daObjBurnBox_create1st(daObjBurnBox_c* i_this) {
    fopAcM_SetupActor(i_this, daObjBurnBox_c);
    return i_this->create1st();
}

/* 8046EDD4-8046EDF4 0007B4 0020+00 1/0 0/0 0/0 .text
 * daObjBurnBox_MoveBGDelete__FP14daObjBurnBox_c                */
int daObjBurnBox_MoveBGDelete(daObjBurnBox_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 8046EDF4-8046EE14 0007D4 0020+00 1/0 0/0 0/0 .text
 * daObjBurnBox_MoveBGExecute__FP14daObjBurnBox_c               */
int daObjBurnBox_MoveBGExecute(daObjBurnBox_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 8046EE14-8046EE40 0007F4 002C+00 1/0 0/0 0/0 .text daObjBurnBox_MoveBGDraw__FP14daObjBurnBox_c
 */
int daObjBurnBox_MoveBGDraw(daObjBurnBox_c* i_this) {
    return i_this->MoveBGDraw();
}

/* ############################################################################################## */
/* 8046EEE0-8046EF00 -00001 0020+00 1/0 0/0 0/0 .data            daObjBurnBox_METHODS */
actor_method_class daObjBurnBox_METHODS = {
    (process_method_func) daObjBurnBox_create1st,     (process_method_func)daObjBurnBox_MoveBGDelete,
    (process_method_func) daObjBurnBox_MoveBGExecute, NULL,
    (process_method_func) daObjBurnBox_MoveBGDraw,
};

/* 8046EF00-8046EF30 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_BurnBox */
extern actor_process_profile_definition g_profile_Obj_BurnBox = {
    fpcLy_CURRENT_e,         // mLayerID
    3,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_BurnBox,        // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daObjBurnBox_c),  // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    532,                     // mPriority
    &daObjBurnBox_METHODS,   // sub_method
    0x00040100,              // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
