/**
 * @file d_a_e_ws.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_e_ws.h"
#include "d/actor/d_a_obj_carry.h"
#include <cmath.h>
#include "f_op/f_op_actor_enemy.h"

namespace {
/* 807E7448-807E7488 000038 0040+00 1/1 0/0 0/0 .data            cc_ws_src__22@unnamed@d_a_e_ws_cpp@
 */
static dCcD_SrcSph cc_ws_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0xD}, {0xD8F9FDF5, 0x3}, 0x75}}, // mObj
        {dCcD_SE_METAL, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 807E7488-807E74C8 000078 0040+00 1/1 0/0 0/0 .data cc_bokkuri_src__22@unnamed@d_a_e_ws_cpp@ */
static dCcD_SrcSph cc_bokkuri_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0x0}, {0x20008, 0x3}, 0x0}}, // mObj
        {dCcD_SE_METAL, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};
}

/* 807E3A0C-807E3A6C 0000EC 0060+00 1/1 0/0 0/0 .text            __ct__12daE_WS_HIO_cFv */
daE_WS_HIO_c::daE_WS_HIO_c() {
    id = -1;
    base_size = 0.8f;
    move_range = 50.0f;
    search_range = 300.0f;
    search_y_range = 200.0f;
    dist_to_ground = 270.0f;
    debug_ON = false;
    search_angle = 18200;
    attack_speed = 10.0f;
}

/* 807E3A6C-807E3C00 00014C 0194+00 1/1 0/0 0/0 .text            draw__8daE_WS_cFv */
int daE_WS_c::draw() {
    J3DModel* model_p = mpModelMorf->getModel();
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model_p, &tevStr);

    if (mDownColor) {
        J3DModelData* modelData_p = model_p->getModelData();
        for (u16 i = 0; i < modelData_p->getMaterialNum(); i++) {
            J3DMaterial* material_p = modelData_p->getMaterialNodePointer(i);
            material_p->getTevColor(0)->r = mDownColor;
            material_p->getTevColor(0)->g = mDownColor;
            material_p->getTevColor(0)->b = mDownColor;
        }
    }

    mpModelMorf->entryDL();

    cXyz sp8;
    sp8.set(current.pos.x, 100.0f + current.pos.y, current.pos.z);
    mShadowId = dComIfGd_setShadow(mShadowId, 1, model_p, &sp8, 400.0f, 0.0f, current.pos.y, mAcch.GetGroundH(), mAcch.m_gnd, &tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
    return 1;
}

/* 807E3C00-807E3C20 0002E0 0020+00 1/0 0/0 0/0 .text            daE_WS_Draw__FP8daE_WS_c */
static int daE_WS_Draw(daE_WS_c* a_this) {
    return a_this->draw();
}

/* 807E3C20-807E3CC4 000300 00A4+00 4/4 0/0 0/0 .text            setBck__8daE_WS_cFiUcff */
void daE_WS_c::setBck(int i_anm, u8 i_mode, f32 i_morf, f32 i_speed) {
    mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_WS", i_anm), i_mode, i_morf, i_speed, 0.0f, -1.0f);
}

/* 807E3CC4-807E3F90 0003A4 02CC+00 2/2 0/0 0/0 .text            setFootSound__8daE_WS_cFv */
void daE_WS_c::setFootSound() {
    if (mpModelMorf->getAnm() == dComIfG_getObjectRes("E_WS", 7)) {
        if (mpModelMorf->checkFrame(0.0f)  ||
            mpModelMorf->checkFrame(4.5f)  ||
            mpModelMorf->checkFrame(7.5f)  ||
            mpModelMorf->checkFrame(9.0f)  ||
            mpModelMorf->checkFrame(13.5f) ||
            mpModelMorf->checkFrame(16.0f) ||
            mpModelMorf->checkFrame(19.0f) ||
            mpModelMorf->checkFrame(23.5f) ||
            mpModelMorf->checkFrame(25.0f) ||
            mpModelMorf->checkFrame(28.0f) ||
            mpModelMorf->checkFrame(32.5f) ||
            mpModelMorf->checkFrame(36.0f) ||
            mpModelMorf->checkFrame(39.5f))
        {
            mSound.startCreatureSound(Z2SE_EN_WS_FOOTNOTE, 0, -1);
        }
    } else if (mpModelMorf->getAnm() == dComIfG_getObjectRes("E_WS", 8)) {
        if (mpModelMorf->checkFrame(0.5f)  ||
            mpModelMorf->checkFrame(6.0f)  ||
            mpModelMorf->checkFrame(11.0f) ||
            mpModelMorf->checkFrame(16.0f) ||
            mpModelMorf->checkFrame(21.0f) ||
            mpModelMorf->checkFrame(26.5f) ||
            mpModelMorf->checkFrame(31.0f))
        {
            mSound.startCreatureSound(Z2SE_EN_WS_FOOTNOTE, 0, -1);
        }
    }
}

/* 807E3F90-807E3FAC 000670 001C+00 5/5 0/0 0/0 .text            setActionMode__8daE_WS_cFi */
void daE_WS_c::setActionMode(int i_action) {
    if (mAction != i_action) {
        mAction = i_action;
        mMode = 0;
    }
}

/* 807E3FAC-807E40C8 00068C 011C+00 4/4 0/0 0/0 .text calcTargetDist__8daE_WS_cF4cXyz4cXyz */
f32 daE_WS_c::calcTargetDist(cXyz i_basePos, cXyz i_targetPos) {
    return i_basePos.abs(i_targetPos);
}

/* 807E40C8-807E416C 0007A8 00A4+00 3/3 0/0 0/0 .text calcTargetAngle__8daE_WS_cF4cXyz4cXyz */
s16 daE_WS_c::calcTargetAngle(cXyz i_basePos, cXyz i_targetPos) {
    cXyz sp1C;
    cXyz sp10 = i_targetPos - i_basePos;

    mDoMtx_stack_c::XrotS(-field_0x668.x);
    mDoMtx_stack_c::YrotM(-field_0x668.y);
    mDoMtx_stack_c::multVec(&sp10, &sp1C);
    return cM_atan2s(sp1C.x, sp1C.z);
}

/* 807E75B8-807E75BC 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 l_HIOInit;

/* 807E75C8-807E75F0 000018 0028+00 7/7 0/0 0/0 .bss             l_HIO */
static daE_WS_HIO_c l_HIO;

/* 807E416C-807E4224 00084C 00B8+00 3/3 0/0 0/0 .text checkInSearchRange__8daE_WS_cF4cXyz4cXyz */
bool daE_WS_c::checkInSearchRange(cXyz i_basePos, cXyz i_targetPos) {
    if (calcTargetDist(i_basePos, i_targetPos) < l_HIO.search_range && std::abs(i_basePos.y - i_targetPos.y) < l_HIO.search_y_range) {
        return true;
    }

    return false;
}

/* 807E4224-807E4568 000904 0344+00 1/1 0/0 0/0 .text            checkPlayerPos__8daE_WS_cFv */
int daE_WS_c::checkPlayerPos() {
    cXyz player_pos;
    mDoMtx_stack_c::copy(daPy_getLinkPlayerActorClass()->getModelJointMtx(0));
    mDoMtx_stack_c::multVecZero(&player_pos);

    if ((daPy_getPlayerActorClass()->checkClimbMove() ||
        dComIfGp_checkPlayerStatus1(0, 0x2000000) ||
        dComIfGp_checkPlayerStatus1(0, 0x10000) ||
        calcTargetDist(current.pos, player_pos) < 150.0f) &&
        checkInSearchRange(player_pos, field_0x65c) && checkInSearchRange(current.pos, field_0x65c))
    {
        dBgS_GndChk gndchk;
        cXyz gndpos;

        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::ZXYrotM(field_0x66e);
        mDoMtx_stack_c::ZXYrotM(shape_angle);
        mDoMtx_stack_c::transM(0.0f, 100.0f, 0.0f);
        mDoMtx_stack_c::multVecZero(&gndpos);

        gndchk.SetPos(&gndpos);
        gndpos.y = dComIfG_Bgsp().GroundCross(&gndchk);
        if (current.pos.y - gndpos.y > l_HIO.dist_to_ground) {
            // Return 1 if walltula is looking towards player
            if (cLib_distanceAngleS(shape_angle.y, calcTargetAngle(current.pos, player_pos)) < l_HIO.search_angle) {
                return 1;
            }

            // otherwise return 2 if player is near the walltula
            if (calcTargetDist(current.pos, player_pos) < 150.0f) {
                return 2;
            }
        }
    }

    return 0;
}

/* 807E4568-807E470C 000C48 01A4+00 1/1 0/0 0/0 .text            checkAttackEnd__8daE_WS_cFv */
// NONMATCHING
bool daE_WS_c::checkAttackEnd() {
    cXyz player_pos;
    mDoMtx_stack_c::copy(daPy_getLinkPlayerActorClass()->getModelJointMtx(0));
    mDoMtx_stack_c::multVecZero(&player_pos);

    if (!(daPy_getPlayerActorClass()->checkClimbMove() ||
        dComIfGp_checkPlayerStatus1(0, 0x02000000) ||
        dComIfGp_checkPlayerStatus1(0, 0x10000) ||
        calcTargetDist(current.pos, player_pos) < 200.0f) ||
        (!checkInSearchRange(current.pos, field_0x65c) || checkBeforeBg(shape_angle.y)))
    {
        setActionMode(ACTION_WAIT_e);
        speedF = 0.0f;
        return true;
    }

    return false;
}

/* 807E470C-807E4AB8 000DEC 03AC+00 2/1 0/0 0/0 .text            executeWait__8daE_WS_cFv */
void daE_WS_c::executeWait() {
    int temp_r3 = checkPlayerPos();
    if (temp_r3 == 1) {
        setActionMode(ACTION_ATTACK_e);
        return;
    }

    if (temp_r3 == 2 && mMode != 3 && mMode != 4) {
        mMode = 2;
    }

    switch (mMode) {
    case 0:
        mMoveWaitTimer = 50.0f + cM_rndF(50.0f);
        setBck(9, 2, 3.0f, 1.0f);
        mMode = 1;
        /* fallthrough */
    case 1:
        if (mMoveWaitTimer == 0) {
            mMode = 2;
        }
        break;
    case 2:
        speedF = 0.0f;
        field_0x690 = 0;
        mTargetAngle = shape_angle.y + cM_rndFX(32768.0f);

        if (temp_r3 == 2) {
            mTargetStep = 0x200;
            setBck(8, 2, 3.0f, 2.4f);
        } else {
            if (calcTargetDist(current.pos, field_0x65c) >= l_HIO.move_range) {
                mTargetAngle = calcTargetAngle(current.pos, field_0x65c);
                field_0x690 = 1;
            }
            mTargetStep = 0x100;
            setBck(8, 2, 3.0f, 1.2f);
        }

        mMode = 3;
        /* fallthrough */
    case 3:
        setFootSound();

        if (cLib_chaseAngleS(&shape_angle.y, mTargetAngle, mTargetStep)) {
            mMode = 4;
            mMoveWaitTimer = 10;
            setBck(9, 2, 3.0f, 1.0f);
        }
        break;
    case 4:
        if (mMoveWaitTimer == 0) {
            mMode = 5;
        }
        break;
    case 5:
        mMode = 6;
        speedF = 3.0f;
        mMoveWaitTimer = 20.0f + cM_rndF(10.0f);
        setBck(7, 2, 3.0f, 1.0f);
        /* fallthrough */
    case 6:
        setFootSound();

        if (field_0x690 == 0) {
            if (calcTargetDist(current.pos, field_0x65c) >= l_HIO.move_range) {
                mMoveWaitTimer = 0;
            }
        }

        if (checkBeforeBg(shape_angle.y)) {
            mMoveWaitTimer = 0;
        }

        if (mMoveWaitTimer == 0) {
            speedF = 0.0f;
            mMode = 0;
        }
        break;
    }

    current.angle.y = shape_angle.y;
}

/* 807E4AB8-807E4E68 001198 03B0+00 1/1 0/0 0/0 .text            executeAttack__8daE_WS_cFv */
// NONMATCHING
void daE_WS_c::executeAttack() {
    cXyz player_pos;
    mDoMtx_stack_c::copy(daPy_getLinkPlayerActorClass()->getModelJointMtx(0));
    mDoMtx_stack_c::multVecZero(&player_pos);

    switch (mMode) {
    case 0:
        setBck(8, 2, 3.0f, 3.5f);
        mMode = 1;
        speedF = 0.0f;
        /* fallthrough */
    case 1:
        setFootSound();

        if (!checkAttackEnd()) {
            if (cLib_chaseAngleS(&shape_angle.y, calcTargetAngle(current.pos, player_pos), 0x300)) {
                mMode = 2;
                setBck(10, 2, 3.0f, 1.0f);
                mSound.startCreatureVoice(Z2SE_EN_WS_V_YOKOKU, -1);
                mMoveWaitTimer = 10;
            }
        }
        break;
    case 2:
        if (mMoveWaitTimer == 0) {
            speedF = l_HIO.attack_speed * mBodyScale;
            setBck(7, 2, 3.0f, 3.0f);
            mMode = 3;
        }

        if (checkAttackEnd()) {
            return;
        }

        break;
    case 3:
        setFootSound();
        cLib_chaseAngleS(&shape_angle.y, calcTargetAngle(current.pos, player_pos), 0x400);

        if (checkBeforeBg(shape_angle.y) || (mCcSph.ChkAtHit() && fopAcM_GetName(dCc_GetAc(mCcSph.GetAtHitObj()->GetAc())) == PROC_ALINK) || !checkInSearchRange(current.pos, field_0x65c)) {
            mMode = 4;
            speedF = 0.0f;
            setBck(4, 0, 3.0f, 1.0f);
            break;
        }

        if (checkAttackEnd()) {
            return;
        }
        break;
    case 4:
        if (mpModelMorf->checkFrame(7.5f)) {
            mSound.startCreatureVoice(Z2SE_EN_WS_V_ATTACK, -1);
        }

        if (mpModelMorf->isStop()) {
            setActionMode(ACTION_WAIT_e);
        }
        break;
    }

    current.angle.y = shape_angle.y;
}

/* 807E4E68-807E5294 001548 042C+00 1/1 0/0 0/0 .text            executeDown__8daE_WS_cFv */
void daE_WS_c::executeDown() {
    mInvulnerabilityTimer = 10;

    switch (mMode) {
    case 0:
        mCcSph.OffAtSetBit();
        mCcSph.OffTgSetBit();
        mCcBokkuriSph.OffTgSetBit();

        mMode = 1;
        speed.y = 0.0f;
        speedF = 0.0f;
        setBck(5, 0, 0.0f, 1.0f);

        mSound.startCreatureVoice(Z2SE_EN_WS_V_DAMAGE, -1);
        /* fallthrough */
    case 1:
        if (mpModelMorf->isStop()) {
            mAcchCir.SetWall(0.0f, 4.0f);
            current.angle.y = field_0x668.y;
            setBck(6, 0, 3.0f, 0.0f);
            mSound.startCreatureVoice(Z2SE_EN_WS_V_DEATH, -1);
            speedF = 5.0f;
            gravity = -3.0f;
            mAcch.SetGroundUpY(25.0f * mBodyScale);
            mMode = 2;
            attention_info.flags = 0;
        }
        return;
    case 2:
        if (abs(shape_angle.y) < 0x4000) {
            cLib_chaseAngleS(&shape_angle.y, 0, 0x200);
            cLib_chaseAngleS(&shape_angle.x, 0x4000, 0x400);
        } else {
            cLib_chaseAngleS(&shape_angle.y, -0x8000, 0x200);
            cLib_chaseAngleS(&shape_angle.x, -0x4000, 0x400);
        }

        if (mAcch.ChkGroundHit()) {
            speedF = 3.0f + cM_rndF(2.0f);
            speed.y = 12.0f;
            mMode = 3;
            mMoveWaitTimer = 30;
            setBck(6, 0, 5.0f, 1.0f);
            mSound.startCreatureSound(Z2SE_CM_BODYFALL_S, 0, -1);
        }
        break;
    case 3:
        if (abs(shape_angle.y) < 0x4000) {
            cLib_chaseAngleS(&shape_angle.y, 0, 0x200);
            cLib_chaseAngleS(&shape_angle.x, 0x4000, 0x400);
        } else {
            cLib_chaseAngleS(&shape_angle.y, -0x8000, 0x200);
            cLib_chaseAngleS(&shape_angle.x, -0x4000, 0x400);
        }

        if (mAcch.ChkGroundHit()) {
            mSound.startCreatureSound(Z2SE_CM_BODYFALL_S, 0, -1);

            if (abs(shape_angle.y) < 0x4000) {
                shape_angle.y = 0;
                shape_angle.x = 0x4000;
            } else {
                shape_angle.y = -0x8000;
                shape_angle.x = -0x4000;
            }

            speedF = 0.0f;
            speed.y = 0.0f;
            mMode = 4;
            return;
        }
        break;
    case 4:
        cLib_addCalc2(&mDownColor, -20.0f, 1.0f, 0.4f);

        if (mpModelMorf->isStop()) {
            mMoveWaitTimer = 15;
            mMode = 5;
            return;
        }
        break;
    case 5:
        cLib_addCalc2(&mDownColor, -20.0f, 1.0f, 0.4f);

        if (mMoveWaitTimer == 0) {
            fopAcM_delete(this);
            fopAcM_createDisappear(this, &current.pos, 7, 0, 7);

            if (mSwbit != 0xFF && !dComIfGs_isSwitch(mSwbit, fopAcM_GetRoomNo(this))) {
                dComIfGs_onSwitch(mSwbit, fopAcM_GetRoomNo(this));
            }
        }
        break;
    }
}

/* 807E5294-807E56D0 001974 043C+00 1/1 0/0 0/0 .text            executeWindDown__8daE_WS_cFv */
void daE_WS_c::executeWindDown() {
    mInvulnerabilityTimer = 10;

    switch (mMode) {
    case 0:
        mCcSph.OffAtSetBit();
        mCcSph.OffTgSetBit();
        mCcBokkuriSph.OffTgSetBit();
    
        mAcchCir.SetWall(0.0f, 4.0f);
        mMode = 1;
        setBck(7, 2, 3.0f, 1.0f);
    
        mSound.startCreatureVoice(Z2SE_EN_WS_V_DAMAGE, -1);
        mMoveWaitTimer = 5;
        mAcch.SetGroundUpY(20.0f);
        attention_info.flags = 0;
        speed.y = 0.0f;
        speedF = 5.0f;
        current.angle.y = field_0x668.y;
        mTargetStep = -0x800;
        break;
    case 1:
        shape_angle.y += mTargetStep;
        cLib_chaseAngleS(&field_0x66e.y, 0, 0x400);
        cLib_chaseAngleS(&field_0x66e.x, 0, 0x400);
        shape_angle.x += 0x800;
        shape_angle.z += 0x800;
        speed.y = 30.0f;

        if (mMoveWaitTimer == 0) {
            mMode = 2;
            gravity = -3.0f;
        }
        break;
    case 2:
        shape_angle.y += mTargetStep;
        cLib_chaseAngleS(&field_0x66e.y, 0, 0x400);
        cLib_chaseAngleS(&field_0x66e.x, 0, 0x400);
        cLib_chaseAngleS(&shape_angle.x, -0x8000, 0x400);
        cLib_chaseAngleS(&shape_angle.z, 0, 0x400);

        if (mAcch.ChkGroundHit()) {
            speedF = 3.0f + cM_rndF(2.0f);
            speed.y = 12.0f;
            mMode = 3;
            mMoveWaitTimer = 30;
            setBck(6, 0, 5.0f, 1.0f);
            mSound.startCreatureVoice(Z2SE_EN_WS_V_DEATH, -1);
            mSound.startCreatureSound(Z2SE_CM_BODYFALL_S, 0, -1);
        }
        break;
    case 3:
        shape_angle.y += mTargetStep;
        cLib_chaseAngleS(&mTargetStep, 0, 0x80);
        cLib_chaseAngleS(&shape_angle.x, -0x8000, 0x400);
        cLib_chaseAngleS(&shape_angle.z, 0, 0x400);

        if (mAcch.ChkGroundHit()) {
            mSound.startCreatureSound(Z2SE_CM_BODYFALL_S, 0, -1);
            shape_angle.x = -0x8000;
            speedF = 0.0f;
            speed.y = 0.0f;
            mMode = 4;
        }
        break;
    case 4:
        cLib_addCalc2(&mDownColor, -20.0f, 1.0f, 0.4f);
        shape_angle.y += mTargetStep;
        cLib_chaseAngleS(&mTargetStep, 0, 0x80);
        shape_angle.y += mTargetStep;

        if (mpModelMorf->isStop()) {
            mMoveWaitTimer = 15;
            mMode = 5;
        }
        break;
    case 5:
        cLib_addCalc2(&mDownColor, -20.0f, 1.0f, 0.4f);
        if (mMoveWaitTimer == 0) {
            fopAcM_delete(this);
            fopAcM_createDisappear(this, &current.pos, 7, 0, 7);

            if (mSwbit != 0xFF && !dComIfGs_isSwitch(mSwbit, fopAcM_GetRoomNo(this))) {
                dComIfGs_onSwitch(mSwbit, fopAcM_GetRoomNo(this));
            }
        }
        break;
    }
}

/* 807E56D0-807E58AC 001DB0 01DC+00 1/1 0/0 0/0 .text            damage_check__8daE_WS_cFv */
void daE_WS_c::damage_check() {
    if (mInvulnerabilityTimer == 0) {
        if (mAction == ACTION_DOWN_e || mAction == ACTION_WIND_DOWN_e) {
            return;
        }

        mCcStts.Move();

        if (mCcBokkuriSph.ChkTgHit()) {
            mAtInfo.mpCollider = mCcBokkuriSph.GetTgHitObj();

            if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_20000)) {
                dComIfGp_setHitMark(1, this, &eyePos, NULL, NULL, 0);
                dScnPly_c::setPauseTimer(4);
                mSound.startCreatureSound(Z2SE_EN_ST_SHELL_BREAK, 0, -1);
            } else if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_THROW_OBJ)) {
                fopAc_ac_c* throwobj_p = dCc_GetAc(mAtInfo.mpCollider->GetAc());
                if (fopAcM_GetName(throwobj_p) == PROC_Obj_Carry && ((daObjCarry_c*)throwobj_p)->getType() == daObjCarry_c::TYPE_BOKKURI) {
                    mSound.startCreatureSound(Z2SE_EN_ST_SHELL_BREAK, 0, -1);
                }
            }
    
            cc_at_check(this, &mAtInfo);
            setActionMode(ACTION_DOWN_e);
            return;
        }

        if (mCcSph.ChkTgHit()) {
            mAtInfo.mpCollider = mCcSph.GetTgHitObj();
            cc_at_check(this, &mAtInfo);

            if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_WOLF_ATTACK | AT_TYPE_WOLF_CUT_TURN | AT_TYPE_10000000 | AT_TYPE_MIDNA_LOCK)) {
                mInvulnerabilityTimer = 20;
            } else {
                mInvulnerabilityTimer = 10;
            }

            if (mAtInfo.mAttackPower <= 1) {
                mInvulnerabilityTimer = KREG_S(8) + 10;
            }

            if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_BOOMERANG)) {
                setActionMode(ACTION_WIND_DOWN_e);
            } else {
                setActionMode(ACTION_DOWN_e);
            }
        }
    }
}

/* 807E58AC-807E5A3C 001F8C 0190+00 1/1 0/0 0/0 .text            action__8daE_WS_cFv */
void daE_WS_c::action() {
    attention_info.distances[fopAc_attn_BATTLE_e] = 46;
    damage_check();
    field_0x566 = 0;

    switch (mAction) {
    case ACTION_WAIT_e:
        executeWait();
        break;
    case ACTION_ATTACK_e:
        field_0x566 = 1;
        executeAttack();
        break;
    case ACTION_DOWN_e:
        executeDown();
        break;
    case ACTION_WIND_DOWN_e:
        executeWindDown();
        break;
    }

    mSound.setLinkSearch(field_0x566);

    if (mAction != ACTION_DOWN_e && mAction != ACTION_WIND_DOWN_e) {
        cXyz sp14;
        mDoMtx_stack_c::YrotS(field_0x668.y);
        mDoMtx_stack_c::XrotM(field_0x668.x);
        mDoMtx_stack_c::YrotM(current.angle.y);

        cXyz sp8(0.0f, 0.0f, speedF);
        mDoMtx_stack_c::multVec(&sp8, &sp14);
        speed = sp14;
        current.pos += speed;
    } else {
        fopAcM_posMoveF(this, NULL);
    }

    mAcch.CrrPos(dComIfG_Bgsp());
    mpModelMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
}

/* 807E5A3C-807E5AAC 00211C 0070+00 2/2 0/0 0/0 .text            mtx_set__8daE_WS_cFv */
void daE_WS_c::mtx_set() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(field_0x66e);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::scaleM(mBodyScale, mBodyScale, mBodyScale);

    J3DModel* model_p = mpModelMorf->getModel();
    model_p->setBaseTRMtx(mDoMtx_stack_c::get());
    mpModelMorf->modelCalc();
}

/* 807E5AAC-807E5C0C 00218C 0160+00 1/1 0/0 0/0 .text            cc_set__8daE_WS_cFv */
void daE_WS_c::cc_set() {
    cXyz mae;
    cXyz ato;
    J3DModel* model_p = mpModelMorf->getModel();

    mDoMtx_stack_c::YrotS(field_0x668.y);
    mDoMtx_stack_c::XrotM(field_0x668.x);
    mae.set(0.0f, 15.0f + nREG_F(10), 0.0f);
    mDoMtx_stack_c::multVec(&mae, &ato);
    attention_info.position = current.pos + ato;
    attention_info.position.y += 90.0f * mBodyScale;

    MTXCopy(model_p->getAnmMtx(1), mDoMtx_stack_c::get());
    mae.set(-15.0f + nREG_F(5), -10.0f + nREG_F(6), nREG_F(7));
    mDoMtx_stack_c::multVec(&mae, &eyePos);

    mCcSph.SetC(eyePos);
    mCcSph.SetR(35.0f);
    dComIfG_Ccsp()->Set(&mCcSph);

    mCcBokkuriSph.SetC(eyePos);
    mCcBokkuriSph.SetR(60.0f);
    dComIfG_Ccsp()->Set(&mCcBokkuriSph);
}

/* 807E5C0C-807E5CB8 0022EC 00AC+00 1/1 0/0 0/0 .text            execute__8daE_WS_cFv */
int daE_WS_c::execute() {
    if (mMoveWaitTimer != 0) {
        mMoveWaitTimer--;
    }

    if (mInvulnerabilityTimer != 0) {
        mInvulnerabilityTimer--;
    }

    action();
    mtx_set();
    cc_set();

    cXyz effpos(current.pos);
    cXyz effsize(0.5f, 0.5f, 0.5f);
    setMidnaBindEffect(this, &mSound, &effpos, &effsize);
    return 1;
}

/* 807E5CB8-807E5CD8 002398 0020+00 1/0 0/0 0/0 .text            daE_WS_Execute__FP8daE_WS_c */
static int daE_WS_Execute(daE_WS_c* a_this) {
    return a_this->execute();
}

/* 807E5CD8-807E5F70 0023B8 0298+00 1/1 0/0 0/0 .text            checkInitialWall__8daE_WS_cFv */
void daE_WS_c::checkInitialWall() {
    cXyz endpos;
    cXyz offset(0.0f, 0.0f, 200.0f);
    dBgS_LinChk linchk;

    for (int i = 0; i < 4; i++) {
        cLib_offsetPos(&endpos, &current.pos, (shape_angle.y + (i << 14)), &offset);
        linchk.Set(&current.pos, &endpos, NULL);

        if (dComIfG_Bgsp().LineCross(&linchk)) {
            if (field_0x691 == 0 && dComIfG_Bgsp().GetWallCode(linchk) != 1 && dComIfG_Bgsp().GetWallCode(linchk) != 4) {
                return;
            }

            current.pos = linchk.GetCross();

            cM3dGPla tri;
            dComIfG_Bgsp().GetTriPla(linchk, &tri);

            cXyz* tri_np = tri.GetNP();
            field_0x668.y = cM_atan2s(tri_np->x, tri_np->z);
            field_0x668.x = cM_atan2s(tri_np->absXZ(), tri_np->y);
            field_0x66e = field_0x668;
            return;
        }
    }
}

/* 807E5FB8-807E63F8 002698 0440+00 3/3 0/0 0/0 .text            checkBeforeBg__8daE_WS_cFs */
bool daE_WS_c::checkBeforeBg(s16 i_angle) {
    dBgS_LinChk linchk;
    cXyz sp68;
    cXyz sp5C;
    cXyz endpos;
    cXyz startpos;

    if (!speedF) {
        return false;
    }

    mDoMtx_stack_c::YrotS(field_0x668.y);
    mDoMtx_stack_c::XrotM(field_0x668.x);
    mDoMtx_stack_c::YrotM(i_angle);
    sp68.set(0.0f, 50.0f * mBodyScale, 0.0f);
    mDoMtx_stack_c::multVec(&sp68, &startpos);
    startpos += current.pos;
    
    mDoMtx_stack_c::YrotS(field_0x668.y);
    mDoMtx_stack_c::XrotM(field_0x668.x);
    mDoMtx_stack_c::YrotM(i_angle);
    sp68.set(0.0f, 0.0f, 50.0f * mBodyScale);
    mDoMtx_stack_c::multVec(&sp68, &sp5C);

    sp68.set(sp5C.x, 0.0f, sp5C.z);
    endpos = startpos + sp68;

    linchk.Set(&startpos, &endpos, NULL);
    if (dComIfG_Bgsp().LineCross(&linchk)) {
        return 1;
    }

    if (sp5C.y > 0.0f) {
        sp68.set(0.0f, 50.0f * mBodyScale, 0.0f);
    } else {
        sp68.set(0.0f, -l_HIO.dist_to_ground, 0.0f);
    }

    endpos = startpos + sp68;
    linchk.Set(&startpos, &endpos, NULL);
    if (dComIfG_Bgsp().LineCross(&linchk)) {
        return true;
    }

    mDoMtx_stack_c::YrotS(field_0x668.y);
    mDoMtx_stack_c::XrotM(field_0x668.x);
    mDoMtx_stack_c::YrotM(i_angle);
    sp68.set(0.0f, 50.0f * mBodyScale, 100.0f * mBodyScale);
    mDoMtx_stack_c::multVec(&sp68, &sp5C);
    startpos = current.pos + sp5C;

    cXyz sp38(0.0f, -40.0f * mBodyScale, 100.0f * mBodyScale);
    mDoMtx_stack_c::multVec(&sp38, &sp5C);
    endpos = current.pos + sp5C;

    linchk.Set(&startpos, &endpos, NULL);
    if (!dComIfG_Bgsp().LineCross(&linchk)) {
        return true;
    }

    if (field_0x691 == 0 && dComIfG_Bgsp().GetWallCode(linchk) != 1 && dComIfG_Bgsp().GetWallCode(linchk) != 4) {
        return true;
    }

    cM3dGPla tri;
    dComIfG_Bgsp().GetTriPla(linchk, &tri);
    
    cXyz* tri_np = tri.GetNP();
    cLib_chaseAngleS(&field_0x66e.y, cM_atan2s(tri_np->x, tri_np->z), 0x100);
    checkWall();
    return false;
}

/* 807E63F8-807E66AC 002AD8 02B4+00 1/1 0/0 0/0 .text            checkWall__8daE_WS_cFv */
bool daE_WS_c::checkWall() {
    cXyz startpos;
    cXyz endpos;
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(field_0x66e);
    mDoMtx_stack_c::ZXYrotM(shape_angle);

    mDoMtx_stack_c::transM(0.0f, 100.0f, 0.0f);
    mDoMtx_stack_c::multVecZero(&startpos);

    mDoMtx_stack_c::transM(0.0f, -150.0f, 0.0f);
    mDoMtx_stack_c::multVecZero(&endpos);

    dBgS_LinChk linchk;
    linchk.Set(&startpos, &endpos, NULL);
    if (dComIfG_Bgsp().LineCross(&linchk)) {
        if (field_0x691 == 0 && dComIfG_Bgsp().GetWallCode(linchk) != 1 && dComIfG_Bgsp().GetWallCode(linchk) != 4) {
            return false;
        }

        current.pos = linchk.GetCross();
    
        cM3dGPla tri;
        dComIfG_Bgsp().GetTriPla(linchk, &tri);

        cXyz* tri_np = tri.GetNP();
        field_0x668.y = cM_atan2s(tri_np->x, tri_np->z);
        field_0x668.x = cM_atan2s(tri_np->absXZ(), tri_np->y);
        return true;
    }

    return false;
}

/* 807E66AC-807E66B4 002D8C 0008+00 1/0 0/0 0/0 .text            daE_WS_IsDelete__FP8daE_WS_c */
static int daE_WS_IsDelete(daE_WS_c* a_this) {
    return 1;
}

/* 807E66B4-807E6728 002D94 0074+00 1/1 0/0 0/0 .text            _delete__8daE_WS_cFv */
int daE_WS_c::_delete() {
    dComIfG_resDelete(&mPhase, "E_WS");

    if (mHIOInit) {
        l_HIOInit = false;
        mDoHIO_DELETE_CHILD(l_HIO.id);
    }

    if (heap != NULL) {
        mSound.deleteObject();
    }

    return 1;
}

/* 807E6728-807E6748 002E08 0020+00 1/0 0/0 0/0 .text            daE_WS_Delete__FP8daE_WS_c */
static int daE_WS_Delete(daE_WS_c* a_this) {
    return a_this->_delete();
}

/* 807E6748-807E6840 002E28 00F8+00 1/1 0/0 0/0 .text            CreateHeap__8daE_WS_cFv */
int daE_WS_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("E_WS", 0xD);
    JUT_ASSERT(1401, modelData != 0);

    mpModelMorf = new mDoExt_McaMorfSO(modelData, NULL, NULL, (J3DAnmTransform*)dComIfG_getObjectRes("E_WS", 7), 0, 1.0f, 0, -1, &mSound, 0x80000, 0x11000084);
    if (mpModelMorf == NULL || mpModelMorf->getModel() == NULL) {
        return 0;
    }

    return 1;
}

/* 807E6840-807E6860 002F20 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    return ((daE_WS_c*)i_this)->CreateHeap();
}

/* 807E6860-807E6C10 002F40 03B0+00 1/1 0/0 0/0 .text            create__8daE_WS_cFv */
int daE_WS_c::create() {
    fopAcM_SetupActor(this, daE_WS_c);

    int phase_state = dComIfG_resLoad(&mPhase, "E_WS");
    if (phase_state == cPhs_COMPLEATE_e) {
        OS_REPORT("E_WS PARAM %x\n", fopAcM_GetParam(this));
    
        mSwbit = (fopAcM_GetParam(this) & 0xFF00) >> 8;
        if (mSwbit != 0xFF && dComIfGs_isSwitch(mSwbit, fopAcM_GetRoomNo(this))) {
            OS_REPORT("E_WS やられ後なので再セットしません\n");
            return cPhs_ERROR_e;
        }
    
        if (!fopAcM_entrySolidHeap(this, useHeapInit, 0x1B60)) {
            return cPhs_ERROR_e;
        }
    
        if (!l_HIOInit) {
            l_HIOInit = true;
            mHIOInit = true;
            l_HIO.id = mDoHIO_CREATE_CHILD("スタルウォール", &l_HIO);
        }
    
        field_0x691 = fopAcM_GetParam(this);
        if (field_0x691 == 0xFF) {
            field_0x691 = 0;
        }
    
        if (((fopAcM_GetParam(this) & 0xFF0000) >> 0x10) == 1) {
            mBodyScale = 0.5f;
        } else {
            mBodyScale = 0.8f;
        }
    
        attention_info.flags = 4;
        fopAcM_SetMtx(this, mpModelMorf->getModel()->getBaseTRMtx());
        fopAcM_SetMin(this, -200.0f, -200.0f, -200.0f);
        fopAcM_SetMax(this, 200.0f, 200.0f, 200.0f);
    
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this), NULL, NULL);
        mAcchCir.SetWall(0.0f, 0.0f);
    
        health = 10;
        field_0x560 = 10;
    
        mCcStts.Init(100, 0, this);
        mCcSph.Set(cc_ws_src);
        mCcSph.SetStts(&mCcStts);
        mCcBokkuriSph.Set(cc_bokkuri_src);
        mCcBokkuriSph.SetStts(&mCcStts);
    
        mSound.init(&current.pos, &eyePos, 3, 1);
        mSound.setEnemyName("E_ws");

        mAtInfo.mpSound = &mSound;
        mAtInfo.mPowerType = 1;

        setActionMode(ACTION_WAIT_e);
        checkInitialWall();

        field_0x65c = current.pos;
        speed.y = 0.0f;
        gravity = 0.0f;
        mtx_set();
    }

    return phase_state;
}

/* 807E6DDC-807E6DFC 0034BC 0020+00 1/0 0/0 0/0 .text            daE_WS_Create__FP8daE_WS_c */
static int daE_WS_Create(daE_WS_c* a_this) {
    return a_this->create();
}

/* 807E74E4-807E7504 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_WS_Method */
static actor_method_class l_daE_WS_Method = {
    (process_method_func)daE_WS_Create,
    (process_method_func)daE_WS_Delete,
    (process_method_func)daE_WS_Execute,
    (process_method_func)daE_WS_IsDelete,
    (process_method_func)daE_WS_Draw,
};

/* 807E7504-807E7534 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_WS */
extern actor_process_profile_definition g_profile_E_WS = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_WS,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daE_WS_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  200,                    // mPriority
  &l_daE_WS_Method,       // sub_method
  0x00050100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
