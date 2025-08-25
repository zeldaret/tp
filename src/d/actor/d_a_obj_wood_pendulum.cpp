/**
 * d_a_obj_wood_pendulum.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_wood_pendulum.h"

/* 80D393F8-80D39418 000078 0020+00 1/1 0/0 0/0 .text            CheckCreateHeap__FP10fopAc_ac_c */
static int CheckCreateHeap(fopAc_ac_c* i_this) {
    return static_cast<daObjWPndlm_c*>(i_this)->CreateHeap();
}

/* 80D39418-80D39454 000098 003C+00 1/1 0/0 0/0 .text            initBaseMtx__13daObjWPndlm_cFv */
void daObjWPndlm_c::initBaseMtx() {
    mpModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80D39454-80D394CC 0000D4 0078+00 2/2 0/0 0/0 .text            setBaseMtx__13daObjWPndlm_cFv */
void daObjWPndlm_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z + field_0x958);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80D39C88-80D39CC8 000000 0040+00 2/2 0/0 0/0 .rodata          l_sph_src */
const static dCcD_SrcSph l_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x0, 0xd}, {0x0, 0x10}, 0x0}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x1, 0x0, 0x8},                            // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2},                            // mGObjTg
        {0x0},                                                         // mGObjCo
    },                                                                 // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 150.0f}  // mSph
    }  // mSphAttr
};

/* 80D39CC8-80D39D08 000040 0040+00 0/1 0/0 0/0 .rodata          l_sph_src2 */
const static dCcD_SrcSph l_sph_src2 = {
    {
        {0x0, {{0x0, 0x0, 0xc}, {0xd8fafdff, 0x11}, 0x0}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x1, 0x0, 0x8},                 // mGObjAt
        {dCcD_SE_NONE, 0x2, 0x0, 0x0, 0x3},                 // mGObjTg
        {0x0},                                              // mGObjCo
    },                                                      // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 120.0f}  // mSph
    }  // mSphAttr
};

/* 80D394CC-80D395C8 00014C 00FC+00 1/1 0/0 0/0 .text            Create__13daObjWPndlm_cFv */
int daObjWPndlm_c::Create() {
    initBaseMtx();
    cullMtx = mpModel->getBaseTRMtx();

    mStts.Init(0xff, 0xff, this);
    mSph.Set(l_sph_src);
    mSph.SetStts(&mStts);
    for (int i = 0; i < 2; i++) {
        field_0x6e8[i].Set(l_sph_src2);
        field_0x6e8[i].SetStts(&mStts);
    }

    fopAcM_setCullSizeBox2(this, mpModel->getModelData());

    u8 arg0 = getArg0();
    if (arg0 == 0 || arg0 == 255) {
        arg0 = 0;
    }
    field_0x958 = arg0 * 182.04445f;

    return 1;
}

/* 80D39D44-80D39D48 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "A_Turuki";

/* 80D395C8-80D39638 000248 0070+00 1/1 0/0 0/0 .text            CreateHeap__13daObjWPndlm_cFv */
int daObjWPndlm_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 3);
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }
    return 1;
}

/* 80D39638-80D39798 0002B8 0160+00 1/1 0/0 0/0 .text            create__13daObjWPndlm_cFv */
int daObjWPndlm_c::create() {
    int phase;

    fopAcM_SetupActor(this, daObjWPndlm_c);

    phase = dComIfG_resLoad(&mPhaseReq, l_arcName);

    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, CheckCreateHeap, 0x1be0)) {
            return cPhs_ERROR_e;
        } else if (!Create()) {
            return cPhs_ERROR_e;
        }
    }

    return phase;
}

/* 80D39978-80D39B68 0005F8 01F0+00 1/1 0/0 0/0 .text            execute__13daObjWPndlm_cFv */
int daObjWPndlm_c::execute() {
    u8 arg1 = getArg1();
    if (arg1 == 0 || arg1 == 255) {
        arg1 = 10;
    }
    if (field_0x958 > 0) {
        field_0x95c = -arg1;
    } else if (field_0x958 < 0) {
        field_0x95c = arg1;
    } else {
        field_0x95c = 0;
    }
    field_0x95a += field_0x95c;
    field_0x958 += field_0x95a;
    setBaseMtx();

    cXyz local_48(0, -1200, 0);
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z + field_0x958);
    mDoMtx_stack_c::multVec(&local_48, &local_48);
    mSph.SetC(local_48);
    dComIfG_Ccsp()->Set(&mSph);

    Vec lit_3826[2] = {{-60.0f, -1120.0f, 100.0f}, {80.0f, -1230.0f, -50.0f}};
    for (int i = 0; i < 2; i++) {
        local_48 = lit_3826[i];
        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z + field_0x958);
        mDoMtx_stack_c::multVec(&local_48, &local_48);
        field_0x6e8[i].SetC(local_48);
        dComIfG_Ccsp()->Set(&field_0x6e8[i]);
    }

    return 1;
}

/* 80D39B68-80D39BCC 0007E8 0064+00 1/1 0/0 0/0 .text            draw__13daObjWPndlm_cFv */
int daObjWPndlm_c::draw() {
    g_env_light.settingTevStruct(0, &this->current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    mDoExt_modelUpdateDL(mpModel);
    return 1;
}

/* 80D39BCC-80D39C00 00084C 0034+00 1/1 0/0 0/0 .text            _delete__13daObjWPndlm_cFv */
int daObjWPndlm_c::_delete() {
    dComIfG_resDelete(&mPhaseReq, l_arcName);
    return 1;
}

/* 80D39C00-80D39C20 000880 0020+00 1/0 0/0 0/0 .text            daObjWPndlm_Draw__FP13daObjWPndlm_c
 */
static int daObjWPndlm_Draw(daObjWPndlm_c* i_this) {
    return static_cast<daObjWPndlm_c*>(i_this)->draw();
}

/* 80D39C20-80D39C40 0008A0 0020+00 1/0 0/0 0/0 .text daObjWPndlm_Execute__FP13daObjWPndlm_c */
static int daObjWPndlm_Execute(daObjWPndlm_c* i_this) {
    return static_cast<daObjWPndlm_c*>(i_this)->execute();
}

/* 80D39C40-80D39C60 0008C0 0020+00 1/0 0/0 0/0 .text daObjWPndlm_Delete__FP13daObjWPndlm_c */
static int daObjWPndlm_Delete(daObjWPndlm_c* i_this) {
    return static_cast<daObjWPndlm_c*>(i_this)->_delete();
}

/* 80D39C60-80D39C80 0008E0 0020+00 1/0 0/0 0/0 .text            daObjWPndlm_Create__FP10fopAc_ac_c
 */
static int daObjWPndlm_Create(fopAc_ac_c* i_this) {
    return static_cast<daObjWPndlm_c*>(i_this)->create();
}

/* 80D39D48-80D39D68 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjWPndlm_Method */
static actor_method_class l_daObjWPndlm_Method = {
    (process_method_func)daObjWPndlm_Create,  (process_method_func)daObjWPndlm_Delete,
    (process_method_func)daObjWPndlm_Execute, 0,
    (process_method_func)daObjWPndlm_Draw,
};

/* 80D39D68-80D39D98 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_WoodPendulum */
extern actor_process_profile_definition g_profile_Obj_WoodPendulum = {
    fpcLy_CURRENT_e,         // mLayerID
    7,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_WoodPendulum,   // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daObjWPndlm_c),   // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    253,                     // mPriority
    &l_daObjWPndlm_Method,   // sub_method
    0x00040100,              // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
