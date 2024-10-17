/* 80B7F8C4-80B7FD10 0074A4 044C+00 3/0 0/0 0/0 .text            wait__11daNpc_zrA_cFPv */
BOOL daNpc_zrA_c::wait(void* param_0) {
    switch (mMode) {
    case 0:
        if (field_0x1510 == 0) {
            if (mPath.getPathInfo() == NULL) {
                if (mAcch.ChkWaterIn()) {
                    gravity = 0.0f;
                    speed.setall(0.0f);
                    speedF = 0.0f;
                } else {
                    switch (mActionType) {
                    case ACT_TYPE_1:
                        setExpression(EXPR_SADSIT_A, -1.0f);
                        setMotion(MOT_SADSIT_A, -1.0f, false);
                        break;
                    case ACT_TYPE_2:
                        setExpression(EXPR_SADSIT_B, -1.0f);
                        setMotion(MOT_SADSIT_B, -1.0f, false);
                        break;
                    case ACT_TYPE_3:
                        setExpression(EXPR_SADSIT_C, -1.0f);
                        setMotion(MOT_SADSIT_C, -1.0f, false);
                        break;
                    case ACT_TYPE_4:
                        setExpression(EXPR_SADSIT_D, -1.0f);
                        setMotion(MOT_SADSIT_D, -1.0f, false);
                        break;
                    case ACT_TYPE_5:
                        setExpression(EXPR_SADSIT_E, -1.0f);
                        setMotion(MOT_SADSIT_E, -1.0f, false);
                        break;
                    default:
                        setExpression(EXPR_NONE, -1.0f);
                        setMotion(MOT_WAIT_A, -1.0f, false);
                        break;
                    }
                }
            } else {
                setExpression(EXPR_NONE, -1.0f);
                setMotion(MOT_WALK_A, -1.0f, false);
                field_0x1510 = 1;
            }
        } else {
            setMotion(MOT_WALK_A, -1.0f, false);
        }
        setLookMode(LOOK_NONE);
        mAttnChangeTimer = 0;
        mTurnMode = 0;
        mMode = 2;
        // fallthrough

    case 2:
        if (field_0x1510 != 0) {
            walkCalc();
        } else {
            waitCalc();
        }

        if (mDamageTimer == 0 && !mTwilight) {
            BOOL player_attn = mActorMngr[0].getActorP() != NULL;
            if (chkFindPlayer2(player_attn, shape_angle.y)) {
                if (!player_attn) {
                    mActorMngr[0].entry(daPy_getPlayerActorClass());
                    mTurnMode = 0;
                }
            } else {
                if (player_attn) {
                    mActorMngr[0].remove();
                    mTurnMode = 0;
                }
            }

            if (mActorMngr[0].getActorP() != NULL) {
                setLookMode(LOOK_PLAYER);
            } else {
                setLookMode(LOOK_NONE);
                if (field_0x1510 == 0 && home.angle.y != mCurAngle.y) {
                    if (mAcch.ChkWaterIn()) {
                        if (step(home.angle.y, -1, -1, 15)) {
                            mMode = 0;
                        }
                    } else {
                        if (step(home.angle.y, EXPR_NONE, MOT_STEP, 15)) {
                            mMode = 0;
                        }
                    }
                }
            }
        }
        break;

    case 3:
        speedF = 0.0f;
        break;
    }

    return true;
}

/* 80B7FD10-80B7FE18 0078F0 0108+00 1/1 0/0 0/0 .text            walkCalc__11daNpc_zrA_cFv */
void daNpc_zrA_c::walkCalc() {
    field_0x1550 = false;
    cXyz next_pnt;
    if (mPath.getDstPosDstXZ(current.pos, next_pnt)) {
        mPath.reverse();
        mPath.getDstPosDstXZ(current.pos, next_pnt);
    }
    s16 target_angle = cLib_targetAngleY(&current.pos, &next_pnt);
    speedF = daNpc_zrA_Param_c::m.mWalkSpeed;
    mpMorf->setPlaySpeed(daNpc_zrA_Param_c::m.mWalkSpeed / daNpc_zrA_Param_c::m.mWalkAnmRate);
    cLib_addCalcAngleS2(&current.angle.y, target_angle,
                        daNpc_zrA_Param_c::m.mWalkAngleScale, daNpc_zrA_Param_c::m.mWalkAngleSpeed);
    mCurAngle = current.angle;
    shape_angle = mCurAngle;
    mOldAngle.y = mCurAngle.y;
}

/* 80B7FE18-80B800A4 0079F8 028C+00 1/1 0/0 0/0 .text            waitCalc__11daNpc_zrA_cFv */
void daNpc_zrA_c::waitCalc() {
    if (mAcch.ChkWaterIn()) {
        if (mMotion != MOT_WAIT_SWIM) {
            setExpression(EXPR_NONE, -1.0f);
            setMotion(MOT_WAIT_SWIM, -1.0f, false);
            gravity = 0.0f;
            speed.setall(0.0f);
            speedF = 0.0f;
        }
        field_0x1550 = true;
        calcModulation();
    } else {
        field_0x1550 = false;
        if (mMotion == MOT_WAIT_SWIM) {
            switch (mActionType) {
            case ACT_TYPE_1:
                setExpression(EXPR_SADSIT_A, -1.0f);
                setMotion(MOT_SADSIT_A, -1.0f, false);
                break;
            case ACT_TYPE_2:
                setExpression(EXPR_SADSIT_B, -1.0f);
                setMotion(MOT_SADSIT_B, -1.0f, false);
                break;
            case ACT_TYPE_3:
                setExpression(EXPR_SADSIT_C, -1.0f);
                setMotion(MOT_SADSIT_C, -1.0f, false);
                break;
            case ACT_TYPE_4:
                setExpression(EXPR_SADSIT_D, -1.0f);
                setMotion(MOT_SADSIT_D, -1.0f, false);
                break;
            case ACT_TYPE_5:
                setExpression(EXPR_SADSIT_E, -1.0f);
                setMotion(MOT_SADSIT_E, -1.0f, false);
                break;
            default:
                setExpression(EXPR_NONE, -1.0f);
                setMotion(MOT_WAIT_A, -1.0f, false);
            }
        }
    }
}

/* 80B800A4-80B80228 007C84 0184+00 1/0 0/0 0/0 .text            waitSpa__11daNpc_zrA_cFPv */
BOOL daNpc_zrA_c::waitSpa(void* param_0) {
    switch (mMode) {
    case 0:
        switch (mActionType) {
        case ACT_TYPE_2:
            setExpression(EXPR_SPA_WAIT_A, -1.0f);
            setMotion(MOT_SPA_WAIT_A, -1.0f, false);
            field_0x9ea = true;
            break;
        case ACT_TYPE_3:
            setExpression(EXPR_SPA_WAIT_B, -1.0f);
            setMotion(MOT_SPA_WAIT_B, -1.0f, false);
            field_0x9ea = true;
            break;
        default:
            setExpression(EXPR_LOOKUP_2, -1.0f);
            setMotion(MOT_LOOKUP, -1.0f, false);
            field_0x9ea = true;
            break;
        }

        setLookMode(LOOK_NONE);
        mAttnChangeTimer = 0;
        mTurnMode = 0;
        mMode = 2;
        break;

    case 2:
        break;

    case 3:
        speedF = 0.0f;
        break;
    }

    return true;
}

/* 80B80228-80B80418 007E08 01F0+00 1/0 0/0 0/0 .text            waitLake__11daNpc_zrA_cFPv */
BOOL daNpc_zrA_c::waitLake(void* param_0) {
    switch (mMode) {
    case 0:
        setExpression(EXPR_LOOKING_SP_2, -1.0f);
        setMotion(MOT_LOOKING_SP, -1.0f, false);
        setLookMode(LOOK_NONE);
        mTurnMode = 0;
        mMode = 2;
        // fallthrough

    case 2:
        if (mDamageTimer == 0 && !mTwilight) {
            if (mActorMngr[0].getActorP() != NULL) {
                if (!chkFindPlayer()) {
                    mTurnMode = 0;
                }
            } else {
                if (chkFindPlayer()) {
                    mTurnMode = 0;
                }
            }

            if (mActorMngr[0].getActorP() != NULL) {
                setLookMode(LOOK_PLAYER);
                setExpression(EXPR_NONE, -1.0f);
                setMotion(MOT_WAIT_A, -1.0f, false);
            } else {
                setLookMode(LOOK_NONE);
                if (home.angle.y != mCurAngle.y) {
                    if (step(home.angle.y, EXPR_NONE, MOT_STEP, 15)) {
                        mMode = 0;
                    }
                } else {
                    setExpression(EXPR_LOOKING_SP_2, -1.0f);
                    setMotion(MOT_LOOKING_SP, -1.0f, false);
                }
            }
        }

    case 3:
        break;
    }

    return true;
}

/* 80B80418-80B8064C 007FF8 0234+00 3/0 0/0 0/0 .text            talk__11daNpc_zrA_cFPv */
BOOL daNpc_zrA_c::talk(void* param_0) {
    BOOL ret = false;
    BOOL bvar2 = false;

    switch (mMode) {
    case 0:
        if (mDamageTimer != 0) {
            break;
        }

        initTalk(mFlowID, NULL);
        mTurnMode = 0;
        mMode = 2;
        // fallthrough

    case 2:
        if (mType != TYPE_SPA) {
            calcModulation();
        }

        if (field_0x9ea || mTwilight) {
            bvar2 = true;
        } else {
            setLookMode(LOOK_PLAYER_TALK);
            mActorMngr[0].entry(daPy_getPlayerActorClass());
            if (mCurAngle.y == fopAcM_searchPlayerAngleY(this)) {
                bvar2 = true;
            } else if (mAcch.ChkWaterIn()) {
                if (step(fopAcM_searchPlayerAngleY(this), -1, -1, 15)) {
                    mTurnMode = 0;
                }
            } else {
                if (step(fopAcM_searchPlayerAngleY(this), EXPR_NONE, MOT_STEP, 15)) {
                    setMotion(MOT_WAIT_A, -1.0f, false);
                    mTurnMode = 0;
                }
            }
        }

        if (bvar2 && talkProc(NULL, true, NULL)) {
            ret = true;
        }

        if (ret) {
            mMode = 3;
            if (!field_0x9ec) {
                dComIfGp_event_reset();
                setAction(&wait);
            }
            field_0x9ec = false;
        }
        break;

    case 3:
        mFlowID = home.angle.x;
        break;
    }

    return ret;
}

/* 80B8064C-80B806FC 00822C 00B0+00 1/1 0/0 0/0 .text            s_subMulti__FPvPv */
static void* s_subMulti(void* i_proc, void* i_this) {
    if (fopAc_IsActor(i_proc) && fopAcM_GetName(i_proc) == PROC_NPC_ZRA) {
        daNpc_zrA_c* _this = static_cast<daNpc_zrA_c*>(i_this);
        daNpc_zrA_c* other = static_cast<daNpc_zrA_c*>(i_proc);
        if (other != _this && other->getType() == daNpc_zrA_c::TYPE_WAIT
            && other->getMultiModeFromParam() != 0
            && other->getMultiModeFromParam() == _this->getMultiModeFromParam()
            && other->getMultiNoFromParam() == 2)
        {
            return other;
        }
    }
    return NULL;
}

/* 80B806FC-80B80860 0082DC 0164+00 1/0 0/0 0/0 .text            ECut_talkMulti__11daNpc_zrA_cFi */
BOOL daNpc_zrA_c::ECut_talkMulti(int i_staffID) {
    dEvent_manager_c& event_manager = dComIfGp_getEventManager();
    BOOL ret = false;
    int prm = -1;
    
    fopAc_ac_c* actors[2] = {NULL, NULL};
    actors[0] = this;
    actors[1] = mActorMngr[2].getActorP();
    
    int* prm_p = dComIfGp_evmng_getMyIntegerP(i_staffID, "prm");
    if (prm_p != NULL) {
        prm = *prm_p;
    }

    if (event_manager.getIsAddvance(i_staffID)) {
        switch (prm) {
        case 0:
            mActorMngr[2].remove();
            break;
        case 10:
            initTalk(mFlowID, actors);
            break;
        }
    }

    switch (prm) {
    case 0:
        if (mActorMngr[2].getActorP() == NULL) {
            fopAc_ac_c* other = (fopAc_ac_c*)(fpcM_Search(s_subMulti, this));
            if (other != NULL) {
                mActorMngr[2].entry(other);
                ret = true;
            }
        } else {
            ret = true;
        }
        break;

    case 10:
        if (talkProc(NULL, false, actors)) {
            ret = true;
        }
        break;

    default:
        ret = true;
        break;
    }

    return ret;
}

/* 80B80860-80B80A94 008440 0234+00 2/0 0/0 0/0 .text            swim__11daNpc_zrA_cFPv */
BOOL daNpc_zrA_c::swim(void* param_0) {
    switch (mMode) {
    case 0:
        mAcch.SetGrndNone();
        mAcch.SetWallNone();
        gravity = 0.0f;
        speed.setall(0.0f);
        speedF = 0.0f;
        field_0x153d = false;
        setExpression(EXPR_NONE, -1.0f);

        if (mSwimMode == SWIM_WAIT) {
            if (mPath.getPathInfo() == NULL) {
                setMotion(MOT_WAIT_SWIM, -1.0f, false);
                field_0x1550 = true;
            } else {
                if (mActionType == ACT_TYPE_0) {
                    setMotion(MOT_SWIM_B, -1.0f, false);
                } else {
                    setMotion(MOT_SWIM_A, -1.0f, false);
                }

                mCheckSwimTurnTimer = cLib_getRndValue(3, 3);
                mSpinTimer = (int)(cM_rnd() * 60.0f) + 90;
                mSwimMode = SWIM_RAIL;
                field_0x1521 = true;
                mScaleFactor = daNpc_zrA_Param_c::m.mMaxScaleFactor;
                mCcStts.SetWeight(0);
            }
        } else {
            mSwimMode = SWIM_RAIL;
        }

        setLookMode(LOOK_NONE);
        mAttnChangeTimer = 0;
        mTurnMode = 0;
        mMode = 2;
        field_0x153e = false;
        mSwimAngleCalc = current.angle;
        if (mSwimMode != SWIM_WAIT) {
            calcWaistAngleInit();
        }
        // fallthrough

    case 2:
        switch (mSwimMode) {
        case SWIM_WAIT:
            waitSwim();
            break;
        case SWIM_RAIL:
            railSwim();
            break;
        case SWIM_TURN:
            turnSwim();
            break;
        }
        break;

    case 3:
        break;
    }

    return true;
}

/* 80B80A94-80B81788 008674 0CF4+00 1/1 0/0 0/0 .text            railSwim__11daNpc_zrA_cFv */
BOOL daNpc_zrA_c::railSwim() {
    s16 ang_step = daNpc_zrA_Param_c::m.mSwimAngleSpeed;
    s16 ang_scale = 8;
    f32 fvar15 = 0.1f;
    f32 fvar2 = 1.0f;
    f32 fvar3 = mSwimSpeedScale;
    f32 water_height = mAcch.m_wtr.GetHeight();
    gravity = 0.0f;
    cXyz vec0, swim_speed, vec1, vec2;
    csXyz angle;

    if (field_0x153c) {
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
        mDoMtx_stack_c::scaleM(scale);
        mDoMtx_stack_c::multVecZero(&vec1);
        mPath.getDstPosDst2(current.pos, vec2);

        if (field_0x153e) {
            if (mpMorf->getFrame() > 13.0f && mpMorf->getFrame() < 21.0f) {
                f32 play_speed = mpMorf->getPlaySpeed();
                cLib_addCalc2(&play_speed, 0.3f, 0.7f, 0.3f);
                mpMorf->setPlaySpeed(play_speed);
            }

            calcBank(ang_step, 8, current.angle.y, current.angle.z);
            mSwimSpeed.y -= 2.2f;
            current.pos += mSwimSpeed;

            if (current.angle.x < 0x2800) {
                current.angle.x = -cM_atan2s(mSwimSpeed.y, mSwimSpeed.absXZ());
            }

            mCurAngle = current.angle;
            shape_angle = mCurAngle;

            if (mIsAboveWater && vec1.y + mSwimSpeed.y <= water_height) {
                cXyz water_pos = vec1;
                water_pos.y = water_height;
                fopKyM_createWpillar(&water_pos, 2.5f, 0);
                mIsAboveWater = false;
                mCreatureSound.startCreatureSound(Z2SE_ZRA_DIVE_SPLASH, 0, -1);
            }

            if (current.pos.y <= water_height - daNpc_zrA_Param_c::m.mMinDepth) {
                field_0x153e = false;
                field_0x153c = false;
                mSwimSpeedScale = 1.0f;
                mSwimSpeedF = mSwimSpeed.absXZ();
                mpMorf->setPlaySpeed(1.0f);
            }

            return true;
        }

        angle.x = -0x3000;
        angle.y = current.angle.y;
        angle.z = current.angle.z;
        mSpinTimer = 90;

        if (!(vec1.y < water_height)) {
            if (!mIsAboveWater) {
                cXyz pos = vec1;
                pos.y = water_height;
                fopKyM_createWpillar(&pos, 2.5f, 0);
                mIsAboveWater = true;
                mCreatureSound.startCreatureSound(Z2SE_ZRA_DIVE_SPLASH_OUT, 0, -1);
            } else {
                if (mpMorf->getFrame() > 13.0f && mpMorf->getFrame() < 17.0f) {
                    f32 play_speed = mpMorf->getPlaySpeed();
                    cLib_addCalc2(&play_speed, 0.3f, 0.7f, 0.5f);
                    mpMorf->setPlaySpeed(play_speed);
                }

                if (current.pos.y > water_height && current.angle.x < -0x2000
                    && mSwimSpeedF > 20.0f)
                {
                    swim_speed.set(0.0f, 0.0f, mSwimSpeedF);
                    calcSwimPos(swim_speed);
                    mSwimSpeed = swim_speed;
                    field_0x153e = true;
                    calcBank(ang_step, 8, angle.y, angle.z);
                    current.angle.z = angle.z;
                    mCurAngle = current.angle;
                    shape_angle = mCurAngle;
                    return true;
                }
            }
        }
    } else {
        BOOL ivar9 = mPath.getDstPosDst2(current.pos, vec0);
        angle.x = cLib_targetAngleX(&vec0, &current.pos);
        angle.y = cLib_targetAngleY(&current.pos, &vec0);
        angle.z = current.angle.z;
        evasionCalc(vec0, angle);

        if (ivar9) {
            cXyz next_pos;
            mPath.getNextPos(next_pos);
            s16 ang_x = cLib_targetAngleX(&next_pos, &vec0);
            s16 ang_y = cLib_targetAngleY(&vec0, &next_pos);
            u32 arg0 = mPath.getArg0(mPath.getIdx());
            if (((arg0 == 0 && cM_rnd() < 0.5f) || (u8)arg0 == 1) && mSpinTimer != 0) {
                mSwimSpeedScale = 1.5f;
                fvar3 = mSwimSpeedScale;
                mSpinTimer = 90;
                field_0x153d = true;
            } else if (field_0x153d) {
                field_0x153d = false;
                field_0x153c = true;
                angle.x = -0x3000;
                angle.y = current.angle.y;
                mCheckSwimTurn = false;
            } else if ((abs(angle.x - ang_x) > 0x4000 || abs(angle.x - ang_y) > 0x4000)
                                && cM_rnd() < 0.2f && mSpinTimer != 0) {
                field_0x153c = false;
                mSwimFastTurnTimer = 60;
                mSwimSpeedScale = 1.2f;
                fvar3 = mSwimSpeedScale;
                mSpinTimer = 90;
            } else {
                field_0x153c = false;
                cLib_calcTimer(&mCheckSwimTurnTimer);
            }
        }

        if (turnSwimCheck()) {
            return true;
        }
    }

    if (cLib_calcTimer(&mSwimFastTurnTimer) != 0) {
        ang_scale = 4;
        ang_step *= 2;
    }

    s16 ang_diff_x = angle.x - current.angle.x;
    s16 ang_diff_y = angle.y - current.angle.y;
    bool bvar6 = false;
    if (mActionType != ACT_TYPE_0 && mSpinAngle == 0 && !field_0x153c && !field_0x153d
        && (abs(ang_diff_x) > 0x3000 || abs(ang_diff_y) > 0x3000) && mSwimSpeedF > 14.0f)
    {
        f32 frame = mpMorf->getFrame();
        if ((angle.z <= 0x2000 || ang_diff_y >= 0) && (angle.z >= -0x2000 || ang_diff_y <= 0)) {
            if (ang_diff_x < -0x3000) {
                if (frame >= 2.0f && frame <= 4.0f) {
                    bvar6 = true;
                }
            } else {
                if (frame >= 16.0f && frame <= 18.0f) {
                    bvar6 = true;
                }
            }
        }

        if (bvar6) {
            calcSwimAngle(angle, mSwimAngleCalc, ang_scale / 2, ang_step);
        } else {
            calcSwimAngle(angle, mSwimAngleCalc, ang_scale, ang_step / 2);
        }
    } else {
        calcSwimAngle(angle, mSwimAngleCalc, ang_scale, ang_step);
    }

    if (mSwimSpeedF > fvar3 * daNpc_zrA_Param_c::m.mSwimSpeed) {
        fvar15 *= 2.0f;
        fvar2 *= 0.5f;
    }
    cLib_addCalc2(&mSwimSpeedF, fvar3 * daNpc_zrA_Param_c::m.mSwimSpeed, fvar15, fvar2);

    if (field_0x153c == true && mIsAboveWater == true) {
        if (mpMorf->getFrame() > 13.0f && mpMorf->getFrame() < 21.0f) {
            f32 play_speed = mpMorf->getPlaySpeed();
            cLib_addCalc2(&play_speed, 0.3f, 0.7f, 0.3f);
            mpMorf->setPlaySpeed(play_speed);
        }
    } else if (!bvar6) {
        f32 play_speed = mpMorf->getPlaySpeed();
        cLib_addCalc2(&play_speed, mSwimSpeedF / daNpc_zrA_Param_c::m.mSwimAnmRate, 0.2f, 0.1f);
        mpMorf->setPlaySpeed(play_speed);
    }

    swim_speed.set(0.0f, 0.0f, mSwimSpeedF);
    calcSwimPos(swim_speed);

    if (!field_0x153c && mAcch.ChkWaterHit()
        && current.pos.y > water_height - daNpc_zrA_Param_c::m.mMinDepth)
    {
        current.pos.y = water_height - daNpc_zrA_Param_c::m.mMinDepth;
    }

    if (cLib_calcTimer(&mSpinTimer) == 0) {
        if (mSpinAngle != 0) {
            cLib_addCalcAngleS2(&field_0x1518, ang_step, 8, 0x200);
            if (mSpinAngle > 0) {
                angle.z += ang_step;
                mSpinAngle += ang_step;
            } else {
                angle.z -= ang_step;
                mSpinAngle -= ang_step;
            }
            if (abs(mSpinAngle) > 0x10000) {
                mSpinAngle = 0;
                mSpinTimer = (int)(cM_rnd() * 60.0f) + 90;
            }
        } else if (cM_rnd() > 0.9f) {
            calcBank(ang_step, ang_scale, angle.y, angle.z);
            field_0x1518 = abs(angle.z - current.angle.z);
            cLib_addCalcAngleS2(&field_0x1518, ang_step, 8, 0x200);
            if (angle.z > 0) {
                angle.z += ang_step;
                mSpinAngle += ang_step;
            } else {
                angle.z -= ang_step;
                mSpinAngle -= ang_step;
            }
            mSwimSpeedScale = 1.0f;
        } else {
            mSpinTimer = (int)(cM_rnd() * 60.0f) + 90;
            mSpinAngle = 0;
            mSwimSpeedScale = cM_rnd() * (1.0f - daNpc_zrA_Param_c::m.mMinSwimSpeedScale)
                + daNpc_zrA_Param_c::m.mMinSwimSpeedScale;
        }
    }

    if (mSpinAngle == 0) {
        calcBank(ang_step, ang_scale, angle.y, angle.z);
    }
    current.angle.z = angle.z;
    mCurAngle = current.angle;
    shape_angle = mCurAngle;

    return true;
}

/* 80B81788-80B81918 009368 0190+00 1/1 0/0 0/0 .text            waitSwim__11daNpc_zrA_cFv */
BOOL daNpc_zrA_c::waitSwim() {
    calcModulation();

    if (mDamageTimer == 0) {
        BOOL player_attn = mActorMngr[0].getActorP() != NULL;
        if (chkFindPlayer2(player_attn, shape_angle.y)) {
            if (!player_attn) {
                mActorMngr[0].entry(daPy_getPlayerActorClass());
                mTurnMode = 0;
            }
        } else {
            if (player_attn) {
                mActorMngr[0].remove();
                mTurnMode = 0;
            }
        }

        if (mActorMngr[0].getActorP() != NULL) {
            setLookMode(LOOK_PLAYER);
        } else {
            setLookMode(LOOK_NONE);
            if (home.angle.y != mCurAngle.y && step(home.angle.y, -1, -1, 15)) {
                mMode = 0;
            }
        }

        if (home.angle.y == mCurAngle.y) {
            fopAc_ac_c* actor =
                getAttnActorP(mActorMngr[0].getActorP() != NULL, srchAttnActor1,
                              daNpc_zrA_Param_c::m.mAttnRadius, daNpc_zrA_Param_c::m.mAttnUpperY,
                              daNpc_zrA_Param_c::m.mAttnLowerY, daNpc_zrA_Param_c::m.mAttnFovY,
                              shape_angle.y, 120, true);
            if (actor != NULL) {
                mActorMngr[1].entry(actor);
                setLookMode(LOOK_ATTN);
            }
        } else {
            mAttnChangeTimer = 0;
        }
    }

    return true;
}

/* 80B81918-80B81A18 0094F8 0100+00 1/1 0/0 0/0 .text            turnSwimInit__11daNpc_zrA_cFv */
BOOL daNpc_zrA_c::turnSwimInit() {
    mPath.reverse();
    mPath.setNextIdxDst(current.pos);
    
    mSwimSpeed.set(0.0f, 0.0f, mSwimSpeedF);
    mDoMtx_stack_c::ZXYrotS(current.angle);
    mDoMtx_stack_c::multVec(&mSwimSpeed, &mSwimSpeed);

    mSwimSpeedF = 0.0f;
    mIsTurning = true;
    mSwimMode = SWIM_TURN;
    
    if (mActionType == ACT_TYPE_0) {
        setMotion(MOT_SWIM_TURN, -1.0f, false);
    } else {
        setMotion(MOT_SWIM_TURN, 4.0f, false);
    }

    return true;
}

/* 80B81A18-80B81CC8 0095F8 02B0+00 2/2 0/0 0/0 .text            turnSwim__11daNpc_zrA_cFv */
BOOL daNpc_zrA_c::turnSwim() {
    s16 ang_step = daNpc_zrA_Param_c::m.mSwimAngleSpeed;
    cXyz pos;
    csXyz angle;
    mPath.getDstPosDst2(current.pos, pos);
    angle.x = cLib_targetAngleX(&pos, &current.pos);
    angle.y = cLib_targetAngleY(&current.pos, &pos);
    angle.z = current.angle.z;
    calcSwimAngle(angle, mSwimAngleCalc, 8, ang_step);
    calcBank(ang_step, 8, current.angle.y, angle.z);
    current.angle.z = angle.z;
    mCurAngle = current.angle;
    shape_angle = mCurAngle;

    if (mBaseMotionAnm == ANM_SWIM_TURN) {
        if (mpMorf->getFrame() < 40.0f) {
            cXyz zero(0.0f, 0.0f, 0.0f);
            cLib_chasePos(&mSwimSpeed, zero, 0.7f);
            current.pos += mSwimSpeed;
            mpMorf->setPlaySpeed(0.8f);
        } else {
            cXyz swim_speed;
            mSwimSpeedF = 1.5f * daNpc_zrA_Param_c::m.mSwimSpeed;
            swim_speed.set(0.0f, 0.0f, mSwimSpeedF);
            calcSwimPos(swim_speed);
            mpMorf->setPlaySpeed(1.0f);
        }
    } else if (mBaseMotionAnm == ANM_STILL) {
        cXyz swim_speed;
        mSwimSpeedF = 1.5f * daNpc_zrA_Param_c::m.mSwimSpeed;
        swim_speed.set(0.0f, 0.0f, mSwimSpeedF);
        calcSwimPos(swim_speed);
        mpMorf->setPlaySpeed(1.0f);

        if (mIsTurning) {
            mSwimTurnTimer = 10;
            mIsTurning = false;
        } else if (cLib_calcTimer(&mSwimTurnTimer) == 0) {
            mSwimMode = SWIM_RAIL;
            if (mActionType == ACT_TYPE_0) {
                setMotion(MOT_SWIM_B, -1.0f, false);
            } else {
                setMotion(MOT_SWIM_A, -1.0f, false);
            }
            mSpinTimer = 90;
            mCheckSwimTurn = false;
        }
    }

    if (mAcch.ChkWaterHit()
        && current.pos.y > mAcch.m_wtr.GetHeight() - daNpc_zrA_Param_c::m.mMinDepth)
    {
        current.pos.y = mAcch.m_wtr.GetHeight() - daNpc_zrA_Param_c::m.mMinDepth;
    }

    return true;
}

/* 80B81CC8-80B81D68 0098A8 00A0+00 1/1 0/0 0/0 .text            turnSwimCheck__11daNpc_zrA_cFv */
BOOL daNpc_zrA_c::turnSwimCheck() {
    if (mSoldierType != SOLDIER_SPEAR) {
        if (mCheckSwimTurn) {
            if (mpMorf->isLoop()) {
                turnSwimInit();
                turnSwim();
                return true;
            }
        } else if (mCheckSwimTurnTimer == 0) {
            mCheckSwimTurnTimer = cLib_getRndValue(6, 6);
            if (cM_rnd() < 0.5f) {
                mCheckSwimTurn = true;
            }
        }
    }
    return false;
}

/* 80B81D68-80B81F70 009948 0208+00 1/1 0/0 0/0 .text evasionCalc__11daNpc_zrA_cFR4cXyzR5csXyz */
BOOL daNpc_zrA_c::evasionCalc(cXyz& param_0, csXyz& param_1) {
    BOOL ret;
    daPy_py_c* player = daPy_getPlayerActorClass();
    cM3dGLin line;
    cXyz proj;
    f32 dist;
    line.SetStartEnd(current.pos, param_0);
    if (cM3d_Len3dSqPntAndSegLine(&line, &player->current.pos, &proj, &dist) && dist <= 10000.0f) {
        fopAcM_searchPlayerAngleY(this);
        if ((s16)(param_1.y - current.angle.y) > 0) {
            mEvasionAngle = -0x1800;
        } else {
            mEvasionAngle = 0x1800;
        }
        param_1.y += mEvasionAngle;
        mEvasionTimer = 60;
        mSwimFastTurnTimer = 60;
        ret = true;
    } else {
        cXyz vec(0.0f, 0.0f, 500.0f);
        csXyz angle(current.angle.x, current.angle.y, 0);
        mDoMtx_stack_c::ZXYrotS(angle);
        mDoMtx_stack_c::multVec(&vec, &vec);
        vec += current.pos;
        line.SetStartEnd(current.pos, vec);
        if (cM3d_Len3dSqPntAndSegLine(&line, &player->current.pos, &proj, &dist)
                                                            && dist <= 10000.0f) {
            if ((s16)(fopAcM_searchPlayerAngleY(this) - current.angle.y) > 0) {
                mEvasionAngle = -0x1800;
            } else {
                mEvasionAngle = 0x1800;
            }
            param_1.y += mEvasionAngle;
            mEvasionTimer = 60;
            mSwimFastTurnTimer = 60;
            ret = true;
        } else {
            if (cLib_calcTimer(&mEvasionTimer) != 0) {
                param_1.y += mEvasionAngle;
            }
            ret = true;
        }
    }
    return ret;
}

/* 80B81FB8-80B8204C 009B98 0094+00 13/13 0/0 0/0 .text            calcBank__11daNpc_zrA_cFssRsRs */
void daNpc_zrA_c::calcBank(s16 i_step, s16 i_scale, s16& i_angY, s16& o_angZ) {
    s16 ang_diff_y = i_angY - current.angle.y;
    if (ang_diff_y >= 0x4000) {
        ang_diff_y = 0x4000;
    } else if (ang_diff_y <= -0x4000) {
        ang_diff_y = -0x4000;
    }
    cLib_addCalcAngleS2(&mSwimAngleCalc.z, ang_diff_y, i_scale * 2, i_step);
    cLib_addCalcAngleS2(&o_angZ, mSwimAngleCalc.z, (s16)i_scale, i_step);
}

/* 80B8204C-80B82238 009C2C 01EC+00 1/1 0/0 0/0 .text            calcWaistAngle__11daNpc_zrA_cFv */
void daNpc_zrA_c::calcWaistAngle() {
    if (mResetWaistAngle) {
        cLib_chaseAngleS(&mWaistAngle.x, 0, daNpc_zrA_Param_c::m.mSwimAngleSpeed / 2);
        cLib_chaseAngleS(&mWaistAngle.y, 0, daNpc_zrA_Param_c::m.mSwimAngleSpeed / 2);
        cLib_chaseAngleS(&mWaistAngle.z, 0, daNpc_zrA_Param_c::m.mSwimAngleSpeed / 2);
    } else {
        mDoMtx_stack_c::push();

        csXyz angle;
        angle.x = cLib_targetAngleX(&field_0x1578, &current.pos);
        angle.y = cLib_targetAngleY(&current.pos, &field_0x1578);
        angle.z = 0;
        cXyz vec(0.0f, 0.0f, daNpc_zrA_Param_c::m.field_0x8c);
        mDoMtx_stack_c::ZXYrotS(angle);
        mDoMtx_stack_c::multVec(&vec, &field_0x1578);

        if (mIsTurning) {
            vec.set(0.0f, 0.0f, daNpc_zrA_Param_c::m.field_0x90);
            cXyz vec2;
            mDoMtx_stack_c::ZXYrotS(current.angle);
            mDoMtx_stack_c::multVec(&vec, &vec2);
            field_0x1578 -= vec2;
            field_0x1578.normalize();
            field_0x1578 *= daNpc_zrA_Param_c::m.field_0x8c;
        }

        mDoMtx_stack_c::ZXYrotS(current.angle);
        mDoMtx_stack_c::inverse();
        mDoMtx_stack_c::multVec(&field_0x1578, &field_0x1584);
        field_0x1578 += current.pos;
        
        mWaistAngle.x = cM_atan2s(field_0x1584.y, -field_0x1584.z);
        mWaistAngle.y = cM_atan2s(-field_0x1584.x, -field_0x1584.z);
        mWaistAngle.z = 0;

        mDoMtx_stack_c::pop();
    }
}

/* 80B82238-80B822CC 009E18 0094+00 9/9 0/0 0/0 .text            calcWaistAngleInit__11daNpc_zrA_cFv
 */
void daNpc_zrA_c::calcWaistAngleInit() {
    cXyz vec(0.0f, 0.0f, -daNpc_zrA_Param_c::m.field_0x8c);
    mDoMtx_stack_c::ZXYrotS(mCurAngle);
    mDoMtx_stack_c::transM(vec);
    mDoMtx_stack_c::multVecZero(&field_0x1578);
    field_0x1578 += current.pos;
    mResetWaistAngle = false;
}

/* 80B822CC-80B822D8 009EAC 000C+00 8/8 0/0 0/0 .text            calcWaistAngleStop__11daNpc_zrA_cFv
 */
void daNpc_zrA_c::calcWaistAngleStop() {
    mResetWaistAngle = true;
}

/* 80B822D8-80B82300 009EB8 0028+00 3/3 0/0 0/0 .text calcWaistAngleCheck__11daNpc_zrA_cFv */
BOOL daNpc_zrA_c::calcWaistAngleCheck() {
    if (mSwimMode != SWIM_WAIT && !mResetWaistAngle) {
        return true;
    } else {
        return false;
    }
}

/* 80B82300-80B8247C 009EE0 017C+00 6/6 0/0 0/0 .text            calcModulation__11daNpc_zrA_cFv */
void daNpc_zrA_c::calcModulation() {
    if (mAcch.ChkWaterIn()) {
        if (mAcch.ChkWaterIn() && current.pos.y < mAcch.m_wtr.GetHeight() - 220.0f) {
            cLib_chaseF(&mModulationOffset.x,
                        5.0f - cM_scos(mModulationParam * 0x10000 / 42) * 5.0f, 1.0f);
            cLib_chaseF(&mModulationOffset.y,
                        8.0f - cM_scos(mModulationParam * 0x10000 / 70) * 8.0f, 1.0f);
            cLib_chaseF(&mModulationOffset.z,
                        4.0f - cM_scos(mModulationParam * 0x10000 / 105) * 4.0f, 1.0f);
        } else {
            cLib_chaseF(&mModulationOffset.y,
                        5.0f - cM_scos(mModulationParam * 0x10000 / 35) * 5.0f, 1.0f);
            cLib_chaseF(&mModulationOffset.x, 0.0f, 1.0f);
            cLib_chaseF(&mModulationOffset.z, 0.0f, 1.0f);
        }
        mModulationParam--;
        if (mModulationParam <= 0) {
            mModulationParam = 210;
        }
    }
}

/* 80B8247C-80B824F4 00A05C 0078+00 2/2 0/0 0/0 .text            resetModulation__11daNpc_zrA_cFv */
void daNpc_zrA_c::resetModulation() {
    cLib_chaseF(&mModulationOffset.y, 0.0f, 1.0f);
    cLib_chaseF(&mModulationOffset.x, 0.0f, 1.0f);
    cLib_chaseF(&mModulationOffset.z, 0.0f, 1.0f);
    mModulationParam = 210;
}

/* 80B824F4-80B82584 00A0D4 0090+00 17/17 0/0 0/0 .text
 * calcSwimAngle__11daNpc_zrA_cFR5csXyzR5csXyzss                */
void daNpc_zrA_c::calcSwimAngle(csXyz& i_target, csXyz& i_calc, s16 i_scale, s16 i_step) {
    cLib_addCalcAngleS2(&i_calc.x, i_target.x, i_scale, i_step);
    cLib_addCalcAngleS2(&current.angle.x, i_calc.x, i_scale, i_step);
    cLib_addCalcAngleS2(&i_calc.y, i_target.y, i_scale, i_step);
    cLib_addCalcAngleS2(&current.angle.y, i_calc.y, i_scale, i_step);
}

/* 80B82584-80B825FC 00A164 0078+00 15/15 0/0 0/0 .text            calcSwimPos__11daNpc_zrA_cFR4cXyz
 */
void daNpc_zrA_c::calcSwimPos(cXyz& i_speed) {
    csXyz angle = current.angle;
    angle.z = 0;
    mDoMtx_stack_c::ZXYrotS(angle);
    mDoMtx_stack_c::multVec(&i_speed, &i_speed);
    current.pos += i_speed;
}

/* 80B825FC-80B826F0 00A1DC 00F4+00 8/8 0/0 0/0 .text            calcWaitSwim__11daNpc_zrA_cFi */
void daNpc_zrA_c::calcWaitSwim(BOOL param_0) {
    cLib_chaseAngleS(&current.angle.x, 0, daNpc_zrA_Param_c::m.mSwimAngleSpeed);
    cLib_chaseAngleS(&current.angle.z, 0, daNpc_zrA_Param_c::m.mSwimAngleSpeed);
    mCurAngle = current.angle;
    shape_angle = mCurAngle;
    cLib_chaseF(&mSwimSpeedF, 0.0f, 2.0f);
    cLib_chaseF(&mScaleFactor, 1.0f, (daNpc_zrA_Param_c::m.mMaxScaleFactor - 1.0f) / 30.0f);
    calcModulation();
    if (param_0 && mAcch.ChkWaterHit()
        && current.pos.y > mAcch.m_wtr.GetHeight() - daNpc_zrA_Param_c::m.mMinDepth)
    {
        current.pos.y = mAcch.m_wtr.GetHeight() - daNpc_zrA_Param_c::m.mMinDepth;
    }
}

/* 80B826F0-80B82C54 00A2D0 0564+00 1/0 0/0 0/0 .text            ECut_talkSwim__11daNpc_zrA_cFi */
BOOL daNpc_zrA_c::ECut_talkSwim(int i_staffID) {
    dEvent_manager_c& event_manager = dComIfGp_getEventManager();
    BOOL ret = false;
    int prm = -1;
    int* prm_p = dComIfGp_evmng_getMyIntegerP(i_staffID, "prm");
    if (prm_p != NULL) {
        prm = *prm_p;
    }

    if (event_manager.getIsAddvance(i_staffID)) {
        switch (prm) {
        case 0:
            mAcch.ClrGrndNone();
            mAcch.ClrWallNone();
            setExpression(EXPR_NONE, -1.0f);
            setMotion(MOT_FLOAT, daNpc_zrA_Param_c::m.mMorfFrames, true);
            mTurnMode = 0;
            mMode = 2;
            mSwimSpeed.set(0.0f, 0.0f, mSwimSpeedF);
            mDoMtx_stack_c::ZXYrotS(current.angle);
            mDoMtx_stack_c::multVec(&mSwimSpeed, &mSwimSpeed);
            mSwimSpeedF = 0.0f;
            calcWaistAngleStop();
            break;

        case 1:
            initTalk(mFlowID, NULL);
            break;

        case 2:
            mSwimAngleCalc = current.angle;
            break;
        }
    }

    switch (prm) {
    case 0: {
        calcModulation();
        if (current.angle.x == 0 && current.angle.z == 0 && mSwimSpeed.abs2() < 0.1f
            && mScaleFactor <= 1.05f && mBaseMotionAnm != ANM_FLOAT)
        {
            ret = true;
            setLookMode(LOOK_PLAYER);
            break;
        }

        cLib_chaseAngleS(&current.angle.x, 0, daNpc_zrA_Param_c::m.mSwimAngleSpeed);
        cLib_chaseAngleS(&current.angle.z, 0, daNpc_zrA_Param_c::m.mSwimAngleSpeed);
        cLib_chaseAngleS(&current.angle.y, fopAcM_searchPlayerAngleY(this),
                         daNpc_zrA_Param_c::m.mSwimAngleSpeed);
        cLib_chaseF(&mScaleFactor, 1.0f, (daNpc_zrA_Param_c::m.mMaxScaleFactor - 1.0f) / 30.0f);
        cXyz zero(0.0f, 0.0f, 0.0f);
        cLib_chasePos(&mSwimSpeed, zero, 0.5f);
        current.pos += mSwimSpeed;
        f32 water_y;
        if (fopAcM_getWaterY(&current.pos, &water_y)
            && current.pos.y > water_y - daNpc_zrA_Param_c::m.mMinDepth - 50.0f)
        {
            cLib_chaseF(&current.pos.y, water_y - daNpc_zrA_Param_c::m.mMinDepth - 50.0f, 20.0f);
        }
        mCurAngle = current.angle;
        shape_angle = mCurAngle;
        break;
    }

    case 1:
        calcModulation();
        if (talkProc(NULL, true, NULL)) {
            if (mActionType == ACT_TYPE_0) {
                setMotion(MOT_DIVE_SWIM_B, daNpc_zrA_Param_c::m.mMorfFrames / 2.0f, true);
            } else {
                setMotion(MOT_DIVE_SWIM_A, daNpc_zrA_Param_c::m.mMorfFrames / 2.0f, true);
            }
            mSwimAngleCalc = current.angle;
            mSwimSpeedScale = 1.0f;
            mSwimSpeedF = mSwimSpeedScale * daNpc_zrA_Param_c::m.mSwimSpeed;
            setLookMode(LOOK_NONE);
            ret = true;
        }
        break;

    case 2: {
        resetModulation();
        s16 swim_angle_speed = daNpc_zrA_Param_c::m.mSwimAngleSpeed;
        cLib_chaseF(&mScaleFactor, daNpc_zrA_Param_c::m.mMaxScaleFactor,
                    (daNpc_zrA_Param_c::m.mMaxScaleFactor - 1.0f) / 30.0f);
        cXyz vec;
        csXyz angle;
        mPath.getDstPosDst2(current.pos, vec);
        angle.x = cLib_targetAngleX(&vec, &current.pos);
        angle.y = cLib_targetAngleY(&current.pos, &vec);
        angle.z = current.angle.z;
        calcSwimAngle(angle, mSwimAngleCalc, 8, swim_angle_speed);
        mCurAngle = current.angle;
        shape_angle = mCurAngle;

        if (mBaseMotionAnm != ANM_DIVE) {
            ret = true;
            if (!calcWaistAngleCheck()) {
                calcWaistAngleInit();
                mSwimSpeedScale = 1.0f;
                mSwimSpeedF = mSwimSpeedScale * daNpc_zrA_Param_c::m.mSwimSpeed;
            }
            cXyz swim_speed(0.0f, 0.0f, mSwimSpeedF);
            calcSwimPos(swim_speed);
            mAcch.SetGrndNone();
            mAcch.SetWallNone();
        }

        if (mAcch.ChkWaterHit()
            && current.pos.y > mAcch.m_wtr.GetHeight() - daNpc_zrA_Param_c::m.mMinDepth)
        {
            current.pos.y = mAcch.m_wtr.GetHeight() - daNpc_zrA_Param_c::m.mMinDepth;
        }
        break;
    }

    default:
        ret = true;
        break;
    }

    return ret;
}

/* 80B82C54-80B82E88 00A834 0234+00 3/0 0/0 0/0 .text            waitWaterfall__11daNpc_zrA_cFPv */
BOOL daNpc_zrA_c::waitWaterfall(void* param_0) {
    switch (mMode) {
    case 0:
        setExpressionAnm(ANM_NONE, false);
        if (mMotion != MOT_FLOAT && mMotion != MOT_FLOAT_B) {
            setMotion(MOT_WAIT_SWIM, -1.0f, false);
        }
        gravity = 0.0f;
        speed.setall(0.0f);
        speedF = 0.0f;
        mAcch.SetGrndNone();
        mAcch.SetWallNone();
        setLookMode(LOOK_NONE);
        mAttnChangeTimer = 0;
        mTurnMode = 0;
        mSwimMode = SWIM_RAIL;
        calcWaistAngleStop();
        field_0x1550 = true;
        mCcStts.SetWeight(0xff);
        mMode = 2;
        // fallthrough

    case 2:
        calcWaitSwim(false);
        if (mScaleFactor == 1.0f) {
            mSwimMode = SWIM_WAIT;
        }

        if (mDamageTimer == 0 && !mTwilight) {
            BOOL player_attn = mActorMngr[0].getActorP() != NULL;
            if (chkFindPlayer2(player_attn, shape_angle.y)) {
                if (!player_attn) {
                    mActorMngr[0].entry(daPy_getPlayerActorClass());
                    mTurnMode = 0;
                }
            } else {
                if (player_attn) {
                    mActorMngr[0].remove();
                    mTurnMode = 0;
                }
            }

            if (mActorMngr[0].getActorP() != NULL) {
                setLookMode(LOOK_PLAYER);
            } else {
                setLookMode(LOOK_NONE);
                if (home.angle.y != mCurAngle.y && step(home.angle.y, -1, -1, 15)) {
                    mMode = 0;
                }
            }
        }
        break;

    case 3:
        speedF = 0.0f;
        break;
    }

    return true;
}

/* 80B82E88-80B833C8 00AA68 0540+00 2/0 0/0 0/0 .text            swimWaterfall__11daNpc_zrA_cFPv */
BOOL daNpc_zrA_c::swimWaterfall(void* param_0) {
    s16 angle_step = daNpc_zrA_Param_c::m.mSwimAngleSpeed * 2;
    s16 angle_scale = 2;
    cXyz point, swim_speed;

    switch (mMode) {
    case 0:
        mAcch.SetGrndNone();
        mAcch.SetWallNone();
        gravity = 0.0f;
        speed.setall(0.0f);
        speedF = 0.0f;
        field_0x153d = false;
        setExpressionAnm(ANM_NONE, false);
        if (mActionType == ACT_TYPE_0) {
            setMotion(MOT_SWIM_B, -1.0f, false);
        } else {
            setMotion(MOT_SWIM_A, -1.0f, false);
        }
        mSwimMode = SWIM_RAIL;
        mScaleFactor = daNpc_zrA_Param_c::m.mMaxScaleFactor;
        mCcStts.SetWeight(0);
        setLookMode(LOOK_NONE);
        mAttnChangeTimer = 0;
        mTurnMode = 0;
        mMode = 2;
        field_0x153e = false;
        mSwimAngleCalc = current.angle;
        calcWaistAngleInit();
        // fallthrough

    case 2: {
        int idx = mPath.getIdx();
        if (mPath.getDstPosDst2(current.pos, point) && idx == 0 && mPath.chkReverse()) {
            mPath.reverse();
            mActionSelect = 0;
            mSwimSpeedScale = 1.0f;
            setMotion(MOT_FLOAT_B, -1.0f, false);
            setAction(&waitWaterfall);
            return false;
        }

        csXyz angle;
        angle.x = cLib_targetAngleX(&point, &current.pos);
        angle.y = cLib_targetAngleY(&current.pos, &point);
        angle.z = current.angle.z;

        cXyz prev_point;
        mPath.getBeforePos(prev_point);
        if (cLib_targetAngleX(&point, &prev_point) > 0x3000) {
            angle.x = 0x4000;
            angle.y = 0;
            mSwimSpeedScale = 3.0f;
        } else {
            mSwimSpeedScale = 1.0f;
        }

        s16 ang_diff_x = angle.x - current.angle.x;
        s16 ang_diff_y = angle.y - current.angle.y;
        bool bvar5 = false;

        if (mActionType != ACT_TYPE_0 && (abs(ang_diff_x) > 0x3000 || abs(ang_diff_y) > 0x3000)
                                      && mSwimSpeedF > 14.0f) {
            f32 frame = mpMorf->getFrame();
            if ((angle.z <= 0x2000 || ang_diff_y >= 0) && (angle.z >= -0x2000 || ang_diff_y <= 0)) {
                if (ang_diff_x < -0x3000) {
                    if (frame >= 2.0f && frame <= 4.0f) {
                        bvar5 = true;
                    }
                } else {
                    if (frame >= 16.0f && frame <= 18.0f) {
                        mpMorf->setFrame(18.0f);
                        mpMorf->setMorf(4.0f);
                        mpMorf->setPlaySpeed(0.1f);
                        bvar5 = true;
                    }
                }
            }

            if (bvar5) {
                calcSwimAngle(angle, mSwimAngleCalc, 1, angle_step);
            } else {
                calcSwimAngle(angle, mSwimAngleCalc, 2, angle_step / 2);
            }
        } else {
            calcSwimAngle(angle, mSwimAngleCalc, 2, angle_step);
        }

        if (current.angle.x > 0x2000) {
            mSwimSpeedScale = 3.0f;
            angle_step *= 2.0f;
            angle_scale = 2;
        } else {
            mSwimSpeedScale = 1.0f;
        }
        cLib_addCalc2(&mSwimSpeedF, mSwimSpeedScale * daNpc_zrA_Param_c::m.mSwimSpeed, 0.1f, 1.0f);
        swim_speed.set(0.0f, 0.0f, mSwimSpeedF);
        calcSwimPos(swim_speed);

        if (!bvar5) {
            f32 play_speed = mpMorf->getPlaySpeed();
            f32 target_speed =
                cLib_minMaxLimit(mSwimSpeedF / daNpc_zrA_Param_c::m.mSwimAnmRate, 0.0f, 1.5f);
            cLib_addCalc2(&play_speed, target_speed, 0.2f, 0.1f);
            mpMorf->setPlaySpeed(play_speed);
        }

        calcBank(angle_step, angle_scale, angle.y, angle.z);
        current.angle.z = angle.z;
        mCurAngle = current.angle;
        shape_angle = mCurAngle;
        break;
    }

    case 3:
        break;
    }

    return true;
}

/* 80B833C8-80B83548 00AFA8 0180+00 2/0 0/0 0/0 .text            diveWaterfall__11daNpc_zrA_cFPv */
BOOL daNpc_zrA_c::diveWaterfall(void* param_0) {
    switch (mMode) {
    case 0:
        mPath.onReverse();
        mPath.setIdx(mPath.getEndIdx() - 1);
        mPath.setNextIdxDst(current.pos);
        setExpressionAnm(ANM_NONE, false);
        setMotion(MOT_DIVE_B_SWIM_A, -1.0f, false);
        mSwimAngleCalc = current.angle;
        mSwimSpeedScale = 1.0f;
        mSwimSpeedF = mSwimSpeedScale * daNpc_zrA_Param_c::m.mSwimSpeed;
        setLookMode(LOOK_NONE);
        mSwimMode = SWIM_RAIL;
        mActionSelect = 3;
        mMode = 2;
        // fallthrough

    case 2:
        if (diveCalc(daNpc_zrA_Param_c::m.mSwimAngleSpeed, 4, false)) {
            mActionSelect = 1;
            setAction(&swimWaterfall);
        }
        break;

    case 3:
        break;
    }

    return true;
}

/* 80B83548-80B837E8 00B128 02A0+00 2/0 0/0 0/0 .text            talkSwim__11daNpc_zrA_cFPv */
BOOL daNpc_zrA_c::talkSwim(void* param_0) {
    BOOL bvar2 = false;
    int flow_id;

    switch (mMode) {
    case 0:
        if (mDamageTimer != 0) {
            break;
        }
        setExpression(EXPR_NONE, -1.0f);
        flow_id = mFlowID;
        mTurnMode = 0;
        mMode = 2;
        initTalk(flow_id, NULL);
        field_0x1558 = 0;
        // fallthrough

    case 2:
        switch (field_0x1558) {
        case 0:
            calcModulation();
            if (field_0x9ea) {
                bvar2 = true;
            } else {
                setLookMode(LOOK_NONE);
                if (mCurAngle.y == fopAcM_searchPlayerAngleY(this)) {
                    bvar2 = true;
                } else if (step(fopAcM_searchPlayerAngleY(this), -1, -1, 15)) {
                    mTurnMode = 0;
                }
            }

            if (bvar2 && talkProc(NULL, 1, NULL)) {
                if (mFlow.getChoiceNo() == 0) {
                    field_0x1558 = 1;
                    mSwimAngleCalc = current.angle;
                    mSwimSpeedScale = 1.0f;
                    mSwimSpeedF = mSwimSpeedScale * daNpc_zrA_Param_c::m.mSwimSpeed;
                    setLookMode(LOOK_NONE);
                } else {
                    mMode = 3;
                    dComIfGp_event_reset();
                    setAction(&waitWaterfall);
                    field_0x9ec = false;
                }
            }
            break;

        case 1:
            mMode = 3;
            dComIfGp_event_reset();
            mActionSelect = 1;
            if (!dKy_daynight_check()) {
                mOrderEvtNo = EVT_CARRY_WATERFALL;
            } else {
                mOrderEvtNo = EVT_CARRY_WATERFALL_NIGHT;
            }
            changeEvent(l_resNames[l_evtGetParamList[mOrderEvtNo].arcIdx],
                        l_evtNames[l_evtGetParamList[mOrderEvtNo].fileIdx], 1, 0xffff);
        }
        break;

    case 3:
        break;
    }

    return false;
}

/* 80B837E8-80B83D08 00B3C8 0520+00 1/0 0/0 0/0 .text ECut_carryWaterfall__11daNpc_zrA_cFi */
BOOL daNpc_zrA_c::ECut_carryWaterfall(int i_staffID) {
    dEvent_manager_c& event_manager = dComIfGp_getEventManager();
    BOOL ret = false;
    int prm = -1;
    int* prm_p = dComIfGp_evmng_getMyIntegerP(i_staffID, "prm");
    if (prm_p != NULL) {
        prm = *prm_p;
    }

    if (event_manager.getIsAddvance(i_staffID)) {
        switch (prm) {
        case 0:
            dComIfGp_getEvent().setSkipProc(this, dEv_defaultSkipProc, 0);
            Z2GetAudioMgr()->subBgmStart(Z2BGM_ZORA_D01);
            break;

        case 10:
            setExpression(EXPR_NONE, -1.0f);
            setMotion(MOT_FALLSWIM, -1.0f, false);
            current.angle.y = -0x8000;
            setAngle(current.angle.y);
            mPath.setNextIdxDst(current.pos);
            mAcch.SetGrndNone();
            mAcch.SetWallNone();
            field_0x153d = false;
            mSwimMode = SWIM_RAIL;
            mScaleFactor = daNpc_zrA_Param_c::m.mMaxScaleFactor;
            mCcStts.SetWeight(0);
            setLookMode(LOOK_NONE);
            mAttnChangeTimer = 0;
            mTurnMode = 0;
            field_0x153e = false;
            mSwimAngleCalc = current.angle;
            calcWaistAngleInit();
            break;

        case 20:
            mPath.setIdx(5);
            current.pos = mPath.getPntPos(5);
            mPath.setNextIdxDst(current.pos);
            current.angle.y = -0x8000;
            current.angle.x = -0x4000;
            mCurAngle.x = -0x4000;
            shape_angle.x = -0x4000;
            setAngle(current.angle.y);
            break;

        case 30:
            mEventTimer = 60;
            break;

        case 40:
            break;
        }
    }

    switch (prm) {
    case 0:
        calcWaitSwim(false);
        ret = true;
        break;

    case 10:
        ret = true;
        // fallthrough

    case 20:
        resetModulation();
        if (mMotion != MOT_FALLSWIM) {
            calcWaitSwim(false);
            if (mScaleFactor == 1.0f) {
                mSwimMode = SWIM_WAIT;
            }
            ret = true;
        } else {
            s16 angle_step = daNpc_zrA_Param_c::m.mSwimAngleSpeed * 2;
            cXyz pos, swim_speed;
            f32 speed_scale = mSwimSpeedScale;
            if (mPath.getDstPosDst2(current.pos, pos) && mPath.getIdx() == mPath.getNextIdx()) {
                mPath.reverse();
                mSwimMode = SWIM_RAIL;
                mActionSelect = 3;
                setMotion(MOT_FLOAT_B, -1.0f, false);
                calcWaistAngleStop();
                ret = true;
            } else {
                csXyz angle;
                angle.x = cLib_targetAngleX(&pos, &current.pos);
                angle.y = cLib_targetAngleY(&current.pos, &pos);
                angle.z = current.angle.z;
                calcSwimAngle(angle, mSwimAngleCalc, 4, angle_step);
                cLib_addCalc2(&mSwimSpeedF, speed_scale * daNpc_zrA_Param_c::m.mSwimSpeed,
                            0.1f, 1.0f);
                swim_speed.set(0.0f, 0.0f, mSwimSpeedF);
                calcSwimPos(swim_speed);
                current.angle.z = angle.z;
                shape_angle.x = mCurAngle.x = current.angle.x;
                shape_angle.z = mCurAngle.z = current.angle.z;
                if (current.angle.x < -0x2000) {
                    cLib_addCalcAngleS2(&mCurAngle.y, -0x8000, 4, angle_step);
                } else {
                    cLib_addCalcAngleS2(&mCurAngle.y, current.angle.y, 4, angle_step);
                }
                shape_angle.y = mCurAngle.y;
            }
        }
        break;

    case 30:
        if (cLib_calcTimer(&mEventTimer) == 0) {
            ret = true;
        }
        calcWaitSwim(false);
        if (mScaleFactor == 1.0f) {
            mSwimMode = SWIM_WAIT;
        }
        cLib_chaseAngleS(&mCurAngle.y, fopAcM_searchPlayerAngleY(this),
                         daNpc_zrA_Param_c::m.mSwimAngleSpeed);
        setAngle(mCurAngle.y);
        break;

    case 40:
        ret = true;
        break;

    default:
        ret = true;
        break;
    }

    return ret;
}

/* 80B83D08-80B83FA4 00B8E8 029C+00 1/0 0/0 0/0 .text ECut_carryWaterfallSkip__11daNpc_zrA_cFi */
BOOL daNpc_zrA_c::ECut_carryWaterfallSkip(int i_staffID) {
    dEvent_manager_c& event_manager = dComIfGp_getEventManager();
    BOOL ret = false;
    int prm = -1;
    int* prm_p = dComIfGp_evmng_getMyIntegerP(i_staffID, "prm");
    if (prm_p != NULL) {
        prm = *prm_p;
    }

    if (event_manager.getIsAddvance(i_staffID)) {
        switch (prm) {
        case 0:
            Z2GetAudioMgr()->subBgmStop();
            break;
        
        case 10:
            mPath.onReverse();
            mPath.setIdx(mPath.getEndIdx() - 1);
            current.pos = mPath.getPntPos(mPath.getEndIdx() - 1);
            old.pos = current.pos;
            current.angle.set(0, -0x8000, 0);
            shape_angle = mCurAngle = current.angle;
            setLookMode(LOOK_NONE);
            setMotion(MOT_FLOAT_B, -1.0f, false);
            mSwimMode = SWIM_RAIL;
            mActionSelect = 3;
            calcWaistAngleStop();
            mAttnChangeTimer = 0;
            mTurnMode = 0;
            mSwimAngleCalc = current.angle;
            mEventTimer = 60;
            break;

        case 20:
            break;

        default:
            break;
        }
    }

    switch (prm) {
    case 0:
        ret = true;
        break;

    case 10:
        if (cLib_calcTimer(&mEventTimer) == 0) {
            ret = true;
        }
        calcWaitSwim(false);
        if (mScaleFactor == 1.0f) {
            mSwimMode = SWIM_WAIT;
        }
        cLib_chaseAngleS(&mCurAngle.y, fopAcM_searchPlayerAngleY(this),
                         daNpc_zrA_Param_c::m.mSwimAngleSpeed);
        setAngle(mCurAngle.y);
        break;

    case 20:
        ret = true;
        break;

    default:
        ret = true;
        break;
    }

    return ret;
}

/* 80B83FA4-80B84200 00BB84 025C+00 1/1 0/0 0/0 .text            diveCalc__11daNpc_zrA_cFssi */
BOOL daNpc_zrA_c::diveCalc(s16 i_angleStep, s16 i_angleScale, BOOL param_2) {
    cLib_chaseF(&mScaleFactor, daNpc_zrA_Param_c::m.mMaxScaleFactor,
                (daNpc_zrA_Param_c::m.mMaxScaleFactor - 1.0f) / 30.0f);
    cXyz pos;
    mPath.getDstPosDst2(current.pos, pos);
    csXyz angle;
    angle.x = cLib_targetAngleX(&pos, &current.pos);
    angle.y = cLib_targetAngleY(&current.pos, &pos);
    angle.z = current.angle.z;
    calcSwimAngle(angle, mSwimAngleCalc, i_angleScale, i_angleStep);
    shape_angle = mCurAngle = current.angle;

    f32 frame = mpMorf->getFrame();
    cXyz dive_speed(0.0f, 0.0f, 0.0f);
    if (frame < 3.0f) {
        dive_speed.set(0.0f, -6.0f, 0.0f);
    } else if (frame < 6.0f) {
        dive_speed.set(0.0f, -9.0f, 0.0f);
    } else if (frame < 9.0f) {
        dive_speed.set(0.0f, -9.0f, 8.5f);
    } else if (frame < 13.0f) {
        dive_speed.set(0.0f, -9.0f, 5.7f);
    } else if (frame < 20.0f) {
        dive_speed.set(0.0f, 3.0f, 2.4f);
    } else if (frame < 36.0f) {
        dive_speed.set(2.0f, 3.0f, 6.5f);
    }
    mDoMtx_stack_c::ZXYrotS(current.angle);
    mDoMtx_stack_c::multVec(&dive_speed, &dive_speed);
    current.pos += dive_speed;

    if (param_2 && mAcch.ChkWaterIn()
        && current.pos.y > mAcch.m_wtr.GetHeight() - daNpc_zrA_Param_c::m.mMinDepth)
    {
        current.pos.y = mAcch.m_wtr.GetHeight() - daNpc_zrA_Param_c::m.mMinDepth;
    }

    if (mBaseMotionAnm == ANM_SWIM_A || mBaseMotionAnm == ANM_SWIM_B) {
        return true;
    } else {
        return false;
    }
}

/* 80B84200-80B8424C 00BDE0 004C+00 1/1 0/0 0/0 .text            s_subHoz__FPvPv */
static void* s_subHoz(void* i_proc, void* i_this) {
    if (fopAc_IsActor(i_proc) && fopAcM_GetName(i_proc) == PROC_NPC_HOZ) {
        return i_proc;
    }
    return NULL;
}

/* 80B8424C-80B84298 00BE2C 004C+00 3/3 0/0 0/0 .text            s_sub__FPvPv */
static void* s_sub(void* i_proc, void* i_this) {
    if (fopAc_IsActor(i_proc) && fopAcM_GetName(i_proc) == PROC_CANOE) {
        return i_proc;
    }
    return NULL;
}

/* 80B84298-80B84B74 00BE78 08DC+00 4/0 0/0 0/0 .text            waitRiverDescend__11daNpc_zrA_cFPv
 */
BOOL daNpc_zrA_c::waitRiverDescend(void* param_0) {
    switch (mMode) {
    case 0:
        setExpressionAnm(ANM_NONE, false);
        if (mMotion != MOT_FLOAT_B) {
            setMotion(MOT_WAIT_SWIM, -1.0f, false);
        }
        gravity = 0.0f;
        speed.setall(0.0f);
        speedF = 0.0f;
        setLookMode(LOOK_NONE);
        mAttnChangeTimer = 0;
        mTurnMode = 0;
        calcWaistAngleStop();
        field_0x1550 = true;
        mSwimSpeedF = 0.0f;
        field_0x1500 = daPy_getPlayerActorClass()->current.pos;
        mIsTurning = true;
        mMode = 2;
        // fallthrough

    case 2: {
        daPy_py_c* player = daPy_getPlayerActorClass();
        calcWaitSwim(true);
        cXyz pos;
        moveRiverPosCalc(pos);

        if (mGameMode == GAME_MODE_3) {
            if (mActorMngr[2].getActorP() == NULL) {
                fopAc_ac_c* canoe = (fopAc_ac_c*)fpcM_Search(s_sub, this);
                if (canoe != NULL
                    && !((player->current.pos - this->current.pos).absXZ() > 1000.0f))
                {
                    mActorMngr[2].entry(canoe);
                    if (!player->checkCanoeSlider()) {
                        player->setCanoeSlider();
                        mActionSelect = 4;
                        setAction(&swimGoalRiverDescend);
                        break;
                    }
                }
            }
        } else if (mGameMode == GAME_MODE_0) {
            if (mActorMngr[2].getActorP() == NULL) {
                daNpc_Hoz_c* iza = (daNpc_Hoz_c*)fpcM_Search(s_subHoz, this);
                if (iza != NULL) {
                    mActorMngr[2].entry(iza);
                    if (iza->getType() == daNpc_Hoz_c::TYPE_1
                        || iza->getType() == daNpc_Hoz_c::TYPE_5)
                    {
                        mGameMode = GAME_MODE_1;
                        if (dComIfGs_isSwitch(mSwitch1, fopAcM_GetRoomNo(this))) {
                            field_0x15c0 = 2;
                        }
                    } else {
                        mGameMode = GAME_MODE_2;
                        if (!daNpcF_chkEvtBit(0x60)) {
                            daNpcF_onEvtBit(0x60);
                        }
                    }
                }
            }
        }

        if (player->checkCanoeRide()) {
            if (mGameMode == GAME_MODE_2) {
                daNpc_Hoz_c* iza = static_cast<daNpc_Hoz_c*>(mActorMngr[2].getActorP());
                if (iza != NULL && iza->getGameStartFlag()) {
                    mActionSelect = 3;
                    mPath.setNextIdx();
                    setAction(&diveRiverDescend);
                    break;
                }
            } else if (mGameMode == GAME_MODE_1) {
                if (field_0x15c0 == 0) {
                    if ((player->current.pos - current.pos).absXZ()
                                                < daNpc_zrA_Param_c::m.field_0xa8) {
                        field_0x15c0 = 1;
                        mOrderEvtNo = EVT_BEFORE_BLAST_ZRR;
                    }
                } else if (field_0x15c0 == 1) {
                    cXyz vec2(34301.445f, -6541.864f, -24243.617f);
                    if (dComIfGs_isSwitch(mSwitch1, fopAcM_GetRoomNo(this))) {
                        mOrderEvtNo = EVT_AFTER_BLAST_ZRR;
                        mOrderNewEvt = true;
                    } else {
                        if ((current.pos - vec2).absXZ() >= 100.0f) {
                            mActionSelect = 3;
                            setAction(&diveRiverDescend);
                        }
                    }
                } else {
                    cXyz vec3 = player->current.pos;
                    vec3 -= current.pos;
                    if (vec3.absXZ() < 10000.0f) {
                        mPath.setNextIdxDst(current.pos);
                        mActionSelect = 3;
                        setAction(&diveRiverDescend);
                        break;
                    }
                }
            }

            cLib_addCalcAngleS2(&mCurAngle.y, fopAcM_searchPlayerAngleY(this), 2, 0x800);
            setAngle(mCurAngle.y);
        }

        break;
    }

    case 3:
        speedF = 0.0f;
        break;
    }

    return true;
}

/* 80B84B74-80B85B14 00C754 0FA0+00 2/2 0/0 0/0 .text            swimRiverDescend__11daNpc_zrA_cFPv
 */
// NONMATCHING stack problems
BOOL daNpc_zrA_c::swimRiverDescend(void* param_0) {
    s16 angle_step = daNpc_zrA_Param_c::m.mSwimAngleSpeed;
    s16 angle_scale = 6;
    f32 water_height = mAcch.m_wtr.GetHeight();

    switch (mMode) {
    case 0:
        gravity = 0.0f;
        speed.setall(0.0f);
        speedF = 0.0f;
        field_0x153d = false;
        setExpressionAnm(ANM_NONE, false);
        if (mActionType == ACT_TYPE_0) {
            setMotion(MOT_SWIM_B, -1.0f, false);
        } else {
            setMotion(MOT_SWIM_A, -1.0f, false);
        }
        mSwimMode = SWIM_RAIL;
        mCcStts.SetWeight(0);
        setLookMode(LOOK_NONE);
        mAttnChangeTimer = 0;
        mTurnMode = 0;
        mMode = 2;
        field_0x153e = false;
        mSwimAngleCalc = current.angle;
        calcWaistAngleInit();
        field_0x1500 = daPy_getPlayerActorClass()->current.pos;
        // fallthrough

    case 2: {
        csXyz angle;
        daPy_py_c* player = daPy_getPlayerActorClass();
        cLib_chaseF(&mScaleFactor, daNpc_zrA_Param_c::m.mMaxScaleFactor,
                    (daNpc_zrA_Param_c::m.mMaxScaleFactor - 1.0f) / 30.0f);
        int ivar8 = mRiverPathIdx;
        cXyz pos, swim_speed;
        moveRiverPosCalc(pos);

        if (field_0x153c) {
            mMeterCount = dMeter2Info_getNowCount();
            cXyz head_pos;
            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
            mDoMtx_stack_c::scaleM(scale);
            mDoMtx_stack_c::multVecZero(&head_pos);

            if (field_0x153e) {
                if (mIsAboveWater && mpMorf->getFrame() > 13.0f && mpMorf->getFrame() < 17.0f) {
                    f32 play_speed = mpMorf->getPlaySpeed();
                    cLib_addCalc2(&play_speed, 0.3f, 0.7f, 0.5f);
                    mpMorf->setPlaySpeed(play_speed);
                }

                angle.y = cLib_targetAngleY(&current.pos, &pos);
                cLib_addCalcAngleS2(&mSwimAngleCalc.y, angle.y, angle_scale, angle_step);
                cLib_addCalcAngleS2(&current.angle.y, mSwimAngleCalc.y, angle_scale, angle_step);

                f32 swim_speed_f = mSwimSpeed.absXZ();
                mSwimSpeed.x = 0.0f;
                mSwimSpeed.z = swim_speed_f;
                mDoMtx_stack_c::YrotS(current.angle.y);
                mDoMtx_stack_c::multVec(&mSwimSpeed, &mSwimSpeed);
                calcBank(angle_step / 2, angle_scale * 2, current.angle.y, current.angle.z);
                mSwimSpeed.y -= 1.8f;
                current.pos += mSwimSpeed;

                if (current.angle.x < 0x3000) {
                    current.angle.x = -cM_atan2s(mSwimSpeed.y, mSwimSpeed.absXZ());
                }
                shape_angle = mCurAngle = current.angle;

                if (mAcch.ChkWaterHit()) {
                    if (mIsAboveWater
                        && mSwimSpeed.y <= 0.0f && head_pos.y + mSwimSpeed.y <= water_height)
                    {
                        cXyz wpillar_pos = head_pos;
                        wpillar_pos.y = water_height;
                        fopKyM_createWpillar(&wpillar_pos, 2.5f, 0);
                        mIsAboveWater = false;
                        mCreatureSound.startCreatureSound(Z2SE_ZRA_DIVE_SPLASH, 0, -1);
                        mpMorf->setPlaySpeed(1.0f);
                    }

                    if (current.pos.y <= water_height - daNpc_zrA_Param_c::m.mMinDepth) {
                        field_0x153e = false;
                        field_0x153c = false;
                        mSwimSpeedF = mSwimSpeed.abs();
                    }
                }

                return true;
            }

            angle.y = cLib_targetAngleY(&current.pos, &pos);
            angle.z = current.angle.z;
            if (mSwimSpeedF > 40.0f) {
                angle.x = -0x3000;
                if (mAcch.ChkWaterHit()) {
                    if (head_pos.y < water_height) {
                        angle_step = daNpc_zrA_Param_c::m.mSwimAngleSpeed * 2;
                        angle_scale = 2;
                    } else if (!mIsAboveWater) {
                        cXyz wpillar_pos = head_pos;
                        wpillar_pos.y = water_height;
                        fopKyM_createWpillar(&wpillar_pos, 2.5f, 0);
                        mIsAboveWater = true;
                        mCreatureSound.startCreatureSound(Z2SE_ZRA_DIVE_SPLASH_OUT, 0, -1);
                    } else {
                        if (mpMorf->getFrame() > 13.0f && mpMorf->getFrame() < 17.0f) {
                            f32 play_speed = mpMorf->getPlaySpeed();
                            cLib_addCalc2(&play_speed, 0.3f, 0.7f, 0.8f);
                            mpMorf->setPlaySpeed(play_speed);
                        }
                        if (current.pos.y > water_height && current.angle.x < -0x2000) {
                            swim_speed.set(0.0f, 0.0f, mSwimSpeedF);
                            calcSwimPos(swim_speed);
                            mSwimSpeed = swim_speed;
                            field_0x153e = true;
                            if (mSwimSpeed.y > 20.0f) {
                                mSwimSpeed.y = 20.0f;
                            }
                            calcBank(angle_step, angle_scale, angle.y, angle.z);
                            current.angle.z = angle.z;
                            return true;
                        }
                    }
                }
            } else {
                angle.x = cLib_targetAngleX(&pos, &current.pos);
            }
        } else {
            u32 meter_count = dMeter2Info_getNowCount();
            if (mGameMode != GAME_MODE_1 && meter_count > mMeterCount) {
                field_0x153c = true;
            }
            mMeterCount = meter_count;

            if (mRiverPathIdx == mPath.getEndIdx()) {
                angle.x = 0x1000;
                angle.y = -0x4000;
                angle.z = current.angle.z;
            } else {
                angle.x = cLib_targetAngleX(&pos, &current.pos);
                angle.y = cLib_targetAngleY(&current.pos, &pos);
                angle.z = current.angle.z;
            }

            if (mGameMode == GAME_MODE_1 && ivar8 != mRiverPathIdx) {
                createRuppi();
            }
        }

        cXyz vec = field_0x1500 - player->current.pos;
        f32 target_speed = vec.abs();
        if (target_speed < daNpc_zrA_Param_c::m.mSwimSpeed) {
            target_speed = daNpc_zrA_Param_c::m.mSwimSpeed;
        } else {
            target_speed *= 1.4f;
        }

        if ((player->current.pos - current.pos).absXZ() < 500.0f) {
            angle.x += 0x1000;
        }

        if (field_0x153c) {
            if (target_speed < 3.0f * daNpc_zrA_Param_c::m.mSwimSpeed) {
                target_speed = 3.0f * daNpc_zrA_Param_c::m.mSwimSpeed;
            }
            target_speed *= 1.2f;
        } else if (mRiverPathIdx >= mPath.getIdx()) {
            f32 player_dst = mPath.chkPassDst(mRiverPathIdx, player->current.pos);
            f32 dst = mPath.chkPassDst(mRiverPathIdx, current.pos);
            if (dst - player_dst > 5000.0f) {
                target_speed = 0.0f;
            } else if (dst - player_dst > 3500.0f) {
                target_speed *= 0.4f;
            } else if (dst - player_dst > 3000.0f) {
                target_speed *= 0.8f;
            }

            if (target_speed == 0.0f) {
                angle.x = cLib_targetAngleX(&player->current.pos, &current.pos);
                angle.y = cLib_targetAngleY(&current.pos, &player->current.pos);
            }
        }

        field_0x1500 = player->current.pos;
        cLib_addCalc2(&mSwimSpeedF, target_speed, 0.25f, 4.0f);
        calcSwimAngle(angle, mSwimAngleCalc, angle_scale, angle_step);
        swim_speed.set(0.0f, 0.0f, mSwimSpeedF);
        calcSwimPos(swim_speed);

        f32 play_speed = mpMorf->getPlaySpeed();
        if (target_speed != 0.0f) {
            f32 target_play_speed =
                cLib_minMaxLimit((mSwimSpeedF - vec.abs()) / 25.0f, 0.0f, 1.3f) + 0.7f;
            cLib_addCalc2(&play_speed, target_play_speed, 0.2f, 0.05f);
        } else {
            cLib_addCalc2(&play_speed, 1.7f, 0.2f, 0.05f);
        }
        mpMorf->setPlaySpeed(play_speed);

        if (!field_0x153c && mAcch.ChkWaterHit()
            && current.pos.y > water_height - daNpc_zrA_Param_c::m.mMinDepth)
        {
            current.pos.y = water_height - daNpc_zrA_Param_c::m.mMinDepth;
        }

        calcBank(angle_step, angle_scale, angle.y, angle.z);
        current.angle.z = angle.z;
        shape_angle = mCurAngle = current.angle;
        break;
    }

    case 3:
        break;
    }

    return true;
}

/* 80B85B14-80B8601C 00D6F4 0508+00 2/0 0/0 0/0 .text            swimRiverDescend2__11daNpc_zrA_cFPv
 */
BOOL daNpc_zrA_c::swimRiverDescend2(void* param_0) {
    cXyz pos, swim_speed;
    s16 angle_step = daNpc_zrA_Param_c::m.mSwimAngleSpeed;
    f32 water_height = mAcch.m_wtr.GetHeight();

    switch (mMode) {
    case 0:
        gravity = 0.0f;
        speed.setall(0.0f);
        speedF = 0.0f;
        field_0x153d = false;
        setExpressionAnm(ANM_NONE, false);
        if (mActionType == ACT_TYPE_0) {
            setMotion(MOT_SWIM_B, -1.0f, false);
        } else {
            setMotion(MOT_SWIM_A, -1.0f, false);
        }
        mSwimMode = SWIM_RAIL;
        mCcStts.SetWeight(0);
        setLookMode(LOOK_NONE);
        mAttnChangeTimer = 0;
        mTurnMode = 0;
        field_0x153e = false;
        mSwimAngleCalc = current.angle;
        calcWaistAngleInit();
        mMode = 2;
        // fallthrough

    case 2: {
        moveRiverPosCalc(pos);
        cXyz vec(34301.445f, -6541.864f, -24243.617f);
        if ((current.pos - vec).absXZ() < 100.0f) {
            if (mMotion != MOT_FLOAT_B) {
                setExpressionAnm(ANM_NONE, false);
                setMotion(MOT_FLOAT_B, -1.0f, false);
                mActionSelect = 0;
                setAction(&waitRiverDescend);
            }
        } else if (dComIfGs_isSwitch(mSwitch1, fopAcM_GetRoomNo(this))) {
            mOrderEvtNo = EVT_AFTER_BLAST_ZRR;
            mOrderNewEvt = true;
            setExpressionAnm(ANM_NONE, false);
            setMotion(MOT_FLOAT_B, -1.0f, false);
            mActionSelect = 0;
            setAction(&waitRiverDescend);
        } else {
            csXyz angle;
            cLib_chaseF(&mScaleFactor, daNpc_zrA_Param_c::m.mMaxScaleFactor,
                        (daNpc_zrA_Param_c::m.mMaxScaleFactor - 1.0f) / 30.0f);
            
            angle.x = cLib_targetAngleX(&vec, &current.pos);
            angle.y = cLib_targetAngleY(&current.pos, &vec);
            angle.z = current.angle.z;
            cLib_addCalc2(&mSwimSpeedF, 2.0f * daNpc_zrA_Param_c::m.mSwimSpeed, 0.25f, 4.0f);
            calcSwimAngle(angle, mSwimAngleCalc, 6, angle_step);
            
            swim_speed.set(0.0f, 0.0f, mSwimSpeedF);
            calcSwimPos(swim_speed);
            
            f32 play_speed = mpMorf->getPlaySpeed();
            cLib_addCalc2(&play_speed, 1.7f, 0.2f, 0.05f);
            mpMorf->setPlaySpeed(play_speed);

            if (mAcch.ChkWaterHit()
                && current.pos.y > water_height - daNpc_zrA_Param_c::m.mMinDepth)
            {
                current.pos.y = water_height - daNpc_zrA_Param_c::m.mMinDepth;
            }

            calcBank(angle_step, 6, angle.y, angle.z);
            current.angle.z = angle.z;
            shape_angle = mCurAngle = current.angle;
        }

        break;
    }

    case 3:
        break;
    }

    return true;
}

/* 80B8601C-80B86440 00DBFC 0424+00 4/0 0/0 0/0 .text            diveRiverDescend__11daNpc_zrA_cFPv
 */
BOOL daNpc_zrA_c::diveRiverDescend(void* param_0) {
    s16 angle_step = daNpc_zrA_Param_c::m.mSwimAngleSpeed * 2;

    switch (mMode) {
    case 0:
        setExpressionAnm(ANM_NONE, false);
        if (mActionType == ACT_TYPE_0) {
            setMotion(MOT_DIVE_B_SWIM_B, -1.0f, false);
        } else {
            setMotion(MOT_DIVE_B_SWIM_A, -1.0f, false);
        }
        mSwimMode = SWIM_3;
        mCcStts.SetWeight(0);
        setLookMode(LOOK_NONE);
        mSwimAngleCalc = current.angle;
        mMode = 2;
        // fallthrough

    case 2: {
        cLib_chaseF(&mScaleFactor, daNpc_zrA_Param_c::m.mMaxScaleFactor,
                    (daNpc_zrA_Param_c::m.mMaxScaleFactor - 1.0f) / 30.0f);
        cXyz pos;
        csXyz angle;
        mPath.getDstPos(current.pos, pos);
        angle.x = cLib_targetAngleX(&pos, &current.pos);
        angle.y = cLib_targetAngleY(&current.pos, &pos);
        angle.z = current.angle.z;
        calcSwimAngle(angle, mSwimAngleCalc, 3, angle_step);
        shape_angle = mCurAngle = current.angle;

        f32 frame = mpMorf->getFrame();
        cXyz dive_speed(0.0f, 0.0f, 0.0f);
        if (mBaseMotionAnm == ANM_DIVE_B) {
            if (frame <= 3.0f) {
                dive_speed.set(0.0f, 0.0f, 0.0f);
            } else if (frame <= 6.0f) {
                dive_speed.set(0.0f, 14.0f, 0.0f);
            } else if (frame <= 9.0f) {
                dive_speed.set(0.0f, 3.0f, 8.5f);
            } else if (frame <= 13.0f) {
                dive_speed.set(0.0f, -9.25f, 4.5f);
            } else if (frame <= 20.0f) {
                dive_speed.set(0.0f, -14.0f, 2.5f);
            } else {
                dive_speed.set(0.0f, 0.0f, 6.25f);
            }
        }
        mDoMtx_stack_c::ZXYrotS(current.angle);
        mDoMtx_stack_c::multVec(&dive_speed, &dive_speed);
        current.pos += dive_speed;

        if (mGameMode == GAME_MODE_1 && field_0x15c0 == 1
            && dComIfGs_isSwitch(mSwitch1, fopAcM_GetRoomNo(this)))
        {
            setExpressionAnm(ANM_NONE, false);
            setMotion(MOT_FLOAT_B, -1.0f, false);
            mOrderEvtNo = EVT_AFTER_BLAST_ZRR;
            mOrderNewEvt = true;
            mActionSelect = 0;
            setAction(&waitRiverDescend);
        } else if (mBaseMotionAnm == ANM_SWIM_A || mBaseMotionAnm == ANM_SWIM_B) {
            if (mGameMode == GAME_MODE_1 && field_0x15c0 == 1) {
                mActionSelect = 6;
                setAction(&swimRiverDescend2);
            } else {
                mActionSelect = 1;
                setAction(&swimRiverDescend);
            }
        }

        break;
    }

    case 3:
        break;
    }

    return true;
}

/* 80B86440-80B86A2C 00E020 05EC+00 2/0 0/0 0/0 .text swimGoalRiverDescend__11daNpc_zrA_cFPv */
// NONMATCHING stack ordering
BOOL daNpc_zrA_c::swimGoalRiverDescend(void* param_0) {
    daPy_py_c* player;
    cXyz pos, swim_speed;
    s16 angle_step = daNpc_zrA_Param_c::m.mSwimAngleSpeed;

    switch (mMode) {
    case 0:
        setExpressionAnm(ANM_NONE, false);
        if (mActionType == ACT_TYPE_0) {
            setMotion(MOT_SWIM_B, -1.0f, false);
        } else {
            setMotion(MOT_SWIM_A, -1.0f, false);
        }
        mSwimMode = SWIM_RAIL;
        mCcStts.SetWeight(0);
        setLookMode(LOOK_NONE);
        mSwimAngleCalc = current.angle;
        calcWaistAngleInit();
        field_0x1500 = daPy_getPlayerActorClass()->current.pos;
        mSwimSpeedF = daNpc_zrA_Param_c::m.mSwimSpeed;
        mMode = 2;
        // fallthrough

    case 2:
        player = daPy_getPlayerActorClass();
        cLib_chaseF(&mScaleFactor, daNpc_zrA_Param_c::m.mMaxScaleFactor,
                    (daNpc_zrA_Param_c::m.mMaxScaleFactor - 1.0f) / 30.0f);
        if (player->current.pos.y < -14100.0f) {
            if (!daNpcF_chkEvtBit(0x60)) {
                mOrderEvtNo = EVT_THANKS_BLAST;
            } else if (dMeter2Info_getNowCount() >= 30) {
                dComIfGs_onSwitch(mSwitch1, fopAcM_GetRoomNo(this));
                dComIfGs_onSwitch(mSwitch2, fopAcM_GetRoomNo(this));
                mOrderEvtNo = EVT_THANKS_BLAST;
            } else if (dMeter2Info_getNowCount() >= 25) {
                dComIfGs_onSwitch(mSwitch1, fopAcM_GetRoomNo(this));
                mOrderEvtNo = EVT_THANKS_BLAST;
            } else {
                mOrderEvtNo = EVT_RESULT_ANNOUNCE;
            }
        } else {
            mPath.getDstPos(current.pos, pos);
            f32 target_speed;
            cXyz vec;
            if (mPath.getIdx() != mPath.getNextIdx()) {
                vec = field_0x1500 - player->current.pos;
                target_speed = vec.abs() * 1.2f;
                if (target_speed < daNpc_zrA_Param_c::m.mSwimSpeed) {
                    target_speed = daNpc_zrA_Param_c::m.mSwimSpeed;
                }
            } else {
                target_speed = 0.0f;
                if (mSwimSpeedF < 10.0f) {
                    pos = player->current.pos;
                }
            }
            field_0x1500 = player->current.pos;
            cLib_addCalc2(&mSwimSpeedF, target_speed, 0.3f, 5.0f);

            csXyz angle;
            angle.x = cLib_targetAngleX(&pos, &current.pos);
            angle.y = cLib_targetAngleY(&current.pos, &pos);
            angle.z = current.angle.z;
            calcSwimAngle(angle, mSwimAngleCalc, 3, angle_step);

            swim_speed.set(0.0f, 0.0f, mSwimSpeedF);
            calcSwimPos(swim_speed);

            f32 play_speed = mpMorf->getPlaySpeed();
            //!@bug vec is used here despite not being initialized in all code paths
            f32 target_play_speed =
                cLib_minMaxLimit((mSwimSpeedF - vec.abs()) / 25.0f, 0.0f, 1.3f) + 0.7f;
            cLib_addCalc2(&play_speed, target_play_speed, 0.2f, 0.1f);
            mpMorf->setPlaySpeed(play_speed);

            calcBank(angle_step, 3, angle.y, angle.z);
            current.angle.z = angle.z;
            shape_angle = mCurAngle = current.angle;
        }
        
        break;

    case 3:
        break;
    }

    return true;
}

/* 80B86A2C-80B86D9C 00E60C 0370+00 2/0 0/0 0/0 .text returnRiverDescend__11daNpc_zrA_cFPv */
BOOL daNpc_zrA_c::returnRiverDescend(void* param_0) {
    cXyz pos, swim_speed;
    s16 angle_step = daNpc_zrA_Param_c::m.mSwimAngleSpeed;
    f32 swim_speed_scale = mSwimSpeedScale;

    switch (mMode) {
    case 0:
        mMode = 2;
        // fallthrough

    case 2:
        if (mPath.getDstPos(current.pos, pos) && mPath.getIdx() == mPath.getNextIdx()) {
            mPath.reverse();
            fopAcM_delete(mActorMngr[2].getActorP());
            fopAcM_delete(this);
            return true;
        } else {
            csXyz angle;
            angle.x = cLib_targetAngleX(&pos, &current.pos);
            angle.y = cLib_targetAngleY(&current.pos, &pos);
            angle.z = current.angle.z;
            s16 angle_diff_x = angle.x - current.angle.x;
            s16 angle_diff_y = angle.y - current.angle.y;
            bool bvar4 = false;

            if (mActionType != ACT_TYPE_0
                && (abs(angle_diff_x) > 0x3000 || abs(angle_diff_y) > 0x3000)
                && mSwimSpeedF > 14.0f)
            {
                f32 frame = mpMorf->getFrame();
                if ((angle.z <= 0x2000 || angle_diff_y >= 0)
                    && (angle.z >= -0x2000 || angle_diff_y <= 0))
                {
                    if (angle_diff_x < -0x3000) {
                        if (frame >= 2.0f && frame <= 4.0f) {
                            bvar4 = true;
                        }
                    } else {
                        if (frame >= 16.0f && frame <= 18.0f) {
                            mpMorf->setFrame(18.0f);
                            mpMorf->setMorf(2.0f);
                            mpMorf->setPlaySpeed(0.1f);
                            bvar4 = true;
                        }
                    }
                }

                if (bvar4) {
                    calcSwimAngle(angle, mSwimAngleCalc, 4, angle_step);
                } else {
                    calcSwimAngle(angle, mSwimAngleCalc, 8, angle_step / 2);
                }
            } else {
                calcSwimAngle(angle, mSwimAngleCalc, 8, angle_step);
            }

            cLib_addCalc2(&mSwimSpeedF, swim_speed_scale * daNpc_zrA_Param_c::m.mSwimSpeed,
                          0.2f, 3.0f);
            swim_speed.set(0.0f, 0.0f, mSwimSpeedF);
            calcSwimPos(swim_speed);

            if (mAcch.ChkWaterHit()) {
                current.pos.y = mAcch.m_wtr.GetHeight() - daNpc_zrA_Param_c::m.mMinDepth;
            }

            if (!bvar4) {
                f32 play_speed = mpMorf->getPlaySpeed();
                cLib_addCalc2(&play_speed, mSwimSpeedF / daNpc_zrA_Param_c::m.mSwimAnmRate,
                              0.2f, 0.1f);
                mpMorf->setPlaySpeed(play_speed);
            }

            calcBank(angle_step, 8, angle.y, angle.z);
            current.angle.z = angle.z;
            shape_angle = mCurAngle = current.angle;
            calcCanoeMove(true);
        }

        break;

    case 3:
        break;
    }

    return true;
}

/* 80B86D9C-80B86E78 00E97C 00DC+00 3/3 0/0 0/0 .text moveRiverPosCalc__11daNpc_zrA_cFR4cXyz */
void daNpc_zrA_c::moveRiverPosCalc(cXyz& o_pos) {
    cXyz pos;
    mPath.getDstPos(daPy_getPlayerActorClass()->current.pos, pos);
    mRiverPathIdx = mPath.getDstPosChase(mRiverPathIdx, current.pos, o_pos);
    f32 water_y;
    if (fopAcM_getWaterY(&o_pos, &water_y)) {
        o_pos.y = water_y - 130.0f;
    } else {
        o_pos.y -= 130.0f;
    }
}

/* 80B86E78-80B86FAC 00EA58 0134+00 1/1 0/0 0/0 .text            createRuppi__11daNpc_zrA_cFv */
void daNpc_zrA_c::createRuppi() {
    int item;
    if (cLib_getRndValue(0, 5) < 4) {
        item = GREEN_RUPEE;
    } else {
        item = BLUE_RUPEE;
    }
    cXyz pos(0.0f, 0.0f, -100.0f);
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(mCurAngle.x, mCurAngle.y, mCurAngle.z);
    mDoMtx_stack_c::multVec(&pos, &pos);
    f32 water_y;
    if (fopAcM_getWaterY(&pos, &water_y)) {
        pos.y = water_y + 50.0f;
    }
    csXyz angle(0, current.angle.y, 0);
    cXyz scl(1.0f, 1.0f, 1.0f);
    f32 speed_f = 0.0f;
    f32 speed_y = 50.0f;
    fopAcM_fastCreateItem(&pos, item, fopAcM_GetRoomNo(this),
                          &angle, &scl, &speed_f, &speed_y, -1, 0, NULL);
}

/* 80B86FAC-80B872F0 00EB8C 0344+00 3/0 0/0 0/0 .text ECut_beforeBlastzrR__11daNpc_zrA_cFi */
BOOL daNpc_zrA_c::ECut_beforeBlastzrR(int i_staffID) {
    dEvent_manager_c& event_manager = dComIfGp_getEventManager();
    BOOL ret = false;
    int prm = -1;
    cXyz player_pos = daPy_getPlayerActorClass()->current.pos;
    cXyz canoe_pos(41744.918f, -6498.715f, -18601.64f);
    daCanoe_c* canoe;
    int* prm_p = dComIfGp_evmng_getMyIntegerP(i_staffID, "prm");
    if (prm_p != NULL) {
        prm = *prm_p;
    }

    if (event_manager.getIsAddvance(i_staffID)) {
        switch (prm) {
        case 0:
            daNpcF_offTmpBit(0xb);
            break;
        case 10:
            initTalk(mFlowID, NULL);
            break;
        case 15:
            break;
        case 20:
            initTalk(mFlowID, NULL);
            break;
        }
    }

    switch (prm) {
    case 0:
        calcWaitSwim(true);
        cLib_addCalcAngleS2(&mCurAngle.y, fopAcM_searchPlayerAngleY(this), 0x20, 0x200);
        setAngle(mCurAngle.y);
        ret = true;
        break;

    case 10:
        if (talkProc(NULL, 1, NULL)) {
            ret = true;
        }
        canoe = (daCanoe_c*)fpcM_Search(s_sub, this);
        if (canoe != NULL) {
            canoe->setPosAndAngle(&canoe_pos, -0x35e8);
        }
        calcWaitSwim(true);
        cLib_addCalcAngleS2(&mCurAngle.y, fopAcM_searchPlayerAngleY(this), 0x20, 0x200);
        setAngle(mCurAngle.y);
        break;

    case 15: {
        canoe = (daCanoe_c*)fpcM_Search(s_sub, this);
        if (canoe != NULL) {
            canoe->setPosAndAngle(&canoe_pos, -0x35e8);
        }
        cXyz target_pos(30895.559f, -6592.8496f, -23170.195f);
        calcWaitSwim(true);
        s16 target_angle = cLib_targetAngleY(&current.pos, &target_pos);
        if (mCurAngle.y != target_angle) {
            if (abs((s16)(mCurAngle.y - target_angle)) > 0x400) {
                mCurAngle.y -= 0x400;
            } else {
                mCurAngle.y = target_angle;
            }
            setAngle(mCurAngle.y);
        } else {
            ret = true;
        }
        break;
    }

    case 20:
        if (talkProc(NULL, 1, NULL)) {
            ret = true;
        }
        canoe = (daCanoe_c*)fpcM_Search(s_sub, this);
        if (canoe != NULL) {
            canoe->setPosAndAngle(&canoe_pos, -0x35e8);
        }
        calcWaitSwim(true);
        break;
    
    default:
        ret = true;
        break;
    }

    return ret;
}

/* 80B872F0-80B87510 00EED0 0220+00 1/0 0/0 0/0 .text            ECut_afterBlastzrR__11daNpc_zrA_cFi
 */
BOOL daNpc_zrA_c::ECut_afterBlastzrR(int i_staffID) {
    dEvent_manager_c& event_manager = dComIfGp_getEventManager();
    BOOL ret = false;
    int prm = -1;
    cXyz player_pos = daPy_getPlayerActorClass()->current.pos;
    cXyz canoe_pos(40944.918f, -6498.715f, -18601.64f);
    daCanoe_c* canoe;
    int* prm_p = dComIfGp_evmng_getMyIntegerP(i_staffID, "prm");
    if (prm_p != NULL) {
        prm = *prm_p;
    }

    if (event_manager.getIsAddvance(i_staffID)) {
        switch (prm) {
        case 0: {
            cXyz target_pos(32651.498f, -5900.219f, -22464.525f);
            setLookMode(LOOK_NONE);
            mTurnMode = 0;
            calcWaistAngleStop();
            field_0x1550 = true;
            mSwimSpeedF = 0.0f;
            mIsTurning = true;
            current.pos.set(34301.445f, -6541.864f, -24243.617f);
            old.pos = current.pos;
            setAngle(cLib_targetAngleY(&current.pos, &target_pos));
            field_0x15c0 = 2;
            break;
        }

        case 10:
            initTalk(mFlowID, NULL);
            break;
        }
    }

    switch (prm) {
    case 0:
    case 10:
        calcWaitSwim(true);
        canoe = (daCanoe_c*)fpcM_Search(s_sub, this);
        if (canoe != NULL) {
            canoe->setPosAndAngle(&canoe_pos, -0x35e8);
        }
        if (prm == 0) {
            ret = true;
        } else {
            if (talkProc(NULL, 1, NULL)) {
                ret = true;
            }
        }
        break;

    default:
        ret = true;
        break;
    }

    return ret;
}

/* 80B87510-80B88B04 00F0F0 15F4+00 1/0 0/0 0/0 .text            ECut_thanksBlast__11daNpc_zrA_cFi
 */
BOOL daNpc_zrA_c::ECut_thanksBlast(int i_staffID) {
    dEvent_manager_c& event_manager = dComIfGp_getEventManager();
    BOOL ret = false;
    int prm = -1;
    s16 angle_step = daNpc_zrA_Param_c::m.mSwimAngleSpeed;
    f32 water_height = mAcch.m_wtr.GetHeight();
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz player_pos = player->current.pos;
    int* prm_p = dComIfGp_evmng_getMyIntegerP(i_staffID, "prm");
    if (prm_p != NULL) {
        prm = *prm_p;
    }

    if (event_manager.getIsAddvance(i_staffID)) {
        switch (prm) {
        case 0:
            daNpcF_offTmpBit(0xb);
            daNpcF_offTmpBit(0xc);
            if (mActionType == ACT_TYPE_0) {
                setMotion(MOT_SWIM_B, -1.0f, false);
            } else {
                setMotion(MOT_SWIM_A, -1.0f, false);
            }
            mTurnMode = 0;
            break;

        case 1:
            if (mActorMngr[2].getActorP() != NULL
                && fopAcM_GetName(mActorMngr[2].getActorP()) == PROC_CANOE)
            {
                static_cast<daCanoe_c*>(mActorMngr[2].getActorP())->setWaterFallDownSe();
            }
            daPy_getPlayerActorClass()->offCanoeSlider();
            if (daNpcF_chkEvtBit(0x60)) {
                dComIfG_TimerDeleteRequest(4);
            } else {
                dComIfG_TimerDeleteRequest(3);
            }
            dMeter2Info_resetMiniGameItem(false);
            break;

        case 10:
            initTalk(mFlowID, NULL);
            break;

        case 20: {
            mPath.onReverse();
            mPath.setIdx(mPath.getEndIdx() - 1);
            cXyz pos1(-77941.7f, -18800.0f - daNpc_zrA_Param_c::m.mMinDepth - 30.0f, 39645.3f);
            cXyz pos2(-78941.7f, -18800.0f - daNpc_zrA_Param_c::m.mMinDepth - 30.0f, 39645.3f);
            current.pos = pos1;
            current.angle.y = cLib_targetAngleY(&pos1, &player_pos);
            setAngle(current.angle.y);
            
            cXyz water_pos = current.pos;
            f32 water_y;
            if (fopAcM_getWaterY(&water_pos, &water_y)) {
                water_pos.y = water_y;
            }

            cXyz offset(0.0f, 0.0f, daNpc_zrA_Param_c::m.field_0xa0);
            csXyz angle(0, cLib_targetAngleY(&pos1, &pos2), 0);
            mDoMtx_stack_c::ZXYrotS(angle);
            mDoMtx_stack_c::transM(offset);
            mDoMtx_stack_c::multVecZero(&field_0x159c[0]);
            field_0x159c[0] += water_pos;
            
            offset.set(0.0f, 0.0f, daNpc_zrA_Param_c::m.field_0xa4);
            mDoMtx_stack_c::ZXYrotS(angle);
            mDoMtx_stack_c::transM(offset);
            mDoMtx_stack_c::multVecZero(&field_0x159c[1]);
            field_0x159c[1] += field_0x159c[0];
            field_0x159c[2] = field_0x159c[1];

            cLib_targetAngleY(&pos2, &pos1);
            static_cast<daCanoe_c*>(mActorMngr[2].getActorP())
                ->setPosAndAngle(&field_0x159c[1], angle.y + 0x8000);
            break;
        }

        case 30:
            initTalk(mFlowID, NULL);
            break;

        case 31: {
            int item_id = 0;
            if (mFlow.getEventId(&item_id) == 1) {
                mItemID = fopAcM_createItemForPresentDemo(&current.pos, item_id,
                                                          0, -1, -1, NULL, NULL);
            }
            field_0x9eb = true;
            break;
        }

        case 40:
            field_0x9eb = false;
            initTalk(mFlowID, NULL);
            break;

        case 50:
            if (mActionType == ACT_TYPE_0) {
                setMotion(MOT_DIVE_B_SWIM_B, -1.0f, false);
            } else {
                setMotion(MOT_DIVE_B_SWIM_A, -1.0f, false);
            }
            break;

        case 60:
            calcWaistAngleInit();
            mEventTimer = 120;
            mSwimAngleCalc = current.angle;
            break;
        }
    }

    switch (prm) {
    case 0:
        if (player_pos.y < -18640.0f) {
            ret = true;
        }
        // fallthrough

    case 1:
        if (mMotion == MOT_SWIM_A || mMotion == MOT_SWIM_B) {
            if (mBaseMotionAnm != ANM_SWIM_A && mBaseMotionAnm != ANM_SWIM_B) {
                break;
            }

            cXyz pos;
            f32 target_speed;
            if (mPath.getIdx() != mPath.getNextIdx()) {
                mPath.getDstPos(current.pos, pos);
                cXyz vec = field_0x1500 - player->current.pos;
                target_speed = vec.abs() * 1.2f;
                if (target_speed < daNpc_zrA_Param_c::m.mSwimSpeed) {
                    target_speed = daNpc_zrA_Param_c::m.mSwimSpeed;
                }
            } else {
                if ((field_0x1500 - player->current.pos).absXZ() < 5.0f) {
                    cXyz vec1(350.0f, 0.0f, 0.0f);
                    cXyz vec2, vec3;
                    mDoMtx_stack_c::YrotS(player->current.angle.y);
                    mDoMtx_stack_c::multVec(&vec1, &vec2);
                    vec3 = player->current.pos - vec2;
                    vec2 += player->current.pos;
                    if ((vec2 - current.pos).absXZ() < (vec3 - current.pos).absXZ()) {
                        pos = vec2;
                    } else {
                        pos = vec3;
                    }
                    if ((player_pos - current.pos).absXZ() > 450.0f) {
                        target_speed = daNpc_zrA_Param_c::m.mSwimSpeed * 1.5f * 1.5f;
                    } else {
                        target_speed = 15.0f;
                        pos = player_pos;
                    }
                } else {
                    target_speed = 0.0f;
                    if (mSwimSpeedF < 10.0f) {
                        pos = player_pos;
                    } else {
                        mPath.getDstPos(current.pos, pos);
                    }
                }
            }

            cLib_addCalc2(&mSwimSpeedF, target_speed, 0.2f, 3.0f);
            f32 play_speed = mpMorf->getPlaySpeed();
            cLib_addCalc2(&play_speed, 1.0f, 0.2f, 0.03f);
            mpMorf->setPlaySpeed(play_speed);

            csXyz angle;
            angle.x = cLib_targetAngleX(&pos, &current.pos);
            angle.y = cLib_targetAngleY(&current.pos, &pos);
            angle.z = current.angle.z;
            current.angle.z = 0;
            calcSwimAngle(angle, mSwimAngleCalc, 8, angle_step);
            calcBank(angle_step, 8, angle.y, angle.z);
            current.angle.z = angle.z;
            shape_angle = mCurAngle = current.angle;
            cXyz swim_speed(0.0f, 0.0f, mSwimSpeedF);
            calcSwimPos(swim_speed);
            if (mAcch.ChkWaterHit()
                && current.pos.y > water_height - daNpc_zrA_Param_c::m.mMinDepth)
            {
                current.pos.y = water_height - daNpc_zrA_Param_c::m.mMinDepth;
            }

            if ((field_0x1500 - player->current.pos).absXZ() < 10.0f
                && (player_pos - current.pos).absXZ() < 400.0f)
            {
                setMotion(MOT_FLOAT_B, -1.0f, false);
                calcWaistAngleStop();
            }
            field_0x1500 = player->current.pos;
        } else {
            calcWaitSwim(true);
            if (mCurAngle.y == fopAcM_searchPlayerAngleY(this)) {
                if (mBaseMotionAnm == ANM_WAIT_SWIM) {
                    if (prm == 1) {
                        ret = true;
                    }
                    mTurnMode = 0;
                }
            } else {
                cLib_chaseAngleS(&mCurAngle.y, fopAcM_searchPlayerAngleY(this),
                                 daNpc_zrA_Param_c::m.mSwimAngleSpeed);
                setAngle(mCurAngle.y);
            }
        }

        break;

    case 10:
        calcWaitSwim(true);
        if (talkProc(NULL, 1, NULL)) {
            ret = true;
        }
        break;

    case 20:
        calcWaitSwim(true);
        calcCanoeMove(false);
        current.angle.y = cLib_targetAngleY(&current.pos, &player_pos);
        setAngle(current.angle.y);
        ret = true;
        break;

    case 30:
    case 40:
        calcWaitSwim(true);
        calcCanoeMove(false);
        if (talkProc(NULL, 1, NULL)) {
            ret = true;
            mSwimAngleCalc = current.angle;
            mSwimSpeedScale = 1.0f;
            mSwimSpeedF = mSwimSpeedScale * daNpc_zrA_Param_c::m.mSwimSpeed;
            setLookMode(LOOK_NONE);
        }
        break;

    case 31:
        field_0x9eb = true;
        ret = true;
        calcWaitSwim(true);
        calcCanoeMove(false);
        break;

    case 50: {
        s16 angle_step = daNpc_zrA_Param_c::m.mSwimAngleSpeed;
        cLib_chaseF(&mScaleFactor, daNpc_zrA_Param_c::m.mMaxScaleFactor,
                    (daNpc_zrA_Param_c::m.mMaxScaleFactor - 1.0f) / 30.0f);
        cXyz pos;
        csXyz angle;
        mPath.getDstPosDst2(current.pos, pos);
        angle.x = cLib_targetAngleX(&pos, &current.pos);
        angle.y = cLib_targetAngleY(&current.pos, &pos);
        angle.z = current.angle.z;
        calcSwimAngle(angle, mSwimAngleCalc, 4, angle_step);
        shape_angle = mCurAngle = current.angle;
        
        f32 frame = mpMorf->getFrame();
        cXyz dive_speed(0.0f, 0.0f, 0.0f);
        if (mBaseMotionAnm == ANM_DIVE_B) {
            if (frame <= 3.0f) {
                dive_speed.set(0.0f, 0.0f, 0.0f);
            } else if (frame <= 6.0f) {
                dive_speed.set(0.0f, 22.0f, 0.0f);
            } else if (frame <= 9.0f) {
                dive_speed.set(0.0f, 6.0f, 8.5f);
            } else if (frame <= 13.0f) {
                dive_speed.set(0.0f, -9.25f, 4.5f);
            } else if (frame <= 20.0f) {
                dive_speed.set(0.0f, -14.0f, 2.5f);
            } else {
                dive_speed.set(0.0f, 0.0f, 6.25f);
            }
        }
        mDoMtx_stack_c::ZXYrotS(current.angle);
        mDoMtx_stack_c::multVec(&dive_speed, &dive_speed);
        current.pos += dive_speed;

        if (mBaseMotionAnm == ANM_SWIM_A || mBaseMotionAnm == ANM_SWIM_B) {
            ret = true;
            if (!calcWaistAngleCheck()) {
                calcWaistAngleInit();
                mSwimSpeedScale = 1.0f;
                mSwimSpeedF = mSwimSpeedScale * daNpc_zrA_Param_c::m.mSwimSpeed;
            }
            cXyz swim_speed(0.0f, 0.0f, mSwimSpeedF);
            calcSwimPos(swim_speed);
        }

        calcCanoeMove(true);
        break;
    }

    case 60: {
        cXyz pos;
        mPath.getDstPos(current.pos, pos);
        f32 water_y;
        if (fopAcM_getWaterY(&current.pos, &water_y) && pos.y > water_y) {
            pos.y = water_y;
        }
        csXyz angle;
        angle.x = cLib_targetAngleX(&pos, &current.pos);
        angle.y = cLib_targetAngleY(&current.pos, &pos);
        angle.z = current.angle.z;
        current.angle.z = 0;
        calcSwimAngle(angle, mSwimAngleCalc, 8, angle_step);
        calcBank(angle_step, 8, angle.y, angle.z);
        current.angle.z = angle.z;
        shape_angle = mCurAngle = current.angle;
        cXyz swim_speed(0.0f, 0.0f, mSwimSpeedF);
        calcSwimPos(swim_speed);
        if (mAcch.ChkWaterHit() && current.pos.y > water_y - daNpc_zrA_Param_c::m.mMinDepth) {
            current.pos.y = water_y - daNpc_zrA_Param_c::m.mMinDepth;
        }
        calcCanoeMove(true);
        if (cLib_calcTimer(&mEventTimer) == 0) {
            ret = true;
        }
        break;
    }

    default:
        ret = true;
        break;
    }

    return ret;
}

/* 80B88B04-80B8A064 0106E4 1560+00 1/0 0/0 0/0 .text ECut_resultAnnounce__11daNpc_zrA_cFi */
BOOL daNpc_zrA_c::ECut_resultAnnounce(int i_staffID) {
    dEvent_manager_c& event_manager = dComIfGp_getEventManager();
    BOOL ret = false;
    int prm = -1;
    s16 angle_step = daNpc_zrA_Param_c::m.mSwimAngleSpeed;
    f32 water_height = mAcch.m_wtr.GetHeight();
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz player_pos = player->current.pos;
    int* prm_p = dComIfGp_evmng_getMyIntegerP(i_staffID, "prm");
    if (prm_p != NULL) {
        prm = *prm_p;
    }

    if (event_manager.getIsAddvance(i_staffID)) {
        switch (prm) {
        case 0:
            daNpcF_offTmpBit(0xb);
            daNpcF_offTmpBit(0xc);
            if (mActionType == ACT_TYPE_0) {
                setMotion(MOT_SWIM_B, -1.0f, false);
            } else {
                setMotion(MOT_SWIM_A, -1.0f, false);
            }
            mTurnMode = 0;
            break;

        case 1:
            if (mActorMngr[2].getActorP() != NULL
                && fopAcM_GetName(mActorMngr[2].getActorP()) == PROC_CANOE)
            {
                static_cast<daCanoe_c*>(mActorMngr[2].getActorP())->setWaterFallDownSe();
            }
            daPy_getPlayerActorClass()->offCanoeSlider();
            dComIfG_TimerDeleteRequest(4);
            dMeter2Info_resetMiniGameItem(false);
            break;

        case 10:
            initTalk(mFlowID, NULL);
            break;

        case 20: {
            mPath.onReverse();
            mPath.setIdx(mPath.getEndIdx() - 1);
            cXyz pos1(-77941.7f, -18800.0f - daNpc_zrA_Param_c::m.mMinDepth - 30.0f, 39645.3f);
            cXyz pos2(-78941.7f, -18800.0f - daNpc_zrA_Param_c::m.mMinDepth - 30.0f, 39645.3f);
            current.pos = pos1;
            current.angle.y = cLib_targetAngleY(&pos1, &player_pos);
            setAngle(current.angle.y);
            
            cXyz water_pos = current.pos;
            f32 water_y;
            if (fopAcM_getWaterY(&water_pos, &water_y)) {
                water_pos.y = water_y;
            }

            cXyz offset(0.0f, 0.0f, daNpc_zrA_Param_c::m.field_0xa0);
            csXyz angle(0, cLib_targetAngleY(&pos1, &pos2), 0);
            mDoMtx_stack_c::ZXYrotS(angle);
            mDoMtx_stack_c::transM(offset);
            mDoMtx_stack_c::multVecZero(&field_0x159c[0]);
            field_0x159c[0] += water_pos;
            
            offset.set(0.0f, 0.0f, daNpc_zrA_Param_c::m.field_0xa4);
            mDoMtx_stack_c::ZXYrotS(angle);
            mDoMtx_stack_c::transM(offset);
            mDoMtx_stack_c::multVecZero(&field_0x159c[1]);
            field_0x159c[1] += field_0x159c[0];
            field_0x159c[2] = field_0x159c[1];

            cLib_targetAngleY(&pos2, &pos1);
            static_cast<daCanoe_c*>(mActorMngr[2].getActorP())
                ->setPosAndAngle(&field_0x159c[1], angle.y + 0x8000);
            dComIfGp_event_offHindFlag(0x80);
            break;
        }

        case 30:
            initTalk(mFlowID, NULL);
            break;

        case 40:
            if (mActionType == ACT_TYPE_0) {
                setMotion(MOT_DIVE_B_SWIM_B, -1.0f, false);
            } else {
                setMotion(MOT_DIVE_B_SWIM_A, -1.0f, false);
            }
            break;

        case 50:
            calcWaistAngleInit();
            mEventTimer = 120;
            mSwimAngleCalc = current.angle;
            break;
        }
    }

    switch (prm) {
    case 0:
        if (player_pos.y < -18640.0f) {
            ret = true;
        }
        // fallthrough

    case 1:
        if (mMotion == MOT_SWIM_A || mMotion == MOT_SWIM_B) {
            if (mBaseMotionAnm != ANM_SWIM_A && mBaseMotionAnm != ANM_SWIM_B) {
                break;
            }

            cXyz pos;
            f32 target_speed;
            if (mPath.getIdx() != mPath.getNextIdx()) {
                mPath.getDstPos(current.pos, pos);
                cXyz vec = field_0x1500 - player->current.pos;
                target_speed = vec.abs() * 1.2f;
                if (target_speed < daNpc_zrA_Param_c::m.mSwimSpeed) {
                    target_speed = daNpc_zrA_Param_c::m.mSwimSpeed;
                }
            } else {
                if ((field_0x1500 - player->current.pos).absXZ() < 5.0f) {
                    cXyz vec1(350.0f, 0.0f, 0.0f);
                    cXyz vec2, vec3;
                    mDoMtx_stack_c::YrotS(player->current.angle.y);
                    mDoMtx_stack_c::multVec(&vec1, &vec2);
                    vec3 = player->current.pos - vec2;
                    vec2 += player->current.pos;
                    if ((vec2 - current.pos).absXZ() < (vec3 - current.pos).absXZ()) {
                        pos = vec2;
                    } else {
                        pos = vec3;
                    }
                    if ((player_pos - current.pos).absXZ() > 450.0f) {
                        target_speed = daNpc_zrA_Param_c::m.mSwimSpeed * 1.5f * 1.5f;
                    } else {
                        target_speed = 15.0f;
                        pos = player_pos;
                    }
                } else {
                    target_speed = 0.0f;
                    if (mSwimSpeedF < 10.0f) {
                        pos = player_pos;
                    } else {
                        mPath.getDstPos(current.pos, pos);
                    }
                }
            }

            cLib_addCalc2(&mSwimSpeedF, target_speed, 0.2f, 3.0f);
            f32 play_speed = mpMorf->getPlaySpeed();
            cLib_addCalc2(&play_speed, 1.0f, 0.2f, 0.03f);
            mpMorf->setPlaySpeed(play_speed);

            csXyz angle;
            angle.x = cLib_targetAngleX(&pos, &current.pos);
            angle.y = cLib_targetAngleY(&current.pos, &pos);
            angle.z = current.angle.z;
            current.angle.z = 0;
            calcSwimAngle(angle, mSwimAngleCalc, 8, angle_step);
            calcBank(angle_step, 8, angle.y, angle.z);
            current.angle.z = angle.z;
            shape_angle = mCurAngle = current.angle;
            cXyz swim_speed(0.0f, 0.0f, mSwimSpeedF);
            calcSwimPos(swim_speed);
            if (mAcch.ChkWaterHit()
                && current.pos.y > water_height - daNpc_zrA_Param_c::m.mMinDepth)
            {
                current.pos.y = water_height - daNpc_zrA_Param_c::m.mMinDepth;
            }

            if ((field_0x1500 - player->current.pos).absXZ() < 10.0f
                && (player_pos - current.pos).absXZ() < 400.0f)
            {
                setMotion(MOT_FLOAT_B, -1.0f, false);
                calcWaistAngleStop();
            }
            field_0x1500 = player->current.pos;
        } else {
            calcWaitSwim(true);
            if (mCurAngle.y == fopAcM_searchPlayerAngleY(this)) {
                if (mBaseMotionAnm == ANM_WAIT_SWIM) {
                    if (prm == 1) {
                        ret = true;
                    }
                    mTurnMode = 0;
                }
            } else {
                cLib_chaseAngleS(&mCurAngle.y, fopAcM_searchPlayerAngleY(this),
                                 daNpc_zrA_Param_c::m.mSwimAngleSpeed);
                setAngle(mCurAngle.y);
            }
        }

        break;

    case 10:
        calcWaitSwim(true);
        if (talkProc(NULL, 1, NULL)) {
            ret = true;
        }
        break;

    case 20:
        calcWaitSwim(true);
        calcCanoeMove(false);
        current.angle.y = cLib_targetAngleY(&current.pos, &player_pos);
        setAngle(current.angle.y);
        ret = true;
        break;

    case 30:
        calcWaitSwim(true);
        calcCanoeMove(false);
        if (talkProc(NULL, 1, NULL)) {
            if (dComIfGs_isSaveDunSwitch(0x3e)) {
                dStage_changeScene(0xf, 0.0f, 0, fopAcM_GetRoomNo(this), 0, -1);
            } else {
                ret = true;
                mSwimAngleCalc = current.angle;
                mSwimSpeedScale = 1.0f;
                mSwimSpeedF = mSwimSpeedScale * daNpc_zrA_Param_c::m.mSwimSpeed;
                setLookMode(LOOK_NONE);
            }
        }
        break;

    case 40: {
        s16 angle_step = daNpc_zrA_Param_c::m.mSwimAngleSpeed;
        cLib_chaseF(&mScaleFactor, daNpc_zrA_Param_c::m.mMaxScaleFactor,
                    (daNpc_zrA_Param_c::m.mMaxScaleFactor - 1.0f) / 30.0f);
        cXyz pos;
        csXyz angle;
        mPath.getDstPosDst2(current.pos, pos);
        angle.x = cLib_targetAngleX(&pos, &current.pos);
        angle.y = cLib_targetAngleY(&current.pos, &pos);
        angle.z = current.angle.z;
        calcSwimAngle(angle, mSwimAngleCalc, 4, angle_step);
        shape_angle = mCurAngle = current.angle;
        
        f32 frame = mpMorf->getFrame();
        cXyz dive_speed(0.0f, 0.0f, 0.0f);
        if (mBaseMotionAnm == ANM_DIVE_B) {
            if (frame <= 3.0f) {
                dive_speed.set(0.0f, 0.0f, 0.0f);
            } else if (frame <= 6.0f) {
                dive_speed.set(0.0f, 22.0f, 0.0f);
            } else if (frame <= 9.0f) {
                dive_speed.set(0.0f, 6.0f, 8.5f);
            } else if (frame <= 13.0f) {
                dive_speed.set(0.0f, -9.25f, 4.5f);
            } else if (frame <= 20.0f) {
                dive_speed.set(0.0f, -14.0f, 2.5f);
            } else {
                dive_speed.set(0.0f, 0.0f, 6.25f);
            }
        }
        mDoMtx_stack_c::ZXYrotS(current.angle);
        mDoMtx_stack_c::multVec(&dive_speed, &dive_speed);
        current.pos += dive_speed;

        if (mBaseMotionAnm == ANM_SWIM_A || mBaseMotionAnm == ANM_SWIM_B) {
            ret = true;
            if (!calcWaistAngleCheck()) {
                calcWaistAngleInit();
                mSwimSpeedScale = 1.0f;
                mSwimSpeedF = mSwimSpeedScale * daNpc_zrA_Param_c::m.mSwimSpeed;
            }
            cXyz swim_speed(0.0f, 0.0f, mSwimSpeedF);
            calcSwimPos(swim_speed);
        }

        calcCanoeMove(true);
        break;
    }

    case 50: {
        cXyz pos;
        mPath.getDstPos(current.pos, pos);
        f32 water_y;
        if (fopAcM_getWaterY(&current.pos, &water_y) && pos.y > water_y) {
            pos.y = water_y;
        }
        csXyz angle;
        angle.x = cLib_targetAngleX(&pos, &current.pos);
        angle.y = cLib_targetAngleY(&current.pos, &pos);
        angle.z = current.angle.z;
        current.angle.z = 0;
        calcSwimAngle(angle, mSwimAngleCalc, 8, angle_step);
        calcBank(angle_step, 8, angle.y, angle.z);
        current.angle.z = angle.z;
        shape_angle = mCurAngle = current.angle;
        cXyz swim_speed(0.0f, 0.0f, mSwimSpeedF);
        calcSwimPos(swim_speed);
        if (mAcch.ChkWaterHit() && current.pos.y > water_y - daNpc_zrA_Param_c::m.mMinDepth) {
            current.pos.y = water_y - daNpc_zrA_Param_c::m.mMinDepth;
        }
        calcCanoeMove(true);
        if (cLib_calcTimer(&mEventTimer) == 0) {
            ret = true;
        }
        break;
    }

    default:
        ret = true;
        break;
    }

    return ret;
}

/* 80B8A064-80B8A3CC 011C44 0368+00 3/3 0/0 0/0 .text            calcCanoeMove__11daNpc_zrA_cFi */
void daNpc_zrA_c::calcCanoeMove(BOOL param_0) {
    csXyz angle;
    cXyz vec;
    cXyz water_pos = current.pos;
    f32 water_y;
    if (fopAcM_getWaterY(&water_pos, &water_y)) {
        water_pos.y = water_y;
    }
    
    angle.x = cLib_targetAngleX(&field_0x159c[0], &water_pos);
    angle.y = cLib_targetAngleY(&water_pos, &field_0x159c[0]);
    angle.z = 0;

    vec.set(0.0f, 0.0f, daNpc_zrA_Param_c::m.field_0xa0);
    mDoMtx_stack_c::ZXYrotS(angle);
    mDoMtx_stack_c::multVec(&vec, &field_0x159c[0]);
    field_0x159c[0] += water_pos;
    if (fopAcM_getWaterY(&field_0x159c[0], &water_y)) {
        field_0x159c[0].y = water_y;
    }

    angle.x = cLib_targetAngleX(&field_0x159c[1], &field_0x159c[0]);
    angle.y = cLib_targetAngleY(&field_0x159c[0], &field_0x159c[1]);

    vec.set(0.0f, 0.0f, daNpc_zrA_Param_c::m.field_0xa4);
    mDoMtx_stack_c::ZXYrotS(angle);
    mDoMtx_stack_c::multVec(&vec, &field_0x159c[1]);
    field_0x159c[1] += field_0x159c[0];
    if (fopAcM_getWaterY(&field_0x159c[1], &water_y)) {
        field_0x159c[1].y = water_y;
    }

    if (param_0) {
        f32 fvar2 = (water_pos - field_0x159c[2]).abs();
        (water_pos - field_0x159c[1]).abs();
        if (fvar2 > daNpc_zrA_Param_c::m.field_0xa0 + daNpc_zrA_Param_c::m.field_0xa4)
        {
            cLib_addCalcPos2(&field_0x159c[2], field_0x159c[1], 0.2f, mSwimSpeedF * 1.2f);
            if (fopAcM_getWaterY(&field_0x159c[2], &water_y)) {
                field_0x159c[2].y = water_y;
            }
        }
    } else {
        field_0x159c[2] = field_0x159c[1];
    }

    static_cast<daCanoe_c*>(mActorMngr[2].getActorP())
        ->setPosAndAngle(&field_0x159c[2], angle.y + 0x8000);
}

/* 80B8A3CC-80B8A43C 011FAC 0070+00 1/1 0/0 0/0 .text            s_subMark__FPvPv */
static void* s_subMark(void* i_proc, void* i_this) {
    if (fopAc_IsActor(i_proc) && fopAcM_GetName(i_proc) == PROC_ZRA_MARK) {
        daObjZraMark_c* zra_mark = static_cast<daObjZraMark_c*>(i_proc);
        daNpc_zrA_c* _this = static_cast<daNpc_zrA_c*>(i_this);
        if (zra_mark->getMarkNo() == _this->getNoFromParam()) {
            return i_proc;
        }
    }
    return NULL;
}

/* 80B8A43C-80B8A54C 01201C 0110+00 1/0 0/0 0/0 .text            tobiSearch__11daNpc_zrA_cFPv */
BOOL daNpc_zrA_c::tobiSearch(void* param_0) {
    daObjZraMark_c* zra_mark;
    
    switch (mMode) {
    case 0:
        mAcch.SetGrndNone();
        mAcch.SetWallNone();
        setExpression(EXPR_NONE, -1.0f);
        setMotion(MOT_WAIT_A, -1.0f, false);
        setLookMode(LOOK_NONE);
        mActionSelect = 0;
        mCcStts.SetWeight(0);
        mMode = 2;
        // fallthrough

    case 2:
        zra_mark = (daObjZraMark_c*)fpcM_Search(s_subMark, this);
        if (zra_mark != NULL) {
            zra_mark->entryPointer(this);
            setAction(&tobiWait);
        }
        break;

    case 3:
        break;
    }

    return true;
}

/* 80B8A54C-80B8A648 01212C 00FC+00 2/0 0/0 0/0 .text            tobiWait__11daNpc_zrA_cFPv */
BOOL daNpc_zrA_c::tobiWait(void* param_0) {
    switch (mMode) {
    case 0:
        setExpression(EXPR_NONE, -1.0f);
        setMotion(MOT_WAIT_A, -1.0f, false);
        setLookMode(LOOK_NONE);
        mAttnChangeTimer = 0;
        mTurnMode = 0;
        mActionSelect = 1;
        mMode = 2;
        // fallthrough

    case 2:
        if (mCcCyl.ChkTgHit() || mBlastFlag) {
            setAction(&tobikomi1);
        }
        break;

    case 3:
        break;
    }

    return true;
}

/* 80B8A648-80B8A7F8 012228 01B0+00 2/0 0/0 0/0 .text            tobikomi1__11daNpc_zrA_cFPv */
BOOL daNpc_zrA_c::tobikomi1(void* param_0) {
    switch (mMode) {
    case 0:
        setExpression(EXPR_NONE, -1.0f);
        setMotion(MOT_TOBIKOMI_S, -1.0f, false);
        mActionSelect = 2;
        mMode = 2;
        // fallthrough

    case 2:
        if (mBaseMotionAnm == MOT_FLOAT_B) {
            if (mpMorf->isStop()) {
                cXyz vec(-1.68f, -7.99f, 206.37f);
                mDoMtx_stack_c::YrotS(mCurAngle.y);
                mDoMtx_stack_c::multVec(&vec, &vec);
                current.pos += vec;
                old.pos = current.pos;
                setAction(&tobikomi2);
            } else {
                s16 angle_y = home.angle.y;
                if (getAngleNoFromParam() == 1) {
                    angle_y -= 0x2000;
                } else if (getAngleNoFromParam() == 2) {
                    angle_y += 0x2000;
                }
                cLib_chaseAngleS(&mCurAngle.y, angle_y, 0x800);
                setAngle(mCurAngle.y);
            }
        }
        break;

    case 3:
        break;
    }

    return true;
}

/* 80B8A7F8-80B8AA1C 0123D8 0224+00 2/0 0/0 0/0 .text            tobikomi2__11daNpc_zrA_cFPv */
BOOL daNpc_zrA_c::tobikomi2(void* param_0) {
    f32 water_y;

    switch (mMode) {
    case 0:
        setExpression(EXPR_NONE, -1.0f);
        setMotion(MOT_TOBIKOMI_T, -1.0f, false);
        mActionSelect = 3;
        mSwimSpeed.set(0.0f, -47.0f, 36.0f);
        mDoMtx_stack_c::YrotS(mCurAngle.y);
        mDoMtx_stack_c::multVec(&mSwimSpeed, &mSwimSpeed);
        mMode = 2;
        // fallthrough

    case 2:
        if (fopAcM_getWaterY(&current.pos, &water_y)) {
            cXyz head_pos;
            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
            mDoMtx_stack_c::scaleM(scale);
            mDoMtx_stack_c::multVecZero(&head_pos);
            if (head_pos.y <= water_y) {
                cXyz water_pos = head_pos;
                water_pos.y = water_y;
                fopKyM_createWpillar(&water_pos, 2.5f, 0);
                mCreatureSound.startCreatureSound(Z2SE_ZRA_DIVE_SPLASH, 0, -1);
                setExpression(EXPR_NONE, -1.0f);
                setMotion(MOT_TOBIKOMI_E, -1.0f, false);
                setAction(&tobikomi3);
                break;
            }
        }
        mSwimSpeed.y -= 3.0f;
        current.pos += mSwimSpeed;
        break;

    case 3:
        break;
    }

    return true;
}

/* 80B8AA1C-80B8AB78 0125FC 015C+00 2/0 0/0 0/0 .text            tobikomi3__11daNpc_zrA_cFPv */
BOOL daNpc_zrA_c::tobikomi3(void* param_0) {
    switch (mMode) {
    case 0:
        mActionSelect = 4;
        mSwimAngleCalc = current.angle;
        mMode = 2;
        // fallthrough

    case 2: {
        cXyz vec(0.0f, 0.0f, daNpc_zrA_Param_c::m.mSwimSpeed * 1.5f);
        mDoMtx_stack_c::YrotS(mCurAngle.y);
        mDoMtx_stack_c::multVec(&vec, &vec);
        cLib_chasePos(&mSwimSpeed, vec, 25.0f);
        current.pos += mSwimSpeed;
        if (mBaseMotionAnm == ANM_SWIM_A) {
            if (mBlastFlag) {
                setAction(&tobiJump);
            } else {
                setAction(&tobiEnd);
            }
        }
        break;
    }

    case 3:
        break;
    }

    return true;
}

/* 80B8AB78-80B8B1FC 012758 0684+00 2/0 0/0 0/0 .text            tobiJump__11daNpc_zrA_cFPv */
BOOL daNpc_zrA_c::tobiJump(void* param_0) {
    cXyz swim_speed;
    csXyz angle;
    f32 water_y;
    s16 angle_step = daNpc_zrA_Param_c::m.mSwimAngleSpeed * 2;
    s16 angle_scale = 4;

    switch (mMode) {
    case 0:
        mActionSelect = 5;
        mSwimAngleCalc = current.angle;
        mMode = 2;
        // fallthrough

    case 2: {
        cXyz head_pos;
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
        mDoMtx_stack_c::scaleM(scale);
        mDoMtx_stack_c::multVecZero(&head_pos);

        if (field_0x153e) {
            if (mpMorf->getFrame() > 13.0f && mpMorf->getFrame() < 17.0f) {
                f32 play_speed = mpMorf->getPlaySpeed();
                cLib_addCalc2(&play_speed, 0.3f, 0.5f, 0.8f);
                mpMorf->setPlaySpeed(play_speed);
            }

            calcBank(angle_step, angle_scale, current.angle.y, current.angle.z);
            mSwimSpeed.y -= 2.0f;
            current.pos += mSwimSpeed;
            if (current.angle.x < 0x3a00) {
                current.angle.x = -cM_atan2s(mSwimSpeed.y, mSwimSpeed.absXZ());
            }
            shape_angle = mCurAngle = current.angle;

            if (fopAcM_getWaterY(&current.pos, &water_y)) {
                if (mIsAboveWater && head_pos.y + mSwimSpeed.y <= water_y) {
                    cXyz water_pos = head_pos;
                    water_pos.y = water_y;
                    fopKyM_createWpillar(&water_pos, 2.5f, 0);
                    mCreatureSound.startCreatureSound(Z2SE_ZRA_DIVE_SPLASH, 0, -1);
                    mIsAboveWater = false;
                }

                if (current.pos.y <= water_y - daNpc_zrA_Param_c::m.mMinDepth) {
                    setAction(&tobiEnd);
                    mSwimSpeedF = mSwimSpeed.absXZ();
                }
            }
            
            return true;
        } else {
            angle.x = -0x3b00;
            angle.y = current.angle.y;
            angle.z = current.angle.z;

            if (fopAcM_getWaterY(&current.pos, &water_y)) {
                angle_step = daNpc_zrA_Param_c::m.mSwimAngleSpeed * 2;
                angle_scale = 2;
                if (!(head_pos.y < water_y)) {
                    if (!mIsAboveWater) {
                        cXyz water_pos = head_pos;
                        water_pos.y = water_y;
                        fopKyM_createWpillar(&water_pos, 2.5f, 0);
                        mIsAboveWater = true;
                        mCreatureSound.startCreatureSound(Z2SE_ZRA_DIVE_SPLASH_OUT, 0, -1);
                    }

                    if (current.pos.y > water_y) {
                        swim_speed.set(0.0f, 0.0f, mSwimSpeedF);
                        calcSwimPos(swim_speed);
                        mSwimSpeed = swim_speed;
                        field_0x153e = true;
                        return true;
                    }
                }
            }

            calcSwimAngle(angle, mSwimAngleCalc, angle_scale, angle_step);
            cLib_addCalc2(&mSwimSpeedF, 2.0f * daNpc_zrA_Param_c::m.mSwimSpeed, 0.7f, 10.0f);
            swim_speed.set(0.0f, 0.0f, mSwimSpeedF);
            calcSwimPos(swim_speed);
            f32 play_speed = mpMorf->getPlaySpeed();
            cLib_addCalc2(&play_speed, mSwimSpeedF / daNpc_zrA_Param_c::m.mSwimAnmRate, 0.2f, 0.1f);
            mpMorf->setPlaySpeed(play_speed);
            shape_angle = mCurAngle = current.angle;
        }

        break;
    }

    case 3:
        break;
    }

    return true;
}

/* 80B8B1FC-80B8B3A0 012DDC 01A4+00 3/0 0/0 0/0 .text            tobiEnd__11daNpc_zrA_cFPv */
BOOL daNpc_zrA_c::tobiEnd(void* param_0) {
    cXyz swim_speed;
    s16 angle_step = daNpc_zrA_Param_c::m.mSwimAngleSpeed;

    switch (mMode) {
    case 0:
        mActionSelect = 6;
        mMode = 2;
        // fallthrough

    case 2: {
        if (fopAcM_otherBgCheck(this, dComIfGp_getPlayer(0))
            || fopAcM_CheckCondition(this, fopAcCnd_NODRAW_e))
        {
            fopAcM_delete(this);
            return true;
        }

        csXyz angle;
        angle.x = 0x3000;
        angle.y = current.angle.y;
        angle.z = current.angle.z;
        calcSwimAngle(angle, mSwimAngleCalc, 8, angle_step);
        cLib_chaseF(&mSwimSpeedF, daNpc_zrA_Param_c::m.mSwimSpeed,
                    daNpc_zrA_Param_c::m.mSwimSpeed / 3.0f);
        swim_speed.set(0.0f, 0.0f, mSwimSpeedF);
        calcSwimPos(swim_speed);
        f32 play_speed = mpMorf->getPlaySpeed();
        cLib_addCalc2(&play_speed, mSwimSpeedF / daNpc_zrA_Param_c::m.mSwimAnmRate, 0.2f, 0.1f);
        mpMorf->setPlaySpeed(play_speed);
        calcBank(angle_step, 8, angle.y, angle.z);
        current.angle.z = angle.z;
        shape_angle = mCurAngle = current.angle;
    }

    case 3:
        break;
    }

    return true;
}

/* 80B8B3A0-80B8B420 012F80 0080+00 1/1 0/0 0/0 .text            s_subSP__FPvPv */
static void* s_subSP(void* i_proc, void* i_this) {
    if (fopAc_IsActor(i_proc) && fopAcM_GetName(i_proc) == PROC_NPC_ZRA) {
        daNpc_zrA_c* other = static_cast<daNpc_zrA_c*>(i_proc);
        daNpc_zrA_c* _this = static_cast<daNpc_zrA_c*>(i_this);
        if (other->getType() == _this->getType()
            && other->getNoFromParam() != _this->getNoFromParam())
        {
            return other;
        }
    }
    return NULL;
}

/* 80B8B420-80B8B530 013000 0110+00 1/0 0/0 0/0 .text            waitSearch__11daNpc_zrA_cFPv */
BOOL daNpc_zrA_c::waitSearch(void* param_0) {
    switch (mMode) {
    case 0:
        setExpression(EXPR_NONE, -1.0f);
        setMotion(MOT_WAIT_A, -1.0f, false);
        setLookMode(LOOK_NONE);
        mAcch.SetGrndNone();
        mAcch.SetWallNone();
        mMode = 2;
        // fallthrough

    case 2:
        if (mActorMngr[2].getActorP() == NULL) {
            fopAc_ac_c* other = (fopAc_ac_c*)fpcM_Search(s_subSP, this);
            if (other != NULL) {
                mActorMngr[2].entry(other);
            }
        }

        if (dComIfGs_isSwitch(mSwitch1, fopAcM_GetRoomNo(this))) {
            fopAcM_delete(this);
        }
        break;

    case 3:
        break;
    }

    return true;
}

/* 80B8B530-80B8BCE8 013110 07B8+00 1/0 0/0 0/0 .text            ECut_searchPrince1__11daNpc_zrA_cFi
 */
BOOL daNpc_zrA_c::ECut_searchPrince1(int i_staffID) {
    dEvent_manager_c& event_manager = dComIfGp_getEventManager();
    BOOL ret = false;
    int prm = -1;
    fopAc_ac_c* talk_actors[2] = {this, mActorMngr[2].getActorP()};
    f32 water_y;
    int* prm_p = dComIfGp_evmng_getMyIntegerP(i_staffID, "prm");
    if (prm_p != NULL) {
        prm = *prm_p;
    }

    if (event_manager.getIsAddvance(i_staffID)) {
        switch (prm) {
        case 0:
            dComIfGs_onSwitch(mSwitch1, fopAcM_GetRoomNo(this));
            setLookMode(LOOK_ACTOR);
            break;

        case 10:
            initTalk(mFlowID, talk_actors);
            break;

        case 20:
            setLookMode(LOOK_NONE);
            setExpression(EXPR_NONE, -1.0f);
            setMotion(MOT_TOBIKOMI_S, -1.0f, false);
            break;

        case 30:
            mSwimSpeed.set(0.0f, -31.2f, 14.7f);
            mDoMtx_stack_c::YrotS(mCurAngle.y);
            mDoMtx_stack_c::multVec(&mSwimSpeed, &mSwimSpeed);
            break;

        case 40:
            setExpression(EXPR_NONE, -1.0f);
            setMotion(MOT_TOBIKOMI_E, -1.0f, false);
            mSwimAngleCalc = current.angle;
            break;

        case 50:
            break;
        }
    }

    switch (prm) {
    case 0:
        ret = true;
        break;

    case 10:
        if (talkProc(NULL, 0, talk_actors)) {
            ret = true;
        }
        break;

    case 20: {
        if (mBaseMotionAnm == ANM_TOBIKOMI_S) {
            if (mpMorf->isStop()) {
                cXyz dive_speed(-1.68f, -30.0f, 210.37f);
                mDoMtx_stack_c::YrotS(mCurAngle.y);
                mDoMtx_stack_c::multVec(&dive_speed, &dive_speed);
                current.pos += dive_speed;
                old.pos = current.pos;
                setExpression(EXPR_NONE, 0.0f);
                setMotion(MOT_TOBIKOMI_T, 0.0f, false);
                ret = true;
            } else {
                cLib_chaseAngleS(&mCurAngle.y, 0x2dca, 0x200);
                setAngle(mCurAngle.y);
            }
        } else if (mBaseMotionAnm == ANM_TOBIKOMI_T) {
            ret = true;
        }
        cXyz head_pos;
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
        mDoMtx_stack_c::scaleM(scale);
        mDoMtx_stack_c::multVecZero(&head_pos);
        break;
    }

    case 30:
        if (mBaseMotionAnm == ANM_TOBIKOMI_E) {
            ret = true;
        } else if (fopAcM_getWaterY(&current.pos, &water_y)) {
            cXyz head_pos;
            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
            mDoMtx_stack_c::scaleM(scale);
            mDoMtx_stack_c::multVecZero(&head_pos);
            if (head_pos.y <= water_y) {
                cXyz water_pos = head_pos;
                water_pos.y = water_y;
                fopKyM_createWpillar(&water_pos, 2.5f, 0);
                mCreatureSound.startCreatureSound(Z2SE_ZRA_DIVE_SPLASH, 0, -1);
                setExpression(EXPR_NONE, -1.0f);
                setMotion(MOT_TOBIKOMI_E, -1.0f, false);
                ret = true;
                break;
            }
        }
        mSwimSpeed.y -= 3.0f;
        current.pos += mSwimSpeed;
        break;

    case 40: {
        if (mBaseMotionAnm == ANM_SWIM_A) {
            ret = true;
        }
        cXyz swim_speed(0.0f, 0.0f, daNpc_zrA_Param_c::m.mSwimSpeed);
        mDoMtx_stack_c::YrotS(mCurAngle.y);
        mDoMtx_stack_c::multVec(&swim_speed, &swim_speed);
        cLib_chasePos(&mSwimSpeed, swim_speed, 25.0f);
        current.pos += mSwimSpeed;
        break;
    }

    case 50: {
        cXyz pos(-4807.7f, -207.444f, 5109.854f);
        cXyz swim_speed(0.0f, 0.0f, daNpc_zrA_Param_c::m.mSwimSpeed);
        csXyz angle;
        angle.x = cLib_targetAngleX(&pos, &current.pos);
        angle.y = cLib_targetAngleY(&current.pos, &pos);
        angle.z = current.angle.z;
        mpMorf->setPlaySpeed(daNpc_zrA_Param_c::m.mSwimSpeed / daNpc_zrA_Param_c::m.mSwimAnmRate);
        calcSwimAngle(angle, mSwimAngleCalc, 23, daNpc_zrA_Param_c::m.mSwimAngleSpeed / 2);
        calcSwimPos(swim_speed);
        calcBank(daNpc_zrA_Param_c::m.mSwimAngleSpeed / 2, 16, angle.y, angle.z);
        current.angle.z = angle.z;
        shape_angle = mCurAngle = current.angle;
        if ((pos - current.pos).absXZ() < 100.0f) {
            ret = true;
        }
        break;
    }

    default:
        ret = true;
    }

    return ret;
}

/* 80B8BCE8-80B8C3E8 0138C8 0700+00 1/0 0/0 0/0 .text            ECut_searchPrince2__11daNpc_zrA_cFi
 */
BOOL daNpc_zrA_c::ECut_searchPrince2(int i_staffID) {
    dEvent_manager_c& event_manager = dComIfGp_getEventManager();
    BOOL ret = false;
    int prm = -1;
    f32 water_y;
    int* prm_p = dComIfGp_evmng_getMyIntegerP(i_staffID, "prm");
    if (prm_p != NULL) {
        prm = *prm_p;
    }

    if (event_manager.getIsAddvance(i_staffID)) {
        switch (prm) {
        case 0:
            setLookMode(LOOK_ACTOR);
            break;

        case 10:
            break;

        case 20:
            setLookMode(LOOK_NONE);
            setExpression(EXPR_NONE, -1.0f);
            setMotion(MOT_TOBIKOMI_S, -1.0f, false);
            break;

        case 30:
            mSwimSpeed.set(0.0f, -31.2f, 14.7f);
            mDoMtx_stack_c::YrotS(mCurAngle.y);
            mDoMtx_stack_c::multVec(&mSwimSpeed, &mSwimSpeed);
            break;

        case 40:
            setExpression(EXPR_NONE, -1.0f);
            setMotion(MOT_TOBIKOMI_E, -1.0f, false);
            mSwimAngleCalc = current.angle;
            break;

        case 50:
            break;
        }
    }

    switch (prm) {
    case 0:
        ret = true;
        break;

    case 10:
        ret = true;
        break;

    case 20:
        if (mBaseMotionAnm == ANM_TOBIKOMI_S) {
            if (mpMorf->isStop()) {
                cXyz dive_speed(-1.68f, -30.0f, 210.37f);
                mDoMtx_stack_c::YrotS(mCurAngle.y);
                mDoMtx_stack_c::multVec(&dive_speed, &dive_speed);
                current.pos += dive_speed;
                old.pos = current.pos;
                setExpression(EXPR_NONE, 0.0f);
                setMotion(MOT_TOBIKOMI_T, 0.0f, false);
                ret = true;
            } else {
                cLib_chaseAngleS(&mCurAngle.y, 0x2dca, 0x200);
                setAngle(mCurAngle.y);
            }
        } else if (mBaseMotionAnm == ANM_TOBIKOMI_T) {
            ret = true;
        }
        break;

    case 30:
        if (mBaseMotionAnm == ANM_TOBIKOMI_E) {
            ret = true;
        } else if (fopAcM_getWaterY(&current.pos, &water_y)) {
            cXyz head_pos;
            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
            mDoMtx_stack_c::scaleM(scale);
            mDoMtx_stack_c::multVecZero(&head_pos);
            if (head_pos.y <= water_y) {
                cXyz water_pos = head_pos;
                water_pos.y = water_y;
                fopKyM_createWpillar(&water_pos, 2.5f, 0);
                setExpression(EXPR_NONE, -1.0f);
                setMotion(MOT_TOBIKOMI_E, -1.0f, false);
                ret = true;
                mCreatureSound.startCreatureSound(Z2SE_ZRA_DIVE_SPLASH, 0, -1);
                break;
            }
        }
        mSwimSpeed.y -= 3.0f;
        current.pos += mSwimSpeed;
        break;

    case 40: {
        if (mBaseMotionAnm == ANM_SWIM_A) {
            ret = true;
        }
        cXyz swim_speed(0.0f, 0.0f, daNpc_zrA_Param_c::m.mSwimSpeed);
        mDoMtx_stack_c::YrotS(mCurAngle.y);
        mDoMtx_stack_c::multVec(&swim_speed, &swim_speed);
        cLib_chasePos(&mSwimSpeed, swim_speed, 25.0f);
        current.pos += mSwimSpeed;
        break;
    }

    case 50: {
        cXyz pos(-4807.7f, -207.444f, 5109.854f);
        cXyz swim_speed(0.0f, 0.0f, daNpc_zrA_Param_c::m.mSwimSpeed);
        csXyz angle;
        angle.x = cLib_targetAngleX(&pos, &current.pos);
        angle.y = cLib_targetAngleY(&current.pos, &pos);
        angle.z = current.angle.z;
        mpMorf->setPlaySpeed(daNpc_zrA_Param_c::m.mSwimSpeed / daNpc_zrA_Param_c::m.mSwimAnmRate);
        calcSwimAngle(angle, mSwimAngleCalc, 23, daNpc_zrA_Param_c::m.mSwimAngleSpeed / 2);
        calcSwimPos(swim_speed);
        calcBank(daNpc_zrA_Param_c::m.mSwimAngleSpeed / 2, 16, angle.y, angle.z);
        current.angle.z = angle.z;
        shape_angle = mCurAngle = current.angle;
        if ((pos - current.pos).absXZ() < 100.0f) {
            ret = true;
        }
        break;
    }

    default:
        ret = true;
    }

    return ret;
}
