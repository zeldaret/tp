/**
 * d_a_obj_toaru_maki.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_toaru_maki.h"
#include "d/d_bg_w.h"

/* 80D13078-80D13098 000078 0020+00 1/1 0/0 0/0 .text daObjToaruMaki_c_createHeap__FP10fopAc_ac_c
 */
static int daObjToaruMaki_c_createHeap(fopAc_ac_c* i_this) {
    return static_cast<daObjToaruMaki_c*>(i_this)->createHeap();
}

/* 80D13624-80D1362C -00001 0008+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName[2] = {"T_Maki1", "T_Maki2"};

/* 80D13098-80D130E0 000098 0048+00 2/2 0/0 0/0 .text            __ct__16daObjToaruMaki_cFv */
daObjToaruMaki_c::daObjToaruMaki_c() {
    mpBgW = NULL;
    mpModel = NULL;
}

/* 80D130E0-80D1316C 0000E0 008C+00 1/0 0/0 0/0 .text            __dt__16daObjToaruMaki_cFv */
daObjToaruMaki_c::~daObjToaruMaki_c() {
    dComIfG_resDelete(this, l_arcName[getNameArg_0()]);
}

/* 80D13604-80D1360C 000000 0008+00 1/1 0/0 0/0 .rodata          l_bmdIdx */
static const u32 l_bmdIdx[2] = {4, 3};

/* 80D1316C-80D132B4 00016C 0148+00 1/1 0/0 0/0 .text            createHeap__16daObjToaruMaki_cFv */
int daObjToaruMaki_c::createHeap() {
    u32 nameArg = getNameArg_0();
    J3DModelData* a_model_data_p =
        (J3DModelData*)dComIfG_getObjectRes(l_arcName[nameArg], l_bmdIdx[nameArg]);
    JUT_ASSERT(101, a_model_data_p != 0);
    mpModel = mDoExt_J3DModel__create(a_model_data_p, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }
    if (nameArg == 0) {
        mpBgW = new dBgW();
        if (mpBgW == NULL) {
            return 0;
        }
        mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
        mDoMtx_stack_c::YrotM(shape_angle.y);
        MTXCopy(mDoMtx_stack_c::get(), mMtx);
        cBgD_t* cBgD = (cBgD_t*)dComIfG_getObjectRes(l_arcName[nameArg], 7);
        if (mpBgW->Set(cBgD, 1, &mMtx) == 1) {
            return 0;
        }
    }
    return 1;
}

/* 80D1360C-80D13614 000008 0008+00 1/1 0/0 0/0 .rodata          l_heapSize */
static const u32 l_heapSize[2] = {
    0x2000,
    0x0EB0,
};

/* 80D132B4-80D133C0 0002B4 010C+00 1/1 0/0 0/0 .text            create__16daObjToaruMaki_cFv */
int daObjToaruMaki_c::create() {
    fopAcM_SetupActor(this, daObjToaruMaki_c);
    u32 nameArg = getNameArg_0();
    int rv = dComIfG_resLoad(this, l_arcName[nameArg]);
    if (rv == cPhs_COMPLEATE_e) {
        if (fopAcM_entrySolidHeap(this, daObjToaruMaki_c_createHeap, l_heapSize[nameArg]) == 0) {
            return cPhs_ERROR_e;
        }
        mDoExt_setupStageTexture(mpModel->getModelData());
        if (nameArg == 0) {
            if (dComIfG_Bgsp().Regist(mpBgW, this) != 0) {
                return cPhs_ERROR_e;
            }
        }
        setModelMtx();
        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    }
    return rv;
}

/* 80D133C0-80D1343C 0003C0 007C+00 1/1 0/0 0/0 .text            Delete__16daObjToaruMaki_cFv */
int daObjToaruMaki_c::Delete() {
    if (getNameArg_0() == 0 && mpBgW != NULL && mpBgW->ChkUsed()) {
        dComIfG_Bgsp().Release(mpBgW);
    }
    this->~daObjToaruMaki_c();
    return 1;
}

/* 80D1343C-80D134A0 00043C 0064+00 2/2 0/0 0/0 .text            setModelMtx__16daObjToaruMaki_cFv
 */
void daObjToaruMaki_c::setModelMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80D134A0-80D13524 0004A0 0084+00 1/1 0/0 0/0 .text            draw__16daObjToaruMaki_cFv */
int daObjToaruMaki_c::draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    dComIfGd_setList();
    mDoExt_modelUpdateDL(mpModel);
    return 1;
}

/* 80D13524-80D13548 000524 0024+00 1/1 0/0 0/0 .text            execute__16daObjToaruMaki_cFv */
int daObjToaruMaki_c::execute() {
    setModelMtx();
    return 1;
}

/* 80D13548-80D1359C 000548 0054+00 1/0 0/0 0/0 .text daObjToaruMaki_create__FP16daObjToaruMaki_c
 */
static int daObjToaruMaki_create(daObjToaruMaki_c* i_this) {
    // !@bug this setup is called twice. No adverse effects though.
    fopAcM_SetupActor(i_this, daObjToaruMaki_c);
    return i_this->create();
}

/* 80D1359C-80D135BC 00059C 0020+00 1/0 0/0 0/0 .text daObjToaruMaki_Delete__FP16daObjToaruMaki_c
 */
static int daObjToaruMaki_Delete(daObjToaruMaki_c* i_this) {
    return i_this->Delete();
}

/* 80D135BC-80D135DC 0005BC 0020+00 1/0 0/0 0/0 .text daObjToaruMaki_execute__FP16daObjToaruMaki_c
 */
static int daObjToaruMaki_execute(daObjToaruMaki_c* i_this) {
    return i_this->execute();;
}

/* 80D135DC-80D135FC 0005DC 0020+00 1/0 0/0 0/0 .text daObjToaruMaki_draw__FP16daObjToaruMaki_c */
static int daObjToaruMaki_draw(daObjToaruMaki_c* i_this) {
    return i_this->draw();
}

/* 80D1362C-80D1364C -00001 0020+00 1/0 0/0 0/0 .data            daObjToaruMaki_METHODS */
static actor_method_class daObjToaruMaki_METHODS = {
    (process_method_func)daObjToaruMaki_create,
    (process_method_func)daObjToaruMaki_Delete,
    (process_method_func)daObjToaruMaki_execute,
    NULL,
    (process_method_func)daObjToaruMaki_draw,
};

/* 80D1364C-80D1367C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_ToaruMaki */
extern actor_process_profile_definition g_profile_Obj_ToaruMaki = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_Obj_ToaruMaki,      // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daObjToaruMaki_c),// mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  749,                     // mPriority
  &daObjToaruMaki_METHODS, // sub_method
  0x00040000,              // mStatus
  fopAc_ENV_e,             // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};
