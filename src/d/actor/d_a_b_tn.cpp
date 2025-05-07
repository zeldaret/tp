/**
 * @file d_a_b_tn.cpp
 *
 */

#include "d/actor/d_a_b_tn.h"
#include <cmath.h>
#include "Z2AudioLib/Z2Instances.h"
#include "d/actor/d_a_boomerang.h"
#include "d/actor/d_a_nbomb.h"

UNK_REL_DATA;

#include "f_op/f_op_actor_enemy.h"

/* 8062E93C-8062E97C 000038 0040+00 0/1 0/0 0/0 .data            cc_tt_src__22@unnamed@d_a_b_tn_cpp@
 */
namespace {
static u8 cc_tt_src[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xD8, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x75, 0x09, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};

/* 8062E97C-8062E9BC 000078 0040+00 0/1 0/0 0/0 .data cc_tt_src2__22@unnamed@d_a_b_tn_cpp@ */
static u8 cc_tt_src2[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0xFB, 0xFD, 0xED, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};

/* 8062E9BC-8062E9FC 0000B8 0040+00 0/1 0/0 0/0 .data cc_bomb_src__22@unnamed@d_a_b_tn_cpp@ */
static u8 cc_bomb_src[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x45, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};

/* 8062E9FC-8062EA3C 0000F8 0040+00 0/1 0/0 0/0 .data cc_tt_at_src__22@unnamed@d_a_b_tn_cpp@ */
static u8 cc_tt_at_src[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15, 0x09, 0x00, 0x09, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};

/* 8062EA3C-8062EA88 000138 004C+00 0/1 0/0 0/0 .data cc_tt_at_cps_src__22@unnamed@d_a_b_tn_cpp@ */
static u8 cc_tt_at_cps_src[76] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x75, 0x09, 0x00, 0x09, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00,
};

/* 8062EA88-8062EAC8 000184 0040+00 0/1 0/0 0/0 .data cc_tt_tate_src__22@unnamed@d_a_b_tn_cpp@ */
static u8 cc_tt_tate_src[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x75, 0x09, 0x00, 0x09, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x03, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};

/* 8062EAC8-8062EB08 0001C4 0040+00 0/1 0/0 0/0 .data cc_part_src__22@unnamed@d_a_b_tn_cpp@ */
static u8 cc_part_src[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x75, 0x09, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};

/* 8062EB08-8062EB18 000204 0010+00 0/1 0/0 0/0 .data tn_model_brk_idx__22@unnamed@d_a_b_tn_cpp@ */
static s8 tn_model_brk_idx[16] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x02, 0xFF, 0xFF, 0xFF,
};

/* 8062EB18-8062EB28 000214 0010+00 0/1 0/0 0/0 .data tn_model_brk_idx2__22@unnamed@d_a_b_tn_cpp@ */
static s8 tn_model_brk_idx2[16] = {
    0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF,
};

/* 8062EB28-8062EBA8 000224 0080+00 0/1 0/0 0/0 .data tn_part_model_id__22@unnamed@d_a_b_tn_cpp@ */
static int tn_part_model_id[32] = {
    4, 5, 6, 7, 8, 9,  10, 11, 12, 13, 14, 15, 16, 17, 19, 18,
    5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 18, 17, 21, 20,
};

/* 8062EBA8-8062EBE8 0002A4 0040+00 2/2 0/0 0/0 .data tn_part_joint__22@unnamed@d_a_b_tn_cpp@ */
static int tn_part_joint[16] = {8, 14, 3, 3, 5, 5, 11, 17, 26, 25, 27, 28, 9, 27, 27, 27};

/* 8062EBE8-8062EC28 0002E4 0040+00 1/2 0/0 0/0 .data ground_y_part__22@unnamed@d_a_b_tn_cpp@ */
static float ground_y_part[16] = {
    15.0f, 15.0f, 0.0f, 0.0f, 23.0f, 12.0f, 25.0f, 25.0f,
    -5.0f, 5.0f,  8.0f, 5.0f, 12.0f, 7.0f,  0.0f,  0.0f,
};
}  // namespace

/* 8061EBEC-8061EC58 0000EC 006C+00 1/1 0/0 0/0 .text            __ct__12daB_TN_HIO_cFv */
daB_TN_HIO_c::daB_TN_HIO_c() {
    field_0x4 = -1;
    mScale = 1.3f;
    field_0xc = 40.0f;
    field_0x1c = 150.0f;
    field_0x20 = 250.0f;
    field_0x14 = 210.0f;
    field_0x18 = 350.0f;
    field_0x10 = 120.0f;
    field_0x24 = 360.0f;
    field_0x28 = 0.0f;
    field_0x2c = 0.0f;
}

/* 8061EC58-8061ED10 000158 00B8+00 1/1 0/0 0/0 .text ctrlJoint__8daB_TN_cFP8J3DJointP8J3DModel */
int daB_TN_c::ctrlJoint(J3DJoint* i_joint, J3DModel* model) {
    int mJntNo = i_joint->getJntNo();
    mDoMtx_stack_c::copy(model->getAnmMtx(mJntNo));

    if (mJntNo == 5) {
        mDoMtx_stack_c::XrotM(field_0xa96);
    } else if (mJntNo == 1) {
        mDoMtx_stack_c::XrotM(field_0xa98);
    }

    model->setAnmMtx(mJntNo, mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
    return 1;
}

/* 8061ED10-8061ED5C 000210 004C+00 1/1 0/0 0/0 .text JointCallBack__8daB_TN_cFP8J3DJointi */
int daB_TN_c::JointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* model = j3dSys.getModel();
        daB_TN_c* mUserArea = (daB_TN_c*)model->getUserArea();
        if (mUserArea) {
            mUserArea->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

/* 8061ED5C-8061EE14 00025C 00B8+00 1/1 0/0 0/0 .text            calcNeckAngle__8daB_TN_cFv */
void daB_TN_c::calcNeckAngle() {
    csXyz acStack_18;
    s16 sVar1 = 0;

    if (field_0xa93) {
        mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(5));
        mDoMtx_MtxToRot(mDoMtx_stack_c::get(), &acStack_18);

        sVar1 = fopAcM_searchPlayerAngleY(this) - (acStack_18.y + 0x4000);
        if (sVar1 > 0x3000) {
            sVar1 = 0x3000;
        }

        if (sVar1 < -0x3000) {
            sVar1 = -0x3000;
        }
    }

    cLib_addCalcAngleS2(&field_0xa96, sVar1, 4, 0x1000);
}

/* 8061EE14-8061EEC8 000314 00B4+00 1/1 0/0 0/0 .text            calcWaistAngle__8daB_TN_cFv */
void daB_TN_c::calcWaistAngle() {
    csXyz acStack_18;
    s16 sVar1 = 0;

    if (field_0xa94) {
        mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(1));
        mDoMtx_MtxToRot(mDoMtx_stack_c::get(), &acStack_18);

        sVar1 = fopAcM_searchPlayerAngleY(this) - shape_angle.y;
        if (sVar1 > 0x3000) {
            sVar1 = 0x3000;
        }

        if (sVar1 < -0x3000) {
            sVar1 = -0x3000;
        }
    }

    cLib_addCalcAngleS2(&field_0xa98, sVar1, 4, 0x1000);
}

UNK_REL_BSS

/* 8062F01D 0003+00 data_8062F01D None */
static u8 s_hioinit;

/* 8062F02C-8062F05C 000054 0030+00 9/11 0/0 0/0 .bss             l_HIO */
static daB_TN_HIO_c l_HIO;

/* 8061EEC8-8061F1E0 0003C8 0318+00 1/1 0/0 0/0 .text            draw__8daB_TN_cFv */
int daB_TN_c::draw() {
    J3DModel* model = mpModelMorf2->getModel();
    if (field_0xa9e != 0 || field_0xaac != 0) {
        return 1;
    }

    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &tevStr);
    J3DModelData* modelData = model->getModelData();
    if (field_0xaa5 == 1) {
        mpBrkAnm->entry(modelData);
    }

    if (field_0x728) {
        for (u16 i = 0; i < modelData->getMaterialNum(); i++) {
            J3DMaterial* mMatNodePtr = modelData->getMaterialNodePointer(i);
            J3DGXColorS10* mColor = mMatNodePtr->getTevColor(0);
            mColor->r = field_0x728;
            mColor = mMatNodePtr->getTevColor(0);
            mColor->g = field_0x728;
            mColor = mMatNodePtr->getTevColor(0);
            mColor->b = field_0x728;
        }
    }

    mpModelMorf2->entryDL();
    cXyz sp48(current.pos.x, current.pos.y + 100.0f, current.pos.z);
    mShadowKey = dComIfGd_setShadow(mShadowKey, 1, model, &sp48, 1000.0f, 0.0f, current.pos.y,
                                    mAcch.GetGroundH(), mAcch.m_gnd, &tevStr, 0, 1.0f,
                                    dDlst_shadowControl_c::getSimpleTex());

    for (int i = 0; i < 16; i++) {
        if (field_0x9fc[i] != 7) {
            if (i == 15) {
                model = mpModelMorf1->getModel();
                g_env_light.setLightTevColorType_MAJI(model, &tevStr);
                mpModelMorf1->entryDL();
            } else {
                model = mModels[i];
                g_env_light.setLightTevColorType_MAJI(model, &tevStr);

                if (field_0xaa5 == 1 && mBrkAnms[i]) {
                    modelData = model->getModelData();
                    mBrkAnms[i]->entry(modelData);
                }
                mDoExt_modelUpdateDL(model);
            }

            if (field_0x9fc[i] == 0) {
                dComIfGd_addRealShadow(mShadowKey, model);
            }
        }
    }

    if (field_0xa90 != 0) {
        g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
        modelData = mpModel->getModelData();
        J3DGXColor* mKColor = modelData->getMaterialNodePointer(0)->getTevKColor(3);
        mKColor->a = l_HIO.field_0xc;
        mDoExt_modelUpdateDL(mpModel);
    }

    return 1;
}

/* 8061F1E0-8061F200 0006E0 0020+00 1/0 0/0 0/0 .text            daB_TN_Draw__FP8daB_TN_c */
static int daB_TN_Draw(daB_TN_c* i_this) {
    return i_this->draw();
}

/* 8061F200-8061F31C 000700 011C+00 3/3 0/0 0/0 .text            setBreakPart__8daB_TN_cFi */
void daB_TN_c::setBreakPart(int param_1) {
    static int break_part_no[13] = {
        6, 11, 8, 1, 10, 0, 9, 7, 4, 5, 12, 2, 3,
    };

    if (param_1 >= 12) {
        param_1 = 13;
    }

    int iVar1 = 0;
    for (int i = 0; i < 13; i++) {
        if (field_0x9fc[break_part_no[i]] != 0) {
            iVar1++;
        }
    }

    iVar1 = param_1 - iVar1;
    if (iVar1 != 0) {
        for (int i = 0; i <= 12; i++) {
            if (field_0x9fc[break_part_no[i]] == 0) {
                field_0x9fc[break_part_no[i]] = 2;
                mSound.startCreatureSound(Z2SE_EN_TN_BRK_ARMOR, 0, -1);

                if (field_0xaa5 == 1 && break_part_no[i] == 4) {
                    field_0xa78++;
                    iVar1++;
                }

                iVar1--;

                if (iVar1 == 0) {
                    return;
                }
            }
        }
    }
}

/* 8061F31C-8061F3D0 00081C 00B4+00 1/1 0/0 0/0 .text            setBreakHeadPart__8daB_TN_cFi */
void daB_TN_c::setBreakHeadPart(int param_1) {
    static int break_part_no2[13] = {
        4, 5, 7, 6, 11, 8, 1, 10, 0, 9, 12, 2, 3,
    };

    if (param_1 >= 12) {
        param_1 = 13;
    }

    int iVar1 = 0;
    for (int i = 0; i < 13; i++) {
        if (field_0x9fc[break_part_no2[i]] != 0) {
            iVar1++;
        }
    }

    iVar1 = param_1 - iVar1;
    if (iVar1 != 0) {
        for (int i = 0; i <= 12; i++) {
            if (field_0x9fc[break_part_no2[i]] == 0) {
                field_0x9fc[break_part_no2[i]] = 2;

                if (break_part_no2[i] == 4) {
                    field_0xa78++;
                    iVar1++;
                }

                iVar1--;

                if (iVar1 == 0) {
                    return;
                }
            }
        }
    }
}

/* 8061F3D0-8061F520 0008D0 0150+00 4/4 0/0 0/0 .text            setPartLandEffect__8daB_TN_cFii */
void daB_TN_c::setPartLandEffect(int param_1, int param_2) {
    static int break_part_vib[16] = {
        2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 3, 2, 0xFF, 2,
    };

    if (param_2 == 0) {
        csXyz cStack_30(0, 0, 0);
        cXyz sp1c(l_HIO.mScale, l_HIO.mScale, l_HIO.mScale);
        dComIfGp_particle_setPolyColor(0x87ea, mAcch.m_gnd, &field_0x75c[param_1], &tevStr,
                                       &cStack_30, &sp1c, 0, NULL, -1, NULL);
        dComIfGp_particle_set(0x880b, &field_0x75c[param_1], &tevStr, &cStack_30, &sp1c);
    }

    int mVibMode = break_part_vib[param_1];
    if (mVibMode != 0xff) {
        dComIfGp_getVibration().StartShock(mVibMode, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
    }
}

/* 8062F11C-8062F1DC 000144 00C0+00 1/2 0/0 0/0 .bss offset_part__22@unnamed@d_a_b_tn_cpp@ */
namespace {
static cXyz offset_part[16] = {
    cXyz(-20.0f, 0.0f, 0.0f), cXyz(-20.0f, 0.0f, 0.0f),   cXyz(0.0f, 0.0f, 0.0f),
    cXyz(0.0f, 0.0f, 0.0f),   cXyz(-20.0f, 20.0f, 0.0f),  cXyz(-12.0f, 20.0f, 0.0f),
    cXyz(-17.0f, 0.0f, 0.0f), cXyz(-17.0f, 0.0f, 0.0f),   cXyz(0.0f, 35.0f, 0.0f),
    cXyz(0.0f, 15.0f, 0.0f),  cXyz(0.0f, 30.0f, 0.0f),    cXyz(0.0f, -30.0f, 0.0f),
    cXyz(-20.0f, 0.0f, 0.0f), cXyz(-40.0f, 0.0f, -70.0f), cXyz(-15.0f, 50.0f, 30.0f),
    cXyz(-12.0f, 8.0f, 0.0f),
};
}  // namespace

/* 8062F29C-8062F2FC 0002C4 0060+00 4/5 0/0 0/0 .bss ground_angle_part__22@unnamed@d_a_b_tn_cpp@ */
namespace {
static csXyz ground_angle_part[16] = {
    csXyz(0x0000, 0x0000, 0x0000),   csXyz(0x0000, 0x0000, 0x0000),   csXyz(0x0000, 0x0000, 0x0000),
    csXyz(0x0000, 0x0000, -0x8000),  csXyz(0x4000, 0x0000, -0x093e),  csXyz(0x0000, 0x0000, 0x5c00),
    csXyz(0x0000, 0x0000, 0x0400),   csXyz(-0x8000, 0x0000, -0x0400), csXyz(0x0000, 0x0000, 0x3c00),
    csXyz(0x0000, 0x0000, 0x4000),   csXyz(0x0000, 0x0000, 0x36b0),   csXyz(0x0000, 0x0000, 0x4800),
    csXyz(-0x02cc, 0x0000, 0x1000),  csXyz(-0x800, 0x0000, -0x0980),  csXyz(0x0000, 0x0000, 0x3c8c),
    csXyz(-0x04e9, -0x1800, 0x3d2a),
};
}  // namespace

/* 8061F520-8061F9F4 000A20 04D4+00 1/1 0/0 0/0 .text            calcShieldMove__8daB_TN_cFv */
void daB_TN_c::calcShieldMove() {
    s16 sVar2;
    int iVar1;

    switch (field_0x9fc[12]) {
    case 2:
        mDoMtx_stack_c::copy(mModels[12]->getBaseTRMtx());
        mDoMtx_stack_c::multVecZero(&field_0x75c[12]);
        field_0x81c[12] = field_0x75c[12];
        mDoMtx_MtxToRot(mDoMtx_stack_c::get(), &field_0x99c[12]);

        sVar2 = shape_angle.y + 0x4000;
        field_0xa5c = 0x1800;
        field_0x8dc[12].set((cM_rndF(5.0f) + 10.0f) * cM_ssin(sVar2), cM_rndF(7.0f) + 35.0f,
                            (cM_rndF(5.0f) + 10.0f) * cM_scos(sVar2));
        field_0x9fc[12] = 3;
        break;

    case 3:
        mAcchArr[12].SetGroundUpY(ground_y_part[12] + 55.0f);
        cLib_chaseF(&field_0x8dc[12].y, -70.0f, 5.0f);
        cLib_chaseAngleS(&field_0x99c[12].x, ground_angle_part[12].x, 0x400);
        cLib_chaseAngleS(&field_0x99c[12].z, field_0xa5c + ground_angle_part[12].z, 0x800);

        if (mAcchArr[12].ChkGroundHit()) {
            Z2GetAudioMgr()->seStart(Z2SE_EN_TN_SHIELD_BND, &field_0x75c[12], 0, 0, 1.0f, 1.0f,
                                     -1.0f, -1.0f, 0);
            s16 sVar1 = cM_rndFX(32768.0f);
            field_0x8dc[12].set((cM_rndF(2.0f) + 5.0f) * cM_ssin(sVar1), cM_rndF(5.0f) + 18.0f,
                                (cM_rndF(2.0f) + 5.0f) * cM_scos(sVar1));
            field_0x9fc[12] = 4;
            setPartLandEffect(12, 0);
        }
        break;

    case 4:
    case 5:
        mAcchArr[12].SetGroundUpY(ground_y_part[12] + cM_ssin(field_0xa5c) * 60.0f);
        cLib_chaseAngleS(&field_0x99c[12].x, ground_angle_part[12].x, 0x400);
        cLib_chaseAngleS(&field_0x99c[12].z, ground_angle_part[12].z, 0x400);
        cLib_chaseAngleS(&field_0xa5c, 0, 0x60);
        field_0xa3c[12] += 0x1800;
        field_0x99c[12].x += (int)(field_0xa5c * cM_ssin(field_0xa3c[12]));
        field_0x99c[12].z += (int)(field_0xa5c * cM_scos(field_0xa3c[12]));
        cLib_chaseF(&field_0x8dc[12].y, -70.0f, 5.0f);

        if (field_0x9fc[12] == 4 && mAcchArr[12].ChkGroundHit()) {
            if (field_0xaa5 == 0) {
                field_0x9fc[12] = 5;
                field_0xa3c[12] = 0;
                field_0x8dc[12].set(0.0f, 0.0f, 0.0f);
                setPartLandEffect(12, 1);
            } else {
                fopAcM_createDisappear(this, &field_0x75c[12], 5, 0, 0xff);
                field_0x9fc[12] = 7;
            }
        }
        break;

    case 6:
        sVar2 = shape_angle.y + 0x4000;
        field_0x8dc[12].set((cM_rndF(2.0f) + 5.0f) * cM_ssin(sVar2), cM_rndF(5.0f) + 18.0f,
                            (cM_rndF(2.0f) + 5.0f) * cM_scos(sVar2));
        field_0x9fc[12] = 4;
        field_0xa5c = 0x1800;
        break;
    }
}

/* 8061F9F4-8061FD7C 000EF4 0388+00 1/1 0/0 0/0 .text            calcSwordMoveA__8daB_TN_cFv */
void daB_TN_c::calcSwordMoveA() {
    int idx = 13;
    switch (field_0x9fc[idx]) {
    case 0:
    case 1: {
        break;
    }

    case 2: {
        mDoMtx_stack_c::copy(mModels[idx]->getBaseTRMtx());
        mDoMtx_stack_c::multVecZero(&field_0x75c[idx]);
        field_0x81c[idx] = field_0x75c[idx];
        mDoMtx_MtxToRot(mDoMtx_stack_c::get(), &field_0x99c[idx]);

        if (field_0xaa5 == 0) {
            field_0x8dc[idx].set(0.0f, 0.0f, 70.0f);
        } else {
            cXyz sp20 = daPy_getPlayerActorClass()->current.pos;
            sp20.y += 200.0f;
            s16 sVar5 = cLib_targetAngleY(&field_0x75c[idx], &sp20);
            s16 sVar6 = cLib_targetAngleX(&field_0x75c[idx], &sp20);
            f32 fVar1 = fabsf(cM_scos(sVar6) * 80.0f);
            field_0x8dc[idx].set(fVar1 * cM_ssin(sVar5), cM_ssin(sVar6) * 80.0f,
                                 fVar1 * cM_scos(sVar5));
        }

        field_0x9fc[idx] = 3;
        break;
    }

    case 3: {
        Z2GetAudioMgr()->seStartLevel(Z2SE_EN_TN_WEAPON_FLY, &field_0x75c[idx], 0, 0, 1.0f, 1.0f,
                                      -1.0f, -1.0f, 0);

        cLib_chaseF(&field_0x8dc[idx].y, -70.0f, 0.3f);
        cLib_chaseAngleS(&field_0x99c[idx].x, ground_angle_part[idx].x, 0x800);
        field_0x99c[idx].y += (s16)-0x1800;
        cLib_chaseAngleS(&field_0x99c[idx].z, ground_angle_part[idx].z, 0x800);

        if (mAcchArr[idx].ChkGroundHit() || mAcchArr[idx].ChkWallHit()) {
            Z2GetAudioMgr()->seStart(Z2SE_EN_TN_WEAPON_STOP, &field_0x75c[idx], 0, 0, 1.0f, 1.0f,
                                     -1.0f, -1.0f, 0);
            setPartLandEffect(idx, 0);

            if (field_0xaa5 == 1) {
                field_0x99c[idx].y = 0x1800;
                fopAcM_createDisappear(this, &field_0x75c[idx], 3, 0, 0xff);
                field_0x9fc[idx] = 7;
            } else {
                field_0x8dc[idx].set(0.0f, 18.0f, 25.0f);
                field_0x9fc[idx] = 4;
            }
        }

        break;
    }

    case 4: {
        cLib_chaseF(&field_0x8dc[idx].y, -70.0f, 5.0f);
        cLib_chaseAngleS(&field_0x99c[idx].x, ground_angle_part[idx].x, 0x800);
        field_0x99c[idx].y += (s16)-0x1000;
        cLib_chaseAngleS(&field_0x99c[idx].z, ground_angle_part[idx].z, 0x800);

        if (mAcchArr[idx].ChkGroundHit() || mAcchArr[idx].ChkWallHit()) {
            field_0x99c[idx] = ground_angle_part[idx];
            field_0x8dc[idx].set(0.0f, 0.0f, 0.0f);
            field_0xa3c[idx] = -0x1800;
            setPartLandEffect(idx, 1);
            field_0x9fc[idx] = 7;
        }

        break;
    }

    case 5:
    case 6:
    case 7: {
        return;
    }
    }
}

/* 8061FD7C-8061FFE0 00127C 0264+00 1/1 0/0 0/0 .text            calcSwordMoveB__8daB_TN_cFv */
void daB_TN_c::calcSwordMoveB() {
    switch (field_0x9fc[15]) {
    case 2:
        mDoMtx_stack_c::copy(mpModelMorf1->getModel()->getBaseTRMtx());
        mDoMtx_stack_c::multVecZero(&field_0x75c[15]);
        field_0x81c[15] = field_0x75c[15];
        mDoMtx_MtxToRot(mDoMtx_stack_c::get(), &field_0x99c[15]);
        field_0x8dc[15].set(0.0f, 0.0f, 10.0f);
        field_0x9fc[15] = 3;
        // [[fallthrough]]

    case 3:
    case 4:
        cLib_chaseAngleS(&field_0x99c[15].x, ground_angle_part[15].x, 16);
        cLib_chaseAngleS(&field_0x99c[15].y, ground_angle_part[15].y, 16);
        cLib_chaseAngleS(&field_0x99c[15].z, ground_angle_part[15].z, 16);
        cLib_chaseF(&field_0x8dc[15].y, -70.0f, 5.0f);

        if (mAcchArr[15].ChkGroundHit()) {
            cXyz* pos;
            Z2GetAudioMgr()->seStart(Z2SE_EN_TN_SWD_DROP, (pos = &field_0x75c[15]), 0, 0, 1.0f,
                                     1.0f, -1.0f, -1.0f, 0);

            if (field_0x9fc[15] == 3) {
                field_0x8dc[15].set(0.0f, 10.0f, 10.0f);
                field_0x9fc[15] = 4;
                setPartLandEffect(15, 0);
            } else if (field_0xaa5 == 0) {
                field_0x8dc[15].set(0.0f, 0.0f, 7.0f);
                field_0x99c[15] = ground_angle_part[15];
                field_0x9fc[15] = 5;
            } else {
                fopAcM_createDisappear(this, pos, 3, 0, 0xff);
                field_0x9fc[15] = 7;
            }
        }
        return;

    case 5:
        cLib_chaseF(&field_0x8dc[15].y, -70.0f, 5.0f);
        cLib_chaseF(&field_0x8dc[15].z, 0.0f, 0.3f);
        field_0x99c[15].set(ground_angle_part[15].x, ground_angle_part[15].y,
                            ground_angle_part[15].z);
        break;

    case 6:
    case 7:
        return;
    }
}

/* 8061FFE0-8062070C 0014E0 072C+00 2/1 0/0 0/0 .text            calcOtherPartMove__8daB_TN_cFi */
void daB_TN_c::calcOtherPartMove(int i_idx) {
    cXyz sp7c;
    s16 sVar1;

    switch (field_0x9fc[i_idx]) {
    case 0:
    case 1: {
        break;
    }

    case 2: {
        if (i_idx != 14) {
            setArmorBreakEffect(i_idx);
        }
        mDoMtx_stack_c::copy(mModels[i_idx]->getBaseTRMtx());
        mDoMtx_stack_c::multVecZero(&field_0x75c[i_idx]);
        field_0x81c[i_idx] = field_0x75c[i_idx];
        mDoMtx_MtxToRot(mDoMtx_stack_c::get(), &field_0x99c[i_idx]);

        sp7c = daPy_getPlayerActorClass()->current.pos;

        if (i_idx == 14) {
            sVar1 = shape_angle.y + 0x4000;
        } else if (i_idx == 2) {
            sVar1 = shape_angle.y + -0x4000;
        } else if (i_idx == 3) {
            sVar1 = shape_angle.y + 0x2000;
        } else {
            sVar1 = cLib_targetAngleY(&field_0x75c[i_idx], &sp7c);
            if (cM_rnd() < 0.5f) {
                sVar1 = sVar1 + 0x2000 + cM_rndFX(4096.0f);
            } else {
                sVar1 = sVar1 - 0x2000 + cM_rndFX(4096.0f);
            }
        }

        field_0x8dc[i_idx].set((cM_rndF(5.0f) + 10.0f) * cM_ssin(sVar1), cM_rndF(7.0f) + 35.0f,
                               (cM_rndF(5.0f) + 10.0f) * cM_scos(sVar1));
        field_0x9fc[i_idx] = 3;
        break;
    }

    case 3:
        cLib_chaseF(&field_0x8dc[i_idx].y, -70.0f, 5.0f);

        if (i_idx == 14) {
            if (field_0x8dc[i_idx].y > 0.0f) {
                field_0x99c[i_idx].y += (s16)0x800;
                field_0x99c[i_idx].z += (s16)0x800;
            } else {
                cLib_chaseAngleS(&field_0x99c[i_idx].x, ground_angle_part[i_idx].x, 0x800);
                cLib_chaseAngleS(&field_0x99c[i_idx].z, ground_angle_part[i_idx].z, 0x800);
            }
        } else if (field_0x8dc[i_idx].y > 0.0f) {
            field_0x99c[i_idx].y += (s16)0x1000;
            field_0x99c[i_idx].z += (s16)0x1000;
        } else {
            cLib_chaseAngleS(&field_0x99c[i_idx].x, ground_angle_part[i_idx].x, 0x400);
            cLib_chaseAngleS(&field_0x99c[i_idx].z, ground_angle_part[i_idx].z, 0x400);
        }

        if ((field_0xaa5 != 1 || i_idx != 5) && mAcchArr[i_idx].ChkGroundHit()) {
            if (i_idx == 14) {
                Z2GetAudioMgr()->seStart(Z2SE_EN_TN_SAYA_BND_1, &field_0x75c[i_idx], 0, 0, 1.0f,
                                         1.0f, -1.0f, -1.0f, 0);
            } else {
                Z2GetAudioMgr()->seStart(Z2SE_EN_TN_ARMOR_BND, &field_0x75c[i_idx], 0, 0, 1.0f,
                                         1.0f, -1.0f, -1.0f, 0);
            }

            sVar1 = cM_rndFX(32768.0f);
            field_0x8dc[i_idx].set((cM_rndF(2.0f) + 5.0f) * cM_ssin(sVar1), cM_rndF(5.0f) + 18.0f,
                                   (cM_rndF(2.0f) + 5.0f) * cM_scos(sVar1));
            field_0x9fc[i_idx] = 4;
            setPartLandEffect(i_idx, 0);
        }
        break;

    case 4:
        cLib_chaseF(&field_0x8dc[i_idx].y, -70.0f, 5.0f);
        cLib_chaseAngleS(&field_0x99c[i_idx].x, ground_angle_part[i_idx].x, 0x800);
        field_0x99c[i_idx].y += (s16)0x400;
        cLib_chaseAngleS(&field_0x99c[i_idx].z, ground_angle_part[i_idx].z, 0x800);

        if (mAcchArr[i_idx].ChkGroundHit()) {
            if (field_0xaa5 == 0) {
                if (i_idx == 14) {
                    Z2GetAudioMgr()->seStart(Z2SE_EN_TN_SAYA_BND_2, &field_0x75c[i_idx], 0, 0, 1.0f,
                                             1.0f, -1.0f, -1.0f, 0);
                }

                field_0x9fc[i_idx] = 5;
                field_0x99c[i_idx].x = ground_angle_part[i_idx].x;
                field_0x99c[i_idx].z = ground_angle_part[i_idx].z;
                field_0xa3c[i_idx] = 0x400;
                setPartLandEffect(i_idx, 1);
            } else {
                fopAcM_createDisappear(this, &field_0x75c[i_idx], 3, 0, 0xff);
                field_0x9fc[i_idx] = 7;
                if (field_0xaa5 == 1 && i_idx == 4) {
                    field_0x9fc[5] = 7;
                }
            }
        }
        break;

    case 5:
        cLib_chaseF(&field_0x8dc[i_idx].y, -70.0f, 5.0f);
        cLib_chaseF(&field_0x8dc[i_idx].x, 0.0f, 2.0f);
        cLib_chaseF(&field_0x8dc[i_idx].z, 0.0f, 2.0f);
        cLib_chaseAngleS(&field_0xa3c[i_idx], 0, 0x40);
        field_0x99c[i_idx].y += field_0xa3c[i_idx];
        break;

    case 6:
        sVar1 = shape_angle.y + cM_rndFX(16384.0f);
        field_0x8dc[i_idx].set((cM_rndF(5.0f) + 50.0f) * cM_ssin(sVar1), 0.0f,
                               (cM_rndF(5.0f) + 50.0f) * cM_scos(sVar1));
        field_0xa3c[i_idx] = 0x800;
        field_0x9fc[i_idx] = 5;
        break;

    case 7: {
        break;
    }
    }
}

/* 8062070C-806208C8 001C0C 01BC+00 1/1 0/0 0/0 .text            calcPartMove__8daB_TN_cFv */
void daB_TN_c::calcPartMove() {
    for (int i = 0; i < 16; i++) {
        if (field_0xa1c[i] != 0) {
            field_0xa1c[i]--;
        }

        field_0x81c[i] = field_0x75c[i];

        if (i == 12) {
            calcShieldMove();
        } else if (i == 13) {
            calcSwordMoveA();
        } else if (i == 15) {
            calcSwordMoveB();
        } else {
            calcOtherPartMove(i);
        }

        field_0x75c[i] += *mSttsArr[i].GetCCMoveP();

        if (field_0x9fc[i] == 3 || field_0x9fc[i] == 4 || field_0x9fc[i] == 5) {
            field_0x75c[i] += field_0x8dc[i];
            mAcchArr[i].CrrPos(dComIfG_Bgsp());

            if (field_0xaa1 != 0 && mSphArr[i].ChkCoHit()) {
                cCcD_Obj* mCoHitObj = mSphArr[i].GetCoHitObj();
                daB_TN_c* i_this = (daB_TN_c*)dCc_GetAc(mCoHitObj->GetAc());
                if ((i_this == this && mCoHitObj->GetAtAtp()) && field_0xa1c[i] == 0) {
                    field_0x9fc[i] = 6;
                    field_0xa1c[i] = 0x1e;
                }

                mSphArr[i].ClrCoHit();
            }
        }
    }
}

/* 806208C8-8062096C 001DC8 00A4+00 18/18 0/0 0/0 .text            setBck__8daB_TN_cFiUcff */
void daB_TN_c::setBck(int param_1, u8 param_2, f32 param_3, f32 param_4) {
    mpModelMorf2->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("B_tn", param_1), param_2, param_3,
                         param_4, 0.0f, -1.0f);
}

/* 8062096C-806209C8 001E6C 005C+00 3/3 0/0 0/0 .text            checkBck__8daB_TN_cFi */
int daB_TN_c::checkBck(int param_1) {
    return mpModelMorf2->getAnm() == dComIfG_getObjectRes("B_tn", param_1);
}

/* 806209C8-806209E0 001EC8 0018+00 22/22 0/0 0/0 .text            setActionMode__8daB_TN_cFii */
void daB_TN_c::setActionMode(int param_1, int param_2) {
    offHeadLockFlg();
    mActionMode1 = param_1;
    mActionMode2 = param_2;
}

/* 806209E0-80620AE4 001EE0 0104+00 11/11 0/0 0/0 .text            setSwordAtBit__8daB_TN_cFi */
void daB_TN_c::setSwordAtBit(int param_1) {
    if (param_1 == 0) {
        for (int i = 0; i < 4; i++) {
            mSwordSphs[i].OffAtSetBit();
            mSwordSphs[i].ClrAtHit();
        }

        mCps.OffAtSetBit();
        mCps.ClrAtHit();
    } else {
        for (int i = 0; i < 4; i++) {
            mSwordSphs[i].OnAtSetBit();
            if (mActionMode1 <= 8) {
                mSwordSphs[i].SetAtAtp(4);
            } else {
                mSwordSphs[i].SetAtAtp(2);
            }
        }

        mCps.OnAtSetBit();
        if (mActionMode1 <= 8) {
            mCps.SetAtAtp(4);
        } else {
            mCps.SetAtAtp(2);
        }
    }
}

/* 80620AE4-80620B4C 001FE4 0068+00 5/5 0/0 0/0 .text            setSwordAtBreak__8daB_TN_cFi */
void daB_TN_c::setSwordAtBreak(int param_1) {
    if (param_1 == 0) {
        for (int i = 0; i < 4; i++) {
            mSwordSphs[i].SetAtSpl((dCcG_At_Spl)1);
        }
        mCps.SetAtSpl((dCcG_At_Spl)1);
    } else {
        for (int i = 0; i < 4; i++) {
            mSwordSphs[i].SetAtSpl((dCcG_At_Spl)10);
        }
        mCps.SetAtSpl((dCcG_At_Spl)10);
        field_0xa9a = 0;
    }
}

/* 80620B4C-80620E90 00204C 0344+00 1/1 0/0 0/0 .text            setBodyShield__8daB_TN_cFv */
void daB_TN_c::setBodyShield() {
    daPy_py_c* player;
    bool check = true;

    player = (daPy_py_c*)daPy_getPlayerActorClass();
    if (mActionMode1 <= 1) {
        for (int i = 0; i < 3; i++) {
            mSphA[i].OnTgShield();
        }

        mSphC.OnTgShield();
        mSphC.OnTgSetBit();

    } else if (mActionMode1 < 8) {
        if (!(daPy_py_c::checkNowWolf() || player->getCutType() == daPy_py_c::CUT_TYPE_TWIRL) &&
            player->getCutCount() >= 4)
        {
            field_0xa9f = 1;
        } else {
            field_0xa9f = 0;
        }

        if (field_0xa91 == 0 ||
            abs((s16)(fopAcM_searchPlayerAngleY(this) - shape_angle.y)) > 0x3000)
        {
            check = false;
        }

        int iVar3 = false;
        if ((player->getCutType() == daPy_py_c::CUT_TYPE_HEAD_JUMP ||
             player->getCutType() == daPy_py_c::CUT_TYPE_MORTAL_DRAW_B) ||
            (player->getCutType() == daPy_py_c::CUT_TYPE_MORTAL_DRAW_A || field_0xaa9 != 0))
        {
            check = false;
            iVar3 = true;
        }

        if (field_0xa78 >= 11) {
            check = false;
            field_0xaa7 = 0;
        }

        if (!(check || daPy_py_c::checkNowWolf() || field_0xaa7 != 0)) {
            for (int i = 0; i < 3; i++) {
                mSphA[i].OffTgShield();
            }
        } else {
            for (int i = 0; i < 3; i++) {
                mSphA[i].OnTgShield();
            }
        }

        if ((mActionMode1 == 7 || field_0xa78 >= 11) && field_0xaa7 == 0) {
            iVar3 = true;
        }

        if (iVar3) {
            mSphC.OffTgShield();
            mSphC.OffTgSetBit();
        } else {
            mSphC.OnTgShield();
            mSphC.OnTgSetBit();
        }

    } else {
        field_0xa9f = 0;

        if (!(daPy_py_c::checkNowWolf() || player->getCutType() == daPy_py_c::CUT_TYPE_TWIRL ||
              player->getCutType() == daPy_py_c::CUT_TYPE_MORTAL_DRAW_B ||
              player->getCutType() == daPy_py_c::CUT_TYPE_MORTAL_DRAW_A ||
              player->getCutCount() < 4))
        {
            field_0xa9f = 1;
        } else if ((player->getCutType() == daPy_py_c::CUT_TYPE_TURN_RIGHT ||
                    player->getCutType() == daPy_py_c::CUT_TYPE_TURN_LEFT) &&
                   field_0xaaa == 0)
        {
            field_0xa9f = 1;
        }

        int chck = false;
        if (player->getCutType() != daPy_py_c::CUT_TYPE_HEAD_JUMP &&
            ((field_0xa91 == 1 && field_0xa9f != 0) ||
             (field_0xaa7 != 0 || daPy_py_c::checkNowWolf())))
        {
            chck = true;
        }

        if (chck) {
            for (int i = 0; i < 3; i++) {
                mSphA[i].OnTgShield();
            }

            return;
        }

        for (int i = 0; i < 3; i++) {
            mSphA[i].OffTgShield();
        }
    }
}

/* 8062F2FC-8062F300 000324 0004+00 2/3 0/0 0/0 .bss             m_attack_tn */
static daB_TN_c* m_attack_tn;

/* 8062F300-8062F304 000328 0004+00 1/2 0/0 0/0 .bss             m_attack_timer */
static int m_attack_timer;

/* 80620E90-80620FA0 002390 0110+00 4/4 0/0 0/0 .text            checkNormalAttackAble__8daB_TN_cFv
 */
bool daB_TN_c::checkNormalAttackAble() {
    if (field_0xaa5 == 1) {
        if (daPy_getPlayerActorClass()->getCutCount() != 0) {
            field_0xa70 = cM_rndF(60.0f) + 30.0f;
            return 0;
        }

        if (m_attack_tn && m_attack_tn != this) {
            field_0xa70 = cM_rndF(60.0f) + 30.0f;
            return 0;
        }

        if (m_attack_timer != 0) {
            field_0xa70 = cM_rndF(60.0f) + 30.0f;
            return 0;
        }

        m_attack_timer = 30;
    }

    return 1;
}

/* 80620FA0-80621070 0024A0 00D0+00 4/3 0/0 0/0 .text            getCutType__8daB_TN_cFv */
u32 daB_TN_c::getCutType() {
    u32 rv = 0;

    if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_NORMAL_SWORD)) {
        if (daPy_getPlayerActorClass()->getCutCount() >= 4) {
            rv = 4;
        }

        if (mAtInfo.mpCollider && ((dCcD_GObjInf*)mAtInfo.mpCollider)->GetAtSpl() == 1) {
            rv = 4;
        }
    }

    switch (daPy_getPlayerActorClass()->getCutType()) {
    case 0x0:
        if (field_0xaaa == 0) {
            return 32;
        }

        return rv | 32;

    case daPy_py_c::CUT_TYPE_NM_VERTICAL:
    case daPy_py_c::CUT_TYPE_NM_RIGHT:
    case daPy_py_c::CUT_TYPE_FINISH_LEFT:
    case daPy_py_c::CUT_TYPE_FINISH_VERTICAL:
    case daPy_py_c::CUT_TYPE_DASH_UNK_26:
        return rv | 32;

    case daPy_py_c::CUT_TYPE_NM_STAB:
    case daPy_py_c::CUT_TYPE_FINISH_STAB:
        return rv | 16;

    case daPy_py_c::CUT_TYPE_NM_LEFT:
    case daPy_py_c::CUT_TYPE_DASH_UNK_25:
        return rv | 34;

    case daPy_py_c::CUT_TYPE_TURN_RIGHT:
    case daPy_py_c::CUT_TYPE_TURN_LEFT:
        return rv | 18;

    case daPy_py_c::CUT_TYPE_JUMP:
    case daPy_py_c::CUT_TYPE_LARGE_JUMP:
        return rv | 2;

    case daPy_py_c::CUT_TYPE_LARGE_TURN_LEFT:
    case daPy_py_c::CUT_TYPE_LARGE_TURN_RIGHT:
        return rv | 33;

    case daPy_py_c::CUT_TYPE_TWIRL:
        return rv | 1;

    // case daPy_py_c::CUT_TYPE_COMBO_STAB:
    default:
        return rv | 3;
    }
}

/* 80621070-8062138C 002570 031C+00 1/1 0/0 0/0 .text            setDamage__8daB_TN_cFP8dCcD_Sphi */
void daB_TN_c::setDamage(dCcD_Sph* i_sph, int param_2) {
    u8 uVar5;

    health = 100;
    cc_at_check(this, &mAtInfo);
    if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_UNK) != 0) {
        field_0xa68 = 20;
    } else {
        if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_BOMB) != 0) {
            field_0xa68 = 20;
        } else {
            field_0xa68 = 10;
        }
    }

    if (mAtInfo.mAttackPower <= 1) {
        field_0xa68 = 10;
    }

    dComIfGp_setHitMark(1, this, i_sph->GetTgHitPosP(), NULL, NULL, 0);

    if (field_0xa7c != 0) {
        field_0xa92 ^= 1;
    } else {
        u8 uVar4 = 0;
        if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_NORMAL_SWORD) != 0) {
            uVar4 = getCutType() & -1;
        }

        if ((uVar4 & 3) != 0) {
            if (abs((s16)(fopAcM_searchPlayerAngleY(this) - shape_angle.y)) > 0x4000) {
                if ((uVar4 & 1) != 0) {
                    uVar5 = 1;
                } else {
                    uVar5 = 0;
                }
            } else if ((uVar4 & 1) != 0) {
                uVar5 = 0;
            } else {
                uVar5 = 1;
            }
        } else {
            if (cM_rnd() < 0.5f) {
                uVar5 = 0;
            } else {
                uVar5 = 1;
            }
        }

        field_0xa92 = uVar5;
    }

    field_0xa7c = 30;
    int iVar1 = mActionMode1;
    if (iVar1 < 8) {
        if (iVar1 != 7 && field_0xa80 == 0) {
            field_0xa80 = 70;
        }

        field_0xa78 += param_2;
        setActionMode(7, field_0xa92);
    } else {
        if (iVar1 != 13 && field_0xa80 == 0) {
            field_0xa80 = 90;

            if (field_0x6fc > field_0x700 - 50.0f) {
                field_0x6fc -= 20;
            }
        }

        if ((field_0x6fc > field_0x700 - 50.0f) && field_0xa9f != 0) {
            field_0x6fc += 50;
        } else {
            field_0x6fc += 100 - health;
        }

        if (field_0x6fc >= field_0x700) {
            setActionMode(14, 0);
            dComIfGp_setHitMark(3, this, i_sph->GetTgHitPosP(), NULL, NULL, 0);
        } else {
            setActionMode(13, field_0xa92);
        }
    }
}

/* 8062138C-806213FC 00288C 0070+00 1/1 0/0 0/0 .text setShieldEffect__8daB_TN_cFP8dCcD_Sph */
void daB_TN_c::setShieldEffect(dCcD_Sph* i_sph) {
    def_se_set(&mSound, mAtInfo.mpCollider, 42, this);
    dComIfGp_setHitMark(2, this, i_sph->GetTgHitPosP(), NULL, NULL, 0);
}

/* 806213FC-806223A0 0028FC 0FA4+00 1/1 0/0 0/0 .text            damage_check__8daB_TN_cFv */
void daB_TN_c::damage_check() {
    mStts1.Move();

    for (int i = 0; i < 4; i++) {
        if (mSwordSphs[i].ChkAtHit()) {
            field_0xa9a = 1;
            if (mSwordSphs[i].ChkAtShieldHit() && mSwordSphs[i].GetAtSpl() == 10) {
                setSwordAtBit(0);
                m_attack_tn = this;
                break;
            }
        }
    }

    if (mCps.ChkAtHit()) {
        field_0xa9a = 1;
        if (mCps.ChkAtShieldHit() && mCps.GetAtSpl() == 10) {
            setSwordAtBit(0);
            m_attack_tn = this;
        }
    }

    if (mSphC.ChkAtHit() && !mSphC.ChkAtShieldHit()) {
        field_0xa9a = 1;
        mSound.startCreatureSound(Z2SE_EN_TN_ATK_NO_DMG, 0, -1);
        mSphC.ClrAtHit();
        m_attack_tn = this;
    }

    if (field_0xa68 != 0) {
        return;
    }

    if (mActionMode1 == 8) {
        return;
    }

    if (mActionMode1 == 14) {
        return;
    }

    dCcD_Sph dStack_160;

    if (mActionMode1 <= 1) {
        mAtInfo.mpCollider = NULL;
        if (mSphC.ChkTgHit()) {
            mAtInfo.mpCollider = mSphC.GetTgHitObj();
            dStack_160 = mSphC;
        }

        for (int i = 0; i < 3; i++) {
            if (mSphA[i].ChkTgHit()) {
                mAtInfo.mpCollider = mSphA[i].GetTgHitObj();
                dStack_160 = mSphA[i];
                break;
            }
        }

        for (int i = 0; i < 3; i++) {
            if (mSphB[i].ChkTgHit()) {
                mAtInfo.mpCollider = mSphB[i].GetTgHitObj();
                dStack_160 = mSphB[i];
                break;
            }
        }

        if (mAtInfo.mpCollider != NULL) {
            setShieldEffect(&dStack_160);
            setActionMode(1, 2);

            if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_BOOMERANG) ||
                mAtInfo.mpCollider->ChkAtType(AT_TYPE_40) ||
                mAtInfo.mpCollider->ChkAtType(AT_TYPE_HOOKSHOT))
            {
                field_0xa60 = 15;
            }
        }

        return;
    }

    int mCutType = daPy_getPlayerActorClass()->getCutType();
    if (mActionMode1 < 8 && mSphC.ChkTgHit()) {
        if (mSphC.GetTgHitObj()->ChkAtType(18) && mCutType != 5 && mCutType != 31 && mCutType != 26)
        {
            def_se_set(&mSound, mSphC.GetTgHitObj(), 42, this);
            field_0xaa8 = 0;
            if (mSphC.GetTgHitObj()->ChkAtType(AT_TYPE_SHIELD_ATTACK)) {
                if (mActionMode1 != 6) {
                    return;
                }

                if (mActionMode1 == 6 && field_0xaa8 != 0) {
                    return;
                }

                field_0xaa8 = 1;
            }

            setActionMode(6, 0);
            return;
        }
    }

    mAtInfo.mpCollider = NULL;
    for (int i = 0; i < 3; i++) {
        if (mSphA[i].ChkTgHit()) {
            mAtInfo.mpCollider = mSphA[i].GetTgHitObj();
            dStack_160 = mSphA[i];
            break;
        }
    }

    if (mAtInfo.mpCollider != NULL) {
        if (mCutType == 0x14) {
            return;
        } else if (mActionMode1 < 8) {
            if ((mCutType == 37 || mCutType == 38) || mAtInfo.mpCollider->ChkAtType(AT_TYPE_UNK)) {
                setShieldEffect(&dStack_160);
                field_0xa60 = 15;
                return;
            }

            if (dStack_160.ChkTgShield()) {
                if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_SHIELD_ATTACK)) {
                    if (mActionMode1 == 6 && field_0xaa8 != 0) {
                        return;
                    }

                    field_0xaa8 = 1;
                    def_se_set(&mSound, dStack_160.GetTgHitObj(), 42, this);
                } else {
                    field_0xaa8 = 0;
                    setShieldEffect(&dStack_160);
                }

                setActionMode(6, 0);
                return;

            } else if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_SHIELD_ATTACK)) {
                setShieldEffect(&dStack_160);
                field_0xa60 = 0x14;
                return;
            }

            if (mCutType == 5 || mCutType == 31 || mCutType == 26) {
                field_0xaa9 = 60;
            }
        } else {
            if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_SHIELD_ATTACK)) {
                field_0xaa8 = 1;
                def_se_set(&mSound, dStack_160.GetTgHitObj(), 42, this);
                setActionMode(12, 0);
                return;
            }

            if (field_0xa91 != 0) {
                if (field_0xa9f != 0 || (getCutType() & 4) != 0) {
                    setShieldEffect(&dStack_160);
                    if (field_0xa9f != 0) {
                        setActionMode(12, 11);
                    } else {
                        setActionMode(15, 0);
                    }

                    return;
                }

                if (field_0xaa7 != 0 ||
                    abs((s16)(fopAcM_searchPlayerAngleY(this) - shape_angle.y)) < 0x3000 ||
                    mCutType == 37 || mCutType == 38)
                {
                    field_0xaa8 = 0;
                    setShieldEffect(&dStack_160);
                    setActionMode(12, 0);
                    return;
                }
            }
        }
        setDamage(&dStack_160, 1);
        return;
    }

    mAtInfo.mpCollider = NULL;
    for (int i = 0; i < 3; i++) {
        if (mSphB[i].ChkTgHit()) {
            mAtInfo.mpCollider = mSphB[i].GetTgHitObj();
            dStack_160 = mSphB[i];
            break;
        }
    }

    int bVar1 = false;
    if (abs((s16)(fopAcM_searchPlayerAngleY(this) - shape_angle.y)) > 0x3000) {
        bVar1 = true;
    };

    if (mActionMode1 < 8) {
        if (!dStack_160.ChkTgShield() || field_0xa78 >= 11) {
            bVar1 = true;
        }
    } else if (field_0xa91 == 0) {
        bVar1 = true;
    }

    if (mActionMode1 < 8 && mSphC.ChkTgHit()) {
        mAtInfo.mpCollider = mSphC.GetTgHitObj();
        dStack_160 = mSphC;
        bVar1 = false;
    }

    if (mAtInfo.mpCollider) {
        field_0xaa8 = 0;
        if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_BOOMERANG) ||
            mAtInfo.mpCollider->ChkAtType(AT_TYPE_40))
        {
            if (mActionMode1 < 8) {
                field_0xa60 = 15;
            } else {
                setActionMode(12, 10);
            }
        } else if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_BOMB)) {
            if (mActionMode1 < 8) {
                if (field_0xa78 >= 11 ||
                    abs((s16)(cLib_targetAngleY(
                                  &current.pos,
                                  &dCc_GetAc(mAtInfo.mpCollider->GetAc())->current.pos) -
                              shape_angle.y)) > 0x4000)
                {
                    setDamage(&dStack_160, 2);
                } else {
                    setActionMode(6, 0);
                }
            } else if (abs((s16)(cLib_targetAngleY(
                                     &current.pos,
                                     &dCc_GetAc(mAtInfo.mpCollider->GetAc())->current.pos) -
                                 shape_angle.y)) > 0x4000)
            {
                setDamage(&dStack_160, 2);
            }
        } else if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_SPINNER)) {
            setShieldEffect(&dStack_160);
            if (mActionMode1 < 8) {
                setActionMode(6, 0);
            } else {
                setActionMode(12, 10);
            }
        } else if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_HOOKSHOT)) {
            if (mActionMode1 < 8) {
                field_0xa60 = 15;
                setShieldEffect(&dStack_160);
            } else if (!bVar1 || field_0xaa7 != 0) {
                setShieldEffect(&dStack_160);
                setActionMode(12, 0);
            } else {
                health = 100;
                cc_at_check(this, &mAtInfo);
                field_0xa92 = 0;
                if (cM_rnd() < 0.5f) {
                    field_0xa92 = 1;
                }

                if (mActionMode1 != 13 && field_0xa80 == 0) {
                    field_0xa80 = 90;
                }

                setActionMode(13, field_0xa92);
            }
        } else if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_IRON_BALL)) {
            if (!bVar1) {
                setShieldEffect(&dStack_160);
                if (mActionMode1 < 8) {
                    setActionMode(6, 0);
                } else {
                    setActionMode(12, 10);
                }
            } else {
                setDamage(&dStack_160, 2);
            }
        } else if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_ARROW)) {
            if (mActionMode1 < 8) {
                setShieldEffect(&dStack_160);
            } else if (bVar1 == 0 || field_0xaa7 != 0) {
                setShieldEffect(&dStack_160);
                setActionMode(12, 0);
            } else {
                setDamage(&dStack_160, 1);
            }
        }
    }

    // if (mCutType != 20) {
    //     return;
    // }
}

/* 806227D0-80622B60 003CD0 0390+00 4/4 0/0 0/0 .text            checkMoveArea__8daB_TN_cFv */
int daB_TN_c::checkMoveArea() {
    if (field_0xaa5 != 0) {
        return 0;
    }

    if (current.pos.absXZ() > 1700.0f) {
        return 3;
    }

    if (current.pos.absXZ() > 1600.0f) {
        return 2;
    }

    if (current.pos.absXZ() > 1500.0f) {
        return 1;
    }

    return 0;
}

/* 80622B60-80622BE0 004060 0080+00 1/1 0/0 0/0 .text            checkMoveAngle__8daB_TN_cFv */
bool daB_TN_c::checkMoveAngle() {
    s16 sVar1 = cM_atan2s(-current.pos.x, -current.pos.z);
    return abs((s16)(fopAcM_searchPlayerAngleY(this) - sVar1)) < 0x4000;
}

/* 80622BE0-80622CE4 0040E0 0104+00 1/1 0/0 0/0 .text            setAttackBlurEffect__8daB_TN_cFi */
void daB_TN_c::setAttackBlurEffect(int param_1) {
    static u16 blur_effect_id_5997[4] = {
        0x87DA,
        0x87DB,
        0x87DC,
        0x87DD,
    };

    if (param_1 != 0) {
        for (int i = 0; i < 4; i++) {
            mParticleKeys[i] = dComIfGp_particle_set(mParticleKeys[i], blur_effect_id_5997[i],
                                                     &current.pos, &tevStr);

            JPABaseEmitter* mBaseEmitter = dComIfGp_particle_getEmitter(mParticleKeys[i]);
            if (mBaseEmitter) {
                mBaseEmitter->setGlobalSRTMatrix(mModels[13]->getBaseTRMtx());
            }
        }
    }
}

/* 80622CE4-80622DF4 0041E4 0110+00 1/1 0/0 0/0 .text            setArmorBreakEffect__8daB_TN_cFi */
void daB_TN_c::setArmorBreakEffect(int param_1) {
    static u16 blur_effect_id_6035[3] = {0x87DE, 0x87DF, 0x87E0};

    cXyz sp24(l_HIO.mScale, l_HIO.mScale, l_HIO.mScale);
    cXyz sp30;
    mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(tn_part_joint[param_1]));
    mDoMtx_stack_c::multVecZero(&sp30);

    for (int i = 0; i < 3; i++) {
        dComIfGp_particle_set(blur_effect_id_6035[i], &sp30, &tevStr, &shape_angle, &sp24);
    }
}

/* 80622DF4-80622ec8 0042F4 0170+00 1/1 0/0 0/0 .text            s_obj_sub__FPvPv */
static void* s_obj_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor)) {
        if (!fpcM_IsCreating(fopAcM_GetID(i_actor)) &&
            fopAcM_checkCarryNow((fopAc_ac_c*)i_actor) == 0)
        {
            f32 mActorDistance =
                fopAcM_searchActorDistanceXZ((fopAc_ac_c*)i_actor, (fopAc_ac_c*)i_data);
            if (mActorDistance < 300.0f && fopAcM_GetSpeed((fopAc_ac_c*)i_actor).y) {
                if (fopAcM_GetName(i_actor) == PROC_Obj_Carry) {
                    return i_actor;
                }

                if (fopAcM_GetName((fopAc_ac_c*)i_actor) == PROC_NBOMB) {
                    return i_actor;
                }
            }

            if (mActorDistance < 300.0f && fopAcM_GetName(i_actor) == PROC_NBOMB) {
                daNbomb_c* mNBomb = (daNbomb_c*)i_actor;
                if (mNBomb->checkInsectBombMove((fopAc_ac_c*)i_actor)) {
                    return i_actor;
                }

                if (mNBomb->getExTime() < 10) {
                    return i_actor;
                }
            }

            if ((mActorDistance < 700.0f && fopAcM_GetName(i_actor) == PROC_ARROW) &&
                fopAcM_GetSpeedF((fopAc_ac_c*)i_actor))
            {
                s16 mAngleY = ((fopAc_ac_c*)i_actor)->current.angle.y;
                if (abs((s16)(mAngleY - fopAcM_searchActorAngleY((fopAc_ac_c*)i_actor,
                                                                 (fopAc_ac_c*)i_data))) < 0x2000)
                {
                    return i_actor;
                }
            }
        }
    }

    return NULL;
}

/* 80622ec8-8062318C 004464 0228+00 1/1 0/0 0/0 .text            demo_skip__8daB_TN_cFi */
void daB_TN_c::demo_skip(int param_1) {
    camera_class* cameraClass = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    daPy_py_c* player = daPy_getPlayerActorClass();

    if (param_1 == 0) {
        mCamCenter.set(0.0f, -180.0f, 0.0f);
        mCamEye.set(300.0f, -200.0f, 1000.0f);
        cameraClass->mCamera.Reset(mCamCenter, mCamEye);
        cameraClass->mCamera.Start();
        cameraClass->mCamera.SetTrimSize(0);
        dComIfGp_event_reset();

        Z2GetAudioMgr()->bgmStreamStop(0x1e);
        Z2GetAudioMgr()->subBgmStart(Z2BGM_TN_MBOSS);

        setActionMode(2, 0);
        field_0xa93 = 1;
        field_0xaae = 2;
        mBlend = 1.0f;
    } else if (param_1 == 1) {
        mCamCenter.set(0.0f, -239.0f, 1874.0f);
        mCamEye.set(0.0f, -202.0f, 2251.0f);
        cXyz sp28(0.0f, -350.0f, 2200.0f);
        player->setPlayerPosAndAngle(&sp28, -0x8000, 0);

        cameraClass->mCamera.Reset(mCamCenter, mCamEye);
        cameraClass->mCamera.Start();
        cameraClass->mCamera.SetTrimSize(0);
        dComIfGp_event_reset();

        setActionMode(1, 0);
    }
}

/* 8062318C-806231C0 00468C 0034+00 2/2 0/0 0/0 .text            DemoSkipCallBack__8daB_TN_cFPvi */
int daB_TN_c::DemoSkipCallBack(void* i_this, int param_2) {
    if (i_this) {
        static_cast<daB_TN_c*>(i_this)->demo_skip(param_2);
        return 1;
    }

    return 0;
}

/* 806231C0-80623920 0046C0 0760+00 2/1 0/0 0/0 .text            executeRoomDemo__8daB_TN_cFv */
void daB_TN_c::executeRoomDemo() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    cXyz sp24 = player->current.pos;
    cXyz sp30;

    fopAcM_searchPlayerDistance(this);

    switch (mActionMode2) {
    case 0:
        if (!eventInfo.checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(this, 2, 0xffff, 0);
            eventInfo.onCondition(2);
            return;
        }

        field_0xaae = 0;
        fopAcM_OffStatus(this, 0x4000);

        camera->mCamera.Stop();
        camera->mCamera.SetTrimSize(3);

        mCamCenter = dCam_getBody()->Center();
        mCamEye = dCam_getBody()->Eye();

        mCamFovY = dCam_getBody()->Fovy();
        mActionMode2 = 2;
        field_0xa6c = 30;
        break;

    case 2:
        if (field_0xa6c == 0) {
            if (!daPy_py_c::checkNowWolf()) {
                field_0xa6c = 70;
            } else {
                field_0xa6c = 30;
            }

            player->changeOriginalDemo();
            player->changeDemoMoveAngle(-0x8000);
            sp24.set(0.0f, -350.0f, 1850.0f);
            player->changeDemoPos0(&sp24);
            player->changeDemoMode(2, 0, 0, 0);
            mActionMode2 = 3;
        }
        break;

    case 3:
        cLib_addCalcPos2(&mCamCenter, sp24, 0.1f, 1.0f);

        if (field_0xa6c == 0) {
            player->changeDemoMoveAngle(-0x8000);

            if (!daPy_py_c::checkNowWolf()) {
                sp24.set(0.0f, -350.0f, 1923.0f);
            } else {
                sp24.set(0.0f, -350.0f, 2173.0f);
            }

            player->changeDemoPos0(&sp24);
            player->changeDemoMode(2, 0, 0, 0);
            sp24.z += 500.0f;
            player->setPlayerPosAndAngle(&sp24, -0x8000, 0);

            field_0xa6c = 30;
            mActionMode2 = 10;
            field_0x720 = -0x7000;
            mCamEye.x = cM_ssin(field_0x720) * 400.0f;
            mCamEye.y = -170.0f;
            mCamEye.z = cM_scos(field_0x720) * 400.0f + 1900.0f;
            mCamCenter.set(sp24.x, sp24.y + 150.0f, sp24.z);
            return;
        }
        break;

    case 10:
    case 11:
        sp30.set(sp24.x, sp24.y + 150.0f, sp24.z);
        cLib_addCalcPos2(&mCamCenter, sp30, 0.5f, 10.0f);
        cLib_addCalcAngleS2(&field_0x720, -0x4000, 16, 32);
        cLib_addCalc2(&mCamEye.y, -250.0f, 16.0f, 0.5f);
        mCamEye.x = cM_ssin(field_0x720) * 400.0f;
        mCamEye.z = cM_scos(field_0x720) * 400.0f + 1900.0f;

        if (field_0xa6c == 0) {
            if (mActionMode2 == 10) {
                player->changeDemoMode(20, 0, 0, 0);
                field_0xa6c = 120;
                mActionMode2 = 11;
            } else if (mActionMode2 == 11) {
                if (!daPy_py_c::checkNowWolf()) {
                    player->changeDemoMode(47, 2, 0, 0);
                }

                mActionMode2 = 15;
                field_0xa6c = 150;

                if (!daPy_py_c::checkNowWolf()) {
                    mCamEye.set(0.0f, -200.0f, 2400.0f);
                } else {
                    mCamEye.set(0.0f, -265.0f, 2400.0f);
                }

                field_0x720 = 0x5c00;
                mCamCenter = mCamEye;
                mCamCenter.y += 400.0f * cM_ssin(field_0x720);
                mCamCenter.z += 400.0f * cM_scos(field_0x720);
            }
        }
        break;

    case 15:
        mCamCenter = mCamEye;
        mCamCenter.y += 400.0f * cM_ssin(field_0x720);
        mCamCenter.z += 400.0f * cM_scos(field_0x720);
        cLib_addCalcAngleS2(&field_0x720, 0x7800, 16, 64);

        if (field_0xa6c == 0) {
            mActionMode2 = 16;
            field_0xa6c = 70;
            field_0x724 = 1200.0f;
        }
        break;

    case 16:
        cLib_chaseF(&field_0x724, 1200.0f, 50.0f);
        sp30.set(0.0f, 423.0f, -1841.0f);
        cLib_addCalcPos2(&mCamCenter, sp30, 0.3f, field_0x724);
        sp30.set(0.0f, 370.0f, -1442.0f);
        cLib_addCalcPos2(&mCamEye, sp30, 0.3f, field_0x724);

        if (field_0xa6c == 0) {
            mCamCenter.set(0.0f, -239.0f, 1874.0f);
            mCamEye.set(0.0f, -202.0f, 2251.0f);
            camera->mCamera.Reset(mCamCenter, mCamEye);
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);
            dComIfGp_event_reset();

            setActionMode(1, 0);
            return;
        }
    }

    camera->mCamera.Set(mCamCenter, mCamEye, mCamFovY, 0);
    dComIfGp_getEvent().onSkipFade();
    dComIfGp_getEvent().setSkipProc(this, DemoSkipCallBack, 1);
}

/* 80623920-806246E8 004E20 0DC8+00 2/1 0/0 0/0 .text            executeOpening__8daB_TN_cFv */
void daB_TN_c::executeOpening() {
    cXyz sp7c, sp34;
    daPy_py_c* player = daPy_getPlayerActorClass();
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));

    fopAcM_searchPlayerDistance(this);

    switch (mActionMode2) {
    case 0:
        speedF = 0.0f;
        setBck(18, 2, 3.0f, 1.0f);
        mActionMode2 = 1;
        // [[fallthrough]]

    case 1:
        sp7c = player->current.pos;
        if (sp7c.absXZ() < 2200.0f) {
            sp34.set(0.0f, -350.0f, 2250.0f);
            if (sp7c.absXZ(sp34) > 1300.0f) {
                mActionMode2 = 2;
            }
        }

        return;

    case 2:
        if (!eventInfo.checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(this, 2, 0xffff, 0);
            eventInfo.onCondition(2);
            return;
        }

        dComIfGs_onOneZoneSwitch(14, fopAcM_GetRoomNo(this));

        camera->mCamera.Stop();
        camera->mCamera.SetTrimSize(3);
        field_0xa6c = 30;

        Z2GetAudioMgr()->bgmStreamPrepare(0x2000037);
        Z2GetAudioMgr()->bgmStreamPlay();

        mActionMode2 = 3;
        mCamFovY = 60.0f;
        field_0x724 = 380.0f;
        field_0x720 = 0x1000;
        mCamCenter.set(current.pos.x, current.pos.y + 220.0f, current.pos.z);
        mCamEye.set(mCamCenter.x + field_0x724 * cM_ssin(field_0x720), -210.0f,
                    mCamCenter.z + field_0x724 * cM_scos(field_0x720));

        mpModelMorf2->setFrame(15.0f);
        player->changeOriginalDemo();
        sp7c.set(150.0f, -400.0f, 600.0f);
        player->setPlayerPosAndAngle(&sp7c, (s16)0xffff9000, 0);
        player->changeDemoMode(4, 1, 0, 0);
        break;

    case 3:
        cLib_addCalcAngleS2(&field_0x720, 0x400, 8, 48);
        mCamCenter.set(current.pos.x, current.pos.y + 220.0f, current.pos.z);
        mCamEye.set(mCamCenter.x + field_0x724 * cM_ssin(field_0x720), -210.0f,
                    mCamCenter.z + field_0x724 * cM_scos(field_0x720));

        if (field_0xa6c == 0) {
            setBck(14, 0, 20.0f, 1.0f);
            mActionMode2 = 4;
            field_0xaae = 1;
            mBlend = 0.0f;
        }
        break;

    case 4:
        if (mpModelMorf2->checkFrame(111.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        }

        if (mpModelMorf2->checkFrame(148.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        }

        if (mpModelMorf2->getFrame() < 80.0f) {
            cLib_addCalcAngleS2(&field_0x720, -0x400, 8, 48);
            mCamCenter.set(current.pos.x, current.pos.y + 220.0f, current.pos.z);
        } else {
            cLib_addCalc2(&field_0x724, 250.0f, 8.0f, 5.0f);
            mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(4));
            mDoMtx_stack_c::multVecZero(&sp34);
            cLib_addCalcPos2(&mCamCenter, sp34, 0.5f, 5.0f);
        }

        mCamEye.set(mCamCenter.x + field_0x724 * cM_ssin(field_0x720), -210.0f,
                    mCamCenter.z + field_0x724 * cM_scos(field_0x720));
        if (mpModelMorf2->isStop()) {
            setBck(15, 2, 3.0f, 1.0f);
            field_0xa6c = 60;
            mActionMode2 = 10;
        }
        break;

    case 10:
        mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(4));
        mDoMtx_stack_c::multVecZero(&sp34);
        cLib_addCalcPos2(&mCamCenter, sp34, 0.5f, 5.0f);

        if (field_0xa6c < 30) {
            sp34.set(0.0f, -350.0f, 400.0f);
            cLib_addCalcPos2(&mCamEye, sp34, 0.5f, 5.0f);
        }

        if (field_0xa6c == 0) {
            setBck(7, 0, 10.0f, 1.0f);
            mActionMode2 = 14;
        }
        break;

    case 14:
        if (mpModelMorf2->checkFrame(33.0f) || mpModelMorf2->checkFrame(105.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        } else if (mpModelMorf2->checkFrame(57.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_SWD_L, 0, -1);
            mSound.startCreatureVoice(Z2SE_EN_TN_V_KIAI_OP, -1);
        } else if (mpModelMorf2->checkFrame(62.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
        } else if (mpModelMorf2->checkFrame(98.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_SWD_L, 0, -1);
        }

        if (mpModelMorf2->getFrame() < 30.0f) {
            mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(4));
            mDoMtx_stack_c::multVecZero(&sp34);
            cLib_addCalcPos2(&mCamCenter, sp34, 0.5f, 5.0f);
            sp34.set(0.0f, -350.0f, 400.0f);
            cLib_addCalcPos2(&mCamEye, sp34, 0.5f, 5.0f);
        } else if (mpModelMorf2->getFrame() < 57.0f) {
            mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(14));
            mDoMtx_stack_c::multVecZero(&sp34);
            sp34.y -= 50.0f;
            cLib_addCalcPos2(&mCamCenter, sp34, 0.5f, 3.0f);
            sp34.set(0.0f, -350.0f, 400.0f);
            cLib_addCalcPos2(&mCamEye, sp34, 0.5f, 5.0f);
        } else {
            mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(14));
            mDoMtx_stack_c::multVecZero(&sp34);
            sp34.y -= 50.0f;
            cLib_addCalcPos2(&mCamCenter, sp34, 1.0f, 30.0f);
            sp34.set(0.0f, -350.0f, 500.0f);
            cLib_addCalcPos2(&mCamEye, sp34, 0.5f, 3.0f);
        }

        if (mpModelMorf2->checkFrame(58.0f) || mpModelMorf2->checkFrame(98.0f)) {
            dComIfGp_getVibration().StartShock(4, 31, cXyz(0.0f, 1.0f, 0.0f));
            field_0xa88 = 7;
        }

        if (mpModelMorf2->checkFrame(126.0f)) {
            mActionMode2 = 17;
            field_0xa6c = 30;
        }
        break;

    case 17:
        mCamCenter.set(2.0f, -225.0f, -109.0f);
        sp34.set(0.0f, -350.0f, 430.0f);
        cLib_addCalcPos2(&mCamEye, sp34, 0.5f, 100.0f);
        if (mpModelMorf2->checkFrame(160.0f)) {
            mActionMode2 = 20;
            player->changeDemoMode(23, 0, 0, 0);
        }
        break;

    case 20:
        mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(4));
        mDoMtx_stack_c::multVecZero(&sp34);
        cLib_addCalcPos2(&mCamCenter, sp34, 0.5f, 5.0f);
        sp34.set(0.0f, -300.0f, 1000.0f);
        cLib_addCalcPos2(&mCamEye, sp34, 0.1f, 20.0f);

        if (mpModelMorf2->checkFrame(220.0f)) {
            camera->mCamera.Reset(mCamCenter, mCamEye);
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);
            dComIfGp_event_reset();

            Z2GetAudioMgr()->subBgmStart(Z2BGM_TN_MBOSS);

            setActionMode(2, 0);
            field_0xa93 = 1;
            field_0xaae = 2;
            mBlend = 0.0f;
            return;
        }
    }

    camera->mCamera.Set(mCamCenter, mCamEye, mCamFovY, 0);
    dComIfGp_getEvent().onSkipFade();
    dComIfGp_getEvent().setSkipProc(this, DemoSkipCallBack, 0);
}

/* 806246E8-806247D8 005BE8 00F0+00 1/1 0/0 0/0 .text            executeWaitH__8daB_TN_cFv */
void daB_TN_c::executeWaitH() {
    fopAcM_searchPlayerAngleY(this);
    f32 mPlayerDistance = fopAcM_searchPlayerDistance(this);
    switch (mActionMode2) {
    case 0:
        speedF = 0.0f;
        setBck(15, 2, 3.0f, 1.0f);
        mActionMode2 = 1;
        // [[fallthrough]]

    case 1:
        if (mPlayerDistance < 1500.0f) {
            if (field_0xaad != 0) {
                Z2GetAudioMgr()->subBgmStart(Z2BGM_TN_MBOSS_LV9);
            }

            setActionMode(3, 0);
        }
    }
}

/* 806247D8-80624890 005CD8 00B8+00 1/1 0/0 0/0 .text            setAwaitSound__8daB_TN_cFv */
void daB_TN_c::setAwaitSound() {
    if (mpModelMorf2->checkFrame(17.0f)) {
        mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
    }

    if (mpModelMorf2->checkFrame(36.0f)) {
        mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
    }
}

/* 80624890-80625394 005D90 0B04+00 1/1 0/0 0/0 .text            executeChaseH__8daB_TN_cFv */
void daB_TN_c::executeChaseH() {
    f32 mPlayerDistance = fopAcM_searchPlayerDistance(this);
    s16 sVar4 = fopAcM_searchPlayerAngleY(this);
    s16 sVar5 = fopAcM_searchPlayerAngleY(this) - cM_atan2s(-current.pos.x, -current.pos.z);
    int mMoveArea = checkMoveArea();

    switch (mActionMode2) {
    case 0x0:
    case 0x46:
        if (mMoveArea == 3) {
            if (checkMoveAngle()) {
                mActionMode2 = 100;
            } else {
                mActionMode2 = 103;
            }
        } else {
            if (mMoveArea != 0 && mPlayerDistance > 800.0f) {
                mPlayerDistance = 400.0f;
            }

            if (mPlayerDistance < 200.0f) {
                mActionMode2 = 3;
            } else if (mPlayerDistance >= 800.0f) {
                if (mActionMode2 == 0) {
                    mActionMode2 = 10;
                } else {
                    mActionMode2 = 8;
                }
            } else if (mPlayerDistance >= 400.0f) {
                mActionMode2 = 1;
            } else {
                mActionMode2 = 5;
            }
        }

        setSwordAtBit(0);
        field_0xa91 = 1;
        break;

    case 0x8:
    case 0xA:
        if (mActionMode2 == 8) {
            setBck(19, 2, 3.0f, 1.0f);
        } else {
            setBck(19, 2, 10.0f, 1.0f);
        }

        mActionMode2 = 9;
        speedF = 4.3f;
        // [[fallthrough]]

    case 0x9:
        if (mpModelMorf2->checkFrame(23.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        }

        if (mpModelMorf2->checkFrame(0.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
        }

        cLib_addCalcAngleS(&shape_angle.y, sVar4, 4, 0x400, 16);
        current.angle.y = shape_angle.y;

        if (mPlayerDistance < 700.0f) {
            mActionMode2 = 11;
        }
        break;

    case 0x1:
    case 0xB:
        if (mActionMode2 == 1) {
            setBck(16, 2, 3.0f, 1.0f);
        } else {
            setBck(16, 2, 10.0f, 1.0f);
        }

        mActionMode2 = 2;
        speedF = 2.3f;
        current.angle.y = shape_angle.y;
        // [[fallthrough]]

    case 0x2:
        setAwaitSound();
        cLib_addCalcAngleS(&shape_angle.y, sVar4, 4, 0x400, 16);
        current.angle.y = shape_angle.y;

        if (mPlayerDistance > 800.0f) {
            if (mMoveArea == 0) {
                mActionMode2 = 10;
            }
        } else if (mPlayerDistance < 300.0f) {
            speedF = 0.0f;
            mActionMode2 = 5;
        }
        break;

    case 0x3:
        setBck(16, 2, 3.0f, -1.0f);
        mActionMode2 = 4;
        current.angle.y = shape_angle.y + 0x8000;
        mWalkDir = 0;
        // [[fallthrough]]

    case 0x4:
        setAwaitSound();
        speedF = 2.3f;
        cLib_addCalcAngleS(&shape_angle.y, sVar4, 4, 0x400, 16);
        current.angle.y = shape_angle.y + 0x8000;

        if (mPlayerDistance < 200.0f && field_0xa70 == 0) {
            mWalkDir++;
            if (mWalkDir > 60) {
                if (field_0xaa5 == 1) {
                    field_0xa70 = l_HIO.field_0x1c;
                } else {
                    field_0xa70 = l_HIO.field_0x20;
                }

                setActionMode(4, 0);
            }
        } else {
            mWalkDir = 0;
        }

        if (mPlayerDistance > 300.0f) {
            speedF = 0.0f;
            mActionMode2 = 5;
        }
        break;

    case 0x5:
        if (cM_rnd() < 0.5f) {
            mActionMode2 = 6;
            setBck(17, 2, 3.0f, 1.0f);
            current.angle.y = shape_angle.y + 0x4000;
        } else {
            mActionMode2 = 7;
            setBck(17, 2, 3.0f, -1.0f);
            current.angle.y = shape_angle.y + -0x4000;
        }

        field_0xa6c = cM_rndFX(20.0f) + 60.0f;
        speedF = 2.3f;
        break;

    case 0x6:
        setAwaitSound();
        cLib_addCalcAngleS(&shape_angle.y, sVar4, 4, 0x400, 16);
        current.angle.y = shape_angle.y + 0x4000;

        if (field_0xa6c == 0) {
            if (cM_rnd() < 0.5f) {
                setBck(17, 2, 3.0f, -1.0f);
                current.angle.y = shape_angle.y + -0x4000;
                mActionMode2 = 7;
            }

            field_0xa6c = cM_rndFX(20.0f) + 60.0f;
        }

        if (mPlayerDistance < 200.0f) {
            mActionMode2 = 3;
        }

        if (mPlayerDistance > 400.0f) {
            mActionMode2 = 1;
        }
        break;

    case 0x7:
        setAwaitSound();
        cLib_addCalcAngleS(&shape_angle.y, sVar4, 4, 0x400, 16);
        current.angle.y = shape_angle.y + -0x4000;

        if (field_0xa6c == 0) {
            if (cM_rnd() < 0.5f) {
                setBck(17, 2, 3.0f, 1.0f);
                current.angle.y = shape_angle.y + 0x4000;
                mActionMode2 = 6;
            }
            field_0xa6c = cM_rndFX(20.0f) + 90.0f;
        }

        if (mPlayerDistance < 200.0f) {
            mActionMode2 = 3;
        }

        if (mPlayerDistance > 400.0f) {
            mActionMode2 = 1;
        }
        break;

    case 0x64:
        setBck(16, 2, 10.0f, 1.0f);
        mActionMode2 = 102;
        speedF = 2.3f;
        current.angle.y = shape_angle.y;
        // [[fallthrough]]

    case 0x66:
        setAwaitSound();
        cLib_addCalcAngleS(&shape_angle.y, sVar4, 4, 0x400, 16);
        cLib_addCalcAngleS(&current.angle.y, cM_atan2s(-current.pos.x, -current.pos.z), 4, 0x400,
                           16);

        if (!checkMoveAngle()) {
            mActionMode2 = 103;
        }

        if (mMoveArea <= 1) {
            mActionMode2 = 70;
        }
        break;

    case 0x67:
        mPlayerDistance = 3.0f;

        if ((u8)checkBck(19)) {
            mPlayerDistance = 10.0f;
        }

        if (abs(sVar5) < 0x2000) {
            if (cM_rnd() < 0.5f) {
                mActionMode2 = 106;
                setBck(17, 2, mPlayerDistance, 1.0f);
            } else {
                mActionMode2 = 107;
                setBck(17, 2, mPlayerDistance, -1.0f);
            }
        } else if (sVar5 < 0) {
            mActionMode2 = 106;
            setBck(17, 2, mPlayerDistance, 1.0f);
        } else {
            mActionMode2 = 107;
            setBck(17, 2, mPlayerDistance, -1.0f);
        }

        field_0xa6c = cM_rndFX(20.0f) + 60.0f;
        // [[fallthrough]]

    case 0x6A:
    case 0x6B:
        setAwaitSound();
        speedF = 2.3f;
        cLib_addCalcAngleS(&shape_angle.y, sVar4, 4, 0x400, 16);

        if (mActionMode2 == 106) {
            if (mMoveArea == 3) {
                current.angle.y = shape_angle.y + 0x6000;
            } else if (mMoveArea == 2) {
                current.angle.y = shape_angle.y + 0x4000;
            } else {
                current.angle.y = shape_angle.y + 0x3000;
            }
        } else if (mMoveArea == 3) {
            current.angle.y = shape_angle.y + -0x6000;
        } else if (mMoveArea == 2) {
            current.angle.y = shape_angle.y + -0x4000;
        } else {
            current.angle.y = shape_angle.y + -0x3000;
        }

        if (field_0xa6c == 0 && mpModelMorf2->checkFrame(0.0f)) {
            if (abs(sVar5) > 0x7800) {
                field_0xa6c = cM_rndFX(20.0f) + 90.0f;
                if (cM_rnd() < 0.5f) {
                    if (mActionMode2 == 106) {
                        setBck(17, 2, 3.0f, -1.0f);
                        mActionMode2 = 107;
                    } else {
                        setBck(17, 2, 3.0f, 1.0f);
                        mActionMode2 = 106;
                    }
                }
            } else if (abs(sVar5) < 0x7000) {
                if (mActionMode2 == 106) {
                    if (sVar5 > 0) {
                        setBck(17, 2, 3.0f, -1.0f);
                        mActionMode2 = 107;
                    }
                } else if (sVar5 < 0) {
                    setBck(17, 2, 3.0f, 1.0f);
                    mActionMode2 = 106;
                }
            }
        }

        if (checkMoveAngle()) {
            mActionMode2 = 100;
        }

        if (mMoveArea < 1) {
            mActionMode2 = 70;
        }
        break;
    }

    if (mActionMode2 < 100) {
        checkStartAttackH();
        if (mMoveArea == 3) {
            if (checkMoveAngle() != 0) {
                mActionMode2 = 100;
            } else {
                mActionMode2 = 103;
            }
        }
    }
}

/* 80625394-806255F0 006894 025C+00 1/1 0/0 0/0 .text            checkStartAttackH__8daB_TN_cFv */
void daB_TN_c::checkStartAttackH() {
    f32 mPlayerDistance = fopAcM_searchPlayerDistance(this);
    fopAcM_searchPlayerAngleY(this);
    s16 sVar1 = fopAcM_searchPlayerAngleY(this) - shape_angle.y;

    if (mPlayerDistance < 400.0f && abs(sVar1) < 0x3000) {
        if (field_0xa78 >= 11) {
            if (field_0xaa5 == 1) {
                if (field_0xa70 > 40) {
                    field_0xa70 = cM_rndF(20.0f) + 15.0f;
                }
            } else if (field_0xa70 > 10) {
                field_0xa70 = 10;
            }

            if (field_0xa70 == 0 && checkNormalAttackAble()) {
                if (field_0xaa5 == 1) {
                    field_0xa70 = l_HIO.field_0x1c;
                } else {
                    field_0xa70 = l_HIO.field_0x20;
                }

                setActionMode(4, 0);
            }
        } else {
            if (mPlayerDistance < 200.0f) {
                setActionMode(5, 0);
            } else {
                if (mPlayerDistance < 250.0f) {
                    if (field_0xaa5 == 1) {
                        if (field_0xa70 > 60) {
                            field_0xa70 = cM_rndF(20.0f) + 40.0f;
                        }
                    } else if (field_0xa70 > 30) {
                        field_0xa70 = 30;
                    }
                }

                if (field_0xa70 == 0 && checkNormalAttackAble()) {
                    if (field_0xaa5 == 1) {
                        field_0xa70 = l_HIO.field_0x1c;
                    } else {
                        field_0xa70 = l_HIO.field_0x20;
                    }

                    setActionMode(4, 0);
                }
            }
        }
    }
}

/* 806255F0-80625C74 006AF0 0684+00 1/1 0/0 0/0 .text            executeAttackH__8daB_TN_cFv */
void daB_TN_c::executeAttackH() {
    f32 frame;
    s16 playerAngleY = fopAcM_searchPlayerAngleY(this);
    f32 playerDistance = fopAcM_searchPlayerDistance(this);

    switch (mActionMode2) {
    case 0:
        speedF = 0.0f;

        if (playerDistance < 250.0f) {
            mActionMode2 = 1;
            setBck(5, 0, 3.0f, 1.0f);
        } else {
            if (playerDistance < 350.0f) {
                mActionMode2 = 2;
                setBck(6, 0, 3.0f, 1.0f);
            } else {
                if (cM_rnd() < 0.5f) {
                    mActionMode2 = 1;
                    setBck(5, 0, 3.0f, 1.0f);
                } else {
                    mActionMode2 = 2;
                    setBck(6, 0, 3.0f, 1.0f);
                    setAttackBlurEffect(1);
                }
            }
        }

        field_0xa91 = 0;
        break;

    case 1:
        if (mpModelMorf2->getFrame() >= 20.0f && mpModelMorf2->getFrame() < 25.0f) {
            field_0xa90 = 3;
            mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(15));
            mDoMtx_stack_c::transM(40.0f, 0.0f, 70.0f);
            mDoMtx_stack_c::YrotM(-0x8000);
            PSMTXCopy(mDoMtx_stack_c::get(), field_0x72c);
        }

        if (mpModelMorf2->checkFrame(18.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_SWD_L, 0, -1);
            mSound.startCreatureVoice(Z2SE_EN_TN_V_KIAI, -1);
        }

        if (mpModelMorf2->checkFrame(23.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_L, 0, -1);
        }

        if (mpModelMorf2->checkFrame(72.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        }

        if (mpModelMorf2->getFrame() <= 30.0f) {
            cLib_addCalcAngleS(&shape_angle.y, playerAngleY, 8, 0x400, 16);
        }

        frame = mpModelMorf2->getFrame();
        if (frame >= 18.0f && frame < 29.0f) {
            field_0xaa0 = 1;
        }

        if (mpModelMorf2->checkFrame(18.0f)) {
            setSwordAtBit(1);
        }

        if (mpModelMorf2->checkFrame(29.0f)) {
            setSwordAtBit(0);
        }

        if (mpModelMorf2->isStop()) {
            setActionMode(3, 0);
            field_0xa91 = 1;
        }
        break;

    case 2:
        setAttackBlurEffect(1);
        if (mpModelMorf2->checkFrame(11.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        } else if (mpModelMorf2->checkFrame(19.0f)) {
            mSound.startCreatureVoice(Z2SE_EN_TN_V_KIAI_AGE, -1);
        } else if (mpModelMorf2->checkFrame(22.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_SWD_L, 0, -1);
        } else if (mpModelMorf2->checkFrame(23.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_L, 0, -1);
        } else if (mpModelMorf2->checkFrame(66.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
        }

        if (mpModelMorf2->getFrame() <= 22.0f) {
            cLib_addCalcAngleS(&shape_angle.y, playerAngleY, 8, 0x400, 16);
        }

        if (mpModelMorf2->getFrame() >= 22.0f && mpModelMorf2->getFrame() < 30.0f) {
            field_0xaa1 = 1;
            field_0xaa0 = 1;
        }

        if (mpModelMorf2->checkFrame(22.0f)) {
            setSwordAtBit(1);
        }

        if (mpModelMorf2->checkFrame(30.0f)) {
            setSwordAtBit(0);
        }

        if (mpModelMorf2->checkFrame(26.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_SWD_IMPCT, 0, -1);
            dComIfGp_getVibration().StartShock(6, 31, cXyz(0.0f, 1.0f, 0.0f));
        }

        if (mpModelMorf2->isStop()) {
            setActionMode(3, 0);
            field_0xa91 = 1;
        }
    }
}

/* 80625C74-80625E40 007174 01CC+00 1/1 0/0 0/0 .text            executeAttackShieldH__8daB_TN_cFv
 */
void daB_TN_c::executeAttackShieldH() {
    switch (mActionMode2) {
    case 0:
        speedF = 0.0f;
        setBck(8, 0, 3.0f, 1.0f);
        mActionMode2 = 1;
        break;

    case 1:
        if (mpModelMorf2->checkFrame(4.0f)) {
            mSound.startCreatureVoice(Z2SE_EN_TN_V_ATK_SLD, -1);
        }

        if (mpModelMorf2->checkFrame(8.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_L, 0, -1);
        }

        if (mpModelMorf2->checkFrame(21.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        }

        if (mpModelMorf2->checkFrame(5.0f)) {
            mSphC.OnAtSetBit();
        }

        if (mpModelMorf2->checkFrame(9.0f)) {
            mSphC.OffAtSetBit();
        }

        if (mpModelMorf2->isStop()) {
            setActionMode(4, 0);
        }
    }
}

/* 80625E40-80626034 007340 01F4+00 1/1 0/0 0/0 .text            executeGuardH__8daB_TN_cFv */
void daB_TN_c::executeGuardH() {
    cXyz sp18;
    switch (mActionMode2) {
    case 0:
        setSwordAtBit(0);
        mSphC.OffAtSetBit();
        field_0xa91 = 1;

        mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(18));
        mDoMtx_stack_c::multVecZero(&sp18);
        current.pos.set(sp18.x, current.pos.y, sp18.z);

        mActionMode2 = 1;
        speedF = 0.0f;

        if (field_0xaa8 != 0) {
            shape_angle.y = fopAcM_searchPlayerAngleY(this);
            setBck(13, 0, 0.0f, 1.0f);
        } else {
            cLib_chaseAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 0x2000);
            setBck(12, 0, 0.0f, 1.0f);
        }
        break;

    case 1:
        if (field_0xaa8 != 0) {
            onHeadLockFlg();
        } else {
            // Obtained 4 secret techinques
            if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[341])) {
                attention_info.flags |= 0x200000;
            }
        }

        if (mpModelMorf2->isStop()) {
            if (daPy_getPlayerActorClass()->getCutType() != daPy_py_c::CUT_TYPE_HEAD_JUMP) {
                setActionMode(3, 0);
            }
        }
    }
}

/* 80626034-80626320 007534 02EC+00 1/1 0/0 0/0 .text            executeDamageH__8daB_TN_cFv */
void daB_TN_c::executeDamageH() {
    s16 mPlayerAngleY = fopAcM_searchPlayerAngleY(this);
    daPy_py_c* player = daPy_getPlayerActorClass();
    field_0xa91 = 0;

    if (field_0xa80 == 0) {
        field_0xa91 = 1;
        field_0xaa7 = 30;
    }

    if (field_0xaa5 == 0) {
        if (player->getCutCount() >= 3) {
            field_0xa91 = 1;
        }
    } else if (field_0xaa7 != 0) {
        field_0xa91 = 1;
    }

    int iVar1;
    switch (mActionMode2) {
    case 0:
    case 1:
        setSwordAtBit(0);
        iVar1 = field_0xa78;
        if (iVar1 >= 12) {
            setActionMode(8, 0);
        } else {
            if (player->getCutType() != daPy_py_c::CUT_TYPE_HEAD_JUMP) {
                setBreakPart(iVar1);
            } else {
                setBreakHeadPart(iVar1);
            }

            mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(18));
            cXyz sp1c;
            mDoMtx_stack_c::multVecZero(&sp1c);
            current.pos.set(sp1c.x, current.pos.y, sp1c.z);

            if (mActionMode2 == 0) {
                setBck(9, 0, 0.0f, 1.0f);
            } else {
                setBck(11, 0, 0.0f, 1.0f);
            }

            mSound.startCreatureVoice(Z2SE_EN_TN_V_DMG, -1);
            speedF = 0.0f;
            mActionMode2 = 2;

            cLib_chaseAngleS(&shape_angle.y, mPlayerAngleY, 0x1800);

            if (field_0xaa5 == 1 && field_0xa78 < 11 && field_0xa9f != 0) {
                field_0xa91 = 1;
                field_0xaa7 = 40;
            }
        }
        break;

    case 2:
        if (mpModelMorf2->checkFrame(3.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        }

        if (mpModelMorf2->checkFrame(35.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
        }

        if (mpModelMorf2->isStop()) {
            setActionMode(3, 0);
            field_0xa91 = 1;
        }
    }
}

/* 80626320-80627100 007820 0DE0+00 1/1 0/0 0/0 .text            executeChangeDemo__8daB_TN_cFv */
void daB_TN_c::executeChangeDemo() {
    cXyz sp28, sp34, sp40;
    daPy_py_c* player = daPy_getPlayerActorClass();
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));

    switch (mActionMode2) {
    case 0:
        if (!eventInfo.checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(this, 2, 0xffff, 0);
            eventInfo.onCondition(2);
            return;
        }

        Z2GetAudioMgr()->changeSubBgmStatus(1);

        camera->mCamera.Stop();
        camera->mCamera.SetTrimSize(3);

        field_0xa6c = 30;
        mCamFovY = 55.0f;
        field_0x724 = 380.0f;
        field_0x720 = 0x1000;
        mCamCenter.set(0.0f, -179.0f, -342.0f);
        mCamEye.set(0.0f, -300.0f, 350.0f);

        player->changeOriginalDemo();
        sp28.set(100.0f, -400.0f, 1000.0f);
        player->setPlayerPosAndAngle(&sp28, -0x8000, 0);
        player->changeDemoMode(4, 1, 0, 0);

        speedF = 0.0f;
        setBck(10, 0, 3.0f, 1.0f);

        mSound.startCreatureVoice(Z2SE_EN_TN_V_DMG_2, -1);

        mActionMode2 = 100;

        for (int i = 0; i < 16; i++) {
            if (field_0x9fc[i] >= 3 && field_0x9fc[i] <= 5 && std::abs(field_0x75c[i].x) < 200.0f) {
                if (field_0x75c[i].x < 0.0f) {
                    field_0x75c[i].x -= 200.0f;
                } else {
                    field_0x75c[i].x += 200.0f;
                }
            }
        }

        return;

    case 1:
    case 100:
    case 101:
        if (mActionMode2 == 100) {
            current.pos.set(0.0f, -400.0f, -350.0f);
            shape_angle.y = 0;
            mActionMode2 = 101;

        } else {
            if (mActionMode2 == 101) {
                setBreakPart(field_0xa78);
                mActionMode2 = 1;
            }

            mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(4));
            mDoMtx_stack_c::multVecZero(&mCamCenter);
        }

        mCamEye.set(0.0f, -300.0f, 0.0f);

        if (mpModelMorf2->checkFrame(3.0f) || mpModelMorf2->checkFrame(26.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        }

        if (mpModelMorf2->checkFrame(15.0f) || mpModelMorf2->checkFrame(37.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
        }

        if (mpModelMorf2->isStop()) {
            setBck(30, 0, 3.0f, 1.0f);
            current.angle.y = shape_angle.y + 0x10000 + -0x8000;
            mActionMode2 = 2;
        }
        break;

    case 2:
        mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(4));
        mDoMtx_stack_c::multVecZero(&mCamCenter);
        mCamEye.set(0.0f, -300.0f, 0.0f);

        if (mpModelMorf2->checkFrame(4.0f)) {
            speedF = 35.0f;
            speed.y = 4.0f;
            gravity = -1.0f;
        }

        if (mpModelMorf2->checkFrame(6.0f)) {
            mSound.startCreatureVoice(Z2SE_EN_TN_V_JUMP, -1);
        }

        if (mpModelMorf2->isStop() && mAcch.ChkGroundHit()) {
            setBck(31, 0, 5.0f, 1.0f);
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
            mActionMode2 = 3;
        }
        break;

    case 3:
        mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(4));
        mDoMtx_stack_c::multVecZero(&mCamCenter);
        mCamEye.set(0.0f, -300.0f, 0.0f);
        cLib_chaseF(&speedF, 0.0f, 7.0f);
        if (mpModelMorf2->checkFrame(4.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
        }

        if (mpModelMorf2->isStop()) {
            speedF = 0.0f;
            setBck(41, 0, 3.0f, 1.0f);
            mActionMode2 = 4;
        }
        break;

    case 4:
        if (mpModelMorf2->checkFrame(11.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        }

        if (mpModelMorf2->checkFrame(19.0f)) {
            mSound.startCreatureVoice(Z2SE_EN_TN_V_THROW, -1);
        }

        if (mpModelMorf2->checkFrame(22.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
        }

        mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(4));
        mDoMtx_stack_c::multVecZero(&mCamCenter);
        mCamEye.set(0.0f, -300.0f, 0.0f);

        if (mpModelMorf2->checkFrame(23.0f)) {
            field_0x9fc[13] = 2;
        }

        if (mpModelMorf2->checkFrame(33.0f)) {
            mActionMode2 = 10;
            field_0x75c[13].z = -200.0f;
            mCamEye.set(250.0f, -330.0f, 1250.0f);
            mCamCenter = field_0x75c[13];
        }
        break;

    case 10:
        mCamCenter = field_0x75c[13];

        if (mpModelMorf2->isStop()) {
            player->changeDemoMode(16, 2, 0, 0);
            setBck(42, 2, 3.0f, 1.0f);
            field_0xa6c = 60;
            mActionMode2 = 11;
        }
        break;

    case 11:
        sp40 = mCamEye;
        sp34.set(100.0f, -330.0f, 1250.0f);
        cLib_addCalcPos2(&mCamEye, sp34, 0.5f, 10.0f);
        mCamCenter += mCamEye - sp40;
        sp28 = player->current.pos;
        sp28.y += 150.0f;
        cLib_addCalcPos2(&mCamCenter, sp28, 0.5f, 30.0f);

        if (field_0xa6c == 45) {
            player->changeDemoMode(25, 0, 0, 0);
        }

        if (field_0xa6c == 15) {
            field_0xa6c = 30;
            mActionMode2 = 12;
        }
        break;

    case 12:
        mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(4));
        mDoMtx_stack_c::multVecZero(&sp34);
        cLib_addCalcPos2(&mCamCenter, sp34, 0.1f, 60.0f);

        if (field_0xa6c == 0) {
            field_0xa6c = 40;
            mActionMode2 = 13;
        }
        break;

    case 13:
        mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(4));
        mDoMtx_stack_c::multVecZero(&sp34);
        sp34.y -= 100.0f;
        cLib_addCalcPos2(&mCamCenter, sp34, 0.1f, 30.0f);
        sp34.set(0.0f, -380.0f, -270.0f);
        cLib_addCalcPos2(&mCamEye, sp34, 0.1f, 70.0f);

        if (field_0xa6c == 0) {
            setBck(38, 0, 3.0f, 1.0f);
            mSound.startCreatureVoice(Z2SE_EN_TN_V_PULL_OUT, -1);
            mActionMode2 = 15;
            sp28.set(-100.0f, -400.0f, 300.0f);
            player->setPlayerPosAndAngle(&sp28, 0x7000, 0);
        }
        break;

    case 15:
        mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(4));
        mDoMtx_stack_c::multVecZero(&sp34);
        sp34.y -= 100.0f;
        cLib_addCalcPos2(&mCamCenter, sp34, 0.1f, 30.0f);
        sp34.set(0.0f, -380.0f, -270.0f);
        cLib_addCalcPos2(&mCamEye, sp34, 0.1f, 70.0f);

        if (mpModelMorf2->checkFrame(10.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_PULL_OUT, 0, -1);
            field_0x9fc[15] = 1;
            field_0x9fc[14] = 2;
            mpModelMorf1->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("B_tn", 40), 0, 0.0f, 1.0f,
                                 0.0f, -1.0f);
        }

        if (mpModelMorf2->isStop()) {
            for (int i = 0; i < 4; i++) {
                mSwordSphs[i].OffCoSetBit();
            }
            mCps.OffCoSetBit();
            setBck(42, 2, 3.0f, 1.0f);
            field_0xa6c = 30;
            mActionMode2 = 16;
            return;
        }
        break;

    case 16:
        if (field_0xa6c == 0) {
            camera->mCamera.Reset(mCamCenter, mCamEye);
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);
            dComIfGp_event_reset();
            setActionMode(9, 0);
            initChaseL(16);
            mSphC.OffAtSetBit();
        }
        break;
    }

    camera->mCamera.Set(mCamCenter, mCamEye, mCamFovY, 0);
}

/* 80627100-80627790 008600 0690+00 1/1 0/0 0/0 .text            executeZakoChangeDemo__8daB_TN_cFv
 */
void daB_TN_c::executeZakoChangeDemo() {
    s16 mPlayerAngleY = fopAcM_searchPlayerAngleY(this);

    switch (mActionMode2) {
    case 0:
        if (field_0xaad != 0) {
            Z2GetAudioMgr()->changeSubBgmStatus(1);
        }

        field_0xa6c = 30;
        speedF = 0.0f;
        setBck(10, 0, 3.0f, 1.0f);

        mSound.startCreatureVoice(Z2SE_EN_TN_V_DMG_2, -1);

        setBreakPart(field_0xa78);
        mActionMode2 = 1;
        // fallthrough
    case 1:
        if (mpModelMorf2->checkFrame(3.0f) || mpModelMorf2->checkFrame(26.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        }

        if (mpModelMorf2->checkFrame(15.0f) || mpModelMorf2->checkFrame(37.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
        }

        cLib_addCalcAngleS(&shape_angle.y, mPlayerAngleY, 8, 0x100, 16);

        if (mpModelMorf2->isStop()) {
            setBck(30, 0, 3.0f, 1.0f);
            current.angle.y = shape_angle.y + 0x8000;
            mActionMode2 = 2;
        }
        break;

    case 2:
        if (mpModelMorf2->checkFrame(4.0f)) {
            speedF = 45.0f;
            speed.y = 5.0f;
            gravity = -1.0f;
        }

        if (mpModelMorf2->checkFrame(6.0f)) {
            mSound.startCreatureVoice(Z2SE_EN_TN_V_JUMP, -1);
        }

        if (!mpModelMorf2->isStop()) {
            return;
        }

        if (!mAcch.ChkGroundHit()) {
            return;
        }

        setBck(31, 0, 5.0f, 1.0f);

        mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        mActionMode2 = 3;
        return;

    case 3:
        cLib_addCalcAngleS(&shape_angle.y, mPlayerAngleY, 8, 0x800, 16);
        cLib_chaseF(&speedF, 0.0f, 9.0f);

        if (mpModelMorf2->checkFrame(4.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
        }

        if (mpModelMorf2->isStop()) {
            speedF = 0.0f;
            setBck(41, 0, 3.0f, 1.0f);
            mActionMode2 = 4;
        }
        break;

    case 4:
        if (mpModelMorf2->checkFrame(11.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        }

        if (mpModelMorf2->checkFrame(19.0f)) {
            mSound.startCreatureVoice(Z2SE_EN_TN_V_THROW, -1);
        }

        if (mpModelMorf2->checkFrame(22.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
        }

        if (mpModelMorf2->getFrame() < 23.0f) {
            cLib_addCalcAngleS(&shape_angle.y, mPlayerAngleY, 8, 0x800, 16);
        }

        if (mpModelMorf2->checkFrame(23.0f)) {
            field_0x9fc[13] = 2;
            setSwordAtBit(1);
        }

        if (mpModelMorf2->isStop()) {
            setBck(38, 0, 3.0f, 1.0f);
            mSound.startCreatureVoice(Z2SE_EN_TN_V_PULL_OUT, -1);
            mActionMode2 = 5;
        }
        break;

    case 5:
        if (mpModelMorf2->checkFrame(10.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_PULL_OUT, 0, -1);
            field_0x9fc[15] = 1;
            field_0x9fc[14] = 2;
            mpModelMorf1->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("B_tn", 40), 0, 0.0f, 1.0f,
                                 0.0f, -1.0f);
        }

        if (mpModelMorf2->isStop()) {
            setActionMode(9, 0);
            initChaseL(3);
            mSphC.OffAtSetBit();
        }
    }
}

/* 80627790-8062799C 008C90 020C+00 1/1 0/0 0/0 .text            setWalkDir__8daB_TN_cFv */
void daB_TN_c::setWalkDir() {
    f32 mPlayerDistance = fopAcM_searchPlayerDistance(this);

    if (checkMoveArea() != 0) {
        s16 sVar1 = cM_atan2s(-current.pos.x, -current.pos.z);
        s16 mPlayerAngleY = fopAcM_searchPlayerAngleY(this) - sVar1;
        if (abs(mPlayerAngleY) < 0x2000) {
            mWalkDir = 0;
        } else {
            if (abs(mPlayerAngleY) > 0x6000) {
                mWalkDir = 1;
            } else {
                if (abs(mPlayerAngleY) < 0x4000) {
                    mWalkDir = 0;
                } else {
                    mWalkDir = 1;
                }

                if (mPlayerAngleY < 0) {
                    if (mActionMode2 == 5 && field_0xa6c > 30) {
                        field_0xa6c = 30;
                    }
                } else if (mActionMode2 == 4 && field_0xa6c > 30) {
                    field_0xa6c = 30;
                }
            }
        }
    } else {
        if (mPlayerDistance > 800.0f) {
            field_0xa6c = 0;
        }

        if (mWalkDir == 0) {
            if (field_0xa70 != 0) {
                if (mPlayerDistance < 500.0f) {
                    mWalkDir = 1;
                }
            } else if (mPlayerDistance < 300.0f) {
                mWalkDir = 1;
            }
        } else if (mWalkDir == 1) {
            if (field_0xa70 != 0) {
                if (mPlayerDistance > 550.0f) {
                    mWalkDir = 0;
                }
            } else if (mPlayerDistance > 350.0f) {
                mWalkDir = 0;
            }

            if (mPlayerDistance < 200.0f) {
                mWalkDir = 2;
            }
        } else if (mPlayerDistance > 250.0f) {
            mWalkDir = 1;
        }
    }
}

/* 8062799C-80627CBC 008E9C 0320+00 6/5 0/0 0/0 .text            initChaseL__8daB_TN_cFi */
void daB_TN_c::initChaseL(int param_1) {
    mActionMode2 = param_1;
    speedF = 0.0f;

    switch (mActionMode2) {
    case 2:
        setBck(42, 2, 10.0f, 1.0f);
        field_0xa6c = 30;
        break;

    case 3:
        setBck(45, 2, 10.0f, 1.0f);
        speedF = 4.7f;
        break;

    case 4:
        if ((u8)checkBck(43) == 0) {
            setBck(43, 2, 10.0f, 1.0f);
        }

        current.angle.y = shape_angle.y + 0x4000;
        field_0xa6c = cM_rndFX(20.0f) + 90.0f;
        speedF = 4.8f;
        mWalkDir = 1;
        break;

    case 5:
        if ((u8)checkBck(44) == 0) {
            setBck(44, 2, 10.0f, 1.0f);
        }

        current.angle.y = shape_angle.y + -0x4000;
        field_0xa6c = cM_rndFX(20.0f) + 90.0f;
        speedF = 4.8f;
        mWalkDir = 1;
        break;

    case 6:
        setBck(30, 0, 3.0f, 1.0f);
        break;

    case 7:
        mpModelMorf2->setPlaySpeed(1.0f);
        mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        break;

    case 8:
    case 17:
        setBck(32, 0, 3.0f, 1.0f);
        break;

    case 9:
        setBck(33, 0, 5.0f, 1.0f);
        mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        break;

    case 10:
    case 11:
        setBck(36, 0, 3.0f, 1.0f);
        break;

    case 12:
        setBck(37, 0, 3.0f, 1.0f);
        mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        speedF = 15.0f;
        break;

    case 13:
    case 14:
        setBck(34, 0, 3.0f, 1.0f);
        break;

    case 15:
        setBck(35, 0, 3.0f, 1.0f);
        mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        speedF = 15.0f;
        break;

    case 16:
        setBck(45, 2, 10.0f, 1.0f);
        speedF = 4.7;
        field_0xa6c = 30;
    }
}

/* 80627CBC-80627D3C 0091BC 0080+00 4/4 0/0 0/0 .text            checkAttackAble__8daB_TN_cFv */
bool daB_TN_c::checkAttackAble() {
    if (fopAcM_searchPlayerDistance(this) < 500.0f) {
        if (abs((s16)(fopAcM_searchPlayerAngleY(this) - shape_angle.y)) < 0x3000) {
            return true;
        }
    }

    return false;
}

/* 80627D3C-8062868C 00923C 0950+00 1/1 0/0 0/0 .text            checkNextMove__8daB_TN_cFv */
bool daB_TN_c::checkNextMove() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    f32 mPlayerDistance = fopAcM_searchPlayerDistance(this);
    s16 mPlayerAngleY = fopAcM_searchPlayerAngleY(this) - shape_angle.y;
    s16 isAttackAble = checkAttackAble();
    int iVar1 = 0;
    s16 sVar7 = current.angle.y;

    fopAc_ac_c* mActor = (fopAc_ac_c*)fpcM_Search(s_obj_sub, this);
    if (mActor != NULL) {
        sVar7 = fopAcM_searchActorAngleY(this, mActor);
        iVar1 = 1;
    }

    if (dComIfGp_checkPlayerStatus0(0, 0x4000) && player->getHookshotTopPos()) {
        if (player->getHookshotTopPos()->absXZ(current.pos) < 300.0f) {
            sVar7 = cLib_targetAngleY(&current.pos, player->getHookshotTopPos());
            iVar1 = 1;
        }
    }

    if (player->getIronBallCenterPos() && !player->checkIronBallGroundStop()) {
        if (player->getIronBallCenterPos()->absXZ(current.pos) < 300.0f) {
            sVar7 = cLib_targetAngleY(&current.pos, player->getIronBallCenterPos());
            iVar1 = 1;
        }
    }

    if (daPy_py_c::getThrowBoomerangActor()) {
        if (daPy_py_c::getThrowBoomerangActor()->current.pos.absXZ(current.pos) < 300.0f) {
            sVar7 =
                cLib_targetAngleY(&current.pos, &daPy_py_c::getThrowBoomerangActor()->current.pos);
            iVar1 = 1;
        }
    }

    if (iVar1) {
        if ((s16)(sVar7 - shape_angle.y) < 0) {
            initChaseL(13);
        } else {
            initChaseL(10);
        }

        field_0xa84 = 10;
        return 1;
    }

    if (isAttackAble) {
        if (player->checkFrontRoll() && mPlayerDistance < 250.0f) {
            setActionMode(11, 10);
            return 1;
        }

        if (player->getCutType() != daPy_py_c::CUT_TYPE_JUMP && mPlayerDistance < 200.0f) {
            setActionMode(11, 0);
            return 1;
        }
    }

    if ((player->getCutType() == daPy_py_c::CUT_TYPE_JUMP && !player->checkCutJumpCancelTurn()) &&
        mPlayerDistance < 350.0f)
    {
        if ((field_0xa9d & 1) == 0) {
            field_0xa9d |= 1;

            if (player->speedF < 28.0f) {
                initChaseL(6);
            } else {
                if (mPlayerAngleY < 0) {
                    initChaseL(14);
                } else {
                    initChaseL(11);
                }

                field_0xa84 = 10;
            }
            return 1;
        }

    } else {
        field_0xa9d &= 254;
    }

    if (checkMoveArea() == 3) {
        return 0;
    }

    if (player->checkCutCharge() && isAttackAble) {
        if ((field_0xa9d & 2) == 0) {
            field_0xa9d |= 2;
            setActionMode(10, 10);
            return 1;
        }
    } else {
        field_0xa9d &= ~0x2;
    }

    if (field_0xa70 == 0 && abs(mPlayerAngleY) < 0x3000 && mPlayerDistance > 450.0f &&
        mPlayerDistance < 700.0f)
    {
        if (cM_rnd() < 0.5f) {
            initChaseL(8);
            return 1;
        }

        if (field_0xaa5 == 1) {
            field_0xa70 = cM_rndF(30.0f) + 10.0f;
        } else {
            field_0xa70 = 10;
        }
    }

    if (player->getCutCount() != 0) {
        if (isAttackAble && (field_0xa9d & 4) == 0) {
            field_0xa9d |= 4;
            if (cM_rnd() < 0.4f && mPlayerDistance < 450.0f && mPlayerDistance > 200.0f) {
                if (cM_rnd() < 0.5f) {
                    initChaseL(0xe);
                } else {
                    initChaseL(0xb);
                }

                field_0xa84 = 10;
                return 1;
            }
        }
    } else {
        field_0xa9d &= ~0x4;
    }

    if (isAttackAble && mPlayerDistance < 350.0f) {
        if (mPlayerDistance < 250.0f) {
            if (field_0xaa5 == 1) {
                if (field_0xa70 > 90) {
                    field_0xa70 = cM_rndF(30.0f) + 60.0f;
                }
            } else if (field_0xa70 > 30) {
                field_0xa70 = 30;
            }
        }

        if (field_0xa70 == 0 && checkNormalAttackAble()) {
            setActionMode(10, 0);
            return 1;
        }
    }

    if (mPlayerDistance < 100.0f) {
        if (!isAttackAble) {
            initChaseL(6);
            return 1;
        }

        if (field_0xa70 > 5) {
            field_0xa70 = 5;
        }

        if (field_0xa70 == 0 && checkNormalAttackAble()) {
            setActionMode(10, 0);
            return 1;
        }
    }

    return 0;
}

/* 8062868C-806292F8 009B8C 0C6C+00 2/1 0/0 0/0 .text            executeChaseL__8daB_TN_cFv */
void daB_TN_c::executeChaseL() {
    f32 mPlayerDistance = fopAcM_searchPlayerDistance(this);
    s16 mPlayerAngleY = fopAcM_searchPlayerAngleY(this);
    daPy_py_c* player = daPy_getPlayerActorClass();

    if (player->getCutCount() <= 1) {
        field_0xa9c++;
    } else {
        field_0xa9c = 0;
    }

    switch (mActionMode2) {
    case 0:
        field_0xa9d = 0;
        // fallthrough
    case 1:
        speedF = 0.0f;
        if (checkMoveArea()) {
            if (cM_rnd() < 0.5f) {
                initChaseL(4);
            } else {
                initChaseL(5);
            }
        } else {
            if (mPlayerDistance > 800.0f) {
                initChaseL(3);
            } else {
                if (cM_rnd() < 0.5f) {
                    initChaseL(4);
                } else {
                    initChaseL(5);
                }
            }
        }

        setSwordAtBit(0);
        field_0xa91 = 1;
        break;

    case 3:
        if (checkNextMove() == 0) {
            if (mpModelMorf2->checkFrame(16.0f)) {
                mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
            }

            if (mpModelMorf2->checkFrame(33.0f)) {
                mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
            }

            cLib_addCalcAngleS(&shape_angle.y, mPlayerAngleY, 4, 0x400, 16);
            current.angle.y = shape_angle.y;

            if (mPlayerDistance < 700.0f) {
                initChaseL(1);
            }

            if (checkMoveArea() != 0) {
                if (cM_rnd() < 0.5f) {
                    initChaseL(4);
                } else {
                    initChaseL(5);
                }
            }
        }
        break;

    case 16:
        if (mpModelMorf2->checkFrame(16.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        }

        if (mpModelMorf2->checkFrame(33.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
        }

        cLib_addCalcAngleS(&shape_angle.y, mPlayerAngleY, 4, 0x400, 16);
        current.angle.y = shape_angle.y;

        if (field_0xa6c == 0) {
            initChaseL(17);
        }
        break;

    case 2:
        if (field_0xa6c == 0) {
            initChaseL(1);
        }
        break;

    case 4:
        if (checkNextMove() == 0) {
            if (mpModelMorf2->checkFrame(13.0f)) {
                mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
            }

            if (mpModelMorf2->checkFrame(27.0f)) {
                mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
            }

            field_0xa94 = 1;
            setWalkDir();
            if (mWalkDir == 0) {
                cLib_addCalcAngleS(&shape_angle.y, mPlayerAngleY + -0x2000, 4, 0x400, 16);
            } else if (mWalkDir == 1) {
                cLib_addCalcAngleS(&shape_angle.y, mPlayerAngleY, 4, 0x400, 16);
            } else {
                cLib_addCalcAngleS(&shape_angle.y, mPlayerAngleY + 0x2000, 4, 0x400, 16);
            }

            current.angle.y = shape_angle.y + 0x4000;

            if (field_0xa6c == 0) {
                initChaseL(1);
            }
        }
        break;

    case 5:
        if (!checkNextMove()) {
            if (mpModelMorf2->checkFrame(13.0f)) {
                mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
            }

            if (mpModelMorf2->checkFrame(27.0f)) {
                mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
            }

            field_0xa94 = 1;
            setWalkDir();
            if (mWalkDir == 0) {
                cLib_addCalcAngleS(&shape_angle.y, mPlayerAngleY + 0x2000, 4, 0x400, 16);
            } else if (mWalkDir == 1) {
                cLib_addCalcAngleS(&shape_angle.y, mPlayerAngleY, 4, 0x400, 16);
            } else {
                cLib_addCalcAngleS(&shape_angle.y, mPlayerAngleY + -0x2000, 4, 0x400, 16);
            }

            current.angle.y = shape_angle.y + -0x4000;

            if (field_0xa6c == 0) {
                initChaseL(1);
            }
        }
        break;

    case 6:
        cLib_addCalcAngleS(&shape_angle.y, mPlayerAngleY, 4, 0x400, 16);
        current.angle.y = shape_angle.y + 0x8000;

        if ((u8)checkBck(30)) {
            if (mpModelMorf2->checkFrame(4.0f)) {
                speedF = 50.0f;
                speed.y = 19.0f;
                gravity = -4.0f;
            }

            if (mpModelMorf2->checkFrame(6.0f)) {
                mSound.startCreatureVoice(Z2SE_EN_TN_V_JUMP, -1);
            }

            if (mpModelMorf2->isStop()) {
                setBck(31, 0, 5.0f, 0.0f);
            }
        } else {
            if (mAcch.ChkGroundHit()) {
                initChaseL(7);
            }
        }
        break;

    case 7:
        cLib_chaseF(&speedF, 0.0f, 6.0f);

        if (mpModelMorf2->checkFrame(4.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
        }

        if (mpModelMorf2->isStop()) {
            if ((!checkAttackAble() || field_0xaaa != 0) || !checkNormalAttackAble()) {
                initChaseL(1);
            } else if (mPlayerDistance < 200.0f) {
                setActionMode(11, 0);
            } else {
                setActionMode(10, 10);
            }
        }
        break;

    case 8:
    case 17:
        cLib_addCalcAngleS(&shape_angle.y, mPlayerAngleY, 4, 0x400, 16);
        current.angle.y = shape_angle.y;

        if (mpModelMorf2->checkFrame(4.0f)) {
            if (mActionMode2 == 8) {
                speedF = 35.0f;
                speed.y = 4.0f;
            } else {
                speedF = 45.0f;
                speed.y = 5.0f;
            }

            gravity = -1.0f;
        }

        if (mpModelMorf2->checkFrame(6.0f)) {
            mSound.startCreatureVoice(Z2SE_EN_TN_V_JUMP, -1);
        }

        if (mpModelMorf2->isStop() && mAcch.ChkGroundHit()) {
            if (!checkAttackAble() || !checkNormalAttackAble()) {
                initChaseL(9);
            } else {
                mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);

                if (mPlayerDistance < 200.0f) {
                    setActionMode(11, 0);
                } else {
                    if (cM_rnd() < 0.5f) {
                        setActionMode(10, 10);
                    } else {
                        setActionMode(10, 0);
                    }
                }
            }
        }
        break;

    case 9:
        cLib_chaseF(&speedF, 0.0f, 7.0f);

        if (mpModelMorf2->checkFrame(4.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
        }

        if (mpModelMorf2->isStop()) {
            initChaseL(1);
        }
        break;

    case 10:
    case 11:
    case 13:
    case 14:
        cLib_addCalcAngleS(&shape_angle.y, mPlayerAngleY, 4, 0x400, 16);

        if (mActionMode2 == 11 || mActionMode2 == 10) {
            current.angle.y = shape_angle.y + -0x4000;
        } else {
            current.angle.y = shape_angle.y + 0x4000;
        }

        if (mpModelMorf2->checkFrame(7.0f)) {
            speedF = 33.0f;
        } else if (mpModelMorf2->checkFrame(6.0f)) {
            mSound.startCreatureVoice(Z2SE_EN_TN_V_JUMP, -1);
            speedF = 35.0f;
        } else if (mpModelMorf2->checkFrame(5.0f)) {
            speedF = 40.0f;
        } else if (mpModelMorf2->checkFrame(4.0f)) {
            speedF = 45.0f;
            speed.y = 5.0f;
            gravity = -1.0f;
        }

        if (mpModelMorf2->isStop() && mAcch.ChkGroundHit()) {
            if (mActionMode2 == 11 || mActionMode2 == 10) {
                initChaseL(12);
            } else {
                initChaseL(15);
            }
        }
        break;

    case 12:
    case 15:
        if (mpModelMorf2->checkFrame(5.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
        }

        cLib_chaseF(&speedF, 0.0f, 7.0f);

        if (mpModelMorf2->isStop()) {
            if (!checkAttackAble() || !checkNormalAttackAble()) {
                initChaseL(1);
            } else if (mPlayerDistance < 200.0f) {
                setActionMode(11, 0);
            } else {
                setActionMode(10, 10);
            }
        }
    }
}

/* 806292F8-80629D20 00A7F8 0A28+00 1/1 0/0 0/0 .text            executeAttackL__8daB_TN_cFv */
void daB_TN_c::executeAttackL() {
    s16 mPlayerAngleY = fopAcM_searchPlayerAngleY(this);
    f32 mPlayerDistance = fopAcM_searchPlayerDistance(this);

    speedF = 0.0f;
    current.angle.y = shape_angle.y;

    switch (mActionMode2) {
    case 0:
    case 20:
    case 10:
        field_0xa6c = 0;
        field_0xa9b = mActionMode2;

        if (daPy_getPlayerActorClass()->checkNowWolf()) {
            field_0xa70 = l_HIO.field_0x10;
        } else {
            if (field_0xaa5 == 0) {
                field_0xa70 = l_HIO.field_0x14;
            } else {
                field_0xa70 = l_HIO.field_0x18;
            }
        }

        if (mPlayerDistance < 350.0f) {
            if (field_0xa9b == 20) {
                mActionMode2 = 4;
                setBck(42, 2, 3.0f, 1.0f);
                field_0xa6c = 3;
            } else {
                mActionMode2 = 2;
                setBck(21, 0, 3.0f, 1.0f);
            }
        } else {
            if (field_0xa9b == 20 || field_0xa9b == 10) {
                mActionMode2 = 3;
                setBck(42, 2, 3.0f, 1.0f);
                if (field_0xa9b == 10) {
                    field_0xa6c = 5;
                } else {
                    field_0xa6c = 10;
                }
            } else {
                mActionMode2 = 1;
                setBck(20, 0, 3.0f, 1.0f);
            }
        }

        mWalkDir = 0;
        break;

    case 11:
        field_0xa9b = mActionMode2;
        if (daPy_getPlayerActorClass()->checkNowWolf()) {
            field_0xa70 = l_HIO.field_0x10;
        } else {
            if (field_0xaa5 == 0) {
                field_0xa70 = l_HIO.field_0x14;
            } else {
                field_0xa70 = l_HIO.field_0x18;
            }
        }

        if (cM_rnd() < 0.5f) {
            mActionMode2 = 2;
            setBck(21, 0, 10.0f, 1.0f);
        } else {
            mActionMode2 = 1;
            setBck(20, 0, 7.0f, 1.0f);
        }

        mWalkDir = 0;
        return;

    case 1:
        if (mpModelMorf2->checkFrame(7.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_SWD_S_TRST, 0, -1);
        }

        if (mpModelMorf2->checkFrame(8.0f)) {
            mSound.startCreatureVoice(Z2SE_EN_TN_V_THRUST, -1);
        }

        if (mpModelMorf2->checkFrame(10.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_L, 0, -1);
        }

        if (mpModelMorf2->checkFrame(15.0f)) {
            mActionMode2 = 101;
            field_0xa6c = l_HIO.field_0x28;
            mpModelMorf2->setPlaySpeed(0.0f);
        }

    case 101:
        if (field_0xa9b != 0 && mpModelMorf2->getFrame() < 8.0f) {
            cLib_addCalcAngleS(&shape_angle.y, mPlayerAngleY, 4, 0x800, 16);
        }

        if (mpModelMorf2->checkFrame(35.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
        }

        if (mpModelMorf2->checkFrame(7.0f)) {
            setSwordAtBit(1);
        } else if (mpModelMorf2->checkFrame(14.0f)) {
            setSwordAtBit(0);
        }

        if (mpModelMorf2->checkFrame(8.0f)) {
            field_0xa91 = 0;
        } else if (mpModelMorf2->checkFrame(30.0f)) {
            field_0xa91 = 1;
        }

        if (mActionMode2 == 101 && field_0xa6c == 0) {
            mpModelMorf2->setPlaySpeed(1.0f);
            if (mpModelMorf2->isStop()) {
                setActionMode(9, 0);
            }
        }
        break;

    case 2:
        if (field_0xa9b != 0) {
            if (mpModelMorf2->checkFrame(40.0f)) {
                mActionMode2 = 102;
                field_0xa6c = l_HIO.field_0x2c;
                mpModelMorf2->setPlaySpeed(0.0f);
            }
        } else {
            mActionMode2 = 102;
        }
        // fallthrough
    case 102:
        if (mpModelMorf2->checkFrame(14.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_V_2_SWD_1, 0, -1);
        } else if (mpModelMorf2->checkFrame(15.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_SWD_S, 0, -1);
        } else if (mpModelMorf2->checkFrame(25.0f)) {
            mSound.startCreatureVoice(Z2SE_EN_TN_V_2_SWD_2, -1);
        } else if (mpModelMorf2->checkFrame(26.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_SWD_S, 0, -1);
        } else if (mpModelMorf2->checkFrame(28.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_L, 0, -1);
        } else if (mpModelMorf2->checkFrame(52.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
        }

        if (mWalkDir != 0 && mpModelMorf2->getFrame() < 10.0f) {
            speedF = 10.0f;
        }

        if (mpModelMorf2->getFrame() < 20.0f) {
            cLib_addCalcAngleS(&shape_angle.y, mPlayerAngleY, 8, 0x400, 16);
        }

        if (mpModelMorf2->checkFrame(13.0f)) {
            setSwordAtBit(1);
            setSwordAtBreak(0);
        } else if (mpModelMorf2->checkFrame(38.0f)) {
            setSwordAtBit(0);
            setSwordAtBreak(1);
        }

        if (field_0xa9b == 0) {
            if (mpModelMorf2->checkFrame(20.0f)) {
                field_0xa91 = 0;
            } else if (mpModelMorf2->checkFrame(53.0f)) {
                field_0xa91 = 1;
            }
        }

        if (field_0xa9b == 0 && mPlayerDistance < 800.0f &&
            daPy_getPlayerActorClass()->getDamageWaitTimer() == 0)
        {
            if (mpModelMorf2->checkFrame(30.0f)) {
                mWalkDir = 10;
            }

            if (mpModelMorf2->checkFrame(41.0f) && mWalkDir == 10) {
                setBck(20, 0, 5.0f, 1.0f);
                setSwordAtBit(0);
                setSwordAtBreak(1);
                mActionMode2 = 1;
            }
        }

        if (mActionMode2 != 102) {
            return;
        }

        if (field_0xa6c != 0) {
            return;
        }

        mpModelMorf2->setPlaySpeed(1.0f);
        if (!mpModelMorf2->isStop()) {
            return;
        }

        setActionMode(9, 0);
        return;

    case 3:
        if (field_0xa6c != 0) {
            return;
        }

        mActionMode2 = 1;
        setBck(20, 0, 3.0f, 1.0f);
        return;

    case 4:
        if (field_0xa6c != 0) {
            return;
        }

        mActionMode2 = 2;
        setBck(21, 0, 3.0f, 1.0f);
        return;
    }
}

/* 80629D20-80629FB0 00B220 0290+00 1/1 0/0 0/0 .text            executeAttackShieldL__8daB_TN_cFv
 */
void daB_TN_c::executeAttackShieldL() {
    s16 mPlayerAngleY = fopAcM_searchPlayerAngleY(this);
    fopAcM_searchPlayerDistance(this);

    switch (mActionMode2) {
    case 10:
    case 0:
        field_0xa9b = mActionMode2;
        if (daPy_getPlayerActorClass()->checkNowWolf()) {
            field_0xa70 = l_HIO.field_0x10;
        } else {
            if (field_0xaa5 == 0) {
                field_0xa70 = l_HIO.field_0x14;
            } else {
                field_0xa70 = l_HIO.field_0x18;
            }
        }

        speedF = 0.0f;
        setBck(22, 0, 3.0f, 1.0f);
        mActionMode2 = 1;
        break;

    case 1:
        if (mpModelMorf2->checkFrame(8.0f)) {
            mSound.startCreatureVoice(Z2SE_EN_TN_V_KICK, -1);
        }

        if (mpModelMorf2->checkFrame(26.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        }

        if (mpModelMorf2->getFrame() < 10.0f) {
            cLib_addCalcAngleS(&shape_angle.y, mPlayerAngleY, 4, 0x800, 16);
        }

        if (mpModelMorf2->checkFrame(8.0f)) {
            mSphC.OnAtSetBit();
        }

        if (mpModelMorf2->checkFrame(12.0f)) {
            mSphC.OffAtSetBit();
        }

        if (mpModelMorf2->isStop()) {
            if (checkAttackAble() && checkNormalAttackAble()) {
                setActionMode(10, 20);
            } else {
                setActionMode(9, 0);
            }
        }
        break;
    }
}

/* 80629FB0-8062A3D0 00B4B0 0420+00 1/1 0/0 0/0 .text            executeGuardL__8daB_TN_cFv */
void daB_TN_c::executeGuardL() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    s16 mPlayerAngleY = fopAcM_searchPlayerAngleY(this) - shape_angle.y;
    f32 mPlayerDistance = fopAcM_searchPlayerDistance(this);

    switch (mActionMode2) {
    case 0:
    case 11:
    case 10:
        setSwordAtBit(0);
        setSwordAtBreak(1);
        mSphC.OffAtSetBit();
        speedF = 0.0f;

        if (mActionMode2 == 0) {
            field_0xa91 = 1;

            u32 mCutType = getCutType();
            if ((mCutType & 16) != 0) {
                setBck(28, 0, 3.0f, 1.0f);
            } else if ((mCutType & 32) != 0) {
                setBck(29, 0, 3.0f, 1.0f);
            } else if (cM_rnd() < 0.5f) {
                setBck(28, 0, 3.0f, 1.0f);
            } else {
                setBck(29, 0, 3.0f, 1.0f);
            }

            speedF = 0.0f;
            mActionMode2 = 1;
        } else {
            if (mActionMode2 == 11) {
                mActionMode2 = 3;
            } else {
                mActionMode2 = 2;
            }

            field_0xa91 = 0;
            setBck(26, 0, 3.0f, 1.0f);
            speedF = 17.0f;
        }

        if (field_0xaa7 != 0) {
            shape_angle.y = fopAcM_searchPlayerAngleY(this);
        } else {
            cLib_chaseAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 0x2000);
        }

        current.angle.y = shape_angle.y + 0x8000;
        break;

    case 1:
        field_0xa91 = 0;

        if (player->getCutType() != daPy_py_c::CUT_TYPE_HEAD_JUMP && abs(mPlayerAngleY) < 0x3000) {
            field_0xa91 = 1;
        }

        cLib_chaseF(&speedF, 0.0f, 1.0f);

        if (!mpModelMorf2->isStop()) {
            break;
        }

        if (player->getCutType() == daPy_py_c::CUT_TYPE_HEAD_JUMP) {
            break;
        }

        setActionMode(9, 0);
        break;

    case 2:
    case 3:
        cLib_chaseF(&speedF, 0.0f, 1.0f);
        if (abs(mPlayerAngleY) < 0x3000) {
            field_0xa91 = 1;
        } else {
            field_0xa91 = 0;
        }

        if (mpModelMorf2->checkFrame(4.0f)) {
            mSound.startCreatureVoice(Z2SE_EN_TN_V_PULL_OUT, -1);
        }

        if (mpModelMorf2->checkFrame(37.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        }

        if (mActionMode2 == 3) {
            if (!mpModelMorf2->checkFrame(15.0f)) {
                break;
            }

            field_0xa91 = 1;
            if (checkAttackAble() && mPlayerDistance < 200.0f) {
                setActionMode(11, 0);
                break;
            }

            setActionMode(10, 11);
            break;
        }

        if (!mpModelMorf2->isStop()) {
            break;
        }

        setActionMode(9, 0);
        break;
    }
}

/* 8062A3D0-8062A71C 00B8D0 034C+00 1/1 0/0 0/0 .text            executeDamageL__8daB_TN_cFv */
void daB_TN_c::executeDamageL() {
    s16 mPlayerAngleY = fopAcM_searchPlayerAngleY(this);
    daPy_py_c* player = daPy_getPlayerActorClass();

    field_0xa91 = 0;

    if (field_0xaa5 == 0) {
        if (daPy_py_c::checkNowWolf()) {
            field_0xa91 = 1;
        }

        if (field_0xa9f != 0 && player->getCutType() != daPy_py_c::CUT_TYPE_TURN_RIGHT &&
            player->getCutType() != daPy_py_c::CUT_TYPE_TURN_LEFT)
        {
            field_0xa91 = 1;
        }

        if (field_0xa80 == 0) {
            field_0xa91 = 1;
            field_0xaa7 = 30;
        }
    } else {
        field_0xa91 = 0;

        if (field_0xa80 == 0) {
            field_0xa91 = 1;
            field_0xaa7 = 30;
        }

        if (field_0xaa7 != 0 || player->checkNowWolf()) {
            field_0xa91 = 1;
        }
    }

    switch (mActionMode2) {
    case 0:
    case 1:
        setSwordAtBit(0);
        setSwordAtBit(0);
        setSwordAtBreak(1);
        mSphC.OffAtSetBit();

        if (mActionMode2 == 0) {
            setBck(23, 0, 3.0f, 1.0f);
        } else {
            setBck(24, 0, 3.0f, 1.0f);
        }

        mSound.startCreatureVoice(Z2SE_EN_TN_V_DMG, -1);
        speedF = 0.0f;
        mActionMode2 += 2;

        cLib_chaseAngleS(&shape_angle.y, mPlayerAngleY, 0x1800);

        if (field_0xaa5 == 1 && field_0xa9f != 0) {
            field_0xa91 = 1;
            field_0xaa7 = 40;
        }
        break;

    case 2:
    case 3:
        if (mpModelMorf2->checkFrame(3.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        }

        if (mActionMode2 == 2) {
            if (mpModelMorf2->checkFrame(32.0f)) {
                mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
            }
        } else if (mpModelMorf2->checkFrame(35.0f)) {
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
        }

        if (mpModelMorf2->isStop()) {
            setActionMode(9, 0);
            field_0xa91 = 1;
        }
    }
}

/* 8062A71C-8062A950 00BC1C 0234+00 1/1 0/0 0/0 .text            executeYoroke__8daB_TN_cFv */
void daB_TN_c::executeYoroke() {
    daPy_py_c* player = daPy_getPlayerActorClass();

    switch (mActionMode2) {
    case 0:
    case 1:
        if (mActionMode2 == 0) {
            setBck(27, 0, 3.0f, 1.0f);
        } else {
            setBck(27, 0, 3.0f, 1.0f);
        }

        mActionMode2 = 10;
        setSwordAtBit(0);
        setSwordAtBreak(1);
        mSphC.OffAtSetBit();
        field_0xa91 = 0;
        speedF = 0.0f;
        field_0xaab = 0;

        if (player->getCutType() == daPy_py_c::CUT_TYPE_JUMP) {
            field_0xaab = 1;
        }
        // fallthrough
    case 10:
        if (field_0xaab == 1) {
            if (!player->checkCutJumpMode()) {
                field_0xaab = 2;
            }
        } else if (field_0xaab == 2 && player->checkCutJumpMode() &&
                   !player->checkCutJumpCancelTurn() && fopAcM_searchPlayerDistance(this) < 350.0f)
        {
            setActionMode(9, 0);
            if (player->speedF < 28.0f) {
                initChaseL(6);
                break;
            }

            if ((s16)(fopAcM_searchPlayerAngleY(this) - shape_angle.y) < 0) {
                initChaseL(14);
            } else {
                initChaseL(11);
            }

            field_0xa84 = 10;
            break;
        }

        if (mpModelMorf2->isStop()) {
            setActionMode(9, 0);
            field_0xa91 = 1;
        }
    }
}

/* 8062A950-8062B344 00BE50 09F4+00 1/1 0/0 0/0 .text            executeEnding__8daB_TN_cFv */
void daB_TN_c::executeEnding() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    cXyz sp1c, sp28;

    switch (mActionMode2) {
    case 0:
        if (!eventInfo.checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(this, 2, 0xffff, 0);
            eventInfo.onCondition(2);
            return;
        }

        Z2GetAudioMgr()->subBgmStop();

        if (field_0xaa4 != 0xff) {
            dComIfGs_onSwitch(field_0xaa4, fopAcM_GetRoomNo(this));
        }

        camera->mCamera.Stop();
        camera->mCamera.SetTrimSize(3);

        setBck(25, 0, 3.0f, 1.0f);
        mSound.startCreatureVoice(Z2SE_EN_TN_V_DMG_2, -1);
        mActionMode2 = 100;
        speedF = 0.0f;
        field_0xa93 = 0;

        for (int i = 0; i < 16; i++) {
            if (i != 15) {
                field_0x9fc[i] = 7;
            }
        }

        mCamFovY = 55.0f;
        field_0x724 = 450.0f;
        field_0x720 = 0x1000;
        mCamCenter.set(-5.0f, -217.0f, -61.0f);
        mCamEye.set(field_0x724 * cM_ssin(field_0x720), -350.0f,
                    field_0x724 * cM_scos(field_0x720));
        player->changeOriginalDemo();
        sp1c.set(-100.0f, -400.0f, 550.0f);
        player->setPlayerPosAndAngle(&sp1c, 0x7000, 0);
        player->changeDemoMode(4, 1, 0, 0);
        dComIfGs_onStageMiddleBoss();
        return;

    case 1:
    case 2:
    case 100:
        if (mActionMode2 == 100) {
            current.angle.y = 0;
            shape_angle.y = 0;
            current.pos.set(0.0f, -400.0f, 0.0f);
            mActionMode2 = 1;
        } else {
            mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(2));
            mDoMtx_stack_c::multVecZero(&mCamCenter);
        }

        mCamEye.set(field_0x724 * cM_ssin(field_0x720), -350.0f,
                    field_0x724 * cM_scos(field_0x720));
        cLib_addCalcAngleS2(&field_0x720, (s16)0xfffff000, 8, 24);

        if (mActionMode2 == 1) {
            if (mpModelMorf2->checkFrame(212.0f)) {
                field_0x9fc[15] = 2;
            }

            if (mpModelMorf2->checkFrame(6.0f)) {
                mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
            }

            if (mpModelMorf2->checkFrame(29.0f)) {
                mSound.startCreatureVoice(Z2SE_EN_TN_V_ZEIZEI, -1);
            }

            if (mpModelMorf2->checkFrame(94.0f)) {
                mSound.startCreatureVoice(Z2SE_EN_TN_V_KURUSI, -1);
            }

            if (mpModelMorf2->checkFrame(103.0f)) {
                mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
            }

            if (mpModelMorf2->checkFrame(121.0f)) {
                mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
            }

            if (mpModelMorf2->checkFrame(147.0f)) {
                mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
            }

            if (mpModelMorf2->checkFrame(168.0f)) {
                mSound.startCreatureVoice(Z2SE_EN_TN_V_DEAD, -1);
            }

            if (mpModelMorf2->checkFrame(289.0f)) {
                dComIfGp_getVibration().StartShock(2, 31, cXyz(0.0f, 1.0f, 0.0f));
                mSound.startCreatureSound(Z2SE_EN_TN_HIZA, 0, -1);
            }

            if (mpModelMorf2->checkFrame(312.0f)) {
                dComIfGp_getVibration().StartShock(4, 31, cXyz(0.0f, 1.0f, 0.0f));
                mSound.startCreatureSound(Z2SE_CM_BODYFALL_M, 0, -1);
            }

            if (mpModelMorf2->isStop()) {
                mActionMode2 = 2;
                field_0xa6c = 60;
            }
        } else if (field_0xa6c == 0) {
            mActionMode2 = 3;
            field_0xa6c = 60;
        }
        break;

    case 3:
        if (field_0xa6c < 36) {
            cLib_chaseF(&field_0x728, -50.0f, 0.3f);
        }

        mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(2));
        mDoMtx_stack_c::multVecZero(&sp28);
        sp28.x += 100.0f;
        cLib_addCalcPos2(&mCamCenter, sp28, 0.1f, 2.0f);
        sp28.set(-350.0f, -250.0f, 700.0f);
        cLib_addCalcPos2(&mCamEye, sp28, 0.1f, 5.0f);

        if (field_0xa6c == 0) {
            if (!daPy_py_c::checkNowWolf()) {
                player->changeDemoMode(30, 0, 0, 0);
            } else {
                player->changeDemoMode(1, 0, 0, 0);
            }

            field_0xa6c = 54;
            mActionMode2 = 4;
        }
        break;

    case 4:
        cLib_chaseF(&field_0x728, -50.0f, 0.3f);
        mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(2));
        mDoMtx_stack_c::multVecZero(&sp28);
        sp28.x += 100.0f;
        cLib_addCalcPos2(&mCamCenter, sp28, 0.1f, 2.0f);
        sp28.set(-350.0f, -250.0f, 700.0f);
        cLib_addCalcPos2(&mCamEye, sp28, 0.1f, 5.0f);

        if (field_0xa6c == 0) {
            mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(2));
            mDoMtx_stack_c::multVecZero(&sp28);
            fopAcM_createDisappear(this, &sp28, 10, 0, 0xff);
            field_0xa9e = 1;
            mActionMode2 = 5;
            field_0xa6c = 65;
        }
        break;

    case 5:
        mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(2));
        mDoMtx_stack_c::multVecZero(&sp28);
        sp28.x += 100.0f;
        cLib_addCalcPos2(&mCamCenter, sp28, 0.1f, 2.0f);
        sp28.set(-350.0f, -250.0f, 700.0f);
        cLib_addCalcPos2(&mCamEye, sp28, 0.1f, 5.0f);

        if (field_0xa6c == 0) {
            camera->mCamera.Reset(mCamCenter, mCamEye);
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);
            dComIfGp_event_reset();
            fopAcM_delete(this);
        }
    }

    camera->mCamera.Set(mCamCenter, mCamEye, mCamFovY, 0);
}

/* 8062B344-8062B6A8 00C844 0364+00 1/1 0/0 0/0 .text            executeZakoEnding__8daB_TN_cFv */
void daB_TN_c::executeZakoEnding() {
    cXyz sp20;

    switch (mActionMode2) {
    case 0:
        attention_info.flags = 0;
        setBck(4, 0, 3.0f, 1.0f);
        mSound.startCreatureVoice(Z2SE_EN_TN_V_DEAD2, -1);
        mActionMode2 = 1;
        speedF = 0.0f;
        field_0xa93 = 0;

        if (field_0xaad != 0) {
            Z2GetAudioMgr()->subBgmStop();
        }
        // fallthrough
    case 1:
        if (mpModelMorf2->checkFrame(3.0f)) {
            field_0x9fc[15] = 2;
            mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
        }

        if (mpModelMorf2->checkFrame(33.0f)) {
            dComIfGp_getVibration().StartShock(2, 31, cXyz(0.0f, 1.0f, 0.0f));
            mSound.startCreatureSound(Z2SE_EN_TN_HIZA, 0, -1);
        }

        if (mpModelMorf2->checkFrame(68.0f)) {
            dComIfGp_getVibration().StartShock(4, 31, cXyz(0.0f, 1.0f, 0.0f));
            mSound.startCreatureSound(Z2SE_CM_BODYFALL_M, 0, -1);
        }

        cLib_chaseF(&field_0x728, -50.0f, 0.3f);

        if (mpModelMorf2->isStop()) {
            mActionMode2 = 2;
            field_0xa6c = 10;
        }
        break;

    case 2:
        cLib_chaseF(&field_0x728, -50.0f, 0.3f);

        if (field_0xa6c == 0) {
            mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(2));
            mDoMtx_stack_c::multVecZero(&sp20);
            fopAcM_createDisappear(this, &sp20, 10, 0, 29);

            if (field_0xaad != 0) {
                field_0xa6c = 60;
                field_0xaac = 1;
                mActionMode2 = 3;
            } else {
                if (field_0xaa4 != 0xff) {
                    dComIfGs_onSwitch(field_0xaa4, fopAcM_GetRoomNo(this));
                }

                fopAcM_delete(this);
            }
        }
        break;

    case 3:
        if (field_0xa6c == 0) {
            if (field_0xaa4 != 0xff) {
                dComIfGs_onSwitch(field_0xaa4, fopAcM_GetRoomNo(this));
            }

            fopAcM_delete(this);
        }
    }
}

/* 8062B6A8-8062BA5C 00CBA8 03B4+00 2/1 0/0 0/0 .text            action__8daB_TN_cFv */
void daB_TN_c::action() {
    daPy_py_c* player = daPy_getPlayerActorClass();

    if (m_attack_timer != 0) {
        m_attack_timer--;
    }

    if (field_0xaa5 == 0 || !player->checkGuardBreakMode()) {
        m_attack_tn = 0;
    }

    if (player->getCutType() == daPy_py_c::CUT_TYPE_JUMP && player->checkCutJumpCancelTurn()) {
        field_0xaaa = 30;
    }

    damage_check();
    field_0x700 = l_HIO.field_0x24;
    field_0xa94 = 0;
    field_0xaa1 = 0;
    field_0xaa0 = 0;
    attention_info.flags &= 0xffdfffff;
    int iVar1 = 1;

    switch (mActionMode1) {
    case 0:
        executeRoomDemo();
        iVar1 = 0;
        break;

    case 1:
        executeOpening();
        iVar1 = 0;
        break;

    case 2:
        executeWaitH();
        if (field_0xaa5 == 1) {
            iVar1 = 0;
        }
        break;

    case 3:
        executeChaseH();
        break;

    case 4:
        executeAttackH();
        break;

    case 5:
        executeAttackShieldH();
        break;

    case 6:
        executeGuardH();
        break;

    case 7:
        executeDamageH();
        break;

    case 8:
        if (field_0xaa5 == 0) {
            executeChangeDemo();
        } else {
            executeZakoChangeDemo();
        }
        break;

    case 9:
        executeChaseL();
        break;

    case 10:
        executeAttackL();
        break;

    case 11:
        executeAttackShieldL();
        break;

    case 12:
        executeGuardL();
        break;

    case 13:
        executeDamageL();
        break;

    case 15:
        executeYoroke();
        break;

    case 14:
        if (field_0xaa5 == 0) {
            executeEnding();
        } else {
            executeZakoEnding();
        }
        break;
    }

    if (field_0xaa5 == 0) {
        if (iVar1) {
            player->onBossRoomWait();
        }

        switch (field_0xaae) {
        case 0:
            mBlend = 1.0f;
            dKy_custom_colset(0, 0, mBlend);
            break;

        case 1:
            cLib_chaseF(&mBlend, 1.0f, 0.003f);
            dKy_custom_colset(0, 1, mBlend);
            break;

        case 2:
            cLib_chaseF(&mBlend, 1.0f, 0.01f);
            dKy_custom_colset(1, 2, mBlend);
        }
    } else {
        mSound.setLinkSearch(iVar1);
    }

    calcNeckAngle();
    calcWaistAngle();
    setBodyShield();
    calcPartMove();
    fopAcM_posMoveF(this, mStts1.GetCCMoveP());
    mAcch.CrrPos(dComIfG_Bgsp());

    cXyz sp38(eyePos);
    sp38.y += 300.0f;
    setHeadLockPos(&sp38);

    int iVar2 = 13 - field_0xa78;
    if (iVar2 < 0) {
        iVar2 = 0;
    }

    if (iVar2 > 13) {
        iVar2 = 13;
    }

    mpModelMorf2->play(iVar2 + 10, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    mpModelMorf1->play(iVar2 + 10, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
}

/* 8062BA5C-8062BDCC 00CF5C 0370+00 1/1 0/0 0/0 .text            mtx_set__8daB_TN_cFv */
void daB_TN_c::mtx_set() {
    J3DModel* model2;

    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::scaleM(l_HIO.mScale, l_HIO.mScale, l_HIO.mScale);
    J3DModel* model1 = mpModelMorf2->getModel();
    model1->setBaseTRMtx(mDoMtx_stack_c::get());
    mpModelMorf2->modelCalc();

    for (int i = 0; i < 16; i++) {
        if (i == 15) {
            model2 = mpModelMorf1->getModel();
        } else {
            model2 = mModels[i];
        }

        switch (field_0x9fc[i]) {
        case 0:
            mDoMtx_stack_c::copy(model1->getAnmMtx(tn_part_joint[i]));

            if (field_0xa60 != 0 && i <= 11 && i != 5 && i != 4) {
                int iVar2 = (s16)(field_0xa60 * 96);
                field_0xa64 += 1280;
                mDoMtx_stack_c::ZXYrotM(iVar2 * cM_ssin(field_0xa64 + (i << 13)),
                                        iVar2 * cM_ssin(field_0xa64 + (i * 0x6000)),
                                        iVar2 * cM_ssin(field_0xa64 - (i << 13)));
            }

            model2->setBaseTRMtx(mDoMtx_stack_c::get());
            break;

        case 1:
            if (i == 15) {
                mDoMtx_stack_c::copy(model1->getAnmMtx(15));
                mDoMtx_stack_c::transM(12.65f, 13.47f, 20.07f);
                mDoMtx_stack_c::ZXYrotM(cM_deg2s(-168.0f), cM_deg2s(-42.715f), cM_deg2s(77.897));
                model2->setBaseTRMtx(mDoMtx_stack_c::get());
            } else {
                model2->setBaseTRMtx(model1->getAnmMtx(15));
            }
            break;

        case 2:
        case 3:
        case 4:
        case 5:
            if (field_0xaa5 == 1 && i == 5) {
                mDoMtx_stack_c::copy(mModels[4]->getBaseTRMtx());
            } else {
                mDoMtx_stack_c::transS(field_0x75c[i]);

                if (i == 4) {
                    mDoMtx_stack_c::YrotM(field_0x99c[i].y);
                    mDoMtx_stack_c::ZrotM(field_0x99c[i].z);
                    mDoMtx_stack_c::XrotM(field_0x99c[i].x);
                } else {
                    mDoMtx_stack_c::ZXYrotM(field_0x99c[i]);
                }

                mDoMtx_stack_c::transM(offset_part[i]);
                mDoMtx_stack_c::scaleM(l_HIO.mScale, l_HIO.mScale, l_HIO.mScale);
            }

            model2->setBaseTRMtx(mDoMtx_stack_c::get());
        }
    }

    mpModelMorf1->modelCalc();

    if (field_0xa90 != 0) {
        mpModel->setBaseTRMtx(field_0x72c);
    }
}

/* 8062BDCC-8062C5B4 00D2CC 07E8+00 1/1 0/0 0/0 .text            cc_set__8daB_TN_cFv */
void daB_TN_c::cc_set() {
    cXyz sp38;

    J3DModel* model = mpModelMorf2->getModel();
    mDoMtx_stack_c::copy(model->getAnmMtx(5));
    mDoMtx_stack_c::transM(0.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::multVecZero(&eyePos);
    attention_info.position = eyePos;

    if (mActionMode1 < 8) {
        attention_info.position.y += 80.0f;
    } else {
        attention_info.position.y += 50.0f;
    }

    if (field_0xa84 == 0) {
        for (int i = 0; i < 3; i++) {
            switch (i) {
            case 0:
                mDoMtx_stack_c::copy(model->getAnmMtx(5));

                if (mActionMode1 < 8) {
                    mDoMtx_stack_c::transM(30.0f, 0.0f, 0.0f);
                    mSphA[0].SetR(40.0f);
                    mSphB[0].SetR(40.0f);
                } else {
                    mDoMtx_stack_c::transM(15.0f, 0.0f, 0.0f);
                    mSphA[0].SetR(30.0f);
                    mSphB[0].SetR(30.0f);
                }
                break;

            case 1:
                mSphA[1].SetR(65.0f);
                mSphB[1].SetR(65.0f);
                mDoMtx_stack_c::copy(model->getAnmMtx(3));
                break;

            case 2:
                mSphA[2].SetR(55.0f);
                mSphB[2].SetR(55.0f);
                mDoMtx_stack_c::copy(model->getAnmMtx(18));
                mDoMtx_stack_c::transM(30.0f, 0.0f, 0.0f);
                break;
            }

            mDoMtx_stack_c::multVecZero(&sp38);
            mSphA[i].SetC(sp38);
            mSphB[i].SetC(sp38);
            dComIfG_Ccsp()->Set(&mSphA[i]);
            dComIfG_Ccsp()->Set(&mSphB[i]);
        }
    } else {
        for (int i = 0; i < 3; i++) {
            // Bug: This feels like a bug, but the original
            // does this for some reason. The fields should
            // be indexed by i, not 0.
            mSphA[0].ClrTgHit();
            mSphB[0].ClrTgHit();
        }
    }

    if (mActionMode1 < 8) {
        sp38 = current.pos;
        sp38.y += 30.0f;
        mSphD.SetC(sp38);
        mSphD.SetR(60.0f);
        dComIfG_Ccsp()->Set(&mSphD);
    }

    if (field_0x9fc[13] == 1) {
        mDoMtx_stack_c::copy(model->getAnmMtx(15));
        mDoMtx_stack_c::transM(10.0f, 15.0f, -20.0f);

        for (int i = 0; i < 4; i++) {
            if (field_0xaa5 == 0) {
                mDoMtx_stack_c::transM(12.0f, -6.0f, 36.0f);
            } else {
                mDoMtx_stack_c::transM(9.0f, -4.0f, 27.0f);
            }

            mDoMtx_stack_c::multVecZero(&sp38);
            mSwordSphs[i].SetC(sp38);
            if (mActionMode2 == 1) {
                mSwordSphs[i].SetR(70.0f);
            } else {
                mSwordSphs[i].SetR(60.0f);
            }

            dComIfG_Ccsp()->Set(&mSwordSphs[i]);
        }

        if (mActionMode2 == 1) {
            mCps.cM3dGCps::Set(mCpsPos, sp38, 70.0f);
        } else {
            mCps.cM3dGCps::Set(mCpsPos, sp38, 60.0f);
        }

        mCpsPos = sp38;
        dComIfG_Ccsp()->Set(&mCps);
    } else if (field_0x9fc[15] == 1) {
        mDoMtx_stack_c::copy(mpModelMorf1->getModel()->getAnmMtx(1));
        mDoMtx_stack_c::transM(-50.0f, 0.0f, 0.0f);

        for (int i = 0; i < 4; i++) {
            mDoMtx_stack_c::transM(40.0f, 0.0f, 0.0f);
            mDoMtx_stack_c::multVecZero(&sp38);
            mSwordSphs[i].SetC(sp38);
            mSwordSphs[i].SetR(45.0f);
            dComIfG_Ccsp()->Set(&mSwordSphs[i]);
        }

        mCps.cM3dGCps::Set(mCpsPos, sp38, 45.0f);
        mCpsPos = sp38;
        dComIfG_Ccsp()->Set(&mCps);
    } else if (field_0x9fc[13] == 3) {
        mDoMtx_stack_c::copy(mModels[13]->getBaseTRMtx());

        for (int i = 0; i < 4; i++) {
            mDoMtx_stack_c::transM(20.0f, 0.0f, 40.0f);
            mDoMtx_stack_c::multVecZero(&sp38);
            mSwordSphs[i].SetC(sp38);
            mSwordSphs[i].SetR(45.0f);
            dComIfG_Ccsp()->Set(&mSwordSphs[i]);
        }

        mCps.cM3dGCps::Set(mCpsPos, sp38, 45.0f);
        mCpsPos = sp38;
        dComIfG_Ccsp()->Set(&mCps);
    }

    if (field_0x9fc[12] == 0) {
        mDoMtx_stack_c::copy(model->getAnmMtx(9));
        mDoMtx_stack_c::transM(10.0f, -10.0f, 0.0f);
        mDoMtx_stack_c::multVecZero(&sp38);
        mSphC.SetC(sp38);

        if (mSphC.ChkAtSet()) {
            mSphC.SetR(70.0f);
        } else {
            if (field_0xaa0 == 0) {
                mSphC.SetR(55.0f);
            } else {
                mSphC.SetR(30.0f);
            }
        }

        dComIfG_Ccsp()->Set(&mSphC);
    } else if (mSphC.ChkAtSet() && mActionMode1 > 8) {
        mDoMtx_stack_c::copy(model->getAnmMtx(24));
        mDoMtx_stack_c::multVecZero(&sp38);
        mSphC.SetC(sp38);
        mSphC.SetR(70.0f);
        dComIfG_Ccsp()->Set(&mSphC);
    } else {
        mSphC.ClrTgHit();
    }

    for (int i = 0; i < 13; i++) {
        if (field_0x9fc[i] == 5) {
            mDoMtx_stack_c::transS(field_0x75c[i]);
            mDoMtx_stack_c::multVecZero(&sp38);
            mSphArr[i].SetC(sp38);

            if (i == 12) {
                mSphArr[i].SetR(50.0f);
            } else {
                mSphArr[i].SetR(30.0f);
            }

            dComIfG_Ccsp()->Set(&mSphArr[i]);
        }
    }
}

/* 8062C5B4-8062C7A0 00DAB4 01EC+00 1/1 0/0 0/0 .text            execute__8daB_TN_cFv */
int daB_TN_c::execute() {
    if (field_0xa6c != 0) {
        field_0xa6c--;
    }

    if (field_0xa68 != 0) {
        field_0xa68--;
    }

    if (field_0xa70 != 0) {
        field_0xa70--;
    }

    if (field_0xa7c != 0) {
        field_0xa7c--;
    }

    if (field_0xa80 != 0) {
        field_0xa80--;
    }

    if (field_0xa74 != 0) {
        field_0xa74--;
    }

    if (field_0xa84 != 0) {
        field_0xa84--;
    }

    if (field_0xa88 != 0) {
        field_0xa88--;
        if (field_0xa88 == 0) {
            dComIfGp_getVibration().StopQuake(31);
        }
    }

    if (field_0xa60 != 0) {
        field_0xa60--;
    }

    if (field_0xaa7 != 0) {
        field_0xaa7--;
    }

    if (field_0xa90 != 0) {
        field_0xa90--;
    }

    if (field_0xaa9 != 0) {
        field_0xaa9--;
    }

    if (field_0xaaa != 0) {
        field_0xaaa--;
    }

    action();
    mtx_set();

    if (field_0xaac != 0) {
        return 1;
    }

    cc_set();
    mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(18));
    cXyz sp1c, sp28;
    mDoMtx_stack_c::multVecZero(&sp1c);
    sp28.set(1.5f, 2.2f, 1.5f);
    setMidnaBindEffect(this, &mSound, &sp1c, &sp28);

    return 1;
}

/* 8062C7A0-8062C7C0 00DCA0 0020+00 2/1 0/0 0/0 .text            daB_TN_Execute__FP8daB_TN_c */
static void daB_TN_Execute(daB_TN_c* i_this) {
    i_this->execute();
}

/* 8062C7C0-8062C7C8 00DCC0 0008+00 1/0 0/0 0/0 .text            daB_TN_IsDelete__FP8daB_TN_c */
static int daB_TN_IsDelete(daB_TN_c* i_this) {
    return 1;
}

/* 8062C7C8-8062C848 00DCC8 0080+00 1/1 0/0 0/0 .text            _delete__8daB_TN_cFv */
int daB_TN_c::_delete() {
    dComIfG_resDelete(&mPhase1, "B_tn");
    dComIfG_resDelete(&mPhase2, mResName);
    if (mHioInit != 0) {
        s_hioinit = 0;
    }

    if (heap) {
        mSound.deleteObject();
    }

    return 1;
}

/* 8062C848-8062C868 00DD48 0020+00 1/0 0/0 0/0 .text            daB_TN_Delete__FP8daB_TN_c */
static void daB_TN_Delete(daB_TN_c* i_this) {
    i_this->_delete();
}

/* 8062C868-8062CD10 00DD68 04A8+00 1/1 0/0 0/0 .text            CreateHeap__8daB_TN_cFv */
int daB_TN_c::CreateHeap() {
    static int tn2_brk_index[3] = {25, 26, 27};

    J3DModelData* modelData;

    if (field_0xaa5 == 0) {
        modelData = (J3DModelData*)dComIfG_getObjectRes("B_tnp", 3);
    } else {
        modelData = (J3DModelData*)dComIfG_getObjectRes("B_tnp2", 4);
    }

    mpModelMorf2 = new mDoExt_McaMorfSO(modelData, NULL, NULL,
                                        (J3DAnmTransform*)dComIfG_getObjectRes("B_tn", 15), 0, 1.0f,
                                        0, -1, &mSound, 0x80000, 0x11000084);
    if (mpModelMorf2 == NULL || mpModelMorf2->getModel() == NULL) {
        return 0;
    }

    if (field_0xaa5 == 1) {
        mpBrkAnm = new mDoExt_brkAnm();
        if (mpBrkAnm == NULL) {
            return 0;
        }

        if (mpBrkAnm->init(modelData, (J3DAnmTevRegKey*)dComIfG_getObjectRes(mResName, 24), 1, 2,
                           0.0f, 0, -1) == 0)
        {
            return 0;
        }
    }

    J3DModel* model = mpModelMorf2->getModel();
    model->setUserArea((u32)this);
    model->getModelData()->getJointNodePointer(5)->setCallBack(JointCallBack);
    model->getModelData()->getJointNodePointer(1)->setCallBack(JointCallBack);

    for (int i = 0; i < 15; i++) {
        if (i == 13 && field_0xaa5 == 1 && field_0xaa6 == 1) {
            modelData = (J3DModelData*)dComIfG_getObjectRes(mResName, 0x13);
        } else {
            modelData = (J3DModelData*)dComIfG_getObjectRes(
                mResName, tn_part_model_id[i + field_0xaa5 * 0x10]);
        }

        model = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
        mModels[i] = model;

        if (mModels[i] == NULL) {
            return 0;
        }

        if (field_0xaa5 == 1) {
            s8 sVar1 = tn_model_brk_idx[i];

            if (field_0xaa3 == 3) {
                sVar1 = tn_model_brk_idx2[i];
            }

            if (sVar1 != -1) {
                mBrkAnms[i] = new mDoExt_brkAnm();
                mDoExt_brkAnm* myanm = mBrkAnms[i];

                if (myanm == NULL) {
                    return 0;
                }

                if (mBrkAnms[i]->init(
                        modelData,
                        (J3DAnmTevRegKey*)dComIfG_getObjectRes(mResName, tn2_brk_index[sVar1]), 1,
                        2, 0.0f, 0, -1) == 0)
                {
                    return 0;
                }
            }
        }
    }

    modelData =
        (J3DModelData*)dComIfG_getObjectRes(mResName, tn_part_model_id[field_0xaa5 * 0x10 + 0xf]);

    mpModelMorf1 = new mDoExt_McaMorfSO(modelData, NULL, NULL,
                                        (J3DAnmTransform*)dComIfG_getObjectRes("B_tn", 39), 0, 1.0f,
                                        0, -1, &mSound, 0x80000, 0x11000084);
    if (mpModelMorf1 == NULL || mpModelMorf1->getModel() == NULL) {
        return 0;
    }

    modelData = (J3DModelData*)dComIfG_getObjectRes("B_tn", 48);
    model = mDoExt_J3DModel__create(modelData, 0x80000, 0x31000084);

    mpModel = model;
    if (mpModel == NULL) {
        return 0;
    }
    return 1;
}

/* 8062CD58-8062CD78 00E258 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* actor) {
    ((daB_TN_c*)actor)->CreateHeap();
}

/* 8062CD78-8062D2F0 00E278 0578+00 1/1 0/0 0/0 .text            create__8daB_TN_cFv */
int daB_TN_c::create() {
    fopAcM_SetupActor(this, daB_TN_c);

    field_0xaa4 = fopAcM_GetParam(this);
    field_0xaa5 = fopAcM_GetParam(this) >> 8;

    if (field_0xaa5 != 1) {
        field_0xaa5 = 0;
    }

    if (field_0xaa5 == 0) {
        mResName = "B_tnp";
        if (dComIfGs_isStageMiddleBoss()) {
            return cPhs_ERROR_e;
        }
    } else {
        mResName = "B_tnp2";
        if (dComIfGs_isSwitch(field_0xaa4, fopAcM_GetRoomNo(this))) {
            return cPhs_ERROR_e;
        }
    }

    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&mPhase1, "B_tn");
    if (step == cPhs_COMPLEATE_e) {
        step = (cPhs__Step)dComIfG_resLoad(&mPhase2, mResName);

        if (step == cPhs_COMPLEATE_e) {
            field_0xaa3 = fopAcM_GetParam(this) >> 16;
            if (field_0xaa3 > 4) {
                field_0xaa3 = 4;
            }

            field_0xaa6 = fopAcM_GetParam(this) >> 24;
            if (field_0xaa6 != 1) {
                field_0xaa6 = 0;
            }

            if (field_0xaa5 == 1) {
                if (!fopAcM_entrySolidHeap(this, useHeapInit, 0xb940)) {
                    return cPhs_ERROR_e;
                }
            } else if (!fopAcM_entrySolidHeap(this, useHeapInit, 0xaa20)) {
                return cPhs_ERROR_e;
            }

            if (s_hioinit == 0) {
                s_hioinit = 1;
                mHioInit = 1;
                l_HIO.field_0x4 = -1;
            }

            attention_info.flags = 4;
            fopAcM_SetMtx(this, mpModelMorf2->getModel()->getBaseTRMtx());
            fopAcM_SetMin(this, -200.0f, -200.0f, -200.0f);
            fopAcM_SetMax(this, 200.0f, 200.0f, 200.0f);

            mAcch.Set(&current.pos, &old.pos, this, 1, &mAcchCir, &speed, NULL, NULL);
            mAcchCir.SetWall(60.0f, 300.0f);
            health = 0x50;
            field_0x560 = 0x50;

            mStts1.Init(0xfa, 0, this);
            mStts2.Init(0xfa, 0, this);

            for (int i = 0; i < 3; i++) {
                mSphA[i].Set(*(dCcD_SrcSph*)&cc_tt_src);
                mSphA[i].SetStts(&mStts1);

                mSphB[i].Set(*(dCcD_SrcSph*)&cc_tt_src2);
                mSphB[i].SetStts(&mStts1);
            }

            mSphA[2].OnCoSameActorHit();
            mSphD.Set(*(dCcD_SrcSph*)&cc_bomb_src);
            mSphD.SetStts(&mStts1);

            for (int i = 0; i < 4; i++) {
                mSwordSphs[i].Set(*(dCcD_SrcSph*)&cc_tt_at_src);
                mSwordSphs[i].SetStts(&mStts2);
            }

            mCps.Set(*(dCcD_SrcCps*)&cc_tt_at_cps_src);
            mCps.SetStts(&mStts2);

            mSphC.Set(*(dCcD_SrcSph*)&cc_tt_tate_src);
            mSphC.SetStts(&mStts1);

            for (int k = 0; k < 16; k++) {
                mAcchArr[k].Set(&field_0x75c[k], &field_0x81c[k], this, 1, &mAcchCirArr[k],
                                &field_0x8dc[k], NULL, NULL);
                mAcchCirArr[k].SetWall(10.0f, 50.0f);
                mAcchArr[k].SetGroundUpY(ground_y_part[k]);
                mSttsArr[k].Init(100, 0, this);
                mSphArr[k].Set(*(dCcD_SrcSph*)&cc_part_src);
                mSphArr[k].SetStts(&mSttsArr[k]);

                mSphArr[k].OnCoSameActorHit();
            }

            mSound.init(&this->current.pos, &this->eyePos, 0x3, 0x1);
            mSound.setEnemyName("B_tn");
            mAtInfo.mpSound = &mSound;
            mAtInfo.mPowerType = 1;
            gravity = -5.0f;
            field_0x9fc[0xd] = 1;

            setSwordAtBreak(1);

            if (field_0xaa5 == 0) {
                setActionMode(0, 0);
            } else {
                mpBrkAnm->setFrame(field_0xaa3);

                for (int k = 0; k < 15; k++) {
                    if (mBrkAnms[k] != NULL) {
                        mBrkAnms[k]->setFrame(field_0xaa3);
                    }
                }

                fopAcM_OffStatus(this, 0x4000);
                setActionMode(2, 0);
            }

            if (!strcmp("D_MN09", dComIfGp_getStartStageName()) &&
                dComIfGp_roomControl_getStayNo() == 0x2)
            {
                field_0xaad = 1;
            }

            daB_TN_Execute(this);
        }
    }

    return step;
}

/* 8062D924-8062D944 00EE24 0020+00 1/0 0/0 0/0 .text            daB_TN_Create__FP8daB_TN_c */
static int daB_TN_Create(daB_TN_c* i_this) {
    return i_this->create();
}

/* 8062EF10-8062EF30 -00001 0020+00 1/0 0/0 0/0 .data            l_daB_TN_Method */
static actor_method_class l_daB_TN_Method = {
    (process_method_func)daB_TN_Create,  (process_method_func)daB_TN_Delete,
    (process_method_func)daB_TN_Execute, (process_method_func)daB_TN_IsDelete,
    (process_method_func)daB_TN_Draw,
};

/* 8062EF30-8062EF60 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_B_TN */
extern actor_process_profile_definition g_profile_B_TN = {
    fpcLy_CURRENT_e,         // mLayerID
    7,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_B_TN,               // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daB_TN_c),        // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    225,                     // mPriority
    &l_daB_TN_Method,        // sub_method
    0x00044000,              // mStatus
    fopAc_ENEMY_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};

AUDIO_INSTANCES;
