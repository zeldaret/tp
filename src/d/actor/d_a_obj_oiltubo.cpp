/**
 * d_a_obj_oiltubo.cpp
 * Lantern Oil Pot
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_oiltubo.h"

/* 80CA79A8-80CA79AC -00001 0004+00 1/1 0/0 0/0 .data            l_resFileName */
static char* l_resFileName = "Obj_otubo";

/* 80CA79AC-80CA79B0 -00001 0004+00 0/1 0/0 0/0 .data            l_bmdFileName */
static char* l_bmdFileName = "x_oiltubo_00.bmd";

/* 80CA79B0-80CA79B4 -00001 0004+00 0/1 0/0 0/0 .data            l_bbmdFileName */
static char* l_bbmdFileName = "x_oiltubo_00b.bmd";

/* 80CA79B4-80CA79B8 -00001 0004+00 0/2 0/0 0/0 .data            l_bbtkFileName */
static char* l_bbtkFileName = "x_oiltubo_00b.btk";

/* 80CA79B8-80CA79FC 000030 0044+00 2/2 0/0 0/0 .data            mCcDCyl__15daObj_Oiltubo_c */
dCcD_SrcCyl daObj_Oiltubo_c::mCcDCyl = {
    daObj_Oiltubo_c::mCcDObjInfo,
    {
        {0.0f, 0.0f, 0.0f},  // mCenter
        0.0f,                // mRadius
        0.0f                 // mHeight
    }                        // mCyl
};

/* 80CA6718-80CA6914 000078 01FC+00 1/1 0/0 0/0 .text            create__15daObj_Oiltubo_cFv */
int daObj_Oiltubo_c::create() {
    fopAcM_SetupActor(this, daObj_Oiltubo_c);

    int phase_state = dComIfG_resLoad(&mPhase, getResName());
    if (phase_state == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x2000)) {
            return cPhs_ERROR_e;
        }

        initialize();
    }

    return phase_state;
}

/* 80CA78F4-80CA7924 000000 0030+00 5/5 0/0 0/0 .rodata          mCcDObjInfo__15daObj_Oiltubo_c */
const dCcD_SrcGObjInf daObj_Oiltubo_c::mCcDObjInfo = {
    {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x1F}, 0x79}},  // mObj
    {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},                  // mGObjAt
    {dCcD_SE_NONE, 0x2, 0x0, 0x0, 0x1},                  // mGObjTg
    {0x0},                                               // mGObjCo
};

/* 80CA6B28-80CA6C5C 000488 0134+00 1/1 0/0 0/0 .text            CreateHeap__15daObj_Oiltubo_cFv */
int daObj_Oiltubo_c::CreateHeap() {
    J3DModelData* mdlData_p = (J3DModelData*)dComIfG_getObjectRes(getResName(), l_bmdFileName);
    JUT_ASSERT(0, mdlData_p != 0);

    mpModel = mDoExt_J3DModel__create(mdlData_p, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    J3DModelData* mdlBData_p = (J3DModelData*)dComIfG_getObjectRes(getResName(), l_bbmdFileName);
    JUT_ASSERT(0, mdlBData_p != 0);

    mpBModel = mDoExt_J3DModel__create(mdlBData_p, 0x80000, 0x19000284);
    if (mpBModel == NULL) {
        return 0;
    }

    mBtk.init(mdlBData_p, (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(getResName(), l_bbtkFileName),
              TRUE, J3DFrameCtrl::EMode_LOOP, 1.0f, 0, -1);
    mSound.init(&current.pos, 1);
    return 1;
}

/* 80CA6C5C-80CA6CA0 0005BC 0044+00 1/1 0/0 0/0 .text            Delete__15daObj_Oiltubo_cFv */
int daObj_Oiltubo_c::Delete() {
    dComIfG_resDelete(&mPhase, getResName());
    mSound.deleteObject();
    return 1;
}

/* 80CA6CA0-80CA6EDC 000600 023C+00 2/2 0/0 0/0 .text            Execute__15daObj_Oiltubo_cFv */
int daObj_Oiltubo_c::Execute() {
    BOOL event_chk = chkEvent();

    mBtk.play();
    setParam();

    mAcch.CrrPos(dComIfG_Bgsp());
    mGroundChk = mAcch.m_gnd;
    mGroundHeight = mAcch.GetGroundH();

    if (mGroundHeight != -1000000000.0f) {
        setEnvTevColor();
        setRoomNo();
    }

    if (event_chk && mProcess != NULL) {
        (this->*mProcess)(NULL);
    }

    setMtx();

    mCcCoCyl.SetCoSPrm(0);
    mCcCoCyl.SetTgType(0xD8FBFDFF);
    mCcCoCyl.SetTgSPrm(0x1F);
    mCcCoCyl.SetR(50.0f);
    mCcCoCyl.SetH(70.0f);
    mCcCoCyl.SetC(current.pos);
    dComIfG_Ccsp()->Set(&mCcCoCyl);

    mCcAtCyl.SetAtType(0);
    mCcAtCyl.SetAtSPrm(0);
    mCcAtCyl.SetR(50.0f);
    mCcAtCyl.SetH(70.0f);
    mCcAtCyl.SetC(current.pos);
    dComIfG_Ccsp()->Set(&mCcAtCyl);

    setAttnPos();

    if (mCcAtCyl.ChkTgHit() && mCcAtCyl.GetTgHitObj() != NULL) {
        mSound.startCollisionSE(mCcAtCyl.GetTgHitObjHitSeID(1), 2, NULL);
    }

    mSound.framework(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    return 1;
}

/* 80CA6EDC-80CA6FC8 00083C 00EC+00 1/1 0/0 0/0 .text            Draw__15daObj_Oiltubo_cFv */
int daObj_Oiltubo_c::Draw() {
    g_env_light.settingTevStruct(8, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpBModel, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    mDoExt_modelUpdateDL(mpModel);
    mBtk.entry(mpBModel->getModelData());
    mDoExt_modelUpdateDL(mpBModel);

    mShadowKey = dComIfGd_setShadow(mShadowKey, 1, mpModel, &current.pos, 800.0f, 120.0f,
                                    current.pos.y, mGroundHeight, mGroundChk, &tevStr, 0, 1.0f,
                                    dDlst_shadowControl_c::getSimpleTex());
    return 1;
}

/* 80CA6FC8-80CA6FE8 000928 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__15daObj_Oiltubo_cFP10fopAc_ac_c          */
int daObj_Oiltubo_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daObj_Oiltubo_c*>(i_this)->CreateHeap();
}

/* 80CA6FE8-80CA6FF8 000948 0010+00 4/4 0/0 0/0 .text            getResName__15daObj_Oiltubo_cFv */
const char* daObj_Oiltubo_c::getResName() {
    return l_resFileName;
}

/* 80CA6FF8-80CA7068 000958 0070+00 1/1 0/0 0/0 .text            restart__15daObj_Oiltubo_cFv */
void daObj_Oiltubo_c::restart() {
    current.angle.set(0, home.angle.y, 0);
    shape_angle = current.angle;

    setProcess(&wait);
}

/* 80CA7068-80CA720C 0009C8 01A4+00 1/1 0/0 0/0 .text            initialize__15daObj_Oiltubo_cFv */
void daObj_Oiltubo_c::initialize() {
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    fopAcM_SetMtx(this, mpBModel->getBaseTRMtx());
    fopAcM_setCullSizeBox2(this, mpModel->getModelData());
    fopAcM_setCullSizeBox2(this, mpBModel->getModelData());

    eventInfo.setArchiveName((char*)getResName());
    attention_info.flags = 0;

    mAcchCir.SetWall(50.0f, 70.0f);
    mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
              fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
    mCcStts.Init(0xFF, 0, this);

    mCcAtCyl.Set(mCcDCyl);
    mCcAtCyl.SetStts(&mCcStts);

    mCcCoCyl.Set(mCcDCyl);
    mCcCoCyl.SetStts(&mCcStts);

    mAcch.CrrPos(dComIfG_Bgsp());
    mGroundChk = mAcch.m_gnd;
    mGroundHeight = mAcch.GetGroundH();

    setEnvTevColor();
    setRoomNo();
    restart();
    Execute();
}

/* 80CA720C-80CA72BC 000B6C 00B0+00 1/1 0/0 0/0 .text
 * setProcess__15daObj_Oiltubo_cFM15daObj_Oiltubo_cFPCvPvPv_i   */
int daObj_Oiltubo_c::setProcess(daObj_Oiltubo_c::processFn i_process) {
    mMode = 2;

    if (mProcess != NULL) {
        (this->*mProcess)(NULL);
    }

    mMode = 0;
    mProcess = i_process;

    if (mProcess != NULL) {
        (this->*mProcess)(NULL);
    }

    mMode = 1;
    return 1;
}

/* 80CA72BC-80CA7318 000C1C 005C+00 1/1 0/0 0/0 .text            setParam__15daObj_Oiltubo_cFv */
void daObj_Oiltubo_c::setParam() {
    scale.set(1.0f, 1.0f, 1.0f);
    mAcchCir.SetWallR(50.0f);
    mAcchCir.SetWallH(70.0f);
}

/* 80CA7318-80CA7374 000C78 005C+00 2/2 0/0 0/0 .text            setEnvTevColor__15daObj_Oiltubo_cFv
 */
void daObj_Oiltubo_c::setEnvTevColor() {
    tevStr.YukaCol = dComIfG_Bgsp().GetPolyColor(mGroundChk);
    tevStr.room_no = dComIfG_Bgsp().GetRoomId(mGroundChk);
}

/* 80CA7374-80CA73B8 000CD4 0044+00 2/2 0/0 0/0 .text            setRoomNo__15daObj_Oiltubo_cFv */
void daObj_Oiltubo_c::setRoomNo() {
    int roomId = dComIfG_Bgsp().GetRoomId(mGroundChk);

    fopAcM_SetRoomNo(this, roomId);
    mCcStts.SetRoomId(roomId);
}

/* 80CA73B8-80CA7430 000D18 0078+00 1/1 0/0 0/0 .text            setMtx__15daObj_Oiltubo_cFv */
void daObj_Oiltubo_c::setMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::scaleM(scale);

    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    mpBModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80CA7430-80CA7478 000D90 0048+00 1/1 0/0 0/0 .text            setAttnPos__15daObj_Oiltubo_cFv */
void daObj_Oiltubo_c::setAttnPos() {
    attention_info.position = current.pos;
    attention_info.position.y += 150.0f;
    eyePos = current.pos;
}

/* 80CA7478-80CA74C8 000DD8 0050+00 1/1 0/0 0/0 .text            chkEvent__15daObj_Oiltubo_cFv */
BOOL daObj_Oiltubo_c::chkEvent() {
    BOOL var_r5 = 1;

    if (!dComIfGp_getEvent().isOrderOK()) {
        var_r5 = 0;

        if (eventInfo.checkCommandCatch()) {
            return var_r5;
        }
    }

    return var_r5;
}

/* 80CA74C8-80CA7558 000E28 0090+00 1/0 0/0 0/0 .text            wait__15daObj_Oiltubo_cFPv */
int daObj_Oiltubo_c::wait(void* unused) {
    switch (mMode) {
    case 1:
        if (!eventInfo.checkCommandCatch()) {
            dComIfGp_att_CatchRequest(this, fpcNm_ITEM_OIL_BOTTLE_2, 100.0f, 50.0f, -50.0f, 0x2000, 1);
            eventInfo.onCondition(dEvtCnd_40_e);
        }
        break;
    case 2:
    case 0:
        break;
    }

    return 1;
}

/* 80CA7558-80CA7578 000EB8 0020+00 1/0 0/0 0/0 .text            daObj_Oiltubo_Create__FPv */
static int daObj_Oiltubo_Create(void* i_this) {
    return static_cast<daObj_Oiltubo_c*>(i_this)->create();
}

/* 80CA7578-80CA7598 000ED8 0020+00 1/0 0/0 0/0 .text            daObj_Oiltubo_Delete__FPv */
static int daObj_Oiltubo_Delete(void* i_this) {
    return static_cast<daObj_Oiltubo_c*>(i_this)->Delete();
}

/* 80CA7598-80CA75B8 000EF8 0020+00 1/0 0/0 0/0 .text            daObj_Oiltubo_Execute__FPv */
static int daObj_Oiltubo_Execute(void* i_this) {
    return static_cast<daObj_Oiltubo_c*>(i_this)->Execute();
}

/* 80CA75B8-80CA75D8 000F18 0020+00 1/0 0/0 0/0 .text            daObj_Oiltubo_Draw__FPv */
static int daObj_Oiltubo_Draw(void* i_this) {
    return static_cast<daObj_Oiltubo_c*>(i_this)->Draw();
}

/* 80CA75D8-80CA75E0 000F38 0008+00 1/0 0/0 0/0 .text            daObj_Oiltubo_IsDelete__FPv */
static int daObj_Oiltubo_IsDelete(void* i_this) {
    return 1;
}

/* 80CA7A08-80CA7A28 -00001 0020+00 1/0 0/0 0/0 .data            daObj_Oiltubo_MethodTable */
static actor_method_class daObj_Oiltubo_MethodTable = {
    (process_method_func)daObj_Oiltubo_Create,  (process_method_func)daObj_Oiltubo_Delete,
    (process_method_func)daObj_Oiltubo_Execute, (process_method_func)daObj_Oiltubo_IsDelete,
    (process_method_func)daObj_Oiltubo_Draw,
};

/* 80CA7A28-80CA7A58 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_OILTUBO */
extern actor_process_profile_definition g_profile_OBJ_OILTUBO = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_OBJ_OILTUBO,
    &g_fpcLf_Method.base,
    sizeof(daObj_Oiltubo_c),
    0,
    0,
    &g_fopAc_Method.base,
    66,
    &daObj_Oiltubo_MethodTable,
    0x44100,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
