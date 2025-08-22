/**
 * d_a_obj_mirror_6pole.cpp
 * Mirror Chamber Sage Poles
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_mirror_6pole.h"
#include "d/d_procname.h"

/* 80C95E18-80C95E2C 000078 0014+00 1/0 0/0 0/0 .text            initWait__18daObjMirror6Pole_cFv */
void daObjMirror6Pole_c::initWait() {
    mpBck->setPlaySpeed(0.0f);
}

/* 80C9654C-80C96550 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "MR-6Pole";

/* 80C96580-80C965B0 000054 0030+00 3/4 0/0 0/0 .data            ActionTable__18daObjMirror6Pole_c
 */
actionFunc daObjMirror6Pole_c::ActionTable[][2] = {
    {&daObjMirror6Pole_c::initWait, &daObjMirror6Pole_c::executeWait},
    {&daObjMirror6Pole_c::initDemo, &daObjMirror6Pole_c::executeDemo},
};

/* 80C95E2C-80C95E88 00008C 005C+00 1/0 0/0 0/0 .text            executeWait__18daObjMirror6Pole_cFv
 */
void daObjMirror6Pole_c::executeWait() {
    if (dComIfGp_event_runCheck()) {
        setAction(MODE_DEMO_e);
    }
}

/* 80C95E88-80C95E8C 0000E8 0004+00 1/0 0/0 0/0 .text            initDemo__18daObjMirror6Pole_cFv */
void daObjMirror6Pole_c::initDemo() {}

/* 80C95E8C-80C95EFC 0000EC 0070+00 1/0 0/0 0/0 .text            executeDemo__18daObjMirror6Pole_cFv
 */
void daObjMirror6Pole_c::executeDemo() {
    if (!dComIfGp_event_runCheck()) {
        setAction(MODE_WAIT_e);
    }

    setBaseMtx();
}

/* 80C95EFC-80C95F50 00015C 0054+00 1/1 0/0 0/0 .text            setBaseMtx__18daObjMirror6Pole_cFv
 */
void daObjMirror6Pole_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);

    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

void daObjMirror6Pole_c::initBaseMtx() {
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    setBaseMtx();
}

void daObjMirror6Pole_c::create_init() {
    initBaseMtx();
    attention_info.flags = 0;
    setAction(MODE_WAIT_e);
}

/* 80C95F50-80C95F70 0001B0 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__18daObjMirror6Pole_cFP10fopAc_ac_c       */
int daObjMirror6Pole_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daObjMirror6Pole_c*>(i_this)->CreateHeap();
}

/* 80C95F70-80C961D8 0001D0 0268+00 1/1 0/0 0/0 .text            CreateHeap__18daObjMirror6Pole_cFv
 */
int daObjMirror6Pole_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 7);
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    J3DAnmTransform* bck = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, 4);
    mpBck = new mDoExt_bckAnm();

    f32 speed;
    if (isSwitch()) {
        speed = 1.0f;
    } else {
        speed = 0.0f;
    }

    if (mpBck == NULL || !mpBck->init(bck, FALSE, J3DFrameCtrl::EMode_NONE, speed, 0, -1, false)) {
        return 0;
    }

    if (isSwitch()) {
        mpBck->setFrame(bck->getFrameMax());
    }

    return 1;
}

int daObjMirror6Pole_c::create() {
    fopAcM_SetupActor(this, daObjMirror6Pole_c);

    int phase = dComIfG_resLoad(&mPhase, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x1C00)) {
            return cPhs_ERROR_e;
        }

        create_init();
    }

    return phase;
}

/* 80C96220-80C96328 000480 0108+00 1/0 0/0 0/0 .text daObjMirror6Pole_Create__FP10fopAc_ac_c */
static int daObjMirror6Pole_Create(fopAc_ac_c* i_this) {
    return static_cast<daObjMirror6Pole_c*>(i_this)->create();
}

daObjMirror6Pole_c::~daObjMirror6Pole_c() {
    dComIfG_resDelete(&mPhase, l_arcName);
}

/* 80C96328-80C96378 000588 0050+00 1/0 0/0 0/0 .text
 * daObjMirror6Pole_Delete__FP18daObjMirror6Pole_c              */
static int daObjMirror6Pole_Delete(daObjMirror6Pole_c* i_this) {
    i_this->~daObjMirror6Pole_c();
    return 1;
}

int daObjMirror6Pole_c::execute() {
    callExecute();
    mpBck->play();
    return 1;
}

/* 80C96378-80C963BC 0005D8 0044+00 1/0 0/0 0/0 .text
 * daObjMirror6Pole_Execute__FP18daObjMirror6Pole_c             */
static int daObjMirror6Pole_Execute(daObjMirror6Pole_c* i_this) {
    return i_this->execute();
}

int daObjMirror6Pole_c::draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    mpBck->entry(mpModel->getModelData());

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();

    mpBck->remove(mpModel->getModelData());
    return 1;
}

/* 80C963BC-80C9648C 00061C 00D0+00 1/0 0/0 0/0 .text
 * daObjMirror6Pole_Draw__FP18daObjMirror6Pole_c                */
static int daObjMirror6Pole_Draw(daObjMirror6Pole_c* i_this) {
    return i_this->draw();
}

/* 80C9648C-80C96494 0006EC 0008+00 1/0 0/0 0/0 .text
 * daObjMirror6Pole_IsDelete__FP18daObjMirror6Pole_c            */
static int daObjMirror6Pole_IsDelete(daObjMirror6Pole_c* i_this) {
    return 1;
}

/* 80C965B0-80C965D0 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjMirror6Pole_Method */
static actor_method_class l_daObjMirror6Pole_Method = {
    (process_method_func)daObjMirror6Pole_Create,  (process_method_func)daObjMirror6Pole_Delete,
    (process_method_func)daObjMirror6Pole_Execute, (process_method_func)daObjMirror6Pole_IsDelete,
    (process_method_func)daObjMirror6Pole_Draw,
};

/* 80C965D0-80C96600 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Mirror6Pole */
extern actor_process_profile_definition g_profile_Obj_Mirror6Pole = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_Obj_Mirror6Pole,
    &g_fpcLf_Method.base,
    sizeof(daObjMirror6Pole_c),
    0,
    0,
    &g_fopAc_Method.base,
    682,
    &l_daObjMirror6Pole_Method,
    0x40000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
