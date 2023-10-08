/**
 * d_a_alink_demo.inc
 * Player Cutscene / Event action handling
 */

#include "f_op/f_op_msg_mng.h"

/* 80115C20-80115C50 110560 0030+00 72/72 0/0 0/0 .text            checkEventRun__9daAlink_cCFv */
BOOL daAlink_c::checkEventRun() const {
    return i_dComIfGp_event_runCheck() || checkPlayerDemoMode();
}

/* 80115C50-80115D08 110590 00B8+00 2/2 0/0 0/0 .text            createNpcTks__9daAlink_cFP4cXyziUl
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::createNpcTks(cXyz* param_0, int param_1, u32 param_2) {
    nofralloc
#include "asm/d/a/d_a_alink/createNpcTks__9daAlink_cFP4cXyziUl.s"
}
#pragma pop

/* 80115D08-80115EC0 110648 01B8+00 1/0 0/0 0/0 .text            checkSetNpcTks__9daAlink_cFP4cXyzii
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daAlink_c::checkSetNpcTks(cXyz* param_0, int param_1, int param_2) {
    nofralloc
#include "asm/d/a/d_a_alink/checkSetNpcTks__9daAlink_cFP4cXyzii.s"
}
#pragma pop

/* 80115EC0-80116E60 110800 0FA0+00 1/1 0/0 0/0 .text            checkDemoAction__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::checkDemoAction() {
    nofralloc
#include "asm/d/a/d_a_alink/checkDemoAction__9daAlink_cFv.s"
}
#pragma pop

/* 80116E60-80116E9C 1117A0 003C+00 4/4 0/0 0/0 .text            checkDemoMoveMode__9daAlink_cCFUl
 */
bool daAlink_c::checkDemoMoveMode(u32 i_mode) const {
    return i_mode == 2 || i_mode == 3 || i_mode == 0x26;
}

/* 80116E9C-80117064 1117DC 01C8+00 1/1 0/0 0/0 .text setDemoMoveData__9daAlink_cFPUlPC4cXyz */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setDemoMoveData(u32* param_0, cXyz const* param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/setDemoMoveData__9daAlink_cFPUlPC4cXyz.s"
}
#pragma pop

/* 80117064-801171F4 1119A4 0190+00 1/1 0/0 0/0 .text setNoDrawSwordShield__9daAlink_cFiUs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setNoDrawSwordShield(int param_0, u16 param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/setNoDrawSwordShield__9daAlink_cFiUs.s"
}
#pragma pop

/* 801171F4-80117B90 111B34 099C+00 1/1 0/0 0/0 .text            setDemoData__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setDemoData() {
    nofralloc
#include "asm/d/a/d_a_alink/setDemoData__9daAlink_cFv.s"
}
#pragma pop

/* 80117B90-80117C34 1124D0 00A4+00 1/1 0/0 0/0 .text            resetDemoBck__9daAlink_cFv */
void daAlink_c::resetDemoBck() {
    mFaceBckHeap.resetArcNo();
    mFaceBtpHeap.resetArcNo();
    mFaceBtkHeap.resetArcNo();
    mUnderAnmHeap[0].resetArcNo();
    mUnderAnmHeap[0].resetIdx();
    mFaceBckHeap.resetIdx();
    mFaceBtpHeap.resetIdx();
    mFaceBtkHeap.resetIdx();

    if (i_checkWolf()) {
        setSingleAnimeWolfBaseSpeed(WANM_WAIT, daAlinkHIO_wlMoveNoP_c0::m.field_0x14,
                                    daAlinkHIO_wlMove_c0::m.field_0x94);
        setFaceBasicAnime(ANM_WAIT);
    } else {
        setSingleAnimeBaseSpeed(ANM_WAIT, daAlinkHIO_move_c0::m.mWaitAnmSpeed,
                                daAlinkHIO_basic_c0::m.mAnmBlendFactor);
    }
}

/* 80117C34-80117C90 112574 005C+00 3/3 0/0 0/0 .text            endHighModel__9daAlink_cFv */
void daAlink_c::endHighModel() {
    if (field_0x068c != NULL) {
        mpDemoFCTongueModel->getModelData()->removeTexMtxAnimator(field_0x068c);
    }

    i_offNoResetFlg1(FLG1_UNK_10);
    field_0x0698 = NULL;
    field_0x068c = NULL;
}

/* 80117C90-80117CF8 1125D0 0068+00 21/21 0/0 0/0 .text            resetSpecialEvent__9daAlink_cFv
 */
void daAlink_c::resetSpecialEvent() {
    i_dComIfGp_event_reset();
    dCam_getBody()->EndEventCamera(fopAcM_GetID(this));
    endDemoMode();
}

/* 80117CF8-801180EC 112638 03F4+00 4/4 0/0 0/0 .text            endDemoMode__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::endDemoMode() {
    nofralloc
#include "asm/d/a/d_a_alink/endDemoMode__9daAlink_cFv.s"
}
#pragma pop

/* 801180EC-80118170 112A2C 0084+00 2/2 0/0 0/0 .text            getDemoLookActor__9daAlink_cFv */
// weird gameinfo load
#ifdef NONMATCHING
fopAc_ac_c* daAlink_c::getDemoLookActor() {
    if (mDemo.getParam0() == 1) {
        return dComIfGp_event_getPt1();
    } else if (mDemo.getParam0() == 2) {
        return dComIfGp_event_getPt2();
    } else if (mDemo.getParam0() == 3) {
        return fopAcM_getTalkEventPartner(this);
    } else if (mDemo.getParam0() == 4) {
        return getMidnaActor();
    }

    return NULL;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm fopAc_ac_c* daAlink_c::getDemoLookActor() {
    nofralloc
#include "asm/d/a/d_a_alink/getDemoLookActor__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 80118170-801181A0 112AB0 0030+00 4/4 0/0 0/0 .text            checkFlyAtnWait__9daAlink_cFv */
BOOL daAlink_c::checkFlyAtnWait() {
    return mDemo.getDemoMode() == 0x17 && (mDemo.getParam1() == 4 || mDemo.getParam1() == 5);
}

/* 801181A0-801182D4 112AE0 0134+00 2/2 0/0 0/0 .text            setGetItemFace__9daAlink_cFUs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setGetItemFace(u16 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setGetItemFace__9daAlink_cFUs.s"
}
#pragma pop

/* 801182D4-80118308 112C14 0034+00 2/2 0/0 0/0 .text checkGrabTalkActor__9daAlink_cFP10fopAc_ac_c
 */
BOOL daAlink_c::checkGrabTalkActor(fopAc_ac_c* i_actor) {
    s16 name = fopAcM_GetName(i_actor);
    return name == PROC_NPC_KYURY || name == PROC_MYNA || name == PROC_OBJ_SSITEM ||
           name == PROC_TAG_MSG;
}

/* 80118308-8011856C 112C48 0264+00 2/2 0/0 0/0 .text            setTalkStartBack__9daAlink_cFP4cXyz
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::setTalkStartBack(cXyz* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setTalkStartBack__9daAlink_cFP4cXyz.s"
}
#pragma pop

/* 8011856C-80118654 112EAC 00E8+00 4/4 0/0 0/0 .text setShapeAngleToTalkActor__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setShapeAngleToTalkActor() {
    nofralloc
#include "asm/d/a/d_a_alink/setShapeAngleToTalkActor__9daAlink_cFv.s"
}
#pragma pop

/* 80118654-801186D4 112F94 0080+00 2/2 0/0 0/0 .text            setTalkAnime__9daAlink_cFv */
void daAlink_c::setTalkAnime() {
    if (mDemo.getDemoMode() == 8 || mEquipItem == KANTERA ||
        (i_checkNoResetFlg2(FLG2_UNK_1) && field_0x2fde == 0x48))
    {
        setDoubleAnime(FLOAT_LABEL(lit_6108), daAlinkHIO_move_c0::m.mWaitAnmSpeed,
                       daAlinkHIO_move_c0::m.mWaitAnmSpeed, ANM_WAIT, ANM_WAIT, 2, lit_6109);
    } else {
        setSingleAnimeBase(ANM_TALK);
    }
}

/* 801186D4-80118778 113014 00A4+00 2/2 0/0 0/0 .text            setTradeItemAnime__9daAlink_cFv */
u8 daAlink_c::setTradeItemAnime() {
    setSingleAnimeBase(ANM_TRADE_ITEM_PULL_OUT);
    offModeFlg(0x100);

    if (mDemo.getParam0() != 1) {
        int item_no;
        if (mDemo.getParam0() == 2) {
            item_no = mDemo.getParam1();
        } else {
            item_no = dComIfGp_event_getPreItemNo();
        }

        u32 partner_id = fopAcM_createItemForPresentDemo(
            &current.pos, item_no, 3, -1, fopAcM_GetRoomNo(this), &shape_angle, &mScale);
        dComIfGp_event_setItemPartnerId(partner_id);
    }

    keepItemData();
    return 1;
}

/* 80118778-801187B4 1130B8 003C+00 3/3 0/0 0/0 .text            setTradeItemOutHand__9daAlink_cFv
 */
void daAlink_c::setTradeItemOutHand() {
    daPy_frameCtrl_c* frame_ctrl = mUnderFrameCtrl;

    if (frame_ctrl->getFrame() >= lit_24590) {
        field_0x2f92 = 4;
    } else if (frame_ctrl->getFrame() >= lit_8676) {
        field_0x2f92 = 0;
    }
}

/* 801187B4-80118840 1130F4 008C+00 5/5 0/0 0/0 .text            checkEndMessage__9daAlink_cFUl */
BOOL daAlink_c::checkEndMessage(u32 param_0) {
    if (mMsgClassID == -1) {
        mMsgClassID = fopMsgM_messageSet(param_0, 1000);
    } else {
        msg_class* msg = fopMsgM_SearchByID(mMsgClassID);

        if (msg != NULL) {
            if (msg->mMode == 14) {
                msg->mMode = 16;
            } else if (msg->mMode == 0x12) {
                msg->mMode = 0x13;
                return 1;
            }
        }
    }

    return 0;
}

/* 80118840-801188B0 113180 0070+00 1/1 0/0 0/0 .text setDemoRightHandIndex__9daAlink_cFUs */
u8 daAlink_c::setDemoRightHandIndex(u16 param_0) {
    if (param_0 == 0xFD) {
        field_0x300e.y = 1;
        return 6;
    } else if (param_0 == 0xFC) {
        field_0x2fab |= 0x10;
        return 5;
    } else if (param_0 == 0xFB) {
        if (mpDemoHRTmpModel != NULL) {
            return 0xFB;
        } else {
            return 0xFE;
        }
    } else if (param_0 != 0xFE) {
        return param_0 + 5;
    } else {
        return param_0 & 0xFF;
    }
}

/* 801188B0-8011894C 1131F0 009C+00 1/1 0/0 0/0 .text            setDemoLeftHandIndex__9daAlink_cFUs
 */
u8 daAlink_c::setDemoLeftHandIndex(u16 param_0) {
    if (param_0 == 0xFD) {
        if (mEquipItem != 0x103) {
            deleteEquipItem(FALSE, TRUE);
            setSwordModel();
        }
        return 0;
    } else if (param_0 == 0xFC) {
        field_0x2fab |= 0x8;
        return 0;
    } else if (param_0 == 0xFB) {
        if (mpDemoHLTmpModel != NULL) {
            return 0xFB;
        } else {
            return 0xFE;
        }
    } else {
        return param_0 & 0xFF;
    }
}

/* 8011894C-801189F8 11328C 00AC+00 1/1 0/0 0/0 .text            setDemoRide__9daAlink_cFUs */
void daAlink_c::setDemoRide(u16 param_0) {
    daHorse_c* horse_p = i_dComIfGp_getHorseActor();

    if (param_0 == 1) {
        if (horse_p != NULL && !i_checkModeFlg(0x400)) {
            onModeFlg(0x400);
            horse_p->onRideFlg();
            field_0x384c = (cXyz*)&l_horseBaseAnime;
            mRideStatus = 1;
        }
    } else {
        if (horse_p != NULL) {
            horse_p->offRideFlg();
        }

        mRideStatus = 0;
        offModeFlg(0x400);
    }
}

/* 801189F8-80118AD0 113338 00D8+00 1/1 0/0 0/0 .text
 * setDemoBodyBck__9daAlink_cFP13dDemo_actor_cUs                */
// matches with literals
#ifdef NONMATCHING
void daAlink_c::setDemoBodyBck(dDemo_actor_c* param_0, u16 param_1) {
    J3DAnmTransform* bck = (J3DAnmTransform*)mUnderAnmHeap[0].loadDataDemoRID(param_1, 0);
    if (bck != NULL) {
        setFrameCtrl(mUnderFrameCtrl, bck->getAttribute(), 0, bck->getFrameMax(), 1.0f, 0.0f);
        mNowAnmPackUnder[0].setAnmTransform(bck);
        mNowAnmPackUpper[0].setAnmTransform(bck);

        dDemo_actor_c* demo_actor_p = dDemo_c::getActor(mDemoActorId);
        if (demo_actor_p->checkEnable(0x80)) {
            field_0x2060->initOldFrameMorf(demo_actor_p->getPrm_Morf(), 0, field_0x30c6);
        }

        field_0x2f8c = 0;
        param_0->setAnmFrameMax(bck->getFrameMax());
        setBasAnime(UNDER_0);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setDemoBodyBck(dDemo_actor_c* param_0, u16 param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/setDemoBodyBck__9daAlink_cFP13dDemo_actor_cUs.s"
}
#pragma pop
#endif

/* 80118AD0-80118B34 113410 0064+00 1/1 0/0 0/0 .text            checkFinalBattle__9daAlink_cFv */
BOOL daAlink_c::checkFinalBattle() {
    return checkStageName("D_MN09B") && dComIfGs_isSaveDunSwitch(1);
}

/* 80118B34-80118BF4 113474 00C0+00 3/3 0/0 0/0 .text            checkRestartDead__9daAlink_cFii */
BOOL daAlink_c::checkRestartDead(int i_dmgAmount, int i_checkZoraMag) {
    i_dmgAmount *= (int)damageMagnification(i_checkZoraMag, 1);

    if (mProcID != PROC_DEAD && i_dmgAmount >= i_dComIfGs_getLife() && !checkMagicArmorNoDamage() &&
        !dComIfGs_checkBottle(FAIRY))
    {
        i_onNoResetFlg2(FLG2_UNK_40000);
        procCoDeadInit(0);
        return 1;
    }

    return 0;
}

/* 80118BF4-80118C98 113534 00A4+00 2/2 0/0 0/0 .text            setDeadRideSyncPos__9daAlink_cFv */
void daAlink_c::setDeadRideSyncPos() {
    if (i_checkModeFlg(MODE_RIDING) && mRideAcKeep.getActor() != NULL) {
        if (i_checkReinRide()) {
            setSyncRidePos();
        } else if (checkSpinnerRide()) {
            s16 old_angle = shape_angle.y;
            setSpinnerSyncPos();
            shape_angle.y = old_angle;
        }
    }
}

/* 80118C98-80118D7C 1135D8 00E4+00 5/5 0/0 0/0 .text            checkDeadHP__9daAlink_cFv */
BOOL daAlink_c::checkDeadHP() {
    return ((i_dComIfGs_getLife() == 0 && !i_checkResetFlg0(RFLG0_UNK_400)) &&
            !dComIfGs_checkBottle(FAIRY)) ||
           i_checkNoResetFlg2(FLG2_UNK_40000) ||
           (dComIfGp_getOxygenShowFlag() && dComIfGp_getNowOxygen() == 0);
}

/* 80118D7C-80118FF8 1136BC 027C+00 3/3 0/0 0/0 .text            checkDeadAction__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::checkDeadAction(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/checkDeadAction__9daAlink_cFi.s"
}
#pragma pop

/* 80118FF8-801190A4 113938 00AC+00 1/1 0/0 0/0 .text
 * setHighModelBck__9daAlink_cFP13mDoExt_bckAnmUs               */
void daAlink_c::setHighModelBck(mDoExt_bckAnm* i_bck, u16 param_1) {
    if (i_bck != NULL) {
        J3DAnmTransform* bck = (J3DAnmTransform*)dComIfG_getObjectIDRes(
            dStage_roomControl_c::getDemoArcName(), param_1);

        if (bck != NULL && i_bck->getBckAnm() != bck) {
            if (field_0x06b4 == bck) {
                mpDemoHDTmpBck->changeBckOnly(NULL);
            } else {
                i_bck->init(bck, TRUE, -1, lit_6040, 0, -1, true);
            }
        }
    }
}

/* 801190A4-80119134 1139E4 0090+00 1/1 0/0 0/0 .text            setHighModelFaceBtk__9daAlink_cFUs
 */
// extra mr
#ifdef NONMATCHING
void daAlink_c::setHighModelFaceBtk(u16 param_0) {
    J3DAnmTextureSRTKey* btk = (J3DAnmTextureSRTKey*)dComIfG_getObjectIDRes(
        dStage_roomControl_c::getDemoArcName(), param_0);

    if (btk != NULL && field_0x068c != btk) {
        btk->searchUpdateMaterialID(mpDemoFCTongueModel->getModelData());
        mpDemoFCTongueModel->getModelData()->entryTexMtxAnimator(btk);

        btk->setFrame(FLOAT_LABEL(lit_6108));
        field_0x068c = btk;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setHighModelFaceBtk(u16 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setHighModelFaceBtk__9daAlink_cFUs.s"
}
#pragma pop
#endif

/* 80119134-801191C4 113A74 0090+00 1/1 0/0 0/0 .text
 * setDemoBrk__9daAlink_cFPP15J3DAnmTevRegKeyP8J3DModelUs       */
// extra mr
#ifdef NONMATCHING
void daAlink_c::setDemoBrk(J3DAnmTevRegKey** param_0, J3DModel* param_1, u16 param_2) {
    J3DAnmTevRegKey* brk =
        (J3DAnmTevRegKey*)dComIfG_getObjectIDRes(dStage_roomControl_c::getDemoArcName(), param_2);

    if (brk != NULL && *param_0 != brk) {
        brk->searchUpdateMaterialID(param_1->getModelData());
        param_1->getModelData()->entryTevRegAnimator(brk);

        brk->setFrame(FLOAT_LABEL(lit_6108));
        *param_0 = brk;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setDemoBrk(J3DAnmTevRegKey** param_0, J3DModel* param_1, u16 param_2) {
    nofralloc
#include "asm/d/a/d_a_alink/setDemoBrk__9daAlink_cFPP15J3DAnmTevRegKeyP8J3DModelUs.s"
}
#pragma pop
#endif

/* 801191C4-80119464 113B04 02A0+00 1/1 0/0 0/0 .text
 * setStickAnmData__9daAlink_cFP10J3DAnmBaseiiUsi               */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setStickAnmData(J3DAnmBase* param_0, int param_1, int param_2, u16 param_3,
                                    int param_4) {
    nofralloc
#include "asm/d/a/d_a_alink/setStickAnmData__9daAlink_cFP10J3DAnmBaseiiUsi.s"
}
#pragma pop

/* ############################################################################################## */
/* 804256B8-804256CC 0523D8 0014+00 1/1 0/0 0/0 .bss             dummy$36763 */
static u8 dummy[20];

/* 80119464-801195C0 113DA4 015C+00 1/1 0/0 0/0 .text
 * daAlink_c_getDemoIDData__FP13dDemo_actor_cPiPiPiPUsPiPi      */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daAlink_c_getDemoIDData(dDemo_actor_c* param_0, int* param_1, int* param_2,
                                        int* param_3, u16* param_4, int* param_5, int* param_6) {
    nofralloc
#include "asm/d/a/d_a_alink/daAlink_c_getDemoIDData__FP13dDemo_actor_cPiPiPiPUsPiPi.s"
}
#pragma pop

/* 801195C0-801195F8 113F00 0038+00 7/0 0/0 0/0 .text            procDemoCommon__9daAlink_cFv */
int daAlink_c::procDemoCommon() {
    dComIfGp_evmng_cutEnd(field_0x3184);
    return 1;
}

/* 801195F8-801196D8 113F38 00E0+00 1/1 0/0 0/0 .text            procCoToolDemoInit__9daAlink_cFv */
int daAlink_c::procCoToolDemoInit() {
    if (!commonProcInitNotSameProc(PROC_TOOL_DEMO)) {
        return 1;
    }

    f32 tmp_0 = FLOAT_LABEL(lit_6108);
    mNormalSpeed = tmp_0;
    speedF = tmp_0;
    speed.y = tmp_0;

    mUnderAnmHeap[0].resetArcNo();
    mUnderAnmHeap[0].resetIdx();
    mUpperAnmHeap[0].resetIdx();
    mUnderAnmHeap[1].resetIdx();
    mUpperAnmHeap[1].resetIdx();

    setDoubleAnimeBlendRatio(tmp_0);
    mNowAnmPackUnder[1].setAnmTransform(NULL);
    mNowAnmPackUpper[1].setAnmTransform(NULL);

    field_0x3198 = 0;
    field_0x300e.y = 0;
    field_0x2fab = 0;
    deleteEquipItem(FALSE, TRUE);
    mUnderAnmHeap[0].setBufferSize(0x10800);
    field_0x300c = 0;
    field_0x3478 = FLOAT_LABEL(lit_6108);
    field_0x37c8 = current.pos;

    i_onEndResetFlg1(ERFLG1_GANON_FINISH);
    return 1;
}

/* 801196D8-80119D98 114018 06C0+00 1/0 0/0 0/0 .text            procCoToolDemo__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCoToolDemo() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoToolDemo__9daAlink_cFv.s"
}
#pragma pop

/* 80119D98-80119F64 1146D8 01CC+00 1/1 0/0 0/0 .text            procCoTalkInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCoTalkInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoTalkInit__9daAlink_cFv.s"
}
#pragma pop

/* 80119F64-8011A214 1148A4 02B0+00 1/0 0/0 0/0 .text            procCoTalk__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCoTalk() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoTalk__9daAlink_cFv.s"
}
#pragma pop

/* 8011A214-8011A42C 114B54 0218+00 1/0 0/0 0/0 .text procCoOpenTreasureInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCoOpenTreasureInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoOpenTreasureInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011A42C-8011A4C0 114D6C 0094+00 1/0 0/0 0/0 .text            procCoOpenTreasure__9daAlink_cFv */
int daAlink_c::procCoOpenTreasure() {
    i_onEndResetFlg1(ERFLG1_UNK_8);

    if (field_0x300c == 0) {
        field_0x300c = 1;
    } else {
        field_0x2f99 = 4;
    }

    if (checkAnmEnd(mUnderFrameCtrl)) {
        dComIfGp_evmng_cutEnd(field_0x3184);
        mLinkAcch.ClrWallNone();
        mLinkAcch.OnLineCheck();
    }

    return 1;
}

/* 8011A4C0-8011A5CC 114E00 010C+00 1/0 0/0 0/0 .text            procCoUnequipInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCoUnequipInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoUnequipInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011A5CC-8011A688 114F0C 00BC+00 1/0 0/0 0/0 .text            procCoUnequip__9daAlink_cFv */
int daAlink_c::procCoUnequip() {
    if (field_0x300c != 0) {
        if (checkAnmEnd(mUnderFrameCtrl)) {
            setBlendMoveAnime(lit_6109);
            itemEquip(COPY_ROD);

            f32 tmp_6 = lit_7977;
            mUpperFrameCtrl[2].setFrame(tmp_6);
            getNowAnmPackUpper(UPPER_2)->setFrame(tmp_6);
            commonChangeItem();
            field_0x300c = 0;
        }
    } else {
        if (!i_checkWolf()) {
            setBlendMoveAnime(lit_6041);
        }

        if (checkNoUpperAnime()) {
            dComIfGp_evmng_cutEnd(field_0x3184);
        }
    }

    return 1;
}

/* 8011A688-8011A6FC 114FC8 0074+00 4/4 0/0 0/0 .text            setGetSubBgm__9daAlink_cFi */
void daAlink_c::setGetSubBgm(int param_0) {
    u32 se_type = getSeType[param_0];

    if (se_type == 3 && field_0x300e.y == 0) {
        se_type = 7;
    }

    if (se_type != 8) {
        mDoAud_subBgmStart(bgmLabel[se_type]);
        dComIfGp_setMesgBgmOn();
    }
}

/* 8011A6FC-8011A798 11503C 009C+00 1/0 0/0 0/0 .text checkTreasureRupeeReturn__9daAlink_cCFi */
bool daAlink_c::checkTreasureRupeeReturn(int i_itemNo) const {
    if (i_itemNo == LINKS_SAVINGS) {
        i_itemNo = PURPLE_RUPEE;
    }

    i_itemNo -= 4;
    if (i_itemNo < 0 || i_itemNo >= 4) {
        return false;
    }

    return dComIfGs_getRupeeMax() < rupeeCount[i_itemNo] + i_dComIfGs_getRupee();
}

/* 8011A798-8011AC28 1150D8 0490+00 2/1 0/0 0/0 .text            procCoGetItemInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCoGetItemInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoGetItemInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011AC28-8011B3F0 115568 07C8+00 1/0 0/0 0/0 .text            procCoGetItem__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCoGetItem() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoGetItem__9daAlink_cFv.s"
}
#pragma pop

/* 8011B3F0-8011B46C 115D30 007C+00 1/0 0/0 0/0 .text            procCoTurnBackInit__9daAlink_cFv */
int daAlink_c::procCoTurnBackInit() {
    if (!commonProcInitNotSameProc(PROC_TURN_BACK)) {
        return 0;
    }

    mNormalSpeed = FLOAT_LABEL(lit_6108);
    if (i_checkWolf()) {
        setSingleAnimeWolfBase(WANM_TURN_BACK);
    } else {
        setSingleAnimeBase(ANM_TURN_BACK);
    }

    field_0x300c = 0;
    return 1;
}

/* 8011B46C-8011B57C 115DAC 0110+00 1/0 0/0 0/0 .text            procCoTurnBack__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCoTurnBack() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoTurnBack__9daAlink_cFv.s"
}
#pragma pop

/* 8011B57C-8011B71C 115EBC 01A0+00 1/0 0/0 0/0 .text            procDoorOpenInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procDoorOpenInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procDoorOpenInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011B71C-8011B914 11605C 01F8+00 1/0 0/0 0/0 .text            procDoorOpen__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procDoorOpen() {
    nofralloc
#include "asm/d/a/d_a_alink/procDoorOpen__9daAlink_cFv.s"
}
#pragma pop

/* 8011B914-8011BA20 116254 010C+00 1/1 0/0 0/0 .text            procCoLookWaitInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCoLookWaitInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoLookWaitInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011BA20-8011BABC 116360 009C+00 1/0 0/0 0/0 .text            procCoLookWait__9daAlink_cFv */
int daAlink_c::procCoLookWait() {
    fopAc_ac_c* look_actor_p = getDemoLookActor();

    if (look_actor_p != NULL) {
        s16 target_angle;
        s16 svar1 = cLib_targetAngleY(&field_0x34e0, &look_actor_p->mEyePos) - shape_angle.y;

        if (svar1 > 0x6000) {
            target_angle = shape_angle.y + 0x6000;
        } else if (svar1 < -0x6000) {
            target_angle = shape_angle.y + -0x6000;
        } else {
            target_angle = shape_angle.y;
        }

        cLib_addCalcAngleS(&shape_angle.y, target_angle, 2, 0x800, 0x100);
    }

    dComIfGp_evmng_cutEnd(field_0x3184);
    return 1;
}

/* 8011BABC-8011BB40 1163FC 0084+00 1/0 0/0 0/0 .text procCoDemoPushPullWaitInit__9daAlink_cFv */
int daAlink_c::procCoDemoPushPullWaitInit() {
    if (!commonProcInitNotSameProc(PROC_DEMO_PUSH_PULL_WAIT)) {
        return 0;
    }

    if (i_checkWolf()) {
        setSingleAnimeWolfBase(WANM_WAIT_PP);
    } else {
        setSingleAnimeBaseSpeed(ANM_WAIT_PUSH_PULL, daAlinkHIO_pushpull_c0::m.field_0x10,
                                daAlinkHIO_pushpull_c0::m.field_0x14);
    }

    mNormalSpeed = FLOAT_LABEL(lit_6108);
    return 1;
}

/* 8011BB40-8011BC14 116480 00D4+00 1/0 0/0 0/0 .text procCoDemoPushMoveInit__9daAlink_cFv */
int daAlink_c::procCoDemoPushMoveInit() {
    if (!commonProcInitNotSameProc(PROC_DEMO_PUSH_MOVE)) {
        return 0;
    }

    if (i_checkWolf()) {
        if (mDemo.getParam0() != 0) {
            setSingleAnimeWolfBase(WANM_PUSH);
        } else {
            setSingleAnimeWolf(WANM_PUSH_LIGHT, daAlinkHIO_wlPush_c0::m.field_0x8,
                               FLOAT_LABEL(lit_6108), 24, daAlinkHIO_wlPush_c0::m.field_0xC);
        }
    } else {
        if (mDemo.getParam0() != 0) {
            setSingleAnimeBase(ANM_PUSH);
        } else {
            setSingleAnimeBaseSpeed(ANM_PUSH_LIGHT, daAlinkHIO_pushpull_c0::m.field_0x18,
                                    daAlinkHIO_pushpull_c0::m.field_0x1C);
        }
    }

    mNormalSpeed = FLOAT_LABEL(lit_6108);
    return 1;
}

/* 8011BC14-8011BC74 116554 0060+00 2/2 0/0 0/0 .text            setMonkeyMoveAnime__9daAlink_cFv */
void daAlink_c::setMonkeyMoveAnime() {
    daPy_frameCtrl_c* frame_ctrl = mUnderFrameCtrl;

    if (mDemo.getParam0() == 0) {
        field_0x2f92 = 0xFE;
        field_0x2f93 = 0xFE;
        frame_ctrl->setFrame(FLOAT_LABEL(lit_6108));
    } else {
        field_0x2f92 = 2;
        field_0x2f93 = 5;
        frame_ctrl->setFrame(lit_6040);
    }

    getNowAnmPackUnder(UNDER_0)->setFrame(frame_ctrl->getFrame());
    field_0x3088 = mDemo.getParam1();
    shape_angle.x = field_0x3088 >> 1;  // divide by 2
}

/* 8011BC74-8011BD18 1165B4 00A4+00 1/0 0/0 0/0 .text            procMonkeyMoveInit__9daAlink_cFv */
int daAlink_c::procMonkeyMoveInit() {
    if (!commonProcInitNotSameProc(PROC_MONKEY_MOVE)) {
        return 0;
    }

    current.angle.y = shape_angle.y;
    setSpecialGravity(FLOAT_LABEL(lit_6108), mMaxFallSpeed, 0);

    f32 tmp_0 = FLOAT_LABEL(lit_6108);
    speed.y = tmp_0;
    mNormalSpeed = tmp_0;
    deleteEquipItem(FALSE, FALSE);

    if (!i_checkWolf()) {
        setSingleAnimeBaseSpeed(ANM_ROPE_SWING, FLOAT_LABEL(lit_6108), lit_6109);
        setMonkeyMoveAnime();
    }

    return 1;
}

/* 8011BD18-8011BD6C 116658 0054+00 1/0 0/0 0/0 .text            procMonkeyMove__9daAlink_cFv */
int daAlink_c::procMonkeyMove() {
    dComIfGp_evmng_cutEnd(field_0x3184);

    if (!i_checkWolf()) {
        setMonkeyMoveAnime();
    }
    return 1;
}

/* 8011BD6C-8011BDF0 1166AC 0084+00 1/0 0/0 0/0 .text procDemoBoomerangCatchInit__9daAlink_cFv */
int daAlink_c::procDemoBoomerangCatchInit() {
    if (!commonProcInitNotSameProc(PROC_DEMO_BOOMERANG_CATCH)) {
        return 0;
    }

    mNormalSpeed = FLOAT_LABEL(lit_6108);
    deleteEquipItem(FALSE, FALSE);
    mEquipItem = BOOMERANG;
    setItemActor();
    setSingleAnimeParam(ANM_BOOMERANG_CATCH, &daAlinkHIO_boom_c0::m.mCatchAnm);
    return 1;
}

/* 8011BDF0-8011BE54 116730 0064+00 1/0 0/0 0/0 .text procDemoBoomerangCatch__9daAlink_cFv */
int daAlink_c::procDemoBoomerangCatch() {
    dComIfGp_evmng_cutEnd(field_0x3184);

    if (checkAnmEnd(mUnderFrameCtrl)) {
        setBlendMoveAnime(daAlinkHIO_basic_c0::m.mAnmBlendFactor);
    }
    return 1;
}

/* 8011BE54-8011C1B4 116794 0360+00 2/2 0/0 0/0 .text            procCoDeadInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCoDeadInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procCoDeadInit__9daAlink_cFi.s"
}
#pragma pop

/* 8011C1B4-8011C62C 116AF4 0478+00 1/0 0/0 0/0 .text            procCoDead__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCoDead() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoDead__9daAlink_cFv.s"
}
#pragma pop

/* 8011C62C-8011C760 116F6C 0134+00 1/0 0/0 0/0 .text            procCoLookAroundInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCoLookAroundInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoLookAroundInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011C760-8011C81C 1170A0 00BC+00 1/0 0/0 0/0 .text            procCoLookAround__9daAlink_cFv */
int daAlink_c::procCoLookAround() {
    daPy_frameCtrl_c* frame_ctrl = mUnderFrameCtrl;

    if (field_0x300c == 0) {
        field_0x300c = 1;
    } else {
        field_0x2f99 = 4;
    }

    if (checkAnmEnd(frame_ctrl)) {
        dComIfGp_evmng_cutEnd(field_0x3184);
    } else if (field_0x300e.x != 0 && frame_ctrl->checkPass(lit_7808)) {
        voiceStart(Z2SE_AL_V_ENTRANCE);
    }

    return 1;
}

/* 8011C81C-8011C890 11715C 0074+00 1/0 0/0 0/0 .text            procBossAtnWaitInit__9daAlink_cFv
 */
int daAlink_c::procBossAtnWaitInit() {
    if (!commonProcInitNotSameProc(PROC_BOSS_ATN_WAIT)) {
        return 0;
    }

    setSingleAnimeBase(ANM_APPEARANCE);
    voiceStart(Z2SE_AL_V_APPEARANCE);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    return 1;
}

/* 8011C890-8011C904 1171D0 0074+00 1/0 0/0 0/0 .text            procCoQuakeWaitInit__9daAlink_cFv
 */
int daAlink_c::procCoQuakeWaitInit() {
    if (!commonProcInitNotSameProc(PROC_QUAKE_WAIT)) {
        return 0;
    }

    if (i_checkWolf()) {
        setSingleAnimeWolfBase(WANM_WAIT_WIND);
    } else {
        setSingleAnimeBase(ANM_WAIT_WIND);
    }

    mNormalSpeed = FLOAT_LABEL(lit_6108);
    return 1;
}

/* 8011C904-8011C9D0 117244 00CC+00 1/0 0/0 0/0 .text            procCoCaughtInit__9daAlink_cFv */
int daAlink_c::procCoCaughtInit() {
    u32 chk_40000 = i_checkModeFlg(0x40000);
    if (!commonProcInitNotSameProc(PROC_CAUGHT)) {
        return 0;
    }

    if (i_checkWolf()) {
        setSingleAnimeWolfBaseMorf(WANM_WAIT_START, daAlinkHIO_wlDamCaught_c0::m.field_0x8);
    } else {
        setSingleAnimeBaseMorf(ANM_WAIT_START, daAlinkHIO_damCaught_c0::m.field_0x1C);
    }

    if (chk_40000) {
        onModeFlg(0x40000);
    }

    f32 tmp_0 = FLOAT_LABEL(lit_6108);
    mNormalSpeed = tmp_0;
    speed.y = tmp_0;
    setSpecialGravity(tmp_0, mMaxFallSpeed, 0);
    mBodyAngle.z = 0;
    return 1;
}

/* 8011C9D0-8011CA4C 117310 007C+00 1/0 0/0 0/0 .text            procLookUpInit__9daAlink_cFv */
int daAlink_c::procLookUpInit() {
    if (!commonProcInitNotSameProc(PROC_LOOK_UP)) {
        return 0;
    }

    setSingleAnimeBase(ANM_GET_A_WAIT2);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    field_0x3588 = l_waitBaseAnime;
    field_0x2f99 = 12;
    return 1;
}

/* 8011CA4C-8011CA98 11738C 004C+00 1/0 0/0 0/0 .text            procLookUp__9daAlink_cFv */
int daAlink_c::procLookUp() {
    if (field_0x2f99 != 12) {
        field_0x2f99 = 4;
    }

    dComIfGp_evmng_cutEnd(field_0x3184);
    return 1;
}

/* 8011CA98-8011CB20 1173D8 0088+00 1/0 0/0 0/0 .text procLookUpToGetItemInit__9daAlink_cFv */
int daAlink_c::procLookUpToGetItemInit() {
    if (!commonProcInitNotSameProc(PROC_LOOK_UP_TO_GET_ITEM)) {
        return 0;
    }

    setSingleAnimeBaseMorf(ANM_GET_HOLDOUT, lit_7307);
    field_0x300c = 0;
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    field_0x3588 = l_waitBaseAnime;
    field_0x2f99 = 12;
    return 1;
}

/* 8011CB20-8011CBD4 117460 00B4+00 1/0 0/0 0/0 .text            procLookUpToGetItem__9daAlink_cFv
 */
int daAlink_c::procLookUpToGetItem() {
    if (field_0x2f99 != 12) {
        field_0x2f99 = 4;
    }

    if (field_0x300c == 0 && checkAnmEnd(mUpperFrameCtrl)) {
        field_0x300c = 1;
        setSingleAnimeBase(ANM_GET_A_WAIT);
        setFaceBasicBck(0x133);
        field_0x2f99 = 12;
    } else if (field_0x300c != 0) {
        dComIfGp_evmng_cutEnd(field_0x3184);
    }

    return 1;
}

/* 8011CBD4-8011CCA8 117514 00D4+00 1/0 0/0 0/0 .text            procHandPatInit__9daAlink_cFv */
int daAlink_c::procHandPatInit() {
    if (!commonProcInitNotSameProc(PROC_HAND_PAT)) {
        return 0;
    }

    setSingleAnime(ANM_COW_THROW_LEFT, lit_6040, lit_6895, -1, lit_6109);
    field_0x2f92 = 0xFE;
    field_0x2f93 = 0xFE;
    field_0x2f99 = 13;
    field_0x3588.set(-l_halfAtnWaitBaseAnime.x, l_halfAtnWaitBaseAnime.y,
                     -l_halfAtnWaitBaseAnime.z);
    mNormalSpeed = FLOAT_LABEL(lit_6108);

    setOldRootQuaternion(0, -0x8000, 0);
    shape_angle.y += 0x8000;
    field_0x300c = 0;
    field_0x300e.x = 0;
    return 1;
}

/* 8011CCA8-8011CDE0 1175E8 0138+00 1/0 0/0 0/0 .text            procHandPat__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHandPat() {
    nofralloc
#include "asm/d/a/d_a_alink/procHandPat__9daAlink_cFv.s"
}
#pragma pop

/* 8011CDE0-8011CF60 117720 0180+00 1/0 0/0 0/0 .text            procCoFogDeadInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCoFogDeadInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoFogDeadInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011CF60-8011D0A0 1178A0 0140+00 1/0 0/0 0/0 .text            procCoFogDead__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCoFogDead() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoFogDead__9daAlink_cFv.s"
}
#pragma pop

/* 8011D0A0-8011D110 1179E0 0070+00 1/0 0/0 0/0 .text            procWolfSmellWaitInit__9daAlink_cFv
 */
int daAlink_c::procWolfSmellWaitInit() {
    if (!commonProcInitNotSameProc(PROC_WOLF_SMELL_WAIT)) {
        return 1;
    }

    setSingleAnimeWolfBaseSpeed(WANM_SMELL, daAlinkHIO_wlChain_c0::m.field_0x54,
                                daAlinkHIO_wlChain_c0::m.field_0x58);
    current.angle.y = shape_angle.y;
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    return 1;
}

/* 8011D110-8011D1F4 117A50 00E4+00 1/0 0/0 0/0 .text            procCoNodInit__9daAlink_cFv */
int daAlink_c::procCoNodInit() {
    if (!commonProcInitNotSameProc(PROC_NOD)) {
        return 1;
    }

    if (i_checkWolf()) {
        field_0x300c = 1;
    } else {
        if (mDemo.getParam0() == 1) {
            setUpperAnimeBase(0x24E);
            setFacePriBck(0x15B);
            setFacePriTexture(FTANM_UNK_8A);
        } else {
            setUpperAnimeBase(0xD1);
            setUpperAnimeBase(0xD1);
            setFacePriTexture(FTANM_UNK_75);
        }

        field_0x2f96 = 4;
        field_0x2f97 = 10;
        i_onNoResetFlg1(0x10100000);
        field_0x300c = 0;
    }

    return 1;
}

/* 8011D1F4-8011D268 117B34 0074+00 1/0 0/0 0/0 .text            procCoNod__9daAlink_cFv */
int daAlink_c::procCoNod() {
    if (checkAnmEnd(&mUpperFrameCtrl[2])) {
        field_0x300c = 1;
        resetUpperAnime(UPPER_2, lit_6109);
    }

    if (field_0x300c != 0) {
        dComIfGp_evmng_cutEnd(field_0x3184);
    }

    return 1;
}

/* 8011D268-8011D304 117BA8 009C+00 1/0 0/0 0/0 .text            procCoEyeAwayInit__9daAlink_cFv */
int daAlink_c::procCoEyeAwayInit() {
    if (!commonProcInitNotSameProc(PROC_EYE_AWAY)) {
        return 1;
    }

    if (!i_checkWolf()) {
        setUpperAnimeBase(0xD3);
        setFacePriTexture(FTANM_UNK_77);
        setFacePriBck(0x129);
        field_0x2f96 = 4;
        field_0x2f97 = 10;
        i_onNoResetFlg1(0x10100000);
    }

    return 1;
}

/* 8011D304-8011D3CC 117C44 00C8+00 1/0 0/0 0/0 .text            procCoGlareInit__9daAlink_cFv */
int daAlink_c::procCoGlareInit() {
    if (!commonProcInitNotSameProc(PROC_GLARE)) {
        return 1;
    }

    if (i_checkWolf()) {
        field_0x300c = 1;
    } else {
        setUpperAnimeBase(0xD2);
        mUpperFrameCtrl[2].setAttribute(2);
        mUpperFrameCtrl[2].setLoop(45);
        setFacePriTexture(FTANM_UNK_76);
        setFacePriBck(0x128);
        field_0x300c = 0;
        field_0x3478 = lit_6041;
        field_0x2f96 = 4;
        field_0x2f97 = 10;
        i_onNoResetFlg1(0x10100000);
    }

    return 1;
}

/* 8011D3CC-8011D474 117D0C 00A8+00 1/0 0/0 0/0 .text            procCoGlare__9daAlink_cFv */
int daAlink_c::procCoGlare() {
    daPy_frameCtrl_c* frame_ctrl = &mUpperFrameCtrl[2];

    if (!i_checkWolf()) {
        if (field_0x3478 > frame_ctrl->getFrame()) {
            field_0x300c = 1;
        } else {
            field_0x3478 = frame_ctrl->getFrame();
        }
    }

    if (field_0x300c != 0) {
        dComIfGp_evmng_cutEnd(field_0x3184);
    }

    if (!i_checkWolf() && frame_ctrl->getFrame() >= lit_7449) {
        field_0x2f96 = 0;
        field_0x2f97 = 5;
    }

    return 1;
}

/* 8011D474-8011D4D4 117DB4 0060+00 1/0 0/0 0/0 .text            procGoatStopReadyInit__9daAlink_cFv
 */
int daAlink_c::procGoatStopReadyInit() {
    if (!commonProcInitNotSameProc(PROC_GOAT_STOP_READY)) {
        return 1;
    }

    setSingleAnimeBase(ANM_ATN_COW);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    field_0x300c = 0;
    return 1;
}

/* 8011D4D4-8011D544 117E14 0070+00 1/0 0/0 0/0 .text            procGoatStopReady__9daAlink_cFv */
int daAlink_c::procGoatStopReady() {
    if (checkAnmEnd(mUnderFrameCtrl)) {
        setSingleAnimeBase(ANM_COW_MOVE_LEFT_RIGHT);
        field_0x300c = 1;
    }

    if (field_0x300c != 0) {
        dComIfGp_evmng_cutEnd(field_0x3184);
    }

    return 1;
}

/* 8011D544-8011D64C 117E84 0108+00 2/1 0/0 0/0 .text            procCoGetReadySitInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCoGetReadySitInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoGetReadySitInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011D64C-8011D6D0 117F8C 0084+00 1/0 0/0 0/0 .text            procCoGetReadySit__9daAlink_cFv */
int daAlink_c::procCoGetReadySit() {
    if (checkAnmEnd(mUnderFrameCtrl)) {
        field_0x300c = 1;
    }

    if (!i_checkWolf() && field_0x2f99 != 12) {
        field_0x2f99 = 4;
    }

    if (field_0x300c != 0) {
        dComIfGp_evmng_cutEnd(field_0x3184);
    }

    return 1;
}

/* 8011D6D0-8011D7D4 118010 0104+00 1/0 0/0 0/0 .text            procCoTwGateInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCoTwGateInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoTwGateInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011D7D4-8011D82C 118114 0058+00 1/0 0/0 0/0 .text            procCoTwGate__9daAlink_cFv */
int daAlink_c::procCoTwGate() {
    if (mUnderFrameCtrl[0].checkAnmEnd()) {
        dComIfGp_evmng_cutEnd(field_0x3184);
    }

    field_0x2f99 = 7;
    return 1;
}

/* 8011D82C-8011D8F8 11816C 00CC+00 1/0 0/0 0/0 .text procWolfSnowEscapeInit__9daAlink_cFv */
int daAlink_c::procWolfSnowEscapeInit() {
    if (!commonProcInitNotSameProc(PROC_WOLF_SNOW_ESCAPE)) {
        return 1;
    }

    current.angle.y = shape_angle.y + 0x8000;
    setSingleAnimeWolf(WANM_TURN, lit_6040, lit_7808, 11, lit_6109);
    voiceStart(Z2SE_WL_V_BREATH_JUMP);
    field_0x2f99 = 13;
    field_0x3588 = l_wolfBaseAnime;
    field_0x3478 = lit_37528;
    field_0x300c = 0;
    field_0x300e.x = 0;
    mNormalSpeed = lit_6845;
    return 1;
}

/* 8011D8F8-8011DB04 118238 020C+00 1/0 0/0 0/0 .text            procWolfSnowEscape__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWolfSnowEscape() {
    nofralloc
#include "asm/d/a/d_a_alink/procWolfSnowEscape__9daAlink_cFv.s"
}
#pragma pop

/* 8011DB04-8011DB9C 118444 0098+00 1/0 0/0 0/0 .text            procZoraMoveInit__9daAlink_cFv */
int daAlink_c::procZoraMoveInit() {
    if (!commonProcInitNotSameProc(PROC_ZORA_MOVE)) {
        return 1;
    }

    setSingleAnimeBase(ANM_HORSE_TAME_WAIT_B);
    f32 tmp_0 = FLOAT_LABEL(lit_6108);
    speed.y = tmp_0;
    mNormalSpeed = tmp_0;
    setSpecialGravity(tmp_0, mMaxFallSpeed, 0);

    deleteEquipItem(FALSE, TRUE);
    field_0x300e.y = 5000;
    field_0x300e.z = 0;
    field_0x384c = (cXyz*)&l_boarBaseAnime;
    return 1;
}

/* 8011DB9C-8011DDD4 1184DC 0238+00 1/0 0/0 0/0 .text            procZoraMove__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procZoraMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procZoraMove__9daAlink_cFv.s"
}
#pragma pop

/* 8011DDD4-8011DED8 118714 0104+00 1/0 0/0 0/0 .text procLookAroundTurnInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procLookAroundTurnInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procLookAroundTurnInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011DED8-8011DF68 118818 0090+00 1/0 0/0 0/0 .text            procLookAroundTurn__9daAlink_cFv */
int daAlink_c::procLookAroundTurn() {
    daPy_frameCtrl_c* frame_ctrl = mUnderFrameCtrl;

    if (checkAnmEnd(frame_ctrl)) {
        dComIfGp_evmng_cutEnd(field_0x3184);
    } else if (frame_ctrl->checkPass(lit_8248)) {
        voiceStart(Z2SE_AL_V_D_MHOP);
    }

    return 1;
}

/* 8011DF68-8011E060 1188A8 00F8+00 1/0 0/0 0/0 .text            procTradeItemOutInit__9daAlink_cFv
 */
int daAlink_c::procTradeItemOutInit() {
    if (!commonProcInitNotSameProc(PROC_TRADE_ITEM_OUT)) {
        return 0;
    }

    field_0x3198 = setTalkStartBack(&field_0x37c8);

    if (field_0x3198 == 0) {
        field_0x300c = setTradeItemAnime();
        mNormalSpeed = FLOAT_LABEL(lit_6108);
    } else {
        field_0x300c = 0;
    }

    field_0x300e.x = 0;
    dComIfGp_setPlayerStatus0(0, 0x10);
    field_0x300e.y = 1;

    if (mDemo.getParam0() != 1) {
        if (mDemo.getParam0() == 2) {
            if (checkLetterItem(mDemo.getParam1())) {
                field_0x300e.y = 0;
            }
        } else {
            if (checkLetterItem(dComIfGp_event_getPreItemNo())) {
                field_0x300e.y = 0;
            }
        }
    }

    field_0x3008 = 30;
    return 1;
}

/* 8011E060-8011E3D8 1189A0 0378+00 1/0 0/0 0/0 .text            procTradeItemOut__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procTradeItemOut() {
    nofralloc
#include "asm/d/a/d_a_alink/procTradeItemOut__9daAlink_cFv.s"
}
#pragma pop

/* 8011E3D8-8011E448 118D18 0070+00 2/2 0/0 0/0 .text            checkLetterItem__9daAlink_cFi */
BOOL daAlink_c::checkLetterItem(int i_itemNo) {
    return i_itemNo == LETTER || i_itemNo == BILL || i_itemNo == RAFRELS_MEMO ||
           i_itemNo == TKS_LETTER || i_itemNo == ASHS_SCRIBBLING;
}

/* 8011E448-8011E57C 118D88 0134+00 1/1 0/0 0/0 .text            procNotUseItemInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procNotUseItemInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procNotUseItemInit__9daAlink_cFi.s"
}
#pragma pop

/* 8011E57C-8011E6E0 118EBC 0164+00 1/0 0/0 0/0 .text            procNotUseItem__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procNotUseItem() {
    nofralloc
#include "asm/d/a/d_a_alink/procNotUseItem__9daAlink_cFv.s"
}
#pragma pop

/* 8011E6E0-8011E748 119020 0068+00 1/0 0/0 0/0 .text            procSwordReadyInit__9daAlink_cFv */
int daAlink_c::procSwordReadyInit() {
    if (!commonProcInitNotSameProc(PROC_SWORD_READY)) {
        return 0;
    }

    mNormalSpeed = FLOAT_LABEL(lit_6108);
    current.angle.y = shape_angle.y;
    setSingleAnimeBase(ANM_DEMO_KAMAE);
    field_0x300c = 0;
    return 1;
}

/* 8011E748-8011E83C 119088 00F4+00 1/0 0/0 0/0 .text            procSwordReady__9daAlink_cFv */
int daAlink_c::procSwordReady() {
    daPy_frameCtrl_c* frame_ctrl = mUnderFrameCtrl;

    if (checkAnmEnd(frame_ctrl)) {
        if (field_0x300c == 0) {
            setDoubleAnime(FLOAT_LABEL(lit_6108), daAlinkHIO_noActAtnMove_c0::m.mWaitAnmSpeed,
                           daAlinkHIO_noActAtnMove_c0::m.mWaitAnmSpeed, ANM_WAIT_B, ANM_WAIT_B, 2,
                           lit_6109);
        }

        field_0x300c = 1;
        dComIfGp_evmng_cutEnd(field_0x3184);
    } else if (field_0x300c != 0) {
        dComIfGp_evmng_cutEnd(field_0x3184);
    } else if (frame_ctrl->checkPass(lit_7625)) {
        voiceStart(Z2SE_AL_V_OUGI_KAMAE);
    }

    return 1;
}

/* 8011E83C-8011E8E0 11917C 00A4+00 2/2 0/0 0/0 .text            setSwordPushAnime__9daAlink_cFv */
void daAlink_c::setSwordPushAnime() {
    daAlink_ANM anm_id = (daAlink_ANM)(mDemo.getParam0() + ANM_GANON_CHANCE);
    if (field_0x3198 != anm_id) {
        setSingleAnimeBase(anm_id);
        field_0x2f99 = 13;
        field_0x3198 = anm_id;

        if (anm_id == ANM_GANON_CHANCE_WIN) {
            voiceStart(Z2SE_AL_V_VS_GND_TUBA_WIN);
        } else if (anm_id == ANM_GANON_CHANCE_LOSE) {
            voiceStart(Z2SE_AL_V_VS_GND_TUBA_LOSE);
        }
    }
}

/* 8011E8E0-8011E960 119220 0080+00 1/0 0/0 0/0 .text            procSwordPushInit__9daAlink_cFv */
int daAlink_c::procSwordPushInit() {
    if (!commonProcInitNotSameProc(PROC_SWORD_PUSH)) {
        return 1;
    }

    mNormalSpeed = FLOAT_LABEL(lit_6108);
    current.angle.y = shape_angle.y;
    field_0x3198 = 0;
    setSwordPushAnime();
    field_0x3588 = l_halfAtnWaitBaseAnime;
    return 1;
}

/* 8011E960-8011E9F8 1192A0 0098+00 1/0 0/0 0/0 .text            procSwordPush__9daAlink_cFv */
int daAlink_c::procSwordPush() {
    field_0x2f99 = 4;
    i_onEndResetFlg0(ERFLG0_UNK_8000000);
    setSwordPushAnime();

    if (field_0x3198 == 0x193) {
        voiceStartLevel(Z2SE_AL_V_VS_GND_TUBA_A);
    } else if (field_0x3198 == 0x194) {
        voiceStartLevel(Z2SE_AL_V_VS_GND_TUBA_C);
    } else if (field_0x3198 == 0x192) {
        voiceStartLevel(Z2SE_AL_V_VS_GND_TUBA_B);
    }

    return 1;
}

/* 8011E9F8-8011EA78 119338 0080+00 1/0 0/0 0/0 .text            procGanonFinishInit__9daAlink_cFv
 */
int daAlink_c::procGanonFinishInit() {
    if (!commonProcInitNotSameProc(PROC_GANON_FINISH)) {
        return 1;
    }

    setSingleAnimeBase(ANM_GANON_FINISH);

    f32 tmp_0 = FLOAT_LABEL(lit_6108);
    mNormalSpeed = tmp_0;
    speed.y = tmp_0;

    field_0x37c8 = current.pos;
    i_onEndResetFlg1(ERFLG1_GANON_FINISH);
    return 1;
}

/* 8011EA78-8011EAE8 1193B8 0070+00 1/0 0/0 0/0 .text            procGanonFinish__9daAlink_cFv */
int daAlink_c::procGanonFinish() {
    i_onEndResetFlg1(ERFLG1_GANON_FINISH);
    current.pos = field_0x37c8;

    if (checkAnmEnd(mUnderFrameCtrl)) {
        setSingleAnimeBaseMorf(ANM_GANON_FINISH_WAIT, lit_6041);
    }

    return 1;
}

/* 8011EAE8-8011EB8C 119428 00A4+00 1/0 0/0 0/0 .text            procCutFastReadyInit__9daAlink_cFv
 */
int daAlink_c::procCutFastReadyInit() {
    if (!commonProcInitNotSameProc(PROC_CUT_FAST_READY)) {
        return 0;
    }

    mNormalSpeed = FLOAT_LABEL(lit_6108);
    current.angle.y = shape_angle.y;
    setSingleAnimeBaseSpeed(ANM_WAIT, daAlinkHIO_move_c0::m.mWaitAnmSpeed, lit_6109);
    setUpperAnime(0x255, UPPER_2, daAlinkHIO_cut_c0::m.mEquipAnm.mSpeed, lit_7448,
                  daAlinkHIO_cut_c0::m.mEquipAnm.mEndFrame,
                  daAlinkHIO_cut_c0::m.mEquipAnm.mInterpolation);
    i_onNoResetFlg0(FLG0_UNK_1000000);
    return 1;
}

/* 8011EB8C-8011EBDC 1194CC 0050+00 1/0 0/0 0/0 .text            procCutFastReady__9daAlink_cFv */
int daAlink_c::procCutFastReady() {
    if (checkAnmEnd(&mUpperFrameCtrl[2])) {
        dComIfGp_evmng_cutEnd(field_0x3184);
    }

    return 1;
}

/* 8011EBDC-8011EC60 11951C 0084+00 1/0 0/0 0/0 .text procMasterSwordStickInit__9daAlink_cFv */
int daAlink_c::procMasterSwordStickInit() {
    if (!commonProcInitNotSameProc(PROC_MASTER_SWORD_STICK)) {
        return 0;
    }

    setSingleAnimeBase(ANM_DEMO_MASTER_SWORD_STICK);
    voiceStart(Z2SE_AL_V_MSTR_SW_STICK);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    current.angle.y = shape_angle.y;
    field_0x300c = 0;

    return 1;
}

/* 8011EC60-8011ED18 1195A0 00B8+00 1/0 0/0 0/0 .text            procMasterSwordStick__9daAlink_cFv
 */
int daAlink_c::procMasterSwordStick() {
    daPy_frameCtrl_c* frame_ctrl = mUnderFrameCtrl;

    if (field_0x300c != 0) {
        dComIfGp_evmng_cutEnd(field_0x3184);
    } else if (checkAnmEnd(frame_ctrl)) {
        field_0x300c = 1;
        setSingleAnimeBaseMorf(ANM_DEMO_MASTER_SWORD_WAIT, lit_6041);
        dComIfGp_evmng_cutEnd(field_0x3184);
    } else if (frame_ctrl->getFrame() >= lit_14621) {
        field_0x2f93 = 5;
    }

    return 1;
}

/* 8011ED18-8011ED8C 119658 0074+00 1/0 0/0 0/0 .text procMasterSwordPullInit__9daAlink_cFv */
int daAlink_c::procMasterSwordPullInit() {
    if (!commonProcInitNotSameProc(PROC_MASTER_SWORD_PULL)) {
        return 0;
    }

    setSingleAnimeBase(ANM_DEMO_MASTER_SWORD_PULL);
    voiceStart(Z2SE_AL_V_MSTR_SW_PULLOUT);
    field_0x300e.y = 0;

    return 1;
}

/* 8011ED8C-8011EE40 1196CC 00B4+00 1/0 0/0 0/0 .text            procMasterSwordPull__9daAlink_cFv
 */
int daAlink_c::procMasterSwordPull() {
    daPy_frameCtrl_c* frame_ctrl = mUnderFrameCtrl;

    if (checkAnmEnd(frame_ctrl)) {
        dComIfGp_evmng_cutEnd(field_0x3184);
    } else if (frame_ctrl->getFrame() >= lit_8780) {
        field_0x2f93 = 10;
    } else if (frame_ctrl->getFrame() >= lit_7710) {
        field_0x300e.y = 0;
    } else if (frame_ctrl->getFrame() >= lit_6040) {
        field_0x300e.y = 4;
    }

    return 1;
}

/* 8011EE40-8011EE94 119780 0054+00 5/5 0/0 0/0 .text            checkLv7DungeonShop__9daAlink_cFv
 */
BOOL daAlink_c::checkLv7DungeonShop() {
    return checkStageName("D_MN07") && dComIfGp_roomControl_getStayNo() == 16;
}

/* 8011EE94-8011EFB8 1197D4 0124+00 1/1 0/0 0/0 .text procDungeonWarpReadyInit__9daAlink_cFv */
int daAlink_c::procDungeonWarpReadyInit() {
    if (!dComIfGp_event_compulsory(this, NULL, -1)) {
        return 0;
    }

    u32 id;
    if (checkItemSetButton(DUNGEON_EXIT) != 2) {
        id = fopAcM_create(PROC_OBJ_TKS, 0, &current.pos, fopAcM_GetRoomNo(this), &shape_angle,
                           NULL, -1);
    } else {
        id = fopAcM_create(PROC_NPC_TKC, 2, &current.pos, fopAcM_GetRoomNo(this), &shape_angle,
                           NULL, -1);
    }

    if (id == -1) {
        return 0;
    }

    mDemo.i_setSpecialDemoType();
    commonProcInit(PROC_DUNGEON_WARP_READY);
    setSingleAnimeBase(ANM_TRADE_ITEM_PULL_OUT);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    current.angle.y = shape_angle.y;
    field_0x32cc = id;
    field_0x300c = 0;
    keepItemData();

    return 1;
}

/* 8011EFB8-8011F084 1198F8 00CC+00 1/0 0/0 0/0 .text            procDungeonWarpReady__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procDungeonWarpReady() {
    nofralloc
#include "asm/d/a/d_a_alink/procDungeonWarpReady__9daAlink_cFv.s"
}
#pragma pop

/* 8011F084-8011F0F4 1199C4 0070+00 1/0 0/0 0/0 .text            procDungeonWarpInit__9daAlink_cFv
 */
int daAlink_c::procDungeonWarpInit() {
    if (!commonProcInitNotSameProc(PROC_DUNGEON_WARP)) {
        return 0;
    }

    field_0x300c = 0;
    field_0x300e.z = 0;
    setSpecialGravity(FLOAT_LABEL(lit_6108), mMaxFallSpeed, 0);
    field_0x300e.x = 0;
    field_0x300e.y = 0;

    return 1;
}

/* 8011F0F4-8011F360 119A34 026C+00 1/0 0/0 0/0 .text            procDungeonWarp__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procDungeonWarp() {
    field_0x300c += 0x200;

    if (field_0x300c > 0x4000) {
        field_0x300c = 0x4000;
    } else {
        current.pos.y += 1.0f;
    }

    f32 sin = cM_ssin(field_0x300c);
    shape_angle.y += (s16)(14336.0f * sin);
    field_0x300e.x = 8.0f * sin + 24.0f * (1.0f - mScale.x);

    if (field_0x300e.z != 0) {
        return 1;
    } else {
        if (field_0x300c == 0x4000) {
            if (field_0x300e.y == 0) {
                dComIfGp_particle_set(0xA61, &current.pos, &mTevStr, NULL, NULL);
                field_0x300e.y = 1;
            }

            cLib_addCalc(&mScale.x, 0.0f, 0.5f, 0.4f, 0.005f);
            cLib_addCalc(&mScale.y, 2.5f, 0.5f, 0.5f, 0.1f);

            if (mScale.x < 0.01f) {
                i_onNoResetFlg0(FLG0_UNK_8000000);
                if (checkItemGet(DUNGEON_EXIT, 1)) {
                    int escape =
                        dStage_stagInfo_GetEscapeWarp(i_dComIfGp_getStage()->getStagInfo());
                    dStage_changeScene(escape, 0.0f, 12, -1, shape_angle.y, -1);
                    dMeter2Info_warpOutProc();
                } else {
                    dungeonReturnWarp();
                    dMeter2Info_warpInProc();
                }

                field_0x300e.z = 1;
            }
            current.pos.y += 5.0f;
            field_0x2b98 = (1.0f - mScale.y) * 100.0f;
        } else if (field_0x300c >= 0x2000) {
            cLib_chaseF(&mScale.x, 0.8f, 0.01f);
        }

        mScale.z = mScale.x;
        mpLinkModel->setBaseScale(mScale);
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procDungeonWarp() {
    nofralloc
#include "asm/d/a/d_a_alink/procDungeonWarp__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8011F360-8011F460 119CA0 0100+00 2/1 0/0 0/0 .text procDungeonWarpSceneStartInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procDungeonWarpSceneStartInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procDungeonWarpSceneStartInit__9daAlink_cFv.s"
}
#pragma pop

/* 8011F460-8011F5D4 119DA0 0174+00 1/0 0/0 0/0 .text procDungeonWarpSceneStart__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procDungeonWarpSceneStart() {
    nofralloc
#include "asm/d/a/d_a_alink/procDungeonWarpSceneStart__9daAlink_cFv.s"
}
#pragma pop

/* 8011F5D4-8011F658 119F14 0084+00 2/2 0/0 0/0 .text daAlink_searchPortal__FP10fopAc_ac_cPv */
// matches with literals
#ifdef NONMATCHING
static fopAc_ac_c* daAlink_searchPortal(fopAc_ac_c* i_actor, void* i_data) {
    if (fopAcM_GetName(i_actor) == PROC_KYTAG04) {
        cXyz* pos = (cXyz*)i_data;
        if (i_actor->current.pos.abs2XZ(*pos) < 1.0f) {
            return i_actor;
        }
    }

    return NULL;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm fopAc_ac_c* daAlink_searchPortal(fopAc_ac_c* param_0, void* param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/daAlink_searchPortal__FP10fopAc_ac_cPv.s"
}
#pragma pop
#endif

/* 8011F658-8011F7D8 119F98 0180+00 1/1 0/0 0/0 .text            checkAcceptWarp__9daAlink_cFv */
// r3/r4 swap loading midna ptr
#ifdef NONMATCHING
bool daAlink_c::checkAcceptWarp() {
    cM3dGPla plane;

    if (mLinkAcch.ChkGroundHit() && !i_checkModeFlg(MODE_PLAYER_FLY) &&
        !i_checkNoResetFlg0(FLG0_UNDERWATER))
    {
        if (!getSlidePolygon(&plane) && !checkForestOldCentury()) {
            if (i_checkMidnaRide() || getMidnaActor()->checkPortalObjRide()) {
                if ((checkField() || checkCastleTown()) && !checkStageName("R_SP161")) {
                    if ((i_checkWolf() && (i_checkModeFlg(MODE_UNK_1000) ||
                                           i_dComIfGp_checkPlayerStatus0(0, 0x10))) ||
                        (!i_checkWolf() &&
                         (checkEventRun() || getMidnaActor()->checkMetamorphoseEnable()) &&
                         (i_checkModeFlg(4) || i_dComIfGp_checkPlayerStatus0(0, 0x10))))
                    {
                        return true;
                    }
                }
            }
        }
    }

    return false;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daAlink_c::checkAcceptWarp() {
    nofralloc
#include "asm/d/a/d_a_alink/checkAcceptWarp__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8011F7D8-8011F8B8 11A118 00E0+00 2/2 0/0 0/0 .text            dungeonReturnWarp__9daAlink_cFv */
void daAlink_c::dungeonReturnWarp() {
    cXyz pos = dComIfGs_getWarpPlayerPos();
    s16 angle = dComIfGs_getWarpPlayerAngleY();
    s8 room = dComIfGs_getWarpRoomNo();
    char name[8];
    strcpy(name, dComIfGs_getWarpStageName());

    dComIfGs_setRestartRoom(pos, angle, room);
    dComIfGp_setNextStage(name, -1, dComIfGs_getRestartRoomNo(), -1, FLOAT_LABEL(lit_6108), 12, 0,
                          0, 0, 1, 0);
    u32 data = setParamData(dComIfGs_getRestartRoomNo(), 0, 0xCA, 0);
    dComIfGs_setRestartRoomParam(data);
}

/* 8011F8B8-8011F9EC 11A1F8 0134+00 1/0 0/0 0/0 .text            skipPortalObjWarp__9daAlink_cFv */
void daAlink_c::skipPortalObjWarp() {
    if (mProcID == PROC_WARP && field_0x300e.x <= 0) {
        return;
    }

    if (i_checkNoResetFlg3(FLG3_UNK_2000000) &&
        (dComIfGp_TargetWarpPt_get() == 9 && dComIfGp_TransportWarp_check()))
    {
        dStage_changeScene(2, FLOAT_LABEL(lit_6108), 0, fopAcM_GetRoomNo(this), shape_angle.y, -1);
    } else {
        u32 data = setParamData(dMeter2Info_getWarpRoomNo(), 0, 0xCA, 0);
        dComIfGs_setTurnRestart(dMeter2Info_getWarpPos(), dMeter2Info_getWarpPlayerNo(),
                                dMeter2Info_getWarpRoomNo(), data);
        dComIfGp_setNextStage(dMeter2Info_getWarpStageName(), -4, dMeter2Info_getWarpRoomNo(), -1,
                              FLOAT_LABEL(lit_6108), 0, 1, 0, shape_angle.y, 1, 0);
    }

    if (mProcID == PROC_WARP) {
        field_0x300e.x = -1;
    }
}

/* 8011F9EC-8011FBC0 11A32C 01D4+00 1/1 0/0 0/0 .text            checkWarpStart__9daAlink_cFv */
void daAlink_c::checkWarpStart() {
    if (dMeter2Info_getWarpStatus() != 0) {
        if (dMeter2Info_getWarpStatus() == WARP_DECIDED ||
            dComIfGp_event_compulsory(this, 0, 0xFFFF))
        {
            i_onNoResetFlg0(FLG0_UNK_4000);
            if (dMeter2Info_getWarpStatus() == WARP_DECIDED) {
                const char* portal;
                if (!i_checkMidnaRide()) {
                    if (dComIfGp_TargetWarpPt_get() == 3) {
                        mEvtInfo.setArchiveName("Obj_kbrg");
                        portal = kBridgePortal;
                    } else if (dComIfGp_TargetWarpPt_get() == 6) {
                        mEvtInfo.setArchiveName("Obj_obrg");
                        portal = oBridgePortal;
                    } else if (dComIfGp_TargetWarpPt_get() == 9) {
                        mEvtInfo.setArchiveName("M_VolcBom");
                        portal = volcBomPortal;
                    } else if (dComIfGp_TargetWarpPt_get() == 8) {
                        mEvtInfo.setArchiveName("SCanCrs");
                        portal = cannonPortal;
                    } else {
                        portal = defaultPortal;
                    }
                } else {
                    dComIfGp_TargetWarpPt_set(0xFF);
                    portal = defaultPortal;
                }
                fopAcM_orderOtherEvent(this, portal, 0xFFFF, 1, 1);
            } else {
                mDemo.i_setSpecialDemoType();
                if (dMeter2Info_getWarpStatus() == 1) {
                    stage_stag_info_class* stag_info = dComIfGp_getStageStagInfo();
                    u32 exitID = dStage_stagInfo_GetEscapeWarp(stag_info);
                    dStage_changeScene(exitID, FLOAT_LABEL(lit_6108), 0, -1, shape_angle.y, -1);
                } else {
                    dungeonReturnWarp();
                }
            }
        }
        g_meter2_info.resetWarpStatus();
    }
}

/* 8011FBC0-8011FD4C 11A500 018C+00 3/3 0/0 0/0 .text            warpModelTexScroll__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::warpModelTexScroll() {
    nofralloc
#include "asm/d/a/d_a_alink/warpModelTexScroll__9daAlink_cFv.s"
}
#pragma pop

/* 8011FD4C-80120124 11A68C 03D8+00 2/2 0/0 0/0 .text            procCoWarpInit__9daAlink_cFii */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCoWarpInit(int param_0, int param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/procCoWarpInit__9daAlink_cFii.s"
}
#pragma pop

/* 80120124-80120440 11AA64 031C+00 1/0 0/0 0/0 .text            procCoWarp__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCoWarp() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoWarp__9daAlink_cFv.s"
}
#pragma pop

/* 80120440-80120474 11AD80 0034+00 1/0 0/0 0/0 .text            commonWaitTurnInit__9daAlink_cFv */
void daAlink_c::commonWaitTurnInit() {
    if (i_checkWolf()) {
        procWolfWaitTurnInit();
    } else {
        procWaitTurnInit();
    }
}

/* 80120474-80120500 11ADB4 008C+00 2/1 0/0 0/0 .text            commonGrabPutInit__9daAlink_cFv */
int daAlink_c::commonGrabPutInit() {
    if (mGrabItemAcKeep.getActor() == NULL) {
        if (mProcID != PROC_GRAB_STAND &&
            (mProcID != PROC_WOLF_GRAB_PUT || !(mUnderFrameCtrl[0].getFrame() < field_0x3478)))
        {
            dComIfGp_evmng_cutEnd(field_0x3184);
            return 1;
        }
    }

    if (i_checkWolf()) {
        return procWolfGrabPutInit();
    }

    return procGrabPutInit();
}

/* 80120500-80120534 11AE40 0034+00 3/3 0/0 0/0 .text commonLargeDamageUpInit__9daAlink_cFiiss */
void daAlink_c::commonLargeDamageUpInit(int param_0, int param_1, s16 param_2, s16 param_3) {
    if (i_checkWolf()) {
        procWolfLargeDamageUpInit(param_0, param_1, param_2, param_3);
    } else {
        procLargeDamageUpInit(param_0, param_1, param_2, param_3);
    }
}

/* 80120534-80120580 11AE74 004C+00 4/4 0/0 0/0 .text            commonFallInit__9daAlink_cFi */
void daAlink_c::commonFallInit(int param_0) {
    if (i_checkWolf()) {
        procWolfFallInit(param_0, daAlinkHIO_wlAutoJump_c0::m.field_0x54);
    } else {
        procFallInit(param_0, daAlinkHIO_autoJump_c0::m.mFallInterpolation);
    }
}
