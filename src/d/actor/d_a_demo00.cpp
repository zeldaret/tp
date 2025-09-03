/**
 * @file d_a_demo00.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_demo00.h"
#include "JSystem/JKernel/JKRSolidHeap.h"
#include "SSystem/SComponent/c_counter.h"
#include "d/d_com_inf_game.h"
#include "d/d_item.h"
#include "d/d_kankyo_rain.h"
#include "d/d_camera.h"
#include "m_Do/m_Do_graphic.h"
#include "m_Do/m_Do_ext.h"
#include "d/d_demo.h"
#include "Z2AudioLib/Z2Instances.h"
#include "m_Do/m_Do_lib.h"
#include "d/actor/d_a_movie_player.h"
#ifdef DEBUG
#include "d/d_debug_viewer.h"
#endif

/* 804A430C-804A4338 0000EC 002C+00 3/3 0/0 0/0 .text            reset__16daDemo00_resID_cFv */
void daDemo00_resID_c::reset() {
    mShapeID = -1;
    field_0x4 = -1;
    field_0x8 = -1;
    field_0xc = -1;
    field_0x10 = -1;
    field_0x14 = -1;
    field_0x18 = -1;
    field_0x1c = -1;
    field_0x20 = -1;
}

/* 804A4338-804A4388 000118 0050+00 1/1 0/0 0/0 .text            reset__16daDemo00_model_cFv */
void daDemo00_model_c::reset() {
    // NONMATCHING
    field_0x0.reset();
    mID.mShapeID = 0;
    mID.field_0xc = 0;
    mID.field_0x10 = 0;
    mID.field_0x14 = 0;
    mID.field_0x8 = 0;
    mID.field_0x18 = 0;
    mID.field_0x1c = 0;
    mID.field_0x20 = 0;
}

/* 804A4388-804A4420 000168 0098+00 1/1 0/0 0/0 .text            __dt__10daDemo00_cFv */
daDemo00_c::~daDemo00_c() {
    if (heap != NULL) {
        if (mpModelMorf != NULL) {
            mpModelMorf->stopZelAnime();
        }
    }
}

/* 804A4420-804A449C 000200 007C+00 2/2 0/0 0/0 .text            __dt__12demo_s1_ke_sFv */
demo_s1_ke_s::~demo_s1_ke_s() {}

/* 804A8998-804A8998 000138 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
static char const* const stringBase_804A8998 = "V_24_tri_joint";

/* 804A4520-804A45A0 000300 0080+00 1/1 0/0 0/0 .text            get_foward_angle__FP4cXyzP4cXyzPsPs */
static void get_foward_angle(cXyz* param_1, cXyz* param_2, s16* param_3, s16* param_4) {
    // NONMATCHING
    cXyz sp38;

    dKyr_get_vectle_calc(param_1, param_2, &sp38);
    *param_3 = cM_atan2s(JMAFastSqrt(sp38.x * sp38.x + sp38.z * sp38.z), sp38.y);
    *param_4 = sp38.atan2sX_Z();
}

/* 804A45A0-804A4948 000380 03A8+00 2/2 0/0 0/0 .text            setBaseMtx__10daDemo00_cFv */
void daDemo00_c::setBaseMtx() {
    // NONMATCHING
    s16 sVar1, sVar2;
    cXyz sp38;
    BOOL bVar1 = FALSE;
    cM3dGPla plane;

    if (tevStr.mInitTimer == 1) {
        field_0x574 = shape_angle;
    }

    sp38 = current.pos;

    if (field_0x6a2 != 0 || mground2 != 0) {
        cXyz sp44(current.pos.x, current.pos.y + 1000.0f, current.pos.z);
        mBgc->mGndChk.SetPos(&sp44);
        sp38.y = dComIfG_Bgsp().GroundCross(&mBgc->mGndChk);
    }

    if (field_0x6a4 != 0 && field_0x568.x != 10000000.0f) {
        if (current.pos != field_0x568) {
            if (current.pos.abs(field_0x568) >= 1.5f) {
                get_foward_angle(&field_0x568, &current.pos, &sVar1, &sVar2);
                shape_angle.x = field_0x574.x = sVar1;
                shape_angle.y = field_0x574.y = sVar2;
            }
        } else {
            shape_angle.x = field_0x574.x;
            shape_angle.y = field_0x574.y;
        }
    }

    field_0x568 = current.pos;

    if (mground2 != 0) {
        if (sp38.y != -1000000000.0f) {
            bVar1 = dComIfG_Bgsp().GetTriPla(mBgc->mGndChk, &plane);
        }

        if (bVar1 && cBgW_CheckBGround(plane.mNormal.y)) {
            shape_angle.x = fopAcM_getPolygonAngle(&plane, shape_angle.y);
        }
    }

    if (tevStr.mInitTimer != 0 || mground2 == 0) {
        current.angle = shape_angle;
    } else {
        cLib_addCalcAngleS2(&current.angle.x, shape_angle.x, 4, 0x2000);
        cLib_addCalcAngleS2(&current.angle.y, shape_angle.y, 4, 0x2000);
        cLib_addCalcAngleS2(&current.angle.z, shape_angle.z, 4, 0x2000);
    }

    mDoMtx_stack_c::transS(sp38.x, sp38.y, sp38.z);
    mDoMtx_stack_c::XYZrotM(current.angle.x, current.angle.y, current.angle.z);
    field_0x5d4->setBaseTRMtx(mDoMtx_stack_c::get());
    field_0x5d4->setBaseScale(scale);
}

/* 804A4948-804A4D48 000728 0400+00 1/1 0/0 0/0 .text            setShadowSize__10daDemo00_cFv */
void daDemo00_c::setShadowSize() {
    // NONMATCHING
    J3DModelData* modelData = field_0x5d4->getModelData();
    cXyz sp98(100000000.0f, 100000000.0f, 100000000.0f);
    cXyz spa4(-100000000.0f, -100000000.0f, -100000000.0f);

    for (u16 i = 0; i < modelData->getJointNum(); i++) {
        J3DJoint* jntNodeP = modelData->getJointNodePointer(i);
        if (jntNodeP->getKind() == 0) {
            cXyz spb0, spbc;
            cMtx_multVec(field_0x5d4->getAnmMtx(i), jntNodeP->getMin(), &spb0);
            cMtx_multVec(field_0x5d4->getAnmMtx(i), jntNodeP->getMin(), &spbc);

            if (spb0.x < sp98.x) {
                sp98.x = spb0.x;
            }

            if (spb0.y < sp98.y) {
                sp98.y = spb0.y;
            }

            if (spb0.z < sp98.z) {
                sp98.z = spb0.z;
            }

            if (spa4.x < spbc.x) {
                spa4.x = spbc.x;
            }

            if (spa4.y < spbc.y) {
                spa4.y = spbc.y;
            }

            if (spa4.z < spbc.z) {
                spa4.z = spbc.z;
            }
        }
    }

    mShadow->field_0x4.x = (spa4.x + sp98.x) * 0.5f;
    mShadow->field_0x4.y = (spa4.y + sp98.y) * 0.5f;
    mShadow->field_0x4.z = (spa4.z + sp98.z) * 0.5f;
    cXyz spc8(spa4 - sp98);
    mShadow->field_0x1c = spc8.abs() * 3.0f;
    mShadow->field_0x20 = spc8.absXZ() * 0.25f;
}

/* 804A4D48-804A4F54 000B28 020C+00 1/1 0/0 0/0 .text            awaCheck__FP8J3DModel */
static BOOL awaCheck(J3DModel* i_model) {
    J3DModelData* modelData = i_model->getModelData();
    J3DTexture* texture = modelData->getTexture();

    if (texture != NULL) {
        JUTNameTab* nameTab = modelData->getTextureName();
        if (nameTab != NULL) {
            for (u16 i = 0; i < texture->getNum(); i++) {
                const char* name = nameTab->getName(i);
                if (strcmp(name, "B_dummy") == 0 || strcmp(name, "cy_kankyo") == 0) {
                    J3DSkinDeform* skinDeform = new J3DSkinDeform();
                    if (skinDeform == NULL) {
                        return FALSE;
                    }

                    if (i_model->setSkinDeform(skinDeform, 1) != 0) {
                        return FALSE;
                    }

                    if (strcmp(name, "B_dummy") == 0) {
                        texture->setResTIMG(i, *mDoGph_gInf_c::getFrameBufferTimg());
                        mDoExt_modelTexturePatch(modelData);
                    }
                }
            }
        }
    }

    return TRUE;
}

/* 804A4F54-804A4F74 000D34 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__FP10fopAc_ac_c */
static int createHeapCallBack(fopAc_ac_c* a_this) {
    daDemo00_c* i_this = (daDemo00_c*)a_this;
    return i_this->createHeap();
}

/* 804A4F74-804A5750 000D54 07DC+00 1/1 0/0 0/0 .text            createHeap__10daDemo00_cFv */
int daDemo00_c::createHeap() {
    // NONMATCHING
    if (mModel.mID.mShapeID != -1) {
        J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectIDRes(dStage_roomControl_c::getDemoArcName(), (u16)mModel.mID.mShapeID);
        mDoExt_bckAnmRemove(modelData);

        if (modelData == NULL) {
            OS_REPORT("\ngetDemoArcName=[%s]", dStage_roomControl_c::getDemoArcName());
            OS_REPORT("\nmModel.mID.mShapeID=[%d]\n", mModel.mID.mShapeID);
            JUT_ASSERT(441, modelData != 0);
        }

        s32 uVar1 = 0x11000084;
        for (int i = 0; i < modelData->getShapeNum(); i++) {
            if (modelData->getShapeNodePointer(i)->getTexMtxLoadType() == 0x2000) {
                field_0x6ad = 1;
                break;
            }
        }

        if (mModel.mID.field_0xc != -1) {
            mpBtpAnm = new mDoExt_btpAnm();
            if (mpBtpAnm == NULL) {
                return 0;
            }

            J3DAnmTexPattern* i_btk = (J3DAnmTexPattern*)dComIfG_getObjectIDRes(dStage_roomControl_c::getDemoArcName(), (u16)mModel.mID.field_0xc);
            if (i_btk == NULL) {
                OS_REPORT("ESC_WARNING指定btpアニメーションが見つかりません！(%d)\n", mModel.mID.field_0xc); // ESC_WARNING: The specified BTP animation could not be found! (%d)
                return 1;
            }

            if (mpBtpAnm->init(modelData, i_btk, 1, -1, 1.0f, 0, -1) == 0) {
                return 0;
            }

            uVar1 = 0x15020084;
        }

        if (mModel.mID.field_0x10 != -1) {
            mpBtkAnm = new mDoExt_btkAnm();
            if (mpBtkAnm == NULL) {
                return 0;
            }

            J3DAnmTextureSRTKey* key = (J3DAnmTextureSRTKey*)dComIfG_getObjectIDRes(dStage_roomControl_c::getDemoArcName(), (u16)mModel.mID.field_0x10);
            if (key == NULL) {
                OS_REPORT("ESC_WARNING指定btkアニメーションが見つかりません！(%d)\n", mModel.mID.field_0x10); // ESC_WARNING: The specified btk animation could not be found! (%d)
                return 1;
            }

            if (mpBtkAnm->init(modelData, key, 1, -1, 1.0f, 0, -1) == 0) {
                return 0;
            }

            if ((mModel.mID.field_0x10 & 0x10000000U) != 0) {
                uVar1 |= 0x1200;
            } else {
                uVar1 |= 0x200;
            }
        }

        if (mModel.mID.field_0x14 != -1) {
            mpBrkAnm = new mDoExt_brkAnm();
            if (mpBrkAnm == NULL) {
                return 0;
            }

            J3DAnmTevRegKey* regKey = (J3DAnmTevRegKey*)dComIfG_getObjectIDRes(dStage_roomControl_c::getDemoArcName(), (u16)mModel.mID.field_0x14);
            if (regKey == NULL) {
                OS_REPORT("ESC_WARNING指定brkアニメーションが見つかりません！(%d)\n", mModel.mID.field_0x14); // ESC_WARNING: The specified brk animation could not be found! (%d)
                return 1;
            }

            if (mpBrkAnm->init(modelData, regKey, 1, -1, 1.0f, 0, -1) == 0) {
                return 0;
            }
        }

        if (mModel.mID.field_0x8 != -1) {
            mpBpkAnm = new mDoExt_bpkAnm();
            if (mpBpkAnm == NULL) {
                return 0;
            }

            J3DAnmColor* anm_color = (J3DAnmColor*)dComIfG_getObjectIDRes(dStage_roomControl_c::getDemoArcName(), (u16)mModel.mID.field_0x8);
            if (anm_color == NULL) {
                OS_REPORT("ESC_WARNING指定brkアニメーションが見つかりません！(%d)\n", mModel.mID.field_0x8); // ESC_WARNING: The specified brk animation could not be found! (%d)
                return 1;
            }

            if (mpBpkAnm->init(modelData, anm_color, 1, -1, 1.0f, 0, -1) == 0) {
                return 0;
            }

            uVar1 |= 1;
        }

        if (mModel.mID.field_0x4 == -1) {
            mpModelMorf = NULL;
            if (field_0x6ad == 0) {
                field_0x5d4 = mDoExt_J3DModel__create(modelData, 0x80000, uVar1);
            } else {
                field_0x5d4 = mDoExt_J3DModel__create(modelData, 0, uVar1);
            }

            if (field_0x5d4 == NULL) {
                return 0;
            }
        } else {
            J3DAnmTransform* anm = (J3DAnmTransform*)dComIfG_getObjectIDRes(dStage_roomControl_c::getDemoArcName(), (u16)mModel.mID.field_0x4);
            JUT_ASSERT(580, anm != 0);

            if (field_0x6a5 != 0) {
                uVar1 |= 0x20000000;
            }

            if (field_0x6ad == 0) {
                mpModelMorf = new mDoExt_McaMorfSO(modelData, NULL, NULL, anm, -1, 1.0f, 0, -1, &mSound, 0x80000, uVar1);
            } else {
                mpModelMorf = new mDoExt_McaMorfSO(modelData, NULL, NULL, anm, -1, 1.0f, 0, -1, &mSound, 0, uVar1);
            }

            if (mpModelMorf == NULL || mpModelMorf->getModel() == NULL) {
                return 0;
            }

            field_0x5d4 = mpModelMorf->getModel();

            if (!awaCheck(field_0x5d4)) {
                return 0;
            }
        }

        if (field_0x6b4 != 0) {
            field_0x5d8 = new mDoExt_invisibleModel();
            if (field_0x5d8 == NULL) {
                return 0;
            }

            if (field_0x5d8->create(field_0x5d4, 1) == 0) {
                return 0;
            }
        } else {
            field_0x5d8 = NULL;
        }

        mModel.mID.field_0x18 = 1;
        if (mModel.mID.field_0x18 != -1) {
            mShadow = new daDemo00_shadow_c();
            if (mShadow == NULL) {
                return 0;
            }

            field_0x5d4->calc();
            setShadowSize();
        }

        mBgc = new daDemo00_bgc_c();
        if (mBgc == NULL) {
            return 0;
        }
        mBgc->mGndChk.OffWall();

        if (mModel.mID.field_0x1c != -1) {
            mDeformData = (J3DDeformData*)dComIfG_getObjectIDRes(dStage_roomControl_c::getDemoArcName(), (u16)mModel.mID.field_0x1c);
            // Should be mModel.mDeformData
            JUT_ASSERT(687, mDeformData != 0);

            if (mModel.mID.field_0x20 != -1) {
                mpBlkAnm = new mDoExt_blkAnm();
                if (mpBlkAnm == NULL) {
                    return 0;
                }

                J3DAnmCluster* anm_cluster = (J3DAnmCluster*)dComIfG_getObjectIDRes(dStage_roomControl_c::getDemoArcName(), (u16)mModel.mID.field_0x20);
                if (anm_cluster == NULL) {
                    OS_REPORT("ESC_WARNING指定blkアニメーションが見つかりません！(%d)\n", mModel.mID.field_0x20); // ESC_WARNING: Specified blk animation not found! (%d)
                } else {
                    if (mpBlkAnm->init(mDeformData, anm_cluster, 1, -1, 1.0f, 0, -1) == 0) {
                        return 0;
                    }
                }
            }

            if (field_0x5d4->setDeformData(mDeformData, 1) != 0) {
                return 0;
            }
        }
    }

    if (field_0x6a7 >= 0 && field_0x6a7 <= 5) {
        if (field_0x6bc.init(1, 0x20, (ResTIMG*)dComIfG_getObjectRes("Always", 0x54), 1) == 0) {
            return 0;
        }

        f32* pfVar1 = field_0x6bc.getSize(0);
        for (int i = 0; i < 32; i++) {
            if (field_0x6a7 >= 2 && field_0x6a7 <= 4) {
                *pfVar1 = 5.0f;
            } else {
                *pfVar1 = 3.0f;
            }
            pfVar1++;
        }
    }

    if (field_0x6a7 == 8 && field_0x2900.init(0x16, 0x10, 1) == 0) {
        return 0;
    }

    return 1;
}

/* 804A5798-804A594C 001578 01B4+00 2/0 0/0 0/0 .text actStandby__10daDemo00_cFP13dDemo_actor_c */
int daDemo00_c::actStandby(dDemo_actor_c* actor) {
    // NONMATCHING
    if (mModel.field_0x0.mShapeID != -1) {
        mModel.mID = mModel.field_0x0;
        if (fopAcM_entrySolidHeap(this, createHeapCallBack, 0x9004c5e0)) {
            OS_REPORT("汎用くん確保ヒープサイズ %d\n", heap->getHeapSize());

            if (field_0x5d4 != NULL) {
                dDemo_setDemoData(this, 42, NULL, NULL, 0, NULL, 0, 0);
                setBaseMtx();
                fopAcM_SetMtx(this, field_0x5d4->getBaseTRMtx());
                actor->setModel(field_0x5d4);

                if (mpModelMorf != NULL) {
                    actor->setAnmFrameMax(mpModelMorf->getEndFrame());
                }
            }

            setAction(&daDemo00_c::actPerformance);
            action(actor);
        }
    } else {
        if (field_0x6aa == 1 || field_0x6ab >= 0 || field_0x6b8 != 0 || field_0x6ae != 0) {
            dDemo_setDemoData(this, 0x8E, NULL, NULL, 0, NULL, 0, 0);
        }
    }

    return 1;
}

/* 804A594C-804A604C 00172C 0700+00 1/0 0/0 0/0 .text            actPerformance__10daDemo00_cFP13dDemo_actor_c */
int daDemo00_c::actPerformance(dDemo_actor_c* actor) {
    // NONMATCHING
    f32 fVar1;
    int i_attribute;
    if (mModel.mID.mShapeID != mModel.field_0x0.mShapeID) {
        mModel.reset();
        setAction(&daDemo00_c::actLeaving);
    } else if (field_0x5d4 != NULL) {
        if (mpModelMorf != NULL && mModel.mID.field_0x4 != mModel.field_0x0.field_0x4) {
            J3DAnmTransform* anm = (J3DAnmTransform*)dComIfG_getObjectIDRes(dStage_roomControl_c::getDemoArcName(), (u16)mModel.field_0x0.field_0x4);
            if (anm == NULL) {
                OS_REPORT("ESC_WARNING指定bckアニメーションが見つかりません！(%d)\n", mModel.field_0x0.field_0x4); // ESC_WARNING: Specified bck animation not found! (%d)
                return 1;
            }

            fVar1 = 0.0f;
            if (actor->checkEnable(dDemo_actor_c::ENABLE_ANM_TRANSITION_e)) {
                fVar1 = actor->getAnmTransition();
            }
            mpModelMorf->setAnm(anm, -1, fVar1, 1.0f, 0.0f, -1.0f);
            mModel.mID.field_0x4 = mModel.field_0x0.field_0x4;
        }

        if (mModel.mID.field_0xc != mModel.field_0x0.field_0xc) {
            J3DAnmTexPattern* anmTexPattern = (J3DAnmTexPattern*)dComIfG_getObjectIDRes(dStage_roomControl_c::getDemoArcName(), (u16)mModel.field_0x0.field_0xc);
            if (anmTexPattern == NULL) {
                OS_REPORT("ESC_WARNING指定btpアニメーションが見つかりません！(%d)\n", mModel.field_0x0.field_0xc); // ESC_WARNING: The specified btp animation could not be found! (%d)
                return 1;
            }

            mpBtpAnm->init(field_0x5d4->getModelData(), anmTexPattern, 1, -1, 1.0f, 0, -1);
            mModel.mID.field_0xc = mModel.field_0x0.field_0xc;
        }

        if (mModel.mID.field_0x10 != mModel.field_0x0.field_0x10) {
            J3DAnmTextureSRTKey* key = (J3DAnmTextureSRTKey*)dComIfG_getObjectIDRes(dStage_roomControl_c::getDemoArcName(), (u16)mModel.field_0x0.field_0x10);
            if (key == NULL) {
                OS_REPORT("ESC_WARNING指定btkアニメーションが見つかりません！(%d)\n", mModel.field_0x0.field_0x10); // ESC_WARNING: The specified btk animation could not be found! (%d)
                return 1;
            }

            mpBtkAnm->init(field_0x5d4->getModelData(), key, 1, -1, 1.0f, 0, -1);
            mModel.mID.field_0x10 = mModel.field_0x0.field_0x10;
        }

        if (mModel.mID.field_0x14 != mModel.field_0x0.field_0x14) {
            J3DAnmTevRegKey* anmTev = (J3DAnmTevRegKey*)dComIfG_getObjectIDRes(dStage_roomControl_c::getDemoArcName(), (u16)mModel.field_0x0.field_0x14);
            if (anmTev == NULL) {
                OS_REPORT("ESC_WARNING指定brkアニメーションが見つかりません！(%d)\n", mModel.field_0x0.field_0x14); // ESC_WARNING: The specified brk animation could not be found! (%d)
                return 1;
            }

            if ((mModel.mID.field_0x14 & 0x10000000) != 0) {
                fVar1 = mpBrkAnm->getFrame();
            } else {
                fVar1 = 0.0f;
            }

            if ((mModel.mID.field_0x14 & 0x10000000) != 0) {
                i_attribute = 2;
            } else {
                i_attribute = -1;
            }

            mpBrkAnm->init(field_0x5d4->getModelData(), anmTev, 1, i_attribute, 1.0f, fVar1, -1);
            mModel.mID.field_0x14 = mModel.field_0x0.field_0x14;
        }

        if (mModel.mID.field_0x8 != mModel.field_0x0.field_0x8) {
            J3DAnmColor* anm_color = (J3DAnmColor*)dComIfG_getObjectIDRes(dStage_roomControl_c::getDemoArcName(), (u16)mModel.field_0x0.field_0x8);
            if (anm_color == NULL) {
                OS_REPORT("ESC_WARNING指定bpkアニメーションが見つかりません！(%d)\n", mModel.field_0x0.field_0x8); // ESC_WARNING: The specified bpk animation could not be found! (%d)
                return 1;
            }

            if ((mModel.mID.field_0x14 & 0x10000000) != 0) {
                fVar1 = mpBpkAnm->getFrame();
            } else {
                fVar1 = 0.0f;
            }

            if ((mModel.mID.field_0x14 & 0x10000000) != 0) {
                i_attribute = 2;
            } else {
                i_attribute = -1;
            }

            mpBpkAnm->init(field_0x5d4->getModelData(), anm_color, 1, i_attribute, 1.0f, fVar1, -1);
            mModel.mID.field_0x8 = mModel.field_0x0.field_0x8;
        }

        if (mModel.mID.field_0x20 != mModel.field_0x0.field_0x20) {
            // Should be mModel.mDeformData and mModel.mBlkAnm
            JUT_ASSERT(1049, mDeformData != 0 && mpBlkAnm != 0);

            J3DAnmCluster* anmCluster = (J3DAnmCluster*)dComIfG_getObjectIDRes(dStage_roomControl_c::getDemoArcName(), (u16)mModel.field_0x0.field_0x20);
            if (anmCluster == NULL) {
                OS_REPORT("ESC_WARNING指定btpアニメーションが見つかりません！(%d)\n", mModel.field_0x0.field_0x20); // ESC_WARNING: The specified btp animation could not be found! (%d)
                return 1;
            }

            mpBlkAnm->init(mDeformData, anmCluster, 1, -1, 1.0f, 0, -1);
            mModel.mID.field_0x20 = mModel.field_0x0.field_0x20;
        }

        dDemo_setDemoData(this, 0x2A, 0, 0, 0, 0, 0, 0);
        if (mBgc != NULL) {
            cXyz sp70(current.pos.x, current.pos.y + 100.0f, current.pos.z);
            mBgc->mGndChk.SetPos(&sp70);
            mBgc->field_0x54 = dComIfG_Bgsp().GroundCross(&mBgc->mGndChk);
            field_0x6a1 = 1;
        }

        setBaseMtx();

        if (actor->checkEnable(dDemo_actor_c::ENABLE_ANM_FRAME_e)) {
            fVar1 = actor->getAnmFrame();
            if (fVar1 > 1.0f) {
                f32 fVar2 = fVar1 - 1.0f;
                if (mpModelMorf != NULL) {
                    mpModelMorf->setFrameF(fVar1 - 1.0f);
                    u32 sndId;
                    if (mBgc != NULL && field_0x6a1 != 0 && fabsf(mBgc->field_0x54 - current.pos.y) < 20.0f) {
                        sndId = dComIfG_Bgsp().GetMtrlSndId(mBgc->mGndChk);
                    } else {
                        sndId = 0;
                    }

                    mpModelMorf->play(sndId, dComIfGp_getReverb(dComIfGp_roomControl_getStayNo()));
                }

                if (mpBtpAnm != NULL) {
                    mpBtpAnm->setFrame(fVar2);
                    mpBtpAnm->play();
                }

                if (mpBtkAnm != NULL) {
                    if ((mModel.mID.field_0x10 & 0x10000000) == 0) {
                        mpBtkAnm->setFrame(fVar2);
                    }
                    mpBtkAnm->play();
                }

                if (mpBrkAnm != NULL) {
                    if ((mModel.mID.field_0x14 & 0x10000000) == 0) {
                        mpBrkAnm->setFrame(fVar2);
                    }
                    mpBrkAnm->play();
                }

                if (mpBpkAnm != NULL) {
                    if ((mModel.mID.field_0x8 & 0x10000000) == 0) {
                        mpBpkAnm->setFrame(fVar2);
                    }
                    mpBpkAnm->play();
                }

                if (mpBlkAnm != NULL) {
                    if ((mModel.mID.field_0x20 & 0x10000000) == 0) {
                        mpBlkAnm->setFrame(fVar2);
                    }
                    mpBlkAnm->play();
                }
            } else {
                if (mpModelMorf != NULL) {
                    mpModelMorf->setFrameF(fVar1);
                }

                if (mpBtpAnm != NULL) {
                    mpBtpAnm->setFrame(fVar1);
                }

                if (mpBtkAnm != NULL) {
                    if ((mModel.mID.field_0x10 & 0x10000000) == 0) {
                        mpBtkAnm->setFrame(fVar1);
                    } else {
                        mpBtkAnm->play();
                    }
                }

                if (mpBrkAnm != NULL) {
                    if ((mModel.mID.field_0x14 & 0x10000000) == 0) {
                        mpBrkAnm->setFrame(fVar1);
                    } else {
                        mpBrkAnm->play();
                    }
                }

                if (mpBpkAnm != NULL) {
                    if ((mModel.mID.field_0x8 & 0x10000000) == 0) {
                        mpBpkAnm->setFrame(fVar1);
                    } else {
                        mpBpkAnm->play();
                    }
                }

                if (mpBlkAnm != NULL) {
                    if ((mModel.mID.field_0x20 & 0x10000000) == 0) {
                        mpBlkAnm->setFrame(fVar1);
                    } else {
                        mpBlkAnm->play();
                    }
                }
            }
        } else if (mpModelMorf != NULL) {
            mpModelMorf->play(0, 0);
        } else if (mpBtpAnm != NULL) {
            mpBtpAnm->play();
        } else if (mpBtkAnm != NULL) {
            mpBtkAnm->play();
        } else if (mpBrkAnm != NULL) {
            mpBrkAnm->play();
        } else if (mpBpkAnm != NULL) {
            mpBpkAnm->play();
        } else if (mpBlkAnm != NULL) {
            mpBlkAnm->play();
        }

        if (actor->checkEnable(dDemo_actor_c::ENABLE_SCALE_e)) {
            scale = actor->getScale();
        }
    }

    return 1;
}

/* 804A604C-804A60B0 001E2C 0064+00 1/0 0/0 0/0 .text            actLeaving__10daDemo00_cFP13dDemo_actor_c */
int daDemo00_c::actLeaving(dDemo_actor_c* actor) {
    // NONMATCHING
    if (mpModelMorf != NULL) {
        mpModelMorf->stopZelAnime();
    }

    fopAcM_DeleteHeap(this);
    setAction(&daDemo00_c::actStandby);
    return 1;
}

/* 804A60B0-804A61F0 001E90 0140+00 1/1 0/0 0/0 .text            mDad00_changeXluMaterial__FP11J3DMateriali */
static void mDad00_changeXluMaterial(J3DMaterial* i_material, int param_2) {
    // NONMATCHING
    static J3DBlendInfo l_blendInfoOPA = {
        0,
        1,
        0,
        3,
    };
    static J3DBlendInfo l_blendInfo = {
        1,
        4,
        5,
        3,
    };
    static J3DZModeInfo l_zmodeInfoOPA = {
        1,
        3,
        1,
        0,
    };
    static J3DZModeInfo l_zmodeInfo = {
        1,
        3,
        0,
        0,
    };

    i_material->change();

    if (param_2 == 0) {
        i_material->setMaterialMode(4);
        i_material->getPEBlock()->getBlend()->setBlendInfo(l_blendInfo);
        i_material->getPEBlock()->getZMode()->setZModeInfo(l_zmodeInfo);
    } else {
        i_material->setMaterialMode(1);
        i_material->getPEBlock()->getBlend()->setBlendInfo(l_blendInfoOPA);
        i_material->getPEBlock()->getZMode()->setZModeInfo(l_zmodeInfoOPA);
    }
}

/* 804A61F0-804A6428 001FD0 0238+00 1/1 0/0 0/0 .text            teduna_calc__FP4cXyzP4cXyzP4cXyzsi */
static void teduna_calc(cXyz* param_1, cXyz* param_2, cXyz* param_3, s16 param_4, int param_5) {
    // NONMATCHING
    cXyz sp70(*param_1 - *param_2);
    f32 fVar1 = 6.0f;
    cXyz sp7c, sp88;

    mDoMtx_stack_c::YrotS(param_4);

    if (param_5 == 5) {
        sp7c.set(0.0f, -5.0f, 130.0f);
        fVar1 = 1.0f;
    } else if (param_5 == 5) {
        sp7c.set(0.0f, -30.0f, 78.0f);
    } else {
        sp7c.set(0.0f, -30.0f, 60.0f);
    }

    mDoMtx_stack_c::multVec(&sp7c, &sp88);

    for (int i = 0; i < 16; i++) {
        *param_3 = *param_1 - (sp70 * (i / 15.0f));
        f32 fVar2 = cM_ssin((i / 15.0f) * 32768.0f);
        *param_3 += sp88 * fVar2;
        param_3->y += fVar2 * (fVar1 * cM_ssin(g_Counter.mCounter0 * 2500 + i * 1600));
        param_3++;
    }
}

/* 804A8C64-804A8D24 000054 00C0+00 1/3 0/0 0/0 .bss             teduna_posL */
static cXyz teduna_posL[16];

/* 804A8D30-804A8DF0 000120 00C0+00 1/3 0/0 0/0 .bss             teduna_posR */
static cXyz teduna_posR[16];

/* 804A8DFC-804A8E08 0001EC 000C+00 2/4 0/0 0/0 .bss             S_ganon_left_hand_pos */
static cXyz S_ganon_left_hand_pos;

/* 804A8E14-804A8E20 000204 000C+00 2/4 0/0 0/0 .bss             S_ganon_right_hand_pos */
static cXyz S_ganon_right_hand_pos;

/* 804A6428-804A6868 002208 0440+00 1/1 0/0 0/0 .text            teduna_draw__FP8J3DModelP19mDoExt_3DlineMat1_cP12dKy_tevstr_ciiii */
static void teduna_draw(J3DModel* i_model, mDoExt_3DlineMat1_c* param_2, dKy_tevstr_c* param_3, int param_4, int param_5, int param_6, int param_7) {
    // NONMATCHING
    static GXColor l_color = {
        0x14, 0x0F, 0x00, 0xFF,
    };

    cXyz sp38, sp44, sp50;
    s16 sVar1 = 0;
    if (param_7 == 4) {
        sVar1 = -0x3875;
    } else if (param_7 == 5) {
        sVar1 = -7000;
    }

    MTXCopy(i_model->getAnmMtx(param_6), mDoMtx_stack_c::get());

    if (param_7 == 5) {
        sp38.set(0.0f, 9.0f, 15.0f);
    } else if (param_7 == 2 || param_7 == 3 || param_7 == 4) {
        sp38.set(107.0f, -32.0f, -68.0f);
    } else {
        sp38.set(79.0f, -26.0f, -48.0f);
    }

    mDoMtx_stack_c::multVec(&sp38, &sp44);

    if (param_7 == 5) {
        sp50 = S_ganon_left_hand_pos;
    } else {
        MTXCopy(i_model->getAnmMtx(param_4), mDoMtx_stack_c::get());

        if (param_7 == 1) {
            sp38.set(61.0f, 18.0f, 0.0f);
        } else if (param_7 == 3) {
            sp38.set(191.0f, 28.0f, -80.0f);
        } else {
            sp38.set(0.0f, 0.0f, 0.0f);
        }

        mDoMtx_stack_c::multVec(&sp38, &sp50);
    }

    teduna_calc(&sp44, &sp50, teduna_posL, sVar1 + cM_atan2s(sp44.x - sp50.x, sp44.z - sp50.z) + 0x6000, param_7);
    MTXCopy(i_model->getAnmMtx(param_6), mDoMtx_stack_c::get());

    if (param_7 == 5) {
        sp38.set(0.0f, 9.0f, -15.0f);
    } else if (param_7 == 2 || param_7 == 3 || param_7 == 4) {
        sp38.set(107.0f, -32.0f, 68.0f);
    } else {
        sp38.set(79.0f, -26.0f, 48.0f);
    }

    mDoMtx_stack_c::multVec(&sp38, &sp44);

    if (param_7 == 5) {
        sp50 = S_ganon_right_hand_pos;
    } else {
        MTXCopy(i_model->getAnmMtx(param_5), mDoMtx_stack_c::get());

        if (param_7 == 1) {
            sp38.set(61.0f, 18.0f, 0.0f);
        } else if (param_7 == 4) {
            sp38.set(40.0f, -12.0f, 40.0f);
        } else {
            sp38.set(0.0f, 0.0f, 0.0f);
        }

        mDoMtx_stack_c::multVec(&sp38, &sp50);
    }

    teduna_calc(&sp44, &sp50, teduna_posR, sVar1 + cM_atan2s(sp44.x - sp50.x, sp44.z - sp50.z) + 0x6000, param_7);
    cXyz* pcVar1 = teduna_posL;
    cXyz* pcVar2 = param_2->getPos(0);
    for (int i = 0; i < 16; i++) {
        pcVar2 = pcVar1;
        pcVar2++;
        pcVar1++;
    }

    pcVar1 = teduna_posR;
    pcVar2 = param_2->getPos(0);
    pcVar2 += 31;
    for (int i = 0; i < 16; i++) {
        pcVar2 = pcVar1;
        pcVar2--;
        pcVar1++;
    }

    param_2->update(0x20, l_color, param_3);
    dComIfGd_set3DlineMat(param_2);
}

/* 804A6868-804A692C 002648 00C4+00 1/1 0/0 0/0 .text teduna_ganon_hand_set__FP8J3DModelii */
static void teduna_ganon_hand_set(J3DModel* i_model, int param_2, int param_3) {
    // NONMATCHING
    cXyz sp20;

    MTXCopy(i_model->getAnmMtx(param_2), mDoMtx_stack_c::get());
    sp20.set(0.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::multVec(&sp20, &S_ganon_left_hand_pos);

    MTXCopy(i_model->getAnmMtx(param_3), mDoMtx_stack_c::get());
    sp20.set(0.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::multVec(&sp20, &S_ganon_right_hand_pos);
}

/* 804A692C-804A6C48 00270C 031C+00 1/1 0/0 0/0 .text ke_control__FP10daDemo00_cP12demo_s1_ke_sif */
static void ke_control(daDemo00_c* i_this, demo_s1_ke_s* param_2, int param_3, f32 param_4) {
    // NONMATCHING
    cXyz spa4, spb0;
    cXyz* pcVar1 = param_2->field_0x0;
    cXyz* pcVar2 = param_2->field_0xc0;

    spa4.x = 0.0f;
    spa4.y = 0.0f;
    spa4.z = param_4;

    cXyz spbc;
    s16 sVar1 = cM_rndF2(65536.0f);
    f32 fVar1 = 3.0f;
    f32 fVar2 = i_this->current.pos.y;
    f32 fVar3 = 0.8f;

    if (i_this->field_0x6b3 != 0) {
        fVar3 = 0.0f;
    }

    for (int i = 0; pcVar1++, pcVar2++, i < 16; i++) {
        f32 fVar4 = fVar1 * cM_ssin(sVar1 + i * 7000);
        f32 fVar5 = cM_ssin(sVar1 + i * 6000 + 10000);
        f32 fVar6 = (16 - i) * 0.1f;

        spbc.x = pcVar2->x + fVar4 + param_2->field_0x180.x * fVar6;
        spbc.y = pcVar2->y + param_2->field_0x180.y * fVar6;
        spbc.z = pcVar2->z + (fVar1 * fVar5) + param_2->field_0x180.z * fVar6;
        fVar6 = spbc.x + (pcVar1->x - pcVar1[-1].x);
        fVar5 = spbc.z + (pcVar1->z - pcVar1[-1].z);
        fVar4 = pcVar1->y + spbc.y + -12.0f;

        if (fVar4 < fVar2) {
            fVar4 = fVar2;
        }

        f32 fVar7 = fVar4 - pcVar1[-1].y;

        cMtx_XrotS(*calc_mtx, -cM_atan2s(fVar7, fVar5));
        cMtx_YrotM(*calc_mtx, cM_atan2s(fVar6, JMAFastSqrt(fVar4 * fVar4 + fVar5 * fVar5)));
        MtxPosition(&spa4, &spb0);
        
        pcVar2 = pcVar1;
        pcVar1->x = pcVar1[-1].x + spb0.x;
        pcVar1->y = pcVar1[-1].y + spb0.y;
        pcVar1->z = pcVar1[-1].z + spb0.z;
        pcVar2->x = fVar3 * (pcVar1->x - pcVar2->x);
        pcVar2->y = fVar3 * (pcVar1->y - pcVar2->y);
        pcVar2->z = fVar3 * (pcVar1->x - pcVar2->z);
    }

}

/* 804A6C48-804A6D20 002A28 00D8+00 1/1 0/0 0/0 .text            ke_move__FP10daDemo00_cP19mDoExt_3DlineMat0_cP12demo_s1_ke_sif */
static void ke_move(daDemo00_c* i_this, mDoExt_3DlineMat0_c* param_2, demo_s1_ke_s* param_3, int param_4, f32 param_5) {
    // NONMATCHING
    ke_control(i_this, param_3, param_4, param_5);
    cXyz* pcVar1 = param_2->getPos(param_4);
    f32* pfVar1 = param_2->getSize(param_4);

    for (int i = 0; i < 16; i++) {
        *pcVar1 = param_3->field_0x0[i];
        if (i == 14) {
            *pfVar1 = 0.6f;
        } else if (i < 5) {
            *pfVar1 = 3.5f;
        } else {
            *pfVar1 = cM_rndF2(1.0f) + 1.8f;
        }

        pcVar1++;
        pfVar1++;
    }
}

/* 804A6D20-804A6F74 002B00 0254+00 1/1 0/0 0/0 .text            ke_set__FP10daDemo00_c */
static void ke_set(daDemo00_c* i_this) {
    // NONMATCHING
    static s16 ke_za[22] = {
        0xFCE0, 0xFE70, 0, 0x0190, 0x0320, 0xFCE0, 0xFE70, 0, 0x0190, 0x0320, 
        0xFCE0, 0xFE70, 0, 0x0190, 0x0320, 0x04B0, 0xFCE0, 0xFE70, 0, 
        0x0190, 0x0320, 0x04B0,
    };

    cXyz sp58, sp64;
    cM_initRnd2(12, 0x7B, fopAcM_GetID(i_this) * 2 + 0x32);
    MTXCopy(i_this->field_0x5d4->getAnmMtx(4), *calc_mtx);

    f32 fVar1, fVar2, fVar3;
    for (int i = 0; i < 22; i++) {
        MtxPush();
        cMtx_YrotM(*calc_mtx, 0x4000);
        cMtx_XrotM(*calc_mtx, (int)cM_rndF2(2000.0f) + 3000);

        if (i < 10) {
            cMtx_ZrotM(*calc_mtx, ke_za[i] * 5);
            fVar1 = cM_rndF2(2.25f) + 7.5f;
            fVar2 = cM_rndF2(10.0f) - 5.0f;
            fVar3 = cM_rndF2(20.0f) - 10.0f;
        } else {
            cMtx_ZrotM(*calc_mtx, ke_za[i] * 5 + 0x8000);
            fVar1 = cM_rndF2(3.0f) + 8.0f;
            fVar2 = cM_rndF2(20.0f) - 10.0f;
            fVar3 = cM_rndF2(30.0f) - 15.0f;
        }

        sp58.set(fVar2, 15.0f, fVar3);
        MtxPosition(&sp58, &i_this->field_0x6f8[i].field_0x0[i]);
        sp58.set(fVar2, 35.0f, fVar3);
        MtxPosition(&sp58, &i_this->field_0x6f8[i].field_0x180);

        i_this->field_0x6f8[i].field_0x180 -= i_this->field_0x6f8[i].field_0x0[i];
        
        ke_move(i_this, &i_this->field_0x2900, i_this->field_0x6f8, i, fVar1);
        MtxPull();
    }
}

/* 804A6F74-804A6F94 002D54 0020+00 1/0 0/0 0/0 .text            daDemo00_Draw__FP10daDemo00_c */
static int daDemo00_Draw(daDemo00_c* i_this) {
    return i_this->draw();
}

/* 804A6F94-804A7B88 002D74 0BF4+00 1/1 0/0 0/0 .text            draw__10daDemo00_cFv */
int daDemo00_c::draw() {
    // NONMATCHING
    if (field_0x5d4 != NULL) {
        if (field_0x6ac == 7) {
            tevStr.TevColor.a = 0xFF;
        }

        g_env_light.settingTevStruct(field_0x6ac, &eyePos, &tevStr);
        g_env_light.setLightTevColorType_MAJI(field_0x5d4, &tevStr);
        dKy_bg_MAxx_proc(field_0x5d4);

        if (mpBtpAnm != NULL) {
            mpBtpAnm->entry(field_0x5d4->getModelData());
        }

        if (mpBtkAnm != NULL) {
            mpBtkAnm->entry(field_0x5d4->getModelData());
        }

        if (mpBrkAnm != NULL){
            mpBrkAnm->entry(field_0x5d4->getModelData());
        }

        if (mpBpkAnm != NULL) {
            mpBpkAnm->entry(field_0x5d4->getModelData());
        }

        if (mpBlkAnm != NULL) {
            mpBlkAnm->entryFrame();
        }

        if (field_0x6a5 != 0) {
            J3DModelData* modelData = field_0x5d4->getModelData();
            for (u16 i = 0; i < modelData->getMaterialNum(); i++) {
                J3DMaterial* material = modelData->getMaterialNodePointer(i);

                if (field_0x6a5 == 1) {
                    mDad00_changeXluMaterial(material, 0);
                } else {
                    mDad00_changeXluMaterial(material, 1);
                }
            }
        }

        if (field_0x6a6 == 2) {
            dComIfGd_setListDark();
        } else if (field_0x6a6 == 3) {
            dComIfGd_setListFilter();
        }

        if (field_0x5d8 != NULL) {
            mpModelMorf->calc();
            if (field_0x6b5 != 0) {
                field_0x5d8->entryDL(NULL);
            }
        } else if (field_0x6b5 != 0) {
            if (mpModelMorf != NULL) {
                mpModelMorf->updateDL();
            } else {
                mDoExt_modelUpdateDL(field_0x5d4);
            }
        } else if (mpModelMorf != NULL) {
            mpModelMorf->modelCalc();
        }

        if (field_0x5d4->getSkinDeform() != NULL) {
            dComIfGd_setList();
        }

        if (field_0x6a6 == 2 || field_0x6a6 == 3) {
            dComIfGd_setList();
        }

        if (field_0x6a7 >= 0) {
            if (field_0x6a7 == 0) {
                teduna_draw(field_0x5d4, &field_0x6bc, &tevStr, 22, 0x1B, 0x27, field_0x6a7);
            } else if (field_0x6a7 == 1) {
                teduna_draw(field_0x5d4, &field_0x6bc, &tevStr, 0x2B, 0x2B, 0x27, field_0x6a7);
            } else if (field_0x6a7 == 2) {
                teduna_draw(field_0x5d4, &field_0x6bc, &tevStr, 0x17, 0x1F, 0x3E, field_0x6a7);
            } else if (field_0x6a7 == 3) {
                teduna_draw(field_0x5d4, &field_0x6bc, &tevStr, 0x1F, 0x1F, 0x3E, field_0x6a7);
            } else if (field_0x6a7 == 4) {
                teduna_draw(field_0x5d4, &field_0x6bc, &tevStr, 0x17, 0x17, 0x3E, field_0x6a7);
            } else if (field_0x6a7 == 6) {
                teduna_ganon_hand_set(field_0x5d4, 0x20, 0x21);
            } else if (field_0x6a7 == 7) {
                teduna_ganon_hand_set(field_0x5d4, 0x16, 0x17);
            } else if (field_0x6a7 == 5) {
                teduna_draw(field_0x5d4, &field_0x6bc, &tevStr, 0, 0, 0x13, field_0x6a7);
            } else if (field_0x6a7 == 8) {
                if ((current.pos - field_0x291c).abs() > 200.0f) {
                    field_0x6b3 = 5;
                    for (int i = 0; i < 10; i++) {
                        ke_set(this);
                    }
                }

                ke_set(this);
                GXColor color;
                color.r = 0x14;
                color.g = 0x14;
                color.b = 0x14;
                color.a = 0xFF;

                if (field_0x6b5 != 0) {
                    field_0x2900.update(0x10, color, &tevStr);
                    dComIfGd_set3DlineMatDark(&field_0x2900);
                }

                field_0x291c = current.pos;
                if (field_0x6b3 != 0) {
                    field_0x6b3--;
                }
            }
        }

        if (field_0x6b6 != 0) {
            if (field_0x6b6 == 1) {
                if (field_0x5d4->getModelData() != NULL) {
                    if (field_0x5d4->getModelData()->getMaterialNodePointer(9) != NULL) {
                        if (field_0x5d4->getModelData()->getMaterialNodePointer(9)->getShape() != NULL) {
                            field_0x5d4->getModelData()->getMaterialNodePointer(9)->getShape()->show();
                        }
                    }
                }
            } else if (field_0x5d4->getModelData() != NULL) {
                if (field_0x5d4->getModelData()->getMaterialNodePointer(9) != NULL) {
                    if (field_0x5d4->getModelData()->getMaterialNodePointer(9)->getShape() != NULL) {
                        field_0x5d4->getModelData()->getMaterialNodePointer(9)->getShape()->hide();
                    }
                }
            }
        }

        if (mShadow != NULL && field_0x6b7 != 0 && field_0x6b5 != 0 && field_0x6a1 != 0) {
            cXyz sp98, spa4, spb0;

            MTXCopy(field_0x5d4->getAnmMtx(0), mDoMtx_stack_c::get());
            spb0.set(0.0f, 0.0f, 0.0f);
            mDoMtx_stack_c::multVec(&spb0, &sp98);
            mDoLib_project(&sp98, &spa4);

            if (spa4.x >= -700.0f && spa4.x < 1600.0f && spa4.y >= -200.0f && spa4.y < 600.0f) {
                if (mModel.mID.field_0x18 == 0 || mModel.mID.field_0x18 == 1) {
                    cXyz spbc = sp98 + mShadow->field_0x4;
                    spbc.y = mBgc->field_0x54 + 15.0f;
                    mShadow->field_0x0 = dComIfGd_setShadow(mShadow->field_0x0, mModel.mID.field_0x18, field_0x5d4,
                        &spbc, mShadow->field_0x1c, mShadow->field_0x20, sp98.y + 15.0f, sp98.y + 3.0f,
                        mBgc->mGndChk, &tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
                } else {
                    cXyz spc8(sp98.x, mBgc->field_0x54, sp98.z);
                    dComIfGd_setSimpleShadow(&spc8, spc8.y, mShadow->field_0x20, mBgc->mGndChk, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
                }
            }
        }

        if (mpBtpAnm != NULL) {
            mpBtpAnm->remove(field_0x5d4->getModelData());
        }

        if (mpBtkAnm != NULL) {
            mpBtkAnm->remove(field_0x5d4->getModelData());
        }

        if (mpBrkAnm != NULL) {
            mpBrkAnm->remove(field_0x5d4->getModelData());
        }

        if (mpBpkAnm != NULL) {
            mpBpkAnm->remove(field_0x5d4->getModelData());
        }

        cXyz spd4, spe0, spec;

        MTXCopy(field_0x5d4->getAnmMtx(0), mDoMtx_stack_c::get());
        spd4.set(0.0f, 0.0f, 0.0f);
        mDoMtx_stack_c::multVec(&spd4, &spe0);
        eyePos = spe0;
        eyePos.y = spe0.y + 50.0f;

        if (field_0x6a8 > 0) {
            cXyz spf8, sp104;
            dBgS_CamGndChk_Wtr cam_gndchk;
            cXyz sp110;

            if ((g_Counter.mCounter0 & 0x1F) == 0) {
                spf8 = eyePos;
                if (field_0x6a8 == 10) {
                    sp110.x = 2.0f;
                    sp110.y = 2.0f;
                    sp110.z = 2.0f;
                } else if (field_0x6a8 == 6) {
                    cXyz sp11c, sp128, sp134;

                    MTXCopy(field_0x5d4->getAnmMtx(7), mDoMtx_stack_c::get());
                    sp11c.set(0.0f, 0.0f, 0.0f);
                    mDoMtx_stack_c::multVec(&sp11c, &sp128);
                    spf8 = sp128;
                    sp110.x = 1.0f;
                    sp110.y = 1.0f;
                    sp110.z = 1.0f;
                } else {
                    sp110.x = 1.0f;
                    sp110.y = 1.0f;
                    sp110.z = 1.0f;
                }

                spf8.y += 10000.0f;
                cam_gndchk.SetPos(&spf8);
                spf8.y = dComIfG_Bgsp().GroundCross(&cam_gndchk);
                dComIfGp_particle_setWaterRipple(&field_0x68c, *fopAcM_wt_c::getWaterCheck(), &spf8, 
                                                 0.0f, &tevStr, &sp110, fopAcM_GetRoomNo(this));
            }
        }

        #ifdef DEBUG
        if (field_0x6aa > -1) {
            dDbVw_Report(0x32, 0x91, "DEMOTOOL ERR : Model ga arunoni hisyakai sindo meirei!!!!");
            OSReport_Error("\nDEMOTOOL ERR : Model ga arunoni hisyakai sindo meirei!!!!");
        }

        if (field_0x6ab > -1) {
            dDbVw_Report(0x32, 0x91, "DEMOTOOL ERR : Model ga arunoni monokuro meirei!!!!");
            OSReport_Error("\nDEMOTOOL ERR : Model ga arunoni monokuro meirei!!!!");
        }
        #endif
    }

    if (field_0x6a9 >= 1) {
        dCam_getBody()->StartBlure(0x19, NULL, 0.85f, 1.0f);
    }

    if (field_0x6aa != -1) {
        if (field_0x6aa == 1) {
            g_env_light.mDemoAttentionPoint = current.pos.x;

            if (g_env_light.mDemoAttentionPoint > 1.0f) {
                g_env_light.mDemoAttentionPoint = 1.0f;
            }

            if (g_env_light.mDemoAttentionPoint < -1.0f) {
                g_env_light.mDemoAttentionPoint = -1.0f;
            }

            #ifdef DEBUG
            dDbVw_Report(300, 0x19, "DEMO Depth %f", g_env_light.mDemoAttentionPoint);
            #endif
        } else {
            cLib_addCalc(&g_env_light.mDemoAttentionPoint, 0.0f, 0.5f, 0.1f, 0.0001f);
        }
    }

    if (field_0x6ab >= 0) {
        g_env_light.field_0x1278 = current.pos.y / 100.0f;
        g_env_light.field_0x12fc = field_0x6ab;
        if (g_env_light.field_0x1278 >= 1.0f) {
            g_env_light.field_0x1278 = 1.0f;
        }

        #ifdef DEBUG
        dDbVw_Report(10, 0x17C, "\nbloom pat[%d] ratio[%f]", g_env_light.field_0x1278, field_0x6ab);
        #endif
    }

    switch (field_0x6b2) {
        case 0:
            break;

        case 1:
            if (g_env_light.mHousiCount < 200) {
                g_env_light.mHousiCount += 3;
            }
            break;

        case 2:
            if (g_env_light.mHousiCount > 3) {
                g_env_light.mHousiCount -= 3;
            } else {
                g_env_light.mHousiCount = 0;
            }
            break;
    }

    if (field_0x69c != -1) {
        if (field_0x694 != field_0x69c) {
            if (field_0x694 < field_0x69c) {
                field_0x694++;
            } else {
                field_0x694--;
            }
        }

        dKyw_rain_set(field_0x694);
    }

    if (field_0x69e != -1) {
        if (field_0x698 != field_0x69e) {
            if (field_0x698 < field_0x69e) {
                field_0x698++;
            } else {
                field_0x698--;
            }
        }

        g_env_light.mMoyaMode = 1;
        g_env_light.mMoyaCount = field_0x698;
    }

    return 1;
}

/* 804A7B88-804A7BA8 003968 0020+00 1/0 0/0 0/0 .text            daDemo00_Execute__FP10daDemo00_c */
static int daDemo00_Execute(daDemo00_c* i_this) {
    return i_this->execute();
}

static u8 const l_itemNo[4] = {
    0x29,
    0xFF,
    0xFF,
    0xFF,
};

/* 804A7BA8-804A84AC 003988 0904+00 7/1 0/0 0/0 .text            execute__10daDemo00_cFv */
int daDemo00_c::execute() {
    // NONMATCHING

    field_0x6a1 = 0;
    dDemo_actor_c* actor = dDemo_c::getActor(demoActorID);

    if (actor == NULL) {
        fopAcM_delete(this);
        OS_REPORT("汎用くん<dactor%d>削除！！\n", subtype);
    } else {
        if (actor->checkEnable(dDemo_actor_c::ENABLE_SHAPE_e)) {
            mModel.field_0x0.mShapeID = actor->getShapeId();
        }

        if (actor->checkEnable(dDemo_actor_c::ENABLE_ANM_e)) {
            mModel.field_0x0.field_0x4 = actor->getAnmId();
        }

        int piVar1, piVar2, piVar3;
        u16 upVar1;
        u8 upVar2;
        if (actor->checkEnable(dDemo_actor_c::ENABLE_UNK_e)) {
            while (actor->getDemoIDData(&piVar1, &piVar2, &piVar3, &upVar1, &upVar2) != 0) {
                if (piVar1 == 0) {
                    switch (piVar3) {
                        case 0:
                            u16 uVar1 = upVar1 >> 8;
                            u32 resID8 = uVar1 & 0xFF;
                            switch (uVar1) {
                                case 1:
                                    switch ((u8)upVar1) {
                                        case 1:
                                            field_0x6b4 = 1;
                                            break;

                                        case 2:
                                            field_0x6a5 = 1;
                                            break;

                                        case 3:
                                            field_0x6a5 = 2;
                                            break;

                                        case 4:
                                            field_0x6a6 = 1;
                                            break;

                                        case 5:
                                            field_0x6a6 = 2;
                                            break;

                                        case 6:
                                            field_0x6a6 = 3;
                                            break;
                                    }
                                    break;

                                case 2:
                                    if (resID8 == 0) {
                                        field_0x6a2 = 0;
                                        mground2 = 0;
                                    } else if (resID8 == 1) {
                                        field_0x6a2 = 1;
                                    } else {
                                        mground2 = 1;
                                    }

                                    OS_REPORT("\nmground2=[%d]", mground2);
                                    break;

                                case 3:
                                    JUT_ASSERT(1389, resID8 < (sizeof(l_itemNo)/sizeof(u8)));
                                    if (l_itemNo[resID8] != 0xFF) {
                                        execItemGet(l_itemNo[resID8]);
                                    }
                                    break;

                                case 4:
                                case 5:
                                case 6:
                                case 7:
                                    BOOL bVar1 = FALSE;
                                    BOOL bVar2 = FALSE;
                                    if (uVar1 == 5 || uVar1 == 7) {
                                        bVar1 = TRUE;
                                    }

                                    if (uVar1 == 6 || uVar1 == 7) {
                                        bVar2 = TRUE;
                                    }

                                    u32 uVar2 = resID8;
                                    if (resID8 == 0xFF) {
                                        uVar2 = 0x1A;
                                    }

                                    if (bVar1) {
                                        if (!bVar1) {
                                            GXColor fadeInColor;
                                            if (!bVar2) {
                                                fadeInColor = g_blackColor;
                                            } else {
                                                fadeInColor = g_saftyWhiteColor;
                                            }

                                            mDoGph_gInf_c::fadeIn(1.0f / uVar2, fadeInColor);
                                        }
                                    } else {
                                        GXColor fadeOutColor;
                                        if (!bVar2) {
                                            fadeOutColor = g_blackColor;
                                        } else {
                                            fadeOutColor = g_saftyWhiteColor;
                                        }

                                        mDoGph_gInf_c::fadeOut(1.0f / uVar2, fadeOutColor);
                                    }
                                    break;

                                case 8:
                                    u32 uVar4 = upVar1 & 0x3F;

                                    switch ((upVar1 & 0xC0) >> 6) {
                                        case 0:
                                            dComIfGp_getVibration().StopQuake(1);
                                            break;

                                        case 1:
                                           dComIfGp_getVibration().StartShock(uVar4, 1, cXyz(0.0f, 1.0f, 0.0f));
                                           break;
                                           
                                        case 2:
                                            dComIfGp_getVibration().StartQuake(uVar4, 1, cXyz(0.0f, 1.0f, 0.0f));

                                        default:
                                            OS_REPORT("\nデモ汎用君振動設定エラー!!"); // Demo General-Kun Vibration Setting Error!!
                                    }
                                    break;

                                case 9:
                                    if (resID8 == 0) {
                                        field_0x6a4 = 0;
                                    } else {
                                        field_0x6a4 = 1;
                                    }
                                    break;

                                case 10:
                                    if ((uVar1 & 0xFF) < 0x40) {
                                        dKy_change_colpat(resID8);
                                        OS_REPORT("\nパレット型[%d]へ変更", resID8);
                                    }
                                    break;

                                case 11:
                                    switch (resID8) {
                                        case 0:
                                            g_env_light.mThunderEff.field_0x2 = 1;
                                            break;

                                        case 1:
                                            field_0x6b2 = 1;
                                            break;

                                        case 2:
                                            field_0x6b2 = 2;
                                            break;

                                        case 3:
                                            field_0x69c = 0xFA;
                                            break;

                                        case 4:
                                            field_0x69c = 0;
                                            break;

                                        case 5:
                                            field_0x69e = 0x32;
                                            break;

                                        case 6:
                                            field_0x69e = 0;
                                            break;
                                    }
                                    break;

                                case 12:
                                    switch (resID8) {
                                        case 0:
                                            field_0x6a7 = 0;
                                            break;

                                        case 1:
                                            field_0x6a7 = 2;
                                            break;

                                        case 2:
                                            field_0x6a7 = 3;
                                            break;

                                        case 3:
                                            field_0x6a7 = 1;
                                            break;

                                        case 4:
                                            field_0x6a7 = 8;
                                            break;

                                        case 5:
                                            field_0x6a7 = 4;
                                            break;

                                        case 6:
                                            field_0x6b6 = 1;
                                            break;

                                        case 7:
                                            field_0x6b6 = 2;
                                            break;

                                        case 8:
                                            field_0x6a7 = 6;
                                            break;

                                        case 9:
                                            field_0x6a7 = 7;
                                            break;

                                        case 10:
                                            field_0x6a7 = 5;
                                            break;
                                    }
                                    break;

                                case 13:
                                    field_0x6a9 = upVar1;
                                    break;

                                case 14:
                                    field_0x6a8 = upVar1;
                                    break;

                                case 15:
                                    if (resID8 == 1) {
                                        field_0x6aa = 1;
                                    } else {
                                        field_0x6aa = 0;
                                    }
                                    break;

                                case 16:
                                    field_0x6ab = upVar1;
                                    break;

                                case 17:
                                    switch (resID8) {
                                        case 1:
                                            field_0x6ac = 2;
                                            break;

                                        case 2:
                                            field_0x6ac = 4;
                                            break;

                                        case 3:
                                            field_0x6ac = 7;
                                            break;

                                        case 4:
                                            field_0x6ac = 9;
                                            break;

                                        case 5:
                                            field_0x6ac = 1;
                                            break;

                                        case 6:
                                            field_0x6ac = 16;
                                            break;

                                        case 7:
                                            field_0x6ac = 17;
                                            break;

                                        case 8:
                                            field_0x6ac = 18;
                                            break;

                                        case 9:
                                            field_0x6ac = 19;
                                            break;

                                        case 10:
                                            field_0x6ac = 10;
                                            break;

                                        case 11:
                                            field_0x6ac = 14;
                                            break;

                                        case 12:
                                            field_0x6ac = 3;
                                            break;

                                        case 13:
                                            field_0x6ac = 5;
                                            break;

                                        case 14:
                                            field_0x6ac = 15;
                                            break;
                                    }
                                    break;

                                case 18:
                                    field_0x6ae = 1;
                                    break;

                                case 19:
                                    field_0x6af = upVar1;
                                    break;

                                case 20:
                                    field_0x6b0 = upVar1;
                                    break;

                                case 21:
                                    field_0x6b1 = 1;
                                    break;

                                case 22:
                                    field_0x6b5 = upVar1;
                                    break;

                                case 23:
                                    field_0x6b7 = upVar1;
                                    break;

                                case 24:
                                    field_0x6b8 = 1;
                                    break;

                                case 25:
                                    cXyz sp90, sp9c;
                                    sp90.x = 0.0f;
                                    sp90.y = 0.0f;
                                    sp90.z = 0.0f;
                                    sp9c.x = 1.0f;
                                    sp9c.y = 1.0f;
                                    sp9c.z = 1.0f;
                                    field_0x6b9 = 1;
                                    dComIfGp_particle_set((u16)mModel.field_0x0.mShapeID, &sp90, NULL, NULL, &sp9c);
                                    mModel.field_0x0.reset();
                                    mModel.field_0x0.mShapeID = -1;
                                    actor->offEnable(16);
                                    break;
                            }
                            break;

                        case 1:
                            dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[upVar1]);
                            break;

                        case 2:
                            if ((upVar1 & 0xC000) == 0) {
                                fopAcM_create(PROC_MOVIE_PLAYER, upVar1, NULL, fopAcM_GetRoomNo(this), NULL, NULL, 0xFF);
                                mDoGph_gInf_c::fadeOut(1.0f);
                            } else {
                                switch (upVar1) {
                                    case 0:
                                        daMP_c::daMP_c_THPPlayerPlay();
                                        break;

                                    case 1:
                                        daMP_c::daMP_c_THPPlayerPause();
                                        break;
                                }
                            }
                            break;

                        case 3:
                            dComIfGs_onTmpBit(dSv_event_tmp_flag_c::tempBitLabels[upVar1]);
                            break;
                    }
                } else {
                    switch (piVar3) {
                        case 1:
                            mModel.field_0x0.reset();
                            mModel.field_0x0.mShapeID = upVar1;
                            break;

                        case 2:
                            mModel.field_0x0.field_0x4 = upVar1;
                            break;

                        case 3:
                            if (upVar2 == 0) {
                                mModel.field_0x0.field_0x10 = upVar1;
                            } else {
                                mModel.field_0x0.field_0x10 = upVar1 | 0x10000000;
                            }
                            break;

                        case 4:
                            if (upVar2 == 0) {
                                mModel.field_0x0.field_0x14 = upVar1;
                            } else {
                                mModel.field_0x0.field_0x14 = upVar1 | 0x10000000;
                            }
                            break;

                        case 5:
                            mModel.field_0x0.field_0xc = upVar1;
                            break;

                        case 6:
                            mModel.field_0x0.field_0x1c = upVar1;
                            break;

                        case 7:
                            mModel.field_0x0.field_0x20 = upVar1;
                            break;

                        case 8:
                            mModel.field_0x0.field_0x8 = upVar1;
                            break;
                    }
                }
            }

            actor->offEnable(dDemo_actor_c::ENABLE_UNK_e);
        }

        action(actor);
    }

    if (field_0x6ae != 0) {
        f32 cutoff = shape_angle.z / 182.04445f;
        GXColor color;
        color.r = scale.x;
        color.g = scale.y;
        color.b = scale.z;
        color.a = 0xFF;
        dKy_BossSpotLight_set(&current.pos, shape_angle.x / 182.04445f, shape_angle.y / 182.04445f - 90.0f, 
                              cutoff, &color, gravity, field_0x6b0, field_0x6af);
    }

    if (field_0x6b8 != 0) {
        dComIfGs_setTime(current.pos.x * 15.0f);
    }

    return 1;
}

/* 804A84AC-804A84B4 00428C 0008+00 1/0 0/0 0/0 .text            daDemo00_IsDelete__FP10daDemo00_c */
static int daDemo00_IsDelete(daDemo00_c* i_this) {
    return 1;
}

/* 804A84B4-804A84DC 004294 0028+00 1/0 0/0 0/0 .text            daDemo00_Delete__FP10daDemo00_c */
static int daDemo00_Delete(daDemo00_c* i_this) {
    fopAcM_GetID(i_this);
    i_this->~daDemo00_c();
    return 1;
}

/* 804A84DC-804A86B4 0042BC 01D8+00 1/0 0/0 0/0 .text            daDemo00_Create__FP10fopAc_ac_c */
static int daDemo00_Create(fopAc_ac_c* a_this) {
    // NONMATCHING
    daDemo00_c* i_this = (daDemo00_c*)a_this;
    fopAcM_SetupActor(a_this, daDemo00_c);

    i_this->field_0x6a2 = 0;
    i_this->mground2 = 0;
    i_this->field_0x6a4 = 0;
    i_this->field_0x6b2 = 0;
    i_this->field_0x69c = -1;
    i_this->field_0x69e = -1;
    i_this->field_0x694 = 0;
    i_this->field_0x698 = 0;
    i_this->field_0x568.x = 10000000.0f;
    i_this->field_0x568.y = 10000000.0f;
    i_this->field_0x568.z = 10000000.0f;
    i_this->field_0x6a5 = 0;
    i_this->field_0x6a6 = 0;
    i_this->field_0x6a7 = 0xFF;
    i_this->field_0x6a8 = -1;
    i_this->field_0x6a9 = -1;
    i_this->field_0x6aa = 0xFF;
    i_this->field_0x6ab = -1;
    i_this->field_0x6ac = 0;
    i_this->field_0x6ad = 0;
    i_this->field_0x6ae = 0;
    i_this->field_0x6b8 = 0;
    i_this->field_0x6b9 = 0;
    i_this->field_0x6af = 3;
    i_this->field_0x6b0 = 2;
    i_this->field_0x6b4 = 0;
    i_this->field_0x6b1 = 0;
    i_this->field_0x6b5 = 1;
    i_this->field_0x6b6 = 0;
    i_this->field_0x6b7 = 1;
    S_ganon_left_hand_pos.x = 0.0f;
    S_ganon_left_hand_pos.y = 0.0f;
    S_ganon_left_hand_pos.z = 0.0f;
    S_ganon_right_hand_pos.x = 0.0f;
    S_ganon_right_hand_pos.y = 0.0f;
    S_ganon_right_hand_pos.z = 0.0f;

    return i_this->create(); 
}

/* 804A86B4-804A871C 004494 0068+00 1/1 0/0 0/0 .text            __ct__12demo_s1_ke_sFv */
demo_s1_ke_s::demo_s1_ke_s() {}

AUDIO_INSTANCES;

/* 804A8B94-804A8BB4 -00001 0020+00 1/0 0/0 0/0 .data            l_daDemo00_Method */
static actor_method_class l_daDemo00_Method = {
    (process_method_func)daDemo00_Create,
    (process_method_func)daDemo00_Delete,
    (process_method_func)daDemo00_Execute,
    (process_method_func)daDemo00_IsDelete,
    (process_method_func)daDemo00_Draw,
};

/* 804A8BB4-804A8BE4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_DEMO00 */
extern actor_process_profile_definition g_profile_DEMO00 = {
  fpcLy_CURRENT_e,       // mLayerID
  7,                     // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_DEMO00,           // mProcName
  &g_fpcLf_Method.base, // sub_method
  sizeof(daDemo00_c),    // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  685,                   // mPriority
  &l_daDemo00_Method,    // sub_method
  0x00044000,            // mStatus
  fopAc_ACTOR_e,         // mActorType
  fopAc_CULLBOX_0_e,     // cullType
};
