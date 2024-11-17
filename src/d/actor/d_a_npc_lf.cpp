/**
 * @file d_a_npc_lf.cpp
 * 
 * @brief NPC - Little Fish
 *
 * @details Group of several small fish spawned in a group. Used in Fishing Pond.
*/

#include "d/actor/d_a_npc_lf.h"

/* 80A6AA1C-80A6AA28 000000 000C+00 1/1 0/0 0/0 .data            wp$3976 */
static f32 wp[3] = {
    0.5f,
    1.0f,
    2.5f
};

/* 80A69B6C-80A69BB4 0000EC 0048+00 1/1 0/0 0/0 .text            __ct__14daNPC_LF_HIO_cFv */
daNPC_LF_HIO_c::daNPC_LF_HIO_c() {
    field_0x04 = -1;
    field_0x08 = 1.0f;
    field_0x10 = 7.0f;
    field_0x0c = 0.3f;
    field_0x14 = 0.6f;
    field_0x18 = 250.0f;
}

/* 80A69BB4-80A69CD8 000134 0124+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static int nodeCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        int jnt_no = i_joint->getJntNo();
        J3DModel* model = j3dSys.getModel();
        lf_s* _this = (lf_s*)model->getUserArea();
        PSMTXCopy(model->getAnmMtx(jnt_no),*calc_mtx);

        if (jnt_no == 1) {
            cMtx_YrotM(*calc_mtx, _this->field_0x50[1] + (s16)(_this->field_0x58 * 0.3f));
        } else if (jnt_no >= 1 && jnt_no <= 3) {
            cMtx_YrotM(*calc_mtx, (_this->field_0x50[jnt_no]) + (s16)(_this->field_0x58));
        }

        model->setAnmMtx(jnt_no,*calc_mtx);
        PSMTXCopy(*calc_mtx,J3DSys::mCurrentMtx);
    }
    

    return 1;
}

/* 80A69CD8-80A69D90 000258 00B8+00 1/0 0/0 0/0 .text            daNPC_LF_Draw__FP12npc_lf_class */
static int daNPC_LF_Draw(npc_lf_class* i_this) {
    lf_s* fish = i_this->mFish;
    s8 j = 0;

    for (int i = 0; i < i_this->mIter; i++, fish++) {
        if (fish->field_0x17 == 0) {
            if (j == 0) {
                g_env_light.settingTevStruct(0, &fish->field_0x04, &i_this->tevStr);
            }
            j++;

            if (j == 5) {
                j = 0;
            }

            g_env_light.setLightTevColorType_MAJI(fish->mpModel, &i_this->tevStr);
            mDoExt_modelUpdateDL(fish->mpModel);
        }
    }

    return 1;
}

/* 80A6AA90-80A6AA94 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_80A6AA90;

/* 80A6AAA0-80A6AABC 000018 001C+00 4/4 0/0 0/0 .bss             l_HIO */
static daNPC_LF_HIO_c l_HIO;

/* 80A69D90-80A6A1B8 000310 0428+00 1/1 0/0 0/0 .text            npc_lf_move__FP10fopAc_ac_cP4lf_s
 */
 // NONMATCHING - still missing some instructions + float literals
static void npc_lf_move(fopAc_ac_c* param_0, lf_s* param_1) {
    cXyz pos;
    s16 maxStepAngle;
    f32 maxStep;
    if ((u8)(param_1->field_0x18) == 0) {
        param_1->mDistFromPlayer = fopAcM_searchPlayerDistance(param_0);
    }

    switch (param_1->field_0x1c) {        
    case 0:
        if (param_1->field_0x38[0] == 0) {
            for (int i = 0; i < 100; i++) {
                param_1->field_0x20.x = param_0->home.pos.x + cM_rndFX(500.0f);
                param_1->field_0x20.y = param_0->home.pos.y + cM_rndFX(100.0f);
                param_1->field_0x20.z = param_0->home.pos.z + cM_rndFX(500.0f);

                pos = param_1->field_0x20 - param_1->field_0x04;
                pos.y = 0.0f;

                if (pos.abs() > 250.0f) {
                    param_1->field_0x1c = 1;
                    param_1->field_0x38[0] = cM_rndF(30.0f) + 30.0f;
                    break;
                }
            }
        }
        param_1->field_0x40 = 0.1f;
        maxStepAngle = 0x400;
        maxStep = 0.5f;
        break;
    case 1:
        if (param_1->field_0x38[0] != 0) {
            param_1->field_0x1c = 0;
            param_1->field_0x38[0] = cM_rndF(10.0f);
        }

        param_1->field_0x40 = l_HIO.field_0x0c;
        maxStepAngle = 0;
        maxStep = 0.05f;
        break;
    }

    if (param_1->field_0x38[1] == 0) {
        maxStep = 0.5f;
        param_1->field_0x40 = l_HIO.field_0x14;
        maxStepAngle = 0x600;
        
    } else {
        if (param_1->mDistFromPlayer < l_HIO.field_0x18) {
            param_1->field_0x38[1] = cM_rndF(20.0f) + 20.0f;

            if (param_1->field_0x1c == 1)
                param_1->field_0x1c = 0;
        }
    }

    pos = param_1->field_0x20 - param_1->field_0x04;
    s16 old_pos_y = param_1->field_0x10.y;

    cLib_addCalcAngleS2(&param_1->field_0x10.y, cM_atan2s(pos.x,pos.z),4,maxStepAngle);
    cLib_addCalcAngleS2(&param_1->field_0x10.x, -cM_atan2s(pos.y,JMAFastSqrt((pos.x * pos.x) + (pos.z * pos.z))),4,maxStepAngle);
    
    f32 float1 = (old_pos_y - param_1->field_0x10.y);
    float1 *= 5.0f;
    f32 float2 = 4000.0f;

    if (float1 > 4000.0f) {
        if (float1 < -4000.0f) {
            float2 = -4000.0f;
        }
    } else {
        float2 = 4000.0f;
    }

    cLib_addCalc2(&param_1->field_0x58, float2, 0.5f, 1000.0f);
    cLib_addCalc2(&param_1->field_0x44, (param_1->field_0x3c * l_HIO.field_0x08), 1.0f, maxStep);
}

/* 80A6A1B8-80A6A420 000738 0268+00 1/1 0/0 0/0 .text            action__FP10fopAc_ac_cP4lf_s */
// NONMATCHING - second for loop incorrect
static void action(fopAc_ac_c* param_0, lf_s* param_1) {
    cXyz pos;
    param_1->field_0x18++;

    for (int i  = 0; i < 2; i++) {
        if (param_1->field_0x38[i] != 0) {
            param_1->field_0x38[i]--;
        }
    }

    switch (param_1->mActionMode) {
    case npc_lf_class::ACT_MOVE:
        npc_lf_move(param_0,param_1);
    }

    cMtx_YrotS(*calc_mtx,param_1->field_0x10.y);
    cMtx_XrotM(*calc_mtx,param_1->field_0x10.x);

    pos.x = 0.0f;
    pos.y = 0.0f;
    pos.z = param_1->field_0x44 * l_HIO.field_0x08;

    MtxPosition(&pos,&pos);

    param_1->field_0x04 += pos;

    cLib_addCalc2(&param_1->field_0x3c,param_1->field_0x40,1.0f,0.2f);
    cLib_addCalc2(&param_1->field_0x5c,(param_1->field_0x3c * 2000.0f + 2000.0f),0.5f,200.0f);

    param_1->field_0x4c[1] = param_1->field_0x3c * 13000.0f + 2000.0f;
    param_1->field_0x4c[0] += param_1->field_0x4c[1];

    for (int i = 0, j = 0; i < 3; i++, j++) {
        
        f32 tmp = wp[j] * param_1->field_0x5c;
        param_1->field_0x50[i] = tmp * cM_ssin(param_1->field_0x4c[j]);
    }

    param_1->field_0x50[0] = param_1->field_0x5c * cM_ssin((param_1->field_0x4c[0] - 7000)) * 0.3f;

    mDoMtx_stack_c::transS(param_1->field_0x04.x,param_1->field_0x04.y,param_1->field_0x04.z);
    mDoMtx_stack_c::YrotM(param_1->field_0x10.y + param_1->field_0x50[0]);
    mDoMtx_stack_c::XrotM(param_1->field_0x10.x);
    f32 value = param_1->field_0x60 * l_HIO.field_0x08;
    mDoMtx_stack_c::scaleM(value,value,value);
    param_1->mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80A6A420-80A6A514 0009A0 00F4+00 2/1 0/0 0/0 .text            daNPC_LF_Execute__FP12npc_lf_class
 */
// NONMATCHING - regalloc
static int daNPC_LF_Execute(npc_lf_class* i_this) {
    camera_class* camera = dComIfGp_getCamera(0);
    lf_s* fish = i_this->mFish;
    
    for (int i = 0; i < i_this->mIter; i++, fish++) {
        cXyz pos;
        pos.x = fish->field_0x04.x - camera->mLookat.mEye.x;
        pos.z = fish->field_0x04.z - camera->mLookat.mEye.z;

        f32 res = JMAFastSqrt((pos.x * pos.x) + (pos.z * pos.z));
        if (res < 1500.0f) {
            fish->field_0x17 = 0;
            action(i_this, fish);
        } else {
            fish->field_0x17 = 1;
        }
    }

    return 1;
}

/* 80A6A514-80A6A51C 000A94 0008+00 1/0 0/0 0/0 .text            daNPC_LF_IsDelete__FP12npc_lf_class
 */
static bool daNPC_LF_IsDelete(npc_lf_class* param_0) {
    return true;
}

/* 80A6A51C-80A6A570 000A9C 0054+00 1/0 0/0 0/0 .text            daNPC_LF_Delete__FP12npc_lf_class
 */
static int daNPC_LF_Delete(npc_lf_class* i_this) {
    dComIfG_resDelete(&i_this->mPhase, "NPC_LF");

    if (i_this->field_0x1fc0 != 0) {
        data_80A6AA90 = 0;
    }

    return 1;
}

/* 80A6A570-80A6A650 000AF0 00E0+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    u16 jnt_no;
    npc_lf_class* a_this = static_cast<npc_lf_class*>(i_this);
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("NPC_LF",3);

    for (u16 i = 0; modelData->getJointNum() > i; i++) {
        modelData->getJointNodePointer(i)->setCallBack(nodeCallBack);
    }

    lf_s* fish = a_this->mFish;

    for (int i = 0; i < a_this->mIter; i++, fish++) {        
        fish->mpModel = mDoExt_J3DModel__create(modelData, J3DMdlFlag_Unk80000,0x11000084);

        if (!fish->mpModel) {
            return 0;
        }

        fish->mpModel->setUserArea((u32)fish);
    }

    return 1;
}

/* 80A6A650-80A6A8A4 000BD0 0254+00 1/0 0/0 0/0 .text            daNPC_LF_Create__FP10fopAc_ac_c */
// NONMATCHING - float literals
static cPhs__Step daNPC_LF_Create(fopAc_ac_c* i_this) {
    fopAcM_SetupActor(i_this, npc_lf_class);
    npc_lf_class* a_this = static_cast<npc_lf_class*>(i_this);

    cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&a_this->mPhase, "NPC_LF");

    if (phase == cPhs_COMPLEATE_e) {
        a_this->mParam1 = fopAcM_GetParam(a_this);

        if (a_this->mParam1 == 0xff) {
            a_this->mIter = 32;
        } else {
            a_this->mIter = a_this->mParam1;

            if (a_this->mIter > 64)
                a_this->mIter = 64;
        }

        a_this->mParam2 = fopAcM_GetParam(a_this) >> 8;

        if (a_this->mParam2 == 1) {
            a_this->home.pos.set(6457.0f, 50.0f, -5188.0f);
            a_this->current.pos = a_this->home.pos;
            a_this->current.angle = a_this->home.angle;
            a_this->current.roomNo = a_this->home.roomNo;
            a_this->current.field_0x13 = a_this->home.field_0x13;
        }

        if (!fopAcM_entrySolidHeap(a_this, useHeapInit, a_this->mIter * 0x920)) {
            return cPhs_ERROR_e;
        }

        if (data_80A6AA90 == 0) {
            a_this->field_0x1fc0 = 1;
            data_80A6AA90 = 1;
            l_HIO.field_0x04 = -1;
        }

        lf_s* fish = a_this->mFish;

        for (int i = 0; i < a_this->mIter; i++, fish++) {
            fish->mActionMode = npc_lf_class::ACT_MOVE;
            fish->field_0x04.x = a_this->current.pos.x + cM_rndFX(300.0f);
            fish->field_0x04.y = a_this->current.pos.y + cM_rndFX(50.0f);
            fish->field_0x04.z = a_this->current.pos.z + cM_rndFX(300.0f);
            fish->field_0x10.y = cM_rndF(65536.0f);
            fish->field_0x48 = cM_rndFX(0.1f) + 0.6f;
            fish->field_0x60 = cM_rndFX(0.1f) + 0.6f;
            // fish++;
        }

        daNPC_LF_Execute(a_this);
    }

    return phase;
}

/* 80A6A8A4-80A6A8E0 000E24 003C+00 1/1 0/0 0/0 .text            __dt__4lf_sFv */
lf_s::~lf_s() {}

/* 80A6A8E0-80A6A8E4 000E60 0004+00 1/1 0/0 0/0 .text            __ct__4lf_sFv */
lf_s::lf_s() {}

/* 80A6A8E4-80A6A92C 000E64 0048+00 2/1 0/0 0/0 .text            __dt__14daNPC_LF_HIO_cFv */
daNPC_LF_HIO_c::~daNPC_LF_HIO_c() {}

/* 80A6AA28-80A6AA48 -00001 0020+00 1/1 0/0 0/0 .data            l_daNPC_LF_Method */
static actor_method_class l_daNPC_LF_Method = {
    (process_method_func)daNPC_LF_Create,
    (process_method_func)daNPC_LF_Delete,
    (process_method_func)daNPC_LF_Execute,
    (process_method_func)daNPC_LF_IsDelete,
    (process_method_func)daNPC_LF_Draw,
};

/* 80A6AA48-80A6AA78 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_LF */
extern actor_process_profile_definition g_profile_NPC_LF = {
  fpcLy_CURRENT_e,       // mLayerID
  7,                     // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_NPC_LF,           // mProcName
  &g_fpcLf_Method.mBase, // sub_method
  sizeof(npc_lf_class),  // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  702,                   // mPriority
  &l_daNPC_LF_Method,    // sub_method
  0x00040000,            // mStatus
  fopAc_ENEMY_e,         // mActorType
  fopAc_CULLBOX_0_e,     // cullType
};
