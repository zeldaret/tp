/**
 * d_a_alink_wolf.inc
 * General Player Wolf action handling
 */

#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "d/a/d_a_alink.h"
#include "d/com/d_com_inf_game.h"
#include "d/msg/d_msg_object.h"
#include "f_op/f_op_kankyo_mng.h"
#include "m_Do/m_Do_controller_pad.h"
#include "rel/d/a/d_a_horse/d_a_horse.h"
#include "rel/d/a/d_a_kago/d_a_kago.h"
#include "rel/d/a/e/d_a_e_pm/d_a_e_pm.h"
#include "rel/d/a/e/d_a_e_yc/d_a_e_yc.h"
#include "rel/d/a/kytag/d_a_kytag03/d_a_kytag03.h"
#include "rel/d/a/npc/d_a_npc_gwolf/d_a_npc_gwolf.h"
#include "rel/d/a/npc/d_a_npc_tk/d_a_npc_tk.h"
#include "rel/d/a/obj/d_a_obj_crope/d_a_obj_crope.h"
#include "rel/d/a/obj/d_a_obj_smw_stone/d_a_obj_smw_stone.h"
#include "rel/d/a/obj/d_a_obj_wchain/d_a_obj_wchain.h"
#include "rel/d/a/obj/d_a_obj_wind_stone/d_a_obj_wind_stone.h"
#include "rel/d/a/obj/d_a_obj_yobikusa/d_a_obj_yobikusa.h"
#include "rel/d/a/tag/d_a_tag_howl/d_a_tag_howl.h"
#include "rel/d/a/tag/d_a_tag_wara_howl/d_a_tag_wara_howl.h"
#include "rel/d/a/tag/d_a_tag_wljump/d_a_tag_wljump.h"

/* 80126740-80126928 121080 01E8+00 2/2 0/0 0/0 .text            changeCommon__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
void daAlink_c::changeCommon() {
    fopAcM_SetMtx(this, mpLinkModel->getBaseTRMtx());
    model = mpLinkModel;

    field_0x2060->offOldFrameFlg();
    field_0x2f8c = 0;
    resetUpperAnime(UPPER_2, -1.0f);

    offNoResetFlg1(FLG1_UNK_20000000);
    offKandelaarModel();

    int i;
    for (i = 0; i < 2; i++) {
        mFootData1[i].field_0x2 = 0;
        mFootData1[i].field_0x4 = 0;
        mFootData1[i].field_0x6 = 0;
        mFootData2[i].field_0x2 = 0;
        mFootData2[i].field_0x4 = 0;
        mFootData2[i].field_0x6 = 0;
    }

    for (i = 0; i < 10; i++) {
        field_0x302c[i] = 0;
        field_0x3040[i] = 0;
    }

    for (i = 0; i < 3; i++) {
        field_0x3054[i] = 0;
        field_0x305a[i] = 0;
    }

    shape_angle.z = 0;
    field_0x2fec = 0;
    field_0x2fee = 0;

    mBodyAngle.set(0, 0, 0);
    field_0x3080 = 0;
    field_0x3082 = 0;

    offNoResetFlg1(0x600080);
    offNoResetFlg2(FLG2_UNK_8000000);

    field_0x2180[0]->init();
    field_0x2180[1]->init();

    mWolfEyeUpTimer = 0;
    resetCombo(1);

    i = 0;
    mItemTrigger = 0;
    mItemButton = 0;
    field_0x2ba4 = 0.0f;
    field_0x33a0 = 0.0f;
    field_0x2fcc = 0;

    field_0x32a0[0].r = 0;
    field_0x32a0[0].g = 0;
    field_0x32a0[0].b = 0;
    field_0x32a0[1].r = 0;
    field_0x32a0[1].g = 0;
    field_0x32a0[1].b = 0;

    field_0x2fc4 = 0;
    mHotspringRecoverTimer = daAlinkHIO_basic_c0::m.mHotspringRecoverTime;
    field_0x2fc9 = 0x10;

    for (; i < 4; i++) {
        clearFirePointDamageEffect(i);
    }

    field_0x30d0 = 0;
    field_0x30d2 = 0;
    field_0x2fc3 = 10;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::changeCommon() {
    nofralloc
#include "asm/d/a/d_a_alink/changeCommon__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 80126928-80126F3C 121268 0614+00 2/2 0/0 0/0 .text            changeWolf__9daAlink_cFv */
// small regalloc, equivalent?
#ifdef NONMATCHING
void daAlink_c::changeWolf() {
    JKRHeap* current_heap = mAnmHeap3.setAnimeHeap();

    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_wArcName, 14);
    mpLinkModel = initModel(modelData, 0x80000, 0x20200);

    J3DModelData* chainModelData = (J3DModelData*)dComIfG_getObjectRes(l_wArcName, 15);
    for (u16 i = 0; i < 4; i++) {
        mpWlChainModels[i] = initModel(chainModelData, 0x80000, 0);
    }

    J3DModelData* midnaModelData = (J3DModelData*)dComIfG_getObjectRes(l_wArcName, 10);
    mpWlMidnaModel = initModel(midnaModelData, 0, 0x1020200);

    J3DModelData* midnaMaskModelData = (J3DModelData*)dComIfG_getObjectRes(l_wArcName, 7);
    mpWlMidnaMaskModel = initModel(midnaMaskModelData, 0x80000, 0x1000000);

    J3DModelData* midnaHandModelData = (J3DModelData*)dComIfG_getObjectRes(l_wArcName, 6);
    mpWlMidnaHandModel = initModel(midnaHandModelData, 0x80000, 0x1000000);

    J3DModelData* midnaHairModelData = (J3DModelData*)dComIfG_getObjectRes(l_wArcName, 11);
    mpWlMidnaHairModel = initModel(midnaHairModelData, 0, 0x1000000);

    mpDMidnaBrk = (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_wArcName, 18);
    mpDMidnaBrk->searchUpdateMaterialID(mpWlMidnaModel->getModelData());
    mpWlMidnaModel->getModelData()->entryTevRegAnimator(mpDMidnaBrk);
    mpDMidnaBrk->setFrame(1.0f);

    mpDMidnaMaskBrk = (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_wArcName, 21);
    mpDMidnaMaskBrk->searchUpdateMaterialID(mpWlMidnaMaskModel->getModelData());
    mpWlMidnaMaskModel->getModelData()->entryTevRegAnimator(mpDMidnaMaskBrk);
    mpDMidnaMaskBrk->setFrame(1.0f);

    mpDMidnaHandBrk = (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_wArcName, 20);
    mpDMidnaHandBrk->searchUpdateMaterialID(mpWlMidnaHandModel->getModelData());
    mpWlMidnaHandModel->getModelData()->entryTevRegAnimator(mpDMidnaHandBrk);
    mpDMidnaHandBrk->setFrame(1.0f);

    mpDMidnaHairHandBrk = (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_wArcName, 19);
    mpDMidnaHairHandBrk->searchUpdateMaterialID(mpWlMidnaHairModel->getModelData());
    mpWlMidnaHairModel->getModelData()->entryTevRegAnimator(mpDMidnaHairHandBrk);
    mpDMidnaHairHandBrk->setFrame(1.0f);

    mDoExt_setCurrentHeap(current_heap);

    dComIfGs_setTransformStatus(1);
    mpLinkModel->setUserArea((u32)this);
    changeModelDataDirectWolf(0);
    mEyeHL1.entry(field_0x064C, "wl_eye_Hilight");
    mEyeHL2.entry(mpWlMidnaModel->getModelData(), "midona_eye_Hlight");
    field_0x064C->getMaterialNodePointer(4)->setMaterialAnm(field_0x2180[0]);
    field_0x064C->getMaterialNodePointer(5)->setMaterialAnm(field_0x2180[1]);
    field_0x06e8 = field_0x064C->getMaterialNodePointer(1)->getShape();

    changeCommon();
    onNoResetFlg1(FLG1_IS_WOLF);
    deleteEquipItem(FALSE, FALSE);
    field_0x2e44.init(this, l_wolfJntColData, mpLinkModel, 18);
    offNoResetFlg1(FLG1_UNK_800000);

    field_0x598 = 115.0f;
    mLinkAcch.SetRoofCrrHeight(field_0x598);
    field_0x594 = daAlinkHIO_wlMove_c0::m.field_0x64;

    l_autoUpHeight = daAlinkHIO_wlWallHang_c0::m.field_0x78 + 0.01f;
    l_autoDownHeight = -l_autoUpHeight;
    field_0x3470 = cM_scos(cM_deg2s(daAlinkHIO_wlSlide_c0::m.field_0x5C));
    field_0x3122 = cM_deg2s(daAlinkHIO_wlSlide_c0::m.field_0x60);
    field_0x3458 = -60.0f;
    field_0x345c = -130.0f;

    field_0x2e44.offPassNum(16);
    field_0x2e44.offPassNum(15);

    offNoResetFlg0(FLG0_UNDERWATER);
    setHeavyBoots(0);

    for (int i = 0; i < 3; i++) {
        field_0x3094[i] = 0;
        field_0x309a[i] = 0;
    }

    mZ2Link.i_setLinkState(1);
    field_0x30d6 = 0;
    field_0x2fa6 = 0;
    field_0x2e54.changeWaterOffset(daAlinkHIO_basic_c0::m.mWolfWaterSurfaceEffectHeight);
    field_0x2e54.changeRippleOffset(field_0x598);
    mWoodSwordModel = NULL;
    field_0x3420 = 1.25f;
    field_0x30c6 = 40;
    field_0x30a8 = 3;
    field_0x30aa = 15;
    field_0x30ae = 0x1000;
    field_0x3424 = 8.0f;
    field_0x3428 = 50.0f;
    field_0x2f50 = &l_wolfLieSideOffset;
    field_0x2f54 = &l_wolfLieTopUpOffset;
    m_swordBlur.field_0x14 = 0;
    resetAtCollision(0);
    field_0x30b8 = 19;
    field_0x30ba = 24;
    field_0x30c0 = 19;
    field_0x30c2 = 24;
    field_0x30c4 = 3;
    field_0x30b4 = 4;
    field_0x30bc = 31;
    field_0x30be = 36;
    field_0x32c4 = 1;
    field_0x32c6 = 2;
    field_0x30b6 = 2;
    attention_info.field_0xa = 50;

    dCcD_Cyl* cyl_p = field_0x850;
    for (int i = 0; i < 3; i++) {
        cyl_p->OffTgShieldFrontRange();
        cyl_p->OffTgSmallShield();
        cyl_p->OffTgSpShield();
        cyl_p->OffTgShield();
        cyl_p++;
    }

    field_0xFB8.StartCAt(current.pos);
    field_0xFB8.OffAtSetBit();
    field_0xFB8.OnTgSetBit();
    field_0xFB8.OnCoSetBit();
    field_0xFB8.SetR(40.0f);

    mpKanteraModel = NULL;
    mpLinkHatModel = NULL;
    mpLinkFaceModel = NULL;
    mpLinkHandModel = NULL;
    mMagicArmorBodyBrk = NULL;
    mMagicArmorHeadBrk = NULL;

    field_0x2fc7 = dStage_stagInfo_GetWolfDashType(dComIfGp_getStage()->getStagInfo());
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::changeWolf() {
    nofralloc
#include "asm/d/a/d_a_alink/changeWolf__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 80126F3C-80127C54 12187C 0D18+00 2/2 0/0 0/0 .text            changeLink__9daAlink_cFi */
// almost, small regalloc
#ifdef NONMATCHING
void daAlink_c::changeLink(int param_0) {
    JKRHeap* current_heap = mAnmHeap3.setAnimeHeap();
    offNoResetFlg2(0x180000);
    mMagicArmorBodyBrk = NULL;
    mMagicArmorHeadBrk = NULL;

    if (checkNoResetFlg2(FLG2_UNK_200000)) {
        offNoResetFlg2(FLG2_UNK_200000);
        onNoResetFlg2(FLG2_UNK_80000);

        J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("alSumou", 0x31);
        mpLinkModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);

        J3DModelData* headModelData = (J3DModelData*)dComIfG_getObjectRes("alSumou", 0x33);
        mpLinkHatModel = initModel(headModelData, 0);

        J3DModelData* handModelData = (J3DModelData*)dComIfG_getObjectRes("alSumou", 0x32);
        mpLinkHandModel = initModel(handModelData, 0);
    } else if (checkCasualWearFlg()) {
        onNoResetFlg2(FLG2_UNK_100000);

        J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_bArcName, "bl.bmd");
        mpLinkModel = initModel(modelData, 0);

        J3DModelData* headModelData =
            (J3DModelData*)dComIfG_getObjectRes(l_bArcName, "bl_head.bmd");
        mpLinkHatModel = initModel(headModelData, 0);

        J3DModelData* handModelData =
            (J3DModelData*)dComIfG_getObjectRes(l_bArcName, "bl_hands.bmd");
        mpLinkHandModel = initModel(handModelData, 0);
    } else if (checkZoraWearFlg()) {
        J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_zArcName, "zl.bmd");
        mpLinkModel = initModel(modelData, 0);

        J3DModelData* headModelData =
            (J3DModelData*)dComIfG_getObjectRes(l_zArcName, "zl_head.bmd");
        mpLinkHatModel = initModel(headModelData, 0);

        J3DModelData* handModelData =
            (J3DModelData*)dComIfG_getObjectRes(l_zArcName, "al_hands.bmd");
        mpLinkHandModel = initModel(handModelData, 0);
    } else if (checkMagicArmorWearFlg()) {
        J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_mArcName, "ml.bmd");
        mpLinkModel = initModel(modelData, 0x1000000);

        J3DModelData* headModelData =
            (J3DModelData*)dComIfG_getObjectRes(l_mArcName, "ml_head.bmd");
        mpLinkHatModel = initModel(headModelData, 0x1000000);

        J3DModelData* handModelData =
            (J3DModelData*)dComIfG_getObjectRes(l_mArcName, "al_hands.bmd");
        mpLinkHandModel = initModel(handModelData, 0);

        if (dComIfGs_getRupee() != 0) {
            setMagicArmorBrk(1);
        } else {
            setMagicArmorBrk(0);
        }

        mMagicArmorBodyBrk->setFrame(mMagicArmorBodyBrk->getFrameMax());
        mMagicArmorHeadBrk->setFrame(mMagicArmorHeadBrk->getFrameMax());
    } else {
        J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_kArcName, "al.bmd");
        mpLinkModel = initModel(modelData, 0);

        J3DModelData* headModelData =
            (J3DModelData*)dComIfG_getObjectRes(l_kArcName, "al_head.bmd");
        mpLinkHatModel = initModel(headModelData, 0);

        J3DModelData* handModelData =
            (J3DModelData*)dComIfG_getObjectRes(l_kArcName, "al_hands.bmd");
        mpLinkHandModel = initModel(handModelData, 0);
    }

    if (checkNoResetFlg2(FLG2_UNK_200000) || !checkZoraWearFlg()) {
        J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(mArcName, "al_face.bmd");
        mpLinkFaceModel = initModel(modelData, 0x20200);
    } else {
        J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(mArcName, "zl_face.bmd");
        mpLinkFaceModel = initModel(modelData, 0x20200);
    }

    J3DModelData* bootsModelData = (J3DModelData*)dComIfG_getObjectRes(mArcName, "al_bootsH.bmd");
    for (u16 i = 0; i < 2; i++) {
        mpLinkBootModels[i] = initModel(bootsModelData, 0);
    }

    J3DModelData* kanteraModelData =
        (J3DModelData*)dComIfG_getObjectRes(mArcName, "al_kantera.bmd");
    mpKanteraModel = initModelEnv(kanteraModelData, 0);

    J3DModelData* kanteraGlowModelData =
        (J3DModelData*)dComIfG_getObjectRes(mArcName, "ef_ktGlow.bmd");
    mpKanteraGlowModel = initModel(kanteraGlowModelData, 0x200);

    mpKanteraGlowBtk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(mArcName, "ef_ktGlow.btk");
    mpKanteraGlowBtk->setFrame(0.0f);
    mpKanteraGlowBtk->searchUpdateMaterialID(kanteraGlowModelData);
    kanteraGlowModelData->entryTexMtxAnimator(mpKanteraGlowBtk);

    J3DModelData* woodSwordModelData = (J3DModelData*)dComIfG_getObjectRes(mArcName, "al_SWB.bmd");
    mWoodSwordModel = initModel(woodSwordModelData, 0);

    mDoExt_setCurrentHeap(current_heap);

    dComIfGs_setTransformStatus(0);
    mpLinkModel->setUserArea((u32)this);
    mpLinkHatModel->setUserArea((u32)this);
    changeModelDataDirect(param_0);
    field_0x06e4 = NULL;

    u8 var_r27;
    if (checkNoResetFlg2(FLG2_UNK_80000)) {
        field_0x06d8 = field_0x064C->getMaterialNodePointer(4)->getShape();
        field_0x06dc = field_0x064C->getMaterialNodePointer(5)->getShape();
        field_0x06e0 = NULL;
        field_0x06e8 = field_0x064C->getMaterialNodePointer(3)->getShape();
        field_0x06ec = NULL;
        field_0x06f0 = field_0x064C->getMaterialNodePointer(2)->getShape();
        var_r27 = 2;
    } else if (checkCasualWearFlg()) {
        field_0x06d8 = field_0x064C->getMaterialNodePointer(3)->getShape();
        field_0x06dc = field_0x064C->getMaterialNodePointer(4)->getShape();
        field_0x06e0 = NULL;
        field_0x06e8 = field_0x064C->getMaterialNodePointer(2)->getShape();
        field_0x06ec = field_0x064C->getMaterialNodePointer(0)->getShape();
        field_0x06f0 = field_0x064C->getMaterialNodePointer(1)->getShape();
        var_r27 = 2;
    } else if (checkZoraWearFlg()) {
        field_0x06d8 = field_0x064C->getMaterialNodePointer(4)->getShape();
        field_0x06dc = field_0x064C->getMaterialNodePointer(5)->getShape();
        field_0x06e0 = field_0x064C->getMaterialNodePointer(8)->getShape();
        field_0x06e4 = field_0x064C->getMaterialNodePointer(9)->getShape();
        field_0x06e4->hide();
        field_0x06e8 = NULL;
        field_0x06ec = field_0x064C->getMaterialNodePointer(2)->getShape();
        field_0x06f0 = field_0x064C->getMaterialNodePointer(11)->getShape();
        var_r27 = 3;
    } else if (checkMagicArmorWearFlg()) {
        field_0x06d8 = field_0x064C->getMaterialNodePointer(4)->getShape();
        field_0x06dc = field_0x064C->getMaterialNodePointer(5)->getShape();
        field_0x06e0 = field_0x064C->getMaterialNodePointer(10)->getShape();
        field_0x06e8 = field_0x064C->getMaterialNodePointer(3)->getShape();
        field_0x06ec = field_0x064C->getMaterialNodePointer(1)->getShape();
        field_0x06f0 = field_0x064C->getMaterialNodePointer(2)->getShape();

        if (dComIfGs_getRupee() != 0) {
            var_r27 = 4;
        } else {
            var_r27 = 5;
        }
    } else {
        field_0x064C->getMaterialNodePointer(16)->getShape()->hide();
        field_0x06d8 = field_0x064C->getMaterialNodePointer(11)->getShape();
        field_0x06dc = field_0x064C->getMaterialNodePointer(12)->getShape();
        field_0x06e0 = field_0x064C->getMaterialNodePointer(6)->getShape();
        field_0x06e8 = field_0x064C->getMaterialNodePointer(8)->getShape();
        field_0x06ec = field_0x064C->getMaterialNodePointer(4)->getShape();
        field_0x06f0 = field_0x064C->getMaterialNodePointer(7)->getShape();
        var_r27 = 0;
    }

    if (field_0x06e0 != NULL) {
        if (checkEquipHeavyBoots()) {
            field_0x06e0->hide();
        } else {
            field_0x06e0->show();

            if (checkZoraWearMaskDraw()) {
                field_0x06e4->show();
            }
        }
    }

    field_0x06d0 = field_0x06d8;
    field_0x06d4 = field_0x06dc;

    J3DModelData* hand_modeldata = mpLinkHandModel->getModelData();
    for (u16 i = 0; i < 11; i++) {
        hand_modeldata->getMaterialNodePointer(i)->getShape()->hide();
    }

    J3DModelData* face_modeldata = mpLinkFaceModel->getModelData();
    face_modeldata->getMaterialNodePointer(2)->setMaterialAnm(field_0x2180[0]);
    face_modeldata->getMaterialNodePointer(3)->setMaterialAnm(field_0x2180[1]);
    mEyeHL1.entry(face_modeldata, "highlight02");

    mpKanteraModel->setUserArea((u32)this);
    mpKanteraModel->getModelData()->getJointNodePointer(1)->setCallBack(
        daAlink_kandelaarModelCallBack);
    mZ2Link.i_setLinkState(var_r27);

    if (checkHookshotReadyMaterialOffMode()) {
        setHookshotReadyMaterial();
    }

    if (param_0) {
        fopAcM_SetMtx(this, mpLinkModel->getBaseTRMtx());
        model = mpLinkModel;
        field_0x2060->offOldFrameFlg();
    } else {
        changeCommon();
        offNoResetFlg1(FLG1_IS_WOLF);
        field_0x2e44.init(this, l_jntColData, mpLinkModel, 18);
        field_0x3088 = 0;
        field_0x302c[7] = -0x3800;
        field_0x3060 = 0;
        field_0x3062 = shape_angle.y;

        field_0x598 = 180.0f;
        mLinkAcch.SetRoofCrrHeight(field_0x598);
        field_0x594 = daAlinkHIO_move_c0::m.mMaxSpeed;

        l_autoUpHeight = daAlinkHIO_wallHang_c0::m.field_0x4 + 0.01f;
        l_autoDownHeight = -l_autoUpHeight;
        field_0x3470 = cM_scos(cM_deg2s(daAlinkHIO_slide_c0::m.mSlideAngle));
        field_0x3122 = cM_deg2s(daAlinkHIO_slide_c0::m.mClimbAngle);
        field_0x3458 = -120.0f;
        field_0x345c = -200.0f;

        field_0x2e54.changeWaterOffset(daAlinkHIO_basic_c0::m.mWaterSurfaceEffectHeight);
        field_0x2e54.changeRippleOffset(field_0x598);
        offWolfEyeUp();

        field_0x3420 = 1.0f;
        field_0x30c6 = 35;
        field_0x30a8 = 1;
        field_0x30aa = 16;
        field_0x30ae = 0x2000;
        field_0x3424 = 4.0f;
        field_0x3428 = 35.0f;
        field_0x2f50 = &l_crawlSideOffset;
        field_0x2f54 = &l_crawlTopUpOffset;

        resetWolfAtCollision();
        resetWolfBallGrab();
        deleteEquipItem(FALSE, FALSE);
        field_0x2fb0 = 0;

        for (int i = 0; i < 10; i++) {
            mWolfLockAcKeep[i].clearData();
        }

        mWolfLockNum = 0;
        field_0x30b8 = 9;
        field_0x30ba = 14;
        field_0x30c0 = 10;
        field_0x30c2 = 15;
        field_0x30c4 = 3;
        field_0x30b4 = 4;
        field_0x30bc = 21;
        field_0x30be = 26;
        field_0x30b6 = 5;
        field_0x32c4 = 2;
        field_0x32c6 = 16;
        attention_info.field_0xa = 10;

        dCcD_Cyl* cyl_p = field_0x850;
        for (int i = 0; i < 3; i++) {
            cyl_p->OnTgShieldFrontRange();
            cyl_p->OnTgSmallShield();
            cyl_p++;
        }

        mMagneBootsTopVec = cXyz::BaseY;

        field_0xFB8.OnAtSetBit();
        field_0xFB8.OffTgSetBit();
        field_0xFB8.OffCoSetBit();

        mpWlMidnaModel = NULL;
        mpWlMidnaMaskModel = NULL;
        mpWlMidnaHandModel = NULL;
        mpWlMidnaHairModel = NULL;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::changeLink(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/changeLink__9daAlink_cFi.s"
}
#pragma pop
#endif

/* 80127C54-80127CAC 122594 0058+00 2/2 0/0 0/0 .text            onWolfEyeUp__9daAlink_cFv */
void daAlink_c::onWolfEyeUp() {
    if (mWolfEyeUp == 0) {
        mZ2Link.setWolfEyeOpen(true);
        mWolfEyeUp = daAlinkHIO_wolf_c0::m.mSensesLingerTime;
        field_0x2fd2 = 20;
    }
}

/* 80127CAC-80127CF0 1225EC 0044+00 5/5 0/0 0/0 .text            offWolfEyeUp__9daAlink_cFv */
void daAlink_c::offWolfEyeUp() {
    if (mWolfEyeUp != 0) {
        mWolfEyeUp = 0;
        field_0x2fd2 = 20;
        mZ2Link.setWolfEyeOpen(false);
    }
}

/* 80127CF0-80127D14 122630 0024+00 1/1 0/0 0/0 .text            wolfSenseTrigger__9daAlink_cFv */
BOOL daAlink_c::wolfSenseTrigger() {
    return itemTriggerCheck(BTN_X);
}

/* 80127D14-80127D2C 122654 0018+00 1/1 0/0 0/0 .text            setWolfSenceStatus__9daAlink_cFUc
 */
void daAlink_c::setWolfSenceStatus(u8 status) {
    dComIfGp_setXStatus(status, 0);
}

/* 80127D2C-80127D50 12266C 0024+00 1/1 0/0 0/0 .text            wolfClawTrigger__9daAlink_cFv */
void daAlink_c::wolfClawTrigger() {
    itemTriggerCheck(BTN_Y);
}

/* 80127D50-80127D68 122690 0018+00 2/2 0/0 0/0 .text            setWolfDigStatus__9daAlink_cFUc */
void daAlink_c::setWolfDigStatus(u8 flag) {
    dComIfGp_setYStatus(13, flag);
}

/* 80127D68-80127DC4 1226A8 005C+00 4/4 0/0 0/0 .text checkWolfShapeReverse__9daAlink_cCFv */
BOOL daAlink_c::checkWolfShapeReverse() const {
    return ((mProcID == PROC_WOLF_SLIDE_READY || mProcID == PROC_WOLF_LOCK_ATTACK_TURN ||
             mProcID == PROC_WOLF_JUMP_AT_SLIDE_LAND) &&
            mProcVar2.field_0x300c != 0) ||
           mProcID == PROC_WOLF_SLIP_TURN_LAND ||
           (mProcID == PROC_WOLF_LARGE_DAMAGE_UP && field_0x3198 != 0) ||
           mProcID == PROC_WOLF_ROPE_TURN;
}

/* 80127DC4-80127E08 122704 0044+00 1/1 0/0 0/0 .text            checkWolfSideStep__9daAlink_cCFv */
BOOL daAlink_c::checkWolfSideStep() const {
    return field_0x2f98 != 0 &&
           ((mProcID == PROC_WOLF_ATN_AC_MOVE && !checkModeFlg(1)) ||
            mProcID == PROC_WOLF_SIDESTEP_LAND || mProcID == PROC_WOLF_BACKJUMP_LAND);
}

/* 80127E08-80127F20 122748 0118+00 1/1 0/0 0/0 .text            setWolfTailAngle__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWolfTailAngle() {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfTailAngle__9daAlink_cFv.s"
}
#pragma pop

/* 80127F20-80127F50 122860 0030+00 5/5 0/0 0/0 .text            checkWolfSlowDash__9daAlink_cFv */
BOOL daAlink_c::checkWolfSlowDash() {
    return field_0x2fc7 == 1 || field_0x2fc7 == 3 || field_0x3174 == 11;
}

/* 80127F50-80128478 122890 0528+00 1/1 0/0 0/0 .text            setSpeedAndAngleWolf__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
void daAlink_c::setSpeedAndAngleWolf() {
    f32 var_f31 = 0.0f;

    f32 var_f30;
    f32 var_f29;
    s16 var_r30;
    s16 var_r29;
    s16 var_r28;
    if (checkWolfDashMode()) {
        var_r30 = daAlinkHIO_wlMove_c0::m.field_0x54;
        var_r29 = daAlinkHIO_wlMove_c0::m.field_0x50;
        var_r28 = daAlinkHIO_wlMove_c0::m.field_0x52;
        if (checkWolfSlowDash()) {
            var_f30 = daAlinkHIO_wlMove_c0::m.field_0xEC;
        } else if (field_0x2fc7 == 2) {
            var_f30 = daAlinkHIO_wlMove_c0::m.field_0xFC;
        } else {
            var_f30 = daAlinkHIO_wlMove_c0::m.field_0xD0;
        }
        var_f29 = daAlinkHIO_wlMove_c0::m.field_0x6C;
    } else {
        var_r30 = daAlinkHIO_wlMoveNoP_c0::m.field_0x4;
        var_r29 = daAlinkHIO_wlMoveNoP_c0::m.field_0x0;
        var_r28 = daAlinkHIO_wlMoveNoP_c0::m.field_0x2;
        var_f30 = daAlinkHIO_wlMoveNoP_c0::m.field_0xC;
        var_f29 = daAlinkHIO_wlMoveNoP_c0::m.field_0x10;
    }

    BOOL temp_r31 = checkEventRun();
    if (checkInputOnR()) {
        s16 temp_r4 = current.angle.y;
        BOOL var_r26 = 0;
        f32 temp_f28 = field_0x33a8 * field_0x33a8;
        f32 temp_f27 = speedF / field_0x594;

        if (cLib_distanceAngleS(field_0x2fe2, current.angle.y) > 0x7000 &&
            abs(field_0x3180) < 0x5000 &&
            ((!checkModeFlg(1) && !(speedF < 0.001f)) || field_0x33a8 > 0.85f))
        {
            if ((checkModeFlg(1) || speedF < 0.001f) && !temp_r31 &&
                (mProcID == PROC_WOLF_WAIT || mProcID == PROC_WOLF_MOVE))
            {
                cLib_addCalcAngleS(&current.angle.y, field_0x2fe2, var_r30, var_r29, var_r28);
                if (mProcID == PROC_WOLF_MOVE && temp_f27 > 0.85f) {
                    var_r26 = 1;
                }
            } else if (mProcID == PROC_WOLF_MOVE &&
                       ((checkWolfDashMode() && temp_f27 > daAlinkHIO_wlMove_c0::m.field_0xA0) ||
                        (!checkWolfDashMode() && temp_f27 > daAlinkHIO_wlMoveNoP_c0::m.field_0x38)))
            {
                return;
            } else {
                cLib_addCalcAngleS(&current.angle.y, field_0x2fe2, var_r30, var_r29, var_r28);
                if (mProcID == PROC_WOLF_MOVE && temp_f27 > 0.85f) {
                    var_r26 = 1;
                }
            }
        } else {
            s16 var_r6;
            s16 var_r7;
            if (temp_r31 != 0) {
                var_r6 = var_r29;
                var_r7 = var_r28;
            } else {
                var_r6 = var_r29 * temp_f28;
                if (var_r6 < 10) {
                    var_r6 = 10;
                }

                var_r7 = var_r28 * temp_f28;
                if (var_r7 < 1) {
                    var_r7 = 1;
                }
            }

            cLib_addCalcAngleS(&current.angle.y, field_0x2fe2, var_r30, var_r6, var_r7);
        }

        if (wolfSideBgCheck(temp_r4)) {
            current.angle.y = temp_r4;
            onEndResetFlg1(ERFLG1_UNK_200000);

            if (cLib_distanceAngleS(field_0x2fe2, current.angle.y) > 0x7000) {
                var_r26 = 1;
            }
        }

        if (!var_r26) {
            f32 temp_f27_2 = getStickAngleDistanceRate();
            if (temp_r31) {
                var_f31 = temp_f27_2 * (var_f30 * field_0x33a8);
            } else {
                f32 var_f26 = (1.0f - fabsf(mNormalSpeed / field_0x594)) * 0.3f;
                if (checkHeavyStateOn(1, 1) != 0) {
                    var_f26 *= mHeavySpeedMultiplier;
                }

                if ((!checkNoResetFlg1(FLG1_UNK_20000000) ||
                     cLib_distanceAngleS(current.angle.y + 0x8000, field_0x3092) >= 0xC00) &&
                    field_0x33a8 > var_f26)
                {
                    var_f31 = temp_f27_2 * (var_f30 * temp_f28);
                }
            }
        }
    }

    if (checkInputOnR() || (mProcID == PROC_WOLF_ROLL_ATTACK_MOVE)) {
        s16 temp_r26 = shape_angle.y;
        s16 var_r4;
        if (checkWolfShapeReverse()) {
            var_r4 = field_0x2fe2 + 0x8000;
        } else {
            var_r4 = field_0x2fe2;
        }

        cLib_addCalcAngleS(&shape_angle.y, var_r4, var_r30, var_r29 * 2, var_r28 * 2);

        int temp_r3 = (s16)(temp_r26 - current.angle.y) * (s16)(shape_angle.y - current.angle.y);
        if (temp_r3 <= 0 && temp_r3 >= -0x1000000) {
            shape_angle.y = current.angle.y;
        }
    } else if (temp_r31 == 0 && !checkInputOnR() && checkAttentionState() &&
               mProcID == PROC_WOLF_WAIT)
    {
        cLib_addCalcAngleS(&shape_angle.y, field_0x2fe4, 2, 0x2000, 0x800);
        current.angle.y = shape_angle.y;
    }

    setNormalSpeedF(var_f31, var_f29);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setSpeedAndAngleWolf() {
    nofralloc
#include "asm/d/a/d_a_alink/setSpeedAndAngleWolf__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 80128478-80128798 122DB8 0320+00 2/2 0/0 0/0 .text setSpeedAndAngleWolfAtn__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setSpeedAndAngleWolfAtn() {
    nofralloc
#include "asm/d/a/d_a_alink/setSpeedAndAngleWolfAtn__9daAlink_cFv.s"
}
#pragma pop

/* 80128798-8012880C 1230D8 0074+00 4/4 0/0 0/0 .text            checkWolfAtnWait__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::checkWolfAtnWait() {
    nofralloc
#include "asm/d/a/d_a_alink/checkWolfAtnWait__9daAlink_cFv.s"
}
#pragma pop

/* void daAlink_c::checkWolfAtnWait() {
    return checkEnemyGroup(mTargetedActor) && mDemo.getDemoMode() == 0x17 || mTargetedActor != NULL
|| fopAcM_GetName(mTargetedActor) == 0x262 ||
} */

/* 8012880C-80128844 12314C 0038+00 27/27 0/0 0/0 .text
 * checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM */
BOOL daAlink_c::checkUnderMove0BckNoArcWolf(daAlink_c::daAlink_WANM anm_id) const {
    return mUnderAnmHeap[0].checkNoSetArcNo() &&
           m_wlAnmDataTable[anm_id].field_0x0 == mUnderAnmHeap[0].getIdx();
}

/* 80128844-80128F0C 123184 06C8+00 11/11 0/0 0/0 .text setBlendWolfMoveAnime__9daAlink_cFf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setBlendWolfMoveAnime(f32 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setBlendWolfMoveAnime__9daAlink_cFf.s"
}
#pragma pop

/* 80128F0C-80128F5C 12384C 0050+00 2/2 0/0 0/0 .text            checkWolfAtnMoveBack__9daAlink_cFs
 */
BOOL daAlink_c::checkWolfAtnMoveBack(s16 param_0) {
    f32 cos = cM_scos(param_0);
    return (field_0x2f98 != 1 && cos < lit_44003) || (field_0x2f98 == 1 && cos < lit_44004);
}

/* 80128F5C-80129114 12389C 01B8+00 5/5 0/0 0/0 .text setWolfAtnMoveDirection__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWolfAtnMoveDirection() {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfAtnMoveDirection__9daAlink_cFv.s"
}
#pragma pop

/* 80129114-8012933C 123A54 0228+00 2/2 0/0 0/0 .text setBlendWolfAtnMoveAnime__9daAlink_cFf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setBlendWolfAtnMoveAnime(f32 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setBlendWolfAtnMoveAnime__9daAlink_cFf.s"
}
#pragma pop

/* 8012933C-8012948C 123C7C 0150+00 1/1 0/0 0/0 .text setBlendWolfAtnBackMoveAnime__9daAlink_cFf
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setBlendWolfAtnBackMoveAnime(f32 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setBlendWolfAtnBackMoveAnime__9daAlink_cFf.s"
}
#pragma pop

/* 8012948C-80129678 123DCC 01EC+00 3/3 0/0 0/0 .text
 * setDoubleAnimeWolf__9daAlink_cFfffQ29daAlink_c12daAlink_WANMQ29daAlink_c12daAlink_WANMif */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setDoubleAnimeWolf(f32 param_0, f32 param_1, f32 param_2,
                                       daAlink_c::daAlink_WANM param_3,
                                       daAlink_c::daAlink_WANM param_4, int param_5, f32 param_6) {
    nofralloc
#include "asm/d/a/d_a_alink/setDoubleAnimeWolf__9daAlink_cFfffQ29daAlink_c12daAlink_WANMQ29daAlink_c12daAlink_WANMif.s"
}
#pragma pop

/* 80129678-801296A8 123FB8 0030+00 35/35 0/0 0/0 .text
 * setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM */
void daAlink_c::setSingleAnimeWolfBase(daAlink_c::daAlink_WANM i_anmID) {
    setSingleAnimeWolf(i_anmID, lit_6040, FLOAT_LABEL(lit_6108), -1, lit_6109);
}

/* 801296A8-801296D8 123FE8 0030+00 3/3 0/0 0/0 .text
 * setSingleAnimeWolfBaseMorf__9daAlink_cFQ29daAlink_c12daAlink_WANMf */
void daAlink_c::setSingleAnimeWolfBaseMorf(daAlink_c::daAlink_WANM i_anmID, f32 i_morf) {
    setSingleAnimeWolf(i_anmID, lit_6040, FLOAT_LABEL(lit_6108), -1, i_morf);
}

/* 801296D8-80129704 124018 002C+00 44/44 0/0 0/0 .text
 * setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff */
void daAlink_c::setSingleAnimeWolfBaseSpeed(daAlink_c::daAlink_WANM i_anmID, f32 i_speed,
                                            f32 i_morf) {
    setSingleAnimeWolf(i_anmID, i_speed, FLOAT_LABEL(lit_6108), -1, i_morf);
}

/* 80129704-80129848 124044 0144+00 29/29 0/0 0/0 .text
 * setSingleAnimeWolf__9daAlink_cFQ29daAlink_c12daAlink_WANMffsf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setSingleAnimeWolf(daAlink_c::daAlink_WANM i_anmID, f32 i_speed, f32 i_start,
                                       s16 i_endFrame, f32 i_morf) {
    nofralloc
#include "asm/d/a/d_a_alink/setSingleAnimeWolf__9daAlink_cFQ29daAlink_c12daAlink_WANMffsf.s"
}
#pragma pop

/* 80129848-8012987C 124188 0034+00 53/53 0/0 0/0 .text
 * setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c */
void daAlink_c::setSingleAnimeWolfParam(daAlink_c::daAlink_WANM i_anmID,
                                        daAlinkHIO_anm_c const* i_anmData) {
    setSingleAnimeWolf(i_anmID, i_anmData->mSpeed, i_anmData->mStartFrame, i_anmData->mEndFrame,
                       i_anmData->mInterpolation);
}

/* 8012987C-80129958 1241BC 00DC+00 5/5 0/0 0/0 .text            checkWolfLandAction__9daAlink_cFi
 */
int daAlink_c::checkWolfLandAction(int param_0) {
    f32 temp_f31 = lit_8782 * (mFallHeight - current.pos.y);

    if (checkNoLandDamageSlidePolygon() || temp_f31 < daAlinkHIO_wlDamFall_c0::m.field_0x2C) {
        if (param_0 != 0) {
            procWolfLandDamageInit(0);
        } else if (mProcID == PROC_WOLF_JUMP_ATTACK || mProcID == PROC_WOLF_DASH_REVERSE) {
            return 0;
        } else {
            procWolfLandInit();
        }
    } else {
        int var_r4;
        if (temp_f31 < daAlinkHIO_wlDamFall_c0::m.field_0x30) {
            var_r4 = 1;
        } else {
            var_r4 = 2;
        }

        procWolfLandDamageInit(var_r4);
    }

    return 1;
}

/* 80129958-801299A8 124298 0050+00 1/1 0/0 1/1 .text            checkMidnaUseAbility__9daAlink_cCFv
 */
BOOL daAlink_c::checkMidnaUseAbility() const {
    return dComIfGp_checkPlayerStatus1(0, 0x800000) || dKy_withwarp_capture_check();
}

/* 801299A8-80129A80 1242E8 00D8+00 1/1 0/0 0/0 .text            checkWolfUseAbility__9daAlink_cFv
 */
void daAlink_c::checkWolfUseAbility() {
    if (mProcID == PROC_WOLF_GIANT_PUZZLE) {
        return;
    }

    if (checkMidnaLockJumpPoint() != NULL && !checkMidnaRide()) {
        offWolfEyeUp();
    } else {
        // event flag 0x4308: senses ability unlocked
        if (dComIfGs_isEventBit(0x4308) && field_0x2fd2 == 0 && !checkEventRun() &&
            mWolfEyeUp < daAlinkHIO_wolf_c0::m.mSensesLingerTime && wolfSenseTrigger())
        {
            if (mWolfEyeUp == 0) {
                onWolfEyeUp();
            } else {
                offWolfEyeUp();
            }
        }
    }
}

/* 80129A80-80129B44 1243C0 00C4+00 13/13 0/0 0/0 .text checkWolfGroundSpecialMode__9daAlink_cFv
 */
int daAlink_c::checkWolfGroundSpecialMode() {
    if (mLinkAcch.ChkGroundHit() && !checkModeFlg(MODE_PLAYER_FLY) &&
        checkEndResetFlg0(ERFLG0_UNK_1))
    {
        return procCoMetamorphoseInit();
    } else if (mSpecialMode == SMODE_WOLF_PUZZLE || mSpecialMode == 0x28) {
        return procWolfGiantPuzzleInit();
    } else if (checkCargoCarry()) {
        return procWolfCargoCarryInit();
    } else if (checkSlideAction()) {
        return 1;
    } else if (checkEndResetFlg1(ERFLG1_UNK_1)) {
        return procWolfScreamWaitInit();
    }
    return 0;
}

/* 80129B44-8012A02C 124484 04E8+00 46/46 0/0 0/0 .text            checkNextActionWolf__9daAlink_cFi
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::checkNextActionWolf(int param_0) {
    if (checkDeadAction(1)) {
        return 1;
    }

    if (checkEndResetFlg1(ERFLG1_UNK_40) &&
        (mProcID == PROC_WOLF_WAIT || mProcID == PROC_WOLF_SERVICE_WAIT ||
         mProcID == PROC_WOLF_TIRED_WAIT || (!checkInputOnR() && mProcID == PROC_WOLF_MOVE) ||
         mProcID == PROC_WOLF_LIE_START || mProcID == PROC_WOLF_LIE_MOVE ||
         mProcID == PROC_WOLF_ATN_AC_MOVE))
    {
        return procWolfMidnaRideShockInit();
    }

    if ((!checkAttentionState() ||
         (mProcID != PROC_WOLF_WAIT_ATTACK && mProcID != PROC_WOLF_JUMP_AT_NORMAL_LAND)) &&
        ((mProcID != PROC_WOLF_WAIT_SLIP && !param_0) || checkInputOnR()))
    {
        if (checkAttentionState()) {
            setSpeedAndAngleWolfAtn();
        } else {
            setSpeedAndAngleWolf();
        }
    }

    setFrontWallType();

    if (checkSlope()) {
        if (checkWolfDashMode()) {
            field_0x594 = daAlinkHIO_wlSlide_c0::m.field_0x68;
        } else {
            field_0x594 = daAlinkHIO_wlSlide_c0::m.field_0x70;
        }
    } else if (checkFmChainGrabAnime()) {
        field_0x594 = 13.0f;
    } else if (mTargetedActor != NULL) {
        field_0x594 = daAlinkHIO_wlAtnMove_c0::m.field_0x18;
    } else if (checkAttentionState()) {
        field_0x594 = daAlinkHIO_wlMove_c0::m.field_0xB4;
    } else if (checkNoResetFlg1(FLG1_DASH_MODE)) {
        if (checkWolfSlowDash()) {
            field_0x594 = daAlinkHIO_wlMove_c0::m.field_0xE0;
        } else if (field_0x2fc7 == 2) {
            field_0x594 = daAlinkHIO_wlMove_c0::m.field_0xF0;
        } else {
            field_0x594 = daAlinkHIO_wlMove_c0::m.field_0xC8;
        }
    } else if (checkWolfDashMode()) {
        field_0x594 = daAlinkHIO_wlMove_c0::m.field_0x64;
    } else {
        field_0x594 = daAlinkHIO_wlMoveNoP_c0::m.field_0x8;
    }

    if (checkWolfGroundSpecialMode()) {
        return 1;
    }

    if (checkWolfLieContinue(0)) {
        return procWolfLieStartInit(0);
    }

    if (checkNextActionFromButton()) {
        return 1;
    }

    fopAc_ac_c* var_r4 = checkWolfRopeHit(&field_0x850[0], field_0x850[0].GetCP(), FALSE);
    if (var_r4 == NULL) {
        var_r4 = checkWolfRopeHit(&field_0x850[1], &current.pos, FALSE);
    }

    if (var_r4 != NULL) {
        field_0x280c.setData(var_r4);
        return procWolfRopeMoveInit(0, 1);
    }

    if (param_0 && !checkInputOnR()) {
        return 0;
    }

    BOOL var_r30;
    if (!checkInputOnR() && mProcID == PROC_WOLF_WAIT_SLIP && checkWolfWaitSlipPolygon()) {
        var_r30 = 0;
    } else if (checkAttentionState()) {
        var_r30 = procWolfAtnActorMoveInit();
    } else {
        field_0x2f98 = 4;

        if (checkZeroSpeedF()) {
            if (!checkEventRun() && field_0x33a8 > 0.85f && abs(field_0x3180) < 0x5000 &&
                (mProcID == PROC_WOLF_WAIT || mProcID == PROC_WOLF_MOVE) &&
                cLib_distanceAngleS(field_0x2fe2, current.angle.y) > 0x7000)
            {
                if (checkEndResetFlg1(ERFLG1_UNK_200000)) {
                    var_r30 = procWolfSlipTurnInit(0);
                } else {
                    var_r30 = 0;
                }

                if (var_r30 == 0 && !checkEventRun()) {
                    var_r30 = checkWaitAction();
                }
            } else {
                var_r30 = checkWaitAction();
            }
        } else if (checkInputOnR() && field_0x2fa8 != 8 && abs(field_0x3180) < 0x5000 &&
                   cLib_distanceAngleS(field_0x2fe2, current.angle.y) > 0x7000 &&
                   ((checkWolfDashMode() &&
                     speedF / field_0x594 > daAlinkHIO_wlMove_c0::m.field_0xA0) ||
                    (!checkWolfDashMode() &&
                     speedF / field_0x594 > daAlinkHIO_wlMoveNoP_c0::m.field_0x38)))
        {
            var_r30 = procWolfSlipInit();
        } else {
            var_r30 = procWolfMoveInit();
        }
    }

    return var_r30;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::checkNextActionWolf(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/checkNextActionWolf__9daAlink_cFi.s"
}
#pragma pop
#endif

/* 8012A02C-8012A228 12496C 01FC+00 3/3 0/0 0/0 .text            wolfSideBgCheck__9daAlink_cFs */
// matches with literals
#ifdef NONMATCHING
BOOL daAlink_c::wolfSideBgCheck(s16 param_0) {
    s16 var_r31 = current.angle.y - param_0;
    if (var_r31 == 0) {
        return 0;
    }

    f32 temp_f31 = cM_scos(param_0);
    f32 temp_f30 = cM_ssin(param_0);
    f32 temp_f29 = cM_scos(current.angle.y);
    f32 temp_f28 = cM_ssin(current.angle.y);

    cXyz sp14(current.pos.x + temp_f30 * 90.0f, current.pos.y + field_0x18B0[2].GetWallH(),
              current.pos.z + temp_f31 * 90.0f);
    cXyz sp8(current.pos.x + temp_f28 * 90.0f, sp14.y, current.pos.z + temp_f29 * 90.0f);

    if (var_r31 > 0) {
        sp8.x += temp_f29 * 35.0f;
        sp8.z -= temp_f28 * 35.0f;
    } else {
        sp8.x -= temp_f29 * 35.0f;
        sp8.z += temp_f28 * 35.0f;
    }

    if (commonLineCheck(&sp14, &sp8)) {
        sp14.x = current.pos.x - temp_f30 * 50.0f;
        sp14.z = current.pos.z - temp_f31 * 50.0f;
        sp8.x = current.pos.x - temp_f28 * 50.0f;
        sp8.z = current.pos.z - temp_f29 * 50.0f;

        if (var_r31 > 0) {
            sp8.x -= temp_f29 * 35.0f;
            sp8.z += temp_f28 * 35.0f;
        } else {
            sp8.x += temp_f29 * 35.0f;
            sp8.z -= temp_f28 * 35.0f;
        }

        if (commonLineCheck(&sp14, &sp8)) {
            return true;
        }
    }

    return false;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::wolfSideBgCheck(s16 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/wolfSideBgCheck__9daAlink_cFs.s"
}
#pragma pop
#endif

/* 8012A228-8012A330 124B68 0108+00 4/4 0/0 0/0 .text checkWolfAttackReverse__9daAlink_cFi */
BOOL daAlink_c::checkWolfAttackReverse(int param_0) {
    if (mProcID != PROC_WOLF_LOCK_ATTACK && checkAtShieldHit(mAtCyl)) {
        return procWolfAttackReverseInit();
    }

    if ((checkNoResetFlg0(FLG0_UNK_18) && mProcID == PROC_WOLF_DASH) ||
        (param_0 && !checkNoResetFlg3(FLG3_UNK_400) && checkNoResetFlg1(FLG1_UNK_20000000) &&
         cLib_distanceAngleS(field_0x3092, current.angle.y) > 0x6000))
    {
        if (mProcID == PROC_WOLF_DASH) {
            return procWolfDashReverseInit(0);
        } else {
            if (checkNoResetFlg3(FLG3_UNK_800000)) {
                dComIfGp_setHitMark(2, NULL, &field_0x378c, &field_0x3166, NULL, 0);
            }

            return procWolfAttackReverseInit();
        }
    }

    return false;
}

/* 8012A330-8012A41C 124C70 00EC+00 1/1 0/0 0/0 .text checkWolfBarrierHitReverse__9daAlink_cFv */
int daAlink_c::checkWolfBarrierHitReverse() {
    if (field_0x3100 != 0 && mProcID != PROC_FRONT_ROLL_SUCCESS && mProcID != PROC_DAMAGE &&
        mProcID != PROC_WOLF_ATTACK_REVERSE && mProcID != PROC_WOLF_DASH_REVERSE)
    {
        if (checkWolf()) {
            return procWolfDashReverseInit(1);
        } else if (mLinkAcch.ChkGroundHit()) {
            if (cLib_distanceAngleS(shape_angle.y, field_0x3102) >= 0x4000) {
                setFrontRollCrashShock(0);
                return procDamageInit(NULL, 1);
            } else {
                return procFrontRollSuccessInit();
            }
        } else {
            setFrontRollCrashShock(0);
            return procCoLargeDamageInit(-6, 1, 0, 0, NULL, 0);
        }
    }

    return 0;
}

/* 8012A41C-8012A498 124D5C 007C+00 2/2 0/0 0/0 .text
 * checkWolfBarrierWallHit__9daAlink_cFR13cBgS_PolyInfo         */
bool daAlink_c::checkWolfBarrierWallHit(cBgS_PolyInfo& i_poly) {
    if (field_0x3100 != 0 || checkZeroSpeedF()) {
        return false;
    }

    s16 bg_name = getMoveBGActorName(i_poly, 1);
    if (bg_name == PROC_OBJ_TP || bg_name == PROC_OBJ_GB || bg_name == PROC_Obj_GanonWall2) {
        return true;
    }

    return false;
}

/* 8012A498-8012ACCC 124DD8 0834+00 1/1 0/0 0/0 .text            wolfBgCheck__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::wolfBgCheck() {
    nofralloc
#include "asm/d/a/d_a_alink/wolfBgCheck__9daAlink_cFv.s"
}
#pragma pop

/* 8012ACCC-8012AD1C 12560C 0050+00 1/1 0/0 0/0 .text            changeWolfBlendRate__9daAlink_cFi
 */
void daAlink_c::changeWolfBlendRate(int param_0) {
    if (checkWolfGrabAnime()) {
        if (param_0 == 7) {
            mNowAnmPackUpper[2].setRatio(FLOAT_LABEL(lit_6108));
        } else if (param_0 == 3) {
            mNowAnmPackUpper[2].setRatio(lit_6040);
        }
    } else if (checkBarkAnime()) {
        if (param_0 == 2) {
            mNowAnmPackUpper[2].setRatio(FLOAT_LABEL(lit_6108));
        } else if (param_0 == 3) {
            mNowAnmPackUpper[2].setRatio(lit_6040);
        }
    }
}

/* 8012AD1C-8012B724 12565C 0A08+00 1/1 0/0 0/0 .text            setWolfFootMatrix__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWolfFootMatrix() {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfFootMatrix__9daAlink_cFv.s"
}
#pragma pop

/* 8012B724-8012BFA8 126064 0884+00 1/1 0/0 0/0 .text            wolfFootBgCheck__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::wolfFootBgCheck() {
    nofralloc
#include "asm/d/a/d_a_alink/wolfFootBgCheck__9daAlink_cFv.s"
}
#pragma pop

/* 8012BFA8-8012C1F4 1268E8 024C+00 6/6 0/0 0/0 .text checkWolfWaitSlipPolygon__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::checkWolfWaitSlipPolygon() {
    nofralloc
#include "asm/d/a/d_a_alink/checkWolfWaitSlipPolygon__9daAlink_cFv.s"
}
#pragma pop

/* 8012C1F4-8012C308 126B34 0114+00 2/2 0/0 0/0 .text            setWolfWaitSlip__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm f32 daAlink_c::setWolfWaitSlip() {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfWaitSlip__9daAlink_cFv.s"
}
#pragma pop

/* 8012C308-8012C30C 126C48 0004+00 4/4 0/0 0/0 .text            checkWolfAtnDoCharge__9daAlink_cFv
 */
void daAlink_c::checkWolfAtnDoCharge() {}

/* 8012C30C-8012CB0C 126C4C 0800+00 1/1 0/0 0/0 .text            setWolfChainPos__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWolfChainPos() {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfChainPos__9daAlink_cFv.s"
}
#pragma pop

/* 8012CB0C-8012CBE4 12744C 00D8+00 1/1 0/0 0/0 .text            setWolfAnmVoice__9daAlink_cFv */
#ifdef NONMATCHING
void daAlink_c::setWolfAnmVoice() {
    s8* var_r30 = field_0x2160;

    if (field_0x2fd8 >= 12 || field_0x215c == NULL) {
        return;
    }

    for (int i = 0; i < 4; i++) {
        f32 temp_f31 = *var_r30;
        if (*var_r30 != -1 && field_0x215c->checkPass(temp_f31)) {
            voiceStart(label[field_0x2fd8]);
        }
        var_r30++;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWolfAnmVoice() {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfAnmVoice__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8012CBE4-8012CD28 127524 0144+00 4/4 0/0 0/0 .text procWolfServiceWaitInit__9daAlink_cFi */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfServiceWaitInit(int param_0) {
    commonProcInit(PROC_WOLF_SERVICE_WAIT);
    mProcVar3.field_0x300e.z = 0;

    if (param_0 == 2) {
        setSingleAnimeWolfBase(WANM_SERVICE_WAIT_D);
        field_0x3198 = 0;
        mProcVar2.field_0x300c = 0;
        mProcVar3.field_0x300e.z = 1;
    } else if (param_0 == 1) {
        if (cM_rnd() < 0.5f) {
            setSingleAnimeWolfBase(WANM_SERVICE_WAIT_A);
            setFaceBasicTexture(FTANM_UNK_8D);
            field_0x3198 = 0;
            mProcVar2.field_0x300c = 0;
        } else {
            setSingleAnimeWolf(WANM_SIT, 1.0f, daAlinkHIO_wlLie_c0::m.field_0x0.mStartFrame,
                               daAlinkHIO_wlLie_c0::m.field_0x0.mEndFrame,
                               daAlinkHIO_wlLie_c0::m.field_0x0.mInterpolation);
            field_0x3198 = 0;
            mProcVar2.field_0x300c = 1;
        }
    } else {
        setSingleAnimeWolfBase(WANM_WAIT_A_TO_S);
        field_0x3198 = 0;
        mProcVar2.field_0x300c = 0;
    }

    mProcVar3.field_0x300e.y = 0;
    mProcVar0.field_0x3008 = cM_rndF(150.0f) + 150.0f;
    mNormalSpeed = 0.0f;
    current.angle.y = shape_angle.y;
    field_0x2f98 = 4;
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfServiceWaitInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfServiceWaitInit__9daAlink_cFi.s"
}
#pragma pop
#endif

/* 8012CD28-8012CF68 127668 0240+00 1/0 0/0 0/0 .text            procWolfServiceWait__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfServiceWait() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfServiceWait__9daAlink_cFv.s"
}
#pragma pop

/* 8012CF68-8012CFEC 1278A8 0084+00 1/1 0/0 0/0 .text            procWolfTiredWaitInit__9daAlink_cFv
 */
int daAlink_c::procWolfTiredWaitInit() {
    if (checkWolfWaitSlipPolygon() && !checkInputOnR()) {
        return procWolfWaitSlipInit();
    }

    if (!commonProcInitNotSameProc(PROC_WOLF_TIRED_WAIT)) {
        return 0;
    }

    mNormalSpeed = FLOAT_LABEL(lit_6108);
    setSingleAnimeWolfBase(WANM_WAIT_TO_TIRED);
    return 1;
}

/* 8012CFEC-8012D050 12792C 0064+00 1/0 0/0 0/0 .text            procWolfTiredWait__9daAlink_cFv */
int daAlink_c::procWolfTiredWait() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    if (!checkNextActionWolf(0) && frameCtrl->checkAnmEnd()) {
        setSingleAnimeWolfBase(WANM_WAIT_TIRED);
    }

    return 1;
}

/* 8012D050-8012D104 127990 00B4+00 3/2 0/0 0/0 .text procWolfMidnaRideShockInit__9daAlink_cFv */
int daAlink_c::procWolfMidnaRideShockInit() {
    if (!checkWolf()) {
        dComIfGp_evmng_cutEnd(field_0x3184);
        return procWaitInit();
    }

    if (!commonProcInitNotSameProc(PROC_WOLF_MIDNA_RIDE_SHOCK)) {
        return 0;
    }

    setSingleAnimeWolfBase(WANM_MIDNA_SHOCK);
    setFaceBasicTexture(FTANM_UNK_9F);

    voiceStart(Z2SE_WL_V_MD_SHOCK);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    current.angle.y = shape_angle.y;

    return 1;
}

/* 8012D104-8012D1A8 127A44 00A4+00 1/0 0/0 0/0 .text procWolfMidnaRideShock__9daAlink_cFv */
int daAlink_c::procWolfMidnaRideShock() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    if (frameCtrl->checkAnmEnd()) {
        if (mDemo.getDemoMode() == 0x32) {
            dComIfGp_evmng_cutEnd(field_0x3184);
        } else {
            checkNextActionWolf(0);
        }
    } else if (frameCtrl->getFrame() > lit_17382 && mDemo.getDemoMode() != 0x32) {
        checkNextActionWolf(1);
    }

    return 1;
}

/* 8012D1A8-8012D2A8 127AE8 0100+00 13/13 0/0 0/0 .text            procWolfWaitInit__9daAlink_cFv */
int daAlink_c::procWolfWaitInit() {
    if (checkWolfWaitSlipPolygon() && !checkInputOnR()) {
        return procWolfWaitSlipInit();
    }

    if (mProcID == PROC_WOLF_WAIT) {
        return 0;
    }

    if (mProcID == PROC_WOLF_SERVICE_WAIT && (!checkEventRun() || mProcVar3.field_0x300e.z != 0) &&
        (field_0x3198 == 0 || !checkAnmEnd(mUnderFrameCtrl)) && checkNoUpperAnime())
    {
        return 0;
    }

    commonProcInit(PROC_WOLF_WAIT);
    setBlendWolfMoveAnime(daAlinkHIO_wlMove_c0::m.field_0xBC);
    current.angle.y = shape_angle.y;
    field_0x2f98 = 4;
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    initServiceWaitTime();
    return 1;
}

/* 8012D2A8-8012D380 127BE8 00D8+00 1/0 0/0 0/0 .text            procWolfWait__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfWait() {
    s16 old_shapeangle = shape_angle.y;

    if (!checkNextActionWolf(0) && !checkFrontWallTypeAction()) {
        field_0x33f0 = (s16)(shape_angle.y - old_shapeangle) * lit_15460;
        setBlendWolfMoveAnime(lit_6041);

        if (checkServiceWaitMode()) {
            field_0x30ca--;

            if (field_0x30ca == 0) {
                procWolfServiceWaitInit(0);
            }
        } else {
            initServiceWaitTime();
        }
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfWait() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfWait__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8012D380-8012D3E4 127CC0 0064+00 2/2 0/0 0/0 .text            procWolfMoveInit__9daAlink_cFv */
int daAlink_c::procWolfMoveInit() {
    if (!commonProcInitNotSameProc(PROC_WOLF_MOVE)) {
        return 0;
    }

    setBlendWolfMoveAnime(daAlinkHIO_wlMove_c0::m.field_0x94);
    setFootEffectProcType(3);

    return 1;
}

/* 8012D3E4-8012D474 127D24 0090+00 1/0 0/0 0/0 .text            procWolfMove__9daAlink_cFv */
int daAlink_c::procWolfMove() {
    if (!checkNextActionWolf(0) && !checkFrontWallTypeAction()) {
        if (mDemo.getDemoMode() == 2) {
            if (mNormalSpeed > field_0x594 * daAlinkHIO_wlMoveNoP_c0::m.field_0x28) {
                mNormalSpeed = field_0x594 * daAlinkHIO_wlMoveNoP_c0::m.field_0x28;
            }
        }

        setBlendWolfMoveAnime(lit_6041);
        field_0x30a2 = field_0x2fec;
    }

    return 1;
}

/* 8012D474-8012D590 127DB4 011C+00 1/1 0/0 0/0 .text            procWolfDashInit__9daAlink_cFv */
int daAlink_c::procWolfDashInit() {
    commonProcInit(PROC_WOLF_DASH);
    setSingleAnimeWolfParam(WANM_DASH_START, &daAlinkHIO_wlMove_c0::m.field_0x28);
    setFootEffectProcType(3);
    current.angle.y = shape_angle.y;

    onNoResetFlg1(FLG1_DASH_MODE);
    mProcVar2.field_0x300c = 0;
    mProcVar3.field_0x300e.x = 0;

    if (checkWolfSlowDash()) {
        field_0x30d0 = daAlinkHIO_wlMove_c0::m.field_0x5A;
        field_0x594 = daAlinkHIO_wlMove_c0::m.field_0xE0;

        if (mNormalSpeed < daAlinkHIO_wlMove_c0::m.field_0xE4) {
            mNormalSpeed = daAlinkHIO_wlMove_c0::m.field_0xE4;
        }
    } else if (field_0x2fc7 == 2) {
        field_0x594 = daAlinkHIO_wlMove_c0::m.field_0xF0;
        field_0x594 = daAlinkHIO_wlMove_c0::m.field_0xF0;

        if (mNormalSpeed < daAlinkHIO_wlMove_c0::m.field_0xF4) {
            mNormalSpeed = daAlinkHIO_wlMove_c0::m.field_0xF4;
        }
    } else {
        field_0x30d0 = daAlinkHIO_wlMove_c0::m.field_0x56;
        field_0x594 = daAlinkHIO_wlMove_c0::m.field_0xC8;

        if (mNormalSpeed < daAlinkHIO_wlMove_c0::m.field_0xD4) {
            mNormalSpeed = daAlinkHIO_wlMove_c0::m.field_0xD4;
        }
    }

    return 1;
}

/* 8012D590-8012D8C0 127ED0 0330+00 1/0 0/0 0/0 .text            procWolfDash__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfDash() {
    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;
    cM3dGPla poly;

    if (getSlidePolygon(&poly)) {
        return checkNextActionWolf(0);
    }

    f32 step_amount;
    if (checkWolfSlowDash()) {
        step_amount = daAlinkHIO_wlMove_c0::m.field_0xEC;
    } else if (field_0x2fc7 == 2) {
        step_amount = daAlinkHIO_wlMove_c0::m.field_0xFC;
    } else {
        step_amount = daAlinkHIO_wlMove_c0::m.field_0xD0;
    }
    cLib_chaseF(&mNormalSpeed, field_0x594, step_amount);

    if (checkInputOnR()) {
        cLib_addCalcAngleS(&current.angle.y, field_0x2fe2, daAlinkHIO_wlMove_c0::m.field_0x54,
                           daAlinkHIO_wlMove_c0::m.field_0x50, daAlinkHIO_wlMove_c0::m.field_0x52);
        shape_angle.y = current.angle.y;
    }

    if (frameCtrl_p->getFrame() > 3.0f && checkWolfAttackReverse(1)) {
        return 1;
    }

    if (swordSwingTrigger()) {
        mProcVar3.field_0x300e.x = 1;
    }

    if (checkAnmEnd(frameCtrl_p)) {
        if (mProcVar3.field_0x300e.x != 0) {
            return checkWolfAttackAction();
        }

        if (checkWolfSlowDash()) {
            field_0x30d2 = daAlinkHIO_wlMove_c0::m.field_0x5C;
        } else if (field_0x2fc7 == 2) {
            field_0x30d2 = daAlinkHIO_wlMove_c0::m.field_0x60;
        } else {
            field_0x30d2 = daAlinkHIO_wlMove_c0::m.field_0x58;
        }

        return checkNextActionWolf(0);
    } else if (frameCtrl_p->getFrame() > daAlinkHIO_wlMove_c0::m.field_0x28.mCheckFrame) {
        if (mProcVar3.field_0x300e.x != 0) {
            return checkWolfAttackAction();
        }

        if (checkWolfSlowDash()) {
            field_0x30d2 = daAlinkHIO_wlMove_c0::m.field_0x5C;
        } else if (field_0x2fc7 == 2) {
            field_0x30d2 = daAlinkHIO_wlMove_c0::m.field_0x60;
        } else {
            field_0x30d2 = daAlinkHIO_wlMove_c0::m.field_0x58;
        }

        checkNextActionWolf(1);
        return 1;
    } else if (frameCtrl_p->checkPass(2.5f) || frameCtrl_p->checkPass(14.0f)) {
        field_0x2f9d = 0x60;
        onResetFlg1(RFLG1_UNK_30);
    } else if (frameCtrl_p->checkPass(8.0f) || frameCtrl_p->checkPass(16.5f)) {
        field_0x2f9d = 0x18;
        onResetFlg1(RFLG1_UNK_C);
    }

    field_0x30a2 = field_0x2fec;
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfDash() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfDash__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8012D8C0-8012DA5C 128200 019C+00 2/2 0/0 0/0 .text procWolfDashReverseInit__9daAlink_cFi */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfDashReverseInit(int param_0) {
    commonProcInit(PROC_WOLF_DASH_REVERSE);
    setSingleAnimeWolf(WANM_ATTACK_RECOIL_GROUND, daAlinkHIO_wlMove_c0::m.field_0x3C.mSpeed,
                       daAlinkHIO_wlMove_c0::m.field_0x3C.mStartFrame, 5,
                       daAlinkHIO_wlMove_c0::m.field_0x3C.mInterpolation);

    if (param_0) {
        current.angle.y = field_0x3102 + 0x8000;
        if (cLib_distanceAngleS(current.angle.y, shape_angle.y) > 0x6000) {
            mNormalSpeed = 10.0f;
            speed.y = 10.0f;
        } else {
            mNormalSpeed = 20.0f;
            speed.y = 15.0f;
        }

        mProcVar2.field_0x300c = 1;
    } else {
        mNormalSpeed = daAlinkHIO_wlMove_c0::m.field_0xD8;
        speed.y = daAlinkHIO_wlMove_c0::m.field_0xDC;
        current.angle.y += 0x8000;
        mProcVar2.field_0x300c = 0;
    }

    dComIfGp_getVibration().StartShock(5, 15, cXyz(0.0f, 1.0f, 0.0f));
    dKy_Sound_set(current.pos, 100, fopAcM_GetID(this), 5);
    seStartOnlyReverb(Z2SE_WOLF_BODYATTACK);
    field_0x3588 = l_wolfBaseAnime;
    onResetFlg0(RFLG0_FRONT_ROLL_CRASH);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfDashReverseInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfDashReverseInit__9daAlink_cFi.s"
}
#pragma pop
#endif

/* 8012DA5C-8012DBA8 12839C 014C+00 1/0 0/0 0/0 .text            procWolfDashReverse__9daAlink_cFv
 */
int daAlink_c::procWolfDashReverse() {
    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;

    if (mProcVar2.field_0x300c == 0) {
        field_0x2f99 = 4;
    }

    if (!checkModeFlg(0x2)) {
        if (checkAnmEnd(frameCtrl_p)) {
            checkNextActionWolf(0);
        } else if (frameCtrl_p->getFrame() > daAlinkHIO_wlMove_c0::m.field_0x3C.mCheckFrame) {
            checkNextActionWolf(1);
        }
    } else if (mProcVar2.field_0x300c != 0) {
        mProcVar2.field_0x300c = 0;
    } else if (((mLinkAcch.ChkGroundHit() || checkEndResetFlg2(ERFLG2_UNK_100)) &&
                checkModeFlg(0x2)))
    {
        if (checkWolfLandAction(0)) {
            return 1;
        }

        mNormalSpeed = FLOAT_LABEL(lit_6108);
        frameCtrl_p->setFrame(daAlinkHIO_wlMove_c0::m.field_0x3C.mSpeed + frameCtrl_p->getFrame());
        getNowAnmPackUnder(UNDER_0)->setFrame(frameCtrl_p->getFrame());
        frameCtrl_p->setRate(daAlinkHIO_wlMove_c0::m.field_0x3C.mSpeed);
        frameCtrl_p->setEnd(daAlinkHIO_wlMove_c0::m.field_0x3C.mEndFrame);

        current.angle.y = shape_angle.y;
        offModeFlg(0x2);
        onModeFlg(0x8000);
    }

    return 1;
}

/* 8012DBA8-8012DC44 1284E8 009C+00 1/1 0/0 0/0 .text procWolfAtnActorMoveInit__9daAlink_cFv */
int daAlink_c::procWolfAtnActorMoveInit() {
    if (!commonProcInitNotSameProc(PROC_WOLF_ATN_AC_MOVE)) {
        return 0;
    }

    if (checkZeroSpeedF()) {
        onModeFlg(1);
    }

    setWolfAtnMoveDirection();
    setBlendWolfAtnMoveAnime(daAlinkHIO_wlMove_c0::m.field_0x94);

    if (checkWolfAtnWait()) {
        voiceStartLevel(Z2SE_WL_V_ROAR);
    }

    return 1;
}

/* 8012DC44-8012DD08 128584 00C4+00 1/0 0/0 0/0 .text            procWolfAtnActorMove__9daAlink_cFv
 */
int daAlink_c::procWolfAtnActorMove() {
    setWolfAtnMoveDirection();

    if (!checkNextActionWolf(0)) {
        if (checkZeroSpeedF()) {
            onModeFlg(1);

            if (checkWolfWaitSlipPolygon() && !checkInputOnR()) {
                return procWolfWaitSlipInit();
            }
        } else {
            offModeFlg(1);
        }

        setBlendWolfAtnMoveAnime(lit_6041);

        if (checkWolfAtnWait()) {
            voiceStartLevel(Z2SE_WL_V_ROAR);
        }
    }

    return 1;
}

/* 8012DD08-8012DDB4 128648 00AC+00 1/1 0/0 0/0 .text            procWolfWaitTurnInit__9daAlink_cFv
 */
int daAlink_c::procWolfWaitTurnInit() {
    if (!commonProcInitNotSameProc(PROC_WOLF_WAIT_TURN)) {
        return 0;
    }

    f32 anm_speed;
    if (checkWolfDashMode()) {
        anm_speed = daAlinkHIO_wlMove_c0::m.field_0x74;
    } else {
        anm_speed = daAlinkHIO_wlMoveNoP_c0::m.field_0x18;
    }

    setSingleAnimeWolfBaseSpeed(WANM_WALK_A, anm_speed, daAlinkHIO_wlMove_c0::m.field_0x94);

    if (checkEventRun()) {
        mNormalSpeed = FLOAT_LABEL(lit_6108);
    }

    mProcVar3.field_0x300e.x = field_0x2fe2;
    current.angle.y = shape_angle.y;
    return 1;
}

/* 8012DDB4-8012DEC8 1286F4 0114+00 1/0 0/0 0/0 .text            procWolfWaitTurn__9daAlink_cFv */
int daAlink_c::procWolfWaitTurn() {
    f32 step_amount;
    if (checkWolfDashMode()) {
        step_amount = daAlinkHIO_wlMove_c0::m.field_0x6C;
    } else {
        step_amount = daAlinkHIO_wlMoveNoP_c0::m.field_0x10;
    }
    cLib_chaseF(&mNormalSpeed, FLOAT_LABEL(lit_6108), step_amount);

    if (checkWolfGroundSpecialMode()) {
        return 1;
    }

    s16 var_r31 = cLib_addCalcAngleS(&shape_angle.y, mProcVar3.field_0x300e.x, 30, 0x3CDF, 8000);
    current.angle.y = shape_angle.y;

    if (checkNextActionFromButton()) {
        return 1;
    }

    if (var_r31 == 0) {
        if (checkEventRun()) {
            if (mDemo.getDemoMode() == 5) {
                dComIfGp_evmng_cutEnd(field_0x3184);
            } else {
                checkNextActionWolf(0);
            }
        } else {
            checkNextActionWolf(0);
        }
    }

    return 1;
}

/* 8012DEC8-8012E0AC 128808 01E4+00 2/2 0/0 0/0 .text            procWolfSideStepInit__9daAlink_cFi
 */
int daAlink_c::procWolfSideStepInit(int param_0) {
    if (field_0x2f98 == 1 && !param_0 && i_checkFirstMidnaDemo() && !checkWolfGrabAnime() &&
        field_0x2fcc != 0)
    {
        return procWolfBackJumpInit(0);
    }

    commonProcInit(PROC_WOLF_SIDESTEP);

    if (field_0x2f98 == 0 || param_0) {
        field_0x2f98 = 1;
    }

    if (field_0x2f98 == 1) {
        if (mTargetedActor != NULL) {
            mProcVar2.field_0x300c = cLib_targetAngleY(&current.pos, &mTargetedActor->eyePos);
        } else {
            mProcVar2.field_0x300c = shape_angle.y;
        }

        current.angle.y = shape_angle.y + 0x8000;
        setSingleAnimeWolfParam(WANM_BACK_JUMP_START, &daAlinkHIO_wlSideStep_c0::m.field_0x28);
        mNormalSpeed = daAlinkHIO_wlSideStep_c0::m.field_0x58;
        speed.y = daAlinkHIO_wlSideStep_c0::m.field_0x5C;
        mProcVar1.field_0x300a = 0;
    } else {
        shape_angle.y = field_0x2fe4;

        daAlink_WANM jump_anm;
        if (field_0x2f98 == 2) {
            jump_anm = WANM_SIDE_JUMP_LEFT_START;
            current.angle.y = shape_angle.y + 0x4000;
        } else {
            jump_anm = WANM_SIDE_JUMP_RIGHT_START;
            current.angle.y = shape_angle.y - 0x4000;
        }

        setSingleAnimeWolfParam(jump_anm, &daAlinkHIO_wlSideStep_c0::m.field_0x0);
        mNormalSpeed = daAlinkHIO_wlSideStep_c0::m.field_0x50;
        speed.y = daAlinkHIO_wlSideStep_c0::m.field_0x54;
        mProcVar1.field_0x300a = 1;
    }

    mProcVar3.field_0x300e.z = 0;
    mProcVar3.field_0x300e.x = 0;
    voiceStart(Z2SE_WL_V_BREATH_JUMP);
    return 1;
}

/* 8012E0AC-8012E1E8 1289EC 013C+00 1/0 0/0 0/0 .text            procWolfSideStep__9daAlink_cFv */
int daAlink_c::procWolfSideStep() {
    if (mProcVar1.field_0x300a == 0) {
        cLib_addCalcAngleS(
            &shape_angle.y, mProcVar2.field_0x300c, daAlinkHIO_wlAtnMove_c0::m.field_0x4,
            daAlinkHIO_wlAtnMove_c0::m.field_0x0, daAlinkHIO_wlAtnMove_c0::m.field_0x2);
        current.angle.y = shape_angle.y + 0x8000;
    } else if (mTargetedActor != NULL) {
        cLib_addCalcAngleS(&shape_angle.y, fopAcM_searchActorAngleY(this, mTargetedActor), 5, 0x5E8,
                           0x13C);

        if (field_0x2f98 == 2) {
            current.angle.y = shape_angle.y + 0x4000;
        } else {
            current.angle.y = shape_angle.y - 0x4000;
        }
    }

    checkWolfAtnDoCharge();

    if (mLinkAcch.ChkGroundHit() && mProcVar3.field_0x300e.x != 0) {
        return procWolfSideStepLandInit(mProcVar3.field_0x300e.z);
    }

    if (mDemo.getDemoMode() != 0x10 &&
        current.pos.y < mLastJumpPos.y - daAlinkHIO_wlSideStep_c0::m.field_0x60)
    {
        field_0x2f98 = 0;
        return procWolfFallInit(2, daAlinkHIO_wlSideStep_c0::m.field_0x64);
    }

    mProcVar3.field_0x300e.x = 1;
    return 1;
}

/* 8012E1E8-8012E2DC 128B28 00F4+00 1/1 0/0 0/0 .text procWolfSideStepLandInit__9daAlink_cFs */
int daAlink_c::procWolfSideStepLandInit(s16 param_0) {
    commonProcInit(PROC_WOLF_SIDESTEP_LAND);

    if (field_0x2f98 == 1) {
        setSingleAnimeWolfParam(WANM_BACK_JUMP_END, &daAlinkHIO_wlSideStep_c0::m.field_0x3C);
        field_0x3478 = daAlinkHIO_wlSideStep_c0::m.field_0x3C.mCheckFrame;
        field_0x2fcc = 10;
    } else {
        field_0x2fcc = 0;
        setSingleAnimeWolfParam(field_0x2f98 == 2 ? WANM_SIDE_JUMP_LEFT_END :
                                                    WANM_SIDE_JUMP_RIGHT_END,
                                &daAlinkHIO_wlSideStep_c0::m.field_0x14);
        field_0x3478 = daAlinkHIO_wlSideStep_c0::m.field_0x14.mCheckFrame;
    }

    mProcVar3.field_0x300e.z = param_0;
    field_0x2f9d = 4;
    setFootEffectProcType(2);
    onResetFlg1(RFLG1_UNK_C);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    setStepLandVibration();

    return 1;
}

/* 8012E2DC-8012E398 128C1C 00BC+00 1/0 0/0 0/0 .text            procWolfSideStepLand__9daAlink_cFv
 */
int daAlink_c::procWolfSideStepLand() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    if (field_0x2fcc != 0) {
        field_0x2fcc = 10;
    }

    setWolfAtnMoveDirection();
    checkWolfAtnDoCharge();

    if (frameCtrl->checkAnmEnd()) {
        if (mDemo.getDemoMode() == 0x10) {
            dComIfGp_evmng_cutEnd(field_0x3184);
        } else {
            checkNextActionWolf(0);
        }
    } else if (frameCtrl->getFrame() > field_0x3478) {
        checkNextActionWolf(1);
    }

    return 1;
}

/* 8012E398-8012E508 128CD8 0170+00 3/3 0/0 0/0 .text            procWolfBackJumpInit__9daAlink_cFi
 */
int daAlink_c::procWolfBackJumpInit(int param_0) {
    commonProcInit(PROC_WOLF_BACKJUMP);

    if (param_0 == 1) {
        setSingleAnimeWolfParam(WANM_BACKFLIP_START, &daAlinkHIO_wlAtDown_c0::m.field_0x50);
        mNormalSpeed = daAlinkHIO_wlAtDown_c0::m.field_0x94;
        speed.y = daAlinkHIO_wlAtDown_c0::m.field_0x98;
        voiceStart(Z2SE_WL_V_BREATH_JUMP);
    } else {
        if (param_0 == 2) {
            setSingleAnimeWolf(WANM_BACKFLIP_START, daAlinkHIO_wlAtCjump_c0::m.field_0x44,
                               daAlinkHIO_wlAtCjump_c0::m.field_0x40,
                               daAlinkHIO_wlBackJump_c0::m.field_0x0.mEndFrame,
                               daAlinkHIO_wlBackJump_c0::m.field_0x0.mInterpolation);
        } else {
            setSingleAnimeWolfParam(WANM_BACKFLIP_START, &daAlinkHIO_wlBackJump_c0::m.field_0x0);
            voiceStart(Z2SE_WL_V_BREATH_JUMP);
        }

        mNormalSpeed = daAlinkHIO_wlBackJump_c0::m.field_0x28;
        speed.y = daAlinkHIO_wlBackJump_c0::m.field_0x2C;
    }

    if (mTargetedActor != NULL && param_0 == 0) {
        mProcVar2.field_0x300c = cLib_targetAngleY(&current.pos, &mTargetedActor->eyePos);
    } else {
        mProcVar2.field_0x300c = shape_angle.y;
    }

    current.angle.y = shape_angle.y + 0x8000;
    field_0x3478 = mNormalSpeed;
    mProcVar3.field_0x300e.z = 0;

    if (param_0 == 0) {
        mProcVar3.field_0x300e.y = 1;
    } else {
        mProcVar3.field_0x300e.y = 0;
    }

    return 1;
}

/* 8012E508-8012E5F4 128E48 00EC+00 1/0 0/0 0/0 .text            procWolfBackJump__9daAlink_cFv */
int daAlink_c::procWolfBackJump() {
    cLib_addCalcAngleS(&shape_angle.y, mProcVar2.field_0x300c, daAlinkHIO_wlAtnMove_c0::m.field_0x4,
                       daAlinkHIO_wlAtnMove_c0::m.field_0x0, daAlinkHIO_wlAtnMove_c0::m.field_0x2);
    current.angle.y = shape_angle.y - -0x8000;

    if (mProcVar3.field_0x300e.y != 0) {
        checkWolfAtnDoCharge();
    }

    backJumpSpeedDec();

    if (mUnderFrameCtrl[0].checkAnmEnd() && mLinkAcch.ChkGroundHit()) {
        procWolfBackJumpLandInit(mProcVar3.field_0x300e.z, mProcVar3.field_0x300e.y);
    } else if (mDemo.getDemoMode() != 0x10 &&
               current.pos.y < mLastJumpPos.y - daAlinkHIO_wlBackJump_c0::m.field_0x30)
    {
        field_0x2f98 = 0;
        procWolfFallInit(2, daAlinkHIO_wlBackJump_c0::m.field_0x34);
    }

    return 1;
}

/* 8012E5F4-8012E684 128F34 0090+00 1/1 0/0 0/0 .text procWolfBackJumpLandInit__9daAlink_cFss */
int daAlink_c::procWolfBackJumpLandInit(s16 param_0, s16 param_1) {
    commonProcInit(PROC_WOLF_BACKJUMP_LAND);
    setSingleAnimeWolfParam(WANM_BACKFLIP_END, &daAlinkHIO_wlBackJump_c0::m.field_0x14);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    field_0x2f9d = 4;
    setFootEffectProcType(2);
    field_0x2fcc = 10;
    mProcVar3.field_0x300e.z = param_0;
    mProcVar3.field_0x300e.y = param_1;
    setStepLandVibration();

    return 1;
}

/* 8012E684-8012E754 128FC4 00D0+00 1/0 0/0 0/0 .text            procWolfBackJumpLand__9daAlink_cFv
 */
int daAlink_c::procWolfBackJumpLand() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    if (field_0x2fcc != 0) {
        field_0x2fcc = 10;
    }

    setWolfAtnMoveDirection();

    if (mProcVar3.field_0x300e.y != 0) {
        checkWolfAtnDoCharge();
    }

    if (frameCtrl->checkAnmEnd()) {
        if (mDemo.getDemoMode() == 0x10) {
            dComIfGp_evmng_cutEnd(field_0x3184);
        } else {
            checkNextActionWolf(0);
        }
    } else if (frameCtrl->getFrame() > daAlinkHIO_wlBackJump_c0::m.field_0x14.mCheckFrame) {
        checkNextActionWolf(1);
    }

    return 1;
}

/* 8012E754-8012E83C 129094 00E8+00 2/2 0/0 0/0 .text            procWolfHowlInit__9daAlink_cFi */
int daAlink_c::procWolfHowlInit(int param_0) {
    if (checkEventRun() && mProcID == PROC_WOLF_HOWL) {
        return 0;
    }

    commonProcInit(PROC_WOLF_HOWL);

    if (param_0 != 0) {
        setSingleAnimeWolfParam(WANM_HOWL_SIT, &daAlinkHIO_wlHowl_c0::m.field_0x14);
        onModeFlg(0x800000);
        field_0x3478 = daAlinkHIO_wlHowl_c0::m.field_0x14.mCheckFrame;
        mProcVar3.field_0x300e.x = 1;
    } else {
        setSingleAnimeWolfParam(WANM_HOWL, &daAlinkHIO_wlHowl_c0::m.field_0x0);
        field_0x3478 = daAlinkHIO_wlHowl_c0::m.field_0x0.mCheckFrame;
        mProcVar3.field_0x300e.x = 0;
    }

    mNormalSpeed = FLOAT_LABEL(lit_6108);
    mProcVar2.field_0x300c = 0;

    return 1;
}

/* 8012E83C-8012E9C8 12917C 018C+00 1/0 0/0 0/0 .text            procWolfHowl__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfHowl() {
    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;

    if (checkAnmEnd(frameCtrl_p)) {
        if (doButton()) {
            procWolfHowlInit(mProcVar3.field_0x300e.x);
        } else {
            checkNextActionWolf(0);
        }
    } else if (frameCtrl_p->getFrame() > field_0x3478) {
        if (doButton()) {
            procWolfHowlInit(mProcVar3.field_0x300e.x);
        } else {
            checkNextActionWolf(1);
        }
    } else {
        if ((!doButton() || mProcVar2.field_0x300c != 0) && mDemo.getDemoMode() != 0x15 &&
            mDemo.getDemoMode() != 0x16)
        {
            if (!(frameCtrl_p->getFrame() < 38.0f)) {
                mProcVar2.field_0x300c = 1;
            }
        } else if (frameCtrl_p->getFrame() > 56.0f) {
            frameCtrl_p->setFrame((frameCtrl_p->getFrame() - 56.0f) + 38.0f);
        }

        if (frameCtrl_p->getFrame() >= 38.0f && frameCtrl_p->getFrame() <= 56.0f) {
            onResetFlg0(RFLG0_UNK_40000000);
            voiceStartLevel(Z2SE_WL_V_HOWL);
            dKy_Sound_set(current.pos, 100, fopAcM_GetID(this), 1);
        }
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfHowl() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfHowl__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8012E9C8-8012EB94 129308 01CC+00 2/2 0/0 0/0 .text            procWolfAutoJumpInit__9daAlink_cFi
 */
int daAlink_c::procWolfAutoJumpInit(int param_0) {
    commonProcInit(PROC_WOLF_AUTO_JUMP);

    f32 var_f1;
    f32 var_f31;
    f32 var_f30;
    s16 var_r30;

    if (checkWolfDashMode() && field_0x2fc7 != 3) {
        var_f1 = daAlinkHIO_wlAutoJump_c0::m.field_0x00.mSpeed;
        field_0x594 = daAlinkHIO_wlAutoJump_c0::m.field_0x70;
        var_f31 = daAlinkHIO_wlAutoJump_c0::m.field_0x48;
        var_f30 = daAlinkHIO_wlAutoJump_c0::m.field_0x4c;
        var_r30 = daAlinkHIO_wlAutoJump_c0::m.field_0x40;
        onNoResetFlg2(FLG2_WOLF_DASH_AUTO_JUMP);
    } else {
        var_f1 = daAlinkHIO_wlAutoJump_c0::m.field_0x60;
        field_0x594 = daAlinkHIO_wlAutoJump_c0::m.field_0x74;
        var_f31 = daAlinkHIO_wlAutoJump_c0::m.field_0x68;
        var_f30 = daAlinkHIO_wlAutoJump_c0::m.field_0x6c;
        var_r30 = daAlinkHIO_wlAutoJump_c0::m.field_0x42;
    }

    setSingleAnimeWolf(WANM_JUMP_ATTACK_START, var_f1,
                       daAlinkHIO_wlAutoJump_c0::m.field_0x00.mStartFrame,
                       daAlinkHIO_wlAutoJump_c0::m.field_0x00.mEndFrame,
                       daAlinkHIO_wlAutoJump_c0::m.field_0x00.mInterpolation);
    if (speedF > field_0x594 || param_0 || daAlinkHIO_wlAutoJump_c0::m.field_0x3c == true) {
        speedF = field_0x594;
    } else if (speedF < var_f31) {
        speedF = var_f31;
    }

    mNormalSpeed = speedF * var_f30;
    speed.y = mNormalSpeed * cM_ssin(var_r30);
    mNormalSpeed *= cM_scos(var_r30);

    field_0x3588 = l_wolfBaseAnime;
    field_0x33b0 = l_wolfBaseAnime.y;
    current.angle.y = shape_angle.y;

    offNoResetFlg0(FLG0_UNK_40000);
    onResetFlg0(RFLG0_UNK_100);
    voiceStart(Z2SE_WL_V_BREATH_JUMP);
    mProcVar2.field_0x300c = 1;
    return 1;
}

/* 8012EB94-8012EDD0 1294D4 023C+00 1/0 0/0 0/0 .text            procWolfAutoJump__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfAutoJump() {
    if (mSpecialMode != 0x27) {
        if (checkInputOnR() && getDirectionFromCurrentAngle() == DIR_BACKWARD) {
            cLib_chaseF(&mNormalSpeed, 0.0f, field_0x33a8 * 0.2f);
        } else if (!checkInputOnR()) {
            cLib_chaseF(&mNormalSpeed, 0.0f, 0.1f);
        }
    }

    field_0x2f99 = 7;

    if (mLinkAcch.ChkGroundHit()) {
        return checkWolfLandAction(0);
    }

    if (checkFrontWallTypeAction()) {
        return 1;
    }

    if (checkWolfRopeJumpHang()) {
        return 1;
    }

    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;

    if (!checkUnderMove0BckNoArcWolf(WANM_FALL_LAND) &&
        (mFallHeight - current.pos.y) * 0.01f > daAlinkHIO_wlDamFall_c0::m.field_0x38)
    {
        field_0x2f99 = 12;
        setSingleAnimeWolfBaseSpeed(WANM_FALL_LAND, 0.0f, daAlinkHIO_wlDamFall_c0::m.field_0x3C);
    } else if (checkUnderMove0BckNoArcWolf(WANM_JUMP_ATTACK_START)) {
        if (speed.y < -gravity) {
            field_0x2f99 = 12;
            setSingleAnimeWolfParam(WANM_JUMP_ATTACK, &daAlinkHIO_wlAutoJump_c0::m.field_0x28);
        } else if (checkAnmEnd(frameCtrl_p)) {
            field_0x2f99 = 12;
            setSingleAnimeWolf(WANM_JUMP_ATTACK, 0.0f,
                               daAlinkHIO_wlAutoJump_c0::m.field_0x28.mStartFrame,
                               daAlinkHIO_wlAutoJump_c0::m.field_0x28.mEndFrame,
                               daAlinkHIO_wlAutoJump_c0::m.field_0x28.mInterpolation);
            mProcVar2.field_0x300c = 0;
        }
    } else if (mProcVar2.field_0x300c == 0 && checkUnderMove0BckNoArcWolf(WANM_JUMP_ATTACK) &&
               speed.y < -gravity)
    {
        mProcVar2.field_0x300c = 1;
        frameCtrl_p->setRate(daAlinkHIO_wlAutoJump_c0::m.field_0x28.mSpeed);
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfAutoJump() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfAutoJump__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8012EDD0-8012EFB8 129710 01E8+00 12/12 0/0 0/0 .text            procWolfFallInit__9daAlink_cFif
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfFallInit(int param_0, f32 i_morf) {
    if (!commonProcInitNotSameProc(PROC_WOLF_FALL)) {
        return 0;
    }

    mProcVar3.field_0x300e.z = 0;

    if (param_0 == 1) {
        mNormalSpeed = 0.0f;
        speed.y = 0.0f;
        current.angle.y = shape_angle.y;
    } else if (param_0 == 4) {
        current.angle.y = field_0x2ffe;
        dComIfGp_getVibration().StartShock(6, 31, cXyz(0.0f, 1.0f, 0.0f));
        setDamagePointNormal(field_0x318c);
        onNoResetFlg1(FLG1_THROW_DAMAGE);

        if (mDamageTimer != 0) {
            onModeFlg(8);
        }

        mNormalSpeed = field_0x3408;
        speed.y = field_0x340c;
        mProcVar3.field_0x300e.z = 1;
    }

    setSingleAnimeWolfBaseSpeed(WANM_JUMP_ATTACK, 0.0f, i_morf);

    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;
    frameCtrl_p->setFrame(frameCtrl_p->getEnd() - 0.001f);
    getNowAnmPackUnder(UNDER_0)->setFrame(frameCtrl_p->getFrame());

    field_0x3588 = l_wolfBaseAnime;
    field_0x2f99 = 12;
    resetBasAnime();

    offNoResetFlg0(FLG0_UNK_40000);
    if (param_0 != 4 && current.angle.y == shape_angle.y) {
        if (mNormalSpeed > 1.0f) {
            mProcVar0.field_0x3008 = 2;
        } else {
            mProcVar0.field_0x3008 = 1;
        }
    } else {
        mProcVar0.field_0x3008 = 0;
    }

    mProcVar1.field_0x300a = 7;
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfFallInit(int param_0, f32 param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfFallInit__9daAlink_cFif.s"
}
#pragma pop
#endif

/* 8012EFB8-8012F138 1298F8 0180+00 1/0 0/0 0/0 .text            procWolfFall__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfFall() {
    if (mProcVar3.field_0x300e.z == 0) {
        cLib_chaseF(&mNormalSpeed, 0.0f, 0.1f);
    } else if (mProcVar3.field_0x300e.z > 0) {
        mProcVar3.field_0x300e.z = -1;
        return 1;
    }

    field_0x2f99 = 4;

    if (mLinkAcch.ChkGroundHit()) {
        return checkWolfLandAction(0);
    }

    if (mProcVar0.field_0x3008 == 1) {
        if (mProcVar1.field_0x300a > 0) {
            mProcVar1.field_0x300a--;
        } else if (checkInputOnR() && getDirectionFromShapeAngle() == DIR_FORWARD &&
                   checkFrontWallTypeAction())
        {
            return 1;
        }
    } else if (mProcVar0.field_0x3008 == 2 && checkFrontWallTypeAction()) {
        return 1;
    }

    if (checkWolfRopeJumpHang()) {
        return 1;
    }

    if (!checkUnderMove0BckNoArcWolf(WANM_FALL_LAND) &&
        (mFallHeight - current.pos.y) * 0.01f > daAlinkHIO_wlDamFall_c0::m.field_0x38)
    {
        field_0x2f99 = 12;
        setSingleAnimeWolfBaseSpeed(WANM_FALL_LAND, 0.0f, daAlinkHIO_wlDamFall_c0::m.field_0x3C);
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfFall() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfFall__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8012F138-8012F1F0 129A78 00B8+00 2/2 0/0 0/0 .text            procWolfLandInit__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfLandInit() {
    commonProcInit(PROC_WOLF_LAND);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    field_02f99 = 12;

    setSingleWolfAnimeParam(WANM_JUMP_ATTACK_END, &daAlinkHIO_wlAutoJump_c0::m.field_0x14);
    field_0x3478 = daAlinkHIO_wlAutoJump_c0::m.field_0x14.mCheckFrame;
    mProcVar2.field_0x300c = 1;

    field_0x2f9d = 4;
    setFootEffectProcType(4);

    dComIfGp_getVibration().StartShock(cXyz(0.0f, 1.0f, 0.0f));
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfLandInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfLandInit__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8012F1F0-8012F278 129B30 0088+00 1/0 0/0 0/0 .text            procWolfLand__9daAlink_cFv */
int daAlink_c::procWolfLand() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    if (mProcVar2.field_0x300c != 0) {
        field_0x2f99 = 4;
    }

    if (frameCtrl->checkAnmEnd()) {
        checkNextActionWolf(0);
    } else if (frameCtrl->getFrame() > field_0x3478) {
        checkNextActionWolf(1);
    }

    return 1;
}

/* 8012F278-8012F358 129BB8 00E0+00 1/1 0/0 0/0 .text            procWolfSitInit__9daAlink_cFi */
int daAlink_c::procWolfSitInit(int param_0) {
    if (!commonProcInitNotSameProc(PROC_WOLF_SIT)) {
        return 0;
    }

    if (param_0 != 0 && !checkUnderMove0BckNoArcWolf(WANM_WAIT_SIT) &&
        !checkUnderMove0BckNoArcWolf(WANM_HOWL_SIT))
    {
        setSingleAnimeWolfParam(WANM_SIT, &daAlinkHIO_wlLie_c0::m.field_0x0);
        field_0x3198 = 0;
    } else {
        field_0x3198 = 1;

        if (!checkUnderMove0BckNoArcWolf(WANM_WAIT_SIT)) {
            setSingleAnimeWolfBaseSpeed(WANM_WAIT_SIT, daAlinkHIO_wlLie_c0::m.field_0x44,
                                        daAlinkHIO_wlLie_c0::m.field_0x48);
        }
    }

    current.angle.y = shape_angle.y;
    return 1;
}

/* 8012F358-8012F41C 129C98 00C4+00 1/0 0/0 0/0 .text            procWolfSit__9daAlink_cFv */
int daAlink_c::procWolfSit() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    cLib_chaseF(&mNormalSpeed, FLOAT_LABEL(lit_6108),
                checkWolfDashMode() ? daAlinkHIO_wlMove_c0::m.field_0x6C :
                                      daAlinkHIO_wlMoveNoP_c0::m.field_0x10);

    if (!spActionButton() && mDemo.getDemoMode() != 0xF) {
        checkNextActionWolfFromLie();
    } else if (frameCtrl->checkAnmEnd()) {
        setSingleAnimeWolfBaseSpeed(WANM_WAIT_SIT, daAlinkHIO_wlLie_c0::m.field_0x44,
                                    daAlinkHIO_wlLie_c0::m.field_0x48);
        field_0x3198 = 1;
    }

    return 1;
}

/* 8012F41C-8012F500 129D5C 00E4+00 1/1 0/0 0/0 .text            procWolfStepMoveInit__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfStepMoveInit() {
    commonProcInit(PROC_WOLF_STEP_MOVE);
    setSingleAnimeWolfParam(WANM_BUMP_START, &daAlinkHIO_wlWallHang_c0::m.field_0x50);
    field_0x3478 = 0.5f * mNormalSpeed;
    mNormalSpeed = 0.0f;
    mProcVar2.field_0x300c = 0;

    field_0x3588 = l_wolfBaseAnime;
    current.pos.x -= cM_ssin(shape_angle.y) * 10.0f;
    current.pos.z -= cM_scos(shape_angle.y) * 10.0f;

    field_0x2060->getOldFrameTransInfo(0)->mTranslate.z += 10.0f;
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfStepMoveInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfStepMoveInit__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8012F500-8012F634 129E40 0134+00 1/0 0/0 0/0 .text            procWolfStepMove__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfStepMove() {
    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;

    if (mProcVar2.field_0x300c != 0) {
        field_0x2f99 = 4;

        if (checkAnmEnd(frameCtrl_p)) {
            return checkNextActionWolf(0);
        }

        if (frameCtrl_p->getFrame() > daAlinkHIO_wlWallHang_c0::m.field_0x64.mCheckFrame) {
            mNormalSpeed = field_0x3478;

            if (checkNextActionWolf(1)) {
                return 1;
            }

            mNormalSpeed = 0.0f;
        }
    } else if (checkAnmEnd(frameCtrl_p)) {
        setSingleAnimeWolfParam(WANM_BUMP_END, &daAlinkHIO_wlWallHang_c0::m.field_0x64);
        current.pos.set(field_0x34ec.x + cM_ssin(shape_angle.y) * 2.0f, field_0x34ec.y,
                        field_0x34ec.z + cM_scos(shape_angle.y) * 2.0f);
        field_0x2f99 = 0x50;
        mProcVar2.field_0x300c = 1;
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfStepMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfStepMove__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8012F634-8012F6EC 129F74 00B8+00 1/1 0/0 0/0 .text            procWolfSlipInit__9daAlink_cFv */
int daAlink_c::procWolfSlipInit() {
    commonProcInit(PROC_WOLF_SLIP);
    setSingleAnimeWolfParam(WANM_SLIP, &daAlinkHIO_wlMove_c0::m.field_0x0);

    if (checkWolfDashMode()) {
        mNormalSpeed = speedF * daAlinkHIO_wlMove_c0::m.field_0xA4;
    } else {
        mNormalSpeed = speedF * daAlinkHIO_wlMoveNoP_c0::m.field_0x3C;
    }

    current.angle.y = shape_angle.y;
    field_0x3588 = l_wolfBaseAnime;
    setFootEffectProcType(1);
    return 1;
}

/* 8012F6EC-8012F840 12A02C 0154+00 1/0 0/0 0/0 .text            procWolfSlip__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfSlip() {
    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;

    field_0x2f99 = 5;

    f32 var_f2;
    if (checkWolfDashMode()) {
        var_f2 = daAlinkHIO_wlMove_c0::m.field_0xA8;
    } else {
        var_f2 = daAlinkHIO_wlMoveNoP_c0::m.field_0x40;
    }
    cLib_chaseF(&mNormalSpeed, 0.0f, var_f2);

    if (checkAnmEnd(frameCtrl_p)) {
        mNormalSpeed = 0.0f;

        if (checkInputOnR()) {
            procWolfSlipTurnInit(1);
        } else {
            current.pos.x += cM_scos(shape_angle.y) * 30.0f;
            current.pos.z -= cM_ssin(shape_angle.y) * 30.0f;

            field_0x2060->getOldFrameTransInfo(0)->mTranslate.x -= 30.0f;
            checkNextActionWolf(0);
        }
    } else {
        if (mNormalSpeed > 2.5f && frameCtrl_p->getFrame() >= 5.0f) {
            field_0x2f9d = 0x78;
        }

        seStartMapInfoLevel(Z2SE_FN_WOLF_SLIP);
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfSlip() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfSlip__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8012F840-8012F9C0 12A180 0180+00 2/2 0/0 0/0 .text            procWolfSlipTurnInit__9daAlink_cFi
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfSlipTurnInit(int param_0) {
    if (!commonProcInitNotSameProc(PROC_WOLF_SLIP_TURN)) {
        return 0;
    }

    f32 var_f31;
    if (param_0) {
        var_f31 = daAlinkHIO_wlMove_c0::m.field_0x14.mStartFrame;
        current.angle.y = shape_angle.y + 0x8000;

        if (checkWolfDashMode()) {
            field_0x347c = daAlinkHIO_wlMove_c0::m.field_0xAC;
        } else {
            field_0x347c = daAlinkHIO_wlMoveNoP_c0::m.field_0x44;
        }
    } else {
        var_f31 = daAlinkHIO_wlMove_c0::m.field_0xB0;
        current.angle.y = field_0x2fe2;
        setOldRootQuaternion(0, (shape_angle.y - current.angle.y) - 0x8000, 0);
        shape_angle.y = current.angle.y + 0x8000;
        field_0x347c = 10.0f;
    }

    setSingleAnimeWolf(WANM_TURN, daAlinkHIO_wlMove_c0::m.field_0x14.mSpeed, var_f31, 12,
                       daAlinkHIO_wlMove_c0::m.field_0x14.mInterpolation);
    voiceStart(Z2SE_WL_V_BREATH_JUMP);

    mNormalSpeed = 0.0f;
    field_0x2f99 = 5;
    field_0x3588 = l_wolfBaseAnime;
    field_0x3478 = 1.0f / (12.0f - var_f31);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfSlipTurnInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfSlipTurnInit__9daAlink_cFi.s"
}
#pragma pop
#endif

/* 8012F9C0-8012FB18 12A300 0158+00 1/0 0/0 0/0 .text            procWolfSlipTurn__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfSlipTurn() {
    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;
    field_0x2f99 = 5;

    f32 var_f31 =
        (0.5f - field_0x3478 * (frameCtrl_p->getFrame() - frameCtrl_p->getStart())) * 2.0f;
    field_0x3588.x = l_wolfBaseAnime.x * var_f31;
    field_0x3588.z = l_wolfBaseAnime.z * var_f31;

    if (checkAnmEnd(frameCtrl_p) && mLinkAcch.ChkGroundHit()) {
        return procWolfSlipTurnLandInit();
    }

    if (!checkModeFlg(2) && frameCtrl_p->getFrame() > 4.5f) {
        mNormalSpeed = field_0x347c;
        setJumpMode();
    } else if (checkModeFlg(2) &&
               current.pos.y < mLastJumpPos.y - daAlinkHIO_wlMove_c0::m.field_0xC0)
    {
        setOldRootQuaternion(0, -0x8000, 0);
        shape_angle.y = current.angle.y;
        field_0x2fe6 = shape_angle.y;
        procWolfFallInit(2, daAlinkHIO_wlMove_c0::m.field_0xC4);
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfSlipTurn() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfSlipTurn__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8012FB18-8012FBB4 12A458 009C+00 1/1 0/0 0/0 .text procWolfSlipTurnLandInit__9daAlink_cFv */
int daAlink_c::procWolfSlipTurnLandInit() {
    commonProcInit(PROC_WOLF_SLIP_TURN_LAND);

    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;
    setFrameCtrl(frameCtrl, 0, 0, daAlinkHIO_wlMove_c0::m.field_0x14.mEndFrame,
                 daAlinkHIO_wlMove_c0::m.field_0x14.mSpeed,
                 frameCtrl->getFrame() + daAlinkHIO_wlMove_c0::m.field_0x14.mSpeed);

    mNormalSpeed = lit_19379 * daAlinkHIO_wlMoveNoP_c0::m.field_0x8;
    field_0x2f99 = 5;
    setFootEffectProcType(2);
    field_0x2f9d = 8;
    field_0x2f98 = 0;
    return 1;
}

/* 8012FBB4-8012FC38 12A4F4 0084+00 1/0 0/0 0/0 .text            procWolfSlipTurnLand__9daAlink_cFv
 */
int daAlink_c::procWolfSlipTurnLand() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    field_0x2f99 = 5;

    if (frameCtrl->checkAnmEnd()) {
        checkNextActionWolf(0);
    } else if (frameCtrl->getFrame() > daAlinkHIO_wlMove_c0::m.field_0x14.mCheckFrame) {
        checkNextActionWolf(1);
    }

    return 1;
}

/* 8012FC38-8012FD2C 12A578 00F4+00 2/2 0/0 0/0 .text procWolfSlideReadyInit__9daAlink_cFsi */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfSlideReadyInit(s16 i_angle, int param_1) {
    commonProcInit(PROC_WOLF_SLIDE_READY);
    field_0x3090 = 8;
    current.angle.y = i_angle;
    setSingleAnimeWolfParam(WANM_SLIDE_FORWARD_START, &daAlinkHIO_wlSlide_c0::m.field_0x0);
    voiceStart(Z2SE_WL_V_SLIP_ROLL);

    mNormalSpeed = 0.0f;
    field_0x594 = daAlinkHIO_wlSlide_c0::m.field_0x54;
    field_0x3588 = l_wolfBaseAnime;
    field_0x3478 = 1.0f / mUnderFrameCtrl[0].getEnd();
    mProcVar2.field_0x300c = 0;
    mProcVar3.field_0x300e.x = param_1;
    field_0x814.SetWeight(0xFF);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfSlideReadyInit(s16 param_0, int param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfSlideReadyInit__9daAlink_cFsi.s"
}
#pragma pop
#endif

/* 8012FD2C-8012FE80 12A66C 0154+00 1/0 0/0 0/0 .text            procWolfSlideReady__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfSlideReady() {
    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;
    field_0x2f99 = 5;

    f32 var_f31 = (0.5f - field_0x3478 * frameCtrl_p->getFrame()) * 2.0f;
    field_0x3588.x = l_wolfBaseAnime.x * var_f31;
    field_0x3588.z = l_wolfBaseAnime.z * var_f31;

    cM3dGPla slide_poly;
    if (getSlidePolygon(&slide_poly)) {
        cLib_addCalcAngleS(&current.angle.y, slide_poly.mNormal.atan2sX_Z(), 4, 0x1000, 0x400);
        cLib_addCalcAngleS(&shape_angle.y, current.angle.y, 4, 0x1000, 0x400);
    }

    if (frameCtrl_p->checkPass(5.0f)) {
        mProcVar2.field_0x300c = 1;
    }

    if (checkAnmEnd(frameCtrl_p)) {
        if (mProcVar3.field_0x300e.x != 0) {
            procWolfSlideInit(current.angle.y, 1);
        } else {
            procWolfSlopeStartInit(1);
        }
    } else if (frameCtrl_p->checkPass(18.0f)) {
        offModeFlg(0x8000);
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfSlideReady() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfSlideReady__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8012FE80-8012FFA4 12A7C0 0124+00 2/2 0/0 0/0 .text            procWolfSlideInit__9daAlink_cFsi */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfSlideInit(s16 i_angle, int param_1) {
    if (cLib_distanceAngleS(i_angle, shape_angle.y) < 0x3800 && !param_1) {
        return procWolfSlideReadyInit(i_angle, 1);
    }

    commonProcInit(PROC_WOLF_SLIDE);
    field_0x814.SetWeight(0xFF);
    field_0x3090 = 8;
    current.angle.y = i_angle;
    setSingleAnimeWolfParam(WANM_SLIDE_BACKWARD, &daAlinkHIO_wlSlide_c0::m.field_0x14);

    if (param_1) {
        mUnderFrameCtrl[0].setFrame(daAlinkHIO_wlSlide_c0::m.field_0x14.mEndFrame);
        getNowAnmPackUnder(UNDER_0)->setFrame(daAlinkHIO_wlSlide_c0::m.field_0x14.mEndFrame);
    }

    dComIfGp_setPlayerStatus1(0, 0x200);
    field_0x2f9d = 0x78;
    setFootEffectProcType(1);
    field_0x594 = daAlinkHIO_wlSlide_c0::m.field_0x54;
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfSlideInit(s16 param_0, int param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfSlideInit__9daAlink_cFsi.s"
}
#pragma pop
#endif

/* 8012FFA4-801300D4 12A8E4 0130+00 1/0 0/0 0/0 .text            procWolfSlide__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfSlide() {
    cM3dGPla slide_poly;

    if (getSlidePolygon(&slide_poly)) {
        s16 var_r30 = slide_poly.mNormal.atan2sX_Z();
        cLib_addCalcAngleS(&current.angle.y, var_r30, 4, 0x1000, 0x400);
        cLib_addCalcAngleS(&shape_angle.y, current.angle.y + 0x8000, 4, 0x1000, 0x400);

        mNormalSpeed += daAlinkHIO_wlSlide_c0::m.field_0x58 *
                        ((1.0f - slide_poly.mNormal.y) * 0.5f + 1.0f) *
                        cM_scos(current.angle.y - var_r30);
        if (mNormalSpeed > field_0x594) {
            mNormalSpeed = field_0x594;
        }

        field_0x2f9d = 0x78;
        seStartMapInfoLevel(Z2SE_FN_WOLF_SLIP);
    } else {
        procWolfSlideLandInit();
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfSlide() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfSlide__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 801300D4-80130138 12AA14 0064+00 1/1 0/0 0/0 .text            procWolfSlideLandInit__9daAlink_cFv
 */
int daAlink_c::procWolfSlideLandInit() {
    commonProcInit(PROC_WOLF_SLIDE_LAND);
    setSingleAnimeWolfParam(WANM_SLIDE_BACKWARD_END, &daAlinkHIO_wlSlide_c0::m.field_0x28);
    mNormalSpeed *= lit_5943;
    field_0x814.SetWeight(0xFF);

    return 1;
}

/* 80130138-801301E4 12AA78 00AC+00 1/0 0/0 0/0 .text            procWolfSlideLand__9daAlink_cFv */
int daAlink_c::procWolfSlideLand() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    cLib_chaseF(&mNormalSpeed, FLOAT_LABEL(lit_6108), lit_7450);

    if (frameCtrl->checkAnmEnd()) {
        current.angle.y = shape_angle.y;
        checkNextActionWolf(0);
    } else if (frameCtrl->getFrame() > daAlinkHIO_wlSlide_c0::m.field_0x28.mCheckFrame) {
        s16 old_angle = current.angle.y;
        current.angle.y = shape_angle.y;

        if (!checkNextActionWolf(1)) {
            current.angle.y = old_angle;
        }
    }

    return 1;
}

/* 801301E4-80130268 12AB24 0084+00 3/3 0/0 0/0 .text            procWolfWaitSlipInit__9daAlink_cFv
 */
int daAlink_c::procWolfWaitSlipInit() {
    if (!commonProcInitNotSameProc(PROC_WOLF_WAIT_SLIP)) {
        return 0;
    }

    setSingleAnimeWolfBaseSpeed(WANM_ATN, daAlinkHIO_wlMove_c0::m.field_0xB8,
                                daAlinkHIO_wlMove_c0::m.field_0xBC);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    setWolfWaitSlip();
    field_0x2f9d = 120;
    setFootEffectProcType(1);

    return 1;
}

/* 80130268-80130440 12ABA8 01D8+00 1/0 0/0 0/0 .text            procWolfWaitSlip__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfWaitSlip() {
    f32 var_f31 = mNormalSpeed;
    mNormalSpeed = 0.0f;
    current.angle.y = shape_angle.y;

    if (checkInputOnR() && checkWolfWaitSlipPolygon()) {
        cM3dGPla tri;
        dComIfG_Bgsp().GetTriPla(mLinkAcch.m_gnd, &tri);
        s16 var_r30 = tri.mNormal.atan2sX_Z();

        if (getGroundAngle(&mLinkAcch.m_gnd, field_0x2fe2) < -field_0x3122) {
            int var_r3 = abs((s16)(var_r30 - shape_angle.y));

            if (var_r3 >= 0x6000) {
                return procWolfSlopeStartInit(0);
            } else if (var_r3 <= 0x2000) {
                return procWolfSlideReadyInit(current.angle.y, 0);
            }
        }
    }

    if (!checkNextActionWolf(0)) {
        f32 temp_f1 = setWolfWaitSlip();
        mNormalSpeed = var_f31 + (daAlinkHIO_wlSlide_c0::m.field_0x74 * (temp_f1 + 1.0f));
        if (mNormalSpeed > daAlinkHIO_wlSlide_c0::m.field_0x78) {
            mNormalSpeed = daAlinkHIO_wlSlide_c0::m.field_0x78;
        }

        field_0x2f9d = 0x78;

        s16 var_r4;
        if (mProcVar2.field_0x300c != 0) {
            var_r4 = current.angle.y + 0x8000;
        } else {
            var_r4 = current.angle.y;
        }

        cLib_addCalcAngleS(&shape_angle.y, var_r4, 4, daAlinkHIO_wlSlide_c0::m.field_0x50,
                           daAlinkHIO_wlSlide_c0::m.field_0x52);
        seStartMapInfoLevel(Z2SE_FN_WOLF_SLIP);
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfWaitSlip() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfWaitSlip__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 80130440-801304D4 12AD80 0094+00 2/2 0/0 0/0 .text procWolfSlopeStartInit__9daAlink_cFi */
int daAlink_c::procWolfSlopeStartInit(int param_0) {
    commonProcInit(PROC_WOLF_SLOPE_START);
    setSingleAnimeWolfParam(WANM_SLIDE_W, &daAlinkHIO_wlSlide_c0::m.field_0x3C);
    field_0x3588 = l_wolfBaseAnime;
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    current.angle.y = shape_angle.y;

    if (param_0) {
        field_0x2f99 = 13;
    }

    return 1;
}

/* 801304D4-8013056C 12AE14 0098+00 1/0 0/0 0/0 .text            procWolfSlopeStart__9daAlink_cFv */
int daAlink_c::procWolfSlopeStart() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    if (frameCtrl->checkAnmEnd()) {
        checkNextActionWolf(0);
    } else if (frameCtrl->getFrame() > daAlinkHIO_wlSlide_c0::m.field_0x3C.mCheckFrame) {
        if (!checkNextActionWolf(1)) {
            field_0x2f99 = 5;
        }
    } else {
        field_0x2f99 = 5;
    }

    return 1;
}

/* 8013056C-80130580 12AEAC 0014+00 1/1 0/0 0/0 .text daAlink_searchGoldWolf__FP10fopAc_ac_cPv */
static fopAc_ac_c* daAlink_searchGoldWolf(fopAc_ac_c* i_actor, void*) {
    if (fopAcM_GetName(i_actor) == PROC_NPC_GWOLF) {
        return i_actor;
    }

    return NULL;
}

/* 80130580-80130654 12AEC0 00D4+00 1/1 0/0 0/0 .text daAlink_searchWolfHowl__FP10fopAc_ac_cPv */
// matches with literals
#ifdef NONMATCHING
static void* daAlink_searchWolfHowl(fopAc_ac_c* i_actor, void* i_data) {
    s16 actor_name = fopAcM_GetName(i_actor);
    daAlink_c* player_p = daAlink_getAlinkActorClass();

    if ((actor_name == PROC_KAGO && dComIfGs_isEventBit(0xA10)) ||
        (actor_name == PROC_E_PM &&
         player_p->current.pos.abs2XZ(i_actor->current.pos) < 9000000.0f) ||
        actor_name == PROC_OBJ_SEKIZOA ||
        (*(fopAc_ac_c**)i_data == NULL && actor_name == player_p->getGrassHowlEventActor()))
    {
        *(fopAc_ac_c**)i_data = i_actor;
    }

    return NULL;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void* daAlink_searchWolfHowl(fopAc_ac_c* param_0, void* param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/daAlink_searchWolfHowl__FP10fopAc_ac_cPv.s"
}
#pragma pop
#endif

/* 80130654-80130700 12AF94 00AC+00 1/1 0/0 0/0 .text            setWolfHowlNotHappen__9daAlink_cFi
 */
void daAlink_c::setWolfHowlNotHappen(int param_0) {
    mMsgClassID = -1;

    if (field_0x3198 == 0xEE) {
        field_0x32cc = 0x532;
    } else {
        field_0x32cc = 0x535;
    }

    mProcVar2.field_0x300c = 0;

    if (!checkUnderMove0BckNoArcWolf(WANM_HOWL_END)) {
        if (param_0 != 0) {
            setSingleAnimeWolfBaseSpeed(WANM_WAIT_SIT, daAlinkHIO_wlLie_c0::m.field_0x44,
                                        daAlinkHIO_wlLie_c0::m.field_0x48);
        } else {
            setSingleAnimeWolfBase(WANM_SERVICE_WAIT_D);
        }
    }
}

/* 80130700-80130BC4 12B040 04C4+00 1/1 0/0 0/0 .text            procWolfHowlDemoInit__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfHowlDemoInit() {
    if (!dComIfGp_event_compulsory(this, 0, 0xFFFF)) {
        return 0;
    }

    mDemo.setSpecialDemoType();

    s16 name;
    if (field_0x27f4 != NULL) {
        name = fopAcM_GetName(field_0x27f4);
    } else {
        name = PROC_ALINK;
    }

    if (name == PROC_Tag_WaraHowl) {
        shape_angle.y = field_0x27f4->shape_angle.y;
        current.angle.y = shape_angle.y;
    } else {
        f32 var_f31 = cM_ssin(shape_angle.y) * 200.0f;
        f32 var_f30 = cM_scos(shape_angle.y) * 200.0f;

        cXyz sp14;
        cXyz sp8;
        sp14.set(attention_info.position.x, attention_info.position.y - 50.0f,
                 attention_info.position.z);
        sp8.set(sp14.x + var_f31, sp14.y, sp14.z + var_f30);

        if (commonLineCheck(&sp14, &sp8)) {
            sp8.x = sp14.x - var_f31;
            sp8.z = sp14.z - var_f30;

            if (!commonLineCheck(&sp14, &sp8)) {
                shape_angle.y += 0x8000;
            } else {
                sp8.x = sp14.x + var_f30;
                sp8.z = sp14.z - var_f31;

                if (!commonLineCheck(&sp14, &sp8)) {
                    shape_angle.y += 0x4000;
                } else {
                    sp8.x = sp14.x - var_f30;
                    sp8.z = sp14.z + var_f31;

                    if (!commonLineCheck(&sp14, &sp8)) {
                        shape_angle.y -= 0x4000;
                    }
                }
            }
            current.angle.y = shape_angle.y;
        }
    }

    commonProcInit(PROC_WOLF_HOWL_DEMO);
    field_0x3198 = -1;
    mProcVar3.field_0x300e.z = -1;
    mProcVar3.field_0x300e.y = 0;
    mProcVar0.field_0x3008 = -1;

    if (name != PROC_ALINK) {
        if (name == PROC_Obj_Yobikusa) {
            daObjYobikusa_c* yobikusa_p = (daObjYobikusa_c*)field_0x27f4;

            mZ2WolfHowlMgr.setCorrectCurve(yobikusa_p->getType());
            mProcVar3.field_0x300e.z = yobikusa_p->getPathID();
            shape_angle.y = yobikusa_p->shape_angle.y;
            current.angle.y = shape_angle.y;

            if (yobikusa_p->getType() == 0) {
                field_0x3198 = 0x100;
            } else if (yobikusa_p->getType() == 1) {
                field_0x3198 = 0xEE;
            }
        } else if (name == PROC_TAG_HOWL) {
            mZ2WolfHowlMgr.setCorrectCurve(static_cast<daTag_Howl_c*>(field_0x27f4)->getCurveID());
        } else if (name == PROC_Obj_WindStone) {
            mZ2WolfHowlMgr.setCorrectCurve(static_cast<daWindStone_c*>(field_0x27f4)->getTuneId());
            mProcVar0.field_0x3008 = static_cast<daWindStone_c*>(field_0x27f4)->getNextSceneId();
            mProcVar3.field_0x300e.y = 1;
        } else if (name == PROC_Obj_SmWStone) {
            mZ2WolfHowlMgr.setCorrectCurve(static_cast<daSmWStone_c*>(field_0x27f4)->getTuneId());
            mProcVar3.field_0x300e.y = 1;
        } else if (name == PROC_Tag_WaraHowl) {
            mZ2WolfHowlMgr.setCorrectCurve(static_cast<daTagWrHowl_c*>(field_0x27f4)->getTuneId());
        } else {
            mZ2WolfHowlMgr.setCorrectCurve(-1);
        }
    } else {
        mZ2WolfHowlMgr.setCorrectCurve(-1);
    }

    mNormalSpeed = 0.0f;

    if (!checkUnderMove0BckNoArcWolf(WANM_WAIT_SIT) && !checkUnderMove0BckNoArcWolf(WANM_LISTEN) &&
        !checkUnderMove0BckNoArcWolf(WANM_HOWL_SIT))
    {
        setSingleAnimeWolfParam(WANM_SIT, &daAlinkHIO_wlLie_c0::m.field_0x0);
        field_0x347c = -1.0f;
    } else {
        field_0x347c = 10.0f;

        if (mProcVar3.field_0x300e.y == 0) {
            setSingleAnimeWolfBaseSpeed(WANM_WAIT_SIT, daAlinkHIO_wlLie_c0::m.field_0x44,
                                        daAlinkHIO_wlLie_c0::m.field_0x48);
        } else {
            setSingleAnimeWolfBase(WANM_LISTEN);
            setFaceBasicTexture(FTANM_UNK_A2);
        }
    }

    dCam_getBody()->StartEventCamera(12, fopAcM_GetID(this), 0);
    mProcVar1.field_0x300a = 0;
    mMsgClassID = -1;
    field_0x32cc = 0x5DD;
    mProcVar2.field_0x300c = 0;
    mProcVar3.field_0x300e.x = -1;
    mDoAud_taktModeMute();

    if (checkStageName("F_SP200")) {
        fopAc_ac_c* gwolf_p =
            (fopAc_ac_c*)fopAcIt_Judge((fopAcIt_JudgeFunc)daAlink_searchGoldWolf, NULL);
        field_0x280c.setData(gwolf_p);
    } else {
        field_0x280c.clearData();
    }

    dComIfGp_setPlayerStatus1(0, 0x4000000);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfHowlDemoInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfHowlDemoInit__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 80130BC4-801312C8 12B504 0704+00 1/0 0/0 0/0 .text            procWolfHowlDemo__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfHowlDemo() {
    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;
    daNpc_GWolf_c* gwolf_p = (daNpc_GWolf_c*)field_0x280c.getActor();

    BOOL skip_edge = dComIfGp_getEvent().checkSkipEdge();
    if (skip_edge) {
        mZ2WolfHowlMgr.skipCorrectDemo();
    }

    if (checkEndMessage(field_0x32cc) ||
        (skip_edge && (field_0x32cc == 0x535 || field_0x32cc == 0x532)))
    {
        if (mProcVar2.field_0x300c == 0) {
            resetSpecialEvent();
            field_0x30b2 = 0;
            field_0x30b0 = 0;
            mDoAud_taktModeMuteOff();
            return 1;
        }
    } else if (field_0x32cc == 0x535 || field_0x32cc == 0x532) {
        if (checkUnderMove0BckNoArcWolf(WANM_HOWL_END) && checkAnmEnd(frameCtrl_p)) {
            setSingleAnimeWolfBase(WANM_SERVICE_WAIT_D);
        }

        return 1;
    }

    if (field_0x347c < 0.0f) {
        if (checkAnmEnd(frameCtrl_p)) {
            if (mProcVar3.field_0x300e.y != 0) {
                setSingleAnimeWolfBase(WANM_LISTEN);
                setFaceBasicTexture(FTANM_UNK_A2);
            } else {
                setSingleAnimeWolfBaseSpeed(WANM_WAIT_SIT, daAlinkHIO_wlLie_c0::m.field_0x44,
                                            daAlinkHIO_wlLie_c0::m.field_0x48);
            }

            field_0x347c = 1.0f;
        }
    } else if (field_0x347c > 1.5f) {
        field_0x347c -= 1.0f;
    } else {
        bool var_r26 = mDoCPd_c::getHoldA(PAD_1) != false;
        if (mProcVar3.field_0x300e.y != 0 && mProcVar2.field_0x300c != 0) {
            var_r26 = false;
        }

        if (checkUnderMove0BckNoArcWolf(WANM_HOWL_SUCCESS)) {
            if (gwolf_p == NULL) {
                dComIfGp_getEvent().startCheckSkipEdge(this);
            }
        } else if (checkUnderMove0BckNoArcWolf(WANM_HOWL_END)) {
            if (gwolf_p == NULL) {
                dComIfGp_getEvent().startCheckSkipEdge(this);
            }
        } else if ((var_r26 || mZ2WolfHowlMgr.getTimer() != 0) &&
                   mZ2WolfHowlMgr.getReleaseTimer() != 30)
        {
            if (!checkUnderMove0BckNoArcWolf(WANM_HOWL_SIT) || mProcVar1.field_0x300a == 0) {
                mProcVar1.field_0x300a = 1;
                setSingleAnimeWolfParam(WANM_HOWL_SIT, &daAlinkHIO_wlHowl_c0::m.field_0x14);
            } else {
                if (frameCtrl_p->getFrame() > 56.0f) {
                    frameCtrl_p->setFrame((frameCtrl_p->getFrame() - 56.0f) + 38.0f);
                }

                if (frameCtrl_p->getFrame() >= 38.0f && frameCtrl_p->getFrame() <= 56.0f) {
                    onResetFlg0(RFLG0_UNK_40000000);
                }
            }
        } else {
            if (mZ2WolfHowlMgr.getReleaseTimer() == 30) {
                frameCtrl_p->setFrame(56.0f);
                field_0x2060->initOldFrameMorf(3.0f, 0, 40);
            }

            mProcVar1.field_0x300a = 0;

            if (dMsgObject_isHowlHearingMode() &&
                (checkAnmEnd(frameCtrl_p) || checkUnderMove0BckNoArcWolf(WANM_WAIT_SIT)))
            {
                setSingleAnimeWolfBase(WANM_LISTEN);
                setFaceBasicTexture(FTANM_UNK_A2);
            } else if (checkAnmEnd(frameCtrl_p)) {
                setSingleAnimeWolfBaseSpeed(WANM_WAIT_SIT, daAlinkHIO_wlLie_c0::m.field_0x44,
                                            daAlinkHIO_wlLie_c0::m.field_0x48);
            }
        }

        s16 var_r25 = mProcVar3.field_0x300e.x;
        f32 stick_y = mDoCPd_c::getStickY(PAD_1);
        mProcVar3.field_0x300e.x = mZ2WolfHowlMgr.startWolfHowlSound(0.0f, stick_y, var_r26, 0.0f);
        s16 var_r26_2 = 0;

        if (mProcVar3.field_0x300e.x == -1 || skip_edge) {
            if (checkUnderMove0BckNoArcWolf(WANM_HOWL_END) || skip_edge) {
                if (checkAnmEnd(frameCtrl_p) || skip_edge) {
                    if (mProcVar0.mHowlExitID >= 0) {
                        dStage_changeScene(mProcVar0.mHowlExitID, 0.0f, 0, fopAcM_GetRoomNo(this),
                                           shape_angle.y, -1);
                    } else {
                        fopAc_ac_c* actor_p = NULL;
                        if (gwolf_p == NULL) {
                            fopAcIt_Executor((fopAcIt_ExecutorFunc)daAlink_searchWolfHowl,
                                             &actor_p);
                        } else {
                            actor_p = gwolf_p;
                        }

                        field_0x30b2 = 0;
                        field_0x30b0 = 0;

                        if (actor_p != NULL) {
                            fopAcM_OnStatus(actor_p, 0x800);

                            if (fopAcM_GetName(actor_p) == PROC_KAGO) {
                                static_cast<daKago_c*>(actor_p)->setEvent();
                                static_cast<daKago_c*>(actor_p)->setKagoPath(
                                    mProcVar3.field_0x300e.z);
                            } else if (fopAcM_GetName(actor_p) == PROC_OBJ_SEKIZOA) {
                                static_cast<daObj_Sekizoa_c*>(actor_p)->setWolfHowling();
                            } else if (fopAcM_GetName(actor_p) == PROC_E_PM) {
                                static_cast<daE_PM_c*>(actor_p)->AppearSet();
                            } else if (fopAcM_GetName(actor_p) == PROC_HORSE) {
                                int ret = static_cast<daHorse_c*>(actor_p)->callHorse(&current.pos);

                                if (ret == 1 || ret == 2) {
                                    mDoAud_taktModeMuteOff();
                                    return procCoHorseCallWaitInit(ret);
                                }

                                if (ret != 3) {
                                    setWolfHowlNotHappen(skip_edge);
                                    return 1;
                                }
                            } else if (fopAcM_GetName(actor_p) == PROC_NPC_TK) {
                                static_cast<daNPC_TK_c*>(actor_p)->setEventWolf();
                                static_cast<daNPC_TK_c*>(actor_p)->setHawkPath(
                                    mProcVar3.field_0x300e.z);
                            }
                        } else if (mProcVar3.field_0x300e.y == 0) {
                            setWolfHowlNotHappen(skip_edge);
                            return 1;
                        }

                        if (gwolf_p == NULL) {
                            resetSpecialEvent();
                        } else {
                            endDemoMode();
                        }

                        mDoAud_taktModeMuteOff();
                    }

                    procWolfServiceWaitInit(2);
                    return 1;
                }
            } else if (var_r25 != -1) {
                setSingleAnimeWolfBase(WANM_HOWL_END);
                if (gwolf_p != NULL) {
                    gwolf_p->setHowlingEndFlag();
                }
            } else {
                var_r26_2 = (s16)(stick_y * -6144.0f);
            }
        } else if (mProcVar2.field_0x300c == 0) {
            mProcVar2.field_0x300c = 1;
            dMsgObject_onMsgSend();
            setSingleAnimeWolfBase(WANM_HOWL_SUCCESS);
            mUnderFrameCtrl[0].setLoop(27);
            mUnderFrameCtrl[0].setAttribute(2);
            setFaceBasicTexture(FTANM_UNK_A1);

            if (gwolf_p != NULL) {
                fopAcM_OnStatus(gwolf_p, 0x800);
                gwolf_p->setHowlingFlag();
                dComIfGp_event_reset();

                dCam_getBody()->EndEventCamera(fopAcM_GetID(this));
            } else {
                dComIfGp_getEvent().startCheckSkipEdge(this);
            }
        }

        cLib_addCalcAngleS(&field_0x30b2, var_r26_2, 5, 0x800, 0x100);
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfHowlDemo() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfHowlDemo__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 801312C8-80131408 12BC08 0140+00 1/1 0/0 0/0 .text            setWolfHowling__15daObj_Sekizoa_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObj_Sekizoa_c::setWolfHowling() {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfHowling__15daObj_Sekizoa_cFv.s"
}
#pragma pop

/* 80131408-80131450 12BD48 0048+00 1/0 0/0 0/0 .text            checkWolfRope__9daAlink_cFv */
BOOL daAlink_c::checkWolfRope() {
    return checkModeFlg(0x20000) && field_0x280c.getActor() != NULL &&
           fopAcM_GetName(field_0x280c.getActor()) == PROC_Obj_Crope;
}

/* 80131450-80131628 12BD90 01D8+00 2/2 0/0 0/0 .text
 * checkWolfRopeHit__9daAlink_cCFP12dCcD_GObjInfPC4cXyzi        */
// matches with literals
#ifdef NONMATCHING
fopAc_ac_c* daAlink_c::checkWolfRopeHit(dCcD_GObjInf* i_collider, cXyz const* param_1,
                                        int param_2) const {
    daObjCrope_c* rope_p = (daObjCrope_c*)i_collider->GetCoHitAc();

    if (i_collider->ChkCoHit() && rope_p != NULL && fopAcM_GetName(rope_p) == PROC_Obj_Crope) {
        if (param_2) {
            if (rope_p->getRopeStartPos()->abs2XZ(*param_1) > 10000.0f) {
                if (rope_p->getRopeEndPos()->abs2XZ(*param_1) > 10000.0f) {
                    return rope_p;
                }
            }
        } else if (checkInputOnR()) {
            mDoMtx_stack_c::YrotS(-rope_p->shape_angle.y);
            mDoMtx_stack_c::transM(-rope_p->getRopeStartPos()->x, -rope_p->getRopeStartPos()->y,
                                   -rope_p->getRopeStartPos()->z);

            cXyz sp44;
            cXyz sp38;
            mDoMtx_stack_c::multVec(param_1, &sp44);
            mDoMtx_stack_c::multVec(rope_p->getRopeEndPos(), &sp38);

            if (fabsf(sp44.x) < 40.0f && (sp44.z > -10.0f || sp44.z - sp38.z < 10.0f)) {
                return rope_p;
            }
        }
    }

    return NULL;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm fopAc_ac_c* daAlink_c::checkWolfRopeHit(dCcD_GObjInf* param_0, cXyz const* param_1,
                                            int param_2) const {
    nofralloc
#include "asm/d/a/d_a_alink/checkWolfRopeHit__9daAlink_cCFP12dCcD_GObjInfPC4cXyzi.s"
}
#pragma pop
#endif

/* 80131628-801316A4 12BF68 007C+00 2/2 0/0 0/0 .text            checkWolfRopeJumpHang__9daAlink_cFv
 */
int daAlink_c::checkWolfRopeJumpHang() {
    fopAc_ac_c* hit_actor = checkWolfRopeHit(&field_0x850[0], &current.pos, TRUE);
    if (hit_actor == NULL) {
        hit_actor = checkWolfRopeHit(&field_0xFB8, &current.pos, TRUE);
    }

    if (hit_actor != NULL) {
        field_0x280c.setData(hit_actor);
        return procWolfRopeHangInit(4);
    }

    return 0;
}

/* 801316A4-80131718 12BFE4 0074+00 1/1 0/0 0/0 .text            getWolfRopeMoveSpeed__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
f32 daAlink_c::getWolfRopeMoveSpeed() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;
    f32 frame = frameCtrl->getFrame();

    if (frame >= 13.5f) {
        frame -= 13.5f;
    }

    return daAlinkHIO_wlRope_c0::m.field_0x24 * frameCtrl->getRate() * cM_fsin(0.2327106f * frame);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm f32 daAlink_c::getWolfRopeMoveSpeed() {
    nofralloc
#include "asm/d/a/d_a_alink/getWolfRopeMoveSpeed__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 80131718-801319F0 12C058 02D8+00 6/6 0/0 0/0 .text            setWolfRopePosY__9daAlink_cFv */
#ifdef NONMATCHING
int daAlink_c::setWolfRopePosY() {
    daObjCrope_c* temp_r3 = (daObjCrope_c*)field_0x280c.getActor();
    cXyz* temp_r28 = temp_r3->getRopeStartPos();
    cXyz* temp_r27 = temp_r3->getRopeEndPos();
    cXyz* temp_r26 = temp_r3->getRopeVec();
    f32 temp_f30 = temp_r3->getStartRate(&current.pos);

    if (mProcID == PROC_WOLF_ROPE_MOVE && (temp_r3->getStartRate(&mLeftHandPos) < 0.0f ||
                                           temp_r3->getStartRate(&mLeftHandPos) > 1.0f ||
                                           temp_r3->getStartRate(&mRightHandPos) < 0.0f ||
                                           temp_r3->getStartRate(&mRightHandPos) > 1.0f ||
                                           temp_r3->getStartRate(&mLeftFootPos) < 0.0f ||
                                           temp_r3->getStartRate(&mLeftFootPos) > 1.0f ||
                                           temp_r3->getStartRate(&mRightFootPos) < 0.0f ||
                                           temp_r3->getStartRate(&mRightFootPos) > 1.0f))
    {
        if (temp_r28->abs2XZ(current.pos) > temp_r27->abs2XZ(current.pos)) {
            current.pos.y = temp_r27->y;
        } else {
            current.pos.y = temp_r28->y;
        }
        temp_r3->onOutFlg();
        return 1;
    } else {
        if (temp_f30 < 0.0f) {
            current.pos.y = temp_r28->y;
        } else if (temp_f30 > 1.0f) {
            current.pos.y = temp_r27->y;
        } else {
            current.pos.y = ((temp_r28->y + (temp_f30 * temp_r26->y)) - 40.0f) -
                            (10.0f * cM_fsin(M_PI * temp_f30));
        }
        return 0;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::setWolfRopePosY() {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfRopePosY__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 801319F0-80131A6C 12C330 007C+00 5/5 0/0 0/0 .text initWolfRopeShapeAngle__9daAlink_cFv */
s16 daAlink_c::initWolfRopeShapeAngle() {
    fopAc_ac_c* actor = field_0x280c.getActor();
    int a = abs((s16)(actor->shape_angle.y - shape_angle.y));

    s16 angle;
    if (a < 0x4000) {
        shape_angle.y = actor->shape_angle.y;
        angle = actor->shape_angle.x;
    } else {
        shape_angle.y = actor->shape_angle.y - -0x8000;
        angle = -actor->shape_angle.x;
    }

    return angle;
}

/* 80131A6C-80131AFC 12C3AC 0090+00 5/5 0/0 0/0 .text            wolfRopeSwingInc__9daAlink_cFf */
// matches with literals
#ifdef NONMATCHING
void daAlink_c::wolfRopeSwingInc(f32 param_0) {
    field_0x3478 += param_0;

    u32 var_r6 = (u32)((field_0x3478 * 127.0f) / 100.0f);
    if (var_r6 > 127) {
        var_r6 = 127;
    }

    mDoAud_seStart(Z2SE_FN_ROPE_CREAK_ADD, &current.pos, var_r6, mVoiceReverbIntensity);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::wolfRopeSwingInc(f32 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/wolfRopeSwingInc__9daAlink_cFf.s"
}
#pragma pop
#endif

/* 80131AFC-80131C00 12C43C 0104+00 8/8 0/0 0/0 .text            setWolfRopeOffsetY__9daAlink_cFi */
// matches with literals
#ifdef NONMATCHING
void daAlink_c::setWolfRopeOffsetY(int param_0) {
    if (param_0) {
        field_0x3478 = 0.0f;
        field_0x2b98 = 0.0f;
        mProcVar0.field_0x3008 = 0;
    } else {
        if (field_0x3478 > 100.0f) {
            field_0x3478 = 100.0f;
        }

        cLib_addCalc(&field_0x3478, 2.0f, 0.05f, 1.0f, 0.05f);
        field_0x2b98 = field_0x3478 * (cM_scos(mProcVar0.field_0x3008) - 1.0f) * 0.5f;

        f32 var_f3 = field_0x3478 - 2.0f;
        if (var_f3 > 2.0f) {
            var_f3 = 2.0f;
        }

        mProcVar0.field_0x3008 += var_f3 * (f32)0x600 + (f32)0xC00;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWolfRopeOffsetY(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfRopeOffsetY__9daAlink_cFi.s"
}
#pragma pop
#endif

/* 80131C00-80131C74 12C540 0074+00 2/2 0/0 0/0 .text            getDirectionRopeMove__9daAlink_cCFv
 */
int daAlink_c::getDirectionRopeMove() const {
    s16 angle = field_0x2fe2 - shape_angle.y;

    if (abs(angle) > 0x5000) {
        return DIR_BACKWARD;
    }

    if (angle >= 0x3000) {
        return DIR_LEFT;
    }

    if (angle <= -0x3000) {
        return DIR_RIGHT;
    }

    return DIR_FORWARD;
}

/* 80131C74-80131DA0 12C5B4 012C+00 5/5 0/0 0/0 .text            procWolfRopeMoveInit__9daAlink_cFii
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfRopeMoveInit(int param_0, int param_1) {
    daObjCrope_c* rope_p = (daObjCrope_c*)field_0x280c.getActor();
    commonProcInit(PROC_WOLF_ROPE_MOVE);
    mProcVar2.field_0x300c = initWolfRopeShapeAngle();
    current.angle.y = shape_angle.y;

    setSingleAnimeWolfBaseSpeed(WANM_ROPE_WALK, 0.0f, daAlinkHIO_wlRope_c0::m.field_0x20);
    if (param_0) {
        mUnderFrameCtrl[0].setFrame(13.5f);
        getNowAnmPackUnder(UNDER_0)->setFrame(13.5f);
    }

    setSpecialGravity(0.0f, maxFallSpeed, 0);
    speed.y = 0.0f;

    if (param_1) {
        current.pos = rope_p->getPlayerNearPos();
        field_0x3478 = 0.0f;
        mProcVar0.field_0x3008 = 0;
    }

    setWolfRopeOffsetY(setWolfRopePosY());
    if (checkWolfGrabAnime()) {
        field_0x30a0 = -0x1800;
    }

    mProcVar3.field_0x300e.x = 0;
    initServiceWaitTime();
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfRopeMoveInit(int param_0, int param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfRopeMoveInit__9daAlink_cFii.s"
}
#pragma pop
#endif

/* 80131DA0-80132738 12C6E0 0998+00 1/0 0/0 0/0 .text            procWolfRopeMove__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfRopeMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfRopeMove__9daAlink_cFv.s"
}
#pragma pop

/* 80132738-80132914 12D078 01DC+00 5/5 0/0 0/0 .text            procWolfRopeHangInit__9daAlink_cFi
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfRopeHangInit(int param_0) {
    daObjCrope_c* rope_p = (daObjCrope_c*)field_0x280c.getActor();
    commonProcInit(PROC_WOLF_ROPE_HANG);

    if (param_0 != 4) {
        mProcVar3.field_0x300e.x = 0;
        setSingleAnimeWolf(WANM_HANG, daAlinkHIO_wlRope_c0::m.field_0x28, 0.0f, 16,
                           daAlinkHIO_wlRope_c0::m.field_0x2C);
        rope_p->rideKeep();
    } else {
        mProcVar3.field_0x300e.x = 1;

        daAlink_WANM climb_anm;
        s16 temp_r0 = shape_angle.y - rope_p->shape_angle.y;
        if ((temp_r0 >= 0 && temp_r0 < 0x4000) || temp_r0 <= -0x4000) {
            param_0 = 3;
            climb_anm = WANM_ROPE_CLIMB_RIGHT;
        } else {
            param_0 = 2;
            climb_anm = WANM_ROPE_CLIMB_LEFT;
        }

        setSingleAnimeWolfBaseSpeed(climb_anm, daAlinkHIO_wlRope_c0::m.field_0x28,
                                    daAlinkHIO_wlRope_c0::m.field_0x30);
        rope_p->setFrontJoint(19);
        rope_p->setBackJoint(23);
        current.pos = rope_p->getPlayerNearPos();

        field_0x2f99 = 0;
        dComIfGp_getVibration().StartShock(2, 15, cXyz(0.0f, 1.0f, 0.0f));
    }

    field_0x3198 = param_0;
    mProcVar3.field_0x300e.y = initWolfRopeShapeAngle();
    mProcVar2.field_0x300c = 0;

    if (param_0 == 2) {
        shape_angle.y -= 0x4000;
        mProcVar3.field_0x300e.y = -mProcVar3.field_0x300e.y;
    } else {
        shape_angle.y += 0x4000;
    }

    wolfRopeSwingInc(50.0f);
    mProcVar0.field_0x3008 = 0;
    setWolfRopePosY();
    setWolfRopeOffsetY(0);
    setSpecialGravity(0.0f, maxFallSpeed, 0);
    speed.y = 0.0f;
    mNormalSpeed = 0.0f;
    shape_angle.x = 0;
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfRopeHangInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfRopeHangInit__9daAlink_cFi.s"
}
#pragma pop
#endif

/* 80132914-80132D68 12D254 0454+00 1/0 0/0 0/0 .text            procWolfRopeHang__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfRopeHang() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfRopeHang__9daAlink_cFv.s"
}
#pragma pop

/* 80132D68-80132E88 12D6A8 0120+00 1/1 0/0 0/0 .text            procWolfRopeTurnInit__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfRopeTurnInit() {
    commonProcInit(PROC_WOLF_ROPE_TURN);
    setSingleAnimeWolfParam(WANM_ROPE_TURN, &daAlinkHIO_wlRope_c0::m.field_0x0);
    voiceStart(Z2SE_WL_V_BREATH_JUMP);
    setSpecialGravity(0.0f, maxFallSpeed, 0);
    speed.y = 0.0f;
    mNormalSpeed = 0.0f;

    mProcVar3.field_0x300e.x = initWolfRopeShapeAngle();
    current.angle.y = shape_angle.y + 0x8000;
    field_0x3588 = l_wolfBaseAnime;
    shape_angle.x = 0;
    field_0x37c8 = current.pos;
    mProcVar2.field_0x300c = 0;
    field_0x347c = 1.0f / mUnderFrameCtrl[0].getEnd();
    static_cast<daObjCrope_c*>(field_0x280c.getActor())->rideKeep();
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfRopeTurnInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfRopeTurnInit__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 80132E88-80133054 12D7C8 01CC+00 1/0 0/0 0/0 .text            procWolfRopeTurn__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfRopeTurn() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfRopeTurn__9daAlink_cFv.s"
}
#pragma pop

/* 80133054-80133164 12D994 0110+00 1/1 0/0 0/0 .text procWolfRopeStaggerInit__9daAlink_cFi */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfRopeStaggerInit(int param_0) {
    commonProcInit(PROC_WOLF_ROPE_STAGGER);

    if (param_0 == 4) {
        setSingleAnimeWolfBase(WANM_ROPE_WAIT);
        mNormalSpeed = 0.0f;
        mProcVar3.field_0x300e.x = 1;
    } else {
        setSingleAnimeWolfBase(WANM_ROPE_FALTER);
        field_0x3588 = l_wolfRopeBaseAnime;
        mProcVar3.field_0x300e.x = 0;
    }

    mProcVar3.field_0x300e.y = param_0;
    mProcVar2.field_0x300c = initWolfRopeShapeAngle();
    setSpecialGravity(0.0f, maxFallSpeed, 0);
    speed.y = 0.0f;
    current.angle.y = shape_angle.y;

    if (checkWolfGrabAnime()) {
        field_0x30a0 = -0x1800;
    }

    daObjCrope_c* rope_p = (daObjCrope_c*)field_0x280c.getActor();
    rope_p->setFrontJoint(19);
    rope_p->setBackJoint(31);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfRopeStaggerInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfRopeStaggerInit__9daAlink_cFi.s"
}
#pragma pop
#endif

/* 80133164-8013384C 12DAA4 06E8+00 1/0 0/0 0/0 .text            procWolfRopeStagger__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfRopeStagger() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfRopeStagger__9daAlink_cFv.s"
}
#pragma pop

/* 8013384C-80133930 12E18C 00E4+00 1/1 0/0 0/0 .text procWolfRopeSubjectivityInit__9daAlink_cFv
 */
int daAlink_c::procWolfRopeSubjectivityInit() {
    commonProcInit(PROC_WOLF_ROPE_SUBJECTIVITY);

    if (!checkUnderMove0BckNoArcWolf(WANM_ROPE_WALK)) {
        setSingleAnimeWolfBaseSpeed(WANM_ROPE_WALK, FLOAT_LABEL(lit_6108),
                                    daAlinkHIO_wlRope_c0::m.field_0x20);
    }

    mProcVar2.field_0x300c = initWolfRopeShapeAngle();
    current.angle.y = shape_angle.y;

    setSpecialGravity(FLOAT_LABEL(lit_6108), maxFallSpeed, 0);

    f32 tmp_0 = FLOAT_LABEL(lit_6108);
    speed.y = tmp_0;
    mNormalSpeed = tmp_0;

    setWolfRopeOffsetY(setWolfRopePosY());

    if (checkWolfGrabAnime()) {
        field_0x30a0 = -0x1800;
    }

    setSubjectMode();
    return 1;
}

/* 80133930-80133D6C 12E270 043C+00 1/0 0/0 0/0 .text procWolfRopeSubjectivity__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfRopeSubjectivity() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfRopeSubjectivity__9daAlink_cFv.s"
}
#pragma pop

/* 80133D6C-80133EF0 12E6AC 0184+00 0/0 0/0 1/1 .text            getWolfTagJumpTime__9daAlink_cCFv
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::getWolfTagJumpTime() const {
    int time;
    if (mProcID == PROC_WOLF_TAG_JUMP) {
        time = mProcVar0.field_0x3008 + (int)((daAlinkHIO_wlPoint_c0::m.field_0x28.mCheckFrame -
                                               daAlinkHIO_wlPoint_c0::m.field_0x28.mStartFrame) /
                                              daAlinkHIO_wlPoint_c0::m.field_0x28.mSpeed);
    } else {
        time = (int)(checkMidnaLockJumpPoint()->abs(current.pos) /
                     daAlinkHIO_wlPoint_c0::m.field_0x68);
    }

    time -= 2;
    if (time < 1) {
        time = 1;
    }

    return time;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::getWolfTagJumpTime() const {
    nofralloc
#include "asm/d/a/d_a_alink/getWolfTagJumpTime__9daAlink_cCFv.s"
}
#pragma pop
#endif

/* 80133EF0-80134000 12E830 0110+00 3/3 1/1 1/1 .text checkMidnaLockJumpPoint__9daAlink_cCFv */
const cXyz* daAlink_c::checkMidnaLockJumpPoint() const {
    if ((!mLinkAcch.i_ChkGroundHit() && mProcID != PROC_WOLF_TAG_JUMP) || checkMidnaUseAbility() ||
        getMidnaActor()->eventInfo.checkCommandTalk())
    {
        return NULL;
    }

    daPy_py_c* player_p = daPy_getLinkPlayerActorClass();
    fopAc_ac_c* partner_p = fopAcM_getTalkEventPartner(player_p);
    fopAc_ac_c* wljump_p = NULL;

    if (checkWolfTagLockJumpReady()) {
        return &field_0x3738;
    }

    if (mProcID == PROC_WOLF_TAG_JUMP && field_0x280c.getActorConst() != NULL) {
        wljump_p = field_0x280c.getActorConst();
    } else if (field_0x27f4 != NULL && fopAcM_GetName(field_0x27f4) == PROC_Tag_Wljump) {
        wljump_p = field_0x27f4;
    } else if (partner_p != NULL && fopAcM_GetName(partner_p) == PROC_Tag_Wljump) {
        wljump_p = partner_p;
    }

    if (wljump_p != NULL) {
        return static_cast<daTagWljump_c*>(wljump_p)->getLockPos();
    }

    return NULL;
}

/* 80134000-80134838 12E940 0838+00 4/4 0/0 0/0 .text
 * procWolfTagJumpInit__9daAlink_cFP10fopAc_ac_c                */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfTagJumpInit(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfTagJumpInit__9daAlink_cFP10fopAc_ac_c.s"
}
#pragma pop

/* 80134838-80134DB8 12F178 0580+00 1/0 0/0 0/0 .text            procWolfTagJump__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfTagJump() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfTagJump__9daAlink_cFv.s"
}
#pragma pop

/* 80134DB8-80134EBC 12F6F8 0104+00 1/1 0/0 0/0 .text
 * procWolfTagJumpLandInit__9daAlink_cFP10fopAc_ac_c            */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfTagJumpLandInit(fopAc_ac_c* param_0) {
    commonProcInit(PROC_WOLF_TAG_JUMP_LAND);
    setSingleAnimeWolfParam(WANM_ATTACK_A_END_FRONT, &daAlinkHIO_wlPoint_c0::m.field_0x3C);

    if (field_0x2fa8 == 8) {
        mNormalSpeed = daAlinkHIO_wlPoint_c0::m.field_0x6C;
    } else {
        mNormalSpeed = 0.0f;
    }

    speed.y = 0.0f;
    field_0x3588 = l_wolfBaseAnime;

    if (param_0 != NULL) {
        field_0x280c.setData(param_0);
    }

    field_0x2f9d = 0x78;
    setFootEffectProcType(1);
    field_0x2f99 = 12;

    dComIfGp_getVibration().StartShock(2, 15, cXyz(0.0f, 1.0f, 0.0f));
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfTagJumpLandInit(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfTagJumpLandInit__9daAlink_cFP10fopAc_ac_c.s"
}
#pragma pop
#endif

/* 80134EBC-80135050 12F7FC 0194+00 1/0 0/0 0/0 .text            procWolfTagJumpLand__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfTagJumpLand() {
    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;

    daTagWljump_c* wljump_p = (daTagWljump_c*)field_0x280c.getActor();
    if (wljump_p != NULL && wljump_p->getLockPos() != NULL) {
        onResetFlg0(RFLG0_UNK_20000);
        field_0x3738 = *wljump_p->getLockPos();

        if (frameCtrl_p->getFrame() > daAlinkHIO_wlPoint_c0::m.field_0x3C.mCheckFrame) {
            setDoStatus(0x93);

            if (doTrigger()) {
                return procWolfTagJumpInit(field_0x280c.getActor());
            }
        }
    }

    field_0x2f99 = 4;
    if (cLib_addCalc(&mNormalSpeed, 0.0f, daAlinkHIO_wlPoint_c0::m.field_0x70,
                     daAlinkHIO_wlPoint_c0::m.field_0x74,
                     daAlinkHIO_wlPoint_c0::m.field_0x78) < 3.0f)
    {
        if (checkAnmEnd(frameCtrl_p)) {
            checkNextActionWolf(0);
        } else if (!(frameCtrl_p->getFrame() > daAlinkHIO_wlPoint_c0::m.field_0x3C.mCheckFrame) ||
                   !checkNextActionWolf(1))
        {
            field_0x2f9d = 0x78;
            seStartMapInfoLevel(Z2SE_FN_WOLF_SLIP);
        }
    } else {
        field_0x2f9d = 0x78;
        seStartMapInfoLevel(Z2SE_FN_WOLF_SLIP);
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfTagJumpLand() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfTagJumpLand__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 80135050-801350A4 12F990 0054+00 1/1 0/0 0/0 .text daAlink_searchGiant__FP10fopAc_ac_cPv */
static fopAc_ac_c* daAlink_searchGiant(fopAc_ac_c* i_actor, void* i_data) {
    cXyz* gnd_chk_pos = static_cast<cXyz*>(i_data);

    if (fopAcM_GetName(i_actor) == PROC_OBJ_SEKIZOA &&
        i_actor->current.pos.abs2(*gnd_chk_pos) < lit_49124)
    {
        return i_actor;
    }

    return NULL;
}

/* 801350A4-80135160 12F9E4 00BC+00 1/1 0/0 0/0 .text daAlink_searchGiantTalk__FP10fopAc_ac_cPv */
static void* daAlink_searchGiantTalk(fopAc_ac_c* i_actor, void* i_data) {
    if (fopAcM_GetName(i_actor) == PROC_OBJ_SEKIZOA &&
        static_cast<daObj_Sekizoa_c*>(i_actor)->getType() == 0)
    {
        return i_actor;
    }

    return NULL;
}

/* 80135160-801351F8 12FAA0 0098+00 1/1 0/0 0/0 .text procWolfGiantPuzzleInit__9daAlink_cFv */
int daAlink_c::procWolfGiantPuzzleInit() {
    if (!commonProcInitNotSameProc(PROC_WOLF_GIANT_PUZZLE)) {
        return 0;
    }

    setBlendWolfMoveAnime(daAlinkHIO_wlMove_c0::m.field_0xBC);
    current.angle.y = shape_angle.y;

    field_0x2f98 = 4;
    mProcVar2.mPuzzleAimAngle = shape_angle.y;
    field_0x3478 = FLOAT_LABEL(lit_6108);
    field_0x347c = daAlinkHIO_wlMoveNoP_c0::m.field_0x10;
    field_0x594 = daAlinkHIO_wlMoveNoP_c0::m.field_0x8;
    offWolfEyeUp();

    return 1;
}

/* 801351F8-80135458 12FB38 0260+00 1/0 0/0 0/0 .text            procWolfGiantPuzzle__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfGiantPuzzle() {
    if (mSpecialMode == 0) {
        return checkNextActionWolf(0);
    }

    if (!checkNoResetFlg0(FLG0_UNK_4000) && mProcVar2.field_0x300c == shape_angle.y &&
        mSpecialMode != 0x28 && checkZeroSpeedF())
    {
        setDoStatusEmphasys(0x1C);

        if (doTrigger()) {
            fopAc_ac_c* giant_p =
                (fopAc_ac_c*)fopAcIt_Judge((fopAcIt_JudgeFunc)daAlink_searchGiantTalk, NULL);
            if (giant_p != NULL) {
                fopAcM_orderTalkEvent(this, giant_p, 0, 0);
            }
        } else if (checkInputOnR()) {
            int direction = getDirectionFromShapeAngle();
            if (direction == DIR_FORWARD) {
                cXyz gnd_chk_pos(current.pos.x + cM_ssin(shape_angle.y) * 600.0f,
                                 current.pos.y + 10.0f,
                                 current.pos.z + cM_scos(shape_angle.y) * 600.0f);
                mLinkGndChk.SetPos(&gnd_chk_pos);

                if (fabsf(dComIfG_Bgsp().GroundCross(&mLinkGndChk) - current.pos.y) < 0.1f &&
                    fopAcIt_Judge((fopAcIt_JudgeFunc)daAlink_searchGiant, &gnd_chk_pos) == NULL)
                {
                    field_0x347c = daAlinkHIO_wlMoveNoP_c0::m.field_0xC;
                    field_0x3478 = field_0x594;
                }
            } else if (direction == DIR_LEFT) {
                mProcVar2.mPuzzleAimAngle += 0x4000;
            } else if (direction == DIR_RIGHT) {
                mProcVar2.mPuzzleAimAngle -= 0x4000;
            } else {
                mProcVar2.mPuzzleAimAngle += 0x8000;
            }
        }
    }

    cLib_chaseF(&mNormalSpeed, field_0x3478, field_0x347c);

    if (mProcVar2.mPuzzleAimAngle != shape_angle.y) {
        cLib_addCalcAngleS(
            &shape_angle.y, mProcVar2.mPuzzleAimAngle, daAlinkHIO_wlMoveNoP_c0::m.field_0x4,
            daAlinkHIO_wlMoveNoP_c0::m.field_0x0, daAlinkHIO_wlMoveNoP_c0::m.field_0x2);
        current.angle.y = shape_angle.y;
    }

    if (checkZeroSpeedF()) {
        onModeFlg(1);
    } else {
        offModeFlg(1);
    }

    setBlendWolfMoveAnime(-1.0f);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfGiantPuzzle() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfGiantPuzzle__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 80135458-801354C8 12FD98 0070+00 2/2 0/0 0/0 .text            setWolfHangGroundY__9daAlink_cFv */
void daAlink_c::setWolfHangGroundY() {
    cXyz pos;
    mDoMtx_multVecZero(mpLinkModel->getAnmMtx(0), &pos);

    mLinkGndChk.SetPos(&pos);
    field_0x33d8 = dComIfG_Bgsp().GroundCross(&mLinkGndChk);
}

/* 801354C8-801355EC 12FE08 0124+00 2/2 0/0 0/0 .text            changeWolfHangEndProc__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::changeWolfHangEndProc() {
    setWolfHangGroundY();

    f32 var_f1;
    if (checkNoResetFlg0(FLG0_UNK_80) && mWaterY > field_0x33d8) {
        var_f1 = daAlinkHIO_wlSwim_c0::m.field_0x48 + daAlinkHIO_wlSwim_c0::m.field_0x94;
    } else {
        var_f1 = daAlinkHIO_wlWallHang_c0::m.field_0x88;
    }

    if (current.pos.y < (field_0x33d8 + var_f1) - 1.0f) {
        return procWolfLandInit();
    } else {
        setDoStatus(0x33);

        if (doTrigger()) {
            current.pos.x -= cM_ssin(shape_angle.y) * 50.0f;
            current.pos.z -= cM_scos(shape_angle.y) * 50.0f;

            onNoResetFlg2(FLG2_UNK_200);
            procWolfFallInit(2, daAlinkHIO_wlWallHang_c0::m.field_0x98);
            return 1;
        }
    }

    return 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::changeWolfHangEndProc() {
    nofralloc
#include "asm/d/a/d_a_alink/changeWolfHangEndProc__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 801355EC-80135668 12FF2C 007C+00 2/2 0/0 0/0 .text            procWolfHangReadyInit__9daAlink_cFv
 */
int daAlink_c::procWolfHangReadyInit() {
    commonProcInit(PROC_WOLF_HANG_READY);
    setSingleAnimeWolf(WANM_VJMP_START, daAlinkHIO_wlWallHang_c0::m.field_0x0.mSpeed,
                       daAlinkHIO_wlWallHang_c0::m.field_0x0.mStartFrame, 12,
                       daAlinkHIO_wlWallHang_c0::m.field_0x0.mInterpolation);
    field_0x3198 = field_0x2f91;
    mProcVar2.field_0x300c = field_0x306e + 0x8000;

    f32 tmp_0 = FLOAT_LABEL(lit_6108);
    mNormalSpeed = tmp_0;
    speed.y = tmp_0;

    return 1;
}

/* 80135668-801356F0 12FFA8 0088+00 1/0 0/0 0/0 .text            procWolfHangReady__9daAlink_cFv */
int daAlink_c::procWolfHangReady() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    cLib_addCalcAngleS(&shape_angle.y, mProcVar2.field_0x300c, 2, 0x1000, 0x400);
    current.angle.y = shape_angle.y;

    if (frameCtrl->checkAnmEnd()) {
        shape_angle.y = mProcVar2.field_0x300c;
        current.angle.y = shape_angle.y;

        if (!procWolfHangWallCatchInit(field_0x3198)) {
            checkWaitAction();
        }
    }

    return 1;
}

/* 801356F0-80135AF4 130030 0404+00 3/3 0/0 0/0 .text procWolfHangWallCatchInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfHangWallCatchInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfHangWallCatchInit__9daAlink_cFi.s"
}
#pragma pop

/* 80135AF4-80135CD8 130434 01E4+00 1/0 0/0 0/0 .text            procWolfHangWallCatch__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfHangWallCatch() {
    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;

    if (mProcVar3.field_0x300e.x != 0 && frameCtrl_p->getFrame() >= 23.0f) {
        field_0x2f99 = 4;
        offModeFlg(0x4000);
    } else if (changeWolfHangEndProc()) {
        return 1;
    }

    f32 temp_f2 = field_0x3478;
    field_0x3478 = mpLinkModel->getAnmMtx(0)[1][3];
    if (temp_f2 < field_0x33b8 && field_0x3478 >= field_0x33b8) {
        seStartMapInfo(Z2SE_WL_OUTOF_WATER);
    }

    if (checkAnmEnd(frameCtrl_p)) {
        if (mProcVar3.field_0x300e.x == 0) {
            if (field_0x3174 == 6) {
                if (mProcVar3.field_0x300e.y == 0) {
                    setSingleAnimeWolf(WANM_HANG, daAlinkHIO_wlWallHang_c0::m.field_0x28.mSpeed,
                                       35.0f, daAlinkHIO_wlWallHang_c0::m.field_0x28.mEndFrame,
                                       5.0f);
                    mProcVar3.field_0x300e.y = 1;
                }
            } else {
                setSingleAnimeWolf(WANM_VJMP_CLIMB, daAlinkHIO_wlWallHang_c0::m.field_0x14.mSpeed,
                                   17.0f, daAlinkHIO_wlWallHang_c0::m.field_0x14.mEndFrame, 2.0f);
                mProcVar3.field_0x300e.x = 1;
            }
        } else {
            checkNextActionWolf(0);
            int temp_r3 = mProcVar2.field_0x300c;

            if (mProcID == PROC_WOLF_WAIT && temp_r3 != 0) {
                procWolfSwimEndWaitInit(0);
            }

            onNoResetFlg1(FLG1_UNK_20);
        }
    } else if (mProcVar3.field_0x300e.x != 0 &&
               frameCtrl_p->getFrame() > daAlinkHIO_wlWallHang_c0::m.field_0x14.mCheckFrame &&
               checkNextActionWolf(1))
    {
        onNoResetFlg1(FLG1_UNK_20);
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfHangWallCatch() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfHangWallCatch__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 80135CD8-80135F00 130618 0228+00 1/1 0/0 0/0 .text
 * procWolfHangFallStartInit__9daAlink_cFP8cM3dGPla             */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfHangFallStartInit(cM3dGPla* param_0) {
    if (mProcID == PROC_WOLF_HANG_WALL_CATCH || checkNoResetFlg1(FLG1_UNK_20)) {
        return 0;
    }

    s16 var_r30 = param_0->mNormal.atan2sX_Z();
    current.pos.x -= param_0->mNormal.x * 1.5f;
    current.pos.z -= param_0->mNormal.z * 1.5f;

    checkHangStartSideWall(var_r30);

    cXyz gnd_chk_pos(current.pos.x, current.pos.y + 50.0f, current.pos.z);
    mLinkGndChk.SetPos(&gnd_chk_pos);
    gnd_chk_pos.y = dComIfG_Bgsp().GroundCross(&mLinkGndChk);

    if (gnd_chk_pos.y != -1000000000.0f) {
        if (gnd_chk_pos.y < current.pos.y + l_autoDownHeight) {
            return 0;
        }

        current.pos.y = gnd_chk_pos.y;
    }

    commonProcInit(PROC_WOLF_HANG_FALL_START);
    setOldRootQuaternion(0, shape_angle.y - (var_r30 + 0x8000), 0);
    shape_angle.y = var_r30 + 0x8000;
    current.angle.y = shape_angle.y;

    setSingleAnimeWolfParam(WANM_HANG, &daAlinkHIO_wlWallHang_c0::m.field_0x28);

    f32 sin = cM_ssin(shape_angle.y);
    f32 cos = cM_scos(shape_angle.y);
    cXyz line_start(current.pos.x - sin * 50.0f, current.pos.y - 120.0f,
                    current.pos.z - cos * 50.0f);
    cXyz line_end(current.pos.x + sin, line_start.y, current.pos.z + cos);

    if (commonLineCheck(&line_start, &line_end)) {
        mProcVar2.field_0x300c = 1;
    } else {
        mProcVar2.field_0x300c = 0;
    }

    mProcVar3.field_0x300e.x = 0;
    mNormalSpeed = 0.0f;
    speed.y = 0.0f;
    dComIfGp_setPlayerStatus0(0, 0x100);
    field_0x33d8 = mLinkAcch.GetGroundH();
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfHangFallStartInit(cM3dGPla* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfHangFallStartInit__9daAlink_cFP8cM3dGPla.s"
}
#pragma pop
#endif

/* 80135F00-80136064 130840 0164+00 1/0 0/0 0/0 .text            procWolfHangFallStart__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfHangFallStart() {
    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;

    if (field_0x2060->getOldFrameRate() < 0.1f && changeWolfHangEndProc()) {
        return 1;
    }

    if (frameCtrl_p->checkPass(6.0f)) {
        dComIfGp_getVibration().StartShock(1, 1, cXyz(0.0f, 1.0f, 0.0f));
    }

    if (mProcVar2.field_0x300c == 0 && mProcVar3.field_0x300e.x == 0) {
        if (frameCtrl_p->getFrame() > 22.0f) {
            frameCtrl_p->setFrame(22.0f);
            getNowAnmPackUnder(UNDER_0)->setFrame(22.0f);

            if (checkInputOnR() && getDirectionFromShapeAngle() == DIR_FORWARD) {
                mProcVar3.field_0x300e.x = 1;
            }
        }
    } else if (checkAnmEnd(mUnderFrameCtrl) &&
               ((checkInputOnR() && getDirectionFromShapeAngle() == DIR_FORWARD) ||
                mProcVar3.field_0x300e.x != 0))
    {
        procWolfHangWallCatchInit(8);
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfHangFallStart() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfHangFallStart__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 80136064-801360EC 1309A4 0088+00 1/1 0/0 0/0 .text            setWolfHeadDamage__9daAlink_cFv */
void daAlink_c::setWolfHeadDamage() {
    setUpperAnimeParam(0x2A7, UPPER_2, &daAlinkHIO_wlDamage_c0::m.field_0x0);
    seStartOnlyReverb(Z2SE_AL_DAMAGE_NORMAL);
    freeGrabItem();
    setFacePriTexture(FTANM_UNK_90);
    voiceStart(Z2SE_WL_V_DAMAGE);
}

/* 801360EC-80136508 130A2C 041C+00 1/1 0/0 0/0 .text
 * procWolfDamageInit__9daAlink_cFP12dCcD_GObjInf               */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfDamageInit(dCcD_GObjInf* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfDamageInit__9daAlink_cFP12dCcD_GObjInf.s"
}
#pragma pop

/* 80136508-80136624 130E48 011C+00 1/0 0/0 0/0 .text            procWolfDamage__9daAlink_cFv */
int daAlink_c::procWolfDamage() {
    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;

    cLib_chaseF(&mNormalSpeed, FLOAT_LABEL(lit_6108), daAlinkHIO_wlDamNormal_c0::m.field_0x58);
    field_0x2f99 = 5;

    if (checkFreezeDamage()) {
        freezeTimerDamage();
    }

    if (checkAnmEnd(frameCtrl_p)) {
        current.angle.y = shape_angle.y;

        if (!checkFreezeDamage()) {
            checkNextActionWolf(0);
        } else if (mProcVar0.field_0x3008 == 0) {
            seStartOnlyReverb(Z2SE_AL_FREEZE_RECOVER);
            procWolfRollAttackInit(1, 2);
            onModeFlg(8);
        }
    } else if (frameCtrl_p->getFrame() > field_0x3478) {
        current.angle.y = shape_angle.y;

        if (!checkNextActionWolf(1)) {
            current.angle.y = mProcVar3.field_0x300e.y;
        }
    }

    return 1;
}

/* 80136624-801369E4 130F64 03C0+00 2/2 0/0 0/0 .text procWolfLargeDamageUpInit__9daAlink_cFiiss
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfLargeDamageUpInit(int param_0, int param_1, s16 param_2, s16 param_3) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfLargeDamageUpInit__9daAlink_cFiiss.s"
}
#pragma pop

/* 801369E4-80136C18 131324 0234+00 1/0 0/0 0/0 .text            procWolfLargeDamageUp__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfLargeDamageUp() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfLargeDamageUp__9daAlink_cFv.s"
}
#pragma pop

/* 80136C18-80136DE4 131558 01CC+00 1/1 0/0 0/0 .text procWolfLandDamageInit__9daAlink_cFi */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfLandDamageInit(int param_0) {
    f32 var_f31;

    if (param_0 == 2) {
        if (!checkEventRun()) {
            setLandDamagePoint(8);
        }

        var_f31 = daAlinkHIO_wlDamFall_c0::m.field_0x0.mStartFrame;
        mProcVar0.field_0x3008 = daAlinkHIO_damFall_c0::m.mBigStopTime;
        dComIfGp_getVibration().StartShock(5, 31, cXyz(0.0f, 1.0f, 0.0f));
    } else {
        var_f31 = daAlinkHIO_wlDamFall_c0::m.field_0x34;
        mProcVar0.field_0x3008 = daAlinkHIO_wlDamFall_c0::m.field_0x28;

        if (param_0 == 1) {
            if (!checkEventRun()) {
                setLandDamagePoint(4);
            }

            dComIfGp_getVibration().StartShock(4, 31, cXyz(0.0f, 1.0f, 0.0f));
        }
    }

    commonProcInit(PROC_WOLF_LAND_DAMAGE);
    mNormalSpeed = 0.0f;

    if (param_0 == 0) {
        offModeFlg(8);
    } else {
        seStartOnlyReverb(JA_SE_LK_FALL_DAMAGE);
        voiceStart(Z2SE_WL_V_LAND_DAMAGE);
    }

    setSingleAnimeWolf(WANM_FALL_LAND, daAlinkHIO_wlDamFall_c0::m.field_0x0.mSpeed, var_f31,
                       daAlinkHIO_wlDamFall_c0::m.field_0x0.mEndFrame,
                       daAlinkHIO_wlDamFall_c0::m.field_0x0.mInterpolation);
    setFaceBasicTexture(FTANM_UNK_95);
    field_0x3198 = 0;
    field_0x2f9d = 4;
    setFootEffectProcType(4);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfLandDamageInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfLandDamageInit__9daAlink_cFi.s"
}
#pragma pop
#endif

/* 80136DE4-80136EC4 131724 00E0+00 1/0 0/0 0/0 .text            procWolfLandDamage__9daAlink_cFv */
int daAlink_c::procWolfLandDamage() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    if (field_0x3198 != 0) {
        if (frameCtrl->checkAnmEnd()) {
            checkNextActionWolf(0);
        } else if (frameCtrl->getFrame() > daAlinkHIO_wlDamFall_c0::m.field_0x14.mCheckFrame) {
            checkNextActionWolf(1);
        }
    } else if (frameCtrl->checkAnmEnd()) {
        if (mProcVar0.field_0x3008 > 0) {
            mProcVar0.field_0x3008--;
        } else {
            setSingleAnimeWolfParam(WANM_FALL_LAND_START, &daAlinkHIO_wlDamFall_c0::m.field_0x14);
            setFaceBasicTexture(FTANM_UNK_96);
            field_0x3198 = 1;
        }
    }

    return 1;
}

/* 80136EC4-80136F54 131804 0090+00 2/2 0/0 0/0 .text setWolfScreamWaitAnime__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
void daAlink_c::setWolfScreamWaitAnime() {
    setSingleAnimeWolfBase(WANM_WAIT_STUNNED);
    setFaceBasicTexture(FTANM_UNK_91);
    voiceStart(Z2SE_WL_V_TERRORED);

    mProcVar2.field_0x300c = 1;
    dComIfGp_getVibration().StartQuake(5, 1, cXyz(0.0f, 1.0f, 0.0f));
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWolfScreamWaitAnime() {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfScreamWaitAnime__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 80136F54-80136FF8 131894 00A4+00 1/1 0/0 0/0 .text procWolfScreamWaitInit__9daAlink_cFv */
int daAlink_c::procWolfScreamWaitInit() {
    commonProcInit(PROC_WOLF_SCREAM_WAIT);
    if (checkEndResetFlg1(ERFLG1_UNK_2)) {
        setWolfScreamWaitAnime();
    } else {
        setSingleAnimeWolfBaseSpeed(WANM_WAIT, daAlinkHIO_wlMoveNoP_c0::m.field_0x14,
                                    daAlinkHIO_wlMove_c0::m.field_0xBC);
        mProcVar2.field_0x300c = 0;
    }

    mNormalSpeed = FLOAT_LABEL(lit_6108);
    mProcVar3.field_0x300e.x = 0;
    field_0x3588 = l_wolfBaseAnime;

    return 1;
}

/* 80136FF8-801370E4 131938 00EC+00 1/0 0/0 0/0 .text            procWolfScreamWait__9daAlink_cFv */
int daAlink_c::procWolfScreamWait() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    if (!checkEndResetFlg1(ERFLG1_UNK_1)) {
        if (mProcVar3.field_0x300e.x != 0) {
            field_0x2f99 = 5;

            if (frameCtrl->checkAnmEnd()) {
                checkNextActionWolf(0);
            } else if (frameCtrl->getFrame() > daAlinkHIO_wlDamLarge_c0::m.field_0x0.mCheckFrame) {
                checkNextActionWolf(1);
            }
        } else {
            mProcVar3.field_0x300e.x = 1;
            setSingleAnimeWolf(WANM_DMG_AIR_FRONT_GETUP,
                               daAlinkHIO_wlDamLarge_c0::m.field_0x0.mSpeed, lit_8676,
                               daAlinkHIO_wlDamLarge_c0::m.field_0x0.mEndFrame,
                               daAlinkHIO_wlDamLarge_c0::m.field_0x0.mInterpolation);
            field_0x2f99 = 13;
        }
    } else if (mProcVar2.field_0x300c == 0 && checkEndResetFlg1(ERFLG1_UNK_2)) {
        setWolfScreamWaitAnime();
    }

    return 1;
}

/* 801370E4-8013712C 131A24 0048+00 3/3 0/0 0/0 .text getWolfLieMoveAnmSpeed__9daAlink_cFv */
f32 daAlink_c::getWolfLieMoveAnmSpeed() {
    if (field_0x3198 != 0) {
        // return getAnmSpeedStickRate(lit_5943, lit_7624); inline doesnt match here?
        return lit_5943 + (field_0x33a8 * lit_7624);
    }

    return getAnmSpeedStickRate(daAlinkHIO_wlLie_c0::m.field_0x3C,
                                daAlinkHIO_wlLie_c0::m.field_0x38);
}

/* 8013712C-801371A0 131A6C 0074+00 3/3 0/0 0/0 .text            getWolfLieMoveSpeed__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
f32 daAlink_c::getWolfLieMoveSpeed() {
    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;

    f32 var_f1;
    if (frameCtrl_p->getFrame() >= 15.0f) {
        var_f1 = frameCtrl_p->getFrame() - 15.0f;
    } else {
        var_f1 = frameCtrl_p->getFrame();
    }

    return daAlinkHIO_wlLie_c0::m.field_0x34 * frameCtrl_p->getRate() *
           cM_fsin(var_f1 * 0.2094395f);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm f32 daAlink_c::getWolfLieMoveSpeed() {
    nofralloc
#include "asm/d/a/d_a_alink/getWolfLieMoveSpeed__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 801371A0-801371FC 131AE0 005C+00 0/0 0/0 2/2 .text checkMidnaDisappearMode__9daAlink_cCFv */
BOOL daAlink_c::checkMidnaDisappearMode() const {
    return mProcID == PROC_WOLF_DIG_THROUGH ||
           (checkWolf() && dComIfGp_checkPlayerStatus0(0, 0x8000000) &&
            !dComIfGp_checkPlayerStatus0(0, 0x10) &&
            (mTargetedActor == NULL || !(mTargetedActor->attention_info.flags & 0x800000)));
}

/* 801371FC-801372B4 131B3C 00B8+00 3/3 0/0 0/0 .text            checkWolfLieContinue__9daAlink_cFi
 */
// matches with literals
#ifdef NONMATCHING
BOOL daAlink_c::checkWolfLieContinue(int param_0) {
    cM3dGPla slide_poly;

    if ((param_0 ||
         ((mTargetedActor != NULL && (mTargetedActor->attention_info.flags & 0x800000)) &&
          (fopAcM_GetName(mTargetedActor) == PROC_NPC_JAGAR ||
           fopAcM_GetName(mTargetedActor) == PROC_NPC_BOU))) &&
        !getSlidePolygon(&slide_poly) && !checkWolfLieWaterIn())
    {
        return true;
    }

    return false;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::checkWolfLieContinue(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/checkWolfLieContinue__9daAlink_cFi.s"
}
#pragma pop
#endif

/* 801372B4-80137330 131BF4 007C+00 3/3 0/0 0/0 .text checkNextActionWolfFromLie__9daAlink_cFv */
int daAlink_c::checkNextActionWolfFromLie() {
    if (checkNextActionWolf(0)) {
        if (field_0x2f8c == 1 || field_0x2f8c == 2 || field_0x2f8c == 3) {
            field_0x2060->initOldFrameMorf(daAlinkHIO_wlLie_c0::m.field_0x30, 0, 40);
        }
        return true;
    }

    return false;
}

/* 80137330-801373F8 131C70 00C8+00 3/3 0/0 0/0 .text            setWolfLieMoveVoice__9daAlink_cFi
 */
void daAlink_c::setWolfLieMoveVoice(int param_0) {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    if (frameCtrl->getRate() == FLOAT_LABEL(lit_6108) && mProcVar3.field_0x300e.z != 0) {
        mProcVar3.field_0x300e.z--;
    }

    if ((param_0 != 0 && (frameCtrl->checkPass(lit_17382) || frameCtrl->checkPass(lit_7451))) ||
        (frameCtrl->getRate() == FLOAT_LABEL(lit_6108) && mProcVar3.field_0x300e.z == 0))
    {
        voiceStart(Z2SE_WL_V_BREATH_WALK);
        mProcVar3.field_0x300e.z = 30;
    }
}

/* 801373F8-80137420 131D38 0028+00 2/2 0/0 0/0 .text            checkWolfLieCode__9daAlink_cFv */
bool daAlink_c::checkWolfLieCode() {
    if (mLinkAcch.ChkGroundHit() && field_0x2fa8 == 4) {
        return true;
    }

    return false;
}

/* 80137420-8013753C 131D60 011C+00 2/2 0/0 0/0 .text            procWolfLieStartInit__9daAlink_cFi
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfLieStartInit(int param_0) {
    commonProcInit(PROC_WOLF_LIE_START);
    field_0x3588 = l_wolfBaseAnime;
    setSingleAnimeWolfParam(WANM_CROUCH, &daAlinkHIO_wlLie_c0::m.field_0x14);

    if (param_0) {
        shape_angle.y = field_0x306e + 0x8000;
        current.pos.x = field_0x34ec.x + cM_ssin(field_0x306e) * 90.0f;
        current.pos.z = field_0x34ec.z + cM_scos(field_0x306e) * 90.0f;
        mProcVar3.field_0x300e.y = 1;
    } else {
        mProcVar3.field_0x300e.y = 0;
    }

    mNormalSpeed = 0.0f;
    current.angle.y = shape_angle.y;
    field_0x2f99 = 0;
    mProcVar3.field_0x300e.z = 30;
    dComIfGp_setPlayerStatus0(0, 0x8000000);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfLieStartInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfLieStartInit__9daAlink_cFi.s"
}
#pragma pop
#endif

/* 8013753C-80137634 131E7C 00F8+00 1/0 0/0 0/0 .text            procWolfLieStart__9daAlink_cFv */
int daAlink_c::procWolfLieStart() {
    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;
    decideCrawlDoStatus();

    if (mProcVar3.field_0x300e.y != 0) {
        if (checkAnmEnd(frameCtrl_p)) {
            procWolfLieMoveInit(1);
        }
    } else if (!checkWolfLieContinue(0)) {
        checkNextActionWolfFromLie();
    } else if (checkInputOnR() &&
               (checkAnmEnd(frameCtrl_p) ||
                frameCtrl_p->getFrame() > daAlinkHIO_wlLie_c0::m.field_0x14.mCheckFrame))
    {
        procWolfLieMoveInit(0);
    } else {
        field_0x2f99 = 4;
        setWolfLieMoveVoice(0);
        setTalkStatus();
        orderTalk(1);
    }

    return 1;
}

/* 80137634-801377F0 131F74 01BC+00 5/5 0/0 0/0 .text            procWolfLieMoveInit__9daAlink_cFi
 */
// regalloc
#ifdef NONMATCHING
int daAlink_c::procWolfLieMoveInit(int param_0) {
    BOOL var_r30 = mProcID == PROC_TALK;
    BOOL var_r29 = checkUnderMove0BckNoArcWolf(WANM_CROUCH_WALK) == FALSE;
    BOOL var_r28 = dComIfGp_checkPlayerStatus0(0, 0x2000);

    if (!commonProcInitNotSameProc(PROC_WOLF_LIE_MOVE)) {
        return 0;
    }

    mProcVar3.field_0x300e.x = 0;

    if (!var_r29) {
        if (var_r30) {
            var_r29 = true;
        } else {
            onModeFlg(0x6000);
        }
    } else {
        f32 anm_speed = getWolfLieMoveAnmSpeed();

        if (mDemo.getDemoMode() == 0x2C) {
            anm_speed = 0.0f;
        } else if (param_0) {
            mProcVar3.field_0x300e.x = 1;
            onModeFlg(0x6000);
        } else if (getDirectionFromShapeAngle() == DIR_BACKWARD) {
            anm_speed *= -1.0f;
        }

        current.angle.y = shape_angle.y;
        setSingleAnimeWolfBaseSpeed(WANM_CROUCH_WALK, anm_speed, daAlinkHIO_wlLie_c0::m.field_0x40);
    }

    field_0x3198 = var_r29 ^ 1;
    mProcVar3.field_0x300e.y = var_r30;
    field_0x2f99 = 0xD;

    dComIfGp_setPlayerStatus0(0, 0x8000000);
    if (var_r28) {
        dComIfGp_setPlayerStatus0(0, 0x2000);
    }

    mProcVar3.field_0x300e.z = 30;

    if (checkAttentionLock()) {
        field_0x2fe4 = shape_angle.y;
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfLieMoveInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfLieMoveInit__9daAlink_cFi.s"
}
#pragma pop
#endif

/* 801377F0-80137C90 132130 04A0+00 1/0 0/0 0/0 .text            procWolfLieMove__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfLieMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfLieMove__9daAlink_cFv.s"
}
#pragma pop

/* 80137C90-80137D4C 1325D0 00BC+00 1/1 0/0 0/0 .text procWolfLieAutoMoveInit__9daAlink_cFiP4cXyz
 */
// regalloc
#ifdef NONMATCHING
int daAlink_c::procWolfLieAutoMoveInit(int param_0, cXyz* param_1) {
    BOOL var_r30 = dComIfGp_checkPlayerStatus0(0, 0x2000);
    commonProcInit(PROC_WOLF_LIE_AUTO_MOVE);

    field_0x37c8 = *param_1;
    field_0x3198 = param_0;
    mProcVar0.field_0x3008 = 20;
    mProcVar1.field_0x300a = 300;

    setCrawlMoveDirectionArrow();
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    field_0x2f99 = 13;

    dComIfGp_setPlayerStatus0(0, 0x8000000);
    if (var_r30) {
        dComIfGp_setPlayerStatus0(0, 0x2000);
    }

    mProcVar3.field_0x300e.z = 30;
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfLieAutoMoveInit(int param_0, cXyz* param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfLieAutoMoveInit__9daAlink_cFiP4cXyz.s"
}
#pragma pop
#endif

/* 80137D4C-80138000 13268C 02B4+00 1/0 0/0 0/0 .text            procWolfLieAutoMove__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfLieAutoMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfLieAutoMove__9daAlink_cFv.s"
}
#pragma pop

/* 80138000-80138188 132940 0188+00 2/2 0/0 0/0 .text setSpeedAndAngleSwimWolf__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
void daAlink_c::setSpeedAndAngleSwimWolf() {
    if (checkWolfDashMode()) {
        field_0x594 = daAlinkHIO_wlSwim_c0::m.field_0x50;
    } else {
        field_0x594 = daAlinkHIO_wlSwim_c0::m.field_0x80;
    }

    f32 var_f31;
    if (checkInputOnR()) {
        s16 prev_angle = current.angle.y;
        cLib_addCalcAngleS(&current.angle.y, field_0x2fe2, daAlinkHIO_wlSwim_c0::m.field_0x3C,
                           daAlinkHIO_wlSwim_c0::m.field_0x40, daAlinkHIO_wlSwim_c0::m.field_0x3E);

        var_f31 = field_0x33a8 * 3.0f * cM_scos(current.angle.y - prev_angle);
        shape_angle.y = current.angle.y;
    } else {
        var_f31 = 0.0f;
    }

    if (checkWolfSwimDashAnime()) {
        var_f31 = 3.0f;
    }

    if (checkAttentionState() && mProcID == PROC_WOLF_SWIM_WAIT) {
        if (mTargetedActor != NULL) {
            setShapeAngleToAtnActor(0);
        } else {
            cLib_addCalcAngleS(&shape_angle.y, field_0x2fe4, daAlinkHIO_wlSwim_c0::m.field_0x42,
                               daAlinkHIO_wlSwim_c0::m.field_0x46,
                               daAlinkHIO_wlSwim_c0::m.field_0x44);
        }

        current.angle.y = shape_angle.y;
    }

    setNormalSpeedF(var_f31, daAlinkHIO_wlSwim_c0::m.field_0x54);

    if (dComIfGp_checkPlayerStatus0(0, 0x10)) {
        mNormalSpeed = 0.0f;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setSpeedAndAngleSwimWolf() {
    nofralloc
#include "asm/d/a/d_a_alink/setSpeedAndAngleSwimWolf__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 80138188-801381F8 132AC8 0070+00 2/2 0/0 0/0 .text getWolfSwimMoveAnmSpeed__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
f32 daAlink_c::getWolfSwimMoveAnmSpeed() {
    f32 anm_speed = fabsf(mNormalSpeed) / field_0x594;
    if (anm_speed > 1.0f) {
        anm_speed = 1.0f;
    }

    if (checkWolfDashMode()) {
        anm_speed =
            daAlinkHIO_wlSwim_c0::m.field_0x70 +
            anm_speed * (daAlinkHIO_wlSwim_c0::m.field_0x74 - daAlinkHIO_wlSwim_c0::m.field_0x70);
    } else {
        anm_speed =
            daAlinkHIO_wlSwim_c0::m.field_0x8C +
            anm_speed * (daAlinkHIO_wlSwim_c0::m.field_0x90 - daAlinkHIO_wlSwim_c0::m.field_0x8C);
    }

    return anm_speed;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm f32 daAlink_c::getWolfSwimMoveAnmSpeed() {
    nofralloc
#include "asm/d/a/d_a_alink/getWolfSwimMoveAnmSpeed__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 801381F8-801383D8 132B38 01E0+00 2/2 0/0 0/0 .text decideDoStatusSwimWolf__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::decideDoStatusSwimWolf() {
    setTalkStatus();

    if (orderTalk(1)) {
        return 1;
    }

    if (field_0x27f4 != NULL && fopAcM_GetName(field_0x27f4) == PROC_Obj_Drop) {
        setDoStatus(0x39);
        if (doTrigger()) {
            fopAcM_setCarryNow(field_0x27f4, 0);
            onResetFlg0(RFLG0_UNK_8000);
        }
    } else if (checkNoResetFlg0(FLG0_UNK_100) && field_0x30d2 == 0 && !checkWolfSwimDashAnime() &&
               mProcID == PROC_WOLF_SWIM_MOVE)
    {
        setDoStatus(9);

        if (doTrigger()) {
            onNoResetFlg1(FLG1_DASH_MODE);

            if (field_0x2fc7 == 1 || field_0x2fc7 == 3) {
                field_0x30d0 = daAlinkHIO_wlMove_c0::m.field_0x5A;
            } else if (field_0x2fc7 == 2) {
                field_0x30d0 = daAlinkHIO_wlMove_c0::m.field_0x5E;
            } else {
                field_0x30d0 = daAlinkHIO_wlMove_c0::m.field_0x56;
            }

            setSingleAnimeWolfParam(WANM_SWIM_DASH, &daAlinkHIO_wlSwim_c0::m.field_0x28);
        }
    }

    if (checkWolfSwimDashAnime() && mUnderFrameCtrl[0].checkPass(7.0f)) {
        cXyz pillar_pos(current.pos.x + cM_ssin(shape_angle.y) * 60.0f, current.pos.y,
                        current.pos.z + cM_scos(shape_angle.y) * 60.0f);
        fopKyM_createWpillar(&pillar_pos, 0.75f, 0);
    }

    return 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::decideDoStatusSwimWolf() {
    nofralloc
#include "asm/d/a/d_a_alink/decideDoStatusSwimWolf__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 801383D8-80138484 132D18 00AC+00 2/2 0/0 0/0 .text            procWolfSwimUpInit__9daAlink_cFv */
int daAlink_c::procWolfSwimUpInit() {
    commonProcInit(PROC_WOLF_SWIM_UP);
    speed.y = FLOAT_LABEL(lit_6108);
    current.pos.y = mWaterY;
    onNoResetFlg0(FLG0_SWIM_UP);

    mZ2Link.setInWater(false);
    setSingleAnimeWolfParam(WANM_SWIM_RESURFACE, &daAlinkHIO_wlSwim_c0::m.field_0x0);
    setFaceBasicTexture(FTANM_UNK_8E);
    dComIfGp_setPlayerStatus0(0, 0x100000);
    seStartMapInfo(Z2SE_WL_OUTOF_WATER);
    mProcVar3.field_0x300e.z = 1;
    return 1;
}

/* 80138484-8013852C 132DC4 00A8+00 1/0 0/0 0/0 .text            procWolfSwimUp__9daAlink_cFv */
int daAlink_c::procWolfSwimUp() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;
    setNormalSpeedF(FLOAT_LABEL(lit_6108), daAlinkHIO_wlSwim_c0::m.field_0x54);

    if (frameCtrl->checkAnmEnd()) {
        procWolfSwimWaitInit(0);
    } else if (checkInputOnR() &&
               frameCtrl->getFrame() > daAlinkHIO_wlSwim_c0::m.field_0x0.mCheckFrame)
    {
        procWolfSwimMoveInit();
    } else {
        current.pos.y = mWaterY;
    }

    return 1;
}

/* 8013852C-80138644 132E6C 0118+00 7/7 0/0 0/0 .text            procWolfSwimWaitInit__9daAlink_cFi
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfSwimWaitInit(int param_0) {
    f32 morf;
    if (mProcID == PROC_WOLF_SWIM_UP) {
        morf = 0.0f;
    } else {
        morf = daAlinkHIO_wlSwim_c0::m.field_0x68;
    }

    commonProcInit(PROC_WOLF_SWIM_WAIT);

    if (param_0) {
        seStartMapInfo(Z2SE_WL_INTO_WATER);
        mProcVar3.field_0x300e.y = 0;
        mProcVar3.field_0x300e.z = 1;
    } else {
        mProcVar3.field_0x300e.z = 0;
    }

    f32 anm_speed;
    if (checkWolfDashMode()) {
        anm_speed = daAlinkHIO_wlSwim_c0::m.field_0x64;
    } else {
        anm_speed = daAlinkHIO_wlSwim_c0::m.field_0x88;
    }

    setSingleAnimeWolfBaseSpeed(WANM_SWIM_WAIT, anm_speed, morf);
    dComIfGp_setPlayerStatus0(0, 0x100000);

    if (checkNoResetFlg0(FLG0_UNK_100)) {
        current.pos.y = mWaterY;
        speed.y = 0.0f;
    }

    mProcVar2.field_0x300c = 0;
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfSwimWaitInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfSwimWaitInit__9daAlink_cFi.s"
}
#pragma pop
#endif

/* 80138644-8013871C 132F84 00D8+00 1/0 0/0 0/0 .text            procWolfSwimWait__9daAlink_cFv */
int daAlink_c::procWolfSwimWait() {
    if (mDemo.getDemoMode() == 6 || mDemo.getDemoMode() == 8) {
        setShapeAngleToTalkActor();
        current.angle.y = shape_angle.y;
    }

    setSpeedAndAngleSwimWolf();
    setSwimUpDownOffset();

    if (checkWolfDashMode()) {
        mUnderFrameCtrl[0].setRate(daAlinkHIO_wlSwim_c0::m.field_0x64);
    } else {
        mUnderFrameCtrl[0].setRate(daAlinkHIO_wlSwim_c0::m.field_0x88);
    }

    if (checkSwimUpAction()) {
        return 1;
    }

    if (decideDoStatusSwimWolf()) {
        return 1;
    }

    if (checkInputOnR()) {
        procWolfSwimMoveInit();
    }

    return 1;
}

/* 8013871C-801387A0 13305C 0084+00 4/4 0/0 0/0 .text            procWolfSwimMoveInit__9daAlink_cFv
 */
int daAlink_c::procWolfSwimMoveInit() {
    commonProcInit(PROC_WOLF_SWIM_MOVE);
    setSingleAnimeWolfBaseSpeed(WANM_SWIM, getWolfSwimMoveAnmSpeed(),
                                daAlinkHIO_wlSwim_c0::m.field_0x78);

    if (checkNoResetFlg0(FLG0_SWIM_UP)) {
        current.pos.y = mWaterY;
        speed.y = FLOAT_LABEL(lit_6108);
    }

    dComIfGp_setPlayerStatus0(0, 0x100000);
    return 1;
}

/* 801387A0-8013890C 1330E0 016C+00 1/0 0/0 0/0 .text            procWolfSwimMove__9daAlink_cFv */
int daAlink_c::procWolfSwimMove() {
    setSpeedAndAngleSwimWolf();

    if (!checkWolfSwimDashAnime()) {
        mUnderFrameCtrl[0].setRate(getWolfSwimMoveAnmSpeed());
    }

    if (checkSwimUpAction()) {
        return 1;
    }

    if (decideDoStatusSwimWolf()) {
        return 1;
    }

    if (checkAnmEnd(mUnderFrameCtrl) && checkWolfSwimDashAnime()) {
        setSingleAnimeWolfBaseSpeed(WANM_SWIM, getWolfSwimMoveAnmSpeed(),
                                    daAlinkHIO_wlSwim_c0::m.field_0x78);

        if (field_0x2fc7 == 1 || field_0x2fc7 == 3) {
            field_0x30d2 = daAlinkHIO_wlMove_c0::m.field_0x5C;
        } else if (field_0x2fc7 == 2) {
            field_0x30d2 = daAlinkHIO_wlMove_c0::m.field_0x60;
        } else {
            field_0x30d2 = daAlinkHIO_wlMove_c0::m.field_0x58;
        }
    }

    if (checkFrontWallTypeAction()) {
        swimOutAfter(1);
        return 1;
    }

    if (!checkInputOnR() && !checkWolfSwimDashAnime()) {
        procWolfSwimWaitInit(0);
    }

    return 1;
}

/* 8013890C-80138A18 13324C 010C+00 2/2 0/0 0/0 .text procWolfSwimEndWaitInit__9daAlink_cFi */
int daAlink_c::procWolfSwimEndWaitInit(int param_0) {
    commonProcInit(PROC_WOLF_SWIM_END_WAIT);
    setSingleAnimeWolfParam(WANM_WAIT_SHAKE, &daAlinkHIO_wlSwim_c0::m.field_0x14);
    setFaceBasicTexture(FTANM_UNK_8F);

    mDoMtx_multVecZero(mpLinkModel->getAnmMtx(3), &field_0x37c8);

    if (param_0 == 0) {
        mProcVar3.field_0x300e.x = 0;
    } else if (field_0x2fbb == 13) {
        mProcVar3.field_0x300e.x = 2;
    } else {
        mProcVar3.field_0x300e.x = 1;
    }

    JPABaseEmitter* spC = NULL;
    JPABaseEmitter* sp8 = NULL;

    field_0x32cc = 0;
    if (param_0 != 0) {
        field_0x31bc = 0;
    } else {
        for (int i = 0; i < 2; i++) {
            field_0x32c0[i] = 0;
        }
    }

    setWolfSwimEndEffect(&spC, &sp8);
    mProcVar2.field_0x300c = param_0;
    return 1;
}

/* 80138A18-80138B6C 133358 0154+00 1/0 0/0 0/0 .text            procWolfSwimEndWait__9daAlink_cFv
 */
int daAlink_c::procWolfSwimEndWait() {
    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;
    mDoMtx_multVecZero(mpLinkModel->getAnmMtx(3), &field_0x37c8);

    if (frameCtrl_p->checkPass(lit_7977)) {
        if (mProcVar2.field_0x300c == 0) {
            seStartOnlyReverb(Z2SE_WOLF_WIPE_OFF_WATER);
        } else {
            seStartOnlyReverb(Z2SE_WOLF_WIPE_OFF_DUST);
        }
    }

    JPABaseEmitter* spC = NULL;
    JPABaseEmitter* sp8 = NULL;
    setWolfSwimEndEffect(&spC, &sp8);

    if (checkAnmEnd(frameCtrl_p)) {
        checkNextActionWolf(0);
    } else if (frameCtrl_p->getFrame() > daAlinkHIO_wlSwim_c0::m.field_0x14.mCheckFrame) {
        checkNextActionWolf(1);
    }

    if (mProcID != PROC_WOLF_SWIM_END_WAIT) {
        if (spC != NULL) {
            spC->stopDrawParticle();
        }

        if (sp8 != NULL) {
            sp8->stopDrawParticle();
        }
    }

    return 1;
}

/* 80138B6C-80138C04 1334AC 0098+00 1/0 0/0 0/0 .text
 * onWolfEnemyBiteAll__9daAlink_cFP10fopAc_ac_cQ29daPy_py_c9daPy_FLG2 */
bool daAlink_c::onWolfEnemyBiteAll(fopAc_ac_c* param_0, daPy_py_c::daPy_FLG2 param_1) {
    if (field_0x281c.getActor() != NULL) {
        return 0;
    }

    if (param_1 == 8) {
        if (mCutType != 0x2C && mCutType != 0x2D && mCutType != 0x31 && mCutType != 0x39 &&
            mCutType != 0x32)
        {
            return 0;
        }
    } else if (mCutType != 0x39) {
        return 0;
    }

    onNoResetFlg2(param_1);
    field_0x281c.setData(param_0);

    return 1;
}

/* 80138C04-80138C44 133544 0040+00 4/4 0/0 0/0 .text            resetWolfEnemyBiteAll__9daAlink_cFv
 */
void daAlink_c::resetWolfEnemyBiteAll() {
    field_0x281c.clearData();
    offNoResetFlg2(FLG2_UNK_58);
}

/* 80138C44-80138CB8 133584 0074+00 1/1 0/0 0/0 .text checkWolfEnemyThrowAction__9daAlink_cFv */
void daAlink_c::checkWolfEnemyThrowAction() {
    daPy_frameCtrl_c* frameCtrl = &mUpperFrameCtrl[2];

    if (frameCtrl->checkAnmEnd()) {
        resetUpperAnime(UPPER_2, lit_6109);
    } else if (frameCtrl->checkPass(lit_16210)) {
        resetWolfEnemyBiteAll();
    }
}

/* 80138CB8-80138DC0 1335F8 0108+00 1/1 0/0 0/0 .text            setWolfLockDomeModel__9daAlink_cFv
 */
void daAlink_c::setWolfLockDomeModel() {
    JKRHeap* prev_heap = setItemHeap();

    mHeldItemModel = initModel(loadAramBmd(799, 0x1C00), 0x200);
    field_0x0718 = loadAramItemBtk(0x3A6, mHeldItemModel);
    field_0x0724 = loadAramItemBrk(0x324, mHeldItemModel);
    mDoExt_setCurrentHeap(prev_heap);

    mEquipItem = 0x109;
    mItemVar0.field_0x3018 = 0;
    mSearchBallScale = daAlinkHIO_wlAtLock_c0::m.field_0x28.mSpeed;

    dComIfGp_setPlayerStatus1(0, 0x800000);
    seStartOnlyReverb(Z2SE_MIDNA_BIND_AREA_OPEN);

    if (dKy_darkworld_check()) {
        field_0x0724->setFrame(lit_6040);
    } else {
        field_0x0724->setFrame(FLOAT_LABEL(lit_6108));
    }
}

/* 80138DC0-80138F18 133700 0158+00 1/1 0/0 0/0 .text            setWolfBallModel__9daAlink_cFv */
void daAlink_c::setWolfBallModel() {
    JKRHeap* prev_heap = setItemHeap();

    mHeldItemModel = initModel((J3DModelData*)dComIfG_getObjectRes(l_arcName, 0x25), 0x200);
    field_0x0718 = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, 0x49);
    field_0x0718->searchUpdateMaterialID(mHeldItemModel->getModelData());

    mpHookSound = new Z2SoundObjSimple();
    mDoExt_setCurrentHeap(prev_heap);

    mEquipItem = 0x10A;
    field_0x33dc = FLOAT_LABEL(lit_6108);
    mDoMtx_multVecZero(mpLinkModel->getAnmMtx(6), &mHeldItemRootPos);
    mIronBallCenterPos = mHeldItemRootPos;
    mHookshotTopPos = mHeldItemRootPos;

    field_0x2f38.setOldPosP(&mHookshotTopPos, &mIronBallCenterPos);
    field_0x32d4 = 0;
    mpHookSound->init(&mHeldItemRootPos, 1);
}

/* 80138F18-80139048 133858 0130+00 2/2 0/0 0/0 .text            resetWolfBallGrab__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
void daAlink_c::resetWolfBallGrab() {
    if (mEquipItem == 0x10A) {
        seStartOnlyReverb(Z2SE_OBJ_POU_SOUL_BREAK);
        deleteEquipItem(FALSE, FALSE);

        if (checkWolfGrabAnimeObj()) {
            resetUpperAnime(UPPER_2, 3.0f);
        }

        dComIfGp_particle_setColor(0x86CE, &mHeldItemRootPos, &tevStr, NULL, NULL, 0.0f, 0xFF);
        dComIfGp_particle_setColor(0x86CF, &mHeldItemRootPos, &tevStr, NULL, NULL, 0.0f, 0xFF);
        onEndResetFlg0(ERFLG0_UNK_20000000);
        offNoResetFlg3(FLG3_UNK_200000);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::resetWolfBallGrab() {
    nofralloc
#include "asm/d/a/d_a_alink/resetWolfBallGrab__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 80139048-8013911C 133988 00D4+00 1/1 0/0 0/0 .text            checkWolfLockData__9daAlink_cFv */
#ifdef NONMATCHING
void daAlink_c::checkWolfLockData() {
    for (int i = 0; i < 10; i++) {
        mWolfLockAcKeep[i].setActor();
    }

    for (int i = 0; i < mWolfLockNum; i++) {
        if (mWolfLockAcKeep[i].getActor() == NULL) {
            int var_r29 = i;

            for (; var_r29 < mWolfLockNum - 1; var_r29++) {
                mWolfLockAcKeep[i].setData(mWolfLockAcKeep[i + 1].getActor());
            }

            mWolfLockAcKeep[var_r29].clearData();
            mWolfLockNum--;
            i--;
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkWolfLockData() {
    nofralloc
#include "asm/d/a/d_a_alink/checkWolfLockData__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8013911C-8013916C 133A5C 0050+00 1/0 0/0 0/0 .text checkWolfLock__9daAlink_cCFP10fopAc_ac_c */
BOOL daAlink_c::checkWolfLock(fopAc_ac_c* i_actor) const {
    u32 actor_id = fopAcM_GetID(i_actor);

    for (int i = 0; i < mWolfLockNum; i++) {
        if (actor_id == mWolfLockAcKeep[i].getID()) {
            return true;
        }
    }
    return false;
}

/* 8013916C-801391DC 133AAC 0070+00 1/0 0/0 0/0 .text cancelWolfLock__9daAlink_cFP10fopAc_ac_c */
bool daAlink_c::cancelWolfLock(fopAc_ac_c* i_actor) {
    u32 actor_id = fopAcM_GetID(i_actor);

    for (int i = 0; i < mWolfLockNum; i++) {
        if (actor_id == mWolfLockAcKeep[i].getID()) {
            mWolfLockAcKeep[i].clearData();
            return true;
        }
    }
    return false;
}

/* 801391DC-801391E4 133B1C 0008+00 0/0 0/0 1/1 .text            getWolfLockActorEnd__9daAlink_cFv
 */
fopAc_ac_c* daAlink_c::getWolfLockActorEnd() {
    return mWolfLockAcKeep[0].getActor();
}

/* 801391E4-801392A8 133B24 00C4+00 1/1 0/0 0/0 .text
 * searchWolfLockEnemy__9daAlink_cFP10fopAc_ac_cPv              */
void daAlink_c::searchWolfLockEnemy(fopAc_ac_c* i_actor, void* i_data) {
    fopAc_ac_c** lock_actor_pp = (fopAc_ac_c**)i_data;

    for (int i = 0; i < mWolfLockNum; i++) {
        if (mWolfLockAcKeep[i].getActor() == i_actor) {
            return;
        }
    }

    fopEn_enemy_c* enemy_p = static_cast<fopEn_enemy_c*>(i_actor);
    if (fopAcM_GetGroup(enemy_p) == 2 && enemy_p->attention_info.flags & 5 &&
        !enemy_p->checkWolfNoLock())
    {
        f32 dist_to_enemy = current.pos.abs2(enemy_p->eyePos);

        if (enemy_p->eyePos.y >= current.pos.y - lit_6895 && dist_to_enemy < field_0x3478) {
            field_0x3478 = dist_to_enemy;
            *lock_actor_pp = i_actor;
        }
    }
}

/* 801392A8-801392E4 133BE8 003C+00 1/1 0/0 0/0 .text
 * daAlink_searchWolfLockEnemy__FP10fopAc_ac_cPv                */
static int daAlink_searchWolfLockEnemy(fopAc_ac_c* i_actor, void* i_data) {
    daAlink_getAlinkActorClass()->searchWolfLockEnemy(i_actor, i_data);
    return 0;
}

/* 801392E4-801393A4 133C24 00C0+00 1/1 0/0 0/0 .text            checkWolfComboCnt__9daAlink_cFv */
void daAlink_c::checkWolfComboCnt() {
    if (!dComIfGp_checkPlayerStatus1(0, 0x1000000)) {
        if (mComboCutCount == 2 && checkAttentionLock() && mAtCyl.ChkAtHit()) {
            onNoResetFlg0(FLG0_UNK_8000);
        }

        if (field_0x307e > 0) {
            field_0x307e--;
        } else {
            resetCombo(1);
        }
    }
}

/* 801393A4-801395B4 133CE4 0210+00 4/4 0/0 0/0 .text            checkWolfAttackAction__9daAlink_cFv
 */
BOOL daAlink_c::checkWolfAttackAction() {
    if (mComboCutCount == 4) {
        resetCombo(1);
    }

    mComboCutCount++;
    int atk_direction = getCutDirection();

    if (checkWolfDashMode()) {
        mComboCutCount = 4;
        return procWolfJumpAttackInit(0);
    } else if (checkNoResetFlg0(FLG0_UNK_8000)) {
        if (mComboCutCount == 4) {
            if (atk_direction == DIR_NONE) {
                return procWolfWaitAttackInit(2);
            } else if (atk_direction == DIR_FORWARD || atk_direction == DIR_LEFT) {
                return procWolfJumpAttackInit(0);
            } else {
                return procWolfRollAttackInit(1, 0);
            }
        } else if (atk_direction == DIR_RIGHT || atk_direction == DIR_BACKWARD) {
            return procWolfWaitAttackInit(2);
        } else {
            return procWolfJumpAttackInit(2);
        }
    } else if (mComboCutCount == 4) {
        if (mTargetedActor == NULL) {
            if (atk_direction == DIR_LEFT || atk_direction == DIR_NONE) {
                return procWolfWaitAttackInit(2);
            } else {
                return procWolfJumpAttackInit(0);
            }
        } else if (atk_direction == DIR_LEFT) {
            return procWolfRollAttackInit(0, 0);
        } else if (atk_direction == DIR_RIGHT) {
            return procWolfRollAttackInit(1, 0);
        } else if (atk_direction == DIR_FORWARD) {
            return procWolfJumpAttackInit(0);
        } else {
            return procWolfJumpAttackInit(2);
        }
    } else if (mComboCutCount == 2) {
        return procWolfWaitAttackInit(normalType0[atk_direction]);
    } else if (mComboCutCount == 1 && atk_direction == DIR_FORWARD) {
        return procWolfJumpAttackInit(0);
    } else {
        return procWolfWaitAttackInit(normalType1_50860[atk_direction]);
    }
}

/* 801395B4-80139600 133EF4 004C+00 2/2 0/0 0/0 .text
 * setWolfEnemyThrowUpperAnime__9daAlink_cFQ29daAlink_c12daAlink_WANMf */
void daAlink_c::setWolfEnemyThrowUpperAnime(daAlink_c::daAlink_WANM i_anmID, f32 param_1) {
    setUpperAnime(i_anmID == WANM_FLING_LEFT ? (u16)0x2BD : (u16)0x2BE, UPPER_2,
                  daAlinkHIO_wlAtBite_c0::m.field_0x2C, param_1, -1, lit_6041);
}

/* 80139600-801396F8 133F40 00F8+00 2/2 0/0 0/0 .text
 * setWolfEnemyHangBitePos__9daAlink_cFP13fopEn_enemy_c         */
// matches with literals
#ifdef NONMATCHING
BOOL daAlink_c::setWolfEnemyHangBitePos(fopEn_enemy_c* i_enemy) {
    if (i_enemy != NULL) {
        current.pos = i_enemy->getDownPos();
        cXyz old_pos = current.pos;

        current.pos.x -= 60.0f * cM_ssin(shape_angle.y);
        current.pos.x -= 135.0f;
        current.pos.x -= 60.0f * cM_scos(shape_angle.y);

        if (commonLineCheck(&field_0x3540, &current.pos)) {
            current.pos = old_pos;
            return 0;
        } else {
            return 1;
        }
    }

    return 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::setWolfEnemyHangBitePos(fopEn_enemy_c* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfEnemyHangBitePos__9daAlink_cFP13fopEn_enemy_c.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 804256EC-804256F8 05240C 000C+00 0/1 0/0 0/0 .bss             @50952 */
#pragma push
#pragma force_active on
static u8 lit_50952[12];
#pragma pop

/* 804256F8-80425708 052418 000C+04 1/2 0/0 0/0 .bss             l_wolfBiteHitMarkScale */
static Vec l_wolfBiteHitMarkScale;

/* 801396F8-801397A4 134038 00AC+00 1/1 0/0 0/0 .text
 * setWolfBiteDamage__9daAlink_cFP13fopEn_enemy_c               */
// matches with literals
#ifdef NONMATCHING
void daAlink_c::setWolfBiteDamage(fopEn_enemy_c* i_enemy) {
    i_enemy->onWolfBiteDamage();

    cXyz pos;
    mDoMtx_multVecZero(mpLinkModel->getAnmMtx(13), &pos);
    dComIfGp_setHitMark(1, i_enemy, &pos, &shape_angle, (cXyz*)&l_wolfBiteHitMarkScale, 0);
    dComIfGp_getVibration().StartShock(3, 31, cXyz(0.0f, 1.0f, 0.0f));
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWolfBiteDamage(fopEn_enemy_c* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setWolfBiteDamage__9daAlink_cFP13fopEn_enemy_c.s"
}
#pragma pop
#endif

/* 801397A4-801398A8 1340E4 0104+00 1/1 0/0 0/0 .text checkWolfLockAttackChargeState__9daAlink_cFv
 */
BOOL daAlink_c::checkWolfLockAttackChargeState() {
    return checkMidnaRide() && checkMidnaChargeAttack() && !daMidna_c::i_checkMidnaTired() &&
           daMidna_c::checkMidnaRealBody();
}

/* 801398A8-80139908 1341E8 0060+00 1/1 0/0 0/0 .text procWolfRollAttackChargeInit__9daAlink_cFv
 */
int daAlink_c::procWolfRollAttackChargeInit() {
    commonProcInit(PROC_WOLF_ROLL_ATTACK_CHARGE);
    setSingleAnimeWolfBaseSpeed(WANM_CUT_TURN_CHARGE, FLOAT_LABEL(lit_6108),
                                daAlinkHIO_wlAttack_c0::m.mReadyInterpolation);
    voiceStartLevel(Z2SE_WL_V_ROAR);
    return 1;
}

/* 80139908-801399C4 134248 00BC+00 1/0 0/0 0/0 .text procWolfRollAttackCharge__9daAlink_cFv */
int daAlink_c::procWolfRollAttackCharge() {
    if (checkWolfGroundSpecialMode()) {
        return 1;
    }

    if (!itemButtonCheck(BTN_B)) {
        checkWolfAttackAction();
    } else if (field_0x2060->getOldFrameRate() < lit_9054) {
        procWolfRollAttackMoveInit();
    } else {
        cLib_chaseF(&mNormalSpeed, FLOAT_LABEL(lit_6108), daAlinkHIO_wlMoveNoP_c0::m.field_0x10);
        setShapeAngleToAtnActor(0);
        current.angle.y = shape_angle.y;
        voiceStartLevel(Z2SE_WL_V_ROAR);
    }

    return 1;
}

/* 801399C4-80139A70 134304 00AC+00 1/1 0/0 0/0 .text procWolfRollAttackMoveInit__9daAlink_cFv */
int daAlink_c::procWolfRollAttackMoveInit() {
    commonProcInit(PROC_WOLF_ROLL_ATTACK_MOVE);
    if (checkZeroSpeedF()) {
        onModeFlg(1);
    }

    mProcVar0.field_0x3008 = daAlinkHIO_wlAttack_c0::m.mUnkTime;
    mProcVar1.field_0x300a = daAlinkHIO_wlAtLock_c0::m.field_0x28.mEndFrame;
    mProcVar3.field_0x300e.z = 30;
    field_0x3198 = 0;
    field_0x2fe4 = shape_angle.y;
    voiceStartLevel(Z2SE_WL_V_ROAR);
    dComIfGp_setPlayerStatus0(0, 0x40000000);
    return 1;
}

/* 80139A70-80139DE0 1343B0 0370+00 1/0 0/0 0/0 .text procWolfRollAttackMove__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfRollAttackMove() {
    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;

    if (checkWolfGroundSpecialMode()) {
        return 1;
    }

    if (!swordButton() || mProcVar1.field_0x300a == 0) {
        if (mTargetedActor != NULL) {
            shape_angle.y = cLib_targetAngleY(&current.pos, &mTargetedActor->eyePos);
            current.angle.y = shape_angle.y;
        }

        if (mProcVar0.field_0x3008 == 0) {
            if (mWolfLockNum != 0) {
                resetCombo(1);
                return procWolfLockAttackInit(0);
            } else {
                return procWolfRollAttackInit(1, 0);
            }
        }

        return checkWolfAttackAction();
    }

    if (mProcVar0.field_0x3008 != 0) {
        mProcVar0.field_0x3008--;

        if (mProcVar0.field_0x3008 == 0 && checkWolfLockAttackChargeState()) {
            setWolfLockDomeModel();
        }
    } else {
        onResetFlg0(RFLG0_UNK_10);

        if (mEquipItem == 0x109) {
            seStartOnlyReverbLevel(Z2SE_MIDNA_BIND_AREA_SUS);
            mProcVar1.field_0x300a--;

            if (mSearchBallScale < daAlinkHIO_wlAtLock_c0::m.field_0x28.mStartFrame &&
                cLib_chaseF(&mSearchBallScale, daAlinkHIO_wlAtLock_c0::m.field_0x28.mStartFrame,
                            daAlinkHIO_wlAtLock_c0::m.field_0x28.mInterpolation))
            {
                mItemVar0.field_0x3018 = 1;
            }

            if (mWolfLockNum < 10) {
                field_0x3478 = mSearchBallScale * mSearchBallScale;

                fopAc_ac_c* lock_actor_p = NULL;
                fopAcIt_Executor((fopAcIt_ExecutorFunc)daAlink_searchWolfLockEnemy, &lock_actor_p);

                if (lock_actor_p != NULL) {
                    for (int i = mWolfLockNum - 1; i >= 0; i--) {
                        mWolfLockAcKeep[i + 1].setData(mWolfLockAcKeep[i].getActor());
                    }

                    mWolfLockAcKeep[0].setData(lock_actor_p);
                    mWolfLockNum++;
                }
            }
        }
    }

    voiceStartLevel(Z2SE_WL_V_ROAR);

    BOOL var_r28 = 0;
    f32 anm_speed = getWolfLieMoveAnmSpeed();

    if (frameCtrl_p->getRate() > 0.0f) {
        frameCtrl_p->setRate(anm_speed);
    } else if (frameCtrl_p->getRate() < 0.0f) {
        frameCtrl_p->setRate(-anm_speed);
    } else {
        var_r28 = 1;
    }

    setWolfAtnMoveDirection();

    if (var_r28 == true || frameCtrl_p->checkPass(0.0f) || frameCtrl_p->checkPass(15.0f)) {
        if (checkInputOnR()) {
            if (field_0x2f98 != 1) {
                frameCtrl_p->setRate(anm_speed);
                frameCtrl_p->setLoop(0);
            } else {
                frameCtrl_p->setRate(-anm_speed);
                frameCtrl_p->setLoop(frameCtrl_p->getEnd());
            }

            initBasAnime();
        } else if (!var_r28) {
            stopHalfMoveAnime(15.0f);
        }
    }

    setSpeedAndAngleWolfAtn();
    mNormalSpeed = getWolfLieMoveSpeed();
    if (mNormalSpeed < 0.0f) {
        mNormalSpeed *= -1.0f;
    }

    if (checkZeroSpeedF()) {
        onModeFlg(1);
    } else {
        offModeFlg(1);
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfRollAttackMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfRollAttackMove__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 80139DE0-8013A4F8 134720 0718+00 5/5 0/0 0/0 .text procWolfJumpAttackInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfJumpAttackInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfJumpAttackInit__9daAlink_cFi.s"
}
#pragma pop

/* 8013A4F8-8013A7EC 134E38 02F4+00 1/0 0/0 0/0 .text            procWolfJumpAttack__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfJumpAttack() {
    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;

    if (mProcVar3.field_0x300e.x != 0 && mNormalSpeed > daAlinkHIO_wlAtCjump_c0::m.field_0x5C) {
        cLib_chaseF(&mNormalSpeed, daAlinkHIO_wlAtCjump_c0::m.field_0x5C,
                    daAlinkHIO_wlAtCjump_c0::m.field_0x60);
    }

    if (mAtCyl.ChkAtHit()) {
        field_0x3198 = 1;

        if (mProcVar3.field_0x300e.y != 0 && mProcVar3.field_0x300e.x == 0) {
            mNormalSpeed *= daAlinkHIO_wlAtCjump_c0::m.field_0x58;
            mProcVar3.field_0x300e.x = 1;
        }
    }

    if (checkWolfAttackReverse(field_0x32cc)) {
        return 1;
    }

    if (mLinkAcch.ChkGroundHit() && checkWolfLandAction(0)) {
        return 1;
    }

    if (mLinkAcch.ChkGroundHit() && checkSlideAction()) {
        dComIfGp_getVibration().StartShock(1, 15, cXyz(0.0f, 1.0f, 0.0f));
        return 1;
    }

    field_0x32cc = 1;

    if (mProcVar1.field_0x300a != 1) {
        field_0x307e = daAlinkHIO_wlAttack_c0::m.mComboDuration;
    }

    if (mProcVar0.field_0x3008 != 0 && checkFrontWallTypeAction()) {
        return 1;
    }

    field_0x2f99 = 7;

    if (mLinkAcch.ChkGroundHit()) {
        dComIfGp_getVibration().StartShock(1, 15, cXyz(0.0f, 1.0f, 0.0f));

        if (checkNoResetFlg2(FLG2_UNK_8)) {
            procWolfEnemyThrowInit(4);
        } else if (mProcVar3.field_0x300e.z != 0 || mProcVar1.field_0x300a == 2 ||
                   mProcVar1.field_0x300a == 3)
        {
            procWolfJumpAttackSlideLandInit(field_0x3198, 1, mProcVar1.field_0x300a == 2);
        } else {
            procWolfJumpAttackNormalLandInit(0);
        }
        return 1;
    }

    if (checkNoResetFlg2(FLG2_WOLF_ENEMY_HANG_BITE)) {
        return procWolfEnemyHangBiteInit();
    }

    if (checkAnmEnd(frameCtrl_p)) {
        if (mProcVar2.field_0x300c == 0) {
            mProcVar2.field_0x300c = 1;
            setSingleAnimeWolfBaseSpeed(WANM_ATTACK_A, daAlinkHIO_wlAtNjump_c0::m.field_0x24,
                                        daAlinkHIO_wlAtNjump_c0::m.field_0x28);
            onResetFlg0(RFLG0_UNK_2);
        } else {
            onResetFlg0(RFLG0_UNK_2);
        }
    } else {
        onResetFlg0(RFLG0_UNK_2);

        if (current.pos.y < mLastJumpPos.y - daAlinkHIO_wlAttack_c0::m.mFallHeight) {
            procWolfFallInit(2, daAlinkHIO_wlAttack_c0::m.mFallInterpolation);
        }
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfJumpAttack() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfJumpAttack__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8013A7EC-8013A8A0 13512C 00B4+00 2/2 0/0 0/0 .text procWolfJumpAttackKickInit__9daAlink_cFv */
int daAlink_c::procWolfJumpAttackKickInit() {
    commonProcInit(PROC_WOLF_JUMP_AT_KICK);
    setSingleAnimeWolfParam(WANM_JUMP_KICK, &daAlinkHIO_wlAtCjump_c0::m.field_0x14);

    f32 tmp_0 = FLOAT_LABEL(lit_6108);
    speed.y = tmp_0;
    mNormalSpeed = tmp_0;
    setSpecialGravity(tmp_0, maxFallSpeed, 0);

    voiceStart(Z2SE_WL_V_ATTACK_S);
    seStartOnlyReverb(Z2SE_WOLFATTACK_WIND_S);
    dComIfGp_setPlayerStatus1(0, 0x200000);
    return 1;
}

/* 8013A8A0-8013A8FC 1351E0 005C+00 1/0 0/0 0/0 .text procWolfJumpAttackKick__9daAlink_cFv */
int daAlink_c::procWolfJumpAttackKick() {
    if (mUnderFrameCtrl[0].checkAnmEnd()) {
        procWolfBackJumpInit(2);
        dComIfGp_setPlayerStatus1(0, 0x200000);
    }

    return 1;
}

/* 8013A8FC-8013AAC4 13523C 01C8+00 2/2 0/0 0/0 .text
 * procWolfJumpAttackSlideLandInit__9daAlink_cFiii              */
int daAlink_c::procWolfJumpAttackSlideLandInit(int param_0, int param_1, int param_2) {
    commonProcInit(PROC_WOLF_JUMP_AT_SLIDE_LAND);

    if (mTargetedActor == NULL || !param_0 ||
        (fopAcM_GetGroup(mTargetedActor) == 2 &&
         static_cast<fopEn_enemy_c*>(mTargetedActor)->checkDeadFlg()))
    {
        mProcVar3.field_0x300e.y = 0;
    } else {
        mProcVar3.field_0x300e.y = 1;
    }

    if ((mTargetedActor != NULL && fopAcM_GetGroup(mTargetedActor) == 2 && param_0 &&
         !static_cast<fopEn_enemy_c*>(mTargetedActor)->checkDeadFlg() &&
         fopAcM_seenActorAngleY(this, mTargetedActor) > 0x5000) ||
        param_2)
    {
        setSingleAnimeWolfParam(WANM_ATTACK_A_END_BACK, &daAlinkHIO_wlAtLand_c0::m.field_0x28);
        mProcVar2.field_0x300c = 1;
        field_0x3588.set(-l_wolfBaseAnime.x, l_wolfBaseAnime.y, -l_wolfBaseAnime.z);
        field_0x3478 = daAlinkHIO_wlAtLand_c0::m.field_0x28.mCheckFrame;
    } else {
        setSingleAnimeWolfParam(WANM_ATTACK_A_END_FRONT, &daAlinkHIO_wlAtLand_c0::m.field_0x14);
        mProcVar2.field_0x300c = 0;
        field_0x3588 = l_wolfBaseAnime;
        field_0x3478 = daAlinkHIO_wlAtLand_c0::m.field_0x14.mCheckFrame;
    }

    field_0x2f9d = 4;
    setFootEffectProcType(1);
    mProcVar0.field_0x3008 = param_2;

    mNormalSpeed *= lit_5943;
    if (param_1) {
        field_0x2f99 = 4;
    }

    mProcVar3.field_0x300e.z = 0;
    field_0x307e = daAlinkHIO_wlAttack_c0::m.mComboDuration;
    field_0x2f98 = 0;
    return 1;
}

/* 8013AAC4-8013AC44 135404 0180+00 1/0 0/0 0/0 .text procWolfJumpAttackSlideLand__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfJumpAttackSlideLand() {
    if (checkWolfGroundSpecialMode()) {
        return 1;
    }

    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;

    field_0x2f99 = 4;
    cLib_addCalc(&mNormalSpeed, 0.0f, 0.3f, daAlinkHIO_wlAtLand_c0::m.field_0x3C, 0.5f);

    if (mProcVar3.field_0x300e.y != 0) {
        setShapeAngleToAtnActor(0);
    }

    setComboReserb();
    checkCutTurnCharge();

    if (checkAnmEnd(frameCtrl_p)) {
        if (checkZeroSpeedF()) {
            current.angle.y = shape_angle.y;

            if (mProcVar0.field_0x3008 != 0) {
                procWolfJumpAttackInit(3);
            } else {
                checkNextActionWolf(0);
            }
        }
    } else if (frameCtrl_p->getFrame() > field_0x3478 && mNormalSpeed <= 5.0f) {
        s16 prev_angle = current.angle.y;
        current.angle.y = shape_angle.y;

        if (mProcVar0.field_0x3008 != 0) {
            procWolfJumpAttackInit(3);
        } else if (!checkNextActionWolf(1)) {
            current.angle.y = prev_angle;
        }
    } else if (mNormalSpeed > 5.0f) {
        field_0x2f9d = 4;
        seStartMapInfoLevel(Z2SE_FN_WOLF_SLIP);
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfJumpAttackSlideLand() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfJumpAttackSlideLand__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8013AC44-8013ACF4 135584 00B0+00 1/1 0/0 0/0 .text
 * procWolfJumpAttackNormalLandInit__9daAlink_cFi               */
int daAlink_c::procWolfJumpAttackNormalLandInit(int param_0) {
    commonProcInit(PROC_WOLF_JUMP_AT_NORMAL_LAND);
    setSingleAnimeWolfParam(WANM_ATTACK_A_END, &daAlinkHIO_wlAtLand_c0::m.field_0x0);

    setFootEffectProcType(2);
    field_0x2f9d = 0x18;
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    mProcVar3.field_0x300e.z = 0;
    mProcVar2.field_0x300c = param_0;
    field_0x2f99 = 12;
    field_0x307e = daAlinkHIO_wlAttack_c0::m.mComboDuration;

    if (param_0 != 0) {
        dComIfGp_setPlayerStatus1(0, 0x200000);
    }

    return 1;
}

/* 8013ACF4-8013ADF0 135634 00FC+00 1/0 0/0 0/0 .text procWolfJumpAttackNormalLand__9daAlink_cFv
 */
int daAlink_c::procWolfJumpAttackNormalLand() {
    if (checkWolfGroundSpecialMode()) {
        return 1;
    }

    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    field_0x2f99 = 4;
    cLib_chaseF(&mNormalSpeed, FLOAT_LABEL(lit_6108), daAlinkHIO_wlMoveNoP_c0::m.field_0x10);
    setComboReserb();
    checkCutTurnCharge();

    if (frameCtrl->checkAnmEnd()) {
        checkNextActionWolf(0);
    } else if (frameCtrl->getFrame() > daAlinkHIO_wlAtLand_c0::m.field_0x0.mCheckFrame) {
        if (mProcVar2.field_0x300c != 0) {
            shape_angle.y -= -0x8000;
            return procWolfJumpAttackInit(3);
        }

        if (checkNextActionWolf(1)) {
            return 1;
        }
    }

    return 1;
}

/* 8013ADF0-8013AFC0 135730 01D0+00 2/2 0/0 0/0 .text procWolfWaitAttackInit__9daAlink_cFi */
int daAlink_c::procWolfWaitAttackInit(int i_attackType) {
    const daAlinkHIO_wlAtWait_c1* atk_hio;
    const daAlink_WCutParamTbl* atk_params = &dataTabl[i_attackType];

    commonProcInit(PROC_WOLF_WAIT_ATTACK);
    setCutType(atk_params->m_cutType);
    mProcVar2.field_0x300c = 0;

    if (i_attackType == 2) {
        atk_hio = &daAlinkHIO_wlAtWaTl_c0::m;
        mProcVar3.field_0x300e.x = 0;
    } else if (i_attackType == 1) {
        atk_hio = &daAlinkHIO_wlAtWaSc_c0::m;
        mProcVar3.field_0x300e.x = 1;
    } else {
        atk_hio = &daAlinkHIO_wlAtWaLr_c0::m;
        mProcVar3.field_0x300e.x = 1;
    }

    f32 var_f2;
    if (mComboCutCount == 4) {
        setCylAtParam(0x80000000, dCcG_At_Spl_UNK_1, 3, 4, 3, atk_hio->field_0x34,
                      atk_hio->field_0x38);
        field_0x3478 = atk_hio->field_0x0.mCheckFrame;
        mProcVar0.field_0x3008 = atk_hio->field_0x14;
        var_f2 = atk_hio->field_0x0.mStartFrame;
    } else {
        setCylAtParam(0x80000000, dCcG_At_Spl_UNK_0, 1, 4, 2, atk_hio->field_0x34,
                      atk_hio->field_0x38);
        field_0x3478 = atk_hio->field_0x28;
        mProcVar0.field_0x3008 = atk_hio->field_0x16;
        var_f2 = atk_hio->field_0x2C;
    }

    setSingleAnimeWolf(atk_params->m_anmID, atk_hio->field_0x0.mSpeed, var_f2,
                       atk_hio->field_0x0.mEndFrame, atk_hio->field_0x0.mInterpolation);

    if (mTargetedActor != NULL) {
        shape_angle.y = cLib_targetAngleY(&current.pos, &mTargetedActor->eyePos);
    }

    current.angle.y = shape_angle.y;
    mProcVar3.field_0x300e.z = 0;
    mProcVar1.field_0x300a = 2;
    field_0x347c = atk_hio->field_0x20;
    field_0x3480 = atk_hio->field_0x24;
    field_0x3484 = atk_hio->field_0x1C;
    field_0x3488 = atk_hio->field_0x18;
    field_0x3438 = atk_hio->field_0x30;
    field_0x307e = daAlinkHIO_wlAttack_c0::m.mComboDuration;
    field_0x3588 = l_wolfBaseAnime;

    if (mComboCutCount != 1) {
        field_0x2f99 = 13;
    }

    return 1;
}

/* 8013AFC0-8013B2A0 135900 02E0+00 1/0 0/0 0/0 .text            procWolfWaitAttack__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfWaitAttack() {
    if (checkWolfGroundSpecialMode()) {
        return 1;
    }

    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;

    field_0x2f99 = 5;
    cLib_chaseF(&mNormalSpeed, 0.0f, daAlinkHIO_wlMoveNoP_c0::m.field_0x10);
    setComboReserb();
    checkCutTurnCharge();

    if (mCutType != CUT_TYPE_WOLF_B_BACK && checkWolfAttackReverse(mProcVar1.field_0x300a == 0)) {
        return 1;
    }

    if (checkNoResetFlg2(FLG2_UNK_8) && frameCtrl_p->getFrame() >= 14.0f) {
        return procWolfEnemyThrowInit(mCutType == CUT_TYPE_WOLF_B_LEFT ? 2 : 3);
    }

    if (checkAnmEnd(frameCtrl_p)) {
        resetCombo(1);

        if (mDemo.getDemoMode() == 0x2B) {
            dComIfGp_evmng_cutEnd(field_0x3184);
        } else if (mProcVar0.field_0x3008 > 0) {
            if (!(frameCtrl_p->getFrame() > field_0x3478) || !checkNextActionWolf(1)) {
                mProcVar0.field_0x3008--;
            }
        } else {
            mNormalSpeed = 0.0f;
            checkNextActionWolf(0);
        }
    } else if (frameCtrl_p->getFrame() > field_0x3478) {
        if (!checkNextActionWolf(1)) {
            resetCombo(1);
        }
    } else {
        setShapeAngleToAtnActor(1);
        current.angle.y = shape_angle.y;

        if (frameCtrl_p->checkPass(field_0x3484)) {
            mNormalSpeed = field_0x3488;
        }

        if (mProcVar2.field_0x300c == 0 && frameCtrl_p->getFrame() >= 3.0f) {
            if (mComboCutCount == 4) {
                voiceStart(Z2SE_WL_V_ATTACK_L);
            } else {
                voiceStart(Z2SE_WL_V_ATTACK_S);
            }

            if (mProcVar3.field_0x300e.x == 0) {
                seStartOnlyReverb(Z2SE_WOLFATTACK_WIND_TAIL);
            } else {
                seStartOnlyReverb(Z2SE_WOLFATTACK_WIND_S);
            }

            mProcVar2.field_0x300c = 1;
        }

        if (frameCtrl_p->getFrame() >= field_0x347c && frameCtrl_p->getFrame() < field_0x3480) {
            onResetFlg0(RFLG0_UNK_2);

            if (mProcVar1.field_0x300a != 0) {
                mProcVar1.field_0x300a--;
            }
        }
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfWaitAttack() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfWaitAttack__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8013B2A0-8013B424 135BE0 0184+00 5/5 0/0 0/0 .text procWolfRollAttackInit__9daAlink_cFii */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfRollAttackInit(int param_0, int param_1) {
    commonProcInit(PROC_WOLF_ROLL_ATTACK);

    if (param_0 == 2) {
        param_0 = getCutTurnDirection();
    }

    daAlink_WANM anm;
    if (param_0 == 1) {
        anm = WANM_CUT_TURN_RIGHT;
        mProcVar2.field_0x300c = 1;
        setCutType(CUT_TYPE_WOLF_TURN_RIGHT);
    } else {
        anm = WANM_CUT_TURN_LEFT;
        mProcVar2.field_0x300c = 0;
        setCutType(CUT_TYPE_WOLF_TURN_LEFT);
    }

    setSingleAnimeWolfParam(anm, &daAlinkHIO_wlAtRoll_c0::m.field_0x0);
    field_0x3478 = daAlinkHIO_wlAtRoll_c0::m.field_0x14;
    setCylAtParam(0x40000000, dCcG_At_Spl_UNK_1, 3, 4, 3, field_0x3478 * 0.5f, 155.0f);
    mNormalSpeed = 0.0f;
    mProcVar3.field_0x300e.x = param_1;

    if (param_1 != 0) {
        mUnderFrameCtrl[0].setStart(daAlinkHIO_wlAtRoll_c0::m.field_0x1C);
    } else {
        seStartOnlyReverb(Z2SE_WOLFATTACK_WIND_L);
        voiceStart(Z2SE_WL_V_ATTACK_SPIN);
    }

    current.angle.y = shape_angle.y;
    field_0x3180 = 0;

    if (getMidnaActor() != NULL) {
        // NOTE: this call does nothing
        getMidnaActor()->resetRatBody();
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfRollAttackInit(int param_0, int param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfRollAttackInit__9daAlink_cFii.s"
}
#pragma pop
#endif

/* 8013B424-8013B528 135D64 0104+00 1/0 0/0 0/0 .text            procWolfRollAttack__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfRollAttack() {
    if (checkWolfGroundSpecialMode()) {
        return 1;
    }

    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;
    cLib_chaseF(&mNormalSpeed, 0.0f, daAlinkHIO_wlMoveNoP_c0::m.field_0x10);

    if (checkAnmEnd(frameCtrl_p)) {
        checkNextActionWolf(0);
    } else if (frameCtrl_p->getFrame() > daAlinkHIO_wlAtRoll_c0::m.field_0x0.mCheckFrame) {
        checkNextActionWolf(1);
    } else if (mProcVar3.field_0x300e.x == 0 && frameCtrl_p->getFrame() >= 4.0f &&
               frameCtrl_p->getFrame() < 13.0f)
    {
        if (!checkNoResetFlg0(FLG0_UNK_40)) {
            mNormalSpeed = daAlinkHIO_wlAtRoll_c0::m.field_0x18;
        }

        onResetFlg0(RFLG0_UNK_2);
        cLib_chaseF(mAtCyl.GetRP(), field_0x3478, 20.0f);
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfRollAttack() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfRollAttack__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8013B528-8013B808 135E68 02E0+00 1/1 0/0 0/0 .text procWolfDownAttackInit__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfDownAttackInit() {
    commonProcInit(PROC_WOLF_DOWN_ATTACK);
    setSingleAnimeWolfParam(WANM_ATTACK_POE_START, &daAlinkHIO_wlAtDown_c0::m.field_0x0);

    cXyz sp24(static_cast<fopEn_enemy_c*>(mTargetedActor)->getDownPos());
    sp24.y += 50.0f;

    if (fopAcM_gc_c::gndCheck(&sp24)) {
        sp24.y = fopAcM_gc_c::getGroundY();
    } else {
        sp24.y -= 50.0f;
    }

    current.angle.y = cLib_targetAngleY(&current.pos, &sp24);

    sp24.x -= cM_ssin(current.angle.y) * 80.0f;
    sp24.z -= cM_scos(current.angle.y) * 80.0f;

    f32 var_f1 = current.pos.absXZ(sp24);
    if (var_f1 > 800.0f) {
        var_f1 = 800.0f;
    }

    speed.y = daAlinkHIO_wlAtDown_c0::m.field_0x90;

    f32 temp_f3 = speed.y + gravity;
    f32 var_f0 = temp_f3 * temp_f3 + gravity * 2.0f * (sp24.y - current.pos.y);
    if (var_f0 < 0.0f) {
        mNormalSpeed = (var_f1 * gravity) / -temp_f3;
    } else {
        mNormalSpeed = (var_f1 * gravity) / (-JMAFastSqrt(var_f0) - temp_f3);
    }

    mProcVar2.field_0x300c = 0;
    field_0x280c.setData(mTargetedActor);
    voiceStart(Z2SE_WL_V_ATTACK_POU_ST);
    seStartOnlyReverb(Z2SE_WOLFATTACK_WIND_S);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfDownAttackInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfDownAttackInit__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8013B808-8013B964 136148 015C+00 1/0 0/0 0/0 .text            procWolfDownAttack__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfDownAttack() {
    if (mLinkAcch.ChkGroundHit() && speed.y <= 0.0f) {
        fopEn_enemy_c* enemy_p = (fopEn_enemy_c*)field_0x280c.getActor();

        if (enemy_p != NULL && enemy_p->checkDownFlg() &&
            eyePos.abs2XZ(enemy_p->getDownPos()) < 10000.0f &&
            fabsf(enemy_p->current.pos.y - current.pos.y) < 50.0f)
        {
            procWolfDownAtLandInit(enemy_p);
        } else {
            procWolfDownAtMissLandInit();
        }
    } else if (checkAnmEnd(mUnderFrameCtrl)) {
        if (checkUnderMove0BckNoArcWolf(WANM_ATTACK_POE_START)) {
            setSingleAnimeWolfParam(WANM_ATTACK_POE, &daAlinkHIO_wlAtDown_c0::m.field_0x14);
            shape_angle.y = current.angle.y;
        }
    } else if (checkUnderMove0BckNoArcWolf(WANM_ATTACK_POE_START)) {
        cLib_addCalcAngleS(&shape_angle.y, current.angle.y, 2, 0x2000, 0x800);
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfDownAttack() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfDownAttack__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8013B964-8013BA44 1362A4 00E0+00 1/1 0/0 0/0 .text
 * procWolfDownAtLandInit__9daAlink_cFP13fopEn_enemy_c          */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfDownAtLandInit(fopEn_enemy_c* i_enemy) {
    commonProcInit(PROC_WOLF_DOWN_AT_LAND);
    field_0x280c.setData(i_enemy);
    setSingleAnimeWolfParam(WANM_ATTACK_POE_END, &daAlinkHIO_wlAtDown_c0::m.field_0x28);

    field_0x2f9d = 4;
    setFootEffectProcType(2);
    i_enemy->onWolfDownStartFlg();
    mNormalSpeed = 0.0f;
    setWolfBallModel();

    voiceStart(Z2SE_WL_V_ATTACK_POU_BITE);
    dComIfGp_getVibration().StartShock(2, 15, cXyz(0.0f, 1.0f, 0.0f));
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfDownAtLandInit(fopEn_enemy_c* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfDownAtLandInit__9daAlink_cFP13fopEn_enemy_c.s"
}
#pragma pop
#endif

/* 8013BA44-8013BC94 136384 0250+00 1/0 0/0 0/0 .text            procWolfDownAtLand__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfDownAtLand() {
    if (checkWolfGroundSpecialMode()) {
        return 1;
    }

    fopEn_enemy_c* enemy_p = (fopEn_enemy_c*)field_0x280c.getActor();
    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;

    if (checkAnmEnd(frameCtrl_p)) {
        if (checkUnderMove0BckNoArcWolf(WANM_PULL_OUT)) {
            setUpperAnime(0x2DA, UPPER_2, 0.0f, 20.0f, -1, -1.0f);

            if (enemy_p != NULL) {
                enemy_p->onWolfDownPullEndFlg();

                dComIfGp_particle_setColor(0x86CA, &enemy_p->getDownPos(), &tevStr, NULL, NULL,
                                           0.0f, 0xFF);
                dComIfGp_particle_setColor(0x86CB, &enemy_p->getDownPos(), &tevStr, NULL, NULL,
                                           0.0f, 0xFF);
                dComIfGp_particle_setColor(0x86CC, &enemy_p->getDownPos(), &tevStr, NULL, NULL,
                                           0.0f, 0xFF);
            }

            return procWolfBackJumpInit(1);
        }

        setSingleAnimeWolfParam(WANM_PULL_OUT, &daAlinkHIO_wlAtDown_c0::m.field_0x78);
        dComIfGp_getVibration().StartShock(2, 15, cXyz(0.0f, 1.0f, 0.0f));
    } else if (checkUnderMove0BckNoArcWolf(WANM_ATTACK_POE_END) &&
               (frameCtrl_p->checkPass(9.0f) || frameCtrl_p->checkPass(16.0f)))
    {
        dComIfGp_getVibration().StartShock(2, 15, cXyz(0.0f, 1.0f, 0.0f));
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfDownAtLand() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfDownAtLand__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8013BC94-8013BD54 1365D4 00C0+00 1/1 0/0 0/0 .text procWolfDownAtMissLandInit__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfDownAtMissLandInit() {
    commonProcInit(PROC_WOLF_DOWN_AT_MISS_LAND);
    setSingleAnimeWolfParam(WANM_ATTACK_POE_MISS, &daAlinkHIO_wlAtDown_c0::m.field_0x64);
    setFaceBasicTexture(FTANM_UNK_97);

    mNormalSpeed = 0.0f;
    setFootEffectProcType(1);
    field_0x2f9d = 0x18;
    field_0x3588 = l_wolfBaseAnime;

    dComIfGp_getVibration().StartShock(1, 15, cXyz(0.0f, 1.0f, 0.0f));
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfDownAtMissLandInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfDownAtMissLandInit__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8013BD54-8013BE24 136694 00D0+00 1/0 0/0 0/0 .text procWolfDownAtMissLand__9daAlink_cFv */
int daAlink_c::procWolfDownAtMissLand() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    if (checkWolfGroundSpecialMode()) {
        return 1;
    }

    field_0x2f99 = 4;

    if (frameCtrl->checkAnmEnd()) {
        checkNextActionWolf(0);
    } else if (frameCtrl->getFrame() > daAlinkHIO_wlAtDown_c0::m.field_0x64.mCheckFrame) {
        checkNextActionWolf(1);
    } else if (frameCtrl->getFrame() >= lit_6109 && frameCtrl->getFrame() < lit_8783) {
        seStartMapInfoLevel(Z2SE_FN_WOLF_SLIP);
        field_0x2f9d = 0x18;
    }

    return 1;
}

/* 8013BE24-8013C3E4 136764 05C0+00 2/2 0/0 0/0 .text procWolfLockAttackInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfLockAttackInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfLockAttackInit__9daAlink_cFi.s"
}
#pragma pop

/* 8013C3E4-8013C630 136D24 024C+00 1/0 0/0 0/0 .text            procWolfLockAttack__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfLockAttack() {
    BOOL var_r29 = false;
    for (int i = 0; i < 3; i++) {
        if (checkAtShieldHit(field_0x850[i])) {
            var_r29 = true;
            break;
        }
    }

    if (var_r29 || (checkAtShieldHit(mAtCyl) && (mAtCyl.GetAtHitAc() == NULL ||
                                                 fopAcM_GetName(mAtCyl.GetAtHitAc()) != PROC_E_FB)))
    {
        return procCoLargeDamageInit(-4, 1, 0, 0, NULL, 2);
    }

    if (checkWolfAttackReverse(1)) {
        return 1;
    }

    if (mProcVar0.field_0x3008 != 0) {
        mProcVar0.field_0x3008--;

        if (mProcVar0.field_0x3008 == 0) {
            setSpecialGravity(daAlinkHIO_wlAtLock_c0::m.field_0x48, maxFallSpeed, 0);
        }
    } else if (mNormalSpeed > 30.0f) {
        cLib_addCalc(&mNormalSpeed, 30.0f, 0.3f, 5.0f, 1.0f);
    }

    if (checkAnmEnd(mUnderFrameCtrl) && checkUnderMove0BckNoArcWolf(WANM_ATTACK_A_START)) {
        setSingleAnimeWolfBaseSpeed(WANM_ATTACK_A, daAlinkHIO_wlAtNjump_c0::m.field_0x24,
                                    daAlinkHIO_wlAtNjump_c0::m.field_0x28);
    }

    if (mLinkAcch.ChkGroundHit() || (mProcVar3.field_0x300e.z != 0 && current.pos.y < mWaterY)) {
        if (!mLinkAcch.ChkGroundHit()) {
            current.pos.y = mWaterY;
        }

        if (mWolfLockNum != 0) {
            procWolfLockAttackTurnInit(mProcVar1.field_0x300a);
        } else {
            if (mNormalSpeed > daAlinkHIO_wlAtNjump_c0::m.field_0x18) {
                mNormalSpeed = daAlinkHIO_wlAtNjump_c0::m.field_0x18;
            }

            procWolfJumpAttackSlideLandInit(0, 0, 0);
        }
    } else {
        mZ2Link.startLinkSoundLevel(Z2SE_WOLFATTACK_WIND_RUSH, mComboCutCount,
                                    mVoiceReverbIntensity);
        onResetFlg0(RFLG0_UNK_2);
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfLockAttack() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfLockAttack__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8013C630-8013C7A4 136F70 0174+00 1/1 0/0 0/0 .text procWolfLockAttackTurnInit__9daAlink_cFi */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfLockAttackTurnInit(int param_0) {
    commonProcInit(PROC_WOLF_LOCK_ATTACK_TURN);

    if (abs((s16)(cLib_targetAngleY(&current.pos, &mWolfLockAcKeep[0].getActor()->eyePos) -
                  shape_angle.y)) > 0x4000)
    {
        setSingleAnimeWolfParam(WANM_ATTACK_A_END_BACK, &daAlinkHIO_wlAtLock_c0::m.field_0x14);
        mProcVar2.field_0x300c = 1;
        field_0x3588.set(-l_wolfBaseAnime.x, l_wolfBaseAnime.y, -l_wolfBaseAnime.z);
    } else {
        setSingleAnimeWolfParam(WANM_ATTACK_A_END_FRONT, &daAlinkHIO_wlAtLock_c0::m.field_0x0);
        mProcVar2.field_0x300c = 0;
        field_0x3588 = l_wolfBaseAnime;
    }

    if (mWolfLockAcKeep[0].getActor() != NULL &&
        fopAcM_GetName(mWolfLockAcKeep[0].getActor()) == PROC_E_YMB)
    {
        mProcVar3.field_0x300e.z = 1;
    } else {
        mProcVar3.field_0x300e.z = 0;
    }

    field_0x2f9d = 4;
    setFootEffectProcType(1);
    mNormalSpeed *= 0.5f;
    field_0x2f99 = 4;
    dComIfGp_setPlayerStatus1(0, 0x1000000);
    offResetFlg0(RFLG0_UNK_8000000);
    mComboCutCount++;
    mProcVar1.field_0x300a = param_0;
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfLockAttackTurnInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfLockAttackTurnInit__9daAlink_cFi.s"
}
#pragma pop
#endif

/* 8013C7A4-8013C8C8 1370E4 0124+00 1/0 0/0 0/0 .text procWolfLockAttackTurn__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfLockAttackTurn() {
    field_0x2f99 = 4;

    if (mProcVar3.field_0x300e.z != 0 && current.pos.y < mWaterY) {
        current.pos.y = mWaterY;
    }

    if (mWolfLockNum != 0) {
        s16 target_angle = cLib_targetAngleY(&current.pos, &mWolfLockAcKeep[0].getActor()->eyePos);
        if (mProcVar2.field_0x300c != 0) {
            target_angle += 0x8000;
        }

        cLib_addCalcAngleS(&shape_angle.y, target_angle, 2, 0x2000, 0x800);
    }

    cLib_addCalc(&mNormalSpeed, 0.0f, 0.3f, 5.0f, 1.0f);

    if (checkAnmEnd(mUnderFrameCtrl)) {
        if (mWolfLockNum != 0) {
            procWolfLockAttackInit(mProcVar1.field_0x300a);
        } else if (checkZeroSpeedF()) {
            current.angle.y = shape_angle.y;
            checkNextActionWolf(0);
        } else {
            field_0x2f9d = 4;
            seStartMapInfoLevel(Z2SE_FN_WOLF_SLIP);
        }
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfLockAttackTurn() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfLockAttackTurn__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8013C8C8-8013C9EC 137208 0124+00 1/1 0/0 0/0 .text procWolfAttackReverseInit__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfAttackReverseInit() {
    commonProcInit(PROC_WOLF_ATTACK_REVERSE);
    setSingleAnimeWolfBase(WANM_ATTACK_RECOIL_START);
    setFaceBasicTexture(FTANM_UNK_9A);

    mNormalSpeed = daAlinkHIO_wlAttack_c0::m.mJumpBackSpeedH;
    speed.y = daAlinkHIO_wlAttack_c0::m.mJumpBackSpeedV;
    current.angle.y += 0x8000;

    dComIfGp_getVibration().StartShock(5, 15, cXyz(0.0f, 1.0f, 0.0f));
    dKy_Sound_set(current.pos, 100, fopAcM_GetID(this), 5);
    seStartOnlyReverb(Z2SE_WOLF_BODYATTACK);

    onResetFlg1(RFLG1_WOLF_ATTACK_REVERSE);
    field_0x3588 = l_wolfBaseAnime;
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfAttackReverseInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfAttackReverseInit__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8013C9EC-8013CB48 13732C 015C+00 1/0 0/0 0/0 .text            procWolfAttackReverse__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfAttackReverse() {
    if (checkWolfGroundSpecialMode()) {
        return 1;
    }

    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;
    field_0x2f99 = 4;

    if (!checkModeFlg(2)) {
        if (frameCtrl_p->checkPass(30.0f)) {
            voiceStart(Z2SE_WL_V_NOSE);
        }

        if (checkAnmEnd(frameCtrl_p)) {
            checkNextActionWolf(0);
        } else if (frameCtrl_p->getFrame() > daAlinkHIO_wlAttack_c0::m.mLandAnm.mCheckFrame) {
            checkNextActionWolf(1);
        }
    } else if ((mLinkAcch.ChkGroundHit() || checkEndResetFlg2(ERFLG2_UNK_100)) &&
               checkModeFlg(2))
    {
        if (checkWolfLandAction(0)) {
            return 1;
        }

        mNormalSpeed = 0.0f;
        setSingleAnimeWolfParam(WANM_ATTACK_RECOIL_END, &daAlinkHIO_wlAttack_c0::m.mLandAnm);
        setFaceBasicTexture(FTANM_UNK_9B);
        current.angle.y = shape_angle.y;
        offModeFlg(2);
        onModeFlg(1);
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfAttackReverse() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfAttackReverse__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8013CB48-8013CC5C 137488 0114+00 2/2 0/0 0/0 .text procWolfEnemyThrowInit__9daAlink_cFi */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfEnemyThrowInit(int param_0) {
    commonProcInit(PROC_WOLF_ENEMY_THROW);

    daAlink_WANM anm;
    if (param_0 == 2 || (param_0 == 4 && cM_rnd() < 0.5f)) {
        anm = WANM_FLING_LEFT;
        onNoResetFlg2(FLG2_WOLF_ENEMY_LEFT_THROW);
    } else {
        anm = WANM_FLING_RIGHT;
        offNoResetFlg2(FLG2_WOLF_ENEMY_LEFT_THROW);
    }

    f32 var_f31;
    if (param_0 == 4) {
        var_f31 = 0.0f;
    } else {
        var_f31 = 3.0f;
    }

    setSingleAnimeWolf(anm, daAlinkHIO_wlAtBite_c0::m.field_0x2C, var_f31, -1,
                       daAlinkHIO_wlAtBite_c0::m.field_0x30);
    setWolfEnemyThrowUpperAnime(anm, var_f31);
    field_0x3588 = l_wolfBaseAnime;
    mNormalSpeed = 0.0f;
    speed.y = 0.0f;
    field_0x2f99 = 13;
    current.angle.y = shape_angle.y;
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfEnemyThrowInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfEnemyThrowInit__9daAlink_cFi.s"
}
#pragma pop
#endif

/* 8013CC5C-8013CCF4 13759C 0098+00 1/0 0/0 0/0 .text            procWolfEnemyThrow__9daAlink_cFv */
int daAlink_c::procWolfEnemyThrow() {
    if (checkWolfGroundSpecialMode()) {
        return 1;
    }

    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;
    field_0x2f99 = 5;

    if (frameCtrl->checkAnmEnd()) {
        checkNextActionWolf(0);
    } else if (frameCtrl->getFrame() > daAlinkHIO_wlAtBite_c0::m.field_0x34) {
        checkNextActionWolf(1);
    }

    return 1;
}

/* 8013CCF4-8013CDEC 137634 00F8+00 1/1 0/0 0/0 .text procWolfEnemyHangBiteInit__9daAlink_cFv */
int daAlink_c::procWolfEnemyHangBiteInit() {
    commonProcInit(PROC_WOLF_ENEMY_HANG_BITE);
    setSingleAnimeWolfParam(WANM_CATCH_START, &daAlinkHIO_wlAtBite_c0::m.field_0x14);

    f32 tmp_0 = FLOAT_LABEL(lit_6108);
    mNormalSpeed = tmp_0;
    speed.y = tmp_0;
    setSpecialGravity(tmp_0, maxFallSpeed, 0);

    if (!setWolfEnemyHangBitePos((fopEn_enemy_c*)field_0x281c.getActor())) {
        return procWolfJumpAttackKickInit();
    } else {
        current.angle.y = shape_angle.y;
        field_0x2f99 = 0x50;
        mProcVar0.field_0x3008 = daAlinkHIO_wlAtBite_c0::m.field_0x28;
        mProcVar1.field_0x300a = 0;
        mProcVar2.field_0x300c = 0;
        mProcVar3.field_0x300e.x = 0;
        field_0x3478 = daAlinkHIO_wlAtBite_c0::m.field_0x40;
        mProcVar3.field_0x300e.y = shape_angle.y;
        voiceStart(Z2SE_WL_V_BITE_ATTACK);
        dComIfGp_setPlayerStatus1(0, 0x200000);
    }

    return 1;
}

/* 8013CDEC-8013D0D4 13772C 02E8+00 1/0 0/0 0/0 .text            procWolfEnemyHangBite__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfEnemyHangBite() {
    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;

    fopEn_enemy_c* enemy_p = (fopEn_enemy_c*)field_0x281c.getActor();
    if (!setWolfEnemyHangBitePos(enemy_p)) {
        return procWolfJumpAttackKickInit();
    }

    cLib_addCalcAngleS(&shape_angle.y, mProcVar3.field_0x300e.y, 2, 0x2000, 0x800);
    current.angle.y = shape_angle.y;
    setDoStatusContinuation(3);

    if (doTrigger()) {
        mProcVar3.field_0x300e.x = 1;
        mProcVar0.field_0x3008 = daAlinkHIO_wlAtBite_c0::m.field_0x28;
    } else if (mProcVar0.field_0x3008 != 0) {
        mProcVar0.field_0x3008--;
    }

    if (mProcVar2.field_0x300c == 0) {
        if (checkAnmEnd(frameCtrl_p)) {
            if (mProcVar3.field_0x300e.x != 0) {
                setSingleAnimeWolfBaseSpeed(WANM_CATCH, field_0x3478, 3.0f);
                mProcVar3.field_0x300e.x = 0;
                mProcVar2.field_0x300c = 1;
            } else if (mProcVar0.field_0x3008 == 0) {
                return procWolfJumpAttackKickInit();
            }
        }
    } else {
        if (mProcVar0.field_0x3008 == 0) {
            return procWolfJumpAttackKickInit();
        }

        if (doTrigger()) {
            cLib_chaseF(&field_0x3478, daAlinkHIO_wlAtBite_c0::m.field_0x48,
                        daAlinkHIO_wlAtBite_c0::m.field_0x50);
        } else {
            cLib_chaseF(&field_0x3478, daAlinkHIO_wlAtBite_c0::m.field_0x40,
                        daAlinkHIO_wlAtBite_c0::m.field_0x58);
        }

        if (frameCtrl_p->getRate() < 0.1f) {
            if (mProcVar3.field_0x300e.x != 0) {
                mProcVar3.field_0x300e.x = 0;
                frameCtrl_p->setRate(field_0x3478);
            }
        } else {
            frameCtrl_p->setRate(field_0x3478);

            if (frameCtrl_p->checkPass(0.0f) || frameCtrl_p->checkPass(17.0f)) {
                if (mProcVar3.field_0x300e.x == 0) {
                    if (frameCtrl_p->checkPass(0.0f)) {
                        frameCtrl_p->setFrame(0.0f);
                    } else {
                        frameCtrl_p->setFrame(17.0f);
                    }

                    getNowAnmPackUnder(UNDER_0)->setFrame(frameCtrl_p->getFrame());
                    frameCtrl_p->setRate(0.0f);
                } else {
                    mProcVar3.field_0x300e.x = 0;
                }
            } else if (frameCtrl_p->checkPass(14.0f) || frameCtrl_p->checkPass(36.0f)) {
                setWolfBiteDamage(enemy_p);
            } else if (frameCtrl_p->checkPass(7.5f) || frameCtrl_p->checkPass(30.0f)) {
                voiceStart(Z2SE_WL_V_BITE_ATTACK);
            } else if (frameCtrl_p->checkPass(20.0f)) {
                voiceStart(Z2SE_WL_V_BITE_THROAT);
            }
        }
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfEnemyHangBite() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfEnemyHangBite__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8013D0D4-8013D3FC 137A14 0328+00 1/1 0/0 0/0 .text            procWolfGrabUpInit__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfGrabUpInit() {
    if (fopAcM_checkCarryNow(field_0x27f4)) {
        return checkNextActionWolf(0);
    }

    if (fopAcM_GetName(field_0x27f4) == PROC_Obj_MasterSword) {
        setGrabItemActor(field_0x27f4);
        return 1;
    }

    commonProcInit(PROC_WOLF_GRAB_UP);

    f32 var_f31;
    if (!fopAcM_CheckCarryType(field_0x27f4, fopAcM_CARRY_ITEM)) {
        setSingleAnimeWolfParam(WANM_PICKUP_A, &daAlinkHIO_wlGrab_c0::m.field_0x0);
        var_f31 = 120.0f;
        field_0x3478 = 10.0f;
        field_0x347c = daAlinkHIO_wlGrab_c0::m.field_0x0.mCheckFrame;
    } else {
        setSingleAnimeWolfParam(WANM_PICKUP_B, &daAlinkHIO_wlGrab_c0::m.field_0x28);
        var_f31 = 80.0f;
        field_0x3478 = 7.0f;
        field_0x347c = daAlinkHIO_wlGrab_c0::m.field_0x28.mCheckFrame;
    }

    setGrabItemActor(field_0x27f4);
    shape_angle.y = fopAcM_searchActorAngleY(this, field_0x27f4);
    current.angle.y = shape_angle.y;
    mProcVar2.field_0x300c = shape_angle.y;
    field_0x37c8 = field_0x27f4->current.pos - field_0x3510;
    mProcVar3.field_0x300e.x = 0;

    if (fopAcM_GetName(field_0x27f4) != PROC_Obj_Drop &&
        fopAcM_GetName(field_0x27f4) != PROC_Obj_Sword)
    {
        f32 prev_x = current.pos.x;
        f32 prev_z = current.pos.z;

        current.pos.x = field_0x27f4->current.pos.x - var_f31 * cM_ssin(shape_angle.y);
        current.pos.z = field_0x27f4->current.pos.z - var_f31 * cM_scos(shape_angle.y);
        field_0x37c8.x -= current.pos.x - prev_x;
        field_0x37c8.z -= current.pos.z - prev_z;
    }

    field_0x33e4 = field_0x27f4->current.pos.absXZ(current.pos) - 100.0f;
    if (field_0x33e4 < 0.0f) {
        field_0x33e4 = 0.0f;
    }

    mNormalSpeed = 0.0f;
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfGrabUpInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfGrabUpInit__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8013D3FC-8013D588 137D3C 018C+00 1/0 0/0 0/0 .text            procWolfGrabUp__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfGrabUp() {
    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;
    fopAc_ac_c* item_p = mGrabItemAcKeep.getActor();

    if (item_p == NULL) {
        return checkNextActionWolf(0);
    }

    if (frameCtrl_p->checkPass(field_0x3478)) {
        onResetFlg0(RFLG0_UNK_8000);
        fopAcM_setStageLayer(item_p);
        voiceStart(Z2SE_WL_V_HOLD_MOUTH);
    }

    if (frameCtrl_p->getFrame() >= field_0x3478) {
        mProcVar3.field_0x300e.x = 1;
    }

    if (checkAnmEnd(frameCtrl_p)) {
        setUpperAnime(mUnderAnmHeap[0].getIdx(), UPPER_2, 0.0f, frameCtrl_p->getEnd() - 0.001f, -1,
                      -1.0f);
        checkNextActionWolf(0);
    } else if (frameCtrl_p->getFrame() > field_0x347c) {
        setUpperAnime(mUnderAnmHeap[0].getIdx(), UPPER_2, 0.0f, frameCtrl_p->getEnd() - 0.001f, -1,
                      -1.0f);

        if (!checkNextActionWolf(1)) {
            resetUpperAnime(UPPER_2, -1.0f);
        }
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfGrabUp() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfGrabUp__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8013D588-8013D65C 137EC8 00D4+00 2/2 0/0 0/0 .text            procWolfGrabPutInit__9daAlink_cFv
 */
int daAlink_c::procWolfGrabPutInit() {
    if (mProcID == PROC_WOLF_GRAB_PUT) {
        return 0;
    }

    BOOL grab_obj = checkWolfGrabAnimeObj();
    commonProcInit(PROC_WOLF_GRAB_PUT);

    if (grab_obj) {
        setSingleAnimeWolfParam(WANM_PICKUP_A, &daAlinkHIO_wlGrab_c0::m.field_0x14);
        field_0x3478 = lit_7625;
        field_0x347c = daAlinkHIO_wlGrab_c0::m.field_0x14.mCheckFrame;
    } else {
        setSingleAnimeWolfParam(WANM_PICKUP_B, &daAlinkHIO_wlGrab_c0::m.field_0x3C);
        field_0x3478 = lit_8502;
        field_0x347c = daAlinkHIO_wlGrab_c0::m.field_0x3C.mCheckFrame;
    }

    mNormalSpeed = FLOAT_LABEL(lit_6108);
    return 1;
}

/* 8013D65C-8013D818 137F9C 01BC+00 1/0 0/0 0/0 .text            procWolfGrabPut__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfGrabPut() {
    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;
    fopAc_ac_c* actor_p = mGrabItemAcKeep.getActor();

    if (frameCtrl_p->getFrame() < field_0x3478) {
        if (actor_p != NULL) {
            actor_p->speedF = 0.0f;
            actor_p->current.pos.x += field_0x33e4 * cM_ssin(shape_angle.y);
            actor_p->current.pos.z += field_0x33e4 * cM_scos(shape_angle.y);
            freeGrabItem();
        }

        if (checkAnmEnd(frameCtrl_p)) {
            if (mDemo.getDemoMode() == 13) {
                dComIfGp_evmng_cutEnd(field_0x3184);
            } else {
                checkNextActionWolf(0);
            }
        } else if (frameCtrl_p->getFrame() < field_0x347c) {
            checkNextActionWolf(1);
        }
    } else {
        if (actor_p == NULL) {
            if (mDemo.getDemoMode() == 13) {
                dComIfGp_evmng_cutEnd(field_0x3184);
                return 1;
            } else {
                return checkNextActionWolf(0);
            }
        }

        if (grabLineCheck(&field_0x34e0, &actor_p->current.pos) && dBgS_CheckBWallPoly(mObjLinChk))
        {
            cXyz sp8 = actor_p->current.pos - mObjLinChk.i_GetCross();
            current.pos.x -= sp8.x * 1.5f;
            current.pos.z -= sp8.z * 1.5f;
        }
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfGrabPut() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfGrabPut__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8013D818-8013D86C 138158 0054+00 1/1 0/0 0/0 .text            procWolfGrabThrowInit__9daAlink_cFv
 */
int daAlink_c::procWolfGrabThrowInit() {
    commonProcInit(PROC_WOLF_GRAB_THROW);
    setSingleAnimeWolfParam(WANM_PICKUP_THROW, &daAlinkHIO_wlGrab_c0::m.field_0x50);
    current.angle.y = shape_angle.y;

    return 1;
}

/* 8013D86C-8013D930 1381AC 00C4+00 1/0 0/0 0/0 .text            procWolfGrabThrow__9daAlink_cFv */
int daAlink_c::procWolfGrabThrow() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    cLib_chaseF(&mNormalSpeed, FLOAT_LABEL(lit_6108), daAlinkHIO_wlMoveNoP_c0::m.field_0x10);
    setShapeAngleToAtnActor(0);
    current.angle.y = shape_angle.y;

    if (frameCtrl->checkPass(lit_7625)) {
        setGrabItemThrow();
    }

    if (frameCtrl->checkAnmEnd()) {
        checkNextActionWolf(0);
    } else if (frameCtrl->getFrame() > daAlinkHIO_wlGrab_c0::m.field_0x50.mCheckFrame) {
        checkNextActionWolf(1);
    }

    return 1;
}

/* 8013D930-8013DA8C 138270 015C+00 1/1 0/0 0/0 .text            procWolfPushInit__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfPushInit() {
    commonProcInit(PROC_WOLF_PUSH);
    mProcVar3.field_0x300e.x = 18;

    s16 var_r5;
    if (fopAcM_CheckCarryType(field_0x27f4, fopAcM_CARRY_TYPE_1)) {
        mProcVar2.field_0x300c = 1;
        var_r5 = 24;
    } else {
        mProcVar2.field_0x300c = 0;
        var_r5 = mProcVar3.field_0x300e.x;
    }
    setSingleAnimeWolf(WANM_PUSH_LIGHT, 1.0f, 0.0f, var_r5, 3.0f);
    mUnderFrameCtrl[0].setAttribute(0);

    mNormalSpeed = 0.0f;
    shape_angle.y = fopAcM_searchActorAngleY(this, field_0x27f4);
    current.angle.y = shape_angle.y;
    field_0x3588 = l_wolfBaseAnime;
    field_0x2f99 = 12;
    field_0x34d4 = l_wolfBaseAnime;

    current.pos.x += cM_ssin(shape_angle.y) * 50.0f;
    current.pos.z += cM_scos(shape_angle.y) * 50.0f;

    if (fopAcM_CheckCarryType(field_0x27f4, fopAcM_CARRY_TYPE_1)) {
        mProcVar2.field_0x300c = 1;
    } else {
        mProcVar2.field_0x300c = 0;
    }

    field_0x280c.setData(field_0x27f4);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfPushInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfPushInit__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8013DA8C-8013DB58 1383CC 00CC+00 1/0 0/0 0/0 .text            procWolfPush__9daAlink_cFv */
int daAlink_c::procWolfPush() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    field_0x2f99 = 4;

    if (frameCtrl->checkAnmEnd()) {
        if (mProcVar2.field_0x300c != 0) {
            setSingleAnimeWolf(WANM_PUSH_LIGHT, lit_6040, FLOAT_LABEL(lit_6108),
                               mProcVar3.field_0x300e.x, lit_6109);
            mUnderFrameCtrl[0].setAttribute(0);
            mProcVar2.field_0x300c = 0;
        } else {
            checkNextActionWolf(0);
        }
    } else if (mProcVar2.field_0x300c == 0 && frameCtrl->checkPass(lit_52470)) {
        if (field_0x280c.getActor() != NULL) {
            fopAcM_setCarryNow(field_0x280c.getActor(), 0);
        }
    }

    return 1;
}

/* 8013DB58-8013DB6C 138498 0014+00 1/1 0/0 0/0 .text daAlink_searchEnemyCargo__FP10fopAc_ac_cPv
 */
static fopAc_ac_c* daAlink_searchEnemyCargo(fopAc_ac_c* i_actor, void*) {
    if (fopAcM_GetName(i_actor) == PROC_E_YC) {
        return i_actor;
    }

    return NULL;
}

/* 8013DB6C-8013DC5C 1384AC 00F0+00 3/2 0/0 0/0 .text procWolfCargoCarryInit__9daAlink_cFv */
int daAlink_c::procWolfCargoCarryInit() {
    if (!commonProcInitNotSameProc(PROC_WOLF_CARGO_CARRY)) {
        return 1;
    }

    f32 tmp_0 = FLOAT_LABEL(lit_6108);
    mNormalSpeed = tmp_0;
    speed.y = tmp_0;
    setSpecialGravity(tmp_0, maxFallSpeed, 0);

    daAlink_WANM anm;
    if (checkCargoCarry()) {
        mProcVar2.field_0x300c = 1;
        anm = WANM_WAIT_KARGOROK;
    } else {
        mProcVar2.field_0x300c = 0;

        fopAc_ac_c* cargo_actor =
            (fopAc_ac_c*)fopAcIt_Judge((fopAcIt_JudgeFunc)daAlink_searchEnemyCargo, NULL);
        if (cargo_actor != NULL) {
            field_0x280c.setData(cargo_actor);
        }

        anm = WANM_CATCH_KARGOROK;
    }

    if (!dComIfGp_evmng_checkStartDemo()) {
        voiceStart(Z2SE_WL_V_CATCHED);
    }

    setSingleAnimeWolfBase(anm);

    return 1;
}

/* 8013DC5C-8013DDF8 13859C 019C+00 1/0 0/0 0/0 .text            procWolfCargoCarry__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfCargoCarry() {
    setJumpMode();

    if (mProcVar2.field_0x300c != 0) {
        mCargoCarryAcKeep.setActor();
        if (mCargoCarryAcKeep.getActor() == NULL || !checkCargoCarry()) {
            offCargoCarry();
            return checkNextActionWolf(0);
        }

        daKago_c* kago_p = (daKago_c*)mCargoCarryAcKeep.getActor();
        mDoMtx_stack_c::copy(kago_p->getLegR3Mtx());
        mDoMtx_stack_c::transM(-9.0f, -17.0f, -30.0f);
        mDoMtx_stack_c::multVecZero(&current.pos);
        mDoMtx_stack_c::ZXYrotM(-0x1928, 0x3FFF, 0);
        mDoMtx_MtxToRot(mDoMtx_stack_c::get(), &shape_angle);
        current.angle.y = shape_angle.y;

        checkSubjectAction();
    } else {
        if (checkEndResetFlg1(ERFLG1_UNK_10000)) {
            return checkNextActionWolf(0);
        }

        e_yc_class* yc_p = (e_yc_class*)field_0x280c.getActor();
        mDoMtx_stack_c::copy(yc_p->getLegR3Mtx());
        mDoMtx_stack_c::transM(-9.0f, -7.0f, -30.0f);
        mDoMtx_stack_c::multVecZero(&current.pos);
        mDoMtx_stack_c::ZXYrotM(0x770C, 0, -0x4C94);
        mDoMtx_MtxToRot(mDoMtx_stack_c::get(), &shape_angle);
        current.angle.y = shape_angle.y;

        voiceStartLevel(Z2SE_WL_V_CATCHED_LOOP);
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfCargoCarry() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfCargoCarry__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8013DDF8-8013DE70 138738 0078+00 1/1 0/0 0/0 .text            procWolfChainUpInit__9daAlink_cFv
 */
int daAlink_c::procWolfChainUpInit() {
    field_0x2fa3 = searchFmChainPos();

    if (field_0x2fa3 == 0) {
        return procWolfWaitInit();
    }

    commonProcInit(PROC_WOLF_CHAIN_UP);
    setSingleAnimeWolfParam(WANM_PICKUP_B, &daAlinkHIO_wlGrab_c0::m.field_0x28);
    mNormalSpeed = FLOAT_LABEL(lit_6108);

    return 1;
}

/* 8013DE70-8013DF30 1387B0 00C0+00 1/0 0/0 0/0 .text            procWolfChainUp__9daAlink_cFv */
int daAlink_c::procWolfChainUp() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    setWallGrabStatus(0x96, 2);

    if (frameCtrl->checkAnmEnd() ||
        (checkInputOnR() && frameCtrl->getFrame() > daAlinkHIO_wlGrab_c0::m.field_0x28.mCheckFrame))
    {
        u8 old_2fa3 = field_0x2fa3;
        fopAc_ac_c* old_actor = field_0x2844.getActor();

        procWolfWaitInit();
        setUpperAnimeBaseSpeed(m_wlAnmDataTable[WANM_CHAIN_PULL].field_0x0, FLOAT_LABEL(lit_6108),
                               lit_6109);

        if (old_actor != NULL) {
            field_0x2fa3 = old_2fa3;
            field_0x2844.setData(old_actor);
        }
    }

    return 1;
}

/* 8013DF30-8013E034 138870 0104+00 1/1 0/0 0/0 .text procWolfGanonCatchInit__9daAlink_cFv */
int daAlink_c::procWolfGanonCatchInit() {
    if (!dComIfGp_event_compulsory(this, 0, 0xFFEF)) {
        return 0;
    }

    mDemo.setSpecialDemoType();
    field_0x27f4->actor_status |= 0x800;

    commonProcInit(PROC_WOLF_GANON_CATCH);
    field_0x280c.setData(field_0x27f4);
    static_cast<fopEn_enemy_c*>(field_0x27f4)->setThrowModeCatch();
    setSingleAnimeWolfBase(WANM_PIG_GANON_CATCH_ST);

    shape_angle.y = cLib_targetAngleY(&current.pos, &field_0x27f4->current.pos);
    current.angle.y = shape_angle.y + 0x8000;

    mNormalSpeed = lit_6895;
    mProcVar3.field_0x300e.z = 30;
    mProcVar2.field_0x300c = 0;
    mProcVar3.field_0x300e.x = 0;
    setFootEffectProcType(0);
    field_0x2f9d = 0x60;
    mProcVar3.field_0x300e.y = 4;
    return 1;
}

/* 8013E034-8013E240 138974 020C+00 1/0 0/0 0/0 .text            procWolfGanonCatch__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfGanonCatch() {
    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;

    if (mProcVar2.field_0x300c == 0) {
        fopEn_enemy_c* ganon_p = (fopEn_enemy_c*)field_0x280c.getActor();
        if (ganon_p == NULL) {
            resetSpecialEvent();
            procWolfWaitInit();
            return 1;
        }

        if (!doButton() || !mLinkAcch.ChkGroundHit()) {
            resetSpecialEvent();
            ganon_p->setThrowModeDash();
            procWolfWaitInit();
            return 1;
        }

        if (checkAnmEnd(frameCtrl_p)) {
            setSingleAnimeWolfBase(WANM_PIG_GANON_CATCH_END);
        }

        if (checkInputOnR()) {
            int direction = getDirectionFromAngle(mStickAngle);
            if (direction == DIR_LEFT || direction == DIR_RIGHT) {
                mProcVar3.field_0x300e.y = direction;
            }
        }

        if (cLib_chaseF(&mNormalSpeed, 0.0f, 1.0f)) {
            if (mProcVar3.field_0x300e.z != 0) {
                mProcVar3.field_0x300e.z--;
            } else {
                if (mProcVar3.field_0x300e.y == DIR_LEFT) {
                    setSingleAnimeWolfBase(WANM_PIG_GANON_THROW_LEFT_START);
                    ganon_p->setThrowModeThrowLeft();
                } else if (mProcVar3.field_0x300e.y == DIR_RIGHT) {
                    setSingleAnimeWolfBase(WANM_PIG_GANON_THROW_RIGHT_START);
                    ganon_p->setThrowModeThrowRight();
                } else {
                    resetSpecialEvent();
                    ganon_p->setThrowModeDash();
                    procWolfWaitInit();
                    return 1;
                }

                mProcVar2.field_0x300c = 1;
                current.angle.y = shape_angle.y;
            }
        } else if (mNormalSpeed > 5.0f) {
            field_0x2f9d = 0x60;
        }
    } else {
        if (checkAnmEnd(frameCtrl_p)) {
            if (mProcVar3.field_0x300e.y == DIR_LEFT) {
                setSingleAnimeWolfBase(WANM_PIG_GANON_THROW_LEFT_END);
            } else {
                setSingleAnimeWolfBase(WANM_PIG_GANON_THROW_RIGHT_END);
            }
        }

        if (mProcVar3.field_0x300e.x != 0) {
            resetSpecialEvent();
            procWolfWaitInit();
        }
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfGanonCatch() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfGanonCatch__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8013E240-8013E2A8 138B80 0068+00 1/1 0/0 0/0 .text procWolfChainReadyInit__9daAlink_cFv */
int daAlink_c::procWolfChainReadyInit() {
    commonProcInit(PROC_WOLF_CHAIN_READY);
    field_0x280c.setData(field_0x27f4);
    setSingleAnimeWolfParam(WANM_ATTACK_A_START, &daAlinkHIO_wlAtNjump_c0::m.field_0x0);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    mProcVar2.field_0x300c = 0;
    mProcVar3.field_0x300e.x = 0;

    return 1;
}

/* 8013E2A8-8013E6C0 138BE8 0418+00 1/0 0/0 0/0 .text            procWolfChainReady__9daAlink_cFv */
#ifdef NONMATCHING
// matches with literals
int daAlink_c::procWolfChainReady() {
    daObjWchain_c* chain = static_cast<daObjWchain_c*>(field_0x280c.getActor());
    if (chain == NULL || mLinkAcch.ChkWallHit()) {
        return procWolfFallInit(2, daAlinkHIO_wlAutoJump_c0::m.field_0x54);
    } else if (mUnderFrameCtrl[0].getFrame() < 3.0f) {
        s16 target_angle_y = cLib_targetAngleY(&current.pos, &chain->getJumpAimPos());
        cLib_addCalcAngleS(&shape_angle.y, target_angle_y, 2, 0x2000, 0x800);
        current.angle.y = shape_angle.y;
    } else if (mProcVar3.field_0x300e.x == 0) {
        shape_angle.y = cLib_targetAngleY(&current.pos, &chain->getJumpAimPos());
        current.angle.y = shape_angle.y;
        mProcVar3.field_0x300e.x = 1;
        cXyz vec1 = chain->getJumpAimPos() - field_0x34e0;
        f32 dist_xz = vec1.absXZ();
        f32 dist = vec1.abs();
        s16 angle = vec1.atan2sY_XZ();
        mProcVar2.field_0x300c = angle >> 1;
        mNormalSpeed = dist_xz * 40.0f / dist + 1.0f;
        mProcVar0.field_0x3008 = dist_xz / mNormalSpeed + 1.0f;
        speed.y = (vec1.y - gravity * 0.5f * mProcVar0.field_0x3008 * mProcVar0.field_0x3008)
            / mProcVar0.field_0x3008;
    } else {
        mProcVar0.field_0x3008--;
        if (chain->getJumpAimPos().abs2(field_0x34e0) < 10000.0f) {
            procWolfChainWaitInit();
        } else if (mProcVar0.field_0x3008 == 0) {
            procWolfFallInit(2, daAlinkHIO_wlAutoJump_c0::m.field_0x54);
        }
    }
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfChainReady() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfChainReady__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8013E6C0-8013E80C 139000 014C+00 1/1 0/0 0/0 .text            procWolfChainWaitInit__9daAlink_cFv
 */
#ifdef NONMATCHING
// matches with literals
int daAlink_c::procWolfChainWaitInit() {
    daObjWchain_c* chain = static_cast<daObjWchain_c*>(field_0x280c.getActor());
    commonProcInit(PROC_WOLF_CHAIN_WAIT);
    setSingleAnimeWolfParam(WANM_HANDLE_HANG, &daAlinkHIO_wlChain_c0::m.field_0x0);
    mProcVar1.field_0x300a = 0;
    chain->onRide();
    field_0x2f99 = 0x50;
    current.pos = chain->getTopPos();
    setSpecialGravity(0.0f, maxFallSpeed, 0);
    speed.y = 0.0f;
    mProcVar3.field_0x300e.y = 0;
    mProcVar0.field_0x3008 = daAlinkHIO_wlChain_c0::m.field_0x3C + 20;
    field_0x3478 = chain->getPullLength();
    current.angle.y = shape_angle.y;
    if (mNormalSpeed > 30.0f) {
        mNormalSpeed = 15.0f;
    } else {
        mNormalSpeed *= 0.5f;
    }
    field_0x37c8.set(
        mNormalSpeed * cM_ssin(shape_angle.y),
        0.0f,
        mNormalSpeed * cM_scos(shape_angle.y)
    );
    mNormalSpeed = 0.0f;
    voiceStart(Z2SE_WL_V_BITE_HANG);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfChainWaitInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfChainWaitInit__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8013E80C-8013ED44 13914C 0538+00 1/0 0/0 0/0 .text            procWolfChainWait__9daAlink_cFv */
#ifdef NONMATCHING
// matches with literals
int daAlink_c::procWolfChainWait() {
    daObjWchain_c* chain = static_cast<daObjWchain_c*>(field_0x280c.getActor());
    if (chain == NULL || mProcVar0.field_0x3008 <= -daAlinkHIO_wlChain_c0::m.field_0x3E) {
        mNormalSpeed = field_0x37c8.absXZ();
        current.angle.y = field_0x37c8.atan2sX_Z();
        onNoResetFlg2(FLG2_UNK_200);
        return procWolfFallInit(2, daAlinkHIO_wlWallHang_c0::m.field_0x98);
    }

    if (mProcVar3.field_0x300e.y == 0) {
        if (mProcVar0.field_0x3008 > 20) {
            mProcVar0.field_0x3008--;
        } else {
            field_0x3478 += daAlinkHIO_wlChain_c0::m.field_0x50;
            if (field_0x3478 > chain->getSwitchOffset()) {
                chain->onNowSwitchFlg();
                mProcVar3.field_0x300e.y = 1;
                dComIfGp_getVibration().StartShock(7, 3, cXyz(0.0f, 1.0f, 0.0f));
            }
        }
    } else {
        mProcVar0.field_0x3008--;
        if (mProcVar0.field_0x3008 < 0) {
            field_0x3478 = chain->getDownOffset();
        } else {
            field_0x3478 = (chain->getSwitchOffset() + chain->getLastOffset() * 0.5f)
                + (mProcVar0.field_0x3008 * 0.5f * 0.05f + 0.5f)
                    * chain->getLastOffset() * cM_scos(mProcVar0.field_0x3008 * 0x3000);
            if (mProcVar0.field_0x3008 == 0) {
                chain->onEndFlg();
            }
        }
    }

    cXyz vec1 = current.pos - chain->getRoofPos();
    if (checkInputOnR()) {
        vec1.x += field_0x33a8 * cM_ssin(field_0x2fe2);
        vec1.z += field_0x33a8 * cM_scos(field_0x2fe2);
    }
    vec1.y -= 15.0f;
    vec1 += field_0x37c8;
    vec1.normalizeZP();
    current.pos = chain->getRoofPos() + vec1 * (field_0x3478 + chain->getInitOutLength());
    field_0x37c8 = (current.pos - field_0x3798) * 0.95f;
    mDoMtx_stack_c::YrotS(-shape_angle.y);
    mDoMtx_stack_c::multVec(&vec1, &vec1);
    shape_angle.x = cM_atan2s(-vec1.z, -vec1.y);
    shape_angle.z = cM_atan2s(vec1.x, JMAFastSqrt(vec1.y * vec1.y + vec1.z * vec1.z));
    mProcVar2.field_0x300c = shape_angle.x;

    daPy_frameCtrl_c* frame_ctrl = &mUnderFrameCtrl[0];
    if (mProcVar1.field_0x300a != 0 || frame_ctrl->checkAnmEnd()) {
        daAlink_WANM anm;
        f32 f1, f2, f3;
        if (checkInputOnR()) {
            anm = WANM_HANDLE_HANG_SW;
            f1 = daAlinkHIO_wlChain_c0::m.field_0x40;
            f2 = daAlinkHIO_wlChain_c0::m.field_0x44;
        } else {
            anm = WANM_HANDLE_HANG_WAIT;
            f1 = daAlinkHIO_wlChain_c0::m.field_0x48;
            f2 = daAlinkHIO_wlChain_c0::m.field_0x4C;
        }
        if (anm != mUnderAnmHeap[0].getIdx()) {
            if (mProcVar1.field_0x300a == 0) {
                mProcVar1.field_0x300a = 1;
                f3 = 0.0f;
            } else {
                f3 = frame_ctrl->getFrame() / frame_ctrl->getEnd();
            }
            setSingleAnimeWolfBaseSpeed(anm, f1, f2);
            frame_ctrl->setFrame(f3 * frame_ctrl->getEnd());
        }
    }

    chain->setPullLength(field_0x3478);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfChainWait() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfChainWait__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8013ED44-8013F1F0 139684 04AC+00 1/1 0/0 0/0 .text            procWolfDigInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfDigInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfDigInit__9daAlink_cFv.s"
}
#pragma pop

/* 8013F1F0-8013F4A8 139B30 02B8+00 1/0 0/0 0/0 .text            procWolfDig__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfDig() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfDig__9daAlink_cFv.s"
}
#pragma pop

/* 8013F4A8-8013F7C4 139DE8 031C+00 2/2 0/0 0/0 .text procWolfDigThroughInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfDigThroughInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfDigThroughInit__9daAlink_cFi.s"
}
#pragma pop

/* 8013F7C4-8013F90C 13A104 0148+00 1/0 0/0 0/0 .text            procWolfDigThrough__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfDigThrough() {
    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;
    field_0x2f99 = 4;

    if (mProcVar3.field_0x300e.x != 0) {
        onSceneChangeArea(mProcVar3.field_0x300e.y, 0xFF, NULL);
    } else {
        if (checkAnmEnd(frameCtrl_p)) {
            if (mProcVar3.field_0x300e.z != 0) {
                dComIfGs_setRestartRoom(current.pos, shape_angle.y, getStartRoomNo());
            }

            resetSpecialEvent();

            if (checkInputOnR()) {
                checkNextActionWolf(0);
            } else {
                field_0x2f99 = 4;
                procWolfSwimEndWaitInit(1);
            }

            return 1;
        }

        if (mProcVar3.field_0x300e.y >= 0 && frameCtrl_p->checkPass(21.0f)) {
            mProcVar3.field_0x300e.x = 1;
        }
    }

    if (frameCtrl_p->checkPass(100.0f)) {
        voiceStart(Z2SE_WL_V_BREATH_RUN);
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfDigThrough() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfDigThrough__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8013F90C-8013FA14 13A24C 0108+00 1/1 0/0 0/0 .text            setSmellSave__9daAlink_cFv */
void daAlink_c::setSmellSave() {
    if (dComIfGs_getCollectSmell() == SMELL_MEDICINE) {
        dComIfGs_offEventBit(0x2F04);  // OFF: Got Medicine Scent
    }

    dMsgObject_setSmellType(mProcVar3.field_0x300e.z);

    if (mProcVar3.field_0x300e.z == SMELL_MEDICINE) {
        dComIfGs_onEventBit(0x2F04);  // ON: Got Medicine Scent
    } else if (mProcVar3.field_0x300e.z == SMELL_CHILDREN) {
        fopAcM_onSwitch(this, 102);
    } else if (mProcVar3.field_0x300e.z == SMELL_YELIA_POUCH) {
        fopAcM_onSwitch(this, 103);
    } else if (mProcVar3.field_0x300e.z == SMELL_FISH) {
        dComIfGs_onEventBit(0x6120);  // ON: Got Reekfish scent
    } else if (mProcVar3.field_0x300e.z == SMELL_POH) {
        dComIfGs_onEventBit(0x6210);  // ON: Got Poe scent
    }

    setGetSubBgm(mProcVar3.field_0x300e.z);
}

/* 8013FA14-8013FC24 13A354 0210+00 1/1 0/0 0/0 .text            procWolfGetSmellInit__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfGetSmellInit() {
    if (!dComIfGp_event_compulsory(this, 0, 0xFFFF)) {
        return 0;
    }

    mDemo.setSpecialDemoType();
    commonProcInit(PROC_WOLF_GET_SMELL);
    setSingleAnimeWolfBaseSpeed(WANM_SMELL, daAlinkHIO_wlChain_c0::m.field_0x54,
                                daAlinkHIO_wlChain_c0::m.field_0x58);
    voiceStartLevel(Z2SE_WL_V_SNIFF);

    shape_angle.y = fopAcM_searchActorAngleY(this, field_0x27f4);
    current.angle.y = shape_angle.y;

    current.pos.x = field_0x27f4->current.pos.x - cM_ssin(shape_angle.y) * 100.0f;
    current.pos.z = field_0x27f4->current.pos.z - cM_scos(shape_angle.y) * 100.0f;

    field_0x280c.setData(field_0x27f4);
    static_cast<kytag03_class*>(field_0x27f4)->field_0x588 = 1;
    static_cast<kytag03_class*>(field_0x27f4)->field_0x587 = 0;
    mProcVar3.field_0x300e.z = static_cast<kytag03_class*>(field_0x27f4)->field_0x589;
    fopAcM_OnStatus(field_0x27f4, 0x800);

    dComIfGp_setPlayerStatus1(0, 0x4000000);
    mProcVar2.field_0x300c = 0;

    if (dComIfGs_getCollectSmell() == NO_ITEM) {
        field_0x3198 = 0xBBC;
    } else {
        field_0x3198 = 0xBBB;
    }

    field_0x319c = -1;

    if (mProcVar3.field_0x300e.z == SMELL_YELIA_POUCH) {
        field_0x319c = 0x2220;
    } else if (mProcVar3.field_0x300e.z == SMELL_CHILDREN) {
        field_0x319c = 0x2240;
    }

    if (field_0x319c < 0 || dComIfGs_isEventBit(field_0x319c)) {
        field_0x319c = -1;
    }

    mProcVar3.field_0x300e.y = 0;
    mNormalSpeed = 0.0f;
    field_0x3588 = l_wolfBaseAnime;
    onWolfEyeUp();
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfGetSmellInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfGetSmellInit__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8013FC24-8013FF28 13A564 0304+00 1/0 0/0 0/0 .text            procWolfGetSmell__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procWolfGetSmell() {
    kytag03_class* kytag3_p = (kytag03_class*)field_0x280c.getActor();

    if (field_0x319c >= 0) {
        if (checkSpecialDemoMode()) {
            dComIfGp_getEvent().reset(this);
            dComIfGp_clearPlayerStatus1(0, 0x4000000);

            if (mProcVar3.field_0x300e.z == SMELL_YELIA_POUCH) {
                fopAcM_orderOtherEvent(this, "SMELL_1st", 0xFFFF, 0x400, 1);
            } else {
                fopAcM_orderOtherEvent(this, "SMELL_Child", 0xFFFF, 0x400, 1);
            }

            mDemo.setSystemDemoType();
        } else if (mDemo.getParam0() == 0) {
            dComIfGs_onEventBit(field_0x319c);
            dComIfGp_evmng_cutEnd(field_0x3184);

            if (kytag3_p != NULL) {
                kytag3_p->field_0x588 = 0;
            }
        }
    }

    if (checkUnderMove0BckNoArcWolf(WANM_SMELL)) {
        voiceStartLevel(Z2SE_WL_V_SNIFF);
    }

    if (mProcVar3.field_0x300e.y != 0) {
        field_0x2f99 = 4;
    }

    if (mProcVar2.field_0x300c != 0) {
        if (mMsgFlow.doFlow(this, NULL, 0)) {
            if (kytag3_p != NULL) {
                kytag3_p->field_0x588 = 0;
            }
            resetSpecialEvent();
        } else if (mMsgFlow.getChoiceNo() == 0 &&
                   mProcVar3.field_0x300e.z != dComIfGs_getCollectSmell())
        {
            setSmellSave();
        }
    } else if (mProcVar3.field_0x300e.y == 0) {
        if ((kytag3_p == NULL || (field_0x319c < 0 && kytag3_p->field_0x588 == 2)) ||
            (mDemo.getDemoMode() == 0x37 && mDemo.getParam0() == 1))
        {
            setSingleAnimeWolf(WANM_GET_A, 1.0f, 10.0f, -1, 3.0f);
            dComIfGp_setPlayerStatus1(0, 0x4000000);

            if (kytag3_p != NULL) {
                fopAcM_OnStatus(kytag3_p, 0x800);
            }

            mProcVar3.field_0x300e.y = 1;

            dCam_getBody()->StartEventCamera(8, fopAcM_GetID(this), 0);
            field_0x2f99 = 12;

            if (field_0x3198 == 0xBBC) {
                setSmellSave();
            }
        } else if (mProcVar0.field_0x3008 != 0) {
            mProcVar0.field_0x3008--;
        }
    } else if (checkAnmEnd(mUnderFrameCtrl)) {
        setSingleAnimeWolfBase(WANM_GET);
        field_0x2f99 = 12;
        mProcVar2.field_0x300c = 1;
        mMsgFlow.init(this, field_0x3198, 0, NULL);
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfGetSmell() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfGetSmell__9daAlink_cFv.s"
}
#pragma pop
#endif
