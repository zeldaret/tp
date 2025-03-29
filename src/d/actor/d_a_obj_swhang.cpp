/**
 * @file d_a_obj_swhang.cpp
 * 
*/

#include "d/actor/d_a_obj_swhang.h"
#include "SSystem/SComponent/c_math.h"
#include "d/actor/d_a_player.h"
#include "d/d_bg_w.h"
#include "d/d_com_inf_game.h"

// NONMATCHING - dEvLib_callback_c issues

/* 80CFD1DC-80CFD1F0 000000 0014+00 4/4 0/0 0/0 .rodata          l_bmdIdx */
static u32 const l_bmdIdx[5] = {
    4, 4, 4, 4, 4,
};

/* 80CFD1F0-80CFD204 000014 0014+00 1/1 0/0 0/0 .rodata          l_dzbIdx */
static u32 const l_dzbIdx[5] = {
    7, 7, 7, 7, 7,
};

/* 80CFD204-80CFD218 000028 0014+00 1/1 0/0 0/0 .rodata          l_dzbIdx2 */
static u32 const l_dzbIdx2[5] = {
    8, 8, 8, 8, 8,
};

/* 80CFD218-80CFD22C 00003C 0014+00 1/3 0/0 0/0 .rodata          l_pull_length */
static f32 const l_pull_length[5] = {
    100.0f, 100.0f, 130.0f, 100.0f, 200.0f,
};

/* 80CFD22C-80CFD240 000050 0014+00 1/1 0/0 0/0 .rodata          l_heap_size */
static u32 const l_heap_size[5] = {
    0x1980, 0x1980, 0x1980, 0x2030, 0x2030,
};

/* 80CFB938-80CFB9D8 000078 00A0+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static int nodeCallBack(J3DJoint* pJoint, int param_2) {
    if (param_2 == 0) {
        int jntNo = pJoint->getJntNo();
        J3DModel* model = j3dSys.getModel();
        daObjSwHang_c* i_this = (daObjSwHang_c*)model->getUserArea();
        cMtx_copy(model->getAnmMtx(jntNo), mDoMtx_stack_c::get());
        if (jntNo == i_this->getTotteJointNo()) {
            mDoMtx_stack_c::transM(i_this->getHangLength(), 0.0f, 0.0f);
        }
        cMtx_copy(mDoMtx_stack_c::get(), model->getAnmMtx(jntNo));
    }
    return 1;
}

/* 80CFB9D8-80CFBA60 000118 0088+00 1/1 0/0 0/0 .text            initBaseMtx__13daObjSwHang_cFv */
void daObjSwHang_c::initBaseMtx() {
    mpModel->setBaseScale(scale);
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    MTXCopy(mDoMtx_stack_c::get(), field_0x738);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    setBaseMtx();
}

/* 80CFBA60-80CFBAC8 0001A0 0068+00 2/2 0/0 0/0 .text            setBaseMtx__13daObjSwHang_cFv */
void daObjSwHang_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x,
                           current.pos.y - mHangLength,
                           current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

UNK_REL_DATA

/* 80CFD2D8-80CFD2EC -00001 0014+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName[5] = {
    "S_bura_A",
    "S_bura_B",
    "S_bura_7a",
    "S_bura_7b",
    "S_bura_7c",
};

/* 80CFD2EC-80CFD300 -00001 0014+00 0/1 0/0 0/0 .data            l_pull_jnt */
static char* l_pull_jnt[5] = {
    "totte",
    "hook",
    "hook",
    "totte",
    "tottel",
};

/* 80CFD300-80CFD33C 000048 003C+00 3/3 0/0 0/0 .data            l_hang_offset */
static Vec l_hang_offset[5] = {
    {0.0f, -470.0f, 10.0f}, {0.0f, -183.0f, 10.0f},   {0.0f, -200.0f, 10.0f},
    {0.0f, -520.0f, 10.0f}, {0.0f, -1010.0f, 10.0f},
};

/* 80CFD33C-80CFD37C 000084 0040+00 0/1 0/0 0/0 .data            l_sph_src */
static dCcD_SrcSph l_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x0, 0x10}, 0x19}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 80.0f} // mSph
    } // mSphAttr
};

/* 80CFD37C-80CFD3BC 0000C4 0040+00 0/1 0/0 0/0 .data            l_sph_src2 */
#pragma force_active on
static dCcD_SrcSph l_sph_src2 = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x4000, 0x11}, 0x18}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 80.0f} // mSph
    } // mSphAttr
};

/* 80CFBAC8-80CFBCB8 000208 01F0+00 1/0 0/0 0/0 .text            Create__13daObjSwHang_cFv */
int daObjSwHang_c::Create() {
    if (checkDown()) {
        mHangLength = l_pull_length[mType];
        init_modeOnWait();
    } else {
        mHangLength = 0.0f;
        init_modeOffWait();
    }
    initBaseMtx();
    if (mpBgW != NULL) {
        dComIfG_Bgsp().Regist(mpBgW, this);
        mpBgW->Move();
    }
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    mCcStts.Init(0, 0xff, this);
    switch(mType) {
    case TYPE_0:
    default:
        mCcSph.Set(l_sph_src);
        break;
    case TYPE_3:
    case TYPE_4:
        mCcSph.Set(l_sph_src2);
        fopAcM_OnStatus(this, 0x200000);
        break;
    }
    mCcSph.SetStts(&mCcStts);
    J3DJoint* pJoint = mpModel->getModelData()->getJointNodePointer(0);
    fopAcM_setCullSizeBox(this, pJoint->getMin()->x,
                          pJoint->getMin()->y - l_pull_length[mType], pJoint->getMin()->z,
                          pJoint->getMax()->x, pJoint->getMax()->y, pJoint->getMax()->z);
    JUTNameTab* nameTab = mpModel->getModelData()->getJointTree().getJointName();
    for (u16 i = 0; i < mpModel->getModelData()->getJointNum(); i++) {
        if (strcmp(nameTab->getName(i), l_pull_jnt[mType]) == 0) {
            mTotteJointNo = (s16)i;
            mpModel->getModelData()->getJointNodePointer(i)->setCallBack(nodeCallBack);
        }
    }
    mpModel->setUserArea((u32)this);
    return 1;
}

/* 80CFBCB8-80CFBDD0 0003F8 0118+00 1/0 0/0 0/0 .text            CreateHeap__13daObjSwHang_cFv */
int daObjSwHang_c::CreateHeap() {
   J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(
        l_arcName[mType],
        l_bmdIdx[mType]);
    JUT_ASSERT(445, modelData != 0);
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }
    mpBgW = new dBgW();
    if (mpBgW == NULL ||
        mpBgW->Set((cBgD_t*)dComIfG_getObjectRes(l_arcName[mType], l_dzbIdx[mType]), 1,
                   &field_0x738) != 0)
    {
        mpBgW = NULL;
        return 0;
    }
    return 1;
}

/* 80CFBDD0-80CFBF60 000510 0190+00 1/1 0/0 0/0 .text            create1st__13daObjSwHang_cFv */
int daObjSwHang_c::create1st() {
    fopAcM_SetupActor(this, daObjSwHang_c);
    mType = getType_private();
    int rv = dComIfG_resLoad(&mPhase, l_arcName[mType]);
    if (rv == cPhs_COMPLEATE_e) {
        rv = MoveBGCreate(l_arcName[mType],
             l_dzbIdx2[mType], NULL,
             l_heap_size[mType], NULL);
        if (rv == cPhs_ERROR_e) {
            return rv;
        }
    }
    return rv;
}

/* 80CFC04C-80CFC114 00078C 00C8+00 1/1 0/0 0/0 .text            calcHangPos__13daObjSwHang_cFv */
void daObjSwHang_c::calcHangPos() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    mHangPos = l_hang_offset[mType];
    mHangPos.y -= mHangLength;
    s16 angleDiff = player->shape_angle.y - current.angle.y;
    if (angleDiff <= 0x4000 && angleDiff >= -0x4000) {
        mHangPos.z = -mHangPos.z;
    }
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(current.angle.y);
    mDoMtx_stack_c::multVec(&mHangPos, &mHangPos);
}

/* 80CFC114-80CFC194 000854 0080+00 4/4 0/0 0/0 .text            checkDown__13daObjSwHang_cFv */
BOOL daObjSwHang_c::checkDown() {
    if (!checkType()) {
        if (fopAcM_isSwitch(this, getSwNo())) {
            return 1;
        }
    } else {
        if (!fopAcM_isSwitch(this, getSwNo())) {
            return 1;
        }
    }
    return 0;
}

/* 80CFC194-80CFC1F4 0008D4 0060+00 2/2 0/0 0/0 .text            changeOnStatus__13daObjSwHang_cFv
 */
void daObjSwHang_c::changeOnStatus() {
    if (!checkType()) {
        fopAcM_onSwitch(this, getSwNo());
    } else {
        fopAcM_offSwitch(this, getSwNo());
    }
}

/* 80CFC1F4-80CFC254 000934 0060+00 1/1 0/0 0/0 .text            changeOffStatus__13daObjSwHang_cFv
 */
void daObjSwHang_c::changeOffStatus() {
    if (!checkType()) {
        fopAcM_offSwitch(this, getSwNo());
    } else {
        fopAcM_onSwitch(this, getSwNo());
    }
}

/* 80CFC254-80CFC4C4 000994 0270+00 1/0 0/0 0/0 .text            Execute__13daObjSwHang_cFPPA3_A4_f
 */
int daObjSwHang_c::Execute(Mtx** ppMtx) {
    eventUpdate();
    action();
    calcHangPos();
    *ppMtx = &mBgMtx;
    setBaseMtx();
    cXyz cStack_28(mHangPos);
    switch(mType) {
    case TYPE_0:
        mCcSph.SetC(mHangPos);
        dComIfG_Ccsp()->Set(&mCcSph);
        break;
    case TYPE_3:
        if (mCcSph.ChkTgHit()) {
            cCcD_Obj* hitObj = mCcSph.GetTgHitObj();
            if (hitObj != NULL && hitObj->ChkAtType(AT_TYPE_HOOKSHOT)) {
                fopAcM_seStart(this, Z2SE_OBJ_BURASWLV7_GRAB, 0);
            }
        }
        cStack_28.y += 100.0f;
        mCcSph.SetC(cStack_28);
        mCcSph.SetR(100.0f);
        dComIfG_Ccsp()->Set(&mCcSph);
        break;
    case TYPE_4:
        if (mCcSph.ChkTgHit()) {
            cCcD_Obj* hitObj = mCcSph.GetTgHitObj();
            if (hitObj != NULL && hitObj->ChkAtType(AT_TYPE_HOOKSHOT)) {
                fopAcM_seStart(this, Z2SE_OBJ_BURASWLV7_GRAB, 0);
            }
        }
        cStack_28.y += 150.0f;
        mCcSph.SetC(cStack_28);
        mCcSph.SetR(150.0f);
        dComIfG_Ccsp()->Set(&mCcSph);
        break;
    }

    eyePos = mHangPos;
    attention_info.position = eyePos;
    mHangPlayer = 0;
    return 1;
}

/* 80CFC4C4-80CFC550 000C04 008C+00 1/1 0/0 0/0 .text            action__13daObjSwHang_cFv */
void daObjSwHang_c::action() {
    static daObjSwHang_c::modeFunc l_func[2] = {
        &daObjSwHang_c::modeOffWait,
        &daObjSwHang_c::modeOnWait,
    };
    (this->*(l_func[mMode]))();
}

/* 80CFC550-80CFC698 000C90 0148+00 1/1 0/0 0/0 .text            checkDownSw__13daObjSwHang_cFv */
void daObjSwHang_c::checkDownSw() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    clrFlag();
    field_0x77d = 0;
    if (checkDown()) {
        onFlag(FLAGS_1);
    } else {
        if (mHangPlayer != 0) {
            switch (mType) {
            case TYPE_0:
            case TYPE_1:
                onFlag(FLAGS_1);
                return;
            case TYPE_2:
                if (player->checkBootsOrArmorHeavy()) {
                    onFlag(FLAGS_1);
                } else {
                    onFlag(FLAGS_2);
                }
                break;
            }
        }
        switch (mType) {
        case TYPE_3:
            if (fopAcM_checkHookCarryNow(this)) {
                field_0x77d = 1;
            }
            break;
        case TYPE_4:
            if (fopAcM_checkHookCarryNow(this)) {
                if (player->checkBootsOrArmorHeavy()) {
                    field_0x77d = 1;
                } else {
                    onFlag(FLAGS_2);
                }
            }

        }
    }
}

/* 80CFC698-80CFC6AC 000DD8 0014+00 2/2 0/0 0/0 .text            init_modeOffWait__13daObjSwHang_cFv
 */
void daObjSwHang_c::init_modeOffWait() {
    field_0x77e = 10;
    mMode = MODE_OFF_WAIT;
}

/* 80CFC6AC-80CFCA34 000DEC 0388+00 1/0 0/0 0/0 .text            modeOffWait__13daObjSwHang_cFv */
void daObjSwHang_c::modeOffWait() {
    daPy_getPlayerActorClass();
    u16 flags = mFlags;
    checkDownSw();
    gravity = 5.0f;
    if (checkFlag(1) || (field_0x77d != 0 &&
                          dComIfGp_checkPlayerStatus1(0, 0x10000)))
    {
        if (checkDown()) {
            field_0x77e = 0;
        }
        if (cLib_calcTimer(&field_0x77e) == 0) {
            if (mHangLength == 0.0f) {
                if (mType == TYPE_2 || mType == TYPE_2 ||
                    mType == TYPE_2)
                {
                    fopAcM_seStart(this, Z2SE_OBJ_BURASWLV7_ON, 0);
                } else {
                    fopAcM_seStart(this, Z2SE_OBJ_BURASW_ON, 0);
                }
            }
            field_0x784 += gravity;
            mHangLength += field_0x784;
            if (mHangLength > l_pull_length[mType]) {
                field_0x784 *= -0.6f;
                mHangLength = l_pull_length[mType];
                if (getEvId() == 0xff) {
                    changeOnStatus();
                } else {
                    orderEvent(getEvId(), 0xff, 1);
                }
                dComIfGp_getVibration().StartShock(4, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
                init_modeOnWait();
            }
        }
    } else {
        if (checkFlag(2)) {
            if (flags == 0) {
                field_0x78c = 0;
                field_0x788 = 15.0f;
            }
            mHangLength = (s16)(field_0x788 * cM_ssin(field_0x78c * 4500));
            field_0x78c++;
            cLib_addCalc0(&field_0x788, 0.05f, 1.0f);
        } else {
            if (getKind() == 1) {
                gravity = -7.0f;
                field_0x784 += gravity;
                mHangLength += field_0x784;
                if (mHangLength < 0.0f) {
                    field_0x784 *= -0.3f;
                    mHangLength = 0.0f;
                }
            }
        }
    }
    if (fopAcM_checkHookCarryNow(this)) {
        cXyz cStack_3c(0.0f, 0.0f, 0.0f);
        cStack_3c.y += -mHangLength + l_hang_offset[mType].y;
        daPy_getPlayerActorClass()->setHookshotCarryOffset(fopAcM_GetID(this), &cStack_3c);
    }
}

/* 80CFCA34-80CFCA40 001174 000C+00 2/2 0/0 0/0 .text            init_modeOnWait__13daObjSwHang_cFv
 */
void daObjSwHang_c::init_modeOnWait() {
    mMode = MODE_ON_WAIT;
}

/* 80CFCA40-80CFCCE0 001180 02A0+00 1/0 0/0 0/0 .text            modeOnWait__13daObjSwHang_cFv */
void daObjSwHang_c::modeOnWait() {
    daPy_getPlayerActorClass();
    bool isUp = !checkDown();
    bool bVar1 = false;
    switch (mType) {
    case TYPE_0:
    case TYPE_1:
    case TYPE_2:
        if ((getKind() == 0 && isUp) ||
            (getKind() == 1 && mHangPlayer == 0))
        {
            bVar1 = true;
        }
        break;
    case TYPE_3:
    case TYPE_4:
        if ((getKind() == 0 && isUp) || (getKind() == 1 && !fopAcM_checkHookCarryNow(this))) {
            bVar1 = true;
        }
        break;
    }

    if (bVar1) {
        if (mHangLength == l_pull_length[mType]) {
            if (mType == TYPE_2 || mType == TYPE_2 || mType == TYPE_2) {
                fopAcM_seStart(this, Z2SE_OBJ_BURASWLV7_OFF, 0);
            } else {
                fopAcM_seStart(this, Z2SE_OBJ_BURASW_OFF, 0);
            }
        }
        gravity = -7.0f;
        field_0x784 += gravity;
        mHangLength += field_0x784;
        if (mHangLength < 0.0f) {
            field_0x784 *= -0.3f;
            mHangLength = 0.0f;
            changeOffStatus();
            dComIfGp_getVibration().StartShock(4, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
            init_modeOffWait();
        }
    }
    if (fopAcM_checkHookCarryNow(this)) {
        cXyz cStack_2c(0.0f, 0.0f, 0.0f);
        cStack_2c.y = -l_pull_length[mType] + l_hang_offset[mType].y;
        daPy_getPlayerActorClass()->setHookshotCarryOffset(fopAcM_GetID(this), &cStack_2c);
    }
}

/* 80CFCCE0-80CFCD04 001420 0024+00 2/1 0/0 0/0 .text            eventStart__13daObjSwHang_cFv */
bool daObjSwHang_c::eventStart() {
    changeOnStatus();
    return true;
}

/* 80CFCD04-80CFCD98 001444 0094+00 1/0 0/0 0/0 .text            Draw__13daObjSwHang_cFv */
int daObjSwHang_c::Draw() {
    if (mType == TYPE_0 || mType == TYPE_1) {
        g_env_light.settingTevStruct( 0,
                                             &current.pos, &tevStr);
    } else {
        g_env_light.settingTevStruct( 0x10,
                                             &current.pos, &tevStr);
    }
    g_env_light.setLightTevColorType_MAJI(
                                                  mpModel,
                                                  &tevStr);
    mDoExt_modelUpdateDL(mpModel);
    return 1;
}

/* 80CFCD98-80CFCE0C 0014D8 0074+00 1/0 0/0 0/0 .text            Delete__13daObjSwHang_cFv */
int daObjSwHang_c::Delete() {
    if (mpBgW != NULL && mpBgW->ChkUsed()) {
        dComIfG_Bgsp().Release(mpBgW);
    }
    dComIfG_resDelete(&mPhase, l_arcName[mType]);
    return 1;
}

/* 80CFCE0C-80CFCF20 00154C 0114+00 1/0 0/0 0/0 .text daObjSwHang_create1st__FP13daObjSwHang_c */
static int daObjSwHang_create1st(daObjSwHang_c* i_this) {
    fopAcM_SetupActor(i_this, daObjSwHang_c);
    return i_this->create1st();
}

/* 80CFCF20-80CFCF40 001660 0020+00 1/0 0/0 0/0 .text daObjSwHang_MoveBGDelete__FP13daObjSwHang_c
 */
static int daObjSwHang_MoveBGDelete(daObjSwHang_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80CFCF40-80CFCF60 001680 0020+00 1/0 0/0 0/0 .text daObjSwHang_MoveBGExecute__FP13daObjSwHang_c
 */
static int daObjSwHang_MoveBGExecute(daObjSwHang_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80CFCF60-80CFCF8C 0016A0 002C+00 1/0 0/0 0/0 .text daObjSwHang_MoveBGDraw__FP13daObjSwHang_c */
static int daObjSwHang_MoveBGDraw(daObjSwHang_c* i_this) {
    return i_this->Draw();
}

/* 80CFD3EC-80CFD40C -00001 0020+00 1/0 0/0 0/0 .data            daObjSwHang_METHODS */
static actor_method_class daObjSwHang_METHODS = {
    (process_method_func)daObjSwHang_create1st,
    (process_method_func)daObjSwHang_MoveBGDelete,
    (process_method_func)daObjSwHang_MoveBGExecute,
    NULL,
    (process_method_func)daObjSwHang_MoveBGDraw,
};

/* 80CFD40C-80CFD43C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_SwHang */
extern actor_process_profile_definition g_profile_Obj_SwHang = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_SwHang,        // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjSwHang_c),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  516,                    // mPriority
  &daObjSwHang_METHODS,   // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80CFD274-80CFD274 000098 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
