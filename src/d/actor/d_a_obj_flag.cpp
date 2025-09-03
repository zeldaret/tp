/**
 * @file d_a_obj_flag.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_flag.h"

daObjFlag_c::M_attrs const daObjFlag_c::M_attr = {
    4000.0f, 1.0f, 0.3f, 
    15, 2000, 1500, 4000, 
    1800, 0, 0, 1000, 400, 
    0, 0, 300, 1, 1, 0, 
    12000.0f, 3000.0f, 12000.0f
};

/* 80BEB778-80BEB8F0 000078 0178+00 1/1 0/0 0/0 .text            create_init__11daObjFlag_cFv */
void daObjFlag_c::create_init() {
    field_0x5dc = (*(u32*)dComIfG_getObjectRes(daSetBgObj_c::getArcName(this), "spec.dat")) & 0xffff;
    mPos = cXyz(current.pos.x, current.pos.y + field_0x5dc, current.pos.z);
    mFlagJoints[0].mRv = (short)(cM_rnd() * 65535.0f);
    mFlagJoints[1].mRv = (short)(cM_rnd() * 65535.0f);
    mFlagJoints[2].mRv = mFlagJoints[1].mRv;
    mFlagJoints[3].mRv = mFlagJoints[2].mRv;

    field_0x5e2 = (short)(cM_rnd() * 65535.0f);
    field_0x5e4 = (short)(cM_rnd() * 65535.0f);
    field_0x5e6 = (short)(cM_rnd() * 65535.0f);
    field_0x5e8 = (short)(cM_rnd() * 65535.0f);

    initBaseMtx();
}

/* 80BEB8F0-80BEB984 0001F0 0094+00 1/1 0/0 0/0 .text            initBaseMtx__11daObjFlag_cFv */
void daObjFlag_c::initBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mpModel2->setBaseTRMtx(mDoMtx_stack_c::get());
    fopAcM_SetMtx(this, mpModel2->mBaseTransformMtx);
    if (mpModel1 != NULL) {
        mDoMtx_stack_c::transS(mPos);
        mDoMtx_stack_c::YrotM(shape_angle.y);
        mpModel1->setBaseTRMtx(mDoMtx_stack_c::get());
        fopAcM_SetMtx(this, mpModel1->mBaseTransformMtx);
    }
}

/* 80BEB984-80BEB9AC 000284 0028+00 1/1 0/0 0/0 .text getJointAngle__11daObjFlag_cFP5csXyzi */
void daObjFlag_c::getJointAngle(csXyz* i_angle, int i_index) {
    csXyz* joint =  &mFlagJoints[i_index].mJoint1;
    *i_angle = *joint;
}

/* 80BEB9AC-80BEBC58 0002AC 02AC+00 1/1 0/0 0/0 .text            calcJointAngle__11daObjFlag_cFv */
void daObjFlag_c::calcJointAngle() {
    f32 power;
    cXyz direction;

    dKyw_get_AllWind_vec(&mPos, &direction, &power);
    if(power > 0.0f) {
        u32 val = power * 127.0f;
        Z2GetAudioMgr()->seStartLevel(Z2SE_OBJ_FLAG_TRAILING, &mPos, val, 0, 1.0, 1.0, -1.0, -1.0, 0);
    }

    cLib_addCalcAngleS(&field_0x5e0, cM_atan2s(direction.x, direction.z), 4, 0x7fff, 0);
    FlagJoint_c* joint = &mFlagJoints[0];
    for(int i = 0; i < 4; i++, joint++) {
        if(power && i != 0) {
            calcAngleSwingZ(joint, power);
        }
        if(i == 0) {
            joint->mJoint2 = joint->mJoint1;
            joint->mJoint1.y = (field_0x5e0 + getSwingY(power) * cM_ssin(joint->mRv));
            s16 rv = power * attr().field_0x28;
            joint->mRv = (s16)(joint->mRv + rv);
            joint->mJoint3 = joint->mJoint2 - joint->mJoint1;
        }
        else {
            FlagJoint_c* prevJoint = joint - 1;
            joint->mJoint2 = joint->mJoint1;
            joint->mJoint3 = prevJoint->mJoint3 * attr().field_0x04;
            joint->mJoint1 += joint->mJoint3;
            cLib_addCalcAngleS(&joint->mJoint1.y, 0, attr().field_0x0c, 0x7fff, 0);
            joint->mJoint3 = joint->mJoint1 - joint->mJoint2;
        }

        if(attr().field_0x25 != NULL) {
            if(i == 1) {
                calcAngleSwingX(joint, power);
            }
        }
        else {
            joint->mJoint1.x = 0;
        }
    }
}

/* 80BEBC58-80BEBDAC 000558 0154+00 1/1 0/0 0/0 .text
 * calcAngleSwingZ__11daObjFlag_cFP11FlagJoint_cf               */
 void daObjFlag_c::calcAngleSwingZ(FlagJoint_c* param_0, f32 param_1) {
    f32 swing = param_1 * -(attr().field_0x0e / 0.7f) + attr().field_0x0e / 0.7f;
    f32 tmp = attr().field_0x1a * cM_ssin(field_0x5e8);
    field_0x5e8 = field_0x5e8 + attr().field_0x22;
    swing += tmp;
    
    if(swing > attr().field_0x2c) {
        swing = attr().field_0x2c;
    }
    
    if(attr().field_0x24 != 0) {
        param_0->mJoint1.z = (swing * cM_ssin(param_0->mRv));
    } else {
        param_0->mJoint1.z = (attr().field_0x0e * cM_ssin(param_0->mRv));
    }

    param_0->mRv += (s16)(param_1 * attr().field_0x30);
}

/* 80BEBDAC-80BEBE64 0006AC 00B8+00 1/1 0/0 0/0 .text
 * calcAngleSwingX__11daObjFlag_cFP11FlagJoint_cf               */
void daObjFlag_c::calcAngleSwingX(FlagJoint_c* param_0, f32 param_1) {
    float tmp = 16384.0f / attr().field_0x08;
    float swing = tmp * param_1 - 16384.0f;
    if(swing > 0.0f) {
        swing = 0.0f;
    }

    if(param_0->mJoint1.x > swing) {
        cLib_addCalcAngleS(&param_0->mJoint1.x, -swing, 0x1e, 0x7fff, -0x7fff);
    } else {
        cLib_chaseS(&param_0->mJoint1.x, -swing, 500);
    }
}

/* 80BEBE64-80BEBFC8 000764 0164+00 1/1 0/0 0/0 .text            getSwingY__11daObjFlag_cFf */
f32 daObjFlag_c::getSwingY(f32 param_0) {
    f32 swing = param_0 * 6666.6665f;
    if(swing > 4000.0f) {
        swing = 4000.0f;
    }
    if(param_0 == 0) {
        return swing;
    }

    float var3 = (float)attr().field_0x14 * cM_ssin(field_0x5e2);
    float var4 = (float)attr().field_0x16 * cM_ssin(field_0x5e4);
    float var5 = (float)attr().field_0x18 * cM_ssin(field_0x5e6);

    if(attr().field_0x1c == 0) {
        var3 = 0.0;
    }
    if(attr().field_0x1e == 0) {
        var4 = 0.0;
    }
    if(attr().field_0x20 == 0) {
        var5 = 0.0;
    }

    field_0x5e2 = field_0x5e2 + attr().field_0x1c;
    field_0x5e4 += attr().field_0x1e;
    field_0x5e6 += attr().field_0x20;
    
    return (int)(short)((swing + var3) + var4 + var5);
}

/* 80BEBFC8-80BEC0B8 0008C8 00F0+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static int nodeCallBack(J3DJoint* joint, int param_1) {
    switch(param_1) {
        default:
            return 1;
        case 0:
            csXyz rotation;
            u32 jointNo = joint->getJntNo();
            J3DModel* model = j3dSys.getModel();

            ((daObjFlag_c*)model->getUserArea())->getJointAngle(&rotation, jointNo);
            mDoMtx_stack_c::copy(model->getAnmMtx(jointNo));

            if(rotation.x != 0) {
                mDoMtx_stack_c::XrotM(rotation.x);
            }
            if(rotation.z != 0) {
                mDoMtx_stack_c::ZrotM(rotation.z);
            }
            if(rotation.y != 0) {
                mDoMtx_stack_c::YrotM(rotation.y);
            }

            MtxP now = mDoMtx_stack_c::get();
            model->setAnmMtx(jointNo, now);
            cMtx_copy(now, j3dSys.mCurrentMtx);
    }

    return 1;
}

inline int daObjFlag_c::createHeap() {
    bool tmp;
    s8 angle = (u8)shape_angle.x;
    if (angle <= -1 || angle > 99) {
        tmp = false;
    } else {
        tmp = true;

        char resName[12];
        sprintf(resName, "flag%02d.bmd", angle);

        shape_angle.setall(0);
        current.angle.setall(0);

        J3DModelData* modelData_flag = (J3DModelData*)dComIfG_getObjectRes("FlagObj", resName);
        JUT_ASSERT(447, modelData_flag != 0)
        mpModel1 = mDoExt_J3DModel__create(modelData_flag, 0x80000, 0x11000084);

        for (u16 i = 0; i < 5; i++) {
            J3DJoint* nodePtr = (J3DJoint*)(mpModel1->getModelData()->getJointNodePointer(i));
            if (nodePtr != NULL) {
                nodePtr->setCallBack(nodeCallBack);
                mpModel1->setUserArea((u32)this);
            }
        }
    }

    J3DModelData* modelData_pole =
        (J3DModelData*)dComIfG_getObjectRes(daSetBgObj_c::getArcName(this), "model0.bmd");
    JUT_ASSERT(464, modelData_pole != 0);
    mpModel2 = mDoExt_J3DModel__create(modelData_pole, 0x80000, 0x11000084);
    if (mpModel2 == NULL && tmp && mpModel1 == NULL) {
        return 0;
    }

    return 1;
}

/* 80BEC0B8-80BEC234 0009B8 017C+00 1/1 0/0 0/0 .text            createSolidHeap__FP10fopAc_ac_c */
static int createSolidHeap(fopAc_ac_c* i_actor) {
    daObjFlag_c* i_this = static_cast<daObjFlag_c*>(i_actor);
    return i_this->createHeap();
}

inline int daObjFlag_c::draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    dComIfGd_setListBG();
    g_env_light.setLightTevColorType_MAJI(mpModel2, &tevStr);
    mDoExt_modelUpdateDL(mpModel2);

    if (mpModel1 != NULL) {
        g_env_light.setLightTevColorType_MAJI(mpModel1, &tevStr);
        mDoExt_modelUpdateDL(mpModel1);
    }

    dComIfGd_setList();

    return 1;
}

/* 80BEC234-80BEC300 000B34 00CC+00 1/0 0/0 0/0 .text            daObjFlag_Draw__FP11daObjFlag_c */
static int daObjFlag_Draw(daObjFlag_c* param_0) {
    return param_0->draw();
}

inline int daObjFlag_c::execute() {
    if (mpModel1 == NULL) {
        return 1;
    }

    calcJointAngle();
    return 1;
}

/* 80BEC300-80BEC338 000C00 0038+00 1/0 0/0 0/0 .text            daObjFlag_Execute__FP11daObjFlag_c
 */
static int daObjFlag_Execute(daObjFlag_c* param_0) {
    return param_0->execute();
}

/* 80BEC338-80BEC340 000C38 0008+00 1/0 0/0 0/0 .text            daObjFlag_IsDelete__FP11daObjFlag_c
 */
static bool daObjFlag_IsDelete(daObjFlag_c* param_0) {
    return true;
}

/* 80BEC340-80BEC3BC 000C40 007C+00 1/0 0/0 0/0 .text            daObjFlag_Delete__FP11daObjFlag_c
 */
static int daObjFlag_Delete(daObjFlag_c* param_0) {
    param_0->~daObjFlag_c();

    return 1;
}

/* 80BEC3BC-80BEC3F8 000CBC 003C+00 2/2 0/0 0/0 .text            __dt__11FlagJoint_cFv */
FlagJoint_c::~FlagJoint_c() {}

inline int daObjFlag_c::create() {
    fopAcM_SetupActor(this, daObjFlag_c);

    int phase_state = dComIfG_resLoad(&mPhase, "FlagObj");
    if (phase_state != cPhs_COMPLEATE_e) {
        return phase_state;
    }

    phase_state = dComIfG_resLoad(&mPhase2, daSetBgObj_c::getArcName(this));
    if (phase_state == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createSolidHeap, 0x4000)) {
            return cPhs_ERROR_e;
        }

        create_init();
    }

    return phase_state;
}

/* 80BEC3F8-80BEC4E0 000CF8 00E8+00 1/0 0/0 0/0 .text            daObjFlag_Create__FP10fopAc_ac_c */
static int daObjFlag_Create(fopAc_ac_c* param_0) {
    return static_cast<daObjFlag_c*>(param_0)->create();
}

/* 80BEC4E0-80BEC4E4 000DE0 0004+00 1/1 0/0 0/0 .text            __ct__11FlagJoint_cFv */
FlagJoint_c::FlagJoint_c() {}

/* 80BEC580-80BEC5A0 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjFlag_Method */
static actor_method_class l_daObjFlag_Method = {
    (process_method_func)daObjFlag_Create,
    (process_method_func)daObjFlag_Delete,
    (process_method_func)daObjFlag_Execute,
    (process_method_func)daObjFlag_IsDelete,
    (process_method_func)daObjFlag_Draw,
};

/* 80BEC5A0-80BEC5D0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Flag */
extern actor_process_profile_definition g_profile_Obj_Flag = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Flag,          // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjFlag_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  26,                     // mPriority
  &l_daObjFlag_Method,    // sub_method
  0x00040000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80BEC554-80BEC554 000068 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
