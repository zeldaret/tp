#include "d/actor/d_a_alink.h"
#include "d/d_com_inf_game.h"
#include "d/actor/d_a_obj_carry.h"
#include "d/d_bg_w.h"
#include "d/actor/d_a_cow.h"
#include "d/actor/d_a_nbomb.h"
#include "d/actor/d_a_obj_swchain.h"
#include "d/actor/d_a_obj_movebox.h"
#include "d/actor/d_a_obj_gra2.h"

/* 800E3830-800E3858 0DE170 0028+00 2/2 0/0 0/0 .text daAlink_checkLightBallA__FP10fopAc_ac_c */
static bool daAlink_checkLightBallA(fopAc_ac_c* p_actor) {
    if (fopAcM_GetName(p_actor) == PROC_Obj_Carry &&
        static_cast<daObjCarry_c*>(p_actor)->getType() == daObjCarry_c::TYPE_BALL_S)
    {
        return true;
    }
    return false;
}

/* 800E3858-800E3880 0DE198 0028+00 2/2 0/0 0/0 .text daAlink_checkLightBallB__FP10fopAc_ac_c */
static bool daAlink_checkLightBallB(fopAc_ac_c* p_actor) {
    if (fopAcM_GetName(p_actor) == PROC_Obj_Carry &&
        static_cast<daObjCarry_c*>(p_actor)->getType() == daObjCarry_c::TYPE_BALL_S_2)
    {
        return true;
    }
    return false;
}

/* 800E3880-800E38EC 0DE1C0 006C+00 1/1 0/0 0/0 .text daAlink_searchLightBall__FP10fopAc_ac_cPv */
static fopAc_ac_c* daAlink_searchLightBall(fopAc_ac_c* p_actor, void* param_1) {
    if ((daPy_py_c::checkCarryStartLightBallA() && daAlink_checkLightBallA(p_actor)) ||
        (daPy_py_c::checkCarryStartLightBallB() && daAlink_checkLightBallB(p_actor)))
    {
        return p_actor;
    }
    return NULL;
}

/* 800E38EC-800E3994 0DE22C 00A8+00 1/1 0/0 0/0 .text            checkGrabLineCheck__9daAlink_cFv */
BOOL daAlink_c::checkGrabLineCheck() {
    cXyz sp18(field_0x27f4->attention_info.position.x, field_0x27f4->attention_info.position.y + 10.0f, field_0x27f4->attention_info.position.z);
    if (fopAcM_lc_c::lineCheck(&attention_info.position, &sp18, field_0x27f4) && fopAcM_lc_c::checkWallHit()) {
        return true;
    }

    return false;
}

/* 800E3994-800E3A14 0DE2D4 0080+00 1/0 0/0 0/0 .text
 * setGrabCollisionOffset__9daAlink_cFffP13cBgS_PolyInfo        */
void daAlink_c::setGrabCollisionOffset(f32 param_0, f32 param_1, cBgS_PolyInfo* param_2) {
    if (param_2 != NULL) {
        mPolyInfo4.SetPolyInfo(*param_2);
    } else {
        mPolyInfo4.ClearPi();
    }

    field_0x342c = 0.8f * param_0;
    field_0x3430 = 0.8f * param_1;
}

/* 800E3A14-800E3A9C 0DE354 0088+00 1/0 0/0 0/0 .text exchangeGrabActor__9daAlink_cFP10fopAc_ac_c
 */
BOOL daAlink_c::exchangeGrabActor(fopAc_ac_c* p_actor) {
    fopAc_ac_c* actor = mGrabItemAcKeep.getActor();
    if (actor == NULL) {
        return false;
    }

    fopAcM_cancelCarryNow(actor);
    actor->shape_angle.z = 0;
    actor->shape_angle.x = 0;

    if (checkGrabCarryActor()) {
        actor->current.angle.z = 0;
        actor->current.angle.x = 0;
    }

    setGrabItemActor(p_actor);
    return true;
}

/* 800E3A9C-800E3BCC 0DE3DC 0130+00 1/0 0/0 0/0 .text setForceGrab__9daAlink_cFP10fopAc_ac_cii */
BOOL daAlink_c::setForceGrab(fopAc_ac_c* p_actor, int param_1, int param_2) {
    if (((param_1 != 0 || !checkEventRun()) && !checkWolf()) &&
        (((mEquipItem == fpcNm_ITEM_NONE || (param_2 != 0 && checkHookshotItem(mEquipItem)))) &&
         ((checkModeFlg(MODE_UNK_10000000) &&
           (checkHorseNoUpperAnime() || checkHorseTurnAnime())) ||
          param_2 != 0 && checkHookshotAnime())))
    {
        deleteEquipItem(TRUE, FALSE);
        setGrabItemActor(p_actor);
        field_0x33e4 = 38.0f;
        setGrabUpperAnime(daAlinkHIO_basic_c0::m.mAnmBlendFactor);
        return true;
    }

    return false;
}

/* 800E3BCC-800E3C1C 0DE50C 0050+00 2/2 0/0 0/0 .text            getGrabThrowRate__9daAlink_cFv */
f32 daAlink_c::getGrabThrowRate() {
    if (checkHeavyStateOn(1, 1)) {
        return 0.6f * mHeavySpeedMultiplier;
    }

    return 0.6f;
}

/* 800E3C1C-800E3C6C 0DE55C 0050+00 3/3 0/0 0/0 .text            checkGrabThrowAnime__9daAlink_cCFv
 */
BOOL daAlink_c::checkGrabThrowAnime() const {
    return checkGrabUpThrowAnime() || checkGrabSideThrowAnime() || checkGrabHeavyThrowAnime();
}

/* 800E3C6C-800E3C9C 0DE5AC 0030+00 25/25 0/0 0/0 .text            checkGrabAnime__9daAlink_cCFv */
BOOL daAlink_c::checkGrabAnime() const {
    return checkGrabAnimeUp() || checkGrabAnimeSide() || checkGrabAnimeCarry();
}

/* 800E3C9C-800E3CF4 0DE5DC 0058+00 5/5 0/0 0/0 .text checkGrabAnimeAndThrow__9daAlink_cCFv */
BOOL daAlink_c::checkGrabAnimeAndThrow() const {
    return checkGrabAnime() || checkGrabThrowAnime();
}

/* 800E3CF4-800E3D1C 0DE634 0028+00 10/10 0/0 0/0 .text            checkGrabCarryActor__9daAlink_cFv
 */
BOOL daAlink_c::checkGrabCarryActor() {
    return mGrabItemAcKeep.getActor() != NULL &&
           fopAcM_CheckCarryType(mGrabItemAcKeep.getActor(), fopAcM_CARRY_TYPE_8);
}

/* 800E3D1C-800E3D6C 0DE65C 0050+00 1/1 0/0 0/0 .text checkGrabSlowMoveActor__9daAlink_cFv */
BOOL daAlink_c::checkGrabSlowMoveActor() {
    daObjCarry_c* var_r31 = (daObjCarry_c*)mGrabItemAcKeep.getActor();
    return var_r31 != NULL &&
          (fopAcM_CheckCarryType(var_r31, fopAcM_CARRY_HEAVY) ||
          (fopAcM_GetName(var_r31) == PROC_Obj_Carry && (var_r31->getType() == 1 || var_r31->getType() == 10 || var_r31->getType() == 4)));
}

/* 800E3D6C-800E3D94 0DE6AC 0028+00 1/1 0/0 0/0 .text            checkGrabHeavyActor__9daAlink_cFv
 */
BOOL daAlink_c::checkGrabHeavyActor() {
    return mGrabItemAcKeep.getActor() != NULL &&
           fopAcM_CheckCarryType(mGrabItemAcKeep.getActor(), fopAcM_CARRY_HEAVY);
}

/* 800E3D94-800E3DBC 0DE6D4 0028+00 2/2 0/0 0/0 .text            checkGrabSideActor__9daAlink_cFv */
BOOL daAlink_c::checkGrabSideActor() {
    return mGrabItemAcKeep.getActor() != NULL &&
           fopAcM_CheckCarryType(mGrabItemAcKeep.getActor(), fopAcM_CARRY_SIDE);
}

/* 800E3DBC-800E3F20 0DE6FC 0164+00 5/5 0/0 0/0 .text            setGrabUpperAnime__9daAlink_cFf */
void daAlink_c::setGrabUpperAnime(f32 param_0) {
    if (param_0 > 0.0f && checkNoResetFlg0(FLG0_UNDERWATER)) {
        if (checkZoraWearAbility()) {
            param_0 *= 1.0f / daAlinkHIO_magneBoots_c0::m.mZoraWaterAnmSpeed;
        } else {
            param_0 *= 1.0f / daAlinkHIO_magneBoots_c0::m.mWaterStartWalkAnmRate;
        }
    }

    field_0x33e8 = 0.0f;

    if (checkGrabCarryActor()) {
        setUpperAnimeBaseSpeed(0x60, 0.0f, param_0);
        setFacePriBck(0xFA);
    } else if (checkGrabSideActor() != 0) {
        setUpperAnimeBaseSpeed(0x50, 0.0f, param_0);
        setFacePriBck(0x13D);
        field_0x33ec = 0.0f;
    } else {
        setUpperAnimeBaseSpeed(0x16C, 0.0f, param_0);
        setFacePriBck(0x13D);
        field_0x33ec = 0.0f;
    }

    field_0x2f96 = 0xFE;
    field_0x2f97 = 0xFE;
}

/* 800E3F20-800E3F50 0DE860 0030+00 8/8 0/0 0/0 .text            checkGrabRooster__9daAlink_cFv */
BOOL daAlink_c::checkGrabRooster() {
    if (mGrabItemAcKeep.getActor() != NULL &&
        (fopAcM_GetName(mGrabItemAcKeep.getActor()) == PROC_NI ||
         fopAcM_GetName(mGrabItemAcKeep.getActor()) == PROC_NPC_TKJ2))
    {
        return true;
    }

    return false;
}

/* 800E3F50-800E4BD4 0DE890 0C84+00 1/1 0/0 0/0 .text            setGrabItemPos__9daAlink_cFv */
void daAlink_c::setGrabItemPos() {
    static cXyz grabCarryOffset0(0.0f, -30.0f, 25.0f);
    static cXyz grabCarryOffset1(0.0f, 20.0f, -5.0f);
    static cXyz grabCarryOffset2(-3.0f, 30.0f, -30.0f);
    static cXyz grabCarryOffset3(-4.5f, 26.0f, -33.0f);

    fopAc_ac_c* temp_r3 = mGrabItemAcKeep.getActor();
    if (temp_r3 != NULL) {
        daPy_frameCtrl_c* sp1C = &mUnderFrameCtrl[0];

        s8 sp8 = fopAcM_GetRoomNo(this);
        temp_r3->tevStr.room_no = sp8;
        temp_r3->tevStr.YukaCol = tevStr.YukaCol;
        fopAcM_SetRoomNo(temp_r3, sp8);
    
        BOOL sp18 = checkGrabCarryActor();
        s16 spE;
        s16 spC;
        if (sp18) {
            spE = (shape_angle.y + 0x8000);
            spC = -field_0x2fee;
        } else {
            spE = shape_angle.y;
            spC = (field_0x2fee + field_0x3082);
        }
    
        if (checkGrabSideThrowAnime()) {
            mDoMtx_multVecZero(mpLinkModel->getAnmMtx(0xA), &temp_r3->current.pos);
            temp_r3->shape_angle.y = spE;
            temp_r3->shape_angle.z = spC;
            temp_r3->shape_angle.x = shape_angle.x;
        } else if (mProcID == PROC_GRAB_READY || mProcID == PROC_GRAB_MISS || mProcID == PROC_PICK_UP || (mProcID == PROC_WOLF_GRAB_UP && mProcVar3.field_0x300e == 0)) {
            mDoMtx_stack_c::transS(current.pos);
            mDoMtx_stack_c::YrotM((shape_angle.y - mProcVar2.field_0x300c));
            mDoMtx_stack_c::multVec(&field_0x37c8, &temp_r3->current.pos);
            if (sp18 && mProcID == PROC_GRAB_READY) {
                cLib_chaseAngleS(&temp_r3->shape_angle.y, spE, 0x1000);
                temp_r3->current.angle.y = temp_r3->shape_angle.y;
            }
        } else if (checkWolf()) {
            mDoMtx_stack_c::copy(mpLinkModel->getAnmMtx(4));

            if (!fopAcM_CheckCarryType(temp_r3, fopAcM_CARRY_ITEM)) {
                mDoMtx_stack_c::transM(78.0f, 42.0f, 0.0f);
                mDoMtx_stack_c::ZrotM(cM_deg2s(138.0f));
            } else {
                if (fopAcM_GetName(temp_r3) == PROC_OBJ_FOOD) {
                    mDoMtx_stack_c::transM(32.0f, 7.0f, 0.0f);
                } else {
                    mDoMtx_stack_c::transM(30.0f, 12.0f, 0.0f);
                }

                mDoMtx_stack_c::XYZrotM(cM_deg2s(132.0f), cM_deg2s(-90.0f), 0);
            }

            mDoMtx_stack_c::multVecZero(&temp_r3->current.pos);
            mDoMtx_MtxToRot(mDoMtx_stack_c::get(), &temp_r3->shape_angle);
        } else {
            BOOL sp14 = fopAcM_GetName(temp_r3) == PROC_NPC_TKJ2;

            if (mProcID == PROC_GRAB_UP) {
                cLib_chaseAngleS(&temp_r3->shape_angle.y, spE, 0x1000);
            } else {
                temp_r3->shape_angle.y = spE;
                temp_r3->shape_angle.z = spC;
                temp_r3->shape_angle.x = shape_angle.x;
            }

            cXyz sp140;
            cXyz sp134;
            if (mProcID == PROC_GRAB_UP) {
                sp134 = temp_r3->current.pos;
            }

            if (sp18) {
                s16 spA = shape_angle.x + (field_0x33e8 * cM_deg2s(30.0f));

                cXyz sp128;
                cXyz sp11C;
                mDoMtx_multVecZero(mFootData2[0].field_0x14[2], &sp128);
                mDoMtx_multVecZero(mFootData2[1].field_0x14[2], &sp11C);

                temp_r3->current.pos = (sp128 + sp11C) * 0.5f;
                mDoMtx_stack_c::ZXYrotS(spA, shape_angle.y, shape_angle.z);

                if (mProcID == PROC_GRAB_UP || mProcID == PROC_GRAB_PUT) {
                    if (sp1C->getFrame() < field_0x3478) {
                        f32 temp_f31 = (sp1C->getFrame() - 9.0f) / (field_0x3478 - 9.0f);
                        sp140 = (grabCarryOffset0 * (1.0f - temp_f31)) + (grabCarryOffset1 * temp_f31);
                        mDoMtx_stack_c::multVec(&sp140, &sp140);
                    } else {
                        f32 temp_f31 = (sp1C->getFrame() - field_0x3478) / (sp1C->getEnd() - field_0x3478);
                        sp140 = (grabCarryOffset1 * (1.0f - temp_f31)) + (grabCarryOffset2 * temp_f31);
                        mDoMtx_stack_c::multVec(&sp140, &sp140);
                    }
                } else {
                    sp140 = (grabCarryOffset2 * (1.0f - field_0x33e8)) + (grabCarryOffset3 * field_0x33e8);
                    mDoMtx_stack_c::multVec(&sp140, &sp140);
                }

                temp_r3->current.pos += sp140;
                temp_r3->shape_angle.x = -spA;

                temp_r3->current.angle.x = temp_r3->shape_angle.x;
                temp_r3->current.angle.y = temp_r3->shape_angle.y;
                temp_r3->current.angle.z = temp_r3->shape_angle.z;
            } else {
                sp140 = (mLeftHandPos + mRightHandPos) * 0.5f;
                mDoMtx_stack_c::transS(sp140);

                concatMagneBootMtx();
                mDoMtx_stack_c::ZXYrotM(shape_angle.x, spE, spC);

                sp140.set(0.0f, -3.0f, -8.0f);
                if (sp14) {
                    sp140.y += -15.0f;
                }

                mDoMtx_stack_c::multVec(&sp140, &temp_r3->current.pos);
    
                if (checkGrabAnimeSide()) {
                    mDoMtx_multVec(mpLinkModel->getAnmMtx(0xA), &localSidePos, &sp140);
                    temp_r3->current.pos = (temp_r3->current.pos * (1.0f - field_0x33e8)) + (sp140 * field_0x33e8);
                }
            }

            if (checkUnderMove0BckNoArc(ANM_GRAB_UP)) {
                f32 temp_f31_3 = 1.0f - ((sp1C->getFrame() - sp1C->getStart()) / (sp1C->getEnd() - sp1C->getStart()));

                sp140.x = 0.0f;
                sp140.z = field_0x33e4 * temp_f31_3;

                f32 var_f30;
                if (sp14) {
                    var_f30 = -18.0f;
                } else {
                    var_f30 = -3.0f;
                }

                if (mProcID == 0x70) {
                    sp140.y = temp_f31_3 * (-13.78908f - var_f30);
                } else {
                    sp140.y = temp_f31_3 * (-13.82537f - var_f30);
                }

                mDoMtx_stack_c::multVecSR(&sp140, &sp140);
                temp_r3->current.pos += sp140;
            }

            if (mProcID == PROC_GRAB_PUT) {
                if (checkMagneBootsOn()) {
                    cXyz sp110 = temp_r3->current.pos - current.pos;
                    mDoMtx_multVecSR(mMagneBootInvMtx, &sp110, &sp110);

                    sp110.y = field_0x598;
                    mDoMtx_multVecSR(mMagneBootMtx, &sp110, &sp110);

                    sp110 += current.pos;

                    cXyz sp104;
                    mDoMtx_multVecSR(mMagneBootMtx, &cXyz::BaseY, &sp104);

                    sp104 = sp110 - (sp104 * field_0x598);

                    if (grabLineCheck(&sp110, &sp104)) {
                        if (temp_r3->current.pos.abs(sp110) > mObjLinChk.GetCrossP()->abs(sp110)) {
                            temp_r3->speedF = 0.0f;
                            temp_r3->current.pos = mObjLinChk.GetCross();
                            freeGrabItem();
                            return;
                        }
                    }
                } else {
                    cXyz spF8(temp_r3->current.pos.x, current.pos.y + field_0x598, temp_r3->current.pos.z);
                    mObjGndChk.SetPos(&spF8);

                    f32 temp_f1 = dComIfG_Bgsp().GroundCross(&mObjGndChk);
                    if (temp_f1 > temp_r3->current.pos.y) {
                        temp_r3->speedF = 0.0f;
                        temp_r3->current.pos.y = temp_f1;
                        freeGrabItem();
                        return;
                    }
                }
            }

            if (mProcID == PROC_GRAB_UP && mUnderFrameCtrl[0].getFrame() < 6.0f && temp_r3->current.pos.y < sp134.y) {
                temp_r3->current.pos = sp134;
            }
        }
        return;
    }

    if (mEquipItem == 0x102) {
        fopAc_ac_c* sp10 = mItemAcKeep.getActor();
        if (sp10 != NULL) {
            mDoMtx_stack_c::copy(mpLinkModel->getAnmMtx(field_0x30c0));
            mDoMtx_stack_c::transM(7.0f, -2.0f, 1.0f);
            mDoMtx_stack_c::XYZrotM(cM_deg2s(71.0f), cM_deg2s(-6.6f), cM_deg2s(3.2f));
            mDoMtx_stack_c::multVecZero(&sp10->current.pos);
            mDoMtx_MtxToRot(mDoMtx_stack_c::get(), &sp10->shape_angle);
        }
    }
}

/* 800E4BD4-800E4DEC 0DF514 0218+00 16/16 0/0 0/0 .text            freeGrabItem__9daAlink_cFv */
void daAlink_c::freeGrabItem() {
    fopAc_ac_c* temp_r3 = mGrabItemAcKeep.getActor();

    if (temp_r3 != NULL) {
        if (dComIfGp_event_runCheck() || mDemo.getDemoType() == 5) {
            fopAcM_OnStatus(temp_r3, 0x800);
        }

        fopAcM_cancelCarryNow(temp_r3);

        temp_r3->shape_angle.z = 0;
        temp_r3->shape_angle.x = 0;

        if (checkGrabCarryActor()) {
            temp_r3->current.angle.z = 0;
            temp_r3->current.angle.x = 0;
        }

        if (checkModeFlg(0x400)) {
            fopAc_ac_c* temp_r3_2 = mRideAcKeep.getActor();
            if (temp_r3_2 != NULL) {
                if (temp_r3_2->speedF > 0.0f) {
                    temp_r3->speedF += temp_r3_2->speedF;
                }
                temp_r3->current.angle.y = temp_r3_2->shape_angle.y;
            }
        } else {
            cXyz sp14(current.pos.x, field_0x34e0.y, current.pos.z);

            if (grabLineCheck(&sp14, &temp_r3->current.pos)) {
                temp_r3->current.pos = mObjLinChk.GetCross();

                cM3dGPla sp20;
                dComIfG_Bgsp().GetTriPla(mObjLinChk, &sp20);
                if (cBgW_CheckBWall(sp20.mNormal.y)) {
                    temp_r3->current.pos += sp20.mNormal * 10.0f;
                }
            }
        }
    }

    mGrabItemAcKeep.clearData();

    if (checkGrabAnime() || checkWolfGrabAnime()) {
        resetUpperAnime(UPPER_2, 3.0f);
    }

    for (int i = 0; i < 2; i++) {
        field_0x312a[i] = csXyz::Zero;
        field_0x3136[i] = csXyz::Zero;
    }
}

/* 800E4DEC-800E4FA8 0DF72C 01BC+00 1/1 0/0 0/0 .text            setGrabUpperSpeedRate__9daAlink_cFv
 */
void daAlink_c::setGrabUpperSpeedRate() {
    f32 var_f31;

    if (checkModeFlg(0x400)) {
        if (checkCanoeRide() != 0) {
            var_f31 = fabsf(mNormalSpeed / getCanoeMaxSpeed());
        } else {
            var_f31 = fabsf(0.02f * mNormalSpeed);
        }
    } else if (checkAttentionLock() && !checkGrabCarryActor()) {
        var_f31 = 1.0f;
    } else {
        if (mProcID == PROC_STEP_MOVE) {
            var_f31 = fabsf(field_0x3478 / daAlinkHIO_move_c0::m.mMaxSpeed);
        } else {
            var_f31 = fabsf(mNormalSpeed / daAlinkHIO_move_c0::m.mMaxSpeed);
        }

        if (checkHeavyStateOn(1, 1)) {
            var_f31 *= 1.0f / (mHeavySpeedMultiplier * mHeavySpeedMultiplier);
        }
    }

    if (var_f31 > 1.0f) {
        var_f31 = 1.0f;
    }

    cLib_chaseF(&field_0x33e8, var_f31, 0.15f);
    
    daPy_frameCtrl_c* temp_r30 = &mUpperFrameCtrl[2];
    temp_r30->setFrame(field_0x33e8 * temp_r30->getEnd());
    getNowAnmPackUpper(UPPER_2)->setFrame(temp_r30->getFrame());
}

/* 800E4FA8-800E5150 0DF8E8 01A8+00 7/7 0/0 0/0 .text            setCarryArmAngle__9daAlink_cFff */
void daAlink_c::setCarryArmAngle(f32 param_0, f32 param_1) {
    if (0.0f != field_0x33ec) {
        param_1 *= field_0x33ec;
        s16 temp_r29 = -1500.0f * param_0 * field_0x33ec;

        field_0x312a[0].set(0, temp_r29, temp_r29);
        field_0x3136[0].set(0, 0, temp_r29);

        field_0x312a[1].set(0, temp_r29 + (2000.0f * param_1), temp_r29 + (2000.0f * param_1));
        field_0x3136[1].set(0, 0, temp_r29 - (3500.0f * param_1));
    
        if (param_1 < 0.0f) {
            field_0x312a[0].z += (s16)(2500.0f * param_1);
            field_0x3136[0].y += (s16)(2000.0f * param_1);
        } else {
            field_0x3136[0].y += (s16)(4000.0f * param_1);
        }
    } else if (checkGrabRooster()) {
        field_0x3136[0].y = -5000.0f * param_1;
        field_0x3136[1].y = 5000.0f * param_1;
    }
}

/* 800E5150-800E5170 0DFA90 0020+00 1/1 0/0 0/0 .text            checkGrabNotThrow__9daAlink_cFv */
BOOL daAlink_c::checkGrabNotThrow() {
    return checkGrabCarryActor();
}

/* 800E5170-800E53AC 0DFAB0 023C+00 1/1 0/0 0/0 .text            checkNextActionGrab__9daAlink_cFv
 */
BOOL daAlink_c::checkNextActionGrab() {
    fopAc_ac_c* temp_r3 = mGrabItemAcKeep.getActor();
    if (temp_r3 == NULL) {
        freeGrabItem();
        return 0;
    }

    setCarryArmAngle(0.0f, 1.0f);

    if (mTargetedActor == NULL && mAttList != NULL && mAttList->mType == 5 && fopAcM_checkStatus(temp_r3, 0x2000000)) {
        setDoStatus(6);
    } else if ((field_0x27f4 == NULL) || !checkGrabTalkActor(field_0x27f4) || !setTalkStatus()) {
        if (checkModeFlg(0x400)) {
            setDoStatus(0x13);
        } else if ((!checkAttentionState() && field_0x33a8 <= getGrabThrowRate()) || checkGrabNotThrow()) {
            setDoStatus(0x14);
        } else {
            setDoStatus(0x13);
        }
    }

    if (doTrigger() && dComIfGp_getDoStatus() == 6) {
        fopAcM_orderDoorEvent(this, field_0x27f4, 0, 0);
        return 1;
    }

    if (orderTalk(1)) {
        return 1;
    }

    if (doTrigger() || (fopAcM_GetName(temp_r3) == PROC_NBOMB && ((daNbomb_c*)temp_r3)->checkPlayerMake() && (checkSetItemTrigger(0x50) || (((daNbomb_c*)temp_r3)->checkWaterBomb() && checkSetItemTrigger(0x71)) || (!((daNbomb_c*)temp_r3)->checkWaterBomb() && checkSetItemTrigger(0x70))))) {
        if (dComIfGp_getDoStatus() == 0x14) {
            return procGrabPutInit();
        }

        if (dComIfGp_getDoStatus() == 0x13) {
            return procGrabThrowInit(0);
        }
    }

    return 0;
}

/* 800E53AC-800E53F8 0DFCEC 004C+00 2/2 0/0 0/0 .text            initGrabNextMode__9daAlink_cFv */
void daAlink_c::initGrabNextMode() {
    if (!checkGrabAnime()) {
        setGrabUpperAnime(-1.0f);
    }

    checkNextAction(0);
}

/* 800E53F8-800E57AC 0DFD38 03B4+00 3/3 0/0 0/0 .text            setGrabItemThrow__9daAlink_cFv */
void daAlink_c::setGrabItemThrow() {
    fopAc_ac_c* temp_r3 = mGrabItemAcKeep.getActor();
    if (temp_r3 != NULL) {
        cXyz sp14;
        temp_r3->current.angle.y = shape_angle.y;

        if (checkWolf()) {
            temp_r3->speedF = daAlinkHIO_bomb_c0::m.mWolfThrowSpeedH;
            temp_r3->speed.y = daAlinkHIO_bomb_c0::m.mWolfThrowSpeedV;
        } else {
            f32 var_f31;
            f32 var_f30;
            if (checkNoResetFlg0(FLG0_UNDERWATER)) {
                var_f31 = daAlinkHIO_bomb_c0::m.mWaterThrowSpeedH;
                var_f30 = daAlinkHIO_bomb_c0::m.mWaterThrowSpeedV;
            } else {
                var_f31 = daAlinkHIO_bomb_c0::m.mThrowSpeedH;
                var_f30 = daAlinkHIO_bomb_c0::m.mThrowSpeedV;
            }

            if (checkMagneBootsOn()) {
                sp14.set(0.0f, var_f30, var_f31);
                mDoMtx_stack_c::copy(mMagneBootMtx);
                mDoMtx_stack_c::YrotM(shape_angle.y);
                mDoMtx_stack_c::multVecSR(&sp14, &sp14);

                temp_r3->speedF = sp14.absXZ();
                temp_r3->speed.y = sp14.y;
                temp_r3->current.angle.y = sp14.atan2sX_Z();

                sp14.set(0.0f, 15.0f, 90.0f);
                mDoMtx_stack_c::multVecSR(&sp14, &sp14);
                temp_r3->current.pos += sp14;
            } else {
                temp_r3->speedF = var_f31;
                temp_r3->speed.y = var_f30;
                temp_r3->current.angle.x = getBodyAngleXAtnActor(0);

                temp_r3->current.pos.x += 90.0f * cM_ssin(shape_angle.y);
                temp_r3->current.pos.y += 15.0f;
                temp_r3->current.pos.z += 90.0f * cM_scos(shape_angle.y);
            }

            if (mTargetedActor != NULL && checkGrabSideThrowAnime()) {
                sp14 = mTargetedActor->eyePos - temp_r3->current.pos;
                multVecMagneBootInvMtx(&sp14);
                temp_r3->current.angle.y = sp14.atan2sX_Z();
                temp_r3->shape_angle.y = temp_r3->current.angle.y;
            }

            if (fopAcM_CheckCarryType(temp_r3, fopAcM_CARRY(fopAcM_CARRY_UNK_40 | fopAcM_CARRY_HEAVY))) {
                voiceStart(Z2SE_AL_V_THROW_L);
            } else if (dBomb_c::checkBombActor(temp_r3)) {
                voiceStart(Z2SE_AL_V_ATTACK_S);
            } else {
                voiceStart(Z2SE_AL_V_THROW_S);
            }
        }

        onResetFlg0(RFLG0_GRAB_THROW);
        freeGrabItem();
    }
}

/* 800E57AC-800E5830 0E00EC 0084+00 2/2 0/0 0/0 .text checkUpperGrabItemThrow__9daAlink_cFf */
BOOL daAlink_c::checkUpperGrabItemThrow(f32 param_0) {
    if (checkAnmEnd(&mUpperFrameCtrl[2])) {
        resetUpperAnime(UPPER_2, param_0);
        return 1;
    }

    if (mUpperFrameCtrl[2].checkPass(field_0x343c)) {
        setGrabItemThrow();
    }

    return 0;
}

/* 800E5830-800E5B6C 0E0170 033C+00 2/2 0/0 0/0 .text
 * putObjLineCheck__9daAlink_cFR11dBgS_LinChkP4cXyzP10fopAc_ac_c */
void daAlink_c::putObjLineCheck(dBgS_LinChk& param_0, cXyz* param_1, fopAc_ac_c* param_2) {
    if (!checkNoCollisionCorret()) {
        param_0.Set(&field_0x37c8, param_1, param_2);

        if (dComIfG_Bgsp().LineCross(&param_0) && dBgS_CheckBWallPoly(param_0)) {
            cXyz sp8 = *param_1 - param_0.GetCross();
            f32 temp_f31 = sp8.abs();
            f32 temp_f1 = sp8.absXZ();

            if (temp_f1 > 0.01f) {
                f32 temp_f29 = temp_f31 / temp_f1;
                sp8.x *= temp_f29;
                sp8.z *= temp_f29;
            } else {
                sp8.x *= temp_f31;
                sp8.z *= temp_f31;
            }

            current.pos.x -= sp8.x;
            current.pos.z -= sp8.z;
            param_2->current.pos.x -= sp8.x;
            param_2->current.pos.z -= sp8.z;
        }
    }
}

/* 800E5B6C-800E5BB4 0E04AC 0048+00 3/3 0/0 0/0 .text grabLineCheck__9daAlink_cFP4cXyzP4cXyz */
bool daAlink_c::grabLineCheck(cXyz* i_start, cXyz* i_end) {
    mObjLinChk.Set(i_start, i_end, mGrabItemAcKeep.getActor());
    return dComIfG_Bgsp().LineCross(&mObjLinChk);
}

/* 800E5BB4-800E5CBC 0E04F4 0108+00 6/6 0/0 0/0 .text setGrabItemActor__9daAlink_cFP10fopAc_ac_c
 */
void daAlink_c::setGrabItemActor(fopAc_ac_c* param_0) {
    fopAcM_setCarryNow(param_0, 1);
    mGrabItemAcKeep.setData(param_0);

    mObjLinChk.ClrObj();
    mObjLinChk.ClrBomb();
    mObjLinChk.ClrStatue();
    mObjLinChk.ClrLink();
    mObjGndChk.ClrObj();
    mObjGndChk.ClrBomb();
    mObjGndChk.ClrStatue();
    mObjGndChk.ClrLink();

    s16 temp_r3 = fopAcM_GetName(param_0);
    if (dBomb_c::checkBombActor(param_0) || temp_r3 == PROC_Obj_Stone) {
        mObjLinChk.SetBomb();
        mObjGndChk.SetBomb();
    } else if (temp_r3 == PROC_CSTATUE) {
        mObjLinChk.SetStatue();
        mObjGndChk.SetStatue();
    } else if (temp_r3 == PROC_Obj_Carry && ((daObjCarry_c*)param_0)->prm_chk_type_ironball()) {
        mObjLinChk.SetLink();
        mObjGndChk.SetLink();
    } else {
        mObjLinChk.SetObj();
        mObjGndChk.SetObj();
    }
}

/* 800E5CBC-800E5EC8 0E05FC 020C+00 2/2 0/0 0/0 .text            procGrabReadyInit__9daAlink_cFv */
int daAlink_c::procGrabReadyInit() {
    if (fopAcM_checkCarryNow(field_0x27f4)) {
        return checkWaitAction();
    }

    if (mEquipItem != fpcNm_ITEM_NONE) {
        return procPreActionUnequipInit(PROC_GRAB_READY, field_0x27f4);
    }

    commonProcInit(PROC_GRAB_READY);
    setGrabItemActor(field_0x27f4);

    if (fopAcM_searchActorDistanceXZ2(this, field_0x27f4) > 1.0f) {
        shape_angle.y = fopAcM_searchActorAngleY(this, field_0x27f4);
    }

    current.angle.y = shape_angle.y;
    mProcVar2.field_0x300c = shape_angle.y;
    field_0x37c8 = field_0x27f4->current.pos - field_0x3510;
    mNormalSpeed = 0.0f;

    if (checkEquipAnime()) {
        resetUpperAnime(UPPER_2, -1.0f);
    }

    if (checkGrabCarryActor()) {
        setSingleAnime(ANM_CARRY, daAlinkHIO_grab_c0::m.field_0x8C.mSpeed, daAlinkHIO_grab_c0::m.field_0x8C.mStartFrame, 9, daAlinkHIO_grab_c0::m.field_0x8C.mInterpolation);
        mProcVar3.field_0x300e = 1;
        field_0x347c = 1.0f / (9.0f - daAlinkHIO_grab_c0::m.field_0x8C.mStartFrame);

        f32 var_f31;
        if (fopAcM_GetName(mGrabItemAcKeep.getActor()) == PROC_DO) {
            var_f31 = 0.93f;
        } else {
            var_f31 = 1.0f;
        }

        field_0x33ec = 4.0f * ((var_f31 * mGrabItemAcKeep.getActor()->scale.x) - 1.0f);
    } else {
        field_0x33ec = 0.0f;
        setSingleAnimeParam(ANM_GRAB_UP_START, &daAlinkHIO_grab_c0::m.field_0x0);
        field_0x347c = 1.0f / (daAlinkHIO_grab_c0::m.field_0x0.mEndFrame - daAlinkHIO_grab_c0::m.field_0x0.mStartFrame);
        mProcVar3.field_0x300e = 0;
    }

    if (fopAcM_CheckCarryType(field_0x27f4, fopAcM_CARRY(fopAcM_CARRY_UNK_40 | fopAcM_CARRY_HEAVY | fopAcM_CARRY_TYPE_1))) {
        field_0x3198 = 1;
    } else {
        field_0x3198 = 0;
    }

    return 1;
}

/* 800E5EC8-800E5FD0 0E0808 0108+00 1/0 0/0 0/0 .text            procGrabReady__9daAlink_cFv */
int daAlink_c::procGrabReady() {
    if (mGrabItemAcKeep.getActor() == NULL) {
        return checkNextAction(0);
    }

    if (checkAnmEnd(&mUnderFrameCtrl[0])) {
        if (field_0x3198 != 0) {
            setSingleAnime(ANM_PICK_UP_LARGE_START, daAlinkHIO_grab_c0::m.field_0x78.mSpeed, daAlinkHIO_grab_c0::m.field_0x78.mStartFrame, daAlinkHIO_grab_c0::m.field_0x78.mCancelFrame, daAlinkHIO_grab_c0::m.field_0x78.mInterpolation);
            field_0x3198 = 0;
        } else {
            procGrabUpInit();
        }
    } else if (mProcVar3.field_0x300e != 0) {
        setCarryArmAngle(field_0x347c * (mUnderFrameCtrl[0].getFrame() - daAlinkHIO_grab_c0::m.field_0x8C.mStartFrame), 0.0f);
    } else {
        setCarryArmAngle(0.0f, field_0x347c * (mUnderFrameCtrl[0].getFrame() - daAlinkHIO_grab_c0::m.field_0x0.mStartFrame));
    }

    return 1;
}

/* 800E5FD0-800E6230 0E0910 0260+00 1/1 0/0 0/0 .text            procGrabUpInit__9daAlink_cFv */
int daAlink_c::procGrabUpInit() {
    fopAc_ac_c* temp_r30 = mGrabItemAcKeep.getActor();
    commonProcInit(PROC_GRAB_UP);

    if (checkGrabCarryActor()) {
        setSingleAnime(ANM_CARRY, daAlinkHIO_grab_c0::m.field_0x8C.mSpeed, 9.0f + daAlinkHIO_grab_c0::m.field_0x8C.mSpeed, daAlinkHIO_grab_c0::m.field_0x8C.mEndFrame, 0.0f);
        mProcVar3.field_0x300e = 1;
        setCarryArmAngle(1.0f, 0.0f);
    } else {
        setSingleAnimeParam(ANM_GRAB_UP, &daAlinkHIO_grab_c0::m.field_0x14);
        mProcVar3.field_0x300e = 0;
        setCarryArmAngle(0.0f, 1.0f);
    }

    cXyz sp8 = temp_r30->current.pos - field_0x3510;
    field_0x33e4 = (sp8.absXZ() - 46.0512f) - -8.0f;

    if (fopAcM_CheckCarryType(temp_r30, fopAcM_CARRY(fopAcM_CARRY_UNK_40 | fopAcM_CARRY_HEAVY))) {
        voiceStart(Z2SE_AL_V_LIFTUP_L);
    } else {
        voiceStart(Z2SE_AL_V_LIFTUP_S);
    }

    fopAcM_setStageLayer(temp_r30);
    onResetFlg0(RFLG0_UNK_8000);
    field_0x3478 = 18.0f;
    return 1;
}

/* 800E6230-800E637C 0E0B70 014C+00 1/0 0/0 0/0 .text            procGrabUp__9daAlink_cFv */
int daAlink_c::procGrabUp() {
    daPy_frameCtrl_c* temp_r29 = &mUnderFrameCtrl[0];

    fopAc_ac_c* temp_r3 = mGrabItemAcKeep.getActor();
    if (temp_r3 == NULL) {
        return checkNextAction(0);
    }

    if (checkAnmEnd(temp_r29) || (checkInputOnR() && (temp_r29->getFrame() > daAlinkHIO_grab_c0::m.field_0x14.mCancelFrame))) {
        onResetFlg0(RFLG0_GRAB_UP_END);

        if (fopAcM_CheckCarryType(temp_r3, fopAcM_CARRY(fopAcM_CARRY_UNK_40 | fopAcM_CARRY_HEAVY | fopAcM_CARRY_TYPE_1))) {
            procGrabReboundInit(0);
        } else {
            initGrabNextMode();
        }
    } else if (mProcVar3.field_0x300e != 0) {
        f32 var_f31;
        if (temp_r29->getFrame() < field_0x3478) {
            var_f31 = 0.0f;
        } else {
            var_f31 = (temp_r29->getFrame() - field_0x3478) / (temp_r29->getEnd() - field_0x3478);
        }

        setCarryArmAngle(1.0f - ((temp_r29->getFrame() - 9.0f) / (temp_r29->getEnd() - 9.0f)), var_f31);
    }

    return 1;
}

/* 800E637C-800E63F0 0E0CBC 0074+00 1/0 0/0 0/0 .text            procGrabMiss__9daAlink_cFv */
int daAlink_c::procGrabMiss() {
    if (mGrabItemAcKeep.getActor() == NULL) {
        checkNextAction(0);
    } else if (checkAnmEnd(&mUnderFrameCtrl[0])) {
        if (mProcVar0.field_0x3008 > 0) {
            mProcVar0.field_0x3008--;
        } else {
            procGrabStandInit();
        }
    }

    return 1;
}

/* 800E63F0-800E65F8 0E0D30 0208+00 1/1 0/0 0/0 .text            procGrabThrowInit__9daAlink_cFi */
int daAlink_c::procGrabThrowInit(int param_0) {
    if (checkModeFlg(0x400)) {
        if (checkGrabHeavyActor()) {
            setUpperAnimeParam(0x17B, UPPER_2, &daAlinkHIO_grab_c0::m.field_0xC8);
            field_0x343c = 14.0f;
        } else if (checkGrabAnimeSide()) {
            setUpperAnimeParam(0x51, UPPER_2, &daAlinkHIO_grab_c0::m.field_0xB4);
            field_0x343c = 4.0f;
        } else {
            setUpperAnimeParam(0x170, UPPER_2, &daAlinkHIO_grab_c0::m.field_0x3C);
            field_0x343c = 5.0f;
        }

        onNoResetFlg1(FLG1_UNK_10000000);
        return 1;
    }

    if (!commonProcInitNotSameProc(PROC_GRAB_THROW)) {
        return 0;
    }

    if (checkGrabHeavyActor()) {
        setSingleAnimeParam(ANM_THROW_HEAVY, &daAlinkHIO_grab_c0::m.field_0xC8);
        field_0x343c = 14.0f;
        field_0x347c = daAlinkHIO_grab_c0::m.field_0xC8.mCancelFrame;
        mProcVar2.field_0x300c = 2;
    } else if (checkGrabSideActor()) {
        f32 var_f31;
        if (mTargetedActor != NULL) {
            var_f31 = daAlinkHIO_atnMove_c0::m.mWaitAnmSpeed;
        } else {
            var_f31 = daAlinkHIO_noActAtnMove_c0::m.mWaitAnmSpeed;
        }

        setSingleAnimeBaseSpeed(ANM_ATN_WAIT_RIGHT, var_f31, daAlinkHIO_basic_c0::m.mAnmBlendFactor);
        setUpperAnimeParam(0x51, UPPER_0, &daAlinkHIO_grab_c0::m.field_0xB4);
        field_0x343c = 4.0f;
        field_0x347c = daAlinkHIO_grab_c0::m.field_0xB4.mCancelFrame;
        mProcVar2.field_0x300c = 1;
    } else {
        setSingleAnimeParam(ANM_THROW, &daAlinkHIO_grab_c0::m.field_0x3C);
        field_0x343c = 5.0f;
        field_0x347c = daAlinkHIO_grab_c0::m.field_0x3C.mCancelFrame;
        mProcVar2.field_0x300c = 0;
    }

    field_0x3198 = param_0;
    field_0x3588 = l_halfAtnWaitBaseAnime;
    return 1;
}

/* 800E65F8-800E672C 0E0F38 0134+00 1/0 0/0 0/0 .text            procGrabThrow__9daAlink_cFv */
int daAlink_c::procGrabThrow() {
    daPy_frameCtrl_c* var_r30;
    if (mProcVar2.field_0x300c == 1) {
        var_r30 = &mUpperFrameCtrl[0];
    } else {
        if (mProcVar2.field_0x300c == 2) {
            field_0x2f99 = 4;
            onEndResetFlg0(ERFLG0_UNK_8000000);
        }
        var_r30 = &mUnderFrameCtrl[0];
    }

    cLib_chaseF(&mNormalSpeed, 0.0f, daAlinkHIO_move_c0::m.mDeceleration);

    if (var_r30->checkPass(field_0x343c)) {
        setGrabItemThrow();
    }

    if (checkAnmEnd(var_r30)) {
        if (field_0x3198 != 0) {
            field_0x3198 = 0;
            swordEquip(0);
        }

        checkNextAction(0);
    } else if (var_r30->getFrame() > field_0x347c) {
        onModeFlg(4);

        if (field_0x3198 != 0) {
            field_0x3198 = 0;
            swordEquip(0);
            checkNextAction(0);
        } else {
            checkNextAction(1);
        }
    }

    return 1;
}

/* 800E672C-800E6914 0E106C 01E8+00 2/2 0/0 0/0 .text            procGrabPutInit__9daAlink_cFv */
int daAlink_c::procGrabPutInit() {
    if (mProcID == PROC_GRAB_STAND) {
        return 0;
    }

    if (!commonProcInitNotSameProc(PROC_GRAB_PUT)) {
        return 0;
    }

    mNormalSpeed = 0.0f;
    field_0x33e8 = 0.0f;
    field_0x3478 = 23.0f;

    if (checkGrabCarryActor()) {
        field_0x3198 = 0;
        setSingleAnime(ANM_CARRY, daAlinkHIO_grab_c0::m.field_0xA0.mSpeed, 9.0f, daAlinkHIO_grab_c0::m.field_0xA0.mEndFrame, daAlinkHIO_grab_c0::m.field_0xA0.mInterpolation);
        mProcVar3.field_0x300e = 1;
        field_0x347c = 1.0f / (daAlinkHIO_grab_c0::m.field_0xA0.mEndFrame - 9.0f);
        field_0x3480 = 1.0f / (daAlinkHIO_grab_c0::m.field_0xA0.mEndFrame - field_0x3478);
    } else {
        mProcVar3.field_0x300e = 0;
        field_0x3198 = 0;
        setSingleAnimeParam(ANM_GRAB_UP, &daAlinkHIO_grab_c0::m.field_0x50);
        field_0x347c = 1.0f / (daAlinkHIO_grab_c0::m.field_0x50.mEndFrame - daAlinkHIO_grab_c0::m.field_0x50.mStartFrame);
    }

    if (mGrabItemAcKeep.getActor() != NULL) {
        field_0x37c8 = mGrabItemAcKeep.getActor()->current.pos;
    } else {
        field_0x37c8 = current.pos;
    }

    if (checkEndResetFlg1(ERFLG1_UNK_2000)) {
        mProcVar4.field_0x3010 = cLib_targetAngleY(&current.pos, &mForcePutPos);
    } else {
        mProcVar4.field_0x3010 = shape_angle.y;
    }

    onResetFlg0(RFLG0_GRAB_PUT_START);
    return 1;
}

/* 800E6914-800E6A9C 0E1254 0188+00 1/0 0/0 0/0 .text            procGrabPut__9daAlink_cFv */
int daAlink_c::procGrabPut() {
    fopAc_ac_c* temp_r29 = mGrabItemAcKeep.getActor();

    cLib_addCalcAngleS(&shape_angle.y, mProcVar4.field_0x3010, 2, 0x2000, 0x800);
    current.angle.y = shape_angle.y;

    if (temp_r29 != NULL) {
        cXyz sp8(temp_r29->current.pos.x + (field_0x33e4 * cM_ssin(shape_angle.y)), temp_r29->current.pos.y, temp_r29->current.pos.z + (field_0x33e4 * cM_scos(shape_angle.y)));
        putObjLineCheck(mObjLinChk, &sp8, temp_r29);
        field_0x37c8 = temp_r29->current.pos;
    }

    daPy_frameCtrl_c* temp_r28 = &mUnderFrameCtrl[0];

    if (checkAnmEnd(temp_r28)) {
        if (temp_r29 != NULL) {
            temp_r29->speedF = 0.0f;
        }
        freeGrabItem();
        procGrabStandInit();
    } else if (mProcVar3.field_0x300e) {
        f32 var_f31;
        if (temp_r28->getFrame() < field_0x3478) {
            var_f31 = 0.0f;
        } else {
            var_f31 = field_0x3480 * (temp_r28->getFrame() - field_0x3478);
        }
        setCarryArmAngle(1.0f - (field_0x347c * (temp_r28->getFrame() - 9.0f)), var_f31);
    } else {
        setCarryArmAngle(0.0f, field_0x347c * (temp_r28->getFrame() - daAlinkHIO_grab_c0::m.field_0x50.mStartFrame));
    }

    return 1;
}

/* 800E6A9C-800E6C34 0E13DC 0198+00 2/2 0/0 0/0 .text            procGrabWaitInit__9daAlink_cFv */
int daAlink_c::procGrabWaitInit() {
    if (checkEndResetFlg2(ERFLG2_UNK_8)) {
        return procGrabReboundInit(1);
    }

    BOOL var_r30;
    if (!checkModeFlg(0x100000) && checkNoResetFlg0(FLG0_UNDERWATER)) {
        var_r30 = 1;
    } else {
        var_r30 = 0;
    }

    if (!commonProcInitNotSameProc(PROC_GRAB_WAIT)) {
        return 0;
    }

    f32 var_f31 = daAlinkHIO_basic_c0::m.mAnmBlendFactor;
    if (!checkGrabAnime()) {
        setGrabUpperAnime(-1.0f);
    } else {
        setWaterInAnmRate(&mUpperFrameCtrl[2], 1.0f);
    }

    if (var_r30) {
        if (checkZoraWearAbility() ) {
            var_f31 *= 1.0f / daAlinkHIO_magneBoots_c0::m.mZoraWaterAnmSpeed;
        } else {
            var_f31 *= 1.0f / daAlinkHIO_magneBoots_c0::m.mWaterStartWalkAnmRate;
        }
    }

    if (checkAttentionLock() && (checkGrabAnimeUp() || checkGrabAnimeSide())) {
        setBlendAtnMoveAnime(daAlinkHIO_basic_c0::m.mAnmBlendFactor);
    } else {
        setBlendMoveAnime(var_f31);
    }

    current.angle.y = shape_angle.y;
    mNormalSpeed = 0.0f;
    return 1;
}

/* 800E6C34-800E6D6C 0E1574 0138+00 1/0 0/0 0/0 .text            procGrabWait__9daAlink_cFv */
int daAlink_c::procGrabWait() {
    if (mGrabItemAcKeep.getActor() == NULL) {
        if (checkGrabAnime()) {
            resetUpperAnime(UPPER_2, 3.0f);
        }
        return checkNextAction(0);
    }

    s16 temp_r29 = shape_angle.y;

    if (!checkNextAction(0)) {
        field_0x33f0 = 0.005f * (s16)(shape_angle.y - temp_r29);

        if (checkAttentionLock() && (checkGrabAnimeUp() || checkGrabAnimeSide())) {
            setBlendAtnMoveAnime(-1.0f);
        } else {
            setBlendMoveAnime(-1.0f);
        }
    } else if (checkGrabAnime()) {
        mUpperFrameCtrl[2].setRate(0.0f);
        mUpperFrameCtrl[2].setFrame(0.0f);
    }

    return 1;
}

/* 800E6D6C-800E6E0C 0E16AC 00A0+00 2/2 0/0 0/0 .text            procGrabReboundInit__9daAlink_cFi
 */
int daAlink_c::procGrabReboundInit(int param_0) {
    commonProcInit(PROC_GRAB_REBOUND);
    setSingleAnimeParam(ANM_PICK_UP_LARGE, &daAlinkHIO_grab_c0::m.field_0x64);

    mNormalSpeed = 0.0f;
    field_0x3198 = param_0;

    if (param_0) {
        mUnderFrameCtrl[0].setRate(0.0f);
    }

    dComIfGp_getVibration().StartShock(1, 0xF, cXyz(0.0f, 1.0f, 0.0f));
    return 1;
}

/* 800E6E0C-800E6EEC 0E174C 00E0+00 1/0 0/0 0/0 .text            procGrabRebound__9daAlink_cFv */
int daAlink_c::procGrabRebound() {
    daPy_frameCtrl_c* temp_r30 = &mUnderFrameCtrl[0];

    if (mGrabItemAcKeep.getActor() == NULL) {
        resetUpperAnime(UPPER_2, -1.0f);
        return checkNextAction(0);
    }

    if (field_0x3198 != 0) {
        if (field_0x2060->getOldFrameRate() < 0.1f) {
            setWaterInAnmRate(temp_r30, daAlinkHIO_grab_c0::m.field_0x64.mSpeed);
            field_0x3198 = 0;
        }
    } else if (checkAnmEnd(temp_r30) || (checkInputOnR() && (temp_r30->getFrame() > daAlinkHIO_grab_c0::m.field_0x64.mCancelFrame))) {
        initGrabNextMode();
    }

    return 1;
}

/* 800E6EEC-800E6FE0 0E182C 00F4+00 2/2 0/0 0/0 .text            procGrabStandInit__9daAlink_cFv */
int daAlink_c::procGrabStandInit() {
    commonProcInit(PROC_GRAB_STAND);

    if (checkUnderMove0BckNoArc(ANM_CARRY)) {
        setSingleAnime(ANM_CARRY, daAlinkHIO_grab_c0::m.field_0xA0.mSpeed, daAlinkHIO_grab_c0::m.field_0xA0.mStartFrame, (9.0f + daAlinkHIO_grab_c0::m.field_0xA0.mSpeed), 0.0f);
        field_0x3478 = daAlinkHIO_grab_c0::m.field_0xA0.mCancelFrame;
        field_0x347c = 1.0f / (9.0f - daAlinkHIO_grab_c0::m.field_0xA0.mStartFrame);
        mProcVar3.field_0x300e = 1;
        setCarryArmAngle(1.0f, 0.0f);
    } else {
        setSingleAnimeParam(ANM_GRAB_UP_START, &daAlinkHIO_grab_c0::m.field_0x28);
        field_0x3478 = daAlinkHIO_grab_c0::m.field_0x28.mCancelFrame;
        mProcVar3.field_0x300e = 0;
    }

    return 1;
}

/* 800E6FE0-800E70C0 0E1920 00E0+00 1/0 0/0 0/0 .text            procGrabStand__9daAlink_cFv */
int daAlink_c::procGrabStand() {
    daPy_frameCtrl_c* temp_r30 = &mUnderFrameCtrl[0];

    if (checkAnmEnd(temp_r30)) {
        if (mDemo.getDemoMode() == 0xD) {
            dComIfGp_evmng_cutEnd(field_0x3184);
        } else {
            checkNextAction(0);
        }
    } else if (temp_r30->getFrame() < field_0x3478) {
        onModeFlg(4);

        if (!checkNextAction(1) && mProcVar3.field_0x300e != 0) {
            setCarryArmAngle(field_0x347c * (mUnderFrameCtrl[0].getFrame() - daAlinkHIO_grab_c0::m.field_0xA0.mStartFrame), 0.0f);
        }
    }

    return 1;
}

/* 800E70C0-800E70FC 0E1A00 003C+00 1/1 0/0 0/0 .text
 * checkInsectActorName__9daAlink_cFP10fopAc_ac_c               */
BOOL daAlink_c::checkInsectActorName(fopAc_ac_c* insectActor) {
    s16 insectName = fopAcM_GetName(insectActor);

    for (int i = 0; i < 12; i++) {
        if (insectName == l_insectNameList[i]) {
            return true;
        }
    }
    return false;
}

/* 800E70FC-800E71D4 0E1A3C 00D8+00 2/2 0/0 0/0 .text            procInsectCatchInit__9daAlink_cFv
 */
int daAlink_c::procInsectCatchInit() {
    if (fopAcM_checkCarryNow(field_0x27f4)) {
        return checkWaitAction();
    }

    if (mEquipItem != fpcNm_ITEM_NONE) {
        return procPreActionUnequipInit(PROC_INSECT_CATCH, field_0x27f4);
    }

    commonProcInit(PROC_INSECT_CATCH);
    mNormalSpeed = 0.0f;

    if (field_0x27f4->attention_info.position.y > field_0x3834.y - 30.0f) {
        setSingleAnimeParam(ANM_BOTTLE_SWING, &daAlinkHIO_bottle_c0::m.mSwingSideAnm);
        field_0x3478 = 4.0f;
    } else {
        setSingleAnimeParam(ANM_BOTTLE_SWING_DOWN, &daAlinkHIO_bottle_c0::m.mSwingDownAnm);
        field_0x3478 = 8.0f;
    }

    field_0x280c.setData(field_0x27f4);
    return 1;
}

/* 800E71D4-800E7254 0E1B14 0080+00 1/0 0/0 0/0 .text            procInsectCatch__9daAlink_cFv */
int daAlink_c::procInsectCatch() {
    daPy_frameCtrl_c* frame_ctrl = &mUnderFrameCtrl[0];

    if (frame_ctrl->checkAnmEnd()) {
        checkNextAction(0);
    } else {
        if (frame_ctrl->checkPass(field_0x3478)) {
            fopAc_ac_c* actor = field_0x280c.getActor();
            if (actor != NULL) {
                fopAcM_setCarryNow(actor, 0);
            }
        }
    }
    return true;
}

/* 800E7254-800E7460 0E1B94 020C+00 2/2 0/0 0/0 .text            procPickUpInit__9daAlink_cFv */
int daAlink_c::procPickUpInit() {
    if (fopAcM_checkCarryNow(field_0x27f4)) {
        return checkWaitAction();
    }

    if (mEquipItem != fpcNm_ITEM_NONE) {
        return procPreActionUnequipInit(PROC_PICK_UP, field_0x27f4);
    }

    s16 temp_r3 = fopAcM_GetName(field_0x27f4);
    if (temp_r3 == PROC_NPC_KS && !dComIfGp_event_compulsory(this, NULL, 0xFFFF)) {
        return checkWaitAction();
    }

    commonProcInit(PROC_PICK_UP);
    mGrabItemAcKeep.setData(field_0x27f4);

    if (fopAcM_searchActorDistanceXZ2(this, field_0x27f4) > 1.0f) {
        shape_angle.y = fopAcM_searchActorAngleY(this, field_0x27f4);
    }

    current.angle.y = shape_angle.y;
    mProcVar2.field_0x300c = shape_angle.y;
    field_0x37c8 = field_0x27f4->current.pos - field_0x3510;

    mGrabItemAcKeep.getActor();
    mNormalSpeed = 0.0f;

    if (checkEquipAnime()) {
        resetUpperAnime(UPPER_2, -1.0f);
    }

    int var_r29;
    if (temp_r3 == PROC_Obj_Kantera) {
        setSingleAnimeParam(ANM_BOTTLE_SWING, &daAlinkHIO_bottle_c0::m.mSwingSideAnm);
        mProcVar3.field_0x300e = 1;
        field_0x3478 = 7.0f;
        mProcVar4.field_0x3010 = 0;
        var_r29 = 0;
    } else if (temp_r3 == PROC_NPC_KS) {
        setSingleAnimeParam(ANM_BOTTLE_SWING_DOWN, &daAlinkHIO_bottle_c0::m.mSwingDownAnm);
        mProcVar3.field_0x300e = 1;
        field_0x3478 = 7.0f;
        mProcVar4.field_0x3010 = 1;
        fopAcM_onSwitch(field_0x27f4, 0x3F);
        var_r29 = 0;
    } else {
        setSingleAnimeParam(ANM_PICK_UP, &daAlinkHIO_pickUp_c0::m.field_0x0);
        mProcVar3.field_0x300e = 0;
        mProcVar4.field_0x3010 = 0;
        var_r29 = 1;
    }

    fopAcM_setCarryNow(field_0x27f4, var_r29);
    return 1;
}

/* 800E7460-800E75EC 0E1DA0 018C+00 1/0 0/0 0/0 .text            procPickUp__9daAlink_cFv */
int daAlink_c::procPickUp() {
    if (mProcVar4.field_0x3010 == 0 && mGrabItemAcKeep.getActor() == NULL && mItemAcKeep.getActor() == NULL) {
        return checkNextAction(0);
    }

    daPy_frameCtrl_c* temp_r30 = &mUnderFrameCtrl[0];

    if (mProcVar3.field_0x300e != 0) {
        if (checkAnmEnd(temp_r30)) {
            if (mProcVar4.field_0x3010 != 0) {
                procBottleGetInit(0);
            } else {
                checkNextAction(0);
            }
        } else if (temp_r30->checkPass(field_0x3478)) {
            onResetFlg0(RFLG0_UNK_8000);

            if (mProcVar4.field_0x3010 != 0) {
                mEquipItem = fpcNm_ITEM_KANTERA;
                setKandelaarModel();
            }
        }
    } else if (checkAnmEnd(temp_r30)) {
        checkNextAction(0);
    } else if (temp_r30->getFrame() > daAlinkHIO_pickUp_c0::m.field_0x0.mCancelFrame) {
        onModeFlg(4);
        checkNextAction(1);
    } else if (temp_r30->checkPass(9.0f)) {
        mEquipItem = 0x102;
        mItemAcKeep = mGrabItemAcKeep;
        mGrabItemAcKeep.clearData();
        field_0x2f94 = 3;
        onResetFlg0(RFLG0_UNK_8000);
    }

    return 1;
}

/* 800E75EC-800E76E0 0E1F2C 00F4+00 3/3 0/0 0/0 .text            procPickPutInit__9daAlink_cFi */
int daAlink_c::procPickPutInit(int param_0) {
    if (param_0 != 0 && mEquipItem != fpcNm_ITEM_NONE) {
        return procPreActionUnequipInit(PROC_PICK_PUT, NULL);
    }

    commonProcInit(PROC_PICK_PUT);
    mNormalSpeed = 0.0f;
    setSingleAnimeParam(ANM_PICK_UP, &daAlinkHIO_pickUp_c0::m.field_0x14);

    if (mItemAcKeep.getActor() != NULL) {
        field_0x37c8 = mItemAcKeep.getActor()->current.pos;
    } else {
        field_0x37c8 = current.pos;
    }

    field_0x3198 = 1;
    mProcVar2.field_0x300c = param_0;

    if (mProcVar2.field_0x300c != 0) {
        mEquipItem = fpcNm_ITEM_POKE_BOMB;
    } else {
        onResetFlg0(RFLG0_GRAB_PUT_START);
    }

    return 1;
}

/* 800E76E0-800E7894 0E2020 01B4+00 1/0 0/0 0/0 .text            procPickPut__9daAlink_cFv */
int daAlink_c::procPickPut() {
    fopAc_ac_c* temp_r3 = mItemAcKeep.getActor();
    if (temp_r3 == NULL && mProcVar2.field_0x300c == 0 && field_0x3198 != 0) {
        return checkNextAction(0);
    }

    if (temp_r3 != NULL) {
        cXyz sp8(temp_r3->current.pos.x, temp_r3->current.pos.y, temp_r3->current.pos.z);
        putObjLineCheck(*fopAcM_lc_c::getLineCheck(), &sp8, temp_r3);
        field_0x37c8 = temp_r3->current.pos;
    }

    daPy_frameCtrl_c* temp_r28 = &mUnderFrameCtrl[0];

    if (checkAnmEnd(temp_r28)) {
        checkNextAction(0);
    } else if (temp_r28->getFrame() < daAlinkHIO_pickUp_c0::m.field_0x14.mCancelFrame) {
        onModeFlg(4);
        checkNextAction(1);
    } else if (temp_r28->checkPass(9.0f)) {
        if (mProcVar2.field_0x300c != 0) {
            if (checkReadyItem() && dBomb_c::createInsectBombPlayer(&current.pos)) {
                dComIfGp_addSelectItemNum(mSelectItemId, -1);
                field_0x2fcf++;
            }
            mEquipItem = fpcNm_ITEM_NONE;
        } else {
            field_0x3198 = 0;
            temp_r3->speedF = 0.0f;
            deleteEquipItem(0, 0);
        }
    }

    return 1;
}

/* 800E7894-800E794C 0E21D4 00B8+00 2/2 0/0 0/0 .text checkSetChainPullAnime__9daAlink_cFs */
BOOL daAlink_c::checkSetChainPullAnime(s16 param_0) {
    return checkInputOnR() && checkFmChainGrabAnime() && (field_0x3400 != 0.0f || field_0x3404 != 0.0f) && (checkBossRoom() || abs((s16)(field_0x2fe2 - param_0)) >= 0x3800);
}

/* 800E794C-800E7994 0E228C 0048+00 3/3 0/0 0/0 .text            getChainStickAngleY__9daAlink_cCFs
 */
s16 daAlink_c::getChainStickAngleY(s16 param_0) const {
    s16 angle = field_0x2fe2 - param_0;

    if (angle >= 0x3800 && angle < 0x7F80) {
        return param_0 + 0x7F80;
    } else if (angle <= -0x3800 && angle > -0x7F80) {
        return param_0 - 0x7F80;
    }

    return field_0x2fe2;
}

/* 800E7994-800E79F8 0E22D4 0064+00 1/1 0/0 0/0 .text            checkChainEmphasys__9daAlink_cFv */
u8 daAlink_c::checkChainEmphasys() {
    fopAc_ac_c* temp_r3 = field_0x2844.getActor();
    if (temp_r3 != NULL && fopAcM_GetName(temp_r3) == PROC_Obj_SwChain && !((daObjSwChain_c*)temp_r3)->checkDispEmphasis()) {
        return 0;
    }

    return 2;
}

/* 800E79F8-800E7AEC 0E2338 00F4+00 4/4 0/0 0/0 .text            searchFmChainPos__9daAlink_cFv */
BOOL daAlink_c::searchFmChainPos() {
    if (field_0x2844.getActor() == NULL) {
        field_0x2fa3 = 0;
        return 0;
    }

    cXyz* var_r30 = field_0x354c;

    for (int i = 0; i < 4; i++, var_r30++) {
        if (current.pos.abs2XZ(*var_r30) < 14400.0f && fabsf(current.pos.y - var_r30->y) < 100.0f) {
            return i + 1;
        }
    }

    return 0;
}

/* 800E7AEC-800E7BD0 0E242C 00E4+00 0/0 1/1 0/0 .text
 * setFmChainPosFromOut__9daAlink_cFP10fopAc_ac_cP4cXyzi        */
BOOL daAlink_c::setFmChainPosFromOut(fopAc_ac_c* param_0, cXyz* param_1, int param_2) {
    field_0x354c[param_2] = *param_1;

    BOOL var_r29 = field_0x2fa3 - 1 == param_2 &&
                   (checkFmChainGrabAnime() ||
                   (mProcID == PROC_CHAIN_UP && mUnderFrameCtrl[0].getFrame() >= 8.0f) ||
                   (mProcID == PROC_WOLF_CHAIN_UP && mUnderFrameCtrl[0].getFrame() >= 7.0f));

    if (field_0x2fa3 == 0 || var_r29) {
        field_0x2844.setData(param_0);
    }

    return var_r29;
}

/* 800E7BD0-800E7C30 0E2510 0060+00 1/0 0/0 0/0 .text checkChainBlockPushPull__9daAlink_cFv */
bool daAlink_c::checkChainBlockPushPull() {
    if (checkFmChainGrabAnime()) {
        fopAc_ac_c* actor = field_0x2844.getActor();
        if (actor != NULL) {
            s16 name = fopAcM_GetName(actor);
            if (name == PROC_Obj_ChainBlock || name == PROC_Obj_SwChain ||
                name == PROC_Obj_ChainWall)
            {
                return true;
            }
        }
    }
    return false;
}

/* 800E7C30-800E7CC0 0E2570 0090+00 2/2 0/0 0/0 .text            procFmChainUpInit__9daAlink_cFv */
int daAlink_c::procFmChainUpInit() {
    if (mEquipItem != fpcNm_ITEM_NONE) {
        return procPreActionUnequipInit(PROC_CHAIN_UP, NULL);
    }

    field_0x2fa3 = searchFmChainPos();

    if (field_0x2fa3 == 0) {
        return procWaitInit();
    }

    commonProcInit(PROC_CHAIN_UP);
    setSingleAnimeParam(ANM_CHAIN_PICK_UP, &daAlinkHIO_fmChain_c0::m.field_0x0);
    mNormalSpeed = 0.0f;
    return 1;
}

/* 800E7CC0-800E7DD8 0E2600 0118+00 1/0 0/0 0/0 .text            procFmChainUp__9daAlink_cFv */
int daAlink_c::procFmChainUp() {
    daPy_frameCtrl_c* temp_r29 = &mUnderFrameCtrl[0];

    setGrabStatus(0x96, 2);
    setShapeAngleToAtnActor(0);

    if (checkAnmEnd(temp_r29) || (checkInputOnR() && temp_r29->getFrame() > daAlinkHIO_fmChain_c0::m.field_0x0.mCancelFrame)) {
        u8 temp_r27 = field_0x2fa3;
        fopAc_ac_c* temp_r28 = field_0x2844.getActor();

        procWaitInit();
        setUpperAnimeBaseSpeed(getMainBckData(ANM_CHAIN_PULL)->m_upperID, 0.0f, 3.0f);
        field_0x2f96 = 3;
        field_0x2f97 = 9;

        if (temp_r28 != NULL) {
            field_0x2fa3 = temp_r27;
            field_0x2844.setData(temp_r28);
        }
    } else if (temp_r29->getFrame() >= 9.0f) {
        field_0x2f92 = 3;
        field_0x2f93 = 9;
    } else {
        field_0x2f92 = 0xFE;
        field_0x2f93 = 0xFE;
    }

    return 1;
}

/* 800E7DD8-800E7E50 0E2718 0078+00 2/1 0/0 0/0 .text procFmChainStrongPullInit__9daAlink_cFv */
int daAlink_c::procFmChainStrongPullInit() {
    if (!commonProcInitNotSameProc(PROC_CHAIN_STRONG_PULL)) {
        return 0;
    }

    setSingleAnimeBase(ANM_CHAIN_PULL_FYRUS);
    mNowAnmPackUpper[2].setRatio(0.0f);
    mNormalSpeed = 0.0f;
    voiceStart(Z2SE_AL_V_MAGNET_CAUGHT);
    return 1;
}

/* 800E7E50-800E7ED0 0E2790 0080+00 1/0 0/0 0/0 .text            procFmChainStrongPull__9daAlink_cFv
 */
int daAlink_c::procFmChainStrongPull() {
    setGrabStatus(0x96, 2);

    if (checkAnmEnd(&mUnderFrameCtrl[0])) {
        if (mDemo.getDemoMode() == 0x43) {
            dComIfGp_evmng_cutEnd(field_0x3184);
        } else {
            mNowAnmPackUpper[2].setRatio(1.0f);
            checkNextAction(0);
        }
    }

    return 1;
}

/* 800E7ED0-800E7EE4 0E2810 0014+00 9/9 0/0 0/0 .text            setWallGrabStatus__9daAlink_cFUcUc
 */
void daAlink_c::setWallGrabStatus(u8 param_0, u8 param_1) {
    setRStatus(param_0, param_1);
}

/* 800E7EE4-800E7EF4 0E2824 0010+00 2/2 0/0 0/0 .text            getWallGrabStatus__9daAlink_cFv */
int daAlink_c::getWallGrabStatus() {
    return dComIfGp_getRStatus();
}

/* 800E7EF4-800E7F18 0E2834 0024+00 1/1 0/0 0/0 .text            wallGrabTrigger__9daAlink_cFv */
BOOL daAlink_c::wallGrabTrigger() {
    return itemTriggerCheck(BTN_R);
}

/* 800E7F18-800E7F3C 0E2858 0024+00 4/4 0/0 0/0 .text            wallGrabButton__9daAlink_cFv */
BOOL daAlink_c::wallGrabButton() {
    return itemButtonCheck(BTN_R);
}

/* 800E7F3C-800E80A4 0E287C 0168+00 4/4 0/0 0/0 .text
 * setPushPullKeepData__9daAlink_cFQ29dBgW_Base13PushPullLabeli */
int daAlink_c::setPushPullKeepData(dBgW_Base::PushPullLabel i_label, int param_1) {
    if (i_label != dBgW::PPLABEL_NONE) {
        if (checkPowerGloveGet()) {
            cLib_onBit<dBgW::PushPullLabel>(i_label, dBgW::PPLABEL_HEAVY);
        }

        if (field_0x3198) {
            cLib_onBit<dBgW::PushPullLabel>(i_label, dBgW::PPLABEL_4);
        }
    }

    fopAc_ac_c* pp_actor = dComIfG_Bgsp().PushPullCallBack(mPolyInfo1, this, shape_angle.y, i_label);
    if (pp_actor == NULL) {
        return 0;
    }

    cXyz unused;
    if (i_label != dBgW::PPLABEL_NONE || param_1) {
        if (pp_actor->shape_angle.y != mProcVar2.field_0x300c) {
            s16 var_r28 = pp_actor->shape_angle.y - mProcVar2.field_0x300c;
            mProcVar3.field_0x300e += var_r28;

            current.pos.x = field_0x37c8.x + field_0x347c * cM_ssin(mProcVar3.field_0x300e);
            current.pos.z = field_0x37c8.z + field_0x347c * cM_scos(mProcVar3.field_0x300e);
            shape_angle.y += var_r28;
            current.angle.y += var_r28;
        }

        current.pos.x += pp_actor->current.pos.x - field_0x37c8.x;
        current.pos.z += pp_actor->current.pos.z - field_0x37c8.z;
    }

    field_0x37c8 = pp_actor->current.pos;
    mProcVar2.field_0x300c = pp_actor->shape_angle.y;
    return 1;
}

/* 800E80A4-800E8148 0E29E4 00A4+00 2/2 0/0 0/0 .text checkPushPullTurnBlock__9daAlink_cFv */
BOOL daAlink_c::checkPushPullTurnBlock() {
    s16 name = getMoveBGActorName(mPolyInfo1, 1);
    return name == PROC_Obj_SwTurn || name == PROC_Obj_Lv6SwTurn || name == PROC_Obj_PushDoor || name == PROC_PushDoor || name == PROC_Obj_Ytaihou;
}

/* 800E8148-800E8298 0E2A88 0150+00 1/1 0/0 0/0 .text            checkPullBehindWall__9daAlink_cFv
 */
BOOL daAlink_c::checkPullBehindWall() {
    cXyz sp14;
    cXyz sp8;

    f32 temp_f31 = cM_ssin(shape_angle.y);
    f32 temp_f30 = cM_scos(shape_angle.y);

    sp14.x = current.pos.x;
    sp14.y = current.pos.y + l_autoUpHeight;
    sp14.z = current.pos.z;

    sp8.x = sp14.x - (75.0f * temp_f31);
    sp8.y = sp14.y;
    sp8.z = sp14.z - (75.0f * temp_f30);
    if (commonLineCheck(&sp14, &sp8)) {
        return 1;
    }

    sp14.y = 129.99f + current.pos.y;
    sp8.y = sp14.y;
    if (commonLineCheck(&sp14, &sp8)) {
        return 1;
    }

    sp8.x += 34.0f * temp_f31;
    sp8.z += 34.0f * temp_f30;
    mLinkGndChk.SetPos(&sp8);
    if (dComIfG_Bgsp().GroundCross(&mLinkGndChk) - current.pos.y < l_autoDownHeight) {
        return 1;
    }

    return 0;
}

/* 800E8298-800E82B0 0E2BD8 0018+00 3/3 0/0 0/0 .text            offGoatStopGame__9daAlink_cFv */
void daAlink_c::offGoatStopGame() {
    if (mSpecialMode == SMODE_GOAT_STOP) {
        mSpecialMode = 0;
    }
}

/* 800E82B0-800E8314 0E2BF0 0064+00 4/4 0/0 0/0 .text
 * checkGoatCatchActor__9daAlink_cFP10fopAc_ac_c                */
BOOL daAlink_c::checkGoatCatchActor(fopAc_ac_c* param_0) {
    s16 name = fopAcM_GetName(param_0);
    return name == PROC_E_GOB || (name == PROC_OBJ_GRA && checkSpecialNpc(param_0)) ||
           name == PROC_COW;
}

/* 800E8314-800E8334 0E2C54 0020+00 2/2 0/0 0/0 .text            getGoatCatchDistance2__9daAlink_cFv
 */
f32 daAlink_c::getGoatCatchDistance2() {
    if (fopAcM_GetName(field_0x27f4) == PROC_B_MGN) {
        return 1000000.0f;
    }

    return 90000.0f;
}

/* 800E8334-800E8354 0E2C74 0020+00 3/3 0/0 0/0 .text            endPushPull__9daAlink_cFv */
int daAlink_c::endPushPull() {
    return checkWaitAction();
}

/* 800E8354-800E8428 0E2C94 00D4+00 2/2 0/0 0/0 .text            getPushPullAnimeSpeed__9daAlink_cFv
 */
f32 daAlink_c::getPushPullAnimeSpeed() {
    f32 var_f31;
    if ((getMoveBGActorName(mPolyInfo1, 0) == PROC_Obj_Movebox && ((daObjMovebox::Act_c*)dComIfG_Bgsp().GetActorPointer(mPolyInfo1.GetBgIndex()))->getType() != 0) ||
        getMoveBGActorName(mPolyInfo1, 0) == PROC_Obj_Bemos)
    {
        if (checkWolf()) {
            var_f31 = daAlinkHIO_wlPush_c0::m.field_0x10;
        } else {
            var_f31 = daAlinkHIO_pushpull_c0::m.field_0x38;
        }
    } else if (checkWolf()) {
        var_f31 = daAlinkHIO_wlPush_c0::m.field_0x8;
    } else {
        var_f31 = daAlinkHIO_pushpull_c0::m.field_0x18;
    }

    return var_f31;
}

/* 800E8428-800E857C 0E2D68 0154+00 4/4 0/0 0/0 .text procCoPushPullWaitInit__9daAlink_cFi */
int daAlink_c::procCoPushPullWaitInit(int param_0) {
    if (mEquipItem != fpcNm_ITEM_NONE) {
        return procPreActionUnequipInit(PROC_PUSH_PULL_WAIT, NULL);
    }

    commonProcInit(PROC_PUSH_PULL_WAIT);
    mProcVar4.field_0x3010 = 0;
    field_0x3198 = param_0;
    mNormalSpeed = 0.0f;

    f32 var_f31;
    if (checkWolf()) {
        setSingleAnimeWolfBaseSpeed(WANM_WAIT_PP, daAlinkHIO_wlPush_c0::m.field_0x0, daAlinkHIO_wlPush_c0::m.field_0x4);
        var_f31 = 50.0f;
    } else {
        if (checkEquipAnime()) {
            resetUpperAnime(UPPER_2, -1.0f);
        }

        setSingleAnimeBaseSpeed(ANM_WAIT_PUSH_PULL, daAlinkHIO_pushpull_c0::m.field_0x10, daAlinkHIO_pushpull_c0::m.field_0x14);
        var_f31 = 50.0f;
    }

    if (param_0 != 0) {
        mProcVar2.field_0x300c = field_0x306e + 0x8000;

        field_0x37c8.x = field_0x34ec.x + (var_f31 * cM_ssin(field_0x306e));
        field_0x37c8.y = current.pos.y;
        field_0x37c8.z = field_0x34ec.z + (var_f31 * cM_scos(field_0x306e));
    }

    dComIfGp_setPlayerStatus0(0, 0x4000000);
    return 1;
}

/* 800E857C-800E875C 0E2EBC 01E0+00 1/0 0/0 0/0 .text            procCoPushPullWait__9daAlink_cFv */
int daAlink_c::procCoPushPullWait() {
    if (mProcVar4.field_0x3010 == 0) {
        setWallGrabStatus(0x15, 2);
    }

    setFrontWallType();

    if (mProcVar4.field_0x3010 != 0 || (wallGrabButton() && checkResetFlg0(RFLG0_UNK_8))) {
        if (field_0x3198 != 0) {
            s16 temp_r28 = cLib_addCalcAngleS(&shape_angle.y, mProcVar2.field_0x300c, 3, 0x800, 0x100);
            current.angle.y = shape_angle.y;

            f32 temp_f31 = cLib_addCalc(&current.pos.x, field_0x37c8.x, 0.5f, 10.0f, 1.0f);
            temp_f31 += cLib_addCalc(&current.pos.z, field_0x37c8.z, 0.5f, 10.0f, 1.0f);
    
            if (temp_r28 == 0 && temp_f31 < 5.0f && checkNoUpperAnime()) {
                current.pos.x = field_0x37c8.x;
                current.pos.z = field_0x37c8.z;
                field_0x3198 = 0;
            }
        }

        if (field_0x3198 == 0) {
            if (mProcVar4.field_0x3010 != 0) {
                procCoPushMoveInit(0, 1);
            } else if (checkInputOnR()) {
                int temp_r3 = getDirectionFromShapeAngle();
                if (temp_r3 == DIR_FORWARD) {
                    procCoPushMoveInit(0, getMoveBGActorName(mPolyInfo1, 1) == PROC_Obj_IceBlock);
                } else if (!checkWolf() && temp_r3 == DIR_BACKWARD) {
                    procPullMoveInit(0);
                }
            }
        }
    } else {
        endPushPull();
    }

    return 1;
}

/* 800E875C-800E89F0 0E309C 0294+00 2/2 0/0 0/0 .text            procCoPushMoveInit__9daAlink_cFii
 */
int daAlink_c::procCoPushMoveInit(int param_0, int param_1) {
    if (!setPushPullKeepData(dBgW_Base::PPLABEL_NONE, param_0)) {
        return 0;
    }

    commonProcInit(PROC_PUSH_MOVE);
    mProcVar0.field_0x3008 = checkPushPullTurnBlock();
    f32 var_f31 = getPushPullAnimeSpeed();

    if (checkWolf()) {
        if (mProcVar0.field_0x3008 != 0) {
            setSingleAnimeWolfBase(WANM_PUSH_START);
            var_f31 = 1.0f;
        } else {
            setSingleAnimeWolf(WANM_PUSH_LIGHT, var_f31, 0.0f, 24, daAlinkHIO_wlPush_c0::m.field_0xC);
        }

        field_0x3478 = 17.0f;
    } else {
        if (mProcVar0.field_0x3008 != 0) {
            setSingleAnimeBase(ANM_PUSH_START);
            var_f31 = 1.0f;
        } else {
            setSingleAnimeBaseSpeed(ANM_PUSH_LIGHT, var_f31, daAlinkHIO_pushpull_c0::m.field_0x1C);
        }

        field_0x3478 = 15.0f;
    }

    mUnderFrameCtrl[0].setRate(var_f31);
    field_0x3198 = 1;
    mProcVar4.field_0x3010 = param_1;
    mProcVar5.field_0x3012 = mProcVar0.field_0x3008;

    fopAc_ac_c* temp_r3 = dComIfG_Bgsp().GetActorPointer(mPolyInfo1);
    mProcVar3.field_0x300e = fopAcM_searchActorAngleY(temp_r3, this);
    field_0x347c = temp_r3->current.pos.absXZ(current.pos);
    dComIfGp_setPlayerStatus0(0, 0x04000000);
    return 1;
}

/* 800E89F0-800E8D1C 0E3330 032C+00 1/0 0/0 0/0 .text            procCoPushMove__9daAlink_cFv */
int daAlink_c::procCoPushMove() {
    daPy_frameCtrl_c* temp_r29 = &mUnderFrameCtrl[0];
    int var_r28 = 0x160;

    if (mProcVar4.field_0x3010 != 0) {
        if (temp_r29->checkPass(0.0f)) {
            return endPushPull();
        }

        if (temp_r29->checkPass(field_0x3478)) {
            if (!checkWolf()) {
                voiceStart(Z2SE_AL_V_PUSH_ROCK);
            }

            setPushPullKeepData(dBgW::PPLABEL_PUSH, 0);
        }
    } else {
        setWallGrabStatus(0x15, 2);

        if (temp_r29->checkPass(0.0f) || field_0x3198 != 0 || mProcVar5.field_0x3012 != 0) {
            if (!checkNoResetFlg0(FLG0_PUSH_PULL_KEEP)) {
                if (!wallGrabButton()) {
                    return endPushPull();
                }

                if (checkInputOnR()) {
                    int temp_r3 = getDirectionFromShapeAngle();
                    if (temp_r3 == DIR_FORWARD) {
                        setPushPullKeepData(dBgW::PPLABEL_PUSH, 0);
                        if (mProcVar0.field_0x3008 != 0) {
                            if (mProcVar5.field_0x3012 == 0) {
                                mProcVar5.field_0x3012 = 1;

                                if (checkWolf()) {
                                    setSingleAnimeWolf(WANM_PUSH_START, 1.0f, 12.0f, -1, 3.0f);
                                } else {
                                    setSingleAnime(ANM_PUSH_START, 1.0f, 12.0f, -1, 3.0f);
                                }

                                temp_r29->setRate(1.0f);
                            } else if (checkAnmEnd(temp_r29)) {
                                if (checkWolf()) {
                                    setSingleAnimeWolfBase(WANM_PUSH);
                                } else {
                                    setSingleAnimeBase(ANM_PUSH);
                                }

                                temp_r29->setRate(1.0f);
                            }
                        }
                    } else if (!checkWolf() && temp_r3 == DIR_BACKWARD) {
                        var_r28 = 0x39;
                    } else {
                        var_r28 = 0x143;
                    }
                } else {
                    setPushPullKeepData(dBgW::PPLABEL_NONE, 1);
                    var_r28 = 0x143;
                }
            } else {
                if (field_0x3198 != 0 && !checkWolf()) {
                    voiceStart(Z2SE_AL_V_PUSH_ROCK);
                }

                field_0x3198 = 0;
                if (mProcVar5.field_0x3012 != 0) {
                    mProcVar5.field_0x3012 = 0;
                    if (checkWolf()) {
                        setSingleAnimeWolfBase(WANM_PUSH);
                    } else {
                        setSingleAnimeBase(ANM_PUSH);
                    }
                }
                setPushPullKeepData(dBgW::PPLABEL_PUSH, 0);
            }
        } else {
            setPushPullKeepData(dBgW::PPLABEL_PUSH, 0);
        }
    }

    setFrontWallType();

    if (!checkResetFlg0(RFLG0_UNK_8)) {
        endPushPull();
    } else if (var_r28 == 0x39) {
        procPullMoveInit(1);
    } else if (var_r28 == 0x143) {
        procCoPushPullWaitInit(0);
    }

    return 1;
}

/* 800E8D1C-800E8F44 0E365C 0228+00 2/2 0/0 0/0 .text            procPullMoveInit__9daAlink_cFi */
int daAlink_c::procPullMoveInit(int param_0) {
    if (!setPushPullKeepData(dBgW::PPLABEL_NONE, param_0)) {
        return 0;
    }

    commonProcInit(PROC_PULL_MOVE);

    mProcVar0.field_0x3008 = checkPushPullTurnBlock();
    mProcVar5.field_0x3012 = mProcVar0.field_0x3008;

    f32 var_f31;
    if (mProcVar0.field_0x3008 != 0) {
        var_f31 = 1.0f;
        setSingleAnimeBase(ANM_PULL_START);
    } else {
        var_f31 = getPushPullAnimeSpeed();
        setSingleAnimeBaseSpeed(ANM_PULL_LIGHT, var_f31, daAlinkHIO_pushpull_c0::m.field_0x24);
    }

    mUnderFrameCtrl[0].setRate(var_f31);
    field_0x3198 = 1;

    fopAc_ac_c* temp_r3 = dComIfG_Bgsp().GetActorPointer(mPolyInfo1);
    mProcVar3.field_0x300e = fopAcM_searchActorAngleY(temp_r3, this);
    field_0x347c = temp_r3->current.pos.absXZ(current.pos);
    dComIfGp_setPlayerStatus0(0, 0x4000000);
    return 1;
}

/* 800E8F44-800E91B0 0E3884 026C+00 1/0 0/0 0/0 .text            procPullMove__9daAlink_cFv */
int daAlink_c::procPullMove() {
    setWallGrabStatus(0x15, 2);

    int temp_r28 = getDirectionFromShapeAngle();
    int var_r30 = 0x160;

    daPy_frameCtrl_c* temp_r29 = &mUnderFrameCtrl[0];

    if (temp_r29->checkPass(0.0f) || field_0x3198 != 0 || mProcVar5.field_0x3012 != 0) {
        if (!checkNoResetFlg0(FLG0_PUSH_PULL_KEEP)) {
            if (!wallGrabButton()) {
                return endPushPull();
            }

            if (checkInputOnR()) {
                if (temp_r28 == DIR_BACKWARD) {
                    if (checkPullBehindWall()) {
                        setPushPullKeepData(dBgW::PPLABEL_NONE, 1);
                        field_0x3198 = 1;
                    } else {
                        setPushPullKeepData(dBgW::PPLABEL_PULL, 0);

                        if (mProcVar0.field_0x3008 != 0) {
                            if (mProcVar5.field_0x3012 == 0) {
                                mProcVar5.field_0x3012 = 1;
                                setSingleAnime(ANM_PULL_START, 1.0f, 12.0f, -1, 3.0f);
                                temp_r29->setRate(1.0f);
                            } else if (checkAnmEnd(temp_r29)) {
                                setSingleAnimeBase(ANM_PULL);
                                temp_r29->setRate(1.0f);
                            }
                        }
                    }
                } else if (temp_r28 == DIR_FORWARD) {
                    var_r30 = 0x144;
                } else {
                    var_r30 = 0x143;
                }
            } else {
                setPushPullKeepData(dBgW::PPLABEL_NONE, 1);
                var_r30 = 0x143;
            }
        } else {
            if (field_0x3198 != 0) {
                voiceStart(Z2SE_AL_V_PUSH_ROCK);
                field_0x3198 = 0;
            }

            if (mProcVar5.field_0x3012 != 0) {
                mProcVar5.field_0x3012 = 0;
                setSingleAnimeBase((daAlink_c::daAlink_ANM) 0x3C);
            }

            setPushPullKeepData(dBgW::PPLABEL_PULL, 0);
        }
    } else {
        setPushPullKeepData(dBgW::PPLABEL_PULL, 0);
    }

    setFrontWallType();

    if (!checkResetFlg0(RFLG0_UNK_8)) {
        endPushPull();
    } else if (var_r30 == 0x143) {
        procCoPushPullWaitInit(0);
    } else if (var_r30 == 0x144) {
        procCoPushMoveInit(1, 0);
    }

    return 1;
}

/* 800E91B0-800E91C4 0E3AF0 0014+00 1/1 0/0 0/0 .text daAlink_searchGoat__FP10fopAc_ac_cPv */
static fopAc_ac_c* daAlink_searchGoat(fopAc_ac_c* i_actor, void*) {
    if (fopAcM_GetName(i_actor) == PROC_COW) {
        return i_actor;
    }

    return NULL;
}

/* 800E91C4-800E9210 0E3B04 004C+00 1/0 0/0 0/0 .text            cancelGoronThrowEvent__9daAlink_cFv
 */
void daAlink_c::cancelGoronThrowEvent() {
    if (mProcID == PROC_GOAT_CATCH && mProcVar5.field_0x3012 == 0) {
        mProcVar5.field_0x3012 = 1;
        dComIfGp_event_reset();
    }
}

/* 800E9210-800E9344 0E3B50 0134+00 2/2 0/0 0/0 .text
 * setGoatStopGameFail__9daAlink_cFP10fopAc_ac_c                */
void daAlink_c::setGoatStopGameFail(fopAc_ac_c* param_0) {
    s16 temp_r3 = fopAcM_GetName(param_0);
    if (temp_r3 == PROC_OBJ_GRA) {
        ((daObj_GrA_c*)param_0)->setCrazyDash();
    } else if (temp_r3 == PROC_COW) {
        ((daCow_c*)param_0)->setCrazyDash();
    } else {
        ((fopEn_enemy_c*)param_0)->setThrowModeDash();
    }

    if (checkMagneBootsOn()) {
        cancelMagneBootsOn();
        resetSpecialEvent();
        checkAutoJumpAction();
        return;
    }

    current.angle.y = shape_angle.y + 0x8000;

    if (checkGoatStopGame()) {
        onNoResetFlg0(FLG0_UNK_200000);
    } else {
        if (!checkBootsOrArmorHeavy() && temp_r3 == PROC_OBJ_GRA) {
            setDamagePointNormal(2);
        } else if (temp_r3 != PROC_COW) {
            setDamagePointNormal(1);
        }

        resetSpecialEvent();
    }

    procCoLargeDamageInit(-1, 1, 0, 0, NULL, 0);
}

/* 800E9344-800E9434 0E3C84 00F0+00 1/1 0/0 0/0 .text            procGoatMoveInit__9daAlink_cFv */
int daAlink_c::procGoatMoveInit() {
    if (!commonProcInitNotSameProc(PROC_GOAT_MOVE)) {
        return 0;
    }

    if (checkZeroSpeedF()) {
        onModeFlg(1);
    }

    mNormalSpeed = 0.0f;
    field_0x37c8 = current.pos;
    field_0x2f98 = 3;
    current.angle.y = shape_angle.y + -0x4000;
    field_0x594 = daAlinkHIO_atnMove_c0::m.mMaxSpeed;

    setSingleAnimeBase(ANM_ATN_COW);
    mProcVar2.field_0x300c = 0;

    fopAc_ac_c* goat_p = (fopAc_ac_c*)fopAcIt_Judge((fopAcIt_JudgeFunc)daAlink_searchGoat, NULL);
    if (goat_p != NULL) {
        field_0x280c.setData(goat_p);
    }

    mProcVar3.field_0x300e = 0;
    deleteEquipItem(FALSE, FALSE);
    return 1;
}

/* 800E9434-800E9894 0E3D74 0460+00 1/0 0/0 0/0 .text            procGoatMove__9daAlink_cFv */
int daAlink_c::procGoatMove() {
    if (mProcVar2.field_0x300c == 0) {
        if (checkAnmEnd(&mUnderFrameCtrl[0])) {
            setSingleAnimeBase(ANM_ATN_RIGHT);
            mProcVar2.field_0x300c = 1;
        }
        return 1;
    }

    fopAc_ac_c* temp_r3 = field_0x280c.getActor();

    if (temp_r3 == NULL) {
        offGoatStopGame();
        return procWaitInit();
    }

    cXyz sp14 = temp_r3->current.pos - current.pos;
    mDoMtx_stack_c::YrotS(-shape_angle.y);
    mDoMtx_stack_c::multVecSR(&sp14, &sp14);

    if (sp14.z < 700.0f) {
        if (sp14.z > 0.0f) {
            if (fabsf(sp14.x) < 70.0f) {
                if (doTrigger() || doButton()) {
                    mProcVar3.field_0x300e = 1;
                    ((daCow_c*)temp_r3)->setCrazyBeforeCatch();
                }

                if (sp14.z < 600.0f) {
                    setDoStatusEmphasys(0x15);
                }
            }
        } else if (sp14.z < -100.0f) {
            offGoatStopGame();
            return procWaitInit();
        }
    }

    if (!doButton()) {
        mProcVar3.field_0x300e = 0;
    }

    cXyz sp8 = current.pos - field_0x37c8;
    mDoMtx_stack_c::YrotS(-shape_angle.y);
    mDoMtx_stack_c::multVecSR(&sp8, &sp8);

    if (dComIfGp_getDoStatus() == 0x15 && mProcVar3.field_0x300e != 0) {
        if (sp14.z < 250.0f) {
            return procGoatCatchInit(temp_r3, sp8.x);
        }
    } else if (field_0x850[0].ChkCoHit() && field_0x850[0].GetCoHitAc() == temp_r3 && sp14.z > -50.0f) {
        setGoatStopGameFail(temp_r3);
        return 1;
    }

    f32 var_f31;
    int temp_r27 = abs(field_0x2fe2);
    if (checkInputOnR() && temp_r27 > 0x800 && temp_r27 < 0x7800 && (fabsf(sp8.x) < 250.0f || (sp8.x > 0.0f && field_0x2fe2 < 0) || (sp8.x < 0.0f && field_0x2fe2 > 0))) {
        if (abs((s16)(field_0x2fe2 - current.angle.y)) > 0x4000) {
            current.angle.y += 0x8000;
            mNormalSpeed *= -1.0f;

            if (field_0x2f98 == 3) {
                field_0x2f98 = 2;
            } else {
                field_0x2f98 = 3;
            }
        }

        if (field_0x33a8 > (0.3f * (1.0f - fabsf(mNormalSpeed / field_0x594)))) {
            var_f31 = daAlinkHIO_atnMove_c0::m.mAcceleration * field_0x33a8;
        } else {
            var_f31 = 0.0f;
        }
    } else {
        var_f31 = 0.0f;
    }

    setNormalSpeedF(var_f31, daAlinkHIO_atnMove_c0::m.mDeceleration);

    if (checkZeroSpeedF()) {
        onModeFlg(1);
        field_0x2f98 = 3;
        current.angle.y = shape_angle.y - 0x4000;

        if (!checkUnderMove0BckNoArc(ANM_ATN_RIGHT)) {
            setSingleAnimeBase(ANM_ATN_RIGHT);
        }
    } else {
        offModeFlg(1);

        if (!checkUnderMove0BckNoArc(ANM_COW_MOVE_LEFT_RIGHT)) {
            setSingleAnimeBase(ANM_COW_MOVE_LEFT_RIGHT);
        }

        daPy_frameCtrl_c* temp_r28 = &mUnderFrameCtrl[0];
        f32 var_f30;
        if (field_0x2f98 == 3) {
            var_f30 = -1.0f;
            temp_r28->setLoop(temp_r28->getEnd());
        } else {
            var_f30 = 1.0f;
            temp_r28->setLoop(temp_r28->getStart());
        }
    
        temp_r28->setRate(var_f30 * (mNormalSpeed / field_0x594));
        initBasAnime();
    }

    return 1;
}

/* 800E9894-800E9BD0 0E41D4 033C+00 3/3 0/0 0/0 .text procGoatCatchInit__9daAlink_cFP10fopAc_ac_cf
 */
int daAlink_c::procGoatCatchInit(fopAc_ac_c* param_0, f32 param_1) {
    s16 temp_r28 = cLib_targetAngleY(&current.pos, &param_0->current.pos);

    if (!checkGoatStopGame()) {
        cXyz sp18(current.pos.x, 100.0f + current.pos.y, current.pos.z);

        f32 var_f31 = 300.0f;
        if (param_0->speedF > 0.1f) {
            var_f31 += 300.0f;
        }

        cXyz spC(sp18.x - (var_f31 * cM_ssin(temp_r28)), sp18.y, sp18.z - (var_f31 * cM_scos(temp_r28)));
        if (fopAcM_lc_c::lineCheck(&sp18, &spC, param_0)) {
            setDoStatus(0);
            return 0;
        }
    
        deleteEquipItem(1, 0);

        if (!dComIfGp_event_compulsory(this, NULL, 0xFFEF)) {
            return 0;
        }
    
        mDemo.setSpecialDemoType();
        param_0->actor_status |= 0x800;
    }

    commonProcInit(PROC_GOAT_CATCH);
    field_0x280c.setData(param_0);
    mProcVar4.field_0x3010 = 0;

    if (!checkGoatStopGame()) {
        shape_angle.y = temp_r28;

        if (param_0->speedF < 0.1f) {
            mNormalSpeed = 0.1f;
            mProcVar4.field_0x3010 = 1;
        } else {
            mNormalSpeed = 30.0f;
        }
    } else {
        mNormalSpeed = 30.0f;
    }

    if (checkBootsOrArmorHeavy()) {
        mNormalSpeed *= 0.75f;
    }

    if (mProcVar4.field_0x3010 == 0) {
        voiceStart(Z2SE_AL_V_PUSH_ROCK);
        seStartOnlyReverb(Z2SE_AL_BODYATTACK);
    }

    current.angle.y = shape_angle.y + 0x8000;
    field_0x2f98 = 4;

    setSingleAnimeBase(ANM_COW_CATCH_START);

    s16 temp_r3 = fopAcM_GetName(param_0);
    if (temp_r3 == PROC_OBJ_GRA) {
        ((daObj_GrA_c*)param_0)->setCrazyCatch();
    } else if (temp_r3 == PROC_COW) {
        ((daCow_c*)param_0)->setCrazyCatch();
    } else {
        ((fopEn_enemy_c*)param_0)->setThrowModeCatch();
    }

    field_0x37c8 = current.pos;

    mProcVar0.field_0x3008 = 95;
    mProcVar1.field_0x300a = 0;
    mProcVar2.field_0x300c = 0;

    field_0x3198 = -7;
    setFootEffectProcType(1);
    field_0x2f9d = 0x60;
    field_0x3588.set(-l_halfAtnWaitBaseAnime.x, l_halfAtnWaitBaseAnime.y, -l_halfAtnWaitBaseAnime.z);

    if (param_1 >= 0.0f) {
        mProcVar3.field_0x300e = 3;
    } else {
        mProcVar3.field_0x300e = 2;
    }

    mProcVar5.field_0x3012 = 0;
    field_0x3478 = -1.0f;
    return 1;
}

/* 800E9BD0-800EA2A8 0E4510 06D8+00 1/0 0/0 0/0 .text            procGoatCatch__9daAlink_cFv */
int daAlink_c::procGoatCatch() {
    daPy_frameCtrl_c* temp_r28 = &mUnderFrameCtrl[0];
    fopAc_ac_c* temp_r3 = field_0x280c.getActor();

    s16 temp_r27 = fopAcM_GetName(temp_r3);
    s16 sp8;
    if (mProcVar2.field_0x300c == 0 || (mProcVar1.field_0x300a == 0 && temp_r28->getFrame() < 29.0f)) {
        sp8 = field_0x2ff0;
    } else {
        sp8 = 0;
    }

    cLib_addCalcAngleS(&shape_angle.x, sp8, 5, 0x2000, 0x400);

    if (temp_r3 == NULL) {
        if (!checkGoatStopGame()) {
            cancelGoronThrowEvent();
            endDemoMode();
        } else {
            offGoatStopGame();
        }

        return procWaitInit();
    }

    if (!mLinkAcch.ChkGroundHit() && mProcVar5.field_0x3012 == 0 && (!checkMagneBootsOn() || !checkNoResetFlg0(FLG0_UNK_2000))) {
        setGoatStopGameFail(temp_r3);
        return 1;
    }

    if (mProcVar2.field_0x300c != 0) {
        if (mProcVar1.field_0x300a == 0) {
            field_0x2f99 = 5;
            onEndResetFlg0(ERFLG0_UNK_8000000);

            if (temp_r28->getFrame() >= 81.0f) {
                field_0x2f92 = 1;
                field_0x2f93 = 6;
            } else if (temp_r28->getFrame() >= 39.0f) {
                onModeFlg(0x100);
            } else if (temp_r28->getFrame() >= 32.0f) {
                field_0x2f92 = 0xFE;
                field_0x2f93 = 0xFE;
                field_0x3478 = 1.0f;
            }

            if (checkAnmEnd(temp_r28)) {
                if (mProcVar5.field_0x3012 == 0) {
                    setOldRootQuaternion(0, -0x8000, 0);
                    shape_angle.y += 0x8000;
                    current.angle.y = shape_angle.y;
                    field_0x2fe4 = shape_angle.y;
                }

                if (temp_r27 == PROC_OBJ_GRA) {
                    field_0x2f99 = 0x30;
                    setSingleAnimeBaseSpeed(ANM_WAIT_B, daAlinkHIO_move_c0::m.mWaitAnmSpeed, 3.0f);
                    offModeFlg(0x8000);
                    mProcVar1.field_0x300a = 0x1E;
                    return 1;
                }

                if (!checkGoatStopGame()) {
                    cancelGoronThrowEvent();
                    endDemoMode();
                } else {
                    offGoatStopGame();
                    if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[565])) {
                        dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[587]);
                    } else {
                        dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[178]);
                    }
                }

                return procWaitInit();
            }
        } else {
            mProcVar1.field_0x300a--;
            if (mProcVar1.field_0x300a == 0) {
                onEndResetFlg0(ERFLG0_UNK_8000000);
                cancelGoronThrowEvent();
                endDemoMode();
                return procWaitInit();
            }
        }

        return 1;
    }

    if (!doButton() || (!mLinkAcch.ChkGroundHit() && (!checkMagneBootsOn() || !checkNoResetFlg0(FLG0_UNK_2000))) || field_0x3198 > 0 && mNormalSpeed >= 30.0f) {

        if (checkMagneBootsOn()) {
            cancelMagneBootsOn();
        }
        setGoatStopGameFail(temp_r3);
        return 1;
    }

    setDoStatusEmphasys(0x15);

    int temp_r25 = getDirectionFromShapeAngle();
    if (mNormalSpeed > 1.0f) {
        f32 temp_f30 = temp_r28->getFrame();
        if (checkAnmEnd(temp_r28)) {
            setSingleAnimeBase(ANM_COW_CATCH);
        }
    
        field_0x2f9d = 0x60;
    
        if (field_0x3198 > 0) {
            field_0x3198 += 1;
            cLib_chaseF(&mNormalSpeed, 30.0f, 1.0f);
        } else {
            f32 var_f31 = 1.0f;
            if ((temp_r27 == PROC_OBJ_GRA || temp_r27 == PROC_E_GOB) && !checkBootsOrArmorHeavy()) {
                field_0x3198++;
            } else if (checkInputOnR() && temp_r25 == DIR_FORWARD) {
                var_f31 += 1.0f;
            }

            if (checkBootsOrArmorHeavy()) {
                var_f31 += 0.5f;
            }

            cLib_chaseF(&mNormalSpeed, 0.0f, var_f31);

            if (mNormalSpeed < 0.1f) {
                mNormalSpeed = 0.1f;
            }
        }

        if (!checkUnderMove0BckNoArc(ANM_COW_CATCH)) {
            setSingleAnimeBase(ANM_COW_CATCH);
            temp_r28->setFrame(temp_f30);
            getNowAnmPackUnder(UNDER_0)->setFrame(temp_f30);
        }

        seStartOnlyReverbLevel(Z2SE_FN_LINK_SLIP);
    } else {
        if (mNormalSpeed > 0.0f) {
            mNormalSpeed = 0.0f;
            setSingleAnimeBase(ANM_COW_PRESS);
            voiceStart(Z2SE_AL_V_LIFTUP_L);
        } else if (checkAnmEnd(temp_r28) && checkGoatStopGame()) {
            dComIfGs_onTmpBit(dSv_event_tmp_flag_c::tempBitLabels[35]);
        }

        field_0x2f99 = 4;

        if (checkAnmEnd(temp_r28)) {
            if (temp_r27 == PROC_E_GOB && !checkBootsOrArmorHeavy()) {
                setGoatStopGameFail(temp_r3);
                return 1;
            }

            if (checkInputOnR() && (temp_r25 == DIR_LEFT || temp_r25 == DIR_RIGHT)) {
                mProcVar3.field_0x300e = temp_r25;
            }

            daAlink_ANM var_r26;
            if (mProcVar3.field_0x300e == 2) {
                if (temp_r27 == PROC_OBJ_GRA) {
                    ((daObj_GrA_c*)temp_r3)->setCrazyThrowLeft();
                } else if (temp_r27 == PROC_COW) {
                    ((daCow_c*)temp_r3)->setCrazyThrowLeft();
                } else {
                    ((fopEn_enemy_c*)temp_r3)->setThrowModeThrowLeft();
                }
                var_r26 = ANM_COW_THROW_LEFT;
            } else {
                if (temp_r27 == PROC_OBJ_GRA) {
                    ((daObj_GrA_c*)temp_r3)->setCrazyThrowRight();
                } else if (temp_r27 == PROC_COW) {
                    ((daCow_c*)temp_r3)->setCrazyThrowRight();
                } else {
                    ((fopEn_enemy_c*)temp_r3)->setThrowModeThrowRight();
                }
                var_r26 = ANM_COW_THROW_RIGHT;
            }

            mProcVar2.field_0x300c = 1;
            setSingleAnimeBase(var_r26);
            field_0x2f99 = 0xC;
            voiceStart(Z2SE_AL_V_THROW_GORON);
        }
    }

    return 1;
}

/* 800EA2A8-800EA3AC 0E4BE8 0104+00 2/2 0/0 0/0 .text            procGoatStrokeInit__9daAlink_cFv */
int daAlink_c::procGoatStrokeInit() {
    if (mEquipItem != fpcNm_ITEM_NONE) {
        return procPreActionUnequipInit(PROC_GOAT_STROKE, field_0x27f4);
    }

    commonProcInit(PROC_GOAT_STROKE);
    field_0x280c.setData(field_0x27f4);
    setSingleAnimeBase(ANM_COW_STROKE);

    static_cast<daCow_c*>(field_0x280c.getActor())->setNaderu();
    mNormalSpeed = 0.0f;

    if ((s16)(fopAcM_searchActorAngleY(field_0x27f4, this) - field_0x27f4->shape_angle.y) > 0) {
        shape_angle.y = field_0x27f4->shape_angle.y - 0x4000;
    } else {
        shape_angle.y = field_0x27f4->shape_angle.y + 0x4000;
    }

    current.pos.x = field_0x27f4->current.pos.x - cM_ssin(shape_angle.y) * 100.0f;
    current.pos.z = field_0x27f4->current.pos.z - cM_scos(shape_angle.y) * 100.0f;
    return 1;
}


/* 800EA3AC-800EA3F4 0E4CEC 0048+00 1/0 0/0 0/0 .text            procGoatStroke__9daAlink_cFv */
int daAlink_c::procGoatStroke() {
    if (mUnderFrameCtrl[0].checkAnmEnd()) {
        checkNextAction(0);
    }

    return 1;
}

/* 800EA3F4-800EA4CC 0E4D34 00D8+00 2/2 0/0 0/0 .text            procGoronMoveInit__9daAlink_cFv */
int daAlink_c::procGoronMoveInit() {
    if (mEquipItem != fpcNm_ITEM_NONE) {
        return procPreActionUnequipInit(PROC_GORON_MOVE, NULL);
    }

    if (!commonProcInitNotSameProc(PROC_GORON_MOVE)) {
        return 0;
    }

    mCargoCarryAcKeep.setActor();

    if (mCargoCarryAcKeep.getActor() == NULL) {
        offGoronSideMove();
        return 0;
    }

    mNormalSpeed = 0.0f;
    field_0x2f98 = 3;
    current.angle.y = shape_angle.y + -0x4000;
    field_0x594 = daAlinkHIO_atnMove_c0::m.mMaxSpeed;
    setSingleAnimeBase(ANM_ATN_RIGHT);
    mProcVar2.field_0x300c = 1;
    mProcVar3.field_0x300e = 0;
    return 1;
}

/* 800EA4CC-800EA844 0E4E0C 0378+00 1/0 0/0 0/0 .text            procGoronMove__9daAlink_cFv */
int daAlink_c::procGoronMove() {
    mCargoCarryAcKeep.setActor();

    if (!mCargoCarryAcKeep.getActor() || !checkGoronSideMove()) {
        offGoronSideMove();
        return checkNextAction(0);
    }

    setShapeAngleToAtnActor(0);

    if (field_0x2f98 == 3) {
        current.angle.y = shape_angle.y - 0x4000;
    } else {
        current.angle.y = shape_angle.y + 0x4000;
    }

    if (checkSetItemTrigger(fpcNm_ITEM_HVY_BOOTS)) {
        return procBootsEquipInit();
    }

    int temp_r28 = cLib_distanceAngleS(field_0x2fe2, shape_angle.y);

    if (mAttention->getActionBtnB() != NULL && mAttention->getActionBtnB()->mType == 4) {
        setDoStatus(0x91);

        if (doTrigger()) {
            mProcVar3.field_0x300e = 1;
        } else if (!doButton()) {
            mProcVar3.field_0x300e = 0;
        }
        if (mProcVar3.field_0x300e != 0) {
            if (field_0x27f4->current.pos.abs2XZ(current.pos) < getGoatCatchDistance2()) {
                offGoronSideMove();
                return procGoatCatchInit(field_0x27f4, 0.0f);
            }
        }
    } else {
        mProcVar3.field_0x300e = 0;
    }

    f32 var_f31;
    if (checkInputOnR() && temp_r28 > 0x800 && temp_r28 < 0x7800) {
        if (abs((s16)(field_0x2fe2 - current.angle.y)) > 0x4000) {
            current.angle.y += 0x8000;
            mNormalSpeed *= -1.0f;

            if (field_0x2f98 == 3) {
                field_0x2f98 = 2;
            } else {
                field_0x2f98 = 3;
            }
        }

        if (field_0x33a8 > (0.3f * (1.0f - fabsf(mNormalSpeed / field_0x594)))) {
            var_f31 = daAlinkHIO_atnMove_c0::m.mAcceleration * field_0x33a8;
        } else {
            var_f31 = 0.0f;
        }
    } else {
        var_f31 = 0.0f;
    }

    setNormalSpeedF(var_f31, daAlinkHIO_atnMove_c0::m.mDeceleration);

    if (checkZeroSpeedF()) {
        onModeFlg(1);
        field_0x2f98 = 3;
        current.angle.y = shape_angle.y - 0x4000;

        if (!checkUnderMove0BckNoArc(ANM_ATN_RIGHT)) {
            setSingleAnimeBase(ANM_ATN_RIGHT);
        }
    } else {
        offModeFlg(1);
        if (!checkUnderMove0BckNoArc(ANM_COW_MOVE_LEFT_RIGHT)) {
            setSingleAnimeBase(ANM_COW_MOVE_LEFT_RIGHT);
        }

        daPy_frameCtrl_c* temp_r29 = &mUnderFrameCtrl[0];
        f32 var_f30;
        if (field_0x2f98 == 3) {
            var_f30 = -1.0f;
            temp_r29->setLoop(temp_r29->getEnd());
        } else {
            var_f30 = 1.0f;
            temp_r29->setLoop(temp_r29->getStart());
        }

        temp_r29->setRate(var_f30 * (mNormalSpeed / field_0x594));
        initBasAnime();
    }

    return 1;
}
