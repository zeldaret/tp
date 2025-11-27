/**
 * @file d_a_obj_crvsteel.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_crvsteel.h"
#include "d/d_com_inf_game.h"
#include "dol2asm.h"

/* 80BD5BB8-80BD5BD8 000078 0020+00 1/0 0/0 0/0 .text daObjCRVSTEEL_Create__FP10fopAc_ac_c */
static int daObjCRVSTEEL_Create(fopAc_ac_c* i_this) {
    return static_cast<daObjCRVSTEEL_c*>(i_this)->create();
}

/* 80BD5BD8-80BD5BFC 000098 0024+00 1/0 0/0 0/0 .text daObjCRVSTEEL_Delete__FP15daObjCRVSTEEL_c */
static int daObjCRVSTEEL_Delete(daObjCRVSTEEL_c* i_this) {
    i_this->MoveBGDelete();
    return 1;
}

/* 80BD5BFC-80BD5C18 0000BC 001C+00 0/0 0/0 1/1 .text            OpenSet__15daObjCRVSTEEL_cFff */
void daObjCRVSTEEL_c::OpenSet(f32 param_1, f32 param_2) {
    speed.y = param_1;
    mMaxHeight = current.pos.y + param_2;
    mAction = 1;
}

/* 80BD5C18-80BD5C28 0000D8 0010+00 0/0 0/0 1/1 .text            CloseSet__15daObjCRVSTEEL_cFf */
void daObjCRVSTEEL_c::CloseSet(f32 param_1) {
    speed.y = param_1;
    mAction = 2;
}

/* 80BD5C28-80BD5CA0 0000E8 0078+00 1/1 0/0 0/0 .text            CloseExecute__15daObjCRVSTEEL_cFv
 */
void daObjCRVSTEEL_c::CloseExecute() {
    current.pos.y += speed.y;
    if (current.pos.y < mMinHeight) {
        current.pos.y = mMinHeight;
        fopAcM_effSmokeSet1(&mSmokeParticle1, &mSmokeParticle2, &current.pos, 0, 5.0f, &tevStr, 1);
        mAction = 0;
    }
}

/* 80BD5CA0-80BD5CC8 000160 0028+00 1/1 0/0 0/0 .text            OpenExecute__15daObjCRVSTEEL_cFv */
void daObjCRVSTEEL_c::OpenExecute() {
    current.pos.y += speed.y;
    if (current.pos.y > mMaxHeight) {
        current.pos.y = mMaxHeight;
    }
}

/* 80BD5CC8-80BD5D10 000188 0048+00 1/1 0/0 0/0 .text            Action__15daObjCRVSTEEL_cFv */
void daObjCRVSTEEL_c::Action() {
    switch(mAction) {
    case 0:
        break;
    case 1:
        OpenExecute();
        break;
    case 2:
        CloseExecute();
        break;
    }
}

/* 80BD5D10-80BD5D6C 0001D0 005C+00 1/1 0/0 0/0 .text            setBaseMtx__15daObjCRVSTEEL_cFv */
void daObjCRVSTEEL_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mModel->setBaseTRMtx(mDoMtx_stack_c::get());
    cMtx_copy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80BD5D6C-80BD5D98 00022C 002C+00 1/0 0/0 0/0 .text daObjCRVSTEEL_Draw__FP15daObjCRVSTEEL_c */
static int daObjCRVSTEEL_Draw(daObjCRVSTEEL_c* i_this) {
   return i_this->Draw();
}

/* 80BD5D98-80BD5DB8 000258 0020+00 2/1 0/0 0/0 .text daObjCRVSTEEL_Execute__FP15daObjCRVSTEEL_c
 */
static int daObjCRVSTEEL_Execute(daObjCRVSTEEL_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80BD626C-80BD6270 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "CrvSteel";

/* 80BD5DB8-80BD5E30 000278 0078+00 1/0 0/0 0/0 .text            CreateHeap__15daObjCRVSTEEL_cFv */
int daObjCRVSTEEL_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, "U_CrvSteelGate.bmd");
    JUT_ASSERT(86, modelData != NULL);
    mModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    return mModel != NULL ? TRUE : FALSE;
}

/* 80BD5E30-80BD6030 0002F0 0200+00 1/1 0/0 0/0 .text            create__15daObjCRVSTEEL_cFv */
int daObjCRVSTEEL_c::create() {
    fopAcM_ct(this, daObjCRVSTEEL_c);
    int rv = dComIfG_resLoad(&mPhase, l_arcName);
    if (rv == cPhs_COMPLEATE_e) {
        gravity = -9.0f;
        int dzb_id = dComIfG_getObjctResName2Index(l_arcName, "U_CrvSteelGate.dzb");
        if (dzb_id == -1) {
            // "dzb data not found!<%s>"
            OS_REPORT("dzbデータが見つかりませんでした!<%s>\n\n", l_arcName);
            JUT_ASSERT(443, dzb_id != -1);
        }
        rv = MoveBGCreate(l_arcName, dzb_id, dBgS_MoveBGProc_TypicalRotY, 0x4000, NULL);
        if (rv == cPhs_ERROR_e) {
            return rv;
        }
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1,
                            &mAcchCir, fopAcM_GetSpeed_p(this), NULL, NULL);
        fopAcM_SetMtx(this, mModel->getBaseTRMtx());
        cXyz cStack_30(current.pos.x, current.pos.y + 100.0f,
                        current.pos.z);
        if (fopAcM_gc_c::gndCheck(&cStack_30)) {
            current.pos.y = fopAcM_gc_c::getGroundY();
            mMinHeight = current.pos.y;
        }
        fopAcM_setCullSizeBox(this, -400.0f, 0.0f, -50.0f, 400.0f, 900.0f, 50.0f);
        daObjCRVSTEEL_Execute(this);
    }
    return rv;
}

/* 80BD60A0-80BD60A8 000560 0008+00 1/0 0/0 0/0 .text daObjCRVSTEEL_IsDelete__FP15daObjCRVSTEEL_c
 */
static int daObjCRVSTEEL_IsDelete(daObjCRVSTEEL_c* param_0) {
    return 1;
}

/* 80BD60A8-80BD60EC 000568 0044+00 1/0 0/0 0/0 .text            Create__15daObjCRVSTEEL_cFv */
int daObjCRVSTEEL_c::Create() {
    fopAcM_setCullSizeBox(this, -1000.0f, -500.0f, -1000.0f, 1000.0f, 500.0, 1000.0f);
    return cPhs_COMPLEATE_e;
}

/* 80BD60EC-80BD6138 0005AC 004C+00 1/0 0/0 0/0 .text Execute__15daObjCRVSTEEL_cFPPA3_A4_f */
int daObjCRVSTEEL_c::Execute(Mtx** param_1) {
    Action();
    *param_1 = &mBgMtx;
    setBaseMtx();
    return 1;
}

/* 80BD6138-80BD61BC 0005F8 0084+00 1/0 0/0 0/0 .text            Draw__15daObjCRVSTEEL_cFv */
int daObjCRVSTEEL_c::Draw() {
    g_env_light.settingTevStruct(8, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mModel);
    return 1;
}

/* 80BD61BC-80BD61F0 00067C 0034+00 1/0 0/0 0/0 .text            Delete__15daObjCRVSTEEL_cFv */
int daObjCRVSTEEL_c::Delete() {
    dComIfG_resDelete(&mPhase, l_arcName);
    return 1;
}

/* 80BD6270-80BD6290 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjCRVSTEEL_Method */
static actor_method_class l_daObjCRVSTEEL_Method = {
    (process_method_func)daObjCRVSTEEL_Create,
    (process_method_func)daObjCRVSTEEL_Delete,
    (process_method_func)daObjCRVSTEEL_Execute,
    (process_method_func)daObjCRVSTEEL_IsDelete,
    (process_method_func)daObjCRVSTEEL_Draw,
};

/* 80BD6290-80BD62C0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_CRVSTEEL */
extern actor_process_profile_definition g_profile_Obj_CRVSTEEL = {
  fpcLy_CURRENT_e,         // mLayerID
  3,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_Obj_CRVSTEEL,       // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daObjCRVSTEEL_c), // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  469,                     // mPriority
  &l_daObjCRVSTEEL_Method, // sub_method
  0x00040180,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};
