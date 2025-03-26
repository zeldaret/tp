/**
 * @file d_a_b_mgn.cpp
 * 
*/

#include "d/actor/d_a_b_mgn.h"
#include "dol2asm.h"
#include "d/d_camera.h"
#include "m_Do/m_Do_graphic.h"
#include "f_op/f_op_actor_enemy.h"
#include "d/actor/d_a_obj_bhashi.h"
#include "f_op/f_op_msg_mng.h"

UNK_REL_DATA;

/* ############################################################################################## */
/* 8060FE0C-8060FE10 00002C 0004+00 0/1 0/0 0/0 .rodata          @3949 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3949 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x8060FE0C, &lit_3949);
#pragma pop

/* 8060FE10-8060FE14 000030 0004+00 0/3 0/0 0/0 .rodata          @3950 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3950 = 50.0f;
COMPILER_STRIP_GATE(0x8060FE10, &lit_3950);
#pragma pop

/* 8060FE14-8060FE18 000034 0004+00 0/3 0/0 0/0 .rodata          @3951 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3951 = 70.0f;
COMPILER_STRIP_GATE(0x8060FE14, &lit_3951);
#pragma pop

/* 806100CC-8061010C 000038 0040+00 0/1 0/0 0/0 .data cc_sph_src__23@unnamed@d_a_b_mgn_cpp@ */
static dCcD_SrcSph cc_sph_src = {
    {
        {0, {{AT_TYPE_CSTATUE_SWING, 2, 3}, {0xDCFBFDFD, 0x43}, 0x75}}, // mObj
        {dCcD_SE_HARD_BODY, 0, 6, 0, 0}, // mGObjAt
        {dCcD_SE_NONE, 0, 0, 0, 0x303}, // mGObjTg
        {0} // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 8061010C-8061014C 000078 0040+00 0/1 0/0 0/0 .data at_sph_src__23@unnamed@d_a_b_mgn_cpp@ */
static dCcD_SrcSph at_sph_src = {
    {
        {0, {{AT_TYPE_CSTATUE_BOSS_SWING, 2, 12}, {0xDCFBFDFD, 0}, 0}}, // mObj
        {dCcD_SE_HARD_BODY, 0, 13, 0, 0}, // mGObjAt
        {dCcD_SE_NONE, 0, 0, 0, 2}, // mGObjTg
        {0} // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 35.0f} // mSph
    } // mSphAttr
};

/* 8061014C-8061018C 0000B8 0040+00 0/1 0/0 0/0 .data tg_sph_src__23@unnamed@d_a_b_mgn_cpp@ */
static dCcD_SrcSph tg_sph_src = {
    {
        {0, {{AT_TYPE_CSTATUE_SWING, 0, 12}, {0x04402020, 2}, 0}}, // mObj
        {dCcD_SE_METAL, 0, 1, 0, 0}, // mGObjAt
        {dCcD_SE_NONE, 0, 0, 0, 2}, // mGObjTg
        {0} // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 35.0f} // mSph
    } // mSphAttr
};

/* 8061018C-8061019C 0000F8 000F+01 1/1 0/0 0/0 .data body_front_sph__23@unnamed@d_a_b_mgn_cpp@ */
static u8 body_front_sph[15 + 1 /* padding */] = {
    0x01,
    0x00,
    0x01,
    0x01,
    0x01,
    0x01,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x01,
    /* padding */
    0x00,
};

/* 8060572C-8060577C 0000EC 0050+00 1/1 0/0 0/0 .text            __ct__13daB_MGN_HIO_cFv */
daB_MGN_HIO_c::daB_MGN_HIO_c() {
    // NONMATCHING
}

/* 8060577C-8060584C 00013C 00D0+00 1/1 0/0 0/0 .text ctrlJoint__9daB_MGN_cFP8J3DJointP8J3DModel */
int daB_MGN_c::ctrlJoint(J3DJoint* param_1, J3DModel* param_2) {
    int jntNo = param_1->getJntNo();
    mDoMtx_stack_c::copy(param_2->getAnmMtx(jntNo));

    if (jntNo == 1) {
        mDoMtx_stack_c::YrotM(shape_angle.y - field_0xb16);
    } else if (jntNo == 25) {
        mDoMtx_stack_c::YrotM(field_0xb16 - field_0xb14);
    }

    param_2->setAnmMtx(jntNo, mDoMtx_stack_c::get());
    cMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
    return 1;
}

/* 8060584C-80605898 00020C 004C+00 1/1 0/0 0/0 .text JointCallBack__9daB_MGN_cFP8J3DJointi */
int daB_MGN_c::JointCallBack(J3DJoint* i_joint, int param_1) {
    if (!(int)i_joint) {
        J3DModel* model = j3dSys.getModel();
        daB_MGN_c* userArea = (daB_MGN_c *)model->getUserArea();

        if (userArea) {
            userArea->ctrlJoint(i_joint, model);
        }
    }
    return 1;
}

/* 80610440-80610444 000008 0004+00 2/2 0/0 0/0 .bss             None */
static char data_80610440;

/* 80610450-80610474 000018 0024+00 6/6 0/0 0/0 .bss             l_HIO */
static daB_MGN_HIO_c l_HIO;

/* 80605898-80605C8C 000258 03F4+00 1/1 0/0 0/0 .text            draw__9daB_MGN_cFv */
int daB_MGN_c::draw() {
    // NONMATCHING
    cXyz local_9c, local_a8;

    J3DModel* model = mpModelMorf->getModel();
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &tevStr);

    J3DModelData* modelData = model->getModelData();
    field_0x5c0->entry(&model->getModelData()->getMaterialTable(), field_0x5c0->getFrame());
    field_0x5c4->entry(&model->getModelData()->getMaterialTable(), field_0x5c4->getFrame());

    J3DMaterial* matNodePtr = modelData->getMaterialNodePointer(3);
    J3DGXColorS10* tevColor = matNodePtr->getTevColor(0);

    tevColor->r = l_HIO.field_0x24 * field_0x5c8;
    tevColor->g = l_HIO.field_0x28 * field_0x5c8;
    tevColor->b = l_HIO.field_0x2c * field_0x5c8;

    mpModelMorf->entryDL();

    local_9c = cXyz(current.pos.x, current.pos.y + 100.0f, current.pos.z);
    f32 fVar1 = 4000.0f - current.pos.y;

    if (fVar1 < 0.0f) {
        fVar1 = 0.0f;
    }

    tevStr.field_0x344 = (fVar1 / 4000.0f) * field_0xae8;
    
    dBgS_GndChk local_90;

    if (field_0xb5c.m_ground_h == -1000000000) {
        local_a8 = cXyz(current.pos);
        local_90.SetPos(&local_a8);
        dComIfG_Bgsp().GroundCross(&local_90);
    } else {
        local_90 = field_0xb5c.m_gnd;
        field_0xb5c.GetGroundH();
    }

    field_0xa94 = dComIfGd_setShadow(field_0xa94, 0, model, &local_9c,
        3000.0f, 0.0f, current.pos.y, field_0xb5c.m_ground_h,
        field_0xb5c.m_gnd, &tevStr, 0, 1.0f, &dDlst_shadowControl_c::mSimpleTexObj);

    for (int i = 0; i < 20; i++) {
        if (field_0x990[i] != 0) {
            modelData = field_0x5d0[i]->getModelData();
            matNodePtr = modelData->getMaterialNodePointer(0);

            g_env_light.setLightTevColorType_MAJI(field_0x5d0[i], &tevStr);
            mDoExt_modelUpdateDL(field_0x5d0[i]);
        }
    }

    this->drawHideSmokeEffect();

    if (field_0xaf0 != 0.0f) {
        mDoGph_gInf_c::onBlure();
    } else {
        mDoGph_gInf_c::offBlure();
    }

    return 1; // Placeholder
}

/* 80605C8C-80605CAC 00064C 0020+00 1/0 0/0 0/0 .text            daB_MGN_Draw__FP9daB_MGN_c */
static int daB_MGN_Draw(daB_MGN_c* i_this) {
    return i_this->draw();
}

/* 80605CAC-80605D78 00066C 00CC+00 1/1 0/0 0/0 .text            s_obj_sub__FPvPv */
static void* s_obj_sub(void* param_1, void* param_2) {
    // NONMATCHING
    if (fopAcM_IsActor(param_1)) {
        if (!fpcM_IsCreating(fopAcM_GetID(param_1)) && fopAcM_GetName(param_1) == 0x308) {
            fopAc_ac_c* a_this1 = (fopAc_ac_c*)param_1;
            fopAc_ac_c* a_this2 = (fopAc_ac_c*)param_2;
            if ((fopAcM_searchActorDistance(a_this1, a_this2)) < 1500.0f) {
                f32 fVar1 = fopAcM_GetSpeedF(a_this1);
                if (fVar1 != 0.0f) {
                    s16 sVar1 = *(s16*)((int)param_1 + 0x4de);
                    s16 sVar2 = fopAcM_searchActorAngleY(a_this1, a_this2);

                    int absValue = abs((s16)(sVar1 - sVar2));
                    if (absValue < 0x2000) {
                        return param_1;
                    }
                }
            }
        }
    }
    return NULL;
}

/* 80605D78-8060601C 000738 02A4+00 2/2 0/0 0/0 .text            setDashSmokeEffect__9daB_MGN_cFv */
void daB_MGN_c::setDashSmokeEffect() {
    // NONMATCHING
    static f32 foot_rand_frame[8] = {
        10.0f, 16.0f, 18.0f, 2.0f,
        64.0f, 68.0f, 63.0f, 69.0f
    };

    int iVar4 = -1;
    int iVar5 = 0;
    int unaff_r28;
    if (checkBck(21) || checkBck(15)) {
        iVar5 = 4;
    }

    if (mpModelMorf->checkFrame(foot_rand_frame[iVar5])) {
        iVar4 = 0x34;
        dComIfGp_getVibration().StartShock(2, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
        mSound.startCreatureSound(Z2SE_EN_MGN_FOOTNOTE, 0, -1);
        unaff_r28 = 0;
    } else if (mpModelMorf->checkFrame(foot_rand_frame[iVar5 + 1])) {
        iVar4 = 0x25;
        dComIfGp_getVibration().StartShock(2, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
        mSound.startCreatureSound(Z2SE_EN_MGN_FOOTNOTE, 0, -1);
        unaff_r28 = 1;
    } else if (mpModelMorf->checkFrame(foot_rand_frame[iVar5 + 2])) {
        iVar4 = 0x47;
        unaff_r28 = 2;
    } else if (mpModelMorf->checkFrame(foot_rand_frame[iVar5 + 3])) {
        iVar4 = 0x43;
        unaff_r28 = 3;
    }

    if (iVar4 != -1) {
        dBgS_GndChk dStack_6c;
        cXyz local_78;

        mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(iVar4));
        mDoMtx_stack_c::multVecZero(&local_78);

        local_78.y += 100.0f;
        dStack_6c.SetPos(&local_78);
        local_78.y = dComIfG_Bgsp().GroundCross(&dStack_6c);

        if (local_78.y != -1000000000) {
            fopAcM_effSmokeSet1(&field_0x25f8[unaff_r28], &field_0x2608[unaff_r28], &local_78, NULL, 3.0f, &tevStr, 1);
        }
    }
}

/* 8060601C-806062C0 0009DC 02A4+00 2/2 0/0 0/0 .text            setBackJumpEffect__9daB_MGN_cFv */
void daB_MGN_c::setBackJumpEffect() {
    // NONMATCHING
    int iVar2 = -1;
    int unaff_r29;
    if (mpModelMorf->checkFrame(40.0f)) {
        iVar2 = 0x34;
        dComIfGp_getVibration().StartShock(2, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
        mSound.startCreatureSound(Z2SE_EN_MGN_FOOTNOTE, 0, -1);
        unaff_r29 = 0;
    } else if (mpModelMorf->checkFrame(37.0f)) {
        iVar2 = 0x25;
        dComIfGp_getVibration().StartShock(2, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
        mSound.startCreatureSound(Z2SE_EN_MGN_FOOTNOTE, 0, -1);
        unaff_r29 = 1;
    } else if (mpModelMorf->checkFrame(35.0f)) {
        iVar2 = 0x47;
        dComIfGp_getVibration().StartShock(2, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
        mSound.startCreatureSound(Z2SE_EN_MGN_FOOTNOTE, 0, -1);
        unaff_r29 = 2;
    } else if (mpModelMorf->checkFrame(36.0f)) {
        iVar2 = 0x43;
        unaff_r29 = 3;
    }

    if (iVar2 != -1) {
        dBgS_GndChk dStack_6c;
        cXyz local_78;

        mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(iVar2));
        mDoMtx_stack_c::multVecZero(&local_78);

        local_78.y += 100.0f;
        dStack_6c.SetPos(&local_78);
        local_78.y = dComIfG_Bgsp().GroundCross(&dStack_6c);

        if (local_78.y != -1000000000) {
            fopAcM_effSmokeSet1(&field_0x25f8[unaff_r29], &field_0x2608[unaff_r29], &local_78, NULL, 3.0f, &tevStr, 1);
        }
    }
}

/* 806062C0-80606424 000C80 0164+00 1/1 0/0 0/0 .text            setSlideSmokeEffect__9daB_MGN_cFv */
void daB_MGN_c::setSlideSmokeEffect() {
    // NONMATCHING
    static int foot_jnt_4276[4] = {
        0x34, 0x25, 0x47, 0x43,
    };

    dBgS_GndChk dStack_98;
    cXyz local_a4;
    mSound.startCreatureSoundLevel(Z2SE_EN_MGN_SLIP, 0, -1);

    for (int i = 0; i < 4; i++) {
        mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(foot_jnt_4276[i]));
        mDoMtx_stack_c::multVecZero(&local_a4);

        local_a4.y += 100.0f;
        dStack_98.SetPos(&local_a4);
        local_a4.y = dComIfG_Bgsp().GroundCross(&dStack_98);

        if (local_a4.y != -1000000000) {
            fopAcM_effSmokeSet1(&field_0x25f8[i], &field_0x2608[i], &local_a4, NULL, 3.0f, &tevStr, 0);
        }
    }
}

/* 80606424-806065D4 000DE4 01B0+00 3/3 0/0 0/0 .text            setBodySlideEffect__9daB_MGN_cFv */
void daB_MGN_c::setBodySlideEffect() {
    // NONMATCHING
    dBgS_GndChk dStack_98;
    cXyz local_a4;

    mSound.startCreatureSoundLevel(Z2SE_EN_MGN_SLIP, 0, -1);

    for (int i = 0; i < 2; i++) {
        if (i == 0) {
            mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(0x3f));
            mDoMtx_stack_c::multVecZero(&local_a4);
        } else {
            mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(2));
            mDoMtx_stack_c::transM(150.0f, 0.0f, 0.0f);
            mDoMtx_stack_c::multVecZero(&local_a4);
        }

        local_a4.y += 100.0f;
        dStack_98.SetPos(&local_a4);

        local_a4.y = dComIfG_Bgsp().GroundCross(&dStack_98);
        if (local_a4.y != -1000000000) {
            fopAcM_effSmokeSet1(&field_0x25f8[i], &field_0x2608[i], &local_a4, NULL, 10.0f, &tevStr, 0);
        }
    }
}

/* 806065D4-80606754 000F94 0180+00 1/1 0/0 0/0 .text            setOpeningEffect__9daB_MGN_cFv */
void daB_MGN_c::setOpeningEffect() {
    dBgS_GndChk dStack_6c;
    cXyz local_78;

    mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(0x34));
    mDoMtx_stack_c::multVecZero(&local_78);

    local_78.y += 100.0f;
    dStack_6c.SetPos(&local_78);
    local_78.y = dComIfG_Bgsp().GroundCross(&dStack_6c);

    if (local_78.y != -1000000000) {
        fopAcM_effSmokeSet1(&field_0x25f8[0], &field_0x2608[0], &local_78, NULL, 15.0f, &tevStr, 1);
    }

    mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(0x25));
    mDoMtx_stack_c::multVecZero(&local_78);
    local_78.y += 100.0f;
    dStack_6c.SetPos(&local_78);
    local_78.y = dComIfG_Bgsp().GroundCross(&dStack_6c);

    if (local_78.y != -1000000000) {
        fopAcM_effSmokeSet1(&field_0x25f8[1], &field_0x2608[1], &local_78, NULL, 15.0f, &tevStr, 1);
    }
}

/* 80606754-8060688C 001114 0138+00 1/1 0/0 0/0 .text            setStepEffect__9daB_MGN_cFv */
void daB_MGN_c::setStepEffect() {
    // NONMATCHING
    static int foot_jnt_4418[2] = {
        0x34, 0x25
    };

    dBgS_GndChk dStack_9c;
    cXyz local_a8;

    for (int i = 0; i < 2; i++) {
        J3DModel* model = mpModelMorf->getModel();
        MtxP anmMtx = mpModelMorf->getModel()->getAnmMtx(foot_jnt_4418[i]);

        mDoMtx_stack_c::copy(anmMtx);
        mDoMtx_stack_c::multVecZero(&local_a8);
        local_a8.y += 100.0f;

        dStack_9c.SetPos(&local_a8);

        local_a8.y = dComIfG_Bgsp().GroundCross(&dStack_9c);

        if (local_a8.y != -1000000000) {
            fopAcM_effSmokeSet1(&field_0x25f8[i], &field_0x2608[i], &local_a8,
                NULL, 3.0f, &tevStr, 1);
        }
    }
}

/* 8060688C-80606A10 00124C 0184+00 2/2 0/0 0/0 .text            setFallAttackEffect__9daB_MGN_cFv */
void daB_MGN_c::setFallAttackEffect() {
    // NONMATCHING
    dBgS_GndChk dStack_8c;
    cXyz local_98;

    for (int i = 0; i < 2; i++) {
        if (i == 0) {
            J3DModel* model = mpModelMorf->getModel();
            MtxP anmMtx = model->getAnmMtx(0x3f);
            mDoMtx_stack_c::copy(anmMtx);
            mDoMtx_stack_c::multVecZero(&local_98);
        } else {
            mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(2));
            mDoMtx_stack_c::transM(150.0f, 0.0f, 0.0f);
            mDoMtx_stack_c::multVecZero(&local_98);
        }

        local_98.y += 100.0f;
        dStack_8c.SetPos(&local_98);

        local_98.y = dComIfG_Bgsp().GroundCross(&dStack_8c);

        if (local_98.y != -1000000000) {
            fopAcM_effSmokeSet1(&field_0x25f8[i], &field_0x2608[i], &local_98, NULL, 10.0f, &tevStr, 1);
        }
    }
}

/* 80606A10-80606AEC 0013D0 00DC+00 1/1 0/0 0/0 .text            setHeadLightEffect__9daB_MGN_cFv */
void daB_MGN_c::setHeadLightEffect() {
    field_0x2618 = dComIfGp_particle_set(field_0x2618, 0x8c1f, &current.pos, &tevStr, 
        &shape_angle, 0, 0xff, 0, -1, 0, 0, 0);
    
    JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(field_0x2618);
    if (emitter) {
        emitter->setGlobalSRTMatrix(mpModelMorf->getModel()->getAnmMtx(27));
    }
}

/* 80606AEC-80606C6C 0014AC 0180+00 1/1 0/0 0/0 .text            setHeadHitEffect__9daB_MGN_cFv */
void daB_MGN_c::setHeadHitEffect() {
    field_0x261c = dComIfGp_particle_set(field_0x261c, 0x8c1d, &current.pos, 
        &tevStr, &shape_angle, NULL, 0xff, NULL, -1, NULL, NULL, NULL);
    JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(field_0x261c);
    if (emitter) {
        emitter->setGlobalSRTMatrix(mpModelMorf->getModel()->getAnmMtx(0x1b));
    }

    field_0x2620 = dComIfGp_particle_set(field_0x2620, 0x8c1e, &current.pos, 
        &tevStr, &shape_angle, NULL, 0xff, NULL, -1, NULL, NULL, NULL);
    emitter = dComIfGp_particle_getEmitter(field_0x2620);
    if (emitter) {
        emitter->setGlobalSRTMatrix(mpModelMorf->getModel()->getAnmMtx(0x1b));
    }
}

/* 80606C6C-80606D60 00162C 00F4+00 2/2 0/0 0/0 .text setHideSmokeEffect__9daB_MGN_cFP4cXyzUc */
int daB_MGN_c::setHideSmokeEffect(cXyz* param_1, u8 param_2) {
    // NONMATCHING
    for (int i = 0; i < 4; i++) {
        if (field_0x26b8[i] == 0) {
            field_0x26b8[i] = 1;

            field_0x2664[i] = *param_1;

            field_0x26c0[i] = cLib_targetAngleY(param_1, &dComIfGp_getPlayer(0)->current.pos);
            field_0x26bc[i] = param_2;

            if (field_0x26bc[i] == 0) {
                field_0x2664[i].y += 200.0f;
                // return i;
            }

            field_0x2664[i].z += 200.0f;
            return i;
        }
    }
    return -1;
}

/* 80606D60-806071C4 001720 0464+00 2/1 0/0 0/0 .text            calcHideSmokeEffect__9daB_MGN_cFv
 */
void daB_MGN_c::calcHideSmokeEffect() {
    // NONMATCHING
    cXyz local_54;

    local_54 = cXyz(7.0f, 7.0f, 7.0f);
    f32 fVar1 = 1.0f;
    if (field_0xaff > 4) {
        fVar1 = 2.0f;
    }

    for (int i = 0; i < 4; i++) {
        J3DModel* model = field_0x2624[i]->getModel();
        J3DModelData* modelData = model->getModelData();
        csXyz local_5c = csXyz(0, field_0x26c0[i], 0);

        if (field_0x26c0[i] != 0) {
            local_5c.x = 0x4000;
        }

        switch (field_0x26b8[i]) {
            case 1:
                field_0x26c0[i] = 2;

                field_0x2624[i]->setAnm((J3DAnmTransform *)dComIfG_getObjectRes("B_mgne", 6), 
                    0, 0.0f, fVar1, 0.0f, -1.0f);
                field_0x2634[i]->remove(modelData);

                field_0x2634[i]->init(modelData, 
                    (J3DAnmTevRegKey *)dComIfG_getObjectRes("B_mgne", 13), 1, 
                    0, fVar1, 0, -1);
                field_0x2654[i]->remove(modelData);

                model = mpModelMorf->getModel();
                J3DModelData* modelData2 = model->getModelData();

                field_0x2654[i]->init(modelData2, 
                    (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("B_mgne", 16), 1, 
                    0, fVar1, 2, 0);
                field_0x2644[i]->remove(modelData);

                field_0x2644[i]->init(modelData, 
                    (J3DAnmTevRegKey *)dComIfG_getObjectRes("B_mgne", 12), 1,
                    0, 0.0f, 0, -1);
                
                field_0x26c0[i - 4] = 1;
            case 2:
                daPy_py_c* player = daPy_getPlayerActorClass();
                cLib_addCalcAngleS(&field_0x26c0[i], 
                    cLib_targetAngleY(field_0x2664[i], player->current.pos), 
                    0x10, 0x100, 0x20);
                field_0x26b8[i] = dComIfGp_particle_set(field_0x26b8[i], 0x8a15,
                    &field_0x2664[i], &tevStr, &local_5c, &local_54, 
                    0xff, NULL, -1, NULL, NULL, NULL);
                break;
            case 7:
                dComIfGp_particle_set(0, 0x8a14, &field_0x2664[i], 
                    &tevStr, &local_5c, &local_54, 0xff, 
                    NULL, -1, NULL, NULL, NULL);
            case 3:
                field_0x26b8[i] = 4;
                field_0x2644[i]->remove(modelData);
                field_0x2644[i]->init(modelData, 
                    (J3DAnmTevRegKey*)dComIfG_getObjectRes("B_mgne", 13), 1, 0, 
                    -1.0f, 0, -1);
                field_0x26b8[i] = 1;
            case 4:
                if (field_0x2654[i]->isStop()) {
                    field_0x26b8[i] = 0;
                    field_0x26b8[i] = 0;
                }
            case 5:
                field_0x26b8[i] = 6;
                field_0x2644[i]->setPlaySpeed(fVar1);
                field_0x26b8[i] = 1;
                break;
        }

        if (field_0x26b8[i] != 0) {
            field_0x2624[i]->play(0, 0);
            mDoMtx_stack_c::transS(field_0x2664[i]);
            mDoMtx_stack_c::ZXYrotM(local_5c);
            mDoMtx_stack_c::scaleM(local_54);

            model = field_0x2624[i]->getModel();
            model->setBaseTRMtx(mDoMtx_stack_c::get());

            field_0x2624[i]->modelCalc();
            field_0x2644[i]->play();
            field_0x2654[i]->play();

            mSound.startCreatureSoundLevel(Z2SE_EN_MGN_APPR_EFF, 0, -1);
        }
    }
}

/* 806071C4-8060729C 001B84 00D8+00 1/1 0/0 0/0 .text            drawHideSmokeEffect__9daB_MGN_cFv */
void daB_MGN_c::drawHideSmokeEffect() {
    // NONMATCHING
    J3DModel* model;
    J3DModelData* modelData;
    for (int i = 0; i < 4; i++) {
        model = field_0x2624[i]->getModel();
        modelData = model->getModelData();

        if (field_0x26b4[i]) {
            g_env_light.settingTevStruct(0, &field_0x2664[i], &tevStr);
            g_env_light.setLightTevColorType_MAJI(model, &tevStr);
            
            field_0x2634[i]->entry(modelData);
            field_0x2644[i]->entry(modelData);
            field_0x2654[i]->entry(modelData);

            field_0x2624[i]->entryDL();
        }
    }
}

/* 8060729C-80607498 001C5C 01FC+00 5/5 0/0 0/0 .text            setBloodEffect__9daB_MGN_cFv */
void daB_MGN_c::setBloodEffect() {
    if (field_0xaa4 == 0) {
        for (int i = 0; i < 20; i++) {
            if (field_0x990[i] == 0) {
                field_0x990[i] = 1;
                break;
            }
        }

        f32 fVar2 = 2.0f;

        if (speed.absXZ() > 10.0f) {
            fVar2 = 1.0f;
        }

        if (cM_rnd() < 0.3f) {
            field_0xaa4 = (int)(fVar2 * (cM_rndF(3.0f) + 3.0f));
        } else {
            field_0xaa4 = (int)(fVar2 * (cM_rndFX(10.0f) + 15.0f));
        }
    }
}

/* 80607498-8060778C 001E58 02F4+00 1/1 0/0 0/0 .text            calcBloodMove__9daB_MGN_cFv */
void daB_MGN_c::calcBloodMove() {
    // NONMATCHING
    f32 fVar8, fVar7, fVar6;
    for (int i = 0; i < 20; i++) {
        switch (field_0x990[i]) {
            case 1:
                mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(1));

                fVar8 = cM_rndFX(10.0f);
                fVar6 = fVar8;
                fVar8 = cM_rndFX(10.0f);
                fVar7 = fVar8 + -150.0f;
                fVar8 = cM_rndFX(10.0f);
                mDoMtx_stack_c::transM(fVar8 + 200.0f, fVar7, fVar6);
                mDoMtx_stack_c::multVecZero(&field_0x620[i]);

                field_0x710[i].set(speed.x * 0.5f, 0.0f, speed.z * 0.5f);

                field_0x990[i] = 2;
                field_0x990[i - 20] = 0x437f0000;

                fVar8 = cM_rnd() + 0.5f;
                field_0x8f0[i] = fVar8;
                field_0x800[i].set(fVar8, fVar8, fVar8);
                break;
            case 2:
                if (field_0x710[i].y > -60.0f) {
                    field_0x710[i].y -= 3.0f;
                }

                field_0x620[i] += field_0x710[i];

                if (field_0x620[i].y <= 0.0f) {
                    field_0x620[i].y = 0.0f;
                    field_0x710[i].set(0.0f, 0.0f, 0.0f);
                    field_0x990[i] = 3;
                }
                break;
            case 3:
                if (field_0x8f0[i] * 0.2f < field_0x800[i].y) {
                    field_0x800[i].y *= 0.6f; 
                }

                if (field_0x8f0[i] * 2.0f < field_0x800[i].x) {
                    field_0x800[i].x *= 1.1f; 
                }

                field_0x800[i].z = field_0x800[i].x;

                if (field_0x800[i].y < field_0x8f0[i] * 0.2f &&
                    field_0x800[i].x > field_0x8f0[i] * 2.0f) {
                    field_0x990[i] = 4;
                }
                break;
            case 4:
                field_0x800[i].y *= 0.7f;
                field_0x800[i].x *= 1.01f;
                field_0x800[i].z = field_0x800[i].x;

                if (cLib_chaseF((f32*)field_0x990[i], 0.0f, 20.0f)) {
                    field_0x990[i] = 0;
                }
        }

        if (field_0x990[i] != 0) {
            mDoMtx_stack_c::transS(field_0x620[i]);
            mDoMtx_stack_c::scaleM(field_0x800[i]);
            mDoMtx_stack_c::transM(0.0f, 17.0f, 0.0f);
            field_0x5d0[i]->setBaseTRMtx(mDoMtx_stack_c::get());
        }
    }
}

/* 8060778C-806078DC 00214C 0150+00 2/2 0/0 0/0 .text            checkDownBeforeBG__9daB_MGN_cFv */
void daB_MGN_c::checkDownBeforeBG() {
    // NONMATCHING
    cXyz local_98 = current.pos;
    local_98.x += cM_ssin(shape_angle.y) * 1200.0f;
    local_98.z += cM_scos(shape_angle.y) * 1200.0f;

    dBgS_LinChk dStack_78;
    dStack_78.Set(&current.pos, &local_98, this);

    field_0xa92 = 0;

    if (dComIfG_Bgsp().LineCross(&dStack_78)) {
        cM3dGPla local_8c;
        dComIfG_Bgsp().GetTriPla(dStack_78, &local_8c);

        s16 sVar1 = cM_atan2s(local_8c.GetNP()->x, local_8c.GetNP()->z);
        if (abs((s16)(sVar1 - shape_angle.y)) > 0x5000) {
            if (sVar1 != shape_angle.y) {
                field_0xa92 -= 0x300;
            } else {
                field_0xa92 += 0x300;
            }
        }
    }
}

/* 80607924-806079CC 0022E4 00A8+00 11/11 0/0 0/0 .text            setBck__9daB_MGN_cFiUcff */
void daB_MGN_c::setBck(int param_1, u8 param_2, f32 param_3, f32 param_4) {
    mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("B_mgn", param_1), 
        param_2, param_3, param_4, 0.0f, -1.0f);
}

/* 806079CC-80607A2C 00238C 0060+00 3/3 0/0 0/0 .text            checkBck__9daB_MGN_cFi */
BOOL daB_MGN_c::checkBck(int param_1) {
    return mpModelMorf->getAnm() == dComIfG_getObjectRes("B_mgn", param_1);
}

/* 80607A2C-80607A80 0023EC 0054+00 16/16 0/0 0/0 .text            setActionMode__9daB_MGN_cFii */
void daB_MGN_c::setActionMode(int param_1, int param_2) {
    field_0xaf9 = (u8)param_1;
    field_0xafa = (u8)param_2;
    field_0x5cc = 0;

    JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(field_0x2618);
    if (emitter) {
        emitter->deleteAllParticle();
    }
}

/* 80607A80-80607B50 002440 00D0+00 2/2 0/0 0/0 .text            setExitMode__9daB_MGN_cFi */
void daB_MGN_c::setExitMode(int param_1) {
    // NONMATCHING
    field_0x5c4->init(mpModelMorf->getModel()->getModelData(), (J3DAnmTextureSRTKey *)dComIfG_getObjectRes("B_mgn", 61), 1, 0, 1.4f, 0, -1);

    if (param_1 == 0) {
        setActionMode(2, 4);
    } else {
        setActionMode(1, 4);
    }

    offBodyCo();
    field_0x1fbc.OffAtSetBit();
}

/* 80607B50-80607B80 002510 0030+00 1/1 0/0 0/0 .text            onBodyShield__9daB_MGN_cFv */
void daB_MGN_c::onBodyShield() {
    field_0x1fb8 = -0x23040203;
    for (int i = 0; i < 15; i++) {
        field_0xd70[i].SetTgType(field_0x1fb8);
    }
}

/* 80607B80-80607BB0 002540 0030+00 1/1 0/0 0/0 .text            offBodyShield__9daB_MGN_cFv */
void daB_MGN_c::offBodyShield() {
    field_0x1fb8 = 0xfbfdfd;
    for (int i = 0; i < 15; i++) {
        field_0xd70[i].SetTgType(field_0x1fb8);
    }
}

/* 80607BB0-80607BFC 002570 004C+00 3/3 0/0 0/0 .text            onBodySlideAt__9daB_MGN_cFv */
void daB_MGN_c::onBodySlideAt() {
    for (int i = 0; i < 15; i++) {
        if (body_front_sph[i]) {
            field_0xd70[i].SetAtSPrm(31);
            field_0xd70[i].SetAtSpl((dCcG_At_Spl)6);
            field_0xd70[i].SetAtAtp(1);
        }
    }
}

/* 80607BFC-80607C20 0025BC 0024+00 3/3 0/0 0/0 .text            offBodySlideAt__9daB_MGN_cFv */
void daB_MGN_c::offBodySlideAt() {
    for (int i = 0; i < 15; i++) {
        field_0xd70[i].SetAtSPrm(3);
    }
}

/* 80607C20-80607CB0 0025E0 0090+00 1/1 0/0 0/0 .text            checkHitSlideAt__9daB_MGN_cFv */
bool daB_MGN_c::checkHitSlideAt() {
    for (int i = 0; i < 15; i++) {
        if (field_0xd70[i].ChkAtHit() &&
                !field_0xd70[i].ChkAtShieldHit()) {
            if (fopAcM_GetName(field_0xd70[i].GetAtHitObj()->GetAc()) == 253) {
                return true;
            }
        }
    }
    return false;
}

/* 80607CB0-80607CE4 002670 0034+00 1/1 0/0 0/0 .text            onBodyFallAt__9daB_MGN_cFv */
void daB_MGN_c::onBodyFallAt() {
    for (int i = 0; i < 15; i++) {
        field_0xd70[i].SetAtSPrm(31);
        field_0xd70[i].SetAtSpl((dCcG_At_Spl)13);
        field_0xd70[i].SetAtAtp(2);
    }
}

/* 80607CE4-80607D08 0026A4 0024+00 1/1 0/0 0/0 .text            offBodyFallAt__9daB_MGN_cFv */
void daB_MGN_c::offBodyFallAt() {
    for (int i = 0; i < 15; i++) {
        field_0xd70[i].SetAtSPrm(3);
    }
}

/* 80607D08-80607D44 0026C8 003C+00 4/4 0/0 0/0 .text            onBodyCo__9daB_MGN_cFv */
void daB_MGN_c::onBodyCo() {
    field_0xb05 = 1;

    for (int i = 0; i < 15; i++) {
        field_0xd70[i].OnCoSetBit();
        field_0xd70[i].OnAtSetBit();
    }
}

/* 80607D44-80607D7C 002704 0038+00 4/4 0/0 0/0 .text            offBodyCo__9daB_MGN_cFv */
void daB_MGN_c::offBodyCo() {
    field_0xb05 = 0;

    for (int i = 0; i < 15; i++) {
        field_0xd70[i].OffCoSetBit();
        field_0xd70[i].OffAtSetBit();
    }
}

/* 80607D7C-8060819C 00273C 0420+00 1/1 0/0 0/0 .text            getNearHitPos__9daB_MGN_cFP4cXyz */
void daB_MGN_c::getNearHitPos(cXyz* param_1) {
    // NONMATCHING
    cXyz local_88[6], local_b8, local_ac;
    f32 local_a0[6];
    cXyz* in_r5;
    local_88[0] = cXyz(280.0f, -200.0f, 0.0f);
    local_88[1] = cXyz(100.0f, -130.0f, -10.0f);
    local_88[2] = cXyz(180.0f, -170.0f, 10.0f);
    local_88[3] = cXyz(280.0f, -170.0f, 20.0f);
    local_88[4] = cXyz(100.0f, -120.0f, 20.0f);
    local_88[5] = cXyz(180.0f, -160.0f, 10.0f);

    local_a0[0] = -80.0f;
    local_a0[1] = -50.0f;
    local_a0[2] = -50.0f;
    local_a0[3] = -50.0f;
    local_a0[4] = -50.0f;
    local_a0[5] = -50.0f;

    f32 fVar3 = 1000.0f;
    for (int i = 0; i < 6; i++) {
        int iVar1 = i % 3 + param_1[0xea].y * 3;

        mDoMtx_stack_c::transM(local_88[iVar1]);
        mDoMtx_stack_c::multVecZero(&local_b8);

        if (i > 2) {
            local_b8.y += local_a0[iVar1];
        }
        
        f32 fVar4 = in_r5->abs(local_b8);

        if (fVar4 < fVar3) {
            fVar4 = in_r5->abs(local_b8);
            fVar3 = fVar4;
            local_ac = local_b8;
        }
    }

    if (fVar3 == 1000.0f) {
    } else {
    }
}

/* 8060819C-80608738 002B5C 059C+00 1/1 0/0 0/0 .text            damage_check__9daB_MGN_cFv */
void daB_MGN_c::damage_check() {
    // NONMATCHING
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz local_28;

    if (field_0xafd == 0 && field_0xaff >= 3) {
        for (int i = 0; i < 15; i++) {
            field_0xd70[i].SetTgType(field_0x1fb8 & 0xffbfdfdf);
        }
    } else {
        for (int i = 0; i < 15; i++) {
            field_0xd70[i].SetTgType(field_0x1fb8);
        }
    }

    if (field_0xafd == 0) {
        if (field_0xaff >= 4) {
            field_0x20f4[0].SetTgType(0);
            field_0x20f4[1].SetTgType(0);
        } else {
            field_0x20f4[0].SetTgType(0x402020);
            field_0x20f4[1].SetTgType(0x402020);
        }

        field_0x20f4[0].OffTgNoHitMark();
        field_0x20f4[1].OffTgNoHitMark();
    } else {
        field_0x20f4[0].SetTgType(0xdc000000);
        field_0x20f4[1].SetTgType(0xdc000000);
        field_0x20f4[0].OnTgNoHitMark();
        field_0x20f4[1].OnTgNoHitMark();
    }

    field_0xd34.Move();

    if (field_0xa98 == 0) {
        field_0x25d4 = 0;

        if (field_0x20f4[0].ChkTgHit()) {
            field_0x25d4 = (u32)field_0x20f4[0].GetTgHitObj();
            local_28 = *field_0x20f4[0].GetTgHitPosP();
        }

        if (field_0x20f4[1].ChkTgHit()) {
            field_0x25d4 = (u32)field_0x20f4[1].GetTgHitObj();
            local_28 = *field_0x20f4[1].GetTgHitPosP();
        }

        if (field_0x25d4 != 0) {
            if (field_0x20f4[0].ChkAtType(0xd8000000)) {
                field_0xa98 = 20;
            } else {
                field_0xa98 = 10;
            }

            if (field_0x25f0 <= 1) {
                field_0xa98 = 10;
            }

            // this->cc_at_check(field_0x25d4);
            if (field_0xafd == 0) {
                mSound.startCreatureVoice(Z2SE_EN_MGN_V_KOROBU, -1);
                field_0xb0a = 100;
                JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(field_0x2618);

                if (emitter == NULL) {
                    emitter->deleteAllParticle();
                }

                if (!dComIfGs_isOneZoneSwitch(5, fopAcM_GetRoomNo(this))) {
                    dComIfGs_onOneZoneSwitch(5, fopAcM_GetRoomNo(this));
                }

                field_0xb07 = 0;

                field_0x1fbc.OffAtSetBit();

                if (cM_rnd() < 0.5f) {
                    setActionMode(4, 0);
                } else {
                    setActionMode(4, 1);
                }
            }
        } else {
            if (field_0x20f4[0].GetAtAtp()) {
                cXyz local_34;
                getNearHitPos(&local_34);
                local_28 = local_34;

                if (field_0x25f3 == 0) {
                    dComIfGp_setHitMark(1, this, &local_28, NULL, 
                        NULL, 0);
                } else {
                    dComIfGp_setHitMark(3, this, &local_28, NULL, 
                        NULL, 0);
                }

                // csXyz cStack_40 = csXyz(0, cLib_targetAngleY(&local_28, &player->current.pos), 0);
                dComIfGp_particle_set(0x8c22, &local_28, &tevStr, 
                    &csXyz(0, cLib_targetAngleY(&local_28, &player->current.pos), 0), 
                    0);
            }

            if (field_0xb08 == 0) {
                field_0xaa0 = 100;
                field_0xb08 = 1;
            }

            if (player->getCutCount() >= 3 && field_0xaa0 < 20) {
                field_0xaa0 = 20;
            }

            if (!dComIfGs_isOneZoneSwitch(6, fopAcM_GetRoomNo(this))) {
                dComIfGs_onOneZoneSwitch(6, fopAcM_GetRoomNo(this));
            }

            if (field_0x20f4[0].ChkAtType(0x80000000) && player->getCutType() != 44 &&
                player->getCutType() != 45 && player->onWolfEnemyHangBite(this)) {
                setActionMode(6, 0);
                return;
            }

            u8 cVar10 = 0;
            if (field_0x20f4[0].ChkAtType(0x4000000)) {
                if (field_0x20f4[0].GetAtAtp() != 4) {
                    if (player->getSwordAtUpTime()) {
                        cVar10 = 2;
                    } else {
                        if (player->getCutCount() >= 4) {
                            cVar10 = 2;
                        } else {
                            if (field_0x20f4[0].GetAtSpl() == 1) {
                                field_0xb07++;
                                if (field_0xb07 >= 1) {
                                    cVar10 = 2;
                                }
                            }
                        }
                    }
                } else if (player->mSwordUpTimer != 4) {
                    cVar10 = 4;
                } else {
                    cVar10 = 2;
                }

                if (field_0xaff == 3 && cVar10 != 0) {
                    cVar10 = 1;
                }

                field_0xb06 = cVar10;
                setActionMode(5, 0);
            } else {
                if (field_0x20f4[0].GetAtAtp() > 3 || field_0x20f4[0].GetAtSpl() == 1) {
                    cVar10 = 1;
                }
            }
        }
    }
}

/* 80608738-806087A8 0030F8 0070+00 1/1 0/0 0/0 .text            calcJointAngle__9daB_MGN_cFs */
void daB_MGN_c::calcJointAngle(s16 param_1) {
    field_0xb18 = 1;
    field_0xb16 = shape_angle.y;
    cLib_addCalcAngleS2(&field_0xb16, param_1, 4, 0xc00);
    field_0xb14 = field_0xb16;
    cLib_addCalcAngleS2(&field_0xb14, param_1, 4, 0xc00);
}

/* 806087A8-80608EF8 003168 0750+00 2/1 0/0 0/0 .text            executeCircle__9daB_MGN_cFv */
void daB_MGN_c::executeCircle() {
    // NONMATCHING
    cXyz local_24, local_3c, local_30, local_48;
    s16 playerAngleY;

    local_24 = cXyz(0.0f, 0.0f, -600.0f);
    local_3c = daPy_getPlayerActorClass()->current.pos;

    s16 sVar4 = cLib_targetAngleY(&local_24, &current.pos);

    switch (field_0xafa) {
        case 1:
            if (field_0xafa == 1) {
                field_0xaa8 = 100;
            } else {
                field_0xaa8 = 0x1e;
                field_0xafa = 1;
            }
        case 0:
            if (checkBck(6)) {
                setBck(9, 2, 0.0f, l_HIO.field_0x1c);
            } else {
                if (!checkBck(0x13) && !checkBck(12)) {
                    setBck(9, 2, 3.0f, l_HIO.field_0x1c);
                }
            }

            field_0xa90 = sVar4;

            if (field_0xa90 - shape_angle.y < 0) {
                field_0xa92 = 0x800;
            } else {
                field_0xa92 = -0x800;
            }

            field_0xa90 += field_0xa92;
            field_0xafa += 2;

            f32 fVar8 = cM_rndFX(50.0f);
            field_0xa9c = fVar8 + 200.0f;

            field_0x1fbc.OnAtSetBit();
            field_0x1fbc.SetAtAtp(2);

            speedF = l_HIO.field_0x20;
            attention_info.flags = 0;
        case 3:
            setDashSmokeEffect();
            setBloodEffect();
        case 4:
            if (mpModelMorf->isStop() && !checkBck(0x13) || checkBck(12)) {
                setBck(9, 2, 3.0f, 1.0f);
            }

            if (abs((int)(s16)(field_0xa90 - sVar4)) < 0x800) {
                field_0xa90 += field_0xa92;
            }

            local_30.set(cM_ssin(field_0xa90) * 2000.0f, 0.0f, cM_scos(field_0xa90) * 2000.0f);
            local_30 += local_24;

            cLib_chaseF(&speedF, l_HIO.field_0x20, 10.0f);

            cLib_addCalcAngleS2(&shape_angle.y, cLib_targetAngleY(&current.pos, &local_30), 8, 0x400);
            current.angle.y = shape_angle.y;

            if (field_0xafa == 2) {
                if (field_0xa9c == 0 && current.pos.abs(local_3c) > 2000.0f) {
                    field_0xafa = 5;
                    field_0x1fbc.OffAtSetBit();

                    if (field_0xa92 < 1) {
                        setBck(0x23, 2, 3.0f, 1.0f);
                    } else {
                        setBck(0x22, 2, 3.0f, 1.0f);
                    }
                }
            } else if (field_0xafa == 3) {
                if (field_0xaa8 == 0) {
                    setExitMode(1);
                }
            } else {
                cLib_chaseF(&field_0xae8, 0.0f, 0.05f);

                if (field_0x5c4->checkFrame(15.0f)) {
                    mDoMtx_stack_c::transS(current.pos);
                    mDoMtx_stack_c::YrotM(shape_angle.y);
                    mDoMtx_stack_c::transM(0.0f, 0.0f, 1000.0f);
                    mDoMtx_stack_c::multVecZero(&local_48);
                    dComIfGp_particle_set(0x8c1c, &local_48, &tevStr, &shape_angle, 0);

                    mSound.startCreatureSound(Z2SE_EN_MGN_WARP, 0, -1);

                    if (field_0x5c4->isStop()) {
                        setActionMode(7, 0);
                    }
                }
            }
            break;
        case 5:
            setSlideSmokeEffect();
            setBloodEffect();
            if (abs((int)(s16)(field_0xa90 - sVar4)) < 0x800) {
                field_0xa90 += field_0xa92;
            }

            local_30.set(cM_ssin(field_0xa90) * 2000.0f, 0.0f, cM_scos(field_0xa90) * 2000.0f);
            local_30 += local_24;

            cLib_addCalcAngleS2(&current.angle.y, cLib_targetAngleY(&current.pos, &local_30), 8, 0x400);
            playerAngleY = fopAcM_searchPlayerAngleY(this);
            cLib_addCalcAngleS2(&shape_angle.y, playerAngleY, 8, 0x400);
            calcJointAngle(playerAngleY);
            cLib_chaseF(&speedF, 0.0f, 1.5f);

            if (speedF == 0.0f) {
                setBck(0x25, 2, 30.0f, 1.0f);
                field_0xa9c = 0x1e;
                field_0xafa = 6;
            }
            break;
        case 6:
            setBloodEffect();
            playerAngleY = fopAcM_searchPlayerAngleY(this);
            cLib_addCalcAngleS2(&shape_angle.y, playerAngleY, 8, 0x800);
            calcJointAngle(playerAngleY);

            if (field_0xa9c == 0) {
                field_0xafd = 0;
                setActionMode(2, 0);
            }
    }
}

/* ############################################################################################## */
/* 8060FED8-8060FEDC 0000F8 0004+00 0/0 0/0 0/0 .rodata          @5700 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5700 = 1.5f;
COMPILER_STRIP_GATE(0x8060FED8, &lit_5700);
#pragma pop

/* 8060FEDC-8060FEE0 0000FC 0004+00 0/3 0/0 0/0 .rodata          @5701 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5701 = 30.0f;
COMPILER_STRIP_GATE(0x8060FEDC, &lit_5701);
#pragma pop

/* 8060FEE0-8060FEE4 000100 0004+00 0/1 0/0 0/0 .rodata          @6075 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6075 = -800.0f;
COMPILER_STRIP_GATE(0x8060FEE0, &lit_6075);
#pragma pop

/* 8060FEE4-8060FEE8 000104 0004+00 0/1 0/0 0/0 .rodata          @6076 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6076 = 4096.0f;
COMPILER_STRIP_GATE(0x8060FEE4, &lit_6076);
#pragma pop

/* 8060FEE8-8060FEEC 000108 0004+00 0/1 0/0 0/0 .rodata          @6077 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6077 = 6.0f;
COMPILER_STRIP_GATE(0x8060FEE8, &lit_6077);
#pragma pop

/* 8060FEEC-8060FEF0 00010C 0004+00 0/1 0/0 0/0 .rodata          @6078 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6078 = 4.0f;
COMPILER_STRIP_GATE(0x8060FEEC, &lit_6078);
#pragma pop

/* 8060FEF0-8060FEF4 000110 0004+00 0/1 0/0 0/0 .rodata          @6079 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6079 = 2500.0f;
COMPILER_STRIP_GATE(0x8060FEF0, &lit_6079);
#pragma pop

/* 8060FEF4-8060FEF8 000114 0004+00 0/0 0/0 0/0 .rodata          @6080 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6080 = -5.0f;
COMPILER_STRIP_GATE(0x8060FEF4, &lit_6080);
#pragma pop

/* 8060FEF8-8060FEFC 000118 0004+00 0/0 0/0 0/0 .rodata          @6081 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6081 = 1600.0f;
COMPILER_STRIP_GATE(0x8060FEF8, &lit_6081);
#pragma pop

/* 8060FEFC-8060FF00 00011C 0004+00 0/2 0/0 0/0 .rodata          @6082 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6082 = 300.0f;
COMPILER_STRIP_GATE(0x8060FEFC, &lit_6082);
#pragma pop

/* 8060FF00-8060FF08 000120 0008+00 0/1 0/0 0/0 .rodata          @6085 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6085[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8060FF00, &lit_6085);
#pragma pop

/* 80608EF8-80609D70 0038B8 0E78+00 2/1 0/0 0/0 .text            executeDash__9daB_MGN_cFv */
void daB_MGN_c::executeDash() {
    // NONMATCHING
    cXyz local_14c, local_158, local_164, local_170, local_128, local_134, local_140;
    fopAc_ac_c* actorPointer;
    s16 sVar5;

    daPy_py_c* player = daPy_getPlayerActorClass();
    switch (field_0xafa) {
        case 10:
        case 11:
            local_128 = cXyz(0.0f, 0.0f, -800.0f);
            local_134 = cXyz(player->current.pos);

            sVar5 = cLib_targetAngleY(&local_134, &local_128);

            if (field_0xaff < 5) {
                sVar5 = cM_rndFX(4.0f) * 4096.0f;
            } else {
                sVar5 = cM_rndFX(6.0f) * 4096.0f;
            }

            if (field_0xafa == 11) {
                if (abs(sVar5 - (sVar5 & 0x1800)) != 0) {
                    sVar5 = field_0xa90;
                }
            }

            local_140 = cXyz(cM_ssin(sVar5) * 2500.0f, 0.0f, cM_scos(sVar5) * 2500.0f);
            field_0xab0 = local_140 + local_128;
            field_0xa90 = sVar5;

            if (field_0xaff < 5) {
                field_0xb10 = setHideSmokeEffect(&field_0xab0, 0);
                field_0xafd = 0;
                attention_info.flags = 0;
                field_0xafa = 15;
                field_0xa9c = 20;
                setBck(0x25, 2, 3.0f, 1.0f);
            } else {
                speedF = 0.0f;
                if ((cM_rnd() >= 0.3f && (field_0xb02 < 3 || field_0xb02 < 10)) || local_134.absXZ(field_0xab0) <= 2000.0f) {
                    field_0xb10 = setHideSmokeEffect(&field_0xab0, 0);
                    field_0xafd = 0;
                    attention_info.flags = 0;
                    field_0xafa = '\f';
                    field_0xa9c = 0x3c;
                    setBck(0x25, 2, 3.0f, 1.0f);

                    shape_angle.y = fopAcM_searchPlayerAngleY(this);
                    current.angle.y = shape_angle.y;
                    return;
                } else {
                    field_0xb10 = setHideSmokeEffect(&field_0xab0, 0);
                    field_0xa9c = cM_rndF(15.0f) + 30.0f;
                    field_0xafa = 20;
                }
            }
            break;
        case 12:
            if (field_0xa9c == 0) {
                if (field_0xaff < 5) {
                    field_0xa9c = 0x1e;
                } else {
                    field_0xa9c = 15;
                }

                if (field_0xb10 != -1) {
                    field_0x26b8[field_0xb10] = 5;
                }

                field_0xafa = 13;
            }
            break;
        case 13:
            if (field_0xa9c == 0) {
                onBodyCo();
                field_0xafa = 2;
                field_0x5c4->init(&mpModelMorf->getModel()->getModelData()->getMaterialTable(), 
                    (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("B_mgn", 0x3c), 
                    1, 0, 1.4f, 0, -1);

                field_0xb5c.ClrWallHit();
                field_0xaac = 20;
                field_0xa9c = 21;
                field_0x5cc = 1;
                gravity = 0.0f;
                speed.y = 0.0f;
                speedF = 0.0f;

                if (field_0xb10 != -1) {
                    // shape_angle.y = field_0x26c0[field_0xb10];
                    current.angle.y = field_0x26c0[field_0xb10];
                    field_0x26b8[field_0xb10] = 7;
                }

                current.pos.set((field_0xab0.x - cM_ssin(shape_angle.y) * 1000.0f), field_0xab0.y, (field_0xab0.z - cM_scos(shape_angle.y) * 1000.0f));
                old.pos = current.pos;

                field_0xb14 = shape_angle.y;
                field_0xb16 = shape_angle.y;
            }
            break;
        case 20:
            if (field_0xb10 != -1) {
                // shape_angle.y = field_0x26c0[field_0xb10];
                current.angle.y = field_0x26c0[field_0xb10];
            }

            if (field_0xa9c == 0) {
                if (field_0xb10 != -1) {
                    field_0x26b8[field_0xb10] = 3;
                }
                field_0xafa = 11;
            }
            break;
        case 0:
            mSound.startCreatureVoice(Z2SE_EN_MGN_V_GROWL, -1);
            setBck(6, 0, 3.0f, 1.0f);
            field_0xafa = 1;
            field_0x5cc = 2;
        case 1:
            attention_info.flags = 0;
            if (daPy_py_c::checkNowWolf()) {
                attention_info.flags = 4;
            }

            if (mpModelMorf->isStop()) {
                field_0xafa = 2;
                field_0xa9c = 0;
                field_0xaac = 0;
            }
            break;
        case 2:
            if (field_0xaac == 0) {
                gravity = -5.0f;
            }

            if (checkBck(6)) {
                setBck(9, 2, 0.0f, l_HIO.field_0x08);
            } else {
                setBck(9, 2, 3.0f, l_HIO.field_0x08);
            }

            field_0xafa = 3;
            field_0x20f4[0].OnTgSetBit();
            field_0x1fbc.OnAtSetBit();
            field_0x1fbc.SetAtAtp(2);
            current.angle.y = shape_angle.y;
            field_0xb03 = 0;

            if (cM_rnd() < 0.7f) {
                field_0xb03 = 1;
            }

            speedF = l_HIO.field_0x08;
            fopAcM_OnCarryType(this, fopAcM_CARRY_LIGHT);

            if (field_0xb0b >= 1 && daPy_py_c::checkNowWolf()) {
                if (field_0xb0c < 3) {
                    field_0xb0c++;
                }
            } else {
                if (!dComIfGs_isOneZoneSwitch(9, fopAcM_GetRoomNo(this))) {
                    dComIfGs_onOneZoneSwitch(9, fopAcM_GetRoomNo(this));
                }
            }
        case 3:
            field_0xb09 = 1;
            attention_info.flags = 0;

            if (daPy_py_c::checkNowWolf()) {
                attention_info.flags |= 4;

                mDoMtx_YrotS(mDoMtx_stack_c::now, -shape_angle.y);
                mDoMtx_stack_c::transM(-current.pos.x, -current.pos.y, -current.pos.z);

                mDoMtx_stack_c::multVec(&daPy_getPlayerActorClass()->current.pos, &local_14c);

                if (fabsf(local_14c.x) < 200.0f && local_14c.z > 100.0f && local_14c.z < 1500.0f) {
                    attention_info.flags |= 0x10;
                }
            }

            cLib_chaseF(&field_0xae8, 1.0f, 0.05f);

            if (field_0x5c4->isStop()) {
                setBloodEffect();
            }

            setDashSmokeEffect();

            cLib_chaseF(&speedF, l_HIO.field_0x08, 10.0f);

            if (!checkThrowMode(2)) {
                field_0x20f4[0].OffTgSetBit();
                field_0x1fbc.OffAtSetBit();
                offThrowMode(2);
                setActionMode(3, 0);
            } else {
                if (field_0xa9c == 0) {
                    if (field_0xaff < 5) {
                        local_158 = cXyz(cM_ssin(shape_angle.y) * 1600.0f, 300.0f, cM_scos(shape_angle.y) * 1600.0f);
                        local_158 += current.pos;

                        dBgS_LinChk dStack_ac;
                        dStack_ac.Set(&current.pos, &local_158, this);

                        if (dComIfG_Bgsp().LineCross(&dStack_ac)) {
                            actorPointer = dComIfG_Bgsp().GetActorPointer(dStack_ac);
                            if (!actorPointer || fopAcM_GetName(actorPointer) != 0x6c) {
                                attention_info.flags = 0;
                                field_0x20f4[0].OffTgSetBit();
                                field_0x1fbc.OffAtSetBit();
                                setExitMode(0);
                                field_0xaac = 3;
                            }
                        }
                    } else {
                        if (field_0xb5c.ChkWallHit()) {
                            actorPointer = dComIfG_Bgsp().GetActorPointer(field_0xb1c);
                            if (!actorPointer || fopAcM_GetName(actorPointer) != 0x6c) {
                                if (abs((int)(s16)(field_0xb1c.GetWallAngleY() - shape_angle.y)) > 0x6000) {
                                    field_0x20f4[0].OffTgSetBit();
                                    field_0x1fbc.OffAtSetBit();
                                    setActionMode(1, field_0xb03);
                                    return;
                                }

                                if (field_0xb1c.GetWallAngleY() - shape_angle.y < 0) {
                                    shape_angle.y += 0x100;
                                } else {
                                    shape_angle.y += -0x100;
                                }

                                current.angle.y = shape_angle.y;
                            }

                            if (abs((int)(s16)(current.angle.y - fopAcM_searchPlayerAngleY(this))) > 0x4000) {
                                field_0x20f4[0].OffTgSetBit();
                                field_0x1fbc.OffAtSetBit();
                                setActionMode(1, field_0xb03);
                            }
                        }
                    }
                }
            }
            break;
        case 4:
            cLib_chaseF(&field_0xae8, 0.0f, 0.05f);

            if (field_0x5c4->checkFrame(15.0f)) {
                mDoMtx_stack_c::transS(current.pos);
                mDoMtx_stack_c::YrotM(shape_angle.y);
                mDoMtx_stack_c::transM(0.0f, 0.0f, 1000.0f);
                mDoMtx_stack_c::multVecZero(&local_164);

                dComIfGp_particle_set(0x8c1c, &local_164, &tevStr, &shape_angle, 0);

                mSound.startCreatureSound(Z2SE_EN_MGN_WARP, 0, -1);
            }

            if (field_0xaff < 5) {
                field_0xaac = 0x21;
                if (field_0x5c4->getFrame() > 30.0f) {
                    field_0xafe = 0;
                    field_0xafa = '\n';
                }
            } else {
                field_0xaac = 3;

                if (field_0x5c4->isStop()) {
                    setActionMode(7, 0);
                }
            }
            break;
        case 5:
            setBck(9, 2, 3.0f, l_HIO.field_0x08);
            field_0xafa = 6;
            field_0x20f4[0].OnTgSetBit();
            field_0x1fbc.OnAtSetBit();
            field_0x1fbc.SetAtAtp(2);
            current.angle.y = shape_angle.y;
            speedF = l_HIO.field_0x08;
        case 6:
            if (field_0x5c4->isStop()) {
                setBloodEffect();
            }
            setDashSmokeEffect();

            cLib_chaseF(&speedF, l_HIO.field_0x08, 10.0f);

            local_170 = cXyz(cM_ssin(shape_angle.y) * 1600.0f, 300.0f, cM_scos(shape_angle.y) * 1600.0f);
            local_170 += current.pos;

            dBgS_LinChk dStack_11c;
            dStack_11c.Set(&current.pos, &local_170, this);

            if (dComIfG_Bgsp().LineCross(&dStack_11c)) {
                attention_info.flags = 0;
                field_0x20f4[0].OffTgSetBit();
                field_0x1fbc.OffAtSetBit();
                setExitMode(0);
                field_0xaac = 3;
            }
            break;
    }
}

/* 80609D70-8060A670 004730 0900+00 2/1 0/0 0/0 .text            executeThrown__9daB_MGN_cFv */
void daB_MGN_c::executeThrown() {
    // NONMATCHING
    cXyz local_28;
    daPy_py_c* player = daPy_getPlayerActorClass();

    mDoMtx_stack_c::transS(player->current.pos);
    mDoMtx_stack_c::YrotM(player->shape_angle.y);
    mDoMtx_stack_c::transM(0.0f, 0.0f, 787.0f);
    mDoMtx_stack_c::multVecZero(&local_28);

    switch (field_0xafa) {
        case 0:
            if (!dComIfGs_isOneZoneSwitch(2, fopAcM_GetRoomNo(this))) {
                dComIfGs_onOneZoneSwitch(2, fopAcM_GetRoomNo(this));
            }

            setBck(0x1c, 0, 3.0f, 1.0f);

            speedF = 0.0f;
            field_0xafa = 2;
            gravity = 0.0f;
            field_0xb03 = 0;
            field_0xb01 = 1;

            dComIfGs_onOneZoneSwitch(11, fopAcM_GetRoomNo(this));

            attention_info.flags = 0;

            // local_34 = cXyz(0.0f, 1.0f, 0.0f);

            dComIfGp_getVibration().StartQuake(6, 0x1f, cXyz(0.0f, 1.0f, 0.0f));

            mSound.startCreatureSound(Z2SE_EN_MGN_MIDNA_CATCHED, 0, -1);
        case 2:
            mSound.startCreatureVoiceLevel(Z2SE_EN_MGN_V_MIDNA_CATCHED, -1);

            cLib_addCalcAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 0x10, 0x400, 0x80);

            setBodySlideEffect();

            cLib_chasePos(&current.pos, local_28, 100.0f);

            if (mpModelMorf->isStop()) {
                setBck(0x1b, 2, 3.0f, 1.0f);
                field_0xafa = 3;
                field_0xa9c = 0x1e;
            }
            break;
        case 3:
            mSound.startCreatureVoiceLevel(Z2SE_EN_MGN_V_MIDNA_CATCHED, -1);

            dComIfGp_set3DStatusForce(0x13, 5, 0);

            cLib_chasePos(&current.pos, local_28, 100.0f);

            shape_angle.y = fopAcM_searchPlayerAngleY(this);

            if (field_0xa9c == 0) {
                dComIfGp_getVibration().StopQuake(0x1f);
            }

            if (checkThrowMode(0x10)) {
                dComIfGp_getVibration().StopQuake(0x1f);

                offThrowMode(0x10);
                setBck(0x20, 0, 3.0f, 1.0f);

                field_0xafc = 1;
                field_0xafa = 5;
                field_0xafd = 1;
            } else {
                if (checkThrowMode(11)) {
                    dComIfGp_getVibration().StopQuake(0x1f);

                    offThrowMode(11);
                    setBck(0x1e, 0, 3.0f, 1.0f);

                    field_0xafc = 0;
                    field_0xafa = 5;
                    field_0xafd = 1;
                } else {
                    if (checkThrowMode(4)) {
                        dComIfGs_offOneZoneSwitch(11, fopAcM_GetRoomNo(this));

                        dComIfGp_getVibration().StopQuake(0x1f);

                        offThrowMode(4);
                        mSound.startCreatureVoice(Z2SE_EN_MGN_V_MIDNA_RELEASE, -1);

                        setBck(8, 0, 3.0f, 1.0f);
                        field_0xafa = 10;
                        speedF = 0.0f;
                    }
                }
            }
            break;
        case 5:
            mSound.startCreatureVoiceLevel(Z2SE_EN_MGN_V_MIDNA_CATCHED, -1);
            
            cLib_chasePos(&current.pos, local_28, 100.0f);

            shape_angle.y = fopAcM_searchPlayerAngleY(this);

            if (mpModelMorf->isStop()) {
                gravity = -5.0f;

                if (field_0xafc == 0) {
                    setBck(0x1d, 0, 3.0f, 1.0f);

                    current.angle.y = shape_angle.y + -0x2800;

                    field_0xa90 = shape_angle.y + -0x1000;
                    field_0xa92 = 0x200; 
                } else {
                    setBck(0x1f, 0, 3.0f, 1.0f);

                    current.angle.y = shape_angle.y + 0x2800;

                    field_0xa90 = shape_angle.y + 0x1000;
                    field_0xa92 = -0x200;
                }

                mSound.startCreatureVoice(Z2SE_EN_MGN_V_MIDNA_THROW, -1);
                field_0xafa = 8;
            }
            break;
        case 8:
            if (mpModelMorf->checkFrame(5.0f)) {
                if (field_0xafc == 0) {
                    field_0xa92 = 0x200;
                } else {
                    field_0xa92 = -0x200;
                }

                dCam_getBody()->ForceLockOn(this);
                onBodySlideAt();
            }

            if (mpModelMorf->getFrame() <= 6.0f) {
                speedF = 100.0f;
            } else {
                setBodySlideEffect();
                cLib_chaseAngleS(&field_0xa92, 0, 0x20);
                shape_angle.y += field_0xa92;
            }

            shape_angle.y += field_0xa92;

            if (mpModelMorf->checkFrame(16.0f) || mpModelMorf->checkFrame(26.0f)) {
                dComIfGp_getVibration().StartShock(8, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
                mSound.startCreatureSound(Z2SE_EN_MGN_FOOTNOTE, 0, -1);
            }

            cLib_addCalcAngleS2(&current.angle.y, field_0xa90, 8, 0x100);
            cLib_chaseF(&speedF, 0.0f, 4.0f);

            if (mpModelMorf->isStop()) {
                dComIfGp_getVibration().StartQuake(3, 0x1f, cXyz(0.0f, 1.0f, 0.0f));

                if (field_0xafc == 0) {
                    setBck(20, 2, 3.0f, 1.0f);
                } else {
                    setBck(13, 2, 3.0f, 1.0f);
                }

                dComIfGs_offOneZoneSwitch(11, fopAcM_GetRoomNo(this));
                field_0xafa = 9;
            }
            break;
        case 9:
            setBodySlideEffect();
            
            cLib_chaseF(&speedF, 0.0f, 4.0f);
            cLib_chaseAngleS(&field_0xa92, 0, 0x20);
            shape_angle.y += field_0xa92;

            if (speedF == 0.0f && field_0xa92 == 0) {
                if (dCam_getBody()->GetForceLockOnActor() == this) {
                    dCam_getBody()->ForceLockOff(this);
                }

                offBodySlideAt();
                setActionMode(4, 5);

                dComIfGp_getVibration().StopQuake(0x1f);

                field_0x20f4[0].OnTgSetBit();
                field_0x20f4[1].OnTgSetBit();

                field_0xaa0 = 0x96;
                field_0xb08 = 0;
                attention_info.flags = 4;
            }
            break;
        case 10:
            s16 sVar3;
            if (cM_rnd() < 0.5f) {
                sVar3 = shape_angle.y + 0x2000;
            } else {
                sVar3 = shape_angle.y + -0x2000;
            }

            player = daPy_getPlayerActorClass();
            player->setThrowDamage(sVar3, 50.0f, 40.0f, 1, 0, 0);

            field_0xafa = 11;

            dCam_getBody()->ForceLockOn(this);
            attention_info.flags = 4;
        case 11:
            if (mpModelMorf->isStop()) {
                attention_info.flags = 0;

                if (dCam_getBody()->GetForceLockOnActor() == this) {
                    dCam_getBody()->ForceLockOff(this);
                }

                setActionMode(2, 5);
            }
    }
}

/* 8060A670-8060A72C 005030 00BC+00 3/3 0/0 0/0 .text            setDownEnd__9daB_MGN_cFv */
void daB_MGN_c::setDownEnd() {
    field_0x20f4[0].OffTgSetBit();
    field_0x20f4[1].OffTgSetBit();

    field_0xb01 = 0;
    attention_info.flags = 0;

    if (field_0xafc == 0) {
        setBck(0x16, 0, 3.0f, 1.0f);
        current.angle.y = shape_angle.y + -0x4000;
    } else {
        setBck(0x10, 0, 3.0f, 1.0f);
        current.angle.y = shape_angle.y + 0x4000;
    }

    setActionMode(4, 7);
}

/* 8060A72C-8060ACB8 0050EC 058C+00 2/1 0/0 0/0 .text            executeDown__9daB_MGN_cFv */
void daB_MGN_c::executeDown() {
    // NONMATCHING
    cXyz local_14;
    switch (field_0xafa) {
        case 0:
        case 1:
            attention_info.flags = 4;
            field_0x20f4[0].OffTgSetBit();
            field_0x1fbc.OffAtSetBit();
            field_0xafd = 1;
            field_0xafc = field_0xafa;

            if (field_0xafc == 0) {
                setBck(0x12, 0, 3.0f, 1.0f);
            } else {
                setBck(11, 0, 3.0f, 1.0f);
            }

            field_0xb01 = 1;
            field_0xafa = 2;
            onBodySlideAt();
            field_0xb03 = 0;
        case 2:
            if (field_0xb03 == 0 && checkHitSlideAt()) {
                field_0xb03 = 1;
            }

            if (mpModelMorf->getFrame() >= 15.0f) {
                setBodySlideEffect();
            } else {
                setBloodEffect();
            }

            if (mpModelMorf->checkFrame(13.0f) || mpModelMorf->checkFrame(19.0f)) {
                dComIfGp_getVibration().StartShock(8, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
                mSound.startCreatureSound(Z2SE_EN_MGN_FOOTNOTE, 0, -1);
            }

            if (mpModelMorf->isStop()) {
                dComIfGp_getVibration().StartQuake(3, 0x1f, cXyz(0.0f, 1.0f, 0.0f));

                if (field_0xafc == 0) {
                    setBck(20, 2, 3.0f, 1.0f);
                } else {
                    setBck(13, 2, 3.0f, 1.0f);
                }

                field_0xafa = 3;
            }
            break;
        case 3:
            if (field_0xb03 == 0 && checkHitSlideAt()) {
                field_0xb03 = 1;
            }

            setBodySlideEffect();

            if (field_0xb03 == 0) {
                cLib_chaseF(&speedF, 0.0f, 1.0f);
            } else {
                cLib_chaseF(&speedF, 0.0f, 3.0f);
            }

            if (field_0xb5c.ChkWallHit()) {
                if (abs((int)(s16)(field_0xb1c.GetWallAngleY() - shape_angle.y)) > 0x6000) {
                    cLib_chaseF(&speedF, 0.0f, 2.0f);
                }
            }

            if (speedF < 5.0f) {
                if (field_0xb03 == 0) {
                    field_0xaa0 = 0x78;
                } else {
                    field_0xaa0 = 0x78;
                }

                field_0xb08 = 0;
                attention_info.flags = 4;
                field_0x20f4[0].OnTgSetBit();
                field_0x20f4[1].OnTgSetBit();

                offBodySlideAt();

                dComIfGp_getVibration().StopQuake(0x1f);
            }

            if (speedF == 0.0f) {
                field_0xafa = 5;
            }
            break;
        case 5:
            if (field_0xafc == 0) {
                setBck(0x17, 2, 10.0f, 1.0f);
            } else {
                setBck(0x11, 2, 10.0f, 1.0f);
            }
            field_0xafa = 6;
        case 6:
            if (daPy_getPlayerActorClass()->getCutType() != daPy_py_c::CUT_TYPE_WOLF_JUMP && field_0xaa0 == 0) {
                setDownEnd();
            }
            break;
        case 10:
            if (mpModelMorf->getFrame() < 42.0f) {
                cLib_chaseF(&speedF, 20.0f, 2.0f);
                setBodySlideEffect();
            } else {
                cLib_chaseF(&speedF, 0.0f, 5.0f);
            }

            if (mpModelMorf->getFrame() >= 30.0f) {
                setBloodEffect();
            }

            if (mpModelMorf->isStop()) {
                mSound.startCreatureVoice(Z2SE_EN_MGN_V_GROWL, -1);
                setBck(6, 0, 3.0f, 1.0f);
                field_0xafa = 8;
            }
            break;
        case 11:
            setBloodEffect();

            if (mpModelMorf->isStop()) {
                switch (field_0xaff) {
                    case 0:
                    case 1:
                        if (health < 500) {
                            field_0xaff = 2;
                        } else if (health < 300) {
                            field_0xaff = 4;
                        }
                        break;
                    case 4:
                        if (health < 200) {
                            field_0xaff = 5;
                        }
                        break;
                } 
                setActionMode(1, 1);
            }
    }
}

/* 8060ACB8-8060B028 005678 0370+00 1/1 0/0 0/0 .text            executeDownDamage__9daB_MGN_cFv */
void daB_MGN_c::executeDownDamage() {
    // NONMATCHING
    switch (field_0xafa) {
        case 0:
            speedF = 0.0f;
            if (health < 0) {
                setActionMode(9, 0);
                break;
            } else {
                if (field_0xb06 != 0) {
                    field_0xb07 = 0;
    
                    if (field_0xafc == 0) {
                        setBck(21, 0, 3.0f, 1.0f);
                        current.angle.y = shape_angle.y + -0x4000;
                    } else {
                        setBck(15, 0, 3.0f, 1.0f);
                        current.angle.y = shape_angle.y + 0x4000;
                    }

                    mSound.startCreatureVoice(Z2SE_EN_MGN_V_RETURN, -1);

                    speedF = 40.0f;
                    checkDownBeforeBG();
                    field_0xafa = 2;

                    field_0x20f4[0].OffTgSetBit();
                    field_0x20f4[1].OffTgSetBit();

                    field_0xb01 = 0;
                    attention_info.flags = 0;
                    field_0xaff += field_0xb06;

                    if (field_0xaff >= 6) {
                        setActionMode(9, 0);
                        return;
                    }
                } else {
                    if (field_0xafc == 0) {
                        setBck(19, 0, 3.0f, 1.0f);
                    } else {
                        setBck(12, 0, 3.0f, 1.0f);
                    }

                    field_0xafa = 1;

                    if (field_0xaa0 == 0) {
                        field_0x20f4[0].OffTgSetBit();
                        field_0x20f4[1].OffTgSetBit();
                        field_0xb01 = 0;
                        attention_info.flags = 0;
                    }
                }

                mSound.startCreatureVoice(Z2SE_EN_MGN_V_DAMAGE, -1);
                break;
            }
        case 1:
            if (mpModelMorf->isStop()) {
                if (field_0xaa0 == 0) {
                    setDownEnd();
                } else {
                    setActionMode(4, 5);
                }
            }
            break;
        case 2:
            if (mpModelMorf->getFrame() >= 26.0f) {
                cLib_chaseF(&speedF, 0.0f, 2.0f);

                if (speedF > 10.0f) {
                    setBodySlideEffect();
                }
                setBloodEffect();
            } else {
                cLib_chaseAngleS(&field_0xa92, 0, 0x20);
                shape_angle.y += field_0xa92;
            }

            if (mpModelMorf->checkFrame(46.0f)) {
                switch (field_0xaff) {
                    case 0:
                    case 1:
                        if (health < 500) {
                            field_0xaff = 2;
                        }
                        break;
                    case 4:
                        if (health < 300) {
                            field_0xaff = 4;
                        }
                        break;
                    default:
                        if (health < 200) {
                            field_0xaff = 5;
                        }
                }
                setActionMode(1, 1);
            }
    }
}

/* 8060B028-8060B430 0059E8 0408+00 1/1 0/0 0/0 .text            executeDownBiteDamage__9daB_MGN_cFv */
void daB_MGN_c::executeDownBiteDamage() {
    s16 sVar3;
    daPy_py_c* player = daPy_getPlayerActorClass();

    switch (field_0xafa) {
        case 0:
            mSound.startCreatureVoice(Z2SE_EN_MGN_V_DAMAGE, -1);
            mSound.startCollisionSE(Z2SE_HIT_WOLFBITE, 0x1f);

            if (field_0xafc == 0) {
                setBck(19, 0, 3.0f, 1.0f);
            } else {
                setBck(12, 0, 3.0f, 1.0f);
            }

            field_0xafa = 1;
            field_0xb00 = 0;
            dComIfGp_getVibration().StartShock(3, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
            offBodyCo();
        case 1:
            if (field_0xafc == 0) {
                sVar3 = shape_angle.y + -0x4000;
            } else {
                sVar3 = shape_angle.y + 0x4000;
            }
        
            player->setWolfEnemyHangBiteAngle(sVar3);
        
            if (checkWolfBiteDamage()) {
                dComIfGp_getVibration().StartShock(3, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
            
                offWolfBiteDamage();
            
                field_0xb00 += 1;
            
                if (field_0xb00 >= 5) {
                    field_0xb07 = 0;
                    player->offWolfEnemyHangBite();
                    mSound.startCollisionSE(Z2SE_HIT_WOLFBITE, 0x20);
                    onBodyCo();
                
                    if (field_0xafc == 0) {
                        setBck(21, 0, 3.0f, 1.0f);
                        current.angle.y = shape_angle.y + -0x4000;
                    } else {
                        setBck(15, 0, 3.0f, 1.0f);
                        current.angle.y = shape_angle.y + 0x4000;
                    }
                
                    mSound.startCreatureVoice(Z2SE_EN_MGN_V_RETURN, -1);
                
                    speedF = 40.0f;
                    field_0x20f4[0].OffTgSetBit();
                    field_0x20f4[1].OffTgSetBit();
                    field_0xb01 = 0;
                    attention_info.flags = 0;
                    field_0xaff += 1;
                
                    if (health < 0 || field_0xaff >=
                         6) {
                        setActionMode(9, 0);
                    } else {
                        checkDownBeforeBG();
                        setActionMode(5, 2);
                    }
                } else {
                    if (field_0xafc == 0) {
                        setBck(19, 0, 3.0f, 1.0f);
                    } else {
                        setBck(12, 0, 3.0f, 1.0f);
                    }
                
                    mSound.startCollisionSE(Z2SE_HIT_WOLFBITE, 0x1e);
                    mSound.startCreatureVoice(Z2SE_EN_MGN_V_DAMAGE, -1);
                }
            }
        
            if (player->checkWolfEnemyBiteAllOwn(this)) {
                if (!mpModelMorf->isStop()) {
                    return;
                }
            }
        
            onBodyCo();
            player->offWolfEnemyHangBite();
            offWolfBiteDamage();
            setDownEnd();
    }
}

/* 8060B430-8060B544 005DF0 0114+00 1/1 0/0 0/0 .text            executeWarp__9daB_MGN_cFv */
void daB_MGN_c::executeWarp() {
    // NONMATCHING
    switch (field_0xafa) {
        case 0:
            if ((field_0xaff != 2 && field_0xaff != 3) || (cM_rnd() <= 0.5f || field_0xb04 == 0)) {
                field_0xafe = 1;
                field_0xb04 = 1;
            } else {
                field_0xafe = 0;
            }

            field_0xa9c = 0x5a;
            break;
        case 1:
            field_0xafe = 1;
            field_0xa9c = 0;
    }

    attention_info.flags = 0;
    field_0xafa = 2;
    offBodyCo();

    if (field_0xa9c == 0) {
        if (field_0xafe == 0) {
            field_0xb02 = 0;
            setActionMode(2, 10);
        } else {
            setActionMode(8, 0);
        }
    }
}

/* 8060B544-8060BE6C 005F04 0928+00 2/1 0/0 0/0 .text            executeFall__9daB_MGN_cFv */
void daB_MGN_c::executeFall() {
    // NONMATCHING
    cXyz local_24;

    daPy_py_c* player = daPy_getPlayerActorClass();
    local_24 = cXyz(player->current.pos);

    if (field_0xafa >= 4) {
        setBloodEffect();
    }

    switch (field_0xafa) {
        case 0:
            onBodyCo();
            f32 fVar1 = player->speedF * 60.0f;
            s16 sVar1 = player->current.angle.y;
            // f32 fVar2 = cM_scos(sVar1);
            // f32 fVar3 = cM_ssin(sVar1);
            cXyz local_30 = cXyz(local_24.x + fVar1 * cM_ssin(sVar1), 1500.0f, 
                (local_24.z + fVar1 * cM_scos(sVar1)));

            if (local_30.x > 3000.0f) {
                local_30.x = 3000.0f;
            }
            if (local_30.x < -3000.0f) {
                local_30.x = -3000.0f;
            }

            if (local_30.z > 2100.0f) {
                local_30.z = 2100.0f;
            }
            if (local_30.z < -3300.0f) {
                local_30.z = -3300.0f;
            }

            field_0xb10 = setHideSmokeEffect(&local_30, 1);

            field_0xae8 = 0.0f;
            gravity = 0.0f;
            speedF = 0.0f;
            speed.y = 0.0f;
            current.pos = local_30;
            old.pos = current.pos;

            s16 playerAngleY = fopAcM_searchPlayerAngleY(this);

            current.angle.y = playerAngleY;
            shape_angle.y = playerAngleY;

            field_0xb16 = field_0xb14 = shape_angle.y;
            field_0xafa = 1;
            field_0xa9c = 0x3c;

            setBck(0x19, 2, 3.0f, 1.0f);

            field_0x5c4->init(mpModelMorf->getModel()->getModelData(), 
                (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("B_mgn", 0x3a), 1,
                0, 0.0f, 0, -1);
        case 1:
            cLib_chaseF(&field_0xae8, 1.0f, 0.02f);

            if (field_0xa9c == 0) {
                field_0x5c4->setPlaySpeed(0.7f);
                attention_info.flags = 0;
                field_0xafd = 0;
                gravity = -3.0f;
                field_0xafa = 4;

                onBodyFallAt();

                dComIfGs_onOneZoneSwitch(10, fopAcM_GetRoomNo(this));

                if (field_0xb10 != -1) {
                    field_0x26b8[field_0xb10] = 7;
                }
            } else if (field_0xa9c == 0x1e && field_0xb10 != -1) {
                field_0x26b8[field_0xb10] = 5;
            }
            break;
        case 4:
            if (current.pos.y < 1000.0f) {
                setBck(0x18, 0, 10.0f, 0.0f);
                field_0xafa = 5;
            }
        case 5:
            if (field_0xb5c.ChkGroundHit()) {
                dComIfGp_getVibration().StartShock(8, 0x1f, cXyz(0.0f, 1.0f, 0.0f));

                dComIfGs_offOneZoneSwitch(10, fopAcM_GetRoomNo(this));

                mSound.startCreatureSound(Z2SE_EN_MGN_FOOTNOTE, 0, -1);

                mpModelMorf->setPlaySpeed(1.0f);

                if (field_0xaff >= 4) {
                    field_0xafa = 15;
                } else {
                    if (abs((int)(s16)(shape_angle.y - fopAcM_searchPlayerAngleY(this))) < 0x2000) {
                        field_0xafa = 6;
                    } else {
                        field_0xafa = 7;
                    }
                }

                field_0xa9c = 5;
                setFallAttackEffect();
            }
            break;
        case 6:
            if (field_0xa9c == 0) {
                offBodyFallAt();
            }

            cLib_addCalcAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 0x10, 0x400, 0x80);
            current.angle.y = shape_angle.y;

            if (mpModelMorf->isStop()) {
                field_0xafa = 10;
                mSound.startCreatureVoice(Z2SE_EN_MGN_V_GROWL, -1);
                setBck(7, 0, 3.0f, 1.0f);
            }
            break;
        case 7:
            if (field_0xa9c == 0) {
                offBodyFallAt();
            }

            if (mpModelMorf->isStop()) {
                field_0xafa = 8;
                mSound.startCreatureVoice(Z2SE_EN_MGN_V_TURN, -1);
                setBck(0x24, 0, 3.0f, 1.0f);
            }
            break;
        case 8:
            if (mpModelMorf->checkFrame(12.0f)) {
                onBodySlideAt();
            }

            if (mpModelMorf->checkFrame(50.0f)) {
                offBodySlideAt();
            }

            if (mpModelMorf->checkFrame(43.0f)) {
                dComIfGp_getVibration().StartShock(6, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
                mSound.startCreatureSound(Z2SE_EN_MGN_FOOTNOTE, 0, -1);
            }

            if (mpModelMorf->getFrame() <= 12.0f && mpModelMorf->getFrame() < 43.0f) {
                cLib_addCalcAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 0x10, 0x400, 0x80);
                current.angle.y = shape_angle.y;
            } else {
                if (mpModelMorf->getFrame() >= 43.0f) {
                    setStepEffect();
                }
            }

            if (mpModelMorf->isStop()) {
                field_0xafa = 10;
                mSound.startCreatureVoice(Z2SE_EN_MGN_V_GROWL, -1);
                setBck(7, 0, 3.0f, 1.0f);
            }
            break;
        case 10:
            cLib_addCalcAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 0x10, 0x400, 0x80);

            if (mpModelMorf->checkFrame(19.0f)) {
                gravity = -5.0f;
                speed.y = 35.0f;
                speedF = 70.0f;
                current.angle.y = shape_angle.y + -0x8000;
                field_0xafa = 11;
            }
            break;
        case 11:
            if (mpModelMorf->checkFrame(34.0f)) {
                mpModelMorf->setPlaySpeed(0.0f);
            }

            if (field_0xb5c.ChkGroundHit()) {
                speedF = 0.0f;

                dComIfGp_getVibration().StartShock(4, 0x1f, cXyz(0.0f, 1.0f, 0.0f));

                mpModelMorf->setPlaySpeed(1.0f);
                field_0xafa = 12;
            }
            break;
        case 12:
            setBackJumpEffect();

            cLib_addCalcAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 0x10, 0x400, 0x80);

            if (mpModelMorf->isStop()) {
                setBck(0x25, 2, 3.0f, 1.0f);
                field_0xa9c = 0x1e;
                field_0xafa = 13;
                field_0x5cc = 2;
            }
            break;
        case 13:
            attention_info.flags = 0;

            if (daPy_py_c::checkNowWolf()) {
                attention_info.flags |= 4;
            }

            cLib_addCalcAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 0x10, 0x400, 0x80);
            current.angle.y = shape_angle.y;

            if (field_0xa9c == 0) {
                field_0xafd = 0;
                setActionMode(2, 2);
                field_0x5cc = 2;
            }
            break;
        case 15:
            if (field_0xa9c == 0) {
                offBodyFallAt();
            }

            current.angle.y = shape_angle.y;

            if (mpModelMorf->isStop()) {
                setActionMode(1, 10);
            }
    }
}

/* 8060BE6C-8060C034 00682C 01C8+00 1/1 0/0 0/0 .text            demo_skip__9daB_MGN_cFi */
void daB_MGN_c::demo_skip(int param_1) {
    // NONMATCHING
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    field_0xaf0 = 0.0f;

    dComIfGp_getVibration().StopQuake(0x1f);

    J3DModelData* modelData = mpModelMorf->getModel()->getModelData();
    field_0x5c0->remove(modelData);
    field_0x5c0->init(modelData, 
        (J3DAnmTevRegKey*)dComIfG_getObjectRes("B_mgn", 0x33), 1, 
        2, 1.0f, 0, -1);

    current.pos.set(0.0f, 0.0f, 90.0f);
    field_0xac8.set(0.0f, -180.0f, -2090.0f);
    field_0xabc.set(-300.0f, -200.0f, -3090.0f);
    
    camera->mCamera.Reset(field_0xac8, field_0xabc);
    camera->mCamera.Start();
    camera->mCamera.SetTrimSize(0);

    dComIfGp_event_reset();

    field_0xaf8 = 1;
    field_0xaf4 = 1.0f;

    Z2GetAudioMgr()->bgmStreamStop(0x1e);
    Z2GetAudioMgr()->bgmStart(Z2BGM_VS_GANON_02, 0, 0);
    
    setActionMode(2, 0);
}

/* 8060C034-8060C068 0069F4 0034+00 1/1 0/0 0/0 .text            DemoSkipCallBack__9daB_MGN_cFPvi */
int daB_MGN_c::DemoSkipCallBack(void* i_this, int param_1) {
    if (i_this) {
        static_cast<daB_MGN_c*>(i_this)->demo_skip(param_1);
        return 1;
    } else {
        return 0;
    }
}

/* 8060C068-8060D078 006A28 1010+00 2/1 0/0 0/0 .text            executeOpening__9daB_MGN_cFv */
void daB_MGN_c::executeOpening() {
    // NONMATCHING
    cXyz local_24, local_30, local_3c, local_48, local_54;
    camera_class* cameraClass = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    daPy_py_c* player = daPy_getPlayerActorClass();
    J3DModel* model = mpModelMorf->getModel();
    J3DModelData* modelData = model->getModelData();
    local_24 = cXyz(-7.0f, 0.0f, -1045.0f);
    local_3c = cXyz(100.0f, 0.0f, -2190.0f);
    local_48 = cXyz(0.0f, 220.0f, -1390.0f);

    switch (field_0xafa) {
        case 0:
            attention_info.flags = 0;

            if (!eventInfo.checkCommandDemoAccrpt()) {
                fopAcM_orderPotentialEvent(this, 2, 0xffff, 4);
                eventInfo.onCondition(2);
                return;
            }

            fopAcM_OffStatus(this, 0x4000);

            player->changeOriginalDemo();
            player->setPlayerPosAndAngle(&local_3c, 0, 0);
            player->changeDemoMoveAngle(0);
            player->changeDemoPos0(&local_3c);
            player->changeDemoMode(4, 1, 0, 0);

            current.pos = local_24;

            shape_angle.y = current.angle.y = -0x8000;
            field_0xb16 = field_0xb14 = shape_angle.y;

            setBck(0x21, 0, 3.0f, 1.0f);

            field_0x5c0->remove(modelData);

            field_0x5c0->init(modelData, (J3DAnmTevRegKey*)dComIfG_getObjectRes("B_mgn", 0x36),
                1, 0, 1.0f, 0, -1);

            field_0xafa = 1;

            cameraClass->mCamera.Stop();
            cameraClass->mCamera.SetTrimSize(3);

            field_0xadc = -200.0f;
            field_0xae0 = -0x4800;
            field_0xae2 = 0;

            field_0xac8.set(-7.0f, 227.0f, -1312.0f - field_0xadc);
            field_0xabc.set(-114.0f, 150.0f, 2690.0f);

            field_0xad4 = 40.0f;
            field_0xad8 = 170.0f;

            onBodyCo();

            field_0xaf8 = 1;
            field_0xaf4 = 0.0f;

            local_54 = cXyz(current.pos);
            local_54.y = 0.0f;

            dComIfGp_particle_set(0x8c32, &local_54, &shape_angle, NULL);
            dComIfGp_particle_set(0x8c33, &local_54, &shape_angle, NULL);
            dComIfGp_particle_set(0x8c34, &local_54, &shape_angle, NULL);

            Z2GetAudioMgr()->bgmStreamPrepare(0x2000062);
            Z2GetAudioMgr()->bgmStreamPlay();
            return;
        case 1:
            cLib_addCalc2(&field_0xadc, 0.0f, 0.1f, 5.0f);
            cLib_addCalcAngleS2(&field_0xae2, 0x50, 8, 8);
            cLib_addCalcAngleS2(&field_0xae0, -0x7c80, 0x20, field_0xae2);

            field_0xabc = local_48;
            field_0xabc.x += cM_ssin(field_0xae0) * 1100.0f;
            field_0xabc.z += cM_scos(field_0xae0) * 1100.0f;

            cLib_chaseF(&field_0xad8, 170.0f, 1.0f);

            mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(0x1b));
            mDoMtx_stack_c::multVecZero(&local_30);
            local_30.y += field_0xad8;
            local_30.z -= field_0xadc;

            cLib_addCalcPos2(&field_0xac8, local_30, 0.1f, 10.0f);

            if (mpModelMorf->checkFrame(175.0f)) {
                field_0xafa = 2;
                player->setPlayerPosAndAngle(&local_3c, 0, 0);
                player->changeDemoMode(0x17, 1, 0, 0);
            }
            break;
        case 2:
            cLib_addCalc2(&field_0xadc, 0.0f, 0.1f, 10.0f);
            cLib_addCalcAngleS2(&field_0xae2, 0x60, 8, 8);
            cLib_addCalcAngleS2(&field_0xae0, -0x7c80, 0x20, field_0xae2);

            field_0xabc = local_48;
            field_0xabc.x += cM_ssin(field_0xae0) * 1100.0f;
            field_0xabc.z += cM_scos(field_0xae0) * 1100.0f;

            if (mpModelMorf->getFrame() < 275.0f) {
                cLib_addCalc2(&field_0xaf0, 180.0f, 0.1f, 5.0f);
            } else {
                cLib_addCalc2(&field_0xaf0, 0.0f, 0.1f, 5.0f);
            }

            mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(0x1b));
            mDoMtx_stack_c::multVecZero(&local_30);
            local_30.y *= 0.8f;
            local_30.z -= field_0xadc;

            cLib_addCalcPos2(&field_0xac8, local_30, 0.5f, 50.0f);

            if (mpModelMorf->checkFrame(280.0f)) {
                field_0xafa = 3;
                field_0xadc = 0.0f;
            }
            break;
        case 3:
            cLib_addCalc2(&field_0xaf0, 0.0f, 0.1f, 5.0f);
            if (mpModelMorf->getFrame() >= 305.0f) {
                setOpeningEffect();
            }

            mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(0x1b));
            mDoMtx_stack_c::multVecZero(&local_30);

            if (mpModelMorf->getFrame() < 305.0f) {
                local_30.y *= 0.7f;
            }

            if (mpModelMorf->getFrame() > 290.0f) {
                cLib_addCalc2(&field_0xadc, 100.0f, 0.1f, 10.0f);
                local_30.x += field_0xadc;
            }

            cLib_addCalcPos2(&field_0xac8, local_30, 0.5f, 100.0f);
            if (mpModelMorf->checkFrame(365.0f)) {
                fopMsgM_messageSetDemo(0x491);
            }

            if (mpModelMorf->checkFrame(305.0f)) {
                dComIfGp_getVibration().StartShock(8, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
                mSound.startCreatureSound(Z2SE_EN_MGN_FOOTNOTE, 0, -1);
            } else {
                if (mpModelMorf->checkFrame(360.0f)) {
                    dComIfGp_getVibration().StartQuake(4, 0x1f, cXyz(0.0f, 1.0f, 0.0f));

                    if (!daPy_py_c::checkNowWolf()) {
                        player->changeDemoMode(0x22, 1, 0, 0);
                    } else {
                        player->changeDemoMode(0x17, 1, 0, 0);
                    }
                } else {
                    if (mpModelMorf->checkFrame(420.0f)) {
                        dComIfGp_getVibration().StopQuake(0x1f);
                    } else {
                        if (mpModelMorf->checkFrame(450.0f)) {
                            if (!daPy_py_c::checkNowWolf()) {
                                player->changeDemoMode(0x17, 1, 0, 0);
                            }
                        }
                    }
                }
            }

            cLib_addCalcPos2(&field_0xabc, cXyz(-250.0f, 10.0f, -2540.0f), 0.1f, 20.0f);

            if (mpModelMorf->isStop()) {
                mSound.startCreatureVoice(Z2SE_EN_MGN_V_GROWL, -1);
                setBck(7, 0, 3.0f, 1.0f);
                field_0xafa = 5;
            }

            if (field_0x5c0->isStop()) {
                field_0x5c0->remove(modelData);
                field_0x5c0->init(modelData,
                    (J3DAnmTevRegKey*)dComIfG_getObjectRes("B_mgn", 0x33),
                    1, 2, 1.0f, 0, -1);
            }
            break;
        case 5:
            mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(0x1b));
            mDoMtx_stack_c::multVecZero(&local_30);
            cLib_addCalcPos2(&field_0xac8, local_30, 0.5f, 200.0f);

            if (mpModelMorf->checkFrame(19.0f)) {
                gravity = -5.0f;
                speed.y = 35.0f;
                speedF = 70.0f;
                field_0xafa = 6;
                current.angle.y = shape_angle.y + -0x8000;
            }
            break;
        case 6:
            mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(0x1b));
            mDoMtx_stack_c::multVecZero(&local_30);

            if (mpModelMorf->checkFrame(25.0f)) {
                cLib_addCalcPos2(&field_0xac8, local_30, 0.5f, 200.0f);
            } else {
                cLib_addCalcPos2(&field_0xac8, local_30, 0.5f, 50.0f);
            }

            if (mpModelMorf->checkFrame(34.0f)) {
                mpModelMorf->setPlaySpeed(0.0f);
            }

            if (field_0xb5c.ChkGroundHit()) {
                speedF = 0.0f;
                dComIfGp_getVibration().StartShock(4, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
                mpModelMorf->setPlaySpeed(1.0f);
                field_0xafa = 7;
            }
            break;
        case 7:
            setBackJumpEffect();
            mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(0x1b));
            mDoMtx_stack_c::multVecZero(&local_30);

            cLib_addCalcPos2(&field_0xac8, local_30, 0.5f, 200.0f);

            if (mpModelMorf->isStop()) {
                setBck(0x25, 2, 3.0f, 1.0f);
                field_0xa9c = 0x1e;
                field_0xafa = 8;
            }
            break;
        case 8:
            mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(0x1b));
            mDoMtx_stack_c::multVecZero(&local_30);

            cLib_addCalcPos2(&field_0xac8, local_30, 0.5f, 200.0f);

            if (field_0xa9c == 0) {
                setBck(0x26, 0, 3.0f, 1.0f);
                field_0xafa = 10;
                field_0xad8 = 0.0f;
            }
            break;
        case 10:
            mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(0x1b));
            mDoMtx_stack_c::multVecZero(&local_30);

            cLib_addCalcPos2(&field_0xac8, local_30, 0.5f, 200.0f);
            cLib_chaseF(&field_0xad8, 5.0f, 1.0f);
            cLib_addCalcPos2(&field_0xabc, cXyz(0.0f, 100.0f, -2590.0f), 0.1f, field_0xad8);

            if (mpModelMorf->isStop()) {
                setBck(0x25, 2, 3.0f, 1.0f);
                field_0xa9c = 0x1e;
                field_0xafa = 11;
            }
            break;
        case 11:
            mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(0x1b));
            mDoMtx_stack_c::multVecZero(&local_30);

            cLib_addCalcPos2(&field_0xac8, local_30, 0.5f, 200.0f);
            cLib_chaseF(&field_0xad8, 5.0f, 1.0f);
            cLib_addCalcPos2(&field_0xabc, cXyz(0.0f, 100.0f, -2590.0f), 0.1f, field_0xad8);

            if (field_0xa9c == 0) {
                setActionMode(2, 0);
                field_0xac8.set(100.0f, 100.0f, -2190.0f);
                field_0xabc.set(0.0f, 100.0f, -2690.0f);

                cameraClass->mCamera.Reset(field_0xac8, field_0xabc);
                cameraClass->mCamera.Start();
                cameraClass->mCamera.SetTrimSize(0);
                dComIfGp_event_reset();

                Z2GetAudioMgr()->bgmStart(Z2BGM_VS_GANON_02, 0, 0);
                return;
            }
    }

    cameraClass->mCamera.Set(field_0xac8, field_0xabc, field_0xad4, 0);
    dComIfGp_getEvent().onSkipFade();
    dComIfGp_getEvent().setSkipProc(this, DemoSkipCallBack, 0);
    mSound.startCreatureVoiceLevel(Z2SE_EN_MGN_DEMO_OP, -1);
}

/* 8060D078-8060D880 007A38 0808+00 1/1 0/0 0/0 .text            executeDeath__9daB_MGN_cFv */
void daB_MGN_c::executeDeath() {
    // NONMATCHING
    cXyz local_2c, local_38;
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz local_44 = cXyz(-300.0f, 0.0f, -2500.0f);

    switch (field_0xafa) {
        case 0:
            if (!eventInfo.checkCommandDemoAccrpt()) {
                fopAcM_orderPotentialEvent(this, 2, 0xffff, 0);
                eventInfo.onCondition(2);
                return;
            }

            Z2GetAudioMgr()->bgmStop(0x1e, 0);

            if (field_0xafb != 0xff) {
                dComIfGs_onSwitch(field_0xafb, fopAcM_GetRoomNo(this));
            }

            field_0xaf8 = 2;
            field_0xaf4 = 0.0f;
            setBck(0x1a, 0, 3.0f, 1.0f);

            field_0x5c0->remove(mpModelMorf->getModel()->getModelData());
            field_0x5c0->init(mpModelMorf->getModel()->getModelData(),
                (J3DAnmTevRegKey*)dComIfG_getObjectRes("B_mgn", 0x35), 1, 0,
                1.0f, 0, -1);
            field_0x5c4->init(mpModelMorf->getModel()->getModelData(),
                (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("B_mgn", 0x3b), 1, 0,
                1.0f, 0, 0);

            field_0xafa = 1;

            camera->mCamera.Stop();
            camera->mCamera.SetTrimSize(3);

            speedF = 0.0f;
            field_0xae0 = 0x4800;
            field_0xae2 = 0;
            field_0xadc = 1000.0f;

            field_0xabc.set(field_0xadc * cM_ssin(field_0xae0), 70.0f, field_0xadc * cM_scos(field_0xae0));
            field_0xabc += local_44;
            field_0xac8.set(0.0f, 300.0f, -500.0f);
            field_0xac8 += local_44;

            field_0xad4 = 68.0f;
            field_0xa9c = 10;

            player->setPlayerPosAndAngle(&cXyz(0.0f, 0.0f, 0.0f), fopAcM_searchPlayerAngleY(this) + -0x8000, 0);

            player->changeOriginalDemo();
            player->changeDemoMode(4, 1, 0, 0);

            mSound.startCreatureVoice(Z2SE_EN_MGN_DEMO_END, -1);
            return;
        case 1:
            current.pos = local_44;
            current.angle.y = 0x6800;
            shape_angle.y = 0x6800;

            field_0xb16 = field_0xb14 = shape_angle.y;
            
            field_0xafa = 2;
        case 2:
            if (mpModelMorf->getFrame() < 230.0f) {
                cLib_addCalc2(&field_0xaf0, 0.0f, 0.1f, 2.0f);
            } else {
                cLib_addCalc2(&field_0xaf0, 180.0f, 0.1f, 2.0f);
            }

            mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(0x19));
            mDoMtx_stack_c::multVecZero(&local_2c);
            cLib_addCalcPos2(&field_0xac8, local_2c, 0.1f, 50.0f);

            if (field_0xa9c == 0) {
                cLib_addCalcAngleS2(&field_0xae2, 0x40, 8, 8);
                cLib_addCalcAngleS2(&field_0xae0, 0x6e00, 0x20, field_0xae2);
                cLib_addCalc2(&field_0xadc, 500.0f, 0.1f, 7.0f);
            }

            field_0xabc.set(field_0xadc * cM_ssin(field_0xae0), 70.0f, field_0xadc * cM_scos(field_0xae0));
            field_0xabc += local_44;

            if (mpModelMorf->checkFrame(303.0f)) {
                field_0xafa = 3;
                field_0xad8 = 0.0f;
            }
            break;
        case 3:
            if (mpModelMorf->getFrame() >= 333.0f) {
                setFallAttackEffect();
            }

            if (mpModelMorf->checkFrame(333.0f)) {
                dComIfGp_getVibration().StartShock(8, 0x1f, cXyz(0.0f, 1.0f, 0.0f));

                if (daPy_py_c::checkNowWolf()) {
                    player->changeDemoMode(0x22, 0, 0, 0);
                }
            }

            if (mpModelMorf->checkFrame(350.0f)) {
                dComIfGp_getVibration().StartShock(4, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
            }

            mDoMtx_stack_c::transS(local_44);
            mDoMtx_stack_c::YrotM(0x6800);
            mDoMtx_stack_c::transM(320.0f, 0.0f, 1000.0f);
            mDoMtx_stack_c::multVecZero(&local_38);

            player->setPlayerPosAndAngle(&local_38, fopAcM_searchPlayerAngleY(this) + -0x8000, 0);

            mDoMtx_stack_c::transS(local_44);
            mDoMtx_stack_c::YrotM(0x6800);
            mDoMtx_stack_c::transM(320.0f, 70.0f, 1280.0f);
            mDoMtx_stack_c::multVecZero(&local_2c);
            cLib_addCalc2(&field_0xad8, 50.0f, 0.1f, 5.0f);
            cLib_addCalcPos2(&field_0xabc, local_2c, 0.1f, field_0xad8);

            mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(0x19));
            mDoMtx_stack_c::multVecZero(&local_2c);
            cLib_addCalcPos2(&field_0xac8, local_2c, 0.1f, 30.0f);

            if (mpModelMorf->isStop()) {
                if (daPy_py_c::checkNowWolf()) {
                    field_0xafa = 4;
                    field_0xa9c = 0x3c;
                } else {
                    field_0xafa = 5;
                    field_0xa9c = 0x1e;
                }
            }
            break;
        case 4:
            if (field_0xa9c == 0) {
                field_0xafa = 100;
                dStage_changeScene(2, 0.0f, 0, fopAcM_GetRoomNo(this), 0, -1);
            }
            break;
        case 100:
            return;
        case 5:
        default:
            if (field_0xa9c == 0) {
                player->changeDemoMode(0x3a, 0, 0, 0);
                field_0xafa = 4;
                field_0xa9c = 100;
            }
    }
    
    camera->mCamera.Set(field_0xac8, field_0xabc, field_0xad4, 0);

}

/* 8060D880-8060DAC0 008240 0240+00 1/1 0/0 0/0 .text            executeJump__9daB_MGN_cFv */
void daB_MGN_c::executeJump() {
    // NONMATCHING
    switch (field_0xafa) {
        case 0:
            attention_info.flags = 0;
            offBodyCo();

            field_0x1fbc.OffAtSetBit();
            field_0x20f4[0].OffTgSetBit();

            setBck(10, 0, 5.0f, 1.0f);

            field_0x5c4->init(&mpModelMorf->getModel()->getModelData()->getMaterialTable(),
                (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("B_mgn", 0x39), 1, 0,
                1.1f, 0, -1);
            field_0x5c4->setFrame(5.0f);
            field_0xafa = 1;
        case 1:
            cLib_chaseF(&field_0xae8, 0.0f, 0.05f);

            if (mpModelMorf->isStop()) {
                speed.y = 80.0f;
                speedF = 10.0f;
            }

            if (field_0x5c4->checkFrame(10.0f)) {
                // cXyz local_1c = cXyz(current.pos);
                // local_1c.y += 1000.0f;
                dComIfGp_particle_set(0x8c1b, &cXyz(current.pos.x, current.pos.y + 1000.0f, current.pos.z), &tevStr, &shape_angle, 0);

                mSound.startCreatureSound(Z2SE_EN_MGN_WARP, 0, -1);
            }

            if (field_0x5c4->isStop()) {
                setActionMode(7, 1);
            }
    }
}

/* 8060DAC0-8060DDA0 008480 02E0+00 1/1 0/0 0/0 .text            checkStartJump__9daB_MGN_cFv */
void daB_MGN_c::checkStartJump() {
    // NONMATCHING
    if (field_0xb0b >= 2) {
        if (!dComIfGs_isOneZoneSwitch(7, fopAcM_GetRoomNo(this))) {
            dComIfGs_onOneZoneSwitch(7, fopAcM_GetRoomNo(this));
        }

        if (daPy_py_c::checkNowWolf()) {
            dComIfGs_onOneZoneSwitch(8, fopAcM_GetRoomNo(this));
        } else {
            dComIfGs_offOneZoneSwitch(8, fopAcM_GetRoomNo(this));
        }
    }

    if (field_0xaff >= 4 && field_0xafd == 0 && field_0x20f4[0].ChkTgSet() && field_0xaf9 != 10) {
        if (fpcM_Search(s_obj_sub, this)) {
            if (field_0xb0b < 2) {
                field_0xb0b++;
            }
            
            setActionMode(10, 0);
        } else {
            if (daPy_getPlayerActorClass()->getIronBallCenterPos() && !dComIfGp_checkPlayerStatus0(0, 0x400)) {
                if (daPy_getPlayerActorClass()->getIronBallCenterPos()->absXZ(current.pos) < 1500.0f) {
                    if (abs((int)(s16)(current.angle.y - cLib_targetAngleY(&current.pos, daPy_getPlayerActorClass()->getIronBallCenterPos()))) < 0x2000) {
                        if (field_0xb0b < 2) {
                            field_0xb0b++;
                        }

                        setActionMode(10, 0);
                    }
                }
            }
        }
    }
}

/* 8060DDA0-8060E158 008760 03B8+00 2/1 0/0 0/0 .text            action__9daB_MGN_cFv */
void daB_MGN_c::action() {
    // NONMATCHING
    cXyz local_1c;

    damage_check();
    checkStartJump();

    switch (field_0xaf9) {
        case 0:
            executeOpening();
            break;
        case 1:
            executeCircle();
            break;
        case 2:
            executeDash();
            break;
        case 3:
            executeThrown();
            break;
        case 4:
            executeDown();
            break;
        case 5:
            executeDownDamage();
            break;
        case 6:
            executeDownBiteDamage();
            break;
        case 7:
            executeWarp();
            break;
        case 8:
            executeFall();
            break;
        case 9:
            executeDeath();
            break;
        case 10:
            executeJump();
    }

    daPy_getPlayerActorClass()->onBossRoomWait();

    if (field_0xb18 != 0) {
        field_0xb18 = 0;
    } else {
        cLib_addCalcAngleS(&field_0xb16, shape_angle.y, 8, 0x400, 0x80);
        cLib_addCalcAngleS(&field_0xb14, field_0xb16, 8, 0x400, 0x80);
    }

    switch (field_0xaf8) {
        case 0:
            field_0xaf4 = 1.0f;
            dKy_custom_colset(1, 1, field_0xaf4);
            break;
        case 1:
            cLib_chaseF(&field_0xaf4, 1.0f, 0.005f);
            dKy_custom_colset(1, 0, field_0xaf4);
            break;
        case 2:
            cLib_chaseF(&field_0xaf4, 1.0f, 0.01f);
            dKy_custom_colset(0, 2, field_0xaf4);
            break;
    }

    if (field_0x5c4->getBtkAnm() != (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("B_mgn", 0x3d) ||
        field_0x5c4->getFrame() == 0.0f) {
        Z2GetAudioMgr()->changeBgmStatus(0);
    } else {
        Z2GetAudioMgr()->changeBgmStatus(1);
    }

    if (field_0x5cc == 1) {
            cLib_chaseF(&field_0x5c8, 1.0f, 0.1f);
    } else if (field_0x5cc == 2) {
        cLib_chaseF(&field_0x5c8, 1.0f, 0.02f);
    } else {
        cLib_chaseF(&field_0x5c8, 0.0f, 0.1f);
    }

    if (field_0xb01 != 0) {
        mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(1));
        mDoMtx_stack_c::transM(180.0f, -170.0f, 0.0f);
        mDoMtx_stack_c::multVecZero(&local_1c);
        setDownPos(&local_1c);
    }

    fopAcM_posMoveF(this, field_0xd34.GetCCMoveP());

    if (field_0xaac == 0) {
        field_0xb5c.CrrPos(dComIfG_Bgsp());
    }

    if (field_0xd70[0].ChkAtSPrm(1) != 0 && field_0xb5c.ChkWallHit() != 0) {
        daObjBHASHI_c* pillar = (daObjBHASHI_c*)dComIfG_Bgsp().GetActorPointer(field_0xb1c);
        if (pillar && fopAcM_GetName(pillar) == 0x6c) {
            pillar->Obj_Damage(current.pos);
        }
    }

    mpModelMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    field_0x5c0->play();
    field_0x5c4->play();
}

/* 8060E158-8060E1D0 008B18 0078+00 1/1 0/0 0/0 .text            mtx_set__9daB_MGN_cFv */
void daB_MGN_c::mtx_set() {
    // NONMATCHING
    J3DModel* model = mpModelMorf->getModel();

    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::scaleM(l_HIO.field_0x08, l_HIO.field_0x08, l_HIO.field_0x08);

    model->setBaseTRMtx(mDoMtx_stack_c::get());
    mpModelMorf->modelCalc();
}

/* 80610074-80610078 000294 0004+00 0/1 0/0 0/0 .rodata          @8057 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8057 = 400.0f;
COMPILER_STRIP_GATE(0x80610074, &lit_8057);
#pragma pop

/* 8060E1D0-8060E820 008B90 0650+00 1/1 0/0 0/0 .text            cc_set__9daB_MGN_cFv */
void daB_MGN_c::cc_set() {
    // NONMATCHING
    static u32 const cc_set_jnt[15] = {
        1, 1, 0x25, 0x34, 0x23, 0x32, 0x41, 0x43, 
        0x45, 0x47, 0x49, 0x4A, 0x4B, 0x4B, 0x1B,
    };

    static f32 const cc_set_radius[15] = {
        200.0f, 280.0f, 100.0f, 100.0f, 100.0f, 100.0f, 70.0f,
        70.0f, 70.0f, 70.0f, 70.0f, 70.0f, 60.0f, 50.0f, 150.0f,
    };

    cXyz local_48, local_54, local_60;
    J3DModel* model = mpModelMorf->getModel();
    if (field_0xafd == 0) {
        mDoMtx_stack_c::copy(model->getAnmMtx(0x1b));
        mDoMtx_stack_c::transM(100.0f, 0.0f, 0.0f);
    } else {
        mDoMtx_stack_c::copy(model->getAnmMtx(1));
        mDoMtx_stack_c::transM(200.0f, -150.0f, 0.0f);
    }

    mDoMtx_stack_c::multVecZero(&eyePos);
    attention_info.position = eyePos;
    attention_info.position.y += 70.0f;

    local_60 = daPy_getPlayerActorClass()->current.pos;

    for (int i = 0; i < 15; i++) {
        mDoMtx_stack_c::copy(model->getAnmMtx(cc_set_jnt[i]));

        if (i == 1) {
            mDoMtx_stack_c::transM(150.0f, 0.0f, 0.0f);
        }

        if (i == 13) {
            mDoMtx_stack_c::transM(80.0f, 20.0f, 0.0f);
        }

        mDoMtx_stack_c::multVecZero(&local_48);

        field_0xd70[i].SetC(local_48);
        field_0xd70[i].SetR(cc_set_radius[i]);
        dComIfG_Ccsp()->Set(&field_0xd70[i]);
    }

    if (field_0xafd == 0) {
        mDoMtx_stack_c::copy(model->getAnmMtx(0x1b));
        mDoMtx_stack_c::transM(30.0f, 0.0f, 0.0f);
        mDoMtx_stack_c::multVecZero(&local_48);

        field_0x20f4[0].SetC(local_48);
        field_0x20f4[0].SetR(150.0f);
        dComIfG_Ccsp()->Set(field_0x20f4);

        field_0x2364[0].SetC(local_48);
        field_0x2364[0].SetR(150.0f);
        dComIfG_Ccsp()->Set(field_0x2364);
    } else {
        mDoMtx_stack_c::copy(model->getAnmMtx(2));
        mDoMtx_stack_c::transM(100.0f, -200.0f, 0.0f);
        mDoMtx_stack_c::multVecZero(&local_48);

        mDoMtx_stack_c::copy(model->getAnmMtx(1));
        mDoMtx_stack_c::transM(200.0f, -150.0f, 0.0f);
        mDoMtx_stack_c::multVecZero(&local_54);

        field_0xa84 = local_48;

        if (local_48.absXZ(local_60) < 400.0f || local_54.absXZ(local_60) < 400.0f) {
            offBodyShield();
        } else {
            onBodyShield();
        }

        field_0x20f4[0].SetC(local_48);
        field_0x20f4[0].SetR(100.0f);
        dComIfG_Ccsp()->Set(field_0x20f4);

        field_0x2364[0].SetC(local_48);
        field_0x2364[0].SetR(100.0f);
        dComIfG_Ccsp()->Set(field_0x2364);

        field_0x20f4[1].SetC(local_48);
        field_0x20f4[1].SetR(100.0f);
        dComIfG_Ccsp()->Set(&field_0x20f4[1]);

        field_0x2364[1].SetC(local_48);
        field_0x2364[1].SetR(100.0f);
        dComIfG_Ccsp()->Set(&field_0x2364[1]);
    }

    mDoMtx_stack_c::copy(model->getAnmMtx(0x1b));
    mDoMtx_stack_c::transM(-100.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::multVecZero(&local_48);

    field_0x1fbc.SetC(local_48);
    field_0x1fbc.SetR(300.0f);
    dComIfG_Ccsp()->Set(&field_0x1fbc);
}

/* 8060E820-8060EA10 0091E0 01F0+00 1/1 0/0 0/0 .text            execute__9daB_MGN_cFv */
int daB_MGN_c::execute() {
    // NONMATCHING
    if (field_0xa9c != 0) {
        field_0xa9c += -1;
    }
    if (field_0xa98 != 0) {
        field_0xa98 += -1;
    }
    if (field_0xaa0) {
        field_0xaa0 += -1;
    }
    if (field_0xaa4) {
        field_0xaa4 += -1;
    }
    if (field_0xaa8) {
        field_0xaa8 += -1;
    }
    if (field_0xaac) {
        field_0xaac += -1;
    }

    action();
    mtx_set();
    cc_set();
    calcBloodMove();
    calcHideSmokeEffect();

    if (field_0xb09) {
        setHeadLightEffect();
        field_0xb09 = 0;
    }

    if (field_0xb0a) {
        field_0xb0a += -1;
        setHeadHitEffect();
    }

    if (field_0xafd == 0) {
        if (daPy_getPlayerActorClass()->checkWolfLock(this)) {
            daPy_getPlayerActorClass()->cancelWolfLock(this);
        }
        onWolfNoLock();
    } else {
        offWolfNoLock();
    }

    mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(1));
    mDoMtx_stack_c::transM(200.0f, -150.0f, 0.0f);
    cXyz local_1c;
    mDoMtx_stack_c::multVecZero(&local_1c);

    setMidnaBindEffect(this, &mSound, &local_1c, 
        &cXyz(2.0f, 2.0f, 2.0f));
    return 1;
}

/* 8060EA10-8060EA30 0093D0 0020+00 2/1 0/0 0/0 .text            daB_MGN_Execute__FP9daB_MGN_c */
static int daB_MGN_Execute(daB_MGN_c* i_this) {
    return i_this->execute();
}

/* 8060EA30-8060EA38 0093F0 0008+00 1/0 0/0 0/0 .text            daB_MGN_IsDelete__FP9daB_MGN_c */
static int daB_MGN_IsDelete(daB_MGN_c* i_this) {
    return 1;
}

/* 8060EA38-8060EAC0 0093F8 0088+00 1/1 0/0 0/0 .text            _delete__9daB_MGN_cFv */
int daB_MGN_c::_delete() {
    dComIfG_resDelete(&field_0x5ac, "B_mgn");
    dComIfG_resDelete(&field_0x5b4, "B_mgne");

    if (field_0x26c8 != 0) {
        data_80610440 = 0;
    }

    if (heap != 0) {
        mSound.deleteObject();
    }

    return 1;
}

/* 8060EAC0-8060EAE0 009480 0020+00 1/0 0/0 0/0 .text            daB_MGN_Delete__FP9daB_MGN_c */
static int daB_MGN_Delete(daB_MGN_c* i_this) {
    return i_this->_delete();
}

/* 8060EAE0-8060F068 0094A0 0588+00 1/1 0/0 0/0 .text            CreateHeap__9daB_MGN_cFv */
int daB_MGN_c::CreateHeap() {
    // NONMATCHING
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("B_mgn", 0x2f);
    JUT_ASSERT(4010, modelData != 0);
    mpModelMorf = new mDoExt_McaMorfSO(modelData, NULL, NULL, (J3DAnmTransform*)dComIfG_getObjectRes("B_mgn", 0x25),
        2, 1.0f, 0, -1, &mSound, 0x80000, 0x11000284);
    if (mpModelMorf == NULL || mpModelMorf->getModel() == NULL) {
        return 0;
    }

    J3DModel* model = mpModelMorf->getModel();
    model->setUserArea((u32)this);
    model->getModelData()->getJointNodePointer(1)->setCallBack(JointCallBack);
    model->getModelData()->getJointNodePointer(2)->setCallBack(JointCallBack);

    field_0x5c0 = new mDoExt_brkAnm();
    if (field_0x5c0 == NULL) {
        return 0;
    } else if (!field_0x5c0->init(modelData, (J3DAnmTevRegKey*)dComIfG_getObjectRes("B_mgn", 0x33), 
        1, 2, 0.0f, 0, -1)) {
        return 0;
    };
    
    field_0x5c4 = new mDoExt_btkAnm();
    if (field_0x5c4 == NULL) {
        return 0;
    } else if (!field_0x5c4->init(modelData, (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("B_mgn", 0x3d),
        1, 0, 0.0f, 0, -1)) {
        return 0;
    };

    modelData = (J3DModelData*)dComIfG_getObjectRes("B_mgn", 0x30);
    JUT_ASSERT(4068, modelData != 0);

    for (int i = 0; i < 20; i++) {
        field_0x5d0[i] = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
        if (field_0x5d0[i] == NULL) {
            return 0;
        }
    }

    modelData = (J3DModelData*)dComIfG_getObjectRes("B_mgn", 9);
    JUT_ASSERT(4084, modelData != 0);

    for (int i = 0; i < 4; i++) {
        field_0x2624[i] = new mDoExt_McaMorfSO(modelData, NULL, NULL, (J3DAnmTransform *)dComIfG_getObjectRes("B_mgn", 6),
            0, 0.0f, 0, -1, &mSound, 0x80000, 0x11000284);
        if (field_0x2624[i] == NULL) {
            return 0;
        }

        field_0x2634[i] = new mDoExt_brkAnm();
        if (field_0x2634[i] == NULL) {
            return 0;
        } else if (!field_0x2634[i]->init(modelData, 
            (J3DAnmTevRegKey *)dComIfG_getObjectRes("B_mgn", 13), 1, 
            0, 1.0f, 0, -1)) {
            return 0;
        };

        field_0x2644[i] = new mDoExt_brkAnm();
        if (field_0x2644[i] == NULL) {
            return 0;
        } else if (!field_0x2644[i]->init(modelData, 
            (J3DAnmTevRegKey *)dComIfG_getObjectRes("B_mgn", 12), 1, 
            0, 1.0f, 0, -1)) {
            return 0;
        };

        field_0x2654[i] = new mDoExt_btkAnm();
        if (field_0x2654[i] == NULL) {
            return 0;
        } else if (!field_0x2654[i]->init(modelData, 
            (J3DAnmTextureSRTKey *)dComIfG_getObjectRes("B_mgn", 16), 1, 
            2, 1.0f, 0, -1)) {
            return 0;
        };
    }
}

/* 8060F0B0-8060F0D0 009A70 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* a_this) {
    daB_MGN_c* i_this = (daB_MGN_c*)a_this;
    return i_this->CreateHeap();
}

/* 8060F0D0-8060F548 009A90 0478+00 1/1 0/0 0/0 .text            create__9daB_MGN_cFv */
int daB_MGN_c::create() {
    // NONMATCHING
    fopAcM_SetupActor(this, daB_MGN_c);
    fopAcM_SetParam(this, field_0xafb);

    int phase_state_1 = dComIfG_resLoad(&field_0x5ac, "B_mgn");
    int phase_state_2 = dComIfG_resLoad(&field_0x5ac, "B_mgne");
    if (phase_state_1 == cPhs_COMPLEATE_e && phase_state_2 == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, useHeapInit, 0x11960)) {
            return cPhs_ERROR_e;
        } else {
            if (data_80610440 == 0) {
                data_80610440 = 1;
                field_0x26c8 = 1;
                l_HIO.field_0x08 = 0xff;
            }

            attention_info.flags = 0;
            attention_info.distances[2] = 0x16;
            attention_info.distances[4] = 40;

            J3DModel* model = mpModelMorf->getModel();
            fopAcM_SetMtx(this, model->getBaseTRMtx());

            fopAcM_SetMin(this, -1000.0f, -1000.0f, -1000.0f);
            fopAcM_SetMax(this, 1000.0f, 1000.0f, 1000.0f);

            field_0xb5c.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &field_0xb1c, fopAcM_GetSpeed_p(this), NULL, NULL);
            field_0xb1c.SetWall(150.0f, 600.0f);
            health = 700;
            field_0x560 = 700;
            field_0xd34.Init(0xff, 0, this);

            for (int i = 0; i < 15; i++) {
                field_0xd70[i].Set(cc_sph_src);
                field_0xd70[i].SetStts(&field_0xd34);
            }

            field_0x1fb8 = -0x23040203;

            field_0x1fbc.Set(at_sph_src);
            field_0x1fbc.SetStts(&field_0xd34);

            for (int i = 0; i < 2; i++) {
                field_0x20f4[i].Set(tg_sph_src);
                field_0x20f4[i].SetStts(&field_0xd34);
                field_0x20f4[i].SetAtMtrl(7);

                field_0x20f4[i].Set(tg_sph_src);
                field_0x20f4[i].SetStts(&field_0xd34);
                field_0x20f4[i].SetTgType(0xd8bbdddd);
                field_0x20f4[i].OnTgShield();
                field_0x20f4[i].SetTgHitMark(CcG_Tg_UNK_MARK_2);
            }

            mSound.init(&current.pos, &eyePos, 3, 1);
            field_0x25dc = &mSound;

            field_0xafe = 0;
            
            this->setActionMode(0, 0);
            field_0xae8 = 0x3f800000;
            field_0xaf8 = 0;
            field_0xaf4 = 0x3f800000;

            g_env_light.mColpatWeather = 1;
            g_env_light.mColpatPrevGather = 1;
            g_env_light.mColpatCurrGather = 1;
        }
    }
}

/* 8060F868-8060F888 00A228 0020+00 1/0 0/0 0/0 .text            daB_MGN_Create__FP9daB_MGN_c */
static int daB_MGN_Create(daB_MGN_c* i_this) {
    return i_this->create();
}

/* 8060F8D0-8060F918 00A290 0048+00 2/1 0/0 0/0 .text            __dt__13daB_MGN_HIO_cFv */
daB_MGN_HIO_c::~daB_MGN_HIO_c() {
    // NONMATCHING
}

// /* 8060FDB4-8060FDCC 00A774 0018+00 3/3 0/0 0/0 .text            checkNowWolf__9daPy_py_cFv */
// // void daPy_py_c::checkNowWolf() {
// extern "C" void checkNowWolf__9daPy_py_cFv() {
//     // NONMATCHING
// }

/* 80610364-80610384 -00001 0020+00 1/0 0/0 0/0 .data            l_daB_MGN_Method */
static actor_method_class l_daB_MGN_Method = {
    (process_method_func)daB_MGN_Create,
    (process_method_func)daB_MGN_Delete,
    (process_method_func)daB_MGN_Execute,
    (process_method_func)daB_MGN_IsDelete,
    (process_method_func)daB_MGN_Draw,
};

/* 80610384-806103B4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_B_MGN */
extern actor_process_profile_definition g_profile_B_MGN = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_B_MGN,             // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daB_MGN_c),      // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  232,                    // mPriority
  &l_daB_MGN_Method,      // sub_method
  0x00044000,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
