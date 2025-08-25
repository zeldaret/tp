/**
 * d_a_obj_cowdoor.cpp
 * Cow Door
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_cowdoor.h"
#include "d/d_procname.h"

/* 80BCC7F8-80BCC86C 000078 0074+00 2/2 0/0 0/0 .text            setBaseMtx__11daCowdoor_cFv */
void daCowdoor_c::setBaseMtx() {
    MTXTrans(mDoMtx_stack_c::now, current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    MTXCopy(mDoMtx_stack_c::now, field_0x5a8->mBaseTransformMtx);
    MTXCopy(mDoMtx_stack_c::now, mBgMtx);
}

/* 80BCC86C-80BCC8C4 0000EC 0058+00 1/0 0/0 0/0 .text            Create__11daCowdoor_cFv */
int daCowdoor_c::Create() {
    setBaseMtx();
    cullMtx = field_0x5a8->mBaseTransformMtx;
    fopAcM_setCullSizeBox2(this, field_0x5a8->getModelData());
    cullSizeFar = 5.0f;
    return 1;
}

/* 80BCCBDC-80BCCBE0 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static const char* l_arcName = "A_UHDoor";

/* 80BCCBE0-80BCCBE4 -00001 0004+00 1/1 0/0 0/0 .data            l_bmdName */
static const char* l_bmdName = "A_UHDoor.bmd";

/* 80BCC8C4-80BCC93C 000144 0078+00 1/0 0/0 0/0 .text            CreateHeap__11daCowdoor_cFv */
int daCowdoor_c::CreateHeap() {
    field_0x5a8 = mDoExt_J3DModel__create(
        (J3DModelData*)dComIfG_getObjectRes(l_arcName, l_bmdName), 0x80000, 0x11000084);
    return (field_0x5a8 != NULL) ? 1 : 0;
}

/* 80BCCBE4-80BCCBE8 -00001 0004+00 1/1 0/0 0/0 .data            l_dzbName */
static const char* l_dzbName = "A_UHDoor.dzb";

/* 80BCC93C-80BCCA1C 0001BC 00E0+00 1/1 0/0 0/0 .text            create__11daCowdoor_cFv */
int daCowdoor_c::create() {
    fopAcM_SetupActor(this, daCowdoor_c);
    int phase = dComIfG_resLoad(&field_0x5a0, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        phase =
            MoveBGCreate(l_arcName, dComIfG_getObjctResName2Index(l_arcName, l_dzbName),
                         dBgS_MoveBGProc_TypicalRotY, 0x4000, NULL);
        if (phase == cPhs_ERROR_e) {
            return phase;
        }
    }
    return phase;
}

/* 80BCCA1C-80BCCA48 00029C 002C+00 1/0 0/0 0/0 .text            Execute__11daCowdoor_cFPPA3_A4_f */
int daCowdoor_c::Execute(f32 (**param_0)[3][4]) {
    *param_0 = &mBgMtx;
    setBaseMtx();
    return 1;
}

/* 80BCCA48-80BCCAEC 0002C8 00A4+00 1/0 0/0 0/0 .text            Draw__11daCowdoor_cFv */
int daCowdoor_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(field_0x5a8, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(field_0x5a8);
    dComIfGd_setList();
    return 1;
}

/* 80BCCAEC-80BCCB20 00036C 0034+00 1/0 0/0 0/0 .text            Delete__11daCowdoor_cFv */
int daCowdoor_c::Delete() {
    dComIfG_resDelete(&field_0x5a0, l_arcName);
    return 1;
}

/* 80BCCB20-80BCCB4C 0003A0 002C+00 1/0 0/0 0/0 .text            daCowdoor_Draw__FP11daCowdoor_c */
static int daCowdoor_Draw(daCowdoor_c* i_this) {
    return static_cast<dBgS_MoveBgActor*>(i_this)->Draw();
}

/* 80BCCB4C-80BCCB6C 0003CC 0020+00 1/0 0/0 0/0 .text            daCowdoor_Execute__FP11daCowdoor_c
 */
static int daCowdoor_Execute(daCowdoor_c* i_this) {
    return static_cast<dBgS_MoveBgActor*>(i_this)->MoveBGExecute();
}

/* 80BCCB6C-80BCCB8C 0003EC 0020+00 1/0 0/0 0/0 .text            daCowdoor_Delete__FP11daCowdoor_c
 */
static int daCowdoor_Delete(daCowdoor_c* i_this) {
    return static_cast<dBgS_MoveBgActor*>(i_this)->MoveBGDelete();
}

/* 80BCCB8C-80BCCBAC 00040C 0020+00 1/0 0/0 0/0 .text            daCowdoor_Create__FP10fopAc_ac_c */
static int daCowdoor_Create(fopAc_ac_c* i_this) {
    return static_cast<daCowdoor_c*>(i_this)->create();
}

/* 80BCCBE8-80BCCC08 -00001 0020+00 1/0 0/0 0/0 .data            l_daCowdoor_Method */
static actor_method_class l_daCowdoor_Method = {
    (process_method_func)daCowdoor_Create,  (process_method_func)daCowdoor_Delete,
    (process_method_func)daCowdoor_Execute, (process_method_func)NULL,
    (process_method_func)daCowdoor_Draw,
};

/* 80BCCC08-80BCCC38 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Cowdoor */
extern actor_process_profile_definition g_profile_Obj_Cowdoor = {
    fpcLy_CURRENT_e,        // mLayerID
    3,                      // mListID
    fpcPi_CURRENT_e,        // mListPrio
    PROC_Obj_Cowdoor,       // mProcName
    &g_fpcLf_Method.base,  // sub_method
    sizeof(daCowdoor_c),    // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // sub_method
    447,                    // mPriority
    &l_daCowdoor_Method,    // sub_method
    0x40100,                // mStatus
    fopAc_ACTOR_e,          // mActorType
    fopAc_CULLBOX_CUSTOM_e, // cullType
};
