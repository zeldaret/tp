/**
 * @file d_a_obj_flag.cpp
 * 
*/

#include "d/actor/d_a_obj_flag.h"
#include "dol2asm.h"

//
// Declarations:
//
daObjFlag_c::M_attrs const daObjFlag_c::M_attr = {
    0x457A0000, 0x3F800000, 0x3E99999A, 
    0x000F, 0x07D0, 0x05DC0FA0, 
    0x0708, 0, 0, 0x03E8, 0x0190, 
    0, 0, 0x012C, 0x01, 0x01, 0, 
    0x463B8000, 0x453B8000, 0x463B8000
};

/* 80BEC524-80BEC52C 000038 0008+00 1/1 0/0 0/0 .rodata          @3639 */
SECTION_RODATA static u8 const lit_3639[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BEC524, &lit_3639);


/* 80BEB778-80BEB8F0 000078 0178+00 1/1 0/0 0/0 .text            create_init__11daObjFlag_cFv */
void daObjFlag_c::create_init() {
    field_0x5dc = (*(u32*)dComIfG_getObjectRes(daSetBgObj_c::getArcName(this), "spec.dat")) & 0xffff;
    mPos = cXyz(current.pos.x, current.pos.y + field_0x5dc, current.pos.z);
    mFlagJoints[0].rv = (short)(int)(cM_rnd() * 65535.0f);
    mFlagJoints[1].rv = (short)(int)(cM_rnd() * 65535.0f);
    mFlagJoints[2].rv = mFlagJoints[1].rv;
    mFlagJoints[3].rv = mFlagJoints[2].rv;

    field_0x5e2 = (short)(int)(cM_rnd() * 65535.0f);
    field_0x5e4 = (short)(int)(cM_rnd() * 65535.0f);
    field_0x5e6 = (short)(int)(cM_rnd() * 65535.0f);
    field_0x5e8 = (short)(int)(cM_rnd() * 65535.0f);

    initBaseMtx();
}

/* 80BEB8F0-80BEB984 0001F0 0094+00 1/1 0/0 0/0 .text            initBaseMtx__11daObjFlag_cFv */
void daObjFlag_c::initBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    PSMTXCopy(mDoMtx_stack_c::now, mpModel2->mBaseTransformMtx);
    cullMtx = mpModel2->mBaseTransformMtx;
    if (mpModel1 != NULL) {
        mDoMtx_stack_c::transS(mPos);
        mDoMtx_YrotM(mDoMtx_stack_c::now, shape_angle.y);
        PSMTXCopy(mDoMtx_stack_c::now, mpModel1->mBaseTransformMtx);
        cullMtx = mpModel1->mBaseTransformMtx;
    }
}

/* 80BEB984-80BEB9AC 000284 0028+00 1/1 0/0 0/0 .text getJointAngle__11daObjFlag_cFP5csXyzi */
void daObjFlag_c::getJointAngle(csXyz* i_angle, int i_index) {
    *i_angle = mFlagJoints[i_index].joint1;
}

/* ############################################################################################## */
/* 80BEC52C-80BEC530 000040 0004+00 0/3 0/0 0/0 .rodata          @3759 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3759[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80BEC52C, &lit_3759);
#pragma pop

/* 80BEC53C-80BEC544 000050 0008+00 1/4 0/0 0/0 .rodata          @3764 */
SECTION_RODATA static u8 const lit_3764[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BEC53C, &lit_3764);

/* 80BEB9AC-80BEBC58 0002AC 02AC+00 1/1 0/0 0/0 .text            calcJointAngle__11daObjFlag_cFv */
void daObjFlag_c::calcJointAngle() {
    cXyz direction;
    float power;
    JAISoundID aJStack_80[4];
    csXyz cStack_60;

    dKyw_get_AllWind_vec(&mPos, &direction, &power);
    if(power > 0.0f) {
        Z2GetAudioMgr()->seStartLevel(JAISoundID(Z2SE_OBJ_FLAG_TRAILING), &mPos, power * 127.0f, 0, 1.0, 1.0, -1.0, -1.0, 0);
    }

    cLib_addCalcAngleS(&field_0x5e0, cM_atan2s(direction.x, direction.y), 4, 0x7fff, 0);
    for(int i = 0; i < 4; i++) {
        if(power != 0.0f && i != 0) {
            calcAngleSwingZ(&mFlagJoints[i], power);
        }
        if(i == 0) {
            mFlagJoints[i].joint2 = mFlagJoints[i].joint1;
            mFlagJoints[i].joint1.y = field_0x5e0 + (getSwingY(power), cM_ssin(mFlagJoints[i].rv));
            mFlagJoints[i].rv += power * M_attr.field_0x28;
            cStack_60  = cStack_60 - mFlagJoints[i].joint2;
            mFlagJoints[i].joint3 = cStack_60;
        }
        else {
            mFlagJoints[i].joint2 = mFlagJoints[i].joint1;
            cStack_60 = cStack_60 * M_attr.field_0x04;
            mFlagJoints[i].joint3 = cStack_60;
        }

        if(M_attr.field_0x25 == NULL) {
            mFlagJoints[i].joint1.x = 0;
        }
        else {
            calcAngleSwingX(&mFlagJoints[i], power);
        }
    }
}

/* 80BEBC58-80BEBDAC 000558 0154+00 1/1 0/0 0/0 .text
 * calcAngleSwingZ__11daObjFlag_cFP11FlagJoint_cf               */
void daObjFlag_c::calcAngleSwingZ(FlagJoint_c* param_0, f32 param_1) {
    field_0x5e8 += M_attr.field_0x0e; 
    float swing = param_1 * -((float)(int)M_attr.field_0x0e / 0.7) + (float)(int)M_attr.field_0x0e / 0.7 + (float)(int)M_attr.field_0x1a * cM_ssin(field_0x5e8);
    if(M_attr.field_0x2c < swing) {
        swing = M_attr.field_0x2c;
    }
    if(M_attr.field_0x24 == '\0') {
        param_0->joint1.z = (s16)(int)((float)(int)M_attr.field_0x0e * cM_ssin(param_0->rv));
    }
    else {
        param_0->joint1.z = (s16)(int)(swing * cM_ssin(param_0->rv));
    }

    param_0->rv += (short)(int)(param_1 * M_attr.field_0x30);
}

/* 80BEBDAC-80BEBE64 0006AC 00B8+00 1/1 0/0 0/0 .text
 * calcAngleSwingX__11daObjFlag_cFP11FlagJoint_cf               */
int daObjFlag_c::calcAngleSwingX(FlagJoint_c* param_0, f32 param_1) {
    float swing = ((16384.0f / M_attr.field_0x08) * param_1 - 16384.0f);
    if(swing > 0.0f) {
        swing = 0.0f;
    }

    if((float)(int)(param_0->joint1).x > swing) {
        return cLib_addCalcAngleS((s16*)param_0, -swing, 0x1e, 0x7fff, -0x7fff);
    }
    
    return cLib_chaseS((s16*)param_0, -swing, 500);
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

    float var3 = (float)(int)M_attr.field_0x14 * cM_ssin(field_0x5e2);
    float var4 = (float)(int)M_attr.field_0x16 * cM_ssin(field_0x5e4);
    float var5 = (float)(int)M_attr.field_0x18 * cM_ssin(field_0x5e6);

    if(M_attr.field_0x1c == 0) {
        var3 = 0.0;
    }
    if(M_attr.field_0x1e == 0) {
        var4 = 0.0;
    }
    if(M_attr.field_0x20 == 0) {
        var5 = 0.0;
    }

    field_0x5e2 += M_attr.field_0x1c;
    field_0x5e4 += M_attr.field_0x1e;
    field_0x5e6 += M_attr.field_0x20;
    
    return (int)(short)(int)(var5 + var4 + (swing + var3));
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
            cMtx_copy(now, model->getAnmMtx(jointNo));
            cMtx_copy(now, j3dSys.mCurrentMtx);
    }

    return 1;
}

/* 80BEC0B8-80BEC234 0009B8 017C+00 1/1 0/0 0/0 .text            createSolidHeap__FP10fopAc_ac_c */
static int createSolidHeap(fopAc_ac_c* param_0) {
    return static_cast<daObjFlag_c*>(param_0)->createHeap();
}

/* 80BEC234-80BEC300 000B34 00CC+00 1/0 0/0 0/0 .text            daObjFlag_Draw__FP11daObjFlag_c */
static int daObjFlag_Draw(daObjFlag_c* param_0) {
    return param_0->draw();
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

/* 80BEC3F8-80BEC4E0 000CF8 00E8+00 1/0 0/0 0/0 .text            daObjFlag_Create__FP10fopAc_ac_c */
static int daObjFlag_Create(fopAc_ac_c* param_0) {
    return static_cast<daObjFlag_c*>(param_0)->create();
}

/* 80BEC4E0-80BEC4E4 000DE0 0004+00 1/1 0/0 0/0 .text            __ct__11FlagJoint_cFv */
FlagJoint_c::FlagJoint_c() {
    /* empty function */
}

/* ############################################################################################## */
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
