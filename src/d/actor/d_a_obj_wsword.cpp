/**
 * d_a_obj_wsword.cpp
 * Object - Wooden Sword
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_wsword.h"
#include "d/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"

/* 80D3BF2C-80D3BF30 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "Obj_brksw";

/* 80D3BF30-80D3BF74 000004 0044+00 1/1 0/0 0/0 .data            l_cyl_src */
static dCcD_SrcCyl l_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x0, 0x0}, 0x19}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x6},          // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4},          // mGObjTg
        {0x0},                                       // mGObjCo
    },                                               // mObjInf
    {
        {0.0f, 0.0f, 0.0f},  // mCenter
        50.0f,               // mRadius
        150.0f               // mHeight
    }                        // mCyl
};

/* 80D3B978-80D3B998 000078 0020+00 1/1 0/0 0/0 .text            CheckCreateHeap__FP10fopAc_ac_c */
static int CheckCreateHeap(fopAc_ac_c* i_this) {
    return static_cast<daObjWSword_c*>(i_this)->CreateHeap();
}

/* 80D3B998-80D3B9D4 000098 003C+00 1/1 0/0 0/0 .text            initBaseMtx__13daObjWSword_cFv */
void daObjWSword_c::initBaseMtx() {
    mpModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80D3B9D4-80D3BA40 0000D4 006C+00 2/2 0/0 0/0 .text            setBaseMtx__13daObjWSword_cFv */
void daObjWSword_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80D3BA40-80D3BAB8 000140 0078+00 1/1 0/0 0/0 .text            Create__13daObjWSword_cFv */
int daObjWSword_c::Create() {
    initBaseMtx();
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    mStts.Init(0xff, 0xff, this);
    mCyl.Set(l_cyl_src);
    mCyl.SetStts(&mStts);
    fopAcM_setCullSizeBox2(this, mpModel->getModelData());
    return 1;
}

/* 80D3BAB8-80D3BB28 0001B8 0070+00 1/1 0/0 0/0 .text            CreateHeap__13daObjWSword_cFv */
int daObjWSword_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 3);
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    return mpModel != NULL ? 1 : 0;
}

/* 80D3BB28-80D3BCA0 000228 0178+00 1/1 0/0 0/0 .text            create__13daObjWSword_cFv */
int daObjWSword_c::create() {
    fopAcM_SetupActor(this, daObjWSword_c);
    int phase = dComIfG_resLoad(&mPhaseReq, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, (heapCallbackFunc)CheckCreateHeap, 0x840)) {
            return cPhs_ERROR_e;
        } else if (!Create()) {
            return cPhs_ERROR_e;
        }
    }
    return phase;
}

/* 80D3BDA0-80D3BDF0 0004A0 0050+00 1/1 0/0 0/0 .text            execute__13daObjWSword_cFv */
int daObjWSword_c::execute() {
    setBaseMtx();
    mCyl.SetC(current.pos);
    dComIfG_Ccsp()->Set(&mCyl);
    return 1;
}

/* 80D3BDF0-80D3BE54 0004F0 0064+00 1/1 0/0 0/0 .text            draw__13daObjWSword_cFv */
int daObjWSword_c::draw() {
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    mDoExt_modelUpdateDL(mpModel);
    return 1;
}

/* 80D3BE54-80D3BE88 000554 0034+00 1/1 0/0 0/0 .text            _delete__13daObjWSword_cFv */
int daObjWSword_c::_delete() {
    dComIfG_resDelete(&mPhaseReq, l_arcName);
    return 1;
}

/* 80D3BE88-80D3BEA8 000588 0020+00 1/0 0/0 0/0 .text            daObjWSword_Draw__FP13daObjWSword_c
 */
static int daObjWSword_Draw(daObjWSword_c* i_this) {
    return i_this->draw();
}

/* 80D3BEA8-80D3BEC8 0005A8 0020+00 1/0 0/0 0/0 .text daObjWSword_Execute__FP13daObjWSword_c */
static int daObjWSword_Execute(daObjWSword_c* i_this) {
    return i_this->execute();
}

/* 80D3BEC8-80D3BEE8 0005C8 0020+00 1/0 0/0 0/0 .text daObjWSword_Delete__FP13daObjWSword_c */
static int daObjWSword_Delete(daObjWSword_c* i_this) {
    return i_this->_delete();
}

/* 80D3BEE8-80D3BF08 0005E8 0020+00 1/0 0/0 0/0 .text            daObjWSword_Create__FP10fopAc_ac_c
 */
static int daObjWSword_Create(fopAc_ac_c* i_this) {
    return static_cast<daObjWSword_c*>(i_this)->create();
}

/* 80D3BF74-80D3BF94 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjWSword_Method */
static actor_method_class l_daObjWSword_Method = {
    (process_method_func)daObjWSword_Create,
    (process_method_func)daObjWSword_Delete,
    (process_method_func)daObjWSword_Execute,
    (process_method_func)NULL,
    (process_method_func)daObjWSword_Draw,
};

/* 80D3BF94-80D3BFC4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_WoodenSword */
extern actor_process_profile_definition g_profile_Obj_WoodenSword = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_Obj_WoodenSword,
    &g_fpcLf_Method.base,
    sizeof(daObjWSword_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x20F,
    &l_daObjWSword_Method,
    0x40100,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
