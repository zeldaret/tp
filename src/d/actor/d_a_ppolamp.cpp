/**
 * @file d_a_ppolamp.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_ppolamp.h"
#include "Z2AudioLib/Z2Instances.h"
#include "d/d_com_inf_game.h"

/* 80D4C938-80D4C958 000078 0020+00 1/1 0/0 0/0 .text daPPolamp_c_createHeap__FP10fopAc_ac_c */
static int daPPolamp_c_createHeap(fopAc_ac_c* i_this) {
    return ((daPPolamp_c*)i_this)->createHeap();
}

/* 80D4D2D0-80D4D2D4 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "PPolamp";

/* 80D4C958-80D4C9FC 000098 00A4+00 1/0 0/0 0/0 .text            __dt__11daPPolamp_cFv */
daPPolamp_c::~daPPolamp_c() {
    dComIfG_resDelete(this, l_arcName);
}

/* 80D4C9FC-80D4CB24 00013C 0128+00 1/1 0/0 0/0 .text            create__11daPPolamp_cFv */
int daPPolamp_c::create() {
    int rv = dComIfG_resLoad(this, l_arcName);
    if (rv == cPhs_COMPLEATE_e) {
        if (fopAcM_entrySolidHeap(this, daPPolamp_c_createHeap, 0x1010) == 0) {
            return cPhs_ERROR_e;
        }
        initParam();
        setModelMtx();
        fopAcM_SetMtx(this, mModel1->getBaseTRMtx());
        Vec local_1c;
        Vec local_28 = {0.0f, -45.0f, 0.0f};
        cMtx_multVec(mModel1->getBaseTRMtx(), &local_28, &local_1c);
        mDoMtx_stack_c::transS(local_1c.x, local_1c.y, local_1c.z);
        mDoMtx_stack_c::YrotM(shape_angle.y);
        mDoMtx_stack_c::XrotM(shape_angle.x);
        mDoMtx_stack_c::ZrotM(shape_angle.z);
        mModel2->setBaseTRMtx(mDoMtx_stack_c::get());
    }
    return rv;
}

/* 80D4CB24-80D4CB84 000264 0060+00 1/1 0/0 0/0 .text            execute__11daPPolamp_cFv */
int daPPolamp_c::execute() {
    if (mSwingTimer != 0) {
        mSwingTimer--;
    } else {
        moveSwing();
    }
    setModelMtx();
    setPclModelMtx();
    mBck.play();
    return 1;
}

/* 80D4CB84-80D4CCF0 0002C4 016C+00 1/1 0/0 0/0 .text            draw__11daPPolamp_cFv */
int daPPolamp_c::draw() {
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mModel1, &tevStr);
    mDoExt_modelUpdateDL(mModel1);
    g_env_light.setLightTevColorType_MAJI(mModel2, &tevStr);
    static J3DGXColorS10 TEV_COLOR_1 = (GXColorS10){0x48, 0x85, 0xff, 0xff};
    static J3DGXColorS10 TEV_COLOR_2 = (GXColorS10){0, 0, 0xff, 0xff};
    J3DModelData* modelData = mModel2->getModelData();
    for (u16 i = 0; i < modelData->getMaterialNum(); i++)
    {
        J3DMaterial* material = modelData->getMaterialNodePointer(i);
        if (material != NULL) {
            material->setTevColor(1, &TEV_COLOR_1);
            material->setTevColor(2, &TEV_COLOR_2);
        }
    }
    mBck.entry(modelData);
    mDoExt_modelUpdateDL(mModel2);
    return 1;
}

/* 80D4CCF0-80D4CD24 000430 0034+00 1/1 0/0 0/0 .text            Delete__11daPPolamp_cFv */
int daPPolamp_c::Delete() {
    this->~daPPolamp_c();
    return 1;
}

/* 80D4CD24-80D4CDA8 000464 0084+00 2/2 0/0 0/0 .text            setModelMtx__11daPPolamp_cFv */
void daPPolamp_c::setModelMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mDoMtx_stack_c::XrotM(shape_angle.x);
    mDoMtx_stack_c::ZrotM(shape_angle.z);
    mModel1->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80D4CDA8-80D4CE9C 0004E8 00F4+00 1/1 0/0 0/0 .text            setPclModelMtx__11daPPolamp_cFv */
void daPPolamp_c::setPclModelMtx() {
    Vec local_20;
    Vec local_2c = {0.0f, -45.0f, 0.0f};
    cMtx_multVec(mModel1->getBaseTRMtx(), &local_2c, &local_20);
    mDoMtx_stack_c::transS(local_20.x, local_20.y, local_20.z);
    camera_class* camera = dComIfGp_getCamera(0);
    if (camera != NULL) {
        cXyz cStack_38 = camera->lookat.eye - current.pos;
        mDoMtx_stack_c::YrotM(cStack_38.atan2sX_Z());
        mDoMtx_stack_c::XrotM(cStack_38.atan2sY_XZ());
    }
    mModel2->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80D4CE9C-80D4CFB0 0005DC 0114+00 1/1 0/0 0/0 .text            createHeap__11daPPolamp_cFv */
int daPPolamp_c::createHeap() {
    J3DModelData* a_model_data_p = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 8);
    JUT_ASSERT(347, a_model_data_p != 0);
    mModel1 = mDoExt_J3DModel__create(a_model_data_p, 0x80000, 0x11000084);
    if (mModel1 == NULL) {
        return 0;
    }

    a_model_data_p = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 7);
    JUT_ASSERT(360, a_model_data_p != 0);
    mModel2 = mDoExt_J3DModel__create(a_model_data_p, 0x80000, 0x11000084);
    if (mModel2 == NULL) {
        return 0;
    }

    J3DAnmTransform* a_bck_p = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, 4);
    JUT_ASSERT(372, a_bck_p != 0);
    if (mBck.init(a_bck_p, 1, 2, 1.0f, 0, -1, false) == 0) {
        return 0;
    }

    return 1;
}

/* 80D4CFB0-80D4D10C 0006F0 015C+00 1/1 0/0 0/0 .text            moveSwing__11daPPolamp_cFv */
void daPPolamp_c::moveSwing() {
    s16 sVar1 = field_0x598 * 65 - 500;
    shape_angle.z += (s16)(field_0x5a4 * (field_0x59c * sVar1));
    shape_angle.y += (s16)(field_0x59e * field_0x5a4);
    if (sVar1 > 500) {
        field_0x598 = 0;
        field_0x59c *= -1;
        field_0x59e = cM_rndFX(450.0f);
        if (cLib_chaseF(&field_0x5a4, field_0x5a8, cM_rndF(0.1f)) != 0) {
            field_0x5a8 = cM_rndF(1.1f);
            if (field_0x5a4 < 0.12f) {
                mSwingTimer = cM_rndF(80.0f);
            }
        }
    }
    field_0x598++;
}

/* 80D4D10C-80D4D140 00084C 0034+00 1/1 0/0 0/0 .text            initParam__11daPPolamp_cFv */
void daPPolamp_c::initParam() {
    field_0x598 = 0;
    field_0x59c = 1;
    field_0x59e = 0;
    mSwingTimer = 0;
    field_0x5a4 = 0.2f;
    field_0x5a8 = 1.0f;
}

/* 80D4D140-80D4D1CC 000880 008C+00 1/0 0/0 0/0 .text            daPPolamp_create__FP11daPPolamp_c
 */
static int daPPolamp_create(daPPolamp_c* i_this) {
    fopAcM_SetupActor(i_this, daPPolamp_c);
    return i_this->create();
}

/* 80D4D214-80D4D234 000954 0020+00 1/0 0/0 0/0 .text            daPPolamp_Delete__FP11daPPolamp_c
 */
static int daPPolamp_Delete(daPPolamp_c* i_this) {
    return i_this->Delete();
}

/* 80D4D234-80D4D254 000974 0020+00 1/0 0/0 0/0 .text            daPPolamp_execute__FP11daPPolamp_c
 */
static int daPPolamp_execute(daPPolamp_c* i_this) {
    return i_this->execute();
}

/* 80D4D254-80D4D274 000994 0020+00 1/0 0/0 0/0 .text            daPPolamp_draw__FP11daPPolamp_c */
static int daPPolamp_draw(daPPolamp_c* i_this) {
    return i_this->draw();
}

/* 80D4D2D4-80D4D2F4 -00001 0020+00 1/0 0/0 0/0 .data            daPPolamp_METHODS */
static actor_method_class daPPolamp_METHODS = {
    (process_method_func)daPPolamp_create,
    (process_method_func)daPPolamp_Delete,
    (process_method_func)daPPolamp_execute,
    NULL,
    (process_method_func)daPPolamp_draw,
};

/* 80D4D2F4-80D4D324 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_PPolamp */
extern actor_process_profile_definition g_profile_PPolamp = {
  fpcLy_CURRENT_e,       // mLayerID
  7,                     // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_PPolamp,          // mProcName
  &g_fpcLf_Method.base, // sub_method
  sizeof(daPPolamp_c),   // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  727,                   // mPriority
  &daPPolamp_METHODS,    // sub_method
  0x00040180,            // mStatus
  fopAc_ENV_e,           // mActorType
  fopAc_CULLBOX_12_e,    // cullType
};

AUDIO_INSTANCES;

/* 80D4D2C8-80D4D2C8 00004C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
