/**
 * @file d_a_obj_szbridge.cpp
 *
 */

#include "d/dolzel_rel.h"  // IWYU pragma: keep

#include "d/actor/d_a_obj_szbridge.h"

/* 80D04338-80D04360 000078 0028+00 1/1 0/0 0/0 .text
 * rideCallback__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c              */
static void rideCallback(dBgW* param_0, fopAc_ac_c* param_1, fopAc_ac_c* param_2) {
    static_cast<daObjSZbridge_c*>(param_1)->rideActor(param_2);
}

/* 80D04C38-80D04C50 000000 0018+00 3/3 0/0 0/0 .rodata          l_cull_box */
static const Vec l_cull_box[2] = {
    {-310.0f, -30.0f, -760.0f},
    {310.0f, 360.0f, 760.0f},
};

/* 80D04360-80D04424 0000A0 00C4+00 1/1 0/0 0/0 .text rideActor__15daObjSZbridge_cFP10fopAc_ac_c
 */
void daObjSZbridge_c::rideActor(fopAc_ac_c* i_actor) {
    cXyz pos = i_actor->current.pos;
    pos.y = mWaterY;
    if ((!cM3d_IsZero(i_actor->speed.getSquareMag()) && cM_rndF(1.0f) < 0.3f) || field_0x620 == 0) {
        fopAcM_effHamonSet(&field_0x618[0], &pos, 7.0f, 0.04f);
        speed.y -= 0.25f;
    }
    field_0x620 = 10;
}

/* 80D04C8C-80D04C90 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static const char* l_arcName = "S_Zbridge";

/* 80D04424-80D044B8 000164 0094+00 1/1 0/0 0/0 .text            create1st__15daObjSZbridge_cFv */
int daObjSZbridge_c::create1st() {
    int rv = dComIfG_resLoad(this, l_arcName);
    if (rv == cPhs_COMPLEATE_e) {
        setMtx();
        rv = MoveBGCreate(l_arcName, 7, dBgS_MoveBGProc_Typical, 0x11190, &mBgMtx);
        if (rv == cPhs_ERROR_e) {
            return rv;
        }
    }
    return rv;
}

/* 80D044B8-80D04528 0001F8 0070+00 2/2 0/0 0/0 .text            setMtx__15daObjSZbridge_cFv */
void daObjSZbridge_c::setMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(current.angle.y);
    MTXCopy(mDoMtx_stack_c::get(), field_0x5d8);
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80D04528-80D04598 000268 0070+00 1/0 0/0 0/0 .text            CreateHeap__15daObjSZbridge_cFv */
int daObjSZbridge_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 4);
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    return mpModel != NULL ? 1 : 0;
}

/* 80D04598-80D047D4 0002D8 023C+00 2/2 0/0 0/0 .text            chkBg__15daObjSZbridge_cFv */
void daObjSZbridge_c::chkBg() {
    cXyz chk_pos;

    dBgS_ObjGndChk(gnd_chk);

    chk_pos = current.pos;
    chk_pos.y += 700.0f;

    gnd_chk.SetPos(&chk_pos);
    gnd_chk.SetActorPid(base.base.id);
    mGroundY = dComIfG_Bgsp().GroundCross(&gnd_chk);
    chk_pos.y = mGroundY;

    f32 posY = current.pos.y + 700.0f;
    dBgS_WtrChk(wtr_chk);
    wtr_chk.Set(chk_pos, posY);

    if (dComIfG_Bgsp().WaterChk(&wtr_chk)) {
        mWaterY = wtr_chk.GetHeight();
    } else {
        mWaterY = -G_CM3D_F_INF;
    }

    if (mWaterY > mGroundY) {
        speed.y -= 0.05f * (current.pos.y - (mWaterY - 70.0f));
        speed.y *= 0.985f;
        current.pos.y += speed.y;

        if (current.pos.y > 5.0f + (mWaterY - 70.0f)) {
            current.pos.y = 5.0f + (mWaterY - 70.0f);
        }

        if (current.pos.y < (mWaterY - 70.0f) - 5.0f) {
            current.pos.y = (mWaterY - 70.0f) - 5.0f;
        }

        speed.y = current.pos.y - old.pos.y;
        field_0x614 = 1;
    } else {
        current.pos.y = mGroundY;
        field_0x614 = 0;
    }
}

/* 80D048C4-80D04974 000604 00B0+00 1/0 0/0 0/0 .text            Create__15daObjSZbridge_cFv */
int daObjSZbridge_c::Create() {
    mpBgW->SetRideCallback(rideCallback);
    chkBg();
    speed.y = 0;

    mpModel->setBaseTRMtx(field_0x5d8);
    fopAcM_SetMtx(this, field_0x5d8);
    fopAcM_setCullSizeBox(this, l_cull_box[0].x, l_cull_box[0].y, l_cull_box[0].z, l_cull_box[1].x,
                          l_cull_box[1].y, l_cull_box[1].z);

    for (int i = 0; i < 2; i++) {
        field_0x618[i] = -1;
    }

    field_0x620 = 0;

    return 1;
}

/* 80D04974-80D049E4 0006B4 0070+00 1/0 0/0 0/0 .text Execute__15daObjSZbridge_cFPPA3_A4_f */
int daObjSZbridge_c::Execute(Mtx** param_0) {
    chkBg();

    if (field_0x620 != 0) {
        field_0x620--;
    }

    setMtx();
    mpModel->setBaseTRMtx(field_0x5d8);

    *param_0 = &mBgMtx;

    return 1;
}

/* 80D049E4-80D04A88 000724 00A4+00 1/0 0/0 0/0 .text            Draw__15daObjSZbridge_cFv */
int daObjSZbridge_c::Draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();

    return 1;
}

/* 80D04A88-80D04AC4 0007C8 003C+00 1/0 0/0 0/0 .text            Delete__15daObjSZbridge_cFv */
int daObjSZbridge_c::Delete() {
    dComIfG_resDelete(this, l_arcName);
    return 1;
}

/* 80D04AC4-80D04B24 000804 0060+00 1/0 0/0 0/0 .text daObjSZbridge_create1st__FP15daObjSZbridge_c
 */
static int daObjSZbridge_create1st(daObjSZbridge_c* i_this) {
    fopAcM_ct(i_this, daObjSZbridge_c);
    return i_this->create1st();
}

/* 80D04B24-80D04B44 000864 0020+00 1/0 0/0 0/0 .text
 * daObjSZbridge_MoveBGDelete__FP15daObjSZbridge_c              */
static int daObjSZbridge_MoveBGDelete(daObjSZbridge_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80D04B44-80D04B64 000884 0020+00 1/0 0/0 0/0 .text
 * daObjSZbridge_MoveBGExecute__FP15daObjSZbridge_c             */
static int daObjSZbridge_MoveBGExecute(daObjSZbridge_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80D04B64-80D04B90 0008A4 002C+00 1/0 0/0 0/0 .text
 * daObjSZbridge_MoveBGDraw__FP15daObjSZbridge_c                */
static int daObjSZbridge_MoveBGDraw(daObjSZbridge_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80D04C90-80D04CB0 -00001 0020+00 1/0 0/0 0/0 .data            daObjSZbridge_METHODS */
static actor_method_class daObjSZbridge_METHODS = {
    (process_method_func)daObjSZbridge_create1st,
    (process_method_func)daObjSZbridge_MoveBGDelete,
    (process_method_func)daObjSZbridge_MoveBGExecute,
    0,
    (process_method_func)daObjSZbridge_MoveBGDraw,
};

/* 80D04CB0-80D04CE0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_SZbridge */
extern actor_process_profile_definition g_profile_Obj_SZbridge = {
    fpcLy_CURRENT_e,          // mLayerID
    3,                        // mListID
    fpcPi_CURRENT_e,          // mListPrio
    PROC_Obj_SZbridge,        // mProcName
    &g_fpcLf_Method.base,     // sub_method
    sizeof(daObjSZbridge_c),  // mSize
    0,                        // mSizeOther
    0,                        // mParameters
    &g_fopAc_Method.base,     // sub_method
    676,                      // mPriority
    &daObjSZbridge_METHODS,   // sub_method
    0x00040100,               // mStatus
    fopAc_ACTOR_e,            // mActorType
    fopAc_CULLBOX_CUSTOM_e,   // cullType
};
