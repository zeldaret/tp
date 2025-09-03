/**
 * d_a_obj_zra_rock.cpp
 * Zora Rock (Graveyard)
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_zra_rock.h"
#include "d/d_com_inf_game.h"
#include "d/d_bg_w.h"
#include "d/d_procname.h"

/* 80D455F0-80D455F4 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char const* l_arcName = "H_ZraRock";

/* 80D44CB8-80D44D3C 000078 0084+00 1/1 0/0 0/0 .text            setAttnPos__14daObjZraRock_cFv */
void daObjZraRock_c::setAttnPos() {
    cXyz vec(10.0f, 152.3f, 0.0f);
    mDoMtx_stack_c::ZXYrotS(current.angle.x, current.angle.y, current.angle.z);
    mDoMtx_stack_c::multVec(&vec, &attention_info.position);
    attention_info.position += current.pos;
}

/* 80D44D3C-80D44DCC 0000FC 0090+00 2/2 0/0 0/0 .text            setBaseMtx__14daObjZraRock_cFv */
void daObjZraRock_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mpModelOpa->setBaseTRMtx(mDoMtx_stack_c::get());
    mpModelXlu->setBaseTRMtx(mDoMtx_stack_c::get());
    PSMTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80D44DCC-80D44E28 00018C 005C+00 1/1 0/0 0/0 .text            setEnvTevColor__14daObjZraRock_cFv
 */
void daObjZraRock_c::setEnvTevColor() {
    tevStr.YukaCol = dComIfG_Bgsp().GetPolyColor(mGndChk);
    tevStr.room_no = dComIfG_Bgsp().GetRoomId(mGndChk);
}

/* 80D44E28-80D44E68 0001E8 0040+00 1/1 0/0 0/0 .text            setRoomNo__14daObjZraRock_cFv */
void daObjZraRock_c::setRoomNo() {
    fopAcM_SetRoomNo(this, dComIfG_Bgsp().GetRoomId(mGndChk));
}

/* 80D44E68-80D44FB0 000228 0148+00 1/0 0/0 0/0 .text            Create__14daObjZraRock_cFv */
int daObjZraRock_c::Create() {
    setBaseMtx();
    fopAcM_SetMtx(this, mpModelOpa->getBaseTRMtx());
    J3DJoint* joint = mpModelOpa->getModelData()->getJointNodePointer(0);
    fopAcM_setCullSizeBox(this, joint->getMin()->x, joint->getMin()->y, joint->getMin()->z,
                          joint->getMax()->x, joint->getMax()->y, joint->getMax()->z);
    mAcchCir.SetWall(0.0f, 0.0f);
    mObjAcch.Set(&current.pos, &old.pos, this, 1, &mAcchCir, &speed, &current.angle, &shape_angle);
    mObjAcch.CrrPos(dComIfG_Bgsp());
    mGndChk = mObjAcch.m_gnd;
    setEnvTevColor();
    setRoomNo();
    mDemoStart = false;
    return 1;
}

/* 80D44FB0-80D450E0 000370 0130+00 1/0 0/0 0/0 .text            CreateHeap__14daObjZraRock_cFv */
int daObjZraRock_c::CreateHeap() {
    J3DModelData* model_data_opa = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 6);
    mpModelOpa = mDoExt_J3DModel__create(model_data_opa, 0x80000, 0x11000084);
    if (mpModelOpa == NULL) {
        return 0;
    }
    J3DModelData* model_data = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 5);
    mpModelXlu = mDoExt_J3DModel__create(model_data, 0x80000, 0x11000084);
    if (mpModelXlu == NULL) {
        return 0;
    }
    J3DAnmTevRegKey* tev_reg_anm = (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_arcName, 9);
    if (!mBrkAnm.init(model_data, tev_reg_anm, 1, 0, 1.0f, 0, -1)) {
        return 0;
    }
    mBrkAnm.setPlaySpeed(0.0f);
    return 1;
}

/* 80D450E0-80D45264 0004A0 0184+00 1/1 0/0 0/0 .text            create__14daObjZraRock_cFv */
cPhs__Step daObjZraRock_c::create() {
    fopAcM_SetupActor(this, daObjZraRock_c);
    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&mPhaseReq, l_arcName);
    if (step == cPhs_ERROR_e || step == cPhs_UNK3_e) {
        return cPhs_ERROR_e;
    } else if (step == cPhs_COMPLEATE_e) {
        int dzb_id = dComIfG_getObjctResName2Index(l_arcName, "H_ZoraRock.dzb");
        step = (cPhs__Step)MoveBGCreate(l_arcName, dzb_id, dBgS_MoveBGProc_Trans, 0x2050, NULL);
        if (dComIfGs_isSwitch((fopAcM_GetParam(this) >> 8) & 0xff, fopAcM_GetRoomNo(this))) {
            step = cPhs_ERROR_e;
        }
    }
    return step;
}

/* 80D4531C-80D45374 0006DC 0058+00 1/0 0/0 0/0 .text            Execute__14daObjZraRock_cFPPA3_A4_f
 */
int daObjZraRock_c::Execute(Mtx** i_mtx) {
    mBrkAnm.play();
    *i_mtx = &mBgMtx;
    setAttnPos();
    setBaseMtx();
    return 1;
}

/* 80D45374-80D454AC 000734 0138+00 1/0 0/0 0/0 .text            Draw__14daObjZraRock_cFv */
int daObjZraRock_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    if (mDemoStart) {
        g_env_light.setLightTevColorType_MAJI(mpModelXlu, &tevStr);
        dComIfGd_setListBG();
        mBrkAnm.entry(mpModelXlu->getModelData());
        mDoExt_modelUpdateDL(mpModelXlu);
        mBrkAnm.remove(mpModelXlu->getModelData());
        dComIfGd_setList();
    } else {
        g_env_light.setLightTevColorType_MAJI(mpModelOpa, &tevStr);
        dComIfGd_setListBG();
        mDoExt_modelUpdateDL(mpModelOpa);
        dComIfGd_setList();
    }
    return 1;
}

/* 80D454AC-80D45518 00086C 006C+00 1/0 0/0 0/0 .text            Delete__14daObjZraRock_cFv */
int daObjZraRock_c::Delete() {
    dComIfG_resDelete(&mPhaseReq, l_arcName);
    if (mpBgW != NULL && mpBgW->ChkUsed()) {
        dComIfG_Bgsp().Release(mpBgW);
    }
    return 1;
}

/* 80D45518-80D45544 0008D8 002C+00 1/0 0/0 0/0 .text daObjZraRock_Draw__FP14daObjZraRock_c */
static int daObjZraRock_Draw(daObjZraRock_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80D45544-80D45564 000904 0020+00 1/0 0/0 0/0 .text daObjZraRock_Execute__FP14daObjZraRock_c */
static int daObjZraRock_Execute(daObjZraRock_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80D45564-80D4556C 000924 0008+00 1/0 0/0 0/0 .text daObjZraRock_IsDelete__FP14daObjZraRock_c */
static int daObjZraRock_IsDelete(daObjZraRock_c* param_0) {
    return 1;
}

/* 80D4556C-80D4558C 00092C 0020+00 1/0 0/0 0/0 .text daObjZraRock_Delete__FP14daObjZraRock_c */
static int daObjZraRock_Delete(daObjZraRock_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80D4558C-80D455AC 00094C 0020+00 1/0 0/0 0/0 .text            daObjZraRock_create__FP10fopAc_ac_c
 */
static cPhs__Step daObjZraRock_create(fopAc_ac_c* i_this) {
    return static_cast<daObjZraRock_c*>(i_this)->create();
}

/* 80D455F4-80D45614 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjZraRock_Method */
static actor_method_class l_daObjZraRock_Method = {
    (process_method_func)daObjZraRock_create,
    (process_method_func)daObjZraRock_Delete,
    (process_method_func)daObjZraRock_Execute,
    (process_method_func)daObjZraRock_IsDelete,
    (process_method_func)daObjZraRock_Draw,

};

/* 80D45614-80D45644 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_ZraRock */
extern actor_process_profile_definition g_profile_Obj_ZraRock = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_Obj_ZraRock,
    &g_fpcLf_Method.base,
    sizeof(daObjZraRock_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x260,
    &l_daObjZraRock_Method,
    0x44100,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
