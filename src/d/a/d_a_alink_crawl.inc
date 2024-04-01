/**
 * d_a_alink_crawl.inc
 * Player Crawl action handling
 */

/* 800F7C50-800F7C74 0F2590 0024+00 2/2 0/0 0/0 .text            getCrawlMoveAnmSpeed__9daAlink_cFv
 */
f32 daAlink_c::getCrawlMoveAnmSpeed() {
    return getAnmSpeedStickRate(daAlinkHIO_crouch_c0::m.mCrawlAnmSpeedMin,
                                daAlinkHIO_crouch_c0::m.mCrawlAnmSpeedMax);
}

/* 800F7C74-800F7CE8 0F25B4 0074+00 2/2 0/0 0/0 .text            getCrawlMoveSpeed__9daAlink_cFv */
f32 daAlink_c::getCrawlMoveSpeed() {
    daPy_frameCtrl_c* frame_ctrl = mUnderFrameCtrl;

    f32 frame = frame_ctrl->getFrame();
    if (frame >= lit_16210) {
        frame = frame_ctrl->getFrame() - lit_16210;
    } else {
        frame = frame_ctrl->getFrame();
    }

    return frame_ctrl->getRate() * daAlinkHIO_crouch_c0::m.mCrawlMoveRate *
           cM_fsin(lit_22146 * frame);
}

/* 800F7CE8-800F7E48 0F2628 0160+00 4/4 0/0 0/0 .text setCrawlMoveDirectionArrow__9daAlink_cFv */
void daAlink_c::setCrawlMoveDirectionArrow() {
    u8 direction = 0;
    camera_class* camera = dComIfGp_getCamera(field_0x317c);
    BOOL bvar = cLib_distanceAngleS(fopCamM_GetAngleY(camera), shape_angle.y) > 0x4000;

    if (field_0x3198 & 4) {
        if (!bvar) {
            direction = data_80452F38;
        } else {
            direction = data_80452F39;
        }
    }

    if (field_0x3198 & 8) {
        if (!bvar) {
            direction |= data_80452F39;
        } else {
            direction |= data_80452F38;
        }
    }

    if (field_0x3198 & 1) {
        if (shape_angle.y == current.angle.y) {
            if (!bvar) {
                direction |= 8;
            } else {
                direction |= 2;
            }
        } else if (!bvar) {
            direction |= 2;
        } else {
            direction |= 8;
        }
    }

    if (shape_angle.y == current.angle.y) {
        if (!bvar) {
            direction |= 2;
        } else {
            direction |= 8;
        }
    } else if (!bvar) {
        direction |= 8;
    } else {
        direction |= 2;
    }

    dComIfGp_setAdvanceDirection(direction);
}

/* 800F7E48-800F81C0 0F2788 0378+00 2/2 0/0 0/0 .text changeCrawlAutoMoveProc__9daAlink_cFP4cXyz
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::changeCrawlAutoMoveProc(cXyz* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/changeCrawlAutoMoveProc__9daAlink_cFP4cXyz.s"
}
#pragma pop

/* 800F81C0-800F85C0 0F2B00 0400+00 2/2 0/0 0/0 .text
 * getCrawlMoveVec__9daAlink_cFP4cXyzP4cXyzP4cXyziiPUc          */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::getCrawlMoveVec(cXyz* param_0, cXyz* param_1, cXyz* param_2, int param_3,
                                   int param_4, u8* param_5) {
    nofralloc
#include "asm/d/a/d_a_alink/getCrawlMoveVec__9daAlink_cFP4cXyzP4cXyzP4cXyziiPUc.s"
}
#pragma pop

/* 800F85C0-800F8700 0F2F00 0140+00 2/2 0/0 0/0 .text crawlBgCheck__9daAlink_cFP4cXyzP4cXyzi */
void daAlink_c::crawlBgCheck(cXyz* param_0, cXyz* param_1, int param_2) {
    cXyz sp28;
    cXyz sp34;
    cXyz sp40;

    cMtx_multVec(mpLinkModel->getBaseTRMtx(), &l_crawlTopOffset, &sp28);
    int temp_r30 = getCrawlMoveVec(&sp28, param_0, &sp34, 1, param_2, NULL);

    cMtx_multVec(mpLinkModel->getBaseTRMtx(), &l_crawlTopUpOffset, &sp28);
    int temp_r29 = getCrawlMoveVec(&sp28, param_1, &sp40, 1, param_2, NULL);

    if (temp_r30 != 0 && temp_r29 != 0) {
        if (sp34.abs2() > sp40.abs2()) {
            current.pos -= sp34;
        } else {
            current.pos -= sp40;
        }
    } else if (temp_r30 != 0) {
        current.pos -= sp34;
    } else if (temp_r29 != 0) {
        current.pos -= sp40;
    }
}

/* 800F8700-800F88F8 0F3040 01F8+00 2/2 0/0 0/0 .text
 * checkCrawlSideWall__9daAlink_cFP4cXyzP4cXyzP4cXyzP4cXyzPsPs  */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkCrawlSideWall(cXyz* param_0, cXyz* param_1, cXyz* param_2, cXyz* param_3,
                                       s16* param_4, s16* param_5) {
    nofralloc
#include "asm/d/a/d_a_alink/checkCrawlSideWall__9daAlink_cFP4cXyzP4cXyzP4cXyzP4cXyzPsPs.s"
}
#pragma pop

/* 800F88F8-800F89E0 0F3238 00E8+00 6/6 0/0 0/0 .text            decideCrawlDoStatus__9daAlink_cFv
 */
void daAlink_c::decideCrawlDoStatus() {
    if (dComIfGp_checkCameraAttentionStatus(field_0x317c, 0x80)) {
        if (checkSubjectEnd(1) || mWaterY > current.pos.y) {
            dComIfGp_clearPlayerStatus0(0, 0x2000);
        }
    } else {
        dCamera_c* camera = dCam_getBody();

        if (camera->ChangeModeOK(4) && mWaterY <= current.pos.y) {
            onResetFlg0(RFLG0_UNK_4000000);

            if (dComIfGp_checkCameraAttentionStatus(field_0x317c, 0x1000) && !checkEventRun()) {
                setSubjectMode();
            }
        }
    }
}

/* 800F89E0-800F8A50 0F3320 0070+00 3/3 0/0 0/0 .text checkNotCrawlStand__9daAlink_cFP4cXyz */
BOOL daAlink_c::checkNotCrawlStand(cXyz* param_0) {
    mLinkRoofChk.i_SetPos(*param_0);
    return dComIfG_Bgsp().RoofChk(&mLinkRoofChk) - current.pos.y <= field_0x598;
}

/* 800F8A50-800F8B00 0F3390 00B0+00 2/2 0/0 0/0 .text checkNotCrawlStand__9daAlink_cFP4cXyzP4cXyz
 */
BOOL daAlink_c::checkNotCrawlStand(cXyz* param_0, cXyz* param_1) {
    cXyz sp20;

    sp20 = *param_0 + *param_1;
    if (checkNotCrawlStand(&sp20)) {
        return true;
    }

    sp20 = *param_0 - *param_1;
    if (checkNotCrawlStand(&sp20)) {
        return true;
    }

    return false;
}

/* 800F8B00-800F8D04 0F3440 0204+00 2/2 0/0 0/0 .text
 * checkCrawlInHoll__9daAlink_cFP4cXyzP4cXyzP4cXyzi             */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkCrawlInHoll(cXyz* param_0, cXyz* param_1, cXyz* param_2, int param_3) {
    nofralloc
#include "asm/d/a/d_a_alink/checkCrawlInHoll__9daAlink_cFP4cXyzP4cXyzP4cXyzi.s"
}
#pragma pop

/* 800F8D04-800F8DBC 0F3644 00B8+00 2/2 0/0 0/0 .text            setCrawlMoveHoll__9daAlink_cFv */
void daAlink_c::setCrawlMoveHoll() {
    f32 frame_ctrl_rate = mUnderFrameCtrl[0].getRate();

    if (frame_ctrl_rate != FLOAT_LABEL(lit_6108)) {
        cLib_addCalcAngleS(&shape_angle.y, mProcVar2.field_0x300c, 5, 0x1000, 0x800);
        current.angle.y = shape_angle.y;
    }

    if (fabsf(current.pos.x - field_0x37c8.x) > lit_6040) {
        cLib_addCalc(&current.pos.x, field_0x37c8.x, lit_5943, lit_7625, lit_6040);
    }

    if (fabsf(current.pos.z - field_0x37c8.z) > lit_6040) {
        cLib_addCalc(&current.pos.z, field_0x37c8.z, lit_5943, lit_7625, lit_6040);
    }
}

/* 800F8DBC-800F8F08 0F36FC 014C+00 1/1 0/0 0/0 .text            setCrawlMoveAngle__9daAlink_cFv */
void daAlink_c::setCrawlMoveAngle() {
    cXyz sp20;
    cXyz sp2C;
    cXyz sp38;

    cLib_addCalcAngleS(&shape_angle.y, field_0x2fe2, daAlinkHIO_crouch_c0::m.mCrawlTurnRate,
                       daAlinkHIO_crouch_c0::m.mCrawlTurnMax,
                       daAlinkHIO_crouch_c0::m.mCrawlTurnMin);

    if (shape_angle.y != current.angle.y) {
        if ((s16)(shape_angle.y - current.angle.y) > 0) {
            cMtx_multVec(mpLinkModel->getBaseTRMtx(), &l_crawlLSideFrontOffset, &sp20);
            cMtx_multVec(mpLinkModel->getBaseTRMtx(), &l_crawlLSideOffset, &sp38);
        } else {
            cMtx_multVec(mpLinkModel->getBaseTRMtx(), &l_crawlRSideFrontOffset, &sp20);
            cMtx_multVec(mpLinkModel->getBaseTRMtx(), &l_crawlRSideOffset, &sp38);
        }

        mLinkGndChk.SetPos(&sp20);
        sp2C.set(sp20.x - sp38.x, dComIfG_Bgsp().GroundCross(&mLinkGndChk) - sp38.y,
                 sp20.z - sp38.z);

        if (cLib_distanceAngleS(sp2C.atan2sY_XZ(), shape_angle.x) > 0x800) {
            shape_angle.y = current.angle.y;
        } else {
            current.angle.y = shape_angle.y;
        }
    }
}

/* 800F8F08-800F8F84 0F3848 007C+00 6/6 0/0 0/0 .text            stopHalfMoveAnime__9daAlink_cFf */
void daAlink_c::stopHalfMoveAnime(f32 param_0) {
    daPy_frameCtrl_c* frame_ctrl = mUnderFrameCtrl;

    f32 frame;
    if (frame_ctrl->checkPass(FLOAT_LABEL(lit_6108))) {
        frame = FLOAT_LABEL(lit_6108);
    } else {
        frame = param_0;
    }

    frame_ctrl->setRate(FLOAT_LABEL(lit_6108));
    frame_ctrl->setFrame(frame);
    getNowAnmPackUnder(UNDER_0)->setFrame(frame);
}

/* 800F8F84-800F9210 0F38C4 028C+00 2/2 0/0 0/0 .text setCrawlAutoMoveAimPos__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setCrawlAutoMoveAimPos() {
    nofralloc
#include "asm/d/a/d_a_alink/setCrawlAutoMoveAimPos__9daAlink_cFv.s"
}
#pragma pop

/* 800F9210-800F9384 0F3B50 0174+00 2/2 0/0 0/0 .text            procCrawlStartInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCrawlStartInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCrawlStartInit__9daAlink_cFv.s"
}
#pragma pop

/* 800F9384-800F9474 0F3CC4 00F0+00 1/0 0/0 0/0 .text            procCrawlStart__9daAlink_cFv */
int daAlink_c::procCrawlStart() {
    daPy_frameCtrl_c* frame_ctrl = mUnderFrameCtrl;

    decideCrawlDoStatus();
    field_0x33cc = lit_6040 - field_0x3478 * (field_0x347c - frame_ctrl->getFrame());

    cXyz sp20(l_crawlFrontOffset.x, l_crawlFrontOffset.y, l_crawlFrontOffset.z * field_0x33cc);
    cXyz sp2C;
    cXyz sp38;

    cMtx_multVec(mpLinkModel->getBaseTRMtx(), &sp20, &sp2C);
    sp20.y = lit_10039;

    cMtx_multVec(mpLinkModel->getBaseTRMtx(), &sp20, &sp38);
    crawlBgCheck(&sp2C, &sp38, 0);

    field_0x2f99 = 4;
    if (checkAnmEnd(frame_ctrl)) {
        procCrawlMoveInit(shape_angle.x, shape_angle.z);
    }

    return 1;
}

/* 800F9474-800F95B8 0F3DB4 0144+00 3/3 0/0 0/0 .text            procCrawlMoveInit__9daAlink_cFss */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCrawlMoveInit(s16 param_0, s16 param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/procCrawlMoveInit__9daAlink_cFss.s"
}
#pragma pop

/* 800F95B8-800F99FC 0F3EF8 0444+00 1/0 0/0 0/0 .text            procCrawlMove__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCrawlMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procCrawlMove__9daAlink_cFv.s"
}
#pragma pop

/* 800F99FC-800F9ABC 0F433C 00C0+00 1/1 0/0 0/0 .text procCrawlAutoMoveInit__9daAlink_cFiP4cXyz */
// r30 / r31 swap
#ifdef NONMATCHING
int daAlink_c::procCrawlAutoMoveInit(int param_0, cXyz* param_1) {
    BOOL var_r30 = dComIfGp_checkPlayerStatus0(0, 0x2000);
    commonProcInit(PROC_CRAWL_AUTO_MOVE);
    field_0x37c8 = *param_1;
    field_0x33cc = lit_6040;
    field_0x3198 = param_0;
    mProcVar0.field_0x3008 = 20;
    mProcVar1.field_0x300a = 300;

    dComIfGp_setPlayerStatus0(0, 0x8000000);
    setCrawlMoveDirectionArrow();
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    field_0x2f99 = 12;

    if (var_r30) {
        dComIfGp_setPlayerStatus0(0, 0x2000);
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCrawlAutoMoveInit(int param_0, cXyz* param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/procCrawlAutoMoveInit__9daAlink_cFiP4cXyz.s"
}
#pragma pop
#endif

/* 800F9ABC-800F9D7C 0F43FC 02C0+00 1/0 0/0 0/0 .text            procCrawlAutoMove__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCrawlAutoMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procCrawlAutoMove__9daAlink_cFv.s"
}
#pragma pop

/* 800F9D7C-800F9F30 0F46BC 01B4+00 1/1 0/0 0/0 .text            procCrawlEndInit__9daAlink_cFiss */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCrawlEndInit(int param_0, s16 param_1, s16 param_2) {
    nofralloc
#include "asm/d/a/d_a_alink/procCrawlEndInit__9daAlink_cFiss.s"
}
#pragma pop

/* 800F9F30-800F9FDC 0F4870 00AC+00 1/0 0/0 0/0 .text            procCrawlEnd__9daAlink_cFv */
int daAlink_c::procCrawlEnd() {
    daPy_frameCtrl_c* frame_ctrl = mUnderFrameCtrl;

    field_0x33cc = field_0x3478 * (frame_ctrl->getFrame() - field_0x347c);
    field_0x2f99 = 4;

    if (checkAnmEnd(frame_ctrl)) {
        if (!checkNextActionFromCrouch(0)) {
            procWaitInit();
        }
    } else if (frame_ctrl->getFrame() < daAlinkHIO_crouch_c0::m.mCrawlEndAnm.mCheckFrame) {
        checkNextActionFromCrouch(1);
    }

    return 1;
}
