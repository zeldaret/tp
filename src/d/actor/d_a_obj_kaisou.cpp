/**
 * @file d_a_obj_kaisou.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_kaisou.h"
#include "d/d_cc_d.h"
#include "d/actor/d_a_player.h"
#include "d/d_s_play.h"

enum Joint {
    /* 0x0 */ JNT_JOINT1,
    /* 0x1 */ JNT_JOINT2,
    /* 0x2 */ JNT_JOINT3,
};

/* 80C34058-80C34288 000078 0230+00 1/1 0/0 0/0 .text            ctrlJoint__13daObjKaisou_cFP8J3DJointP8J3DModel */
int daObjKaisou_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    J3DJoint* joint = i_joint;
    int jntNo = joint->getJntNo();
    mDoMtx_stack_c::copy(i_model->getAnmMtx(jntNo));

    switch (jntNo) {
        case JNT_JOINT1:
            mDoMtx_stack_c::ZrotM((s16)mJoint1ZRot);
            mDoMtx_stack_c::YrotM((s16)mJointYRot);
            mDoMtx_stack_c::XrotM(mJoint1ZRot + field_0x578 * 0.7f);
            mDoMtx_stack_c::YrotM(-mJointYRot);
            break;
        
        case JNT_JOINT2:
            mDoMtx_stack_c::ZrotM((s16)mJoint2ZRot);
            mDoMtx_stack_c::YrotM((s16)mJointYRot);
            mDoMtx_stack_c::XrotM(mJoint2ZRot + field_0x578 * 0.5f);
            mDoMtx_stack_c::YrotM(-mJointYRot);
            break;

        case JNT_JOINT3:
            mDoMtx_stack_c::ZrotM((s16)mJoint3ZRot);
            mDoMtx_stack_c::YrotM((s16)mJointYRot);
            mDoMtx_stack_c::XrotM((s16)mJoint3ZRot);
            mDoMtx_stack_c::YrotM(-mJointYRot);
            break;
    }

    i_model->setAnmMtx(jntNo, mDoMtx_stack_c::get());
    #if DEBUG
    cMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
    #else
    MTXCopy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
    #endif
    return 1;
}

/* 80C34288-80C342D4 0002A8 004C+00 1/1 0/0 0/0 .text            JointCallBack__FP8J3DJointi */
static int JointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daObjKaisou_c* i_this = (daObjKaisou_c*)model->getUserArea();
        if (i_this != NULL) {
            i_this->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

/* 80C34FC0-80C34FC4 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "M_kaisou";

int daObjKaisou_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, "M_kaisou.bmd");
    JUT_ASSERT(174, modelData != NULL);
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    return 1;
}

/* 80C342D4-80C3434C 0002F4 0078+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* a_this) {
    daObjKaisou_c* i_this = (daObjKaisou_c*)a_this;
    return i_this->CreateHeap();
}

/* 80C3434C-80C3436C 00036C 0020+00 1/0 0/0 0/0 .text            daObjKaisou_Create__FP10fopAc_ac_c */
static int daObjKaisou_Create(fopAc_ac_c* a_this) {
    daObjKaisou_c* i_this = (daObjKaisou_c*)a_this;
    fpc_ProcID id = fopAcM_GetID(a_this);
    return i_this->create();
}

/* 80C3436C-80C34390 00038C 0024+00 1/0 0/0 0/0 .text daObjKaisou_Delete__FP13daObjKaisou_c */
static int daObjKaisou_Delete(daObjKaisou_c* i_this) {
    fpc_ProcID id = fopAcM_GetID(i_this);
    i_this->Delete();
    return 1;
}

/* 80C34390-80C343F0 0003B0 0060+00 1/1 0/0 0/0 .text            initCcCylinder__13daObjKaisou_cFv */
void daObjKaisou_c::initCcCylinder() {
    mStts.Init(1, 0xFF, this);

    const static dCcD_SrcCyl ccCylSrc = {
        {
            {0x0, {{0x0, 0x0, 0x0}, {0x2, 0x11}, 0x79}}, // mObj
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4}, // mGObjTg
            {0x0}, // mGObjCo
        }, // mObjInf
        {
            {0.0f, 0.0f, 0.0f}, // mCenter
            50.0f, // mRadius
            100.0f // mHeight
        } // mCyl
    };
    mCyl.Set(ccCylSrc);
    mCyl.SetStts(&mStts);
    mCyl.SetC(current.pos);
}

/* 80C343F0-80C34438 000410 0048+00 1/1 0/0 0/0 .text            setCcCylinder__13daObjKaisou_cFv */
void daObjKaisou_c::setCcCylinder() {
    mCyl.SetC(current.pos);
    dComIfG_Ccsp()->Set(&mCyl);
}

/* 80C34438-80C34824 000458 03EC+00 2/1 0/0 0/0 .text            ObjHit__13daObjKaisou_cFv */
void daObjKaisou_c::ObjHit() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    f32 playerSpeedF = fopAcM_GetSpeedF(player);
    f32 absXZ = current.pos.absXZ(fopAcM_GetPosition(player));

    if (mInvulnerabilityTimer > 0) {
        mCyl.ClrTgHit();
        mCyl.OffTgSetBit();
    } else {
        mCyl.OnTgSetBit();

        if (mCyl.ChkCoHit()) {
            if (mCyl.GetCoHitObj()->GetStts()->GetWeightUc() != 1) {
                field_0x576 += playerSpeedF * (yREG_F(1) + 4.0f);
                field_0x580 += playerSpeedF * (yREG_F(2) + 1.2f);

                if (field_0x580 > 0x135) {
                    field_0x580 = 0x135;
                }

                field_0x57a = yREG_F(3) + 6144.0f;
                cLib_addCalcAngleS(&field_0x582, (s16)(fopAcM_searchPlayerAngleY(this) + 0x8000), 0x50, 0x1000, 0);
            }
        }

        if (mCyl.ChkTgHit()) {
            if (absXZ < 120.0f) {
                field_0x568++;
            }

            field_0x580 = 0x136;
            field_0x57a += (aREG_F(2) + 4096.0f);
            field_0x576 += (aREG_F(3) + 4096.0f);
            mInvulnerabilityTimer = 20;

            daPy_getPlayerActorClass()->getCutType();

            switch (daPy_getPlayerActorClass()->getCutType()) {
                case daPy_py_c::CUT_TYPE_NM_RIGHT:
                case daPy_py_c::CUT_TYPE_FINISH_RIGHT:
                case daPy_py_c::CUT_TYPE_MORTAL_DRAW_B:
                    field_0x582 = fopAcM_searchPlayerAngleY(this) + 0x4000;
                    break;

                case daPy_py_c::CUT_TYPE_NM_LEFT:
                case daPy_py_c::CUT_TYPE_FINISH_LEFT:
                case daPy_py_c::CUT_TYPE_TURN_LEFT:
                    field_0x582 = fopAcM_searchPlayerAngleY(this) - 0x4000;
                    break;

                default:
                    field_0x582 = fopAcM_searchPlayerAngleY(this) + 0x8000;
                    break;
            }
        }

        if (field_0x57a == 0) {
            field_0x569 = 0;
        }

        if (field_0x57a > 0x2000) {
            field_0x57a = 0x2000;
        }

        if (field_0x576 > 0x1500) {
            field_0x576 = 0x1500;
        }
    }
}

/* 80C34824-80C34A98 000844 0274+00 1/1 0/0 0/0 .text            Execute__13daObjKaisou_cFv */
int daObjKaisou_c::Execute() {
    mInvulnerabilityTimer--;
    if (mInvulnerabilityTimer <= 0) {
        mInvulnerabilityTimer = 0;
    }

    ObjHit();

    field_0x57c += field_0x57e;
    mJoint1ZRot = field_0x574 * (HREG_F(0) + 1.0f) * cM_ssin(field_0x57c * 4.0f);
    mJoint2ZRot = field_0x574 * (HREG_F(1) + 1.5) * cM_ssin(field_0x57c * 4.0f - 16384.0f);
    mJoint3ZRot = field_0x574 * (HREG_F(2) + 1.8f) * cM_ssin(field_0x57c * 4.0f - 32768.0f);
    
    cLib_addCalcAngleS(&field_0x57e, field_0x580, 0x15, 0x1000, 0);
    cLib_addCalcAngleS(&field_0x580, 0x80, 0x15, 0x1000, 0);
    cLib_addCalcAngleS(&field_0x574, field_0x576, 0x15, 0x1000, 0);
    cLib_addCalcAngleS(&field_0x578, field_0x57a, 0x15, 0x1000, 0);
    cLib_addCalcAngleS(&field_0x57a, 0, 0x15, 0x1000, 0);
    cLib_addCalcAngleS(&field_0x576, 0x500, 0x20, 0x1000, 0);
    cLib_addCalcAngleS(&field_0x582, 0x1000, 0x20, 0x1000, 0);

    setCcCylinder();
    setBaseMtx();
    return 1;
}

/* 80C34A98-80C34ACC 000AB8 0034+00 1/1 0/0 0/0 .text            Delete__13daObjKaisou_cFv */
int daObjKaisou_c::Delete() {
    dComIfG_resDelete(&mPhase, l_arcName);
    return 1;
}

/* 80C34ACC-80C34B34 000AEC 0068+00 1/1 0/0 0/0 .text            setBaseMtx__13daObjKaisou_cFv */
void daObjKaisou_c::setBaseMtx() {
    cXyz scale(yREG_F(5) + 2.0f, yREG_F(5) + 2.0f, yREG_F(5) + 2.0f);
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::scaleM(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

int daObjKaisou_c::Draw() {
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    return 1;
}

/* 80C34B34-80C34BB8 000B54 0084+00 1/0 0/0 0/0 .text            daObjKaisou_Draw__FP13daObjKaisou_c */
static int daObjKaisou_Draw(daObjKaisou_c* i_this) {
    return i_this->Draw();
}

/* 80C34BB8-80C34BD8 000BD8 0020+00 2/1 0/0 0/0 .text daObjKaisou_Execute__FP13daObjKaisou_c */
static int daObjKaisou_Execute(daObjKaisou_c* i_this) {
    return i_this->Execute();
}

/* 80C34BD8-80C34E4C 000BF8 0274+00 1/1 0/0 0/0 .text            create__13daObjKaisou_cFv */
cPhs__Step daObjKaisou_c::create() {
    fopAcM_ct(this, daObjKaisou_c);

    cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&mPhase, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        if (dComIfGs_isStageBossEnemy() && dComIfGp_getStartStageRoomNo() == 50) {
            if (strcmp("D_MN01A", dComIfGp_getStartStageName()) == 0) {
                return cPhs_ERROR_e;
            }
        }

        OS_REPORT("Kaisou PARAM %x\n", fopAcM_GetParam(this));
        if (!fopAcM_entrySolidHeap(this, useHeapInit, 0x8D0)) {
            return cPhs_ERROR_e;
        }

        gravity = nREG_F(0) + -9.0f;

        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        
        cXyz pos(current.pos.x, current.pos.y + 100.0f, current.pos.z);
        if (fopAcM_gc_c::gndCheck(&pos)) {
            current.pos.y = fopAcM_gc_c::getGroundY();
        }

        mpModel->setUserArea((uintptr_t)this);
        for (u16 i = 0; i < mpModel->getModelData()->getJointNum(); i++) {
            mpModel->getModelData()->getJointNodePointer(i)->setCallBack(JointCallBack);
        }

        field_0x57e = 0x80;
        field_0x574 = 0x500;
        field_0x576 = 0x500;
        field_0x57a = 0;
        initCcCylinder();
        fopAcM_setCullSizeBox(this, -1000.0f, -500.0f, -1000.0f, 1000.0f, 500.0f, 1000.0f);
        daObjKaisou_Execute(this);
    }

    return phase;
}

/* 80C34EDC-80C34EE4 000EFC 0008+00 1/0 0/0 0/0 .text daObjKaisou_IsDelete__FP13daObjKaisou_c */
static int daObjKaisou_IsDelete(daObjKaisou_c* i_this) {
    return 1;
}

/* 80C35038-80C35058 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjKaisou_Method */
static actor_method_class l_daObjKaisou_Method = {
    (process_method_func)daObjKaisou_Create,
    (process_method_func)daObjKaisou_Delete,
    (process_method_func)daObjKaisou_Execute,
    (process_method_func)daObjKaisou_IsDelete,
    (process_method_func)daObjKaisou_Draw,
};

/* 80C35058-80C35088 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Kaisou */
extern actor_process_profile_definition g_profile_Obj_Kaisou = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Kaisou,        // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjKaisou_c),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  460,                    // mPriority
  &l_daObjKaisou_Method,  // sub_method
  0x00040000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
