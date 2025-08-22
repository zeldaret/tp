/**
 * d_a_obj_prop.cpp
 * Object - Propeller
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_prop.h"
#include "d/d_procname.h"

/* 80CB51D8-80CB51F8 000078 0020+00 1/1 0/0 0/0 .text daObjProp_c_createHeap__FP10fopAc_ac_c */
static bool daObjProp_c_createHeap(fopAc_ac_c* i_this) {
    return static_cast<daObjProp_c*>(i_this)->createHeap();
}

/* 80CB5628-80CB562C -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static const char* l_arcName = "L7Prop";

/* 80CB51F8-80CB5234 000098 003C+00 2/2 0/0 0/0 .text            __ct__11daObjProp_cFv */
daObjProp_c::daObjProp_c() {}

/* 80CB5234-80CB52B4 0000D4 0080+00 1/0 0/0 0/0 .text            __dt__11daObjProp_cFv */
daObjProp_c::~daObjProp_c() {
    dComIfG_resDelete(this, l_arcName);
}

static const u32 BMD_IDX[] = {3, 4};

/* 80CB52B4-80CB5334 000154 0080+00 1/1 0/0 0/0 .text            createHeap__11daObjProp_cFv */
bool daObjProp_c::createHeap() {
    u32 nameArg = getNameArg_0();
    u32 bmd = BMD_IDX[nameArg];
    mpModel = mDoExt_J3DModel__create((J3DModelData*)dComIfG_getObjectRes(l_arcName, bmd), 0x80000,
                                      0x11000084);
    return mpModel != NULL;
}

/* 80CB5334-80CB5408 0001D4 00D4+00 1/1 0/0 0/0 .text            create__11daObjProp_cFv */
int daObjProp_c::create() {
    fopAcM_SetupActor(this, daObjProp_c);

    int phase = dComIfG_resLoad(this, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, (heapCallbackFunc)daObjProp_c_createHeap, 0x1000)) {
            return cPhs_ERROR_e;

        } else {
            init();
            setModelMtx();
            cullMtx = mpModel->getBaseTRMtx();
            fopAcM_setCullSizeBox2(this, mpModel->getModelData());
        }
    }
    return phase;
}

/* 80CB5408-80CB543C 0002A8 0034+00 1/1 0/0 0/0 .text            Delete__11daObjProp_cFv */
int daObjProp_c::Delete() {
    this->~daObjProp_c();
    return 1;
}

/* 80CB543C-80CB54A0 0002DC 0064+00 1/1 0/0 0/0 .text            draw__11daObjProp_cFv */
int daObjProp_c::draw() {
    g_env_light.settingTevStruct(NULL, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    mDoExt_modelUpdate(mpModel);
    return 1;
}

static const s16 ADD_ANGLE[] = {0x1800, 0xE800};

/* 80CB54A0-80CB54E4 000340 0044+00 1/1 0/0 0/0 .text            execute__11daObjProp_cFv */
int daObjProp_c::execute() {
    shape_angle.y += ADD_ANGLE[mArg];
    setModelMtx();
    return 1;
}

/* 80CB54E4-80CB54F4 000384 0010+00 1/1 0/0 0/0 .text            init__11daObjProp_cFv */
void daObjProp_c::init() {
    mArg = getArg_0() & 1;
}

/* 80CB54F4-80CB5558 000394 0064+00 2/2 0/0 0/0 .text            setModelMtx__11daObjProp_cFv */
void daObjProp_c::setModelMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    MTXCopy(mDoMtx_stack_c::now, mpModel->mBaseTransformMtx);
}

/* 80CB5558-80CB55AC 0003F8 0054+00 1/0 0/0 0/0 .text            daObjProp_create__FP11daObjProp_c */
static int daObjProp_create(daObjProp_c* i_this) {
    fopAcM_SetupActor(i_this, daObjProp_c);
    return i_this->create();
}

/* 80CB55AC-80CB55CC 00044C 0020+00 1/0 0/0 0/0 .text            daObjProp_Delete__FP11daObjProp_c */
static int daObjProp_Delete(daObjProp_c* i_this) {
    return i_this->Delete();
}

/* 80CB55CC-80CB55EC 00046C 0020+00 1/0 0/0 0/0 .text            daObjProp_execute__FP11daObjProp_c */
static int daObjProp_execute(daObjProp_c* i_this) {
    return i_this->execute();
}

/* 80CB55EC-80CB560C 00048C 0020+00 1/0 0/0 0/0 .text            daObjProp_draw__FP11daObjProp_c */
static int daObjProp_draw(daObjProp_c* i_this) {
    return i_this->draw();
}

/* 80CB562C-80CB564C -00001 0020+00 1/0 0/0 0/0 .data            daObjProp_METHODS */
static actor_method_class daObjProp_METHODS = {
    (process_method_func)daObjProp_create,  (process_method_func)daObjProp_Delete,
    (process_method_func)daObjProp_execute, (process_method_func)NULL,
    (process_method_func)daObjProp_draw,
};

/* 80CB564C-80CB567C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Prop */
extern actor_process_profile_definition g_profile_Obj_Prop = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_Obj_Prop,
    &g_fpcLf_Method.base,
    sizeof(daObjProp_c),
    0,
    0,
    &g_fopAc_Method.base,
    737,
    &daObjProp_METHODS,
    0x40000,
    fopAc_ENV_e,
    fopAc_CULLBOX_CUSTOM_e,
};
