/**
 * d_a_obj_crystal.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_crystal.h"
#include "d/d_com_inf_game.h"
#include "d/d_procname.h"

/* 80BD6398-80BD63B8 000078 0020+00 1/1 0/0 0/0 .text            CheckCreateHeap__FP10fopAc_ac_c */
static int CheckCreateHeap(fopAc_ac_c* i_this) {
    return static_cast<daObjCrystal_c*>(i_this)->CreateHeap();
}

/* 80BD63B8-80BD6410 000098 0058+00 1/1 0/0 0/0 .text            initBaseMtx__14daObjCrystal_cFv */
void daObjCrystal_c::initBaseMtx() {
    mpModel[0]->setBaseScale(scale);
    mpModel[1]->setBaseScale(scale);
    setBaseMtx();
}

/* 80BD6410-80BD6470 0000F0 0060+00 2/2 0/0 0/0 .text            setBaseMtx__14daObjCrystal_cFv */
void daObjCrystal_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);

    mpModel[0]->setBaseTRMtx(mDoMtx_stack_c::get());
    mpModel[1]->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80BD68F0-80BD68F4 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "H_Suisho";

/* 80BD6470-80BD65B0 000150 0140+00 1/1 0/0 0/0 .text            Create__14daObjCrystal_cFv */
int daObjCrystal_c::Create() {
    initBaseMtx();
    fopAcM_SetMtx(this, mpModel[0]->getBaseTRMtx());

    mpEmitter = dComIfGp_particle_set(0x8BED, &current.pos, &home.angle, &scale, 255, NULL, -1,
                                      NULL, NULL, NULL);
    mJointID = 0xFFFF;

    JUTNameTab* joint_name = mpModel[0]->getModelData()->getJointTree().getJointName();
    for (u16 i = 0; i < mpModel[0]->getModelData()->getJointNum(); i++) {
        if (strcmp(joint_name->getName(i), "polySurface1") == 0) {
            mJointID = i;
        }
    }

    mpModel[0]->calc();

    if (mpEmitter != NULL) {
        mpEmitter->setGlobalRTMatrix(mpModel[0]->getAnmMtx(mJointID));
    }

    return 1;
}

/* 80BD65B0-80BD6664 000290 00B4+00 1/1 0/0 0/0 .text            CreateHeap__14daObjCrystal_cFv */
int daObjCrystal_c::CreateHeap() {
    static int const l_bmd[] = {4, 7};
    static u32 const l_diff_flag[] = {0, 0x80000};
    static u32 const l_flag[] = {0x19000084, 0x11000084};

    for (int i = 0; i < 2; i++) {
        J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, l_bmd[i]);

        mpModel[i] = mDoExt_J3DModel__create(modelData, l_diff_flag[i], l_flag[i]);
        if (mpModel[i] == NULL) {
            return 0;
        }
    }

    return 1;
}

/* 80BD6664-80BD6718 000344 00B4+00 1/1 0/0 0/0 .text            create__14daObjCrystal_cFv */
int daObjCrystal_c::create() {
    fopAcM_SetupActor(this, daObjCrystal_c);

    int phase = dComIfG_resLoad(&mPhase, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, CheckCreateHeap, 0x4000)) {
            return cPhs_ERROR_e;
        }

        if (!Create()) {
            return cPhs_ERROR_e;
        }
    }

    return phase;
}

/* 80BD6718-80BD673C 0003F8 0024+00 1/1 0/0 0/0 .text            execute__14daObjCrystal_cFv */
int daObjCrystal_c::execute() {
    setBaseMtx();
    return 1;
}

/* 80BD673C-80BD67C8 00041C 008C+00 1/1 0/0 0/0 .text            draw__14daObjCrystal_cFv */
int daObjCrystal_c::draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);

    for (int i = 0; i < 2; i++) {
        g_env_light.setLightTevColorType_MAJI(mpModel[i], &tevStr);
        mDoExt_modelUpdateDL(mpModel[i]);
    }

    return 1;
}

/* 80BD67C8-80BD6834 0004A8 006C+00 1/1 0/0 0/0 .text            _delete__14daObjCrystal_cFv */
int daObjCrystal_c::_delete() {
    if (mpEmitter != NULL) {
        mpEmitter->becomeInvalidEmitter();
        mpEmitter->quitImmortalEmitter();
        mpEmitter = NULL;
    }

    dComIfG_resDelete(&mPhase, l_arcName);
    return 1;
}

/* 80BD6834-80BD6854 000514 0020+00 1/0 0/0 0/0 .text daObjCrystal_Draw__FP14daObjCrystal_c */
static int daObjCrystal_Draw(daObjCrystal_c* i_this) {
    return i_this->draw();
}

/* 80BD6854-80BD6874 000534 0020+00 1/0 0/0 0/0 .text daObjCrystal_Execute__FP14daObjCrystal_c */
static int daObjCrystal_Execute(daObjCrystal_c* i_this) {
    return i_this->execute();
}

/* 80BD6874-80BD6894 000554 0020+00 1/0 0/0 0/0 .text daObjCrystal_Delete__FP14daObjCrystal_c */
static int daObjCrystal_Delete(daObjCrystal_c* i_this) {
    return i_this->_delete();
}

/* 80BD6894-80BD68B4 000574 0020+00 1/0 0/0 0/0 .text daObjCrystal_Create__FP14daObjCrystal_c */
static int daObjCrystal_Create(daObjCrystal_c* i_this) {
    return i_this->create();
}

/* ############################################################################################## */
/* 80BD68F4-80BD6914 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjCrystal_Method */
static actor_method_class l_daObjCrystal_Method = {
    (process_method_func)daObjCrystal_Create,  (process_method_func)daObjCrystal_Delete,
    (process_method_func)daObjCrystal_Execute, (process_method_func)NULL,
    (process_method_func)daObjCrystal_Draw,
};

/* 80BD6914-80BD6944 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Crystal */
extern actor_process_profile_definition g_profile_Obj_Crystal = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_Obj_Crystal,
    &g_fpcLf_Method.base,
    sizeof(daObjCrystal_c),
    0,
    0,
    &g_fopAc_Method.base,
    579,
    &l_daObjCrystal_Method,
    0x40000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
