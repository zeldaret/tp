/**
 * d_a_obj_rcircle.cpp
 * Object - River Circle
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_rcircle.h"
#include "d/d_procname.h"

/* 80CB8658-80CB8678 000078 0020+00 1/1 0/0 0/0 .text daObjRCircle_c_createHeap__FP10fopAc_ac_c */
static int daObjRCircle_c_createHeap(fopAc_ac_c* i_this) {
    return static_cast<daObjRCircle_c*>(i_this)->createHeap();
}

/* 80CB8D10-80CB8D14 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "RCircle";

/* 80CB8678-80CB8704 000098 008C+00 2/2 0/0 0/0 .text            __ct__14daObjRCircle_cFv */
daObjRCircle_c::daObjRCircle_c() {}

/* 80CB874C-80CB8814 00016C 00C8+00 1/0 0/0 0/0 .text            __dt__14daObjRCircle_cFv */
daObjRCircle_c::~daObjRCircle_c() {
    dComIfG_resDelete(this, l_arcName);
}

/* 80CB8814-80CB8928 000234 0114+00 1/1 0/0 0/0 .text            createHeap__14daObjRCircle_cFv */
int daObjRCircle_c::createHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 5);
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000284);

    if (!mpModel) {
        return 0;
    } else {
        J3DAnmTextureSRTKey* srtKey = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, 11);
        mBtk.init(modelData, srtKey, 1, 2, 1.0f, 0, -1);

        J3DAnmTevRegKey* regKey = (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_arcName, 8);
        mBrk.init(modelData, regKey, 1, 0, 0.0f, 0, -1);
    }
    return 1;
}

/* 80CB8928-80CB8A28 000348 0100+00 1/1 0/0 0/0 .text            create__14daObjRCircle_cFv */
int daObjRCircle_c::create() {
    fopAcM_SetupActor(this, daObjRCircle_c);
    if (fopAcM_isSwitch(this, getSwBit())) {
        return cPhs_ERROR_e;
    }
    
    int phase = dComIfG_resLoad(this, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, (heapCallbackFunc)daObjRCircle_c_createHeap, 0x1000)) {
            return cPhs_ERROR_e;

        } else {
            init();
            setModelMtx();
            fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
            fopAcM_setCullSizeBox2(this, mpModel->getModelData());
        }
    }
    return phase;
}

/* 80CB8A28-80CB8A5C 000448 0034+00 1/1 0/0 0/0 .text            Delete__14daObjRCircle_cFv */
int daObjRCircle_c::Delete() {
    this->~daObjRCircle_c();
    return 1;
}

/* 80CB8A5C-80CB8B28 00047C 00CC+00 1/1 0/0 0/0 .text            draw__14daObjRCircle_cFv */
int daObjRCircle_c::draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    J3DModelData* modelData = mpModel->getModelData();
    mBtk.entry(modelData);
    mBrk.entry(modelData);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80CB8B28-80CB8BE4 000548 00BC+00 1/1 0/0 0/0 .text            execute__14daObjRCircle_cFv */
int daObjRCircle_c::execute() {
    if (mSwitch) {
        if (mBrk.isStop()) {
            fopAcM_delete(this);
        }
    } else {
        if (fopAcM_isSwitch(this, getSwBit())) {
            mSwitch = 1;
            mBrk.setPlaySpeed(1.0f);
        }
    }
    mBtk.play();
    mBrk.play();
    return 1;
}

/* 80CB8BE4-80CB8BF0 000604 000C+00 1/1 0/0 0/0 .text            init__14daObjRCircle_cFv */
void daObjRCircle_c::init() {
    mSwitch = 0;
}

/* 80CB8BF0-80CB8C44 000610 0054+00 1/1 0/0 0/0 .text            setModelMtx__14daObjRCircle_cFv */
void daObjRCircle_c::setModelMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    MTXCopy(mDoMtx_stack_c::now, mpModel->mBaseTransformMtx);
}

/* 80CB8C44-80CB8C98 000664 0054+00 1/0 0/0 0/0 .text daObjRCircle_create__FP14daObjRCircle_c */
static int daObjRCircle_create(daObjRCircle_c* i_this) {
    fopAcM_SetupActor(i_this, daObjRCircle_c);
    return i_this->create();
}

/* 80CB8C98-80CB8CB8 0006B8 0020+00 1/0 0/0 0/0 .text daObjRCircle_Delete__FP14daObjRCircle_c */
static int daObjRCircle_Delete(daObjRCircle_c* i_this) {
    return i_this->Delete();
}

/* 80CB8CB8-80CB8CD8 0006D8 0020+00 1/0 0/0 0/0 .text daObjRCircle_execute__FP14daObjRCircle_c */
static int daObjRCircle_execute(daObjRCircle_c* i_this) {
    return i_this->execute();
}

/* 80CB8CD8-80CB8CF8 0006F8 0020+00 1/0 0/0 0/0 .text daObjRCircle_draw__FP14daObjRCircle_c */
static int daObjRCircle_draw(daObjRCircle_c* i_this) {
    return i_this->draw();
}

/* 80CB8D14-80CB8D34 -00001 0020+00 1/0 0/0 0/0 .data            daObjRCircle_METHODS */
static actor_method_class daObjRCircle_METHODS = {
    (process_method_func)daObjRCircle_create,  (process_method_func)daObjRCircle_Delete,
    (process_method_func)daObjRCircle_execute, (process_method_func)NULL,
    (process_method_func)daObjRCircle_draw,
};

/* 80CB8D34-80CB8D64 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_RCircle */
extern actor_process_profile_definition g_profile_Obj_RCircle = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_Obj_RCircle,
    &g_fpcLf_Method.base,
    sizeof(daObjRCircle_c),
    0,
    0,
    &g_fopAc_Method.base,
    740,
    &daObjRCircle_METHODS,
    0x44180,
    fopAc_ENV_e,
    fopAc_CULLBOX_CUSTOM_e,
};
