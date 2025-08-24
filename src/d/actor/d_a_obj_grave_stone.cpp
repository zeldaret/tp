/**
 * d_a_obj_grave_stone.cpp
 * Object - Zora Gravestone
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_grave_stone.h"
#include "d/d_procname.h"
#include "d/d_com_inf_game.h"
#include "d/d_bg_w.h"

/* 80C13304-80C13308 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char const* l_arcName = "H_Haka";

/* 80C13250-80C13280 000000 0030+00 1/1 0/0 0/0 .rodata          mCcDObjInfo__14daGraveStone_c */
dCcD_SrcGObjInf const daGraveStone_c::mCcDObjInfo = {
    {0, {{0, 0, 0}, {0, 0}, {0x79}}},
    {0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0},
    {0},
};

/* 80C13280-80C132C4 000030 0044+00 1/1 0/0 0/0 .rodata          mCcDCyl__14daGraveStone_c */
dCcD_SrcCyl const daGraveStone_c::mCcDCyl = {
    {
        {0, {{0, 0, 0}, {0, 0}, {0x79}}},
        {0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0},
        {0},
    },
    {{0.0f, 0.0f, 0.0f}, 0.0f, 0.0f},
};

/* 80C125F8-80C1266C 000078 0074+00 2/2 0/0 0/0 .text            setBaseMtx__14daGraveStone_cFv */
void daGraveStone_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    PSMTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80C1266C-80C12918 0000EC 02AC+00 1/1 0/0 0/0 .text            moveCalc__14daGraveStone_cFv */
void daGraveStone_c::moveCalc() {
    if (cLib_calcTimer(&mTimer) != 0) {
        fopAcM_posMoveF(this, mColStatus.GetCCMoveP());
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        if (-mAcch.GetGroundH()) {
            setEnvTevColor();
            setRoomNo();
        }
        attention_info.position = current.pos;
        PSMTXCopy(mpModel->getBaseTRMtx(), mDoMtx_stack_c::get());
        
        cXyz vec(0.0f, 0.0f, 0.0f);
        if (speedF > 1.0f) {
            vec.z = -30.0f;
        } else {
            vec.z = 30.0f;
        }

        mDoMtx_stack_c::push();
        vec.x = 90.0f;
        mDoMtx_stack_c::multVec(&vec, &mPrtclMngr[0].mPos);
        mPrtclMngr[0].mAngle = current.angle;
        mPrtclMngr[0].field_0x00 = true;
        mDoMtx_stack_c::pop();

        vec.x = -90.0f;
        mDoMtx_stack_c::push();
        mDoMtx_stack_c::multVec(&vec, &mPrtclMngr[1].mPos);
        mPrtclMngr[1].mAngle = current.angle;
        mPrtclMngr[1].field_0x00 = true;
        mDoMtx_stack_c::pop();

        vec.x = 30.0f;
        mDoMtx_stack_c::push();
        mDoMtx_stack_c::multVec(&vec, &mPrtclMngr[2].mPos);
        mPrtclMngr[2].mAngle = current.angle;
        mPrtclMngr[2].field_0x00 = true;
        mDoMtx_stack_c::pop();

        vec.x = -30.0f;
        mDoMtx_stack_c::push();
        mDoMtx_stack_c::multVec(&vec, &mPrtclMngr[3].mPos);
        mPrtclMngr[3].mAngle = current.angle;
        mPrtclMngr[3].field_0x00 = true;
        mDoMtx_stack_c::pop();

        Z2GetAudioMgr()->seStartLevel(Z2SE_OBJ_ZORA_BOSEKI_MV, &current.pos,
                                      0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
    }
}

/* 80C12918-80C12A38 000398 0120+00 1/1 0/0 0/0 .text            setPrtcl__14daGraveStone_cFv */
int daGraveStone_c::setPrtcl() {
    for (int i = 0; i < 4; i++) {
        mPrtclMngr[i].field_0x24.setEffectCenter(
            &tevStr, &mPrtclMngr[i].mPos, 0, 0,
            mPrtclMngr[i].field_0x00 == true ? &mPrtclMngr[i].mPos : NULL,
            mPrtclMngr[i].field_0x00 == true ? &mPrtclMngr[i].mAngle : NULL,
            NULL, fopAcM_GetRoomNo(this), 0.0f, speedF
        );
        if (mPrtclMngr[i].field_0x00) {
            JPABaseEmitter* emitter = mPrtclMngr[i].field_0x24.getCenterEmitter(0, 0);
            if (emitter != NULL) {
                mPrtclMngr[i].scale.set(2.5f, 2.5f, 2.5f);
                // JGeometry::TVec3<f32> scale(mPrtclMngr[i].scale);
                JGeometry::TVec3<f32> scale;
                JGeometry::setTVec3f(&mPrtclMngr[i].scale.x, &scale.x);
                emitter->setGlobalParticleScale(scale);
            }
        }
        mPrtclMngr[i].field_0x00 = 0;
    }
    return 1;
}

/* 80C12A38-80C12A94 0004B8 005C+00 2/2 0/0 0/0 .text            setEnvTevColor__14daGraveStone_cFv
 */
void daGraveStone_c::setEnvTevColor() {
    tevStr.YukaCol = dComIfG_Bgsp().GetPolyColor(mGndChk);
    tevStr.room_no = dComIfG_Bgsp().GetRoomId(mGndChk);
}

/* 80C12A94-80C12AD8 000514 0044+00 2/2 0/0 0/0 .text            setRoomNo__14daGraveStone_cFv */
void daGraveStone_c::setRoomNo() {
    s8 room_no = dComIfG_Bgsp().GetRoomId(mGndChk);
    fopAcM_SetRoomNo(this, room_no);
    mColStatus.SetRoomId(room_no);
}

/* 80C12AD8-80C12CA4 000558 01CC+00 1/0 0/0 0/0 .text            Create__14daGraveStone_cFv */
int daGraveStone_c::Create() {
    setBaseMtx();
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    mAcchCir.SetWall(0.0f, 0.0f);
    mAcch.Set(&current.pos, &old.pos, this, 1, &mAcchCir, &speed, &current.angle, &shape_angle);
    mColStatus.Init(0xff, 0, this);
    mColCyl.Set(mCcDCyl);
    mColCyl.SetStts(&mColStatus);
    mAcch.CrrPos(dComIfG_Bgsp());
    mGndChk = mAcch.m_gnd;
    setEnvTevColor();
    setRoomNo();
    attention_info.position = current.pos;
    for (int i = 0; i < 4; i++) {
        mPrtclMngr[i].field_0x24.init(&mAcch, 0.0f, 0.0f);
    }
    J3DJoint* joint = mpModel->getModelData()->getJointNodePointer(0);
    fopAcM_setCullSizeBox(this, joint->getMin()->x, joint->getMin()->y, joint->getMin()->z,
                          joint->getMax()->x, joint->getMax()->y, joint->getMax()->z);
    mTimer = 0;
    return 1;
}

/* 80C12CA4-80C12D1C 000724 0078+00 1/0 0/0 0/0 .text            CreateHeap__14daGraveStone_cFv */
int daGraveStone_c::CreateHeap() {
    J3DModelData* model_data = (J3DModelData*)dComIfG_getObjectRes(l_arcName, "H_Haka.bmd");
    mpModel = mDoExt_J3DModel__create(model_data, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }
    return 1;
}

/* 80C12D1C-80C12EF0 00079C 01D4+00 1/1 0/0 0/0 .text            create__14daGraveStone_cFv */
cPhs__Step daGraveStone_c::create() {
    fopAcM_SetupActor(this, daGraveStone_c);
    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&mPhase, l_arcName);
    if (step == cPhs_COMPLEATE_e) {
        int dzb_id = dComIfG_getObjctResName2Index(l_arcName, "H_Haka.dzb");
        step = (cPhs__Step)MoveBGCreate(l_arcName, dzb_id,
                                        dBgS_MoveBGProc_TypicalRotY, 0x29A0, NULL);
        if (step == cPhs_ERROR_e) {
            return step;
        }
    }
    return step;
}

/* 80C13030-80C13078 000AB0 0048+00 1/0 0/0 0/0 .text            Execute__14daGraveStone_cFPPA3_A4_f
 */
int daGraveStone_c::Execute(Mtx** i_mtxP) {
    *i_mtxP = &mBgMtx;
    moveCalc();
    setBaseMtx();
    setPrtcl();
    return 1;
}

/* 80C13078-80C1311C 000AF8 00A4+00 1/0 0/0 0/0 .text            Draw__14daGraveStone_cFv */
int daGraveStone_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80C1311C-80C13188 000B9C 006C+00 1/0 0/0 0/0 .text            Delete__14daGraveStone_cFv */
int daGraveStone_c::Delete() {
    dComIfG_resDelete(&mPhase, l_arcName);
    if (mpBgW != NULL && mpBgW->ChkUsed()) {
        dComIfG_Bgsp().Release(mpBgW);
    }
    return 1;
}

/* 80C13188-80C131B4 000C08 002C+00 1/0 0/0 0/0 .text daGraveStone_Draw__FP14daGraveStone_c */
static int daGraveStone_Draw(daGraveStone_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C131B4-80C131D4 000C34 0020+00 1/0 0/0 0/0 .text daGraveStone_Execute__FP14daGraveStone_c */
static int daGraveStone_Execute(daGraveStone_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C131D4-80C131DC 000C54 0008+00 1/0 0/0 0/0 .text daGraveStone_IsDelete__FP14daGraveStone_c */
static int daGraveStone_IsDelete(daGraveStone_c* i_this) {
    return 1;
}

/* 80C131DC-80C131FC 000C5C 0020+00 1/0 0/0 0/0 .text daGraveStone_Delete__FP14daGraveStone_c */
static int daGraveStone_Delete(daGraveStone_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C131FC-80C1321C 000C7C 0020+00 1/0 0/0 0/0 .text            daGraveStone_create__FP10fopAc_ac_c
 */
static cPhs__Step daGraveStone_create(fopAc_ac_c* i_this) {
    return static_cast<daGraveStone_c*>(i_this)->create();
}

/* 80C13308-80C13328 -00001 0020+00 1/0 0/0 0/0 .data            l_daGraveStone_Method */
static actor_method_class l_daGraveStone_Method = {
    (process_method_func)daGraveStone_create,
    (process_method_func)daGraveStone_Delete,
    (process_method_func)daGraveStone_Execute,
    (process_method_func)daGraveStone_IsDelete,
    (process_method_func)daGraveStone_Draw,
};

/* 80C13328-80C13358 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_GraveStone */
extern actor_process_profile_definition g_profile_Obj_GraveStone = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_Obj_GraveStone,
    &g_fpcLf_Method.base,
    sizeof(daGraveStone_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x25F,
    &l_daGraveStone_Method,
    0x44100,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
