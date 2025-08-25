#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc.h"
#include "d/actor/d_a_npc_tk.h"
#include "d/d_msg_object.h"
#include "d/actor/d_a_tag_evtarea.h"
#include "dol2asm.h"

static u16 daNpcF_putNurbs(dPnt* param_0, int param_1, int param_2, dPnt* param_3, int param_4);
u8 daNpcF_getDistTableIdx(int param_0, int param_1);

/* 8015056C-801505AC 14AEAC 0040+00 2/2 0/0 0/0 .text            daNpcF_addIdx__FiiRUsi */
static BOOL daNpcF_addIdx(int i_step, int i_num, u16& i_idx, BOOL i_isClosed) {
    int ret = false;
    int new_idx = i_idx;
    new_idx += i_step;

    if (i_num <= new_idx) {
        if (i_isClosed) {
            new_idx %= i_num;
        } else {
            new_idx = i_num - 1;
            ret = true;
        }
    }

    i_idx = new_idx;
    return ret;
}

/* 801505AC-801505F8 14AEEC 004C+00 2/2 0/0 0/0 .text            daNpcF_subIdx__FiiRUsi */
static BOOL daNpcF_subIdx(int i_step, int i_num, u16& i_idx, BOOL i_isClosed) {
    BOOL ret = false;
    int new_idx = i_idx;
    new_idx -= i_step;

    if (0 > new_idx) {
        if (i_isClosed) {
            new_idx = (i_num + (new_idx % i_num)) % i_num;
        } else {
            new_idx = 0;
            ret = true;
        }
    }

    i_idx = new_idx;
    return ret;
}

/* 801505F8-80150654 14AF38 005C+00 4/4 0/0 0/0 .text            daNpcF_incIdx__FiRUsii */
static BOOL daNpcF_incIdx(int i_num, u16& i_idx, BOOL i_isClosed, int i_reverse) {
    return i_reverse ? daNpcF_subIdx(1, i_num, i_idx, i_isClosed) :
                       daNpcF_addIdx(1, i_num, i_idx, i_isClosed);
}

/* 80150654-801506B0 14AF94 005C+00 3/3 0/0 0/0 .text            daNpcF_decIdx__FiRUsii */
static BOOL daNpcF_decIdx(int i_num, u16& i_idx, BOOL i_isClosed, int i_reverse) {
    return i_reverse ? daNpcF_addIdx(1, i_num, i_idx, i_isClosed) :
                       daNpcF_subIdx(1, i_num, i_idx, i_isClosed);
}

/* 801506B0-801506BC 14AFF0 000C+00 0/0 0/0 130/130 .text initialize__18daNpcF_ActorMngr_cFv */
void daNpcF_ActorMngr_c::initialize() {
    mActorID = fpcM_ERROR_PROCESS_ID_e;
}

/* 801506BC-801506D8 14AFFC 001C+00 1/1 0/0 130/130 .text
 * entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c                    */
void daNpcF_ActorMngr_c::entry(fopAc_ac_c* i_actor) {
    mActorID = fopAcM_GetID(i_actor);
}

/* 801506D8-801506E0 -00001 0008+00 0/0 0/0 0/0 .text            entry__18daNpcF_ActorMngr_cFUi */
void daNpcF_ActorMngr_c::entry(fpc_ProcID i_actorID) {
    mActorID = i_actorID;
}

/* 801506E0-801506EC 14B020 000C+00 2/2 0/0 55/55 .text            remove__18daNpcF_ActorMngr_cFv */
void daNpcF_ActorMngr_c::remove() {
    mActorID = fpcM_ERROR_PROCESS_ID_e;
}

/* 801506EC-80150738 14B02C 004C+00 1/1 0/0 135/135 .text getActorP__18daNpcF_ActorMngr_cFv */
fopAc_ac_c* daNpcF_ActorMngr_c::getActorP() {
    fopAc_ac_c* actor = NULL;

    if (fopAcM_SearchByID(mActorID, &actor) == 1 && actor != NULL) {
        return actor;
    }

    return NULL;
}

/* 80150738-8015075C 14B078 0024+00 0/0 0/0 48/48 .text            initialize__15daNpcF_MatAnm_cFv
 */
void daNpcF_MatAnm_c::initialize() {
    field_0xF4 = 0.0f;
    field_0xF8 = 0.0f;
    mNowOffsetX = 0.0f;
    mNowOffsetY = 0.0f;
    mEyeMoveFlag = 0;
    mMorfFrm = 0;
}

/* 8015075C-80150870 14B09C 0114+00 1/0 0/0 0/0 .text calc__15daNpcF_MatAnm_cCFP11J3DMaterial */
void daNpcF_MatAnm_c::calc(J3DMaterial* i_material) const {
    J3DMaterialAnm::calc(i_material);

    for (u32 i = 0; i < 8; i++) {
        if (J3DMaterialAnm::getTexMtxAnm(i).getAnmFlag()) {
            J3DTexMtxInfo* curr_mtx_info =
                &i_material->getTexGenBlock()->getTexMtx(i)->getTexMtxInfo();

            if (mMorfFrm != 0) {
                f32 tmp8 = 1.0f / (mMorfFrm + 1);
                f32 tmp9 = (1.0f - tmp8);
                f32 tmp10 = field_0xF4 * (1.0f - tmp8);

                curr_mtx_info->mSRT.mTranslationX =
                    tmp10 + curr_mtx_info->mSRT.mTranslationX * tmp8;
                curr_mtx_info->mSRT.mTranslationY =
                    field_0xF8 * tmp9 + curr_mtx_info->mSRT.mTranslationY * tmp8;

            } else {
                if (mEyeMoveFlag != 0) {
                    curr_mtx_info->mSRT.mTranslationX = mNowOffsetX;
                    curr_mtx_info->mSRT.mTranslationY = mNowOffsetY;
                }
            }

            field_0xF4 = curr_mtx_info->mSRT.mTranslationX;
            field_0xF8 = curr_mtx_info->mSRT.mTranslationY;
        }
    }
}

/* 80150870-80150900 14B1B0 0090+00 2/2 0/0 8/8 .text initialize__16daNpcF_SPCurve_cFP5dPathi */
void daNpcF_SPCurve_c::initialize(dPath* i_path, int i_isReversed) {
    mNurbs = 0;
    field_0x02 = 0;
    mIsReversed = i_isReversed;
    mIsClosed = false;

    for (int i = 0; i < 96; i++) {
        mPoints[i].m_position.x = 0.0f;
        mPoints[i].m_position.y = 0.0f;
        mPoints[i].m_position.z = 0.0f;
    }

    if (i_path) {
        mIsClosed = dPath_ChkClose(i_path);
        mNurbs = daNpcF_putNurbs(i_path->m_points, i_path->m_num, 96, mPoints, mIsClosed);
    }
}

/* 80150900-8015095C 14B240 005C+00 0/0 0/0 20/20 .text            initialize__13daNpcF_Path_cFv */
void daNpcF_Path_c::initialize() {
    mIdx = 0;
    mIsReversed = false;
    mIsClosed = false;
    mPathInfo = NULL;

    mSPCurve.initialize(NULL, false);

    mRange = 0.0f;
    mPosDst = 0.0f;
    field_0x10 = 0.0f;
}

/* 8015095C-80150A24 14B29C 00C8+00 0/0 0/0 12/12 .text setPathInfo__13daNpcF_Path_cFUcScUc */
int daNpcF_Path_c::setPathInfo(u8 i_pathNo, s8 i_roomNo, u8 i_isReversed) {
    mPathInfo = NULL;
    mIdx = 0;
    mIsReversed = i_isReversed;

    if (i_pathNo != 0xFF) {
        mPathInfo = dPath_GetRoomPath(i_pathNo, i_roomNo);
        if (mPathInfo == NULL) {
            return 0;
        }

        mSPCurve.initialize(mPathInfo, mIsReversed);
        mIsClosed = dPath_ChkClose(mPathInfo);
        mPosition = getPntPos(getIdx());
    }

    return 1;
}

/* 80150A24-80150A7C 14B364 0058+00 1/1 0/0 1/1 .text            chkPassed__13daNpcF_Path_cF4cXyz */
BOOL daNpcF_Path_c::chkPassed(cXyz i_pos) {
    return daNpcF_chkPassed(i_pos, (dPnt*)mPathInfo->m_points, mIdx, mPathInfo->m_num,
                            mIsClosed, mIsReversed);
}

/* 80150A7C-80150BBC 14B3BC 0140+00 0/0 0/0 4/4 .text            chkPassedDst__13daNpcF_Path_cF4cXyz
 */
BOOL daNpcF_Path_c::chkPassedDst(cXyz i_pos) {
    return mPosDst + field_0x10 <= (mPosition - i_pos).abs();
}

/* 80150BBC-80150BE0 14B4FC 0024+00 0/0 0/0 8/8 .text            reverse__13daNpcF_Path_cFv */
void daNpcF_Path_c::reverse() {
    if (chkReverse()) {
        offReverse();
    } else {
        onReverse();
    }
}

/* 80150BE0-80150C18 14B520 0038+00 2/2 0/0 6/6 .text            setNextIdx__13daNpcF_Path_cFv */
BOOL daNpcF_Path_c::setNextIdx() {
    return daNpcF_incIdx(mPathInfo->m_num, mIdx, chkClose(), mIsReversed);
}

/* 80150C18-80150C60 14B558 0048+00 0/0 0/0 9/9 .text            getNextIdx__13daNpcF_Path_cFv */
int daNpcF_Path_c::getNextIdx() {
    u16 ret = mIdx;
    daNpcF_incIdx(mPathInfo->m_num, ret, chkClose(), mIsReversed);
    return ret;
}

/* 80150C60-80150CA8 14B5A0 0048+00 0/0 0/0 3/3 .text            getBeforeIdx__13daNpcF_Path_cFv */
int daNpcF_Path_c::getBeforeIdx() {
    u16 ret = mIdx;
    daNpcF_decIdx(mPathInfo->m_num, ret, chkClose(), mIsReversed);
    return ret;
}

/* 80150CA8-80150D44 14B5E8 009C+00 0/0 0/0 1/1 .text getBeforePos__13daNpcF_Path_cFR4cXyz */
BOOL daNpcF_Path_c::getBeforePos(cXyz& o_pos) {
    u16 idx = mIdx;
    BOOL ret = daNpcF_decIdx(mPathInfo->m_num, idx, chkClose(), mIsReversed);

    o_pos = getPntPos(idx);
    return ret;
}

/* 80150D44-80150DE0 14B684 009C+00 0/0 0/0 1/1 .text            getNextPos__13daNpcF_Path_cFR4cXyz
 */
BOOL daNpcF_Path_c::getNextPos(cXyz& o_pos) {
    u16 idx = mIdx;

    BOOL ret = daNpcF_incIdx(mPathInfo->m_num, idx, chkClose(), mIsReversed);

    o_pos = getPntPos(idx);
    return ret;
}

/* 80150DE0-80150EB4 14B720 00D4+00 0/0 0/0 16/16 .text getDstPos__13daNpcF_Path_cF4cXyzR4cXyz */
int daNpcF_Path_c::getDstPos(cXyz i_pos1, cXyz& o_pos2) {
    BOOL ret = false;

    while (!ret) {
        o_pos2 = getPntPos(getIdx());

        if (!chkPassed(i_pos1)) {
            break;
        }

        if (setNextIdx()) {
            ret = true;
        }
    }

    return ret;
}

/* 80150EB4-80151038 14B7F4 0184+00 0/0 0/0 2/2 .text setNextIdxDst__13daNpcF_Path_cF4cXyz */
void daNpcF_Path_c::setNextIdxDst(cXyz i_pos) {
    if (!setNextIdx()) {
        mPosDst = (i_pos - getPntPos(getIdx())).abs();
        mPosition = i_pos;
    }
}

/* 80151038-801510B8 14B978 0080+00 0/0 0/0 72/72 .text            initialize__15daNpcF_Lookat_cFv
 */
void daNpcF_Lookat_c::initialize() {
    for (int i = 0; i < 4; i++) {
        mJointPos[i].setall(0.0f);
        mAngularMoveDis[i].setall(0);
        mMinAngle[i].setall(0);
        mMaxAngle[i].setall(0);
        mRotAngle[i].setall(0);
        field_0x94[i] = false;
    }

    mAttnPos_p = NULL;
}

/* 801510B8-80151350 14B9F8 0298+00 0/0 0/0 34/34 .text
 * setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz              */
void daNpcF_Lookat_c::setParam(f32 param_0, f32 param_1, f32 param_2, f32 param_3, f32 param_4,
                               f32 param_5, f32 param_6, f32 param_7, f32 param_8, f32 param_9,
                               f32 param_10, f32 param_11, s16 i_rotAngle, cXyz* i_jointPos) {
    static cXyz vec(0.0f, 0.0f, 32.0f);

    mJointPos[0] = i_jointPos[0];
    mMinAngle[0].x = cM_deg2s(-param_1) - 0x4000;
    mMinAngle[0].y = cM_deg2s(param_2);
    mMinAngle[0].z = 0;
    mMaxAngle[0].x = cM_deg2s(-param_0) - 0x4000;
    mMaxAngle[0].y = cM_deg2s(param_3);
    mMaxAngle[0].z = 0;

    mJointPos[1] = i_jointPos[1];
    mMinAngle[1].set(-0x4000, 0, 0);
    mMaxAngle[1].set(-0x4000, 0, 0);

    mJointPos[2] = i_jointPos[2];
    mMinAngle[2].x = cM_deg2s(-param_9);
    mMinAngle[2].y = cM_deg2s(param_10);
    mMinAngle[2].z = 0;
    mMaxAngle[2].x = cM_deg2s(-param_8);
    mMaxAngle[2].y = cM_deg2s(param_11);
    mMaxAngle[2].z = 0;

    mDoMtx_stack_c::transS(mJointPos[2]);
    mDoMtx_stack_c::YrotM(i_rotAngle);
    mDoMtx_stack_c::multVec(&vec, &mJointPos[3]);

    mMinAngle[3].set(0, 0, 0);
    mMaxAngle[3].set(0, 0, 0);
}

/* 80151350-801515D4 14BC90 0284+00 0/0 0/0 34/34 .text
 * calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii        */
void daNpcF_Lookat_c::calc(fopAc_ac_c* i_actor, Mtx i_baseTransformMtx, csXyz** o_lookatAngle,
                           BOOL i_snap, int i_axis, BOOL i_debug) {
    cXyz sp68[4];
    csXyz sp50[4];
    cXyz sp40;
    f32 sp30[4];
    f32 sp1C;
    f32 angY;

    if (mAttnPos_p != NULL) {
        initCalc(i_actor, i_baseTransformMtx, sp68, sp50, sp30, sp40, i_debug);

        for (int i = 2; i >= -1; i--) {
            update(sp68, sp50, sp30);
            if (i >= 0) {
                calcMoveDisAngle(i, sp68, sp50, sp40, i_axis, i_debug);
            }
        }

        setRotAngle();
    } else {
        clrRotAngle();
    }

    int i, j;
    for (i = 2, j = 1; i >= 0; i--, j++) {
        if (i_snap) {
            *(o_lookatAngle[i]) = mRotAngle[i];
        } else {
            sp1C = o_lookatAngle[i]->x;
            angY = mRotAngle[i].x;
            cLib_addCalc2(&sp1C, angY, 0.25f, (f32)(0x800 / j));
            o_lookatAngle[i]->x = sp1C;

            f32 var_f30 = mRotAngle[i].y - o_lookatAngle[i]->y;
            sp1C = o_lookatAngle[i]->y;
            angY = mRotAngle[i].y;
            cLib_addCalc2(&sp1C, angY, 0.25f, (f32)(0x800 / j));

            if (i_debug) {
                OS_REPORT("|%d| a:%f(%d), b:%f(%d), axis:%d\n", i, sp1C, o_lookatAngle[i]->y, angY, mRotAngle[i].y, i_snap);
            }

            if (i_axis > 0 && angY - sp1C < 0.0f) {
                sp1C = angY;
            }
            if (i_axis < 0 && 0.0f < angY - sp1C) {
                sp1C = angY;
            }
            o_lookatAngle[i]->y = (s16)sp1C;

            o_lookatAngle[i]->z = 0;
        }
    }

    if (i_debug) {
        OS_REPORT("\n");
    }
}

/* 801515D4-80151648 14BF14 0074+00 1/1 0/0 0/0 .text adjustMoveDisAngle__15daNpcF_Lookat_cFRssss
 */
// NONMATCHING - regalloc, matches debug
void daNpcF_Lookat_c::adjustMoveDisAngle(s16& delta, s16 angle, s16 min, s16 max) {
    int newAngle = 0;

    newAngle = angle + delta;
    if (max < newAngle) {
        if (angle < max) {
            delta -= (newAngle - max);
        } else {
            delta = 0;
        }
    }

    newAngle = angle + delta;
    if (newAngle < min) {
        if (min < angle) {
            delta -= (newAngle - min);
        } else {
            delta = 0;
        }
    }
}

/* 80151648-80151A54 14BF88 040C+00 1/1 0/0 0/0 .text
 * initCalc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fP4cXyzP5csXyzPfR4cXyzi */
void daNpcF_Lookat_c::initCalc(fopAc_ac_c* i_actor, Mtx i_baseTransformMtx, cXyz* param_2,
                               csXyz* param_3, f32* param_4, cXyz& param_5, int i_debug) {
    Mtx mtx;
    cXyz local_90;
    cMtx_copy(i_baseTransformMtx, mtx);
    mtx[0][3] = 0.0f;
    mtx[1][3] = 0.0f;
    mtx[2][3] = 0.0f;

    mDoMtx_stack_c::copy(mtx);
    mDoMtx_stack_c::inverse();
    cMtx_copy(mDoMtx_stack_c::get(), mtx);
    mDoMtx_stack_c::transS(i_actor->current.pos);
    mDoMtx_stack_c::concat(mtx);

    for (int i = 0; i < 4; i++) {
        local_90 = mJointPos[i] - i_actor->current.pos;
        mDoMtx_stack_c::multVec(&local_90, &param_2[i]);
    }

    JUT_ASSERT(1244, 0 != mAttnPos_p);

    local_90 = *mAttnPos_p - i_actor->current.pos;
    mDoMtx_stack_c::multVec(&local_90, &param_5);

    for (int i = 0; i < 3; i++) {
        cXyz* vec = &param_2[i];
        local_90 = vec[1] - vec[0];
        param_4[i] = local_90.abs();
        param_3[i].setall(0);
        param_3[i].x = -cM_atan2s(local_90.y, local_90.absXZ());

        #ifdef DEBUG
        if (i_debug) {
            f32 var_f31 = fabsf(cM_ssin(param_3[i].x));
            OS_REPORT(">>>>>>>%d: sin(%d):%f\n", i, abs(param_3[i].x), var_f31);
        }
        #endif

        if (fabsf(cM_ssin(param_3[i].x)) < 0.63f) {
            param_3[i].y = cM_atan2s(local_90.x, local_90.z);
        } else {
            param_3[i].y = 0;
        }
    }
}

/* 80151A54-80151B68 14C394 0114+00 1/1 0/0 0/0 .text update__15daNpcF_Lookat_cFP4cXyzP5csXyzPf */
void daNpcF_Lookat_c::update(cXyz* param_0, csXyz* param_1, f32* param_2) {
    csXyz ang = csXyz::Zero;
    cXyz vec;
    Mtx mtx;
    cXyz* pparam0i;

    for (int i = 0; i < 3; i++) {
        mDoMtx_stack_c::XYZrotS(param_1[i]);
        cMtx_copy(mDoMtx_stack_c::get(), mtx);
        pparam0i = &param_0[i];
        mDoMtx_stack_c::transS(pparam0i[0]);

        ang.x += mAngularMoveDis[i].x;
        ang.y += mAngularMoveDis[i].y;
        mDoMtx_stack_c::ZXYrotM(ang);
        mDoMtx_stack_c::concat(mtx);

        vec.set(0.0f, 0.0f, param_2[i]);
        mDoMtx_stack_c::multVec(&vec, &pparam0i[1]);
    }
}

/* 80151B68-80151F54 14C4A8 03EC+00 1/1 0/0 0/0 .text
 * calcMoveDisAngle__15daNpcF_Lookat_cFiP4cXyzP5csXyz4cXyzii    */
void daNpcF_Lookat_c::calcMoveDisAngle(int i_no, cXyz* param_1, csXyz* param_2, cXyz param_3,
                                       int i_axis, int i_debug) {
    if (i_axis == 0) {
        field_0x94[i_no] = false;
    }

    if (!field_0x94[i_no]) {
        cXyz vec1 = param_3 - param_1[i_no];
        if (!vec1.isZero()) {
            vec1.normalize();
            cXyz vec2 = param_1[3] - param_1[i_no];
            if (!vec2.isZero()) {
                vec2.normalize();
                s16 ivar3 = -cM_atan2s(vec1.y, vec1.absXZ());
                s16 ivar4 = cM_atan2s(vec1.x, vec1.z);
                s16 ivar5 = -cM_atan2s(vec2.y, vec2.absXZ());
                s16 ivar6 = cM_atan2s(vec2.x, vec2.z);
                mAngularMoveDis[i_no].x += (s16)(ivar3 - ivar5);
                mAngularMoveDis[i_no].y += (s16)(ivar4 - ivar6);
            }
        }
    }

    adjustMoveDisAngle(mAngularMoveDis[i_no].x, param_2[i_no].x,
                       mMinAngle[i_no].x, mMaxAngle[i_no].x);
    adjustMoveDisAngle(mAngularMoveDis[i_no].y, param_2[i_no].y,
                       mMinAngle[i_no].y, mMaxAngle[i_no].y);

    if (i_axis < 0 && mAngularMoveDis[i_no].y > 0) {
        field_0x94[i_no] = false;
    }
    if (i_axis > 0 && mAngularMoveDis[i_no].y < 0) {
        field_0x94[i_no] = false;
    }
}

/* 80151F54-80151FE0 14C894 008C+00 1/1 0/0 0/0 .text            setRotAngle__15daNpcF_Lookat_cFv */
void daNpcF_Lookat_c::setRotAngle() {
    int ang_x = 0;
    int ang_y = 0;
    for (int i = 0; i < 4; i++) {
        ang_x += mAngularMoveDis[i].x;
        ang_x = cLib_minMaxLimit(ang_x, -0x8000, 0x7fff);
        ang_y += mAngularMoveDis[i].y;
        ang_y = cLib_minMaxLimit(ang_y, -0x8000, 0x7fff);

        mRotAngle[i].x = ang_x;
        mRotAngle[i].y = ang_y;
        mRotAngle[i].z = 0;
    }
}

/* 80151FE0-80152014 14C920 0034+00 1/1 0/0 0/0 .text            clrRotAngle__15daNpcF_Lookat_cFv */
void daNpcF_Lookat_c::clrRotAngle() {
    for (int i = 0; i < 4; i++) {
        mRotAngle[i].x = 0;
        mRotAngle[i].y = 0;
        mRotAngle[i].z = 0;
    }
}

/* 80152014-801522AC 14C954 0298+00 0/0 0/0 38/38 .text            execute__8daNpcF_cFv */
BOOL daNpcF_c::execute() {
    setParam();

    if (main()) {
        fopAcM_posMoveF(this, mCcStts.GetCCMoveP());
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();
        if (mGroundH != -1000000000.0f) {
            field_0x998 = daNpcF_getGroundAngle(&mGndChk, mCurAngle.y);
            setEnvTevColor();
            setRoomNo();
            mPolySound = dKy_pol_sound_get(&mAcch.m_gnd);
            mReverb = dComIfGp_getReverb(mCcStts.GetRoomId());
            if (mAcch.ChkWaterHit() && mAcch.m_wtr.GetHeight() > mGroundH) {
                mPolySound = dKy_pol_sound_get(&mAcch.m_wtr);
            }
        }
    }

    playAllAnm();
    adjustShapeAngle();
    setAttnPos();

    cLib_chaseF(&mExpressionMorf, 0.0f, 1.0f);
    setCollisions();

    if (mTwilight) {
        attention_info.flags |= 0x400000;
        attention_info.flags |= 0x800000;
        setHitodamaPrtcl();
    }

    mOldAngle = mCurAngle;
    mCutType = 0;
    mOrderSpeakEvt = false;
    mOrderNewEvt = false;
    field_0x9eb = false;
    field_0x9ef = 0;
    field_0x9f3 = 0;

    for (int i = 0; i < 5; i++) {
        if ((mAttnChangeTimer == 0 || mAttnIdx != i) && mAttnActorTimer[i] != 0 &&
            cLib_calcTimer(&mAttnActorTimer[i]) == 0)
        {
            mAttnActor[i].remove();
        }
    }

    if (mDamageTimer != 0) {
        cLib_calcTimer(&mDamageTimer);
    }

    return true;
}

/* 801522AC-80152614 14CBEC 0368+00 0/0 0/0 33/33 .text draw__8daNpcF_cFiifP11_GXColorS10i */
int daNpcF_c::draw(BOOL i_isTest, BOOL param_1, f32 i_shadowDepth, _GXColorS10* i_fogColor,
                   BOOL i_hideDamage) {
    f32 damage_ratio, frame;
    J3DModel* model = mpMorf->getModel();
    J3DModelData* modelData = model->getModelData();
    field_0x9f3 = 1;

    if (!checkHide()) {
        if (!i_hideDamage && mDamageTimer != 0 && mTotalDamageTimer != 0) {
            damage_ratio = (f32)mDamageTimer / (f32)mTotalDamageTimer;
        } else {
            damage_ratio = 0.0f;
        }

        if (cM3d_IsZero_inverted(damage_ratio)) {
            tevStr.TevColor.r = (s16)(damage_ratio * 20.0f);
            tevStr.TevColor.g = 0;
        } else if (i_isTest) {
            tevStr.TevColor.g = 20;
            tevStr.TevColor.r = 0;
        } else if (i_fogColor != NULL) {
            tevStr.TevColor.r = i_fogColor->r;
            tevStr.TevColor.g = i_fogColor->g;
            tevStr.TevColor.b = i_fogColor->b;
            tevStr.TevColor.a = i_fogColor->a;
        } else {
            tevStr.TevColor.g = 0;
            tevStr.TevColor.r = 0;
        }

        if (mTwilight) {
            g_env_light.settingTevStruct(4, &current.pos, &tevStr);
        } else {
            g_env_light.settingTevStruct(0, &current.pos, &tevStr);
        }
        g_env_light.setLightTevColorType_MAJI(model->getModelData(), &tevStr);

        if (!drawDbgInfo()) {
            if (mAnmFlags & ANM_PLAY_BTP) {
                mBtpAnm.entry(&modelData->getMaterialTable(), (s16)mBtpAnm.getFrame());
            }
            if (mAnmFlags & ANM_PLAY_BTK) {
                frame = mBtkAnm.getFrame();
                mBtkAnm.entry(&modelData->getMaterialTable(), frame);
            }
            if (mAnmFlags & ANM_PLAY_BRK) {
                frame = mBrkAnm.getFrame();
                mBrkAnm.entry(&modelData->getMaterialTable(), frame);
            }

            if (param_1) {
                fopAcM_setEffectMtx(this, modelData);
            }

            if (mTwilight) {
                dComIfGd_setListDark();
                mpMorf->entryDL();
                dComIfGd_setList();
            } else {
                mpMorf->entryDL();
            }

            if (mAnmFlags & ANM_PLAY_BTP) {
                mBtpAnm.remove(modelData);
            }
            if (mAnmFlags & ANM_PLAY_BTK) {
                mBtkAnm.remove(modelData);
            }
            if (mAnmFlags & ANM_PLAY_BRK) {
                mBrkAnm.remove(modelData);
            }

            mShadowKey = dComIfGd_setShadow(mShadowKey, true, model, &current.pos, i_shadowDepth,
                                            20.0f, current.pos.y, mGroundH, mGndChk, &tevStr, 0,
                                            1.0f, dDlst_shadowControl_c::getSimpleTex());

            drawOtherMdls();
        }
    }

    return 1;
}

/* 80152614-80152654 14CF54 0040+00 0/0 0/0 13/13 .text
 * tgHitCallBack__8daNpcF_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
void daNpcF_c::tgHitCallBack(fopAc_ac_c* i_this, dCcD_GObjInf* param_1, fopAc_ac_c* i_actor,
                             dCcD_GObjInf* param_3) {
    if (i_actor != NULL && fopAcM_GetProfName(i_actor) == PROC_ALINK) {
        if (daPy_getPlayerActorClass() == i_actor) {
            u8 cut_type = static_cast<daPy_py_c*>(i_actor)->getCutType();
            static_cast<daNpcF_c*>(i_this)->setCutType(cut_type);
        } else {
            static_cast<daNpcF_c*>(i_this)->setCutType(daPy_py_c::CUT_TYPE_NM_VERTICAL);
        }
    }
}

/* 804257E8-80425978 052508 0190+00 4/4 0/0 0/0 .bss             mFindActorPList__8daNpcF_c */
fopAc_ac_c* daNpcF_c::mFindActorPList[100];

/* 80450FF0-80450FF4 0004F0 0004+00 4/4 0/0 0/0 .sbss            mFindCount__8daNpcF_c */
s32 daNpcF_c::mFindCount;

/* 80152654-801526E8 14CF94 0094+00 0/0 0/0 12/12 .text            srchAttnActor1__8daNpcF_cFPvPv */
void* daNpcF_c::srchAttnActor1(void* i_proc, void* param_1) {
    if (mFindCount < 100 && fopAcM_IsActor(i_proc)
        && (fopAcM_GetName(i_proc) == PROC_NI || fopAcM_GetName(i_proc) == PROC_COW
            || fopAcM_GetName(i_proc) == PROC_NPC_NE || fopAcM_GetName(i_proc) == PROC_DO
            || fopAcM_GetName(i_proc) == PROC_SQ || fopAcM_GetName(i_proc) == PROC_BD))
    {
        mFindActorPList[mFindCount] = static_cast<fopAc_ac_c*>(i_proc);
        mFindCount++;
    }
    return NULL;
}

/* 80450FF4-80450FF8 0004F4 0002+02 2/2 0/0 0/0 .sbss            mSrchActorName__8daNpcF_c */
s16 daNpcF_c::mSrchActorName;

/* 801526E8-8015276C 14D028 0084+00 1/1 0/0 0/0 .text            srchActor__8daNpcF_cFPvPv */
void* daNpcF_c::srchActor(void* i_proc, void* i_this) {
    if (mFindCount < 100 && fopAc_IsActor(i_proc) && i_proc != i_this
        && mSrchActorName == fopAcM_GetName(i_proc))
    {
        mFindActorPList[mFindCount] = static_cast<fopAc_ac_c*>(i_proc);
        mFindCount++;
    }

    return NULL;
}

/* 8015276C-801527FC 14D0AC 0090+00 2/0 0/0 40/9 .text            setMtx__8daNpcF_cFv */
void daNpcF_c::setMtx() {
    J3DModel* model = mpMorf->getModel();
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(mCurAngle);
    mDoMtx_stack_c::scaleM(scale);
    model->setBaseTRMtx(mDoMtx_stack_c::get());
    model->setUserArea((u32)this);

    if (mAnmFlags & 0x100) {
        mBckAnm.getBckAnm()->setFrame(mBckAnm.getFrame());
        mpMorf->modelCalc();
    } else {
        mpMorf->modelCalc();
    }
}

/* 801527FC-801528C8 14D13C 00CC+00 2/0 0/0 38/0 .text            setMtx2__8daNpcF_cFv */
void daNpcF_c::setMtx2() {
    J3DModel* model = mpMorf->getModel();
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(mCurAngle);
    mDoMtx_stack_c::scaleM(scale);
    model->setBaseTRMtx(mDoMtx_stack_c::get());
    model->setUserArea((u32)this);

    if (cM3d_IsZero_inverted(mExpressionMorf)) {
        mpMorf->onMorfNone();
    } else {
        mpMorf->offMorfNone();
    }

    if (mAnmFlags & 0x100) {
        mBckAnm.getBckAnm()->setFrame(mBckAnm.getFrame());
        mpMorf->modelCalc();
    } else {
        mpMorf->modelCalc();
    }
}

/* 801528C8-80152B2C 14D208 0264+00 0/0 0/0 76/76 .text            initialize__8daNpcF_cFv */
void daNpcF_c::initialize() {
    field_0x824.remove();

    for (int i = 0; i < 5; i++) {
        mAttnActor[i].remove();
    }

    for (int i = 0; i < 3; i++) {
        mLookatPos[i].setall(0.0f);
    }

    mLookPos.setall(0.0f);
    field_0x884.setall(0.0f);
    field_0x890.setall(0.0f);
    field_0x89c.setall(0.0f);
    field_0x8a8.setall(0.0f);
    mHeadPos.setall(0.0f);
    mCurAngle.setall(0);
    mOldAngle.setall(0);
    mEyeAngle.setall(0);
    mHeadAngle.setall(0);

    for (int i = 0; i < 3; i++) {
        field_0x908[i].setall(0);
        mLookatAngle[i].setall(0);
    }

    mStaffID = -1;
    mCutType = 0;
    mAttnIdx = 0;
    mAttnChangeTimer = 0;

    for (int i = 0; i < 5; i++) {
        mAttnActorTimer[i] = 0;
    }

    mMsgTimer = 0;
    mDamageTimer = 0;
    mTotalDamageTimer = 0;
    field_0x95c = 0;
    mEventTimer = 0;
    mBtpTimer = 0;
    mTurnAmount = 0;
    mTurnMode = 0;
    mTurnStepNum = 0.0f;
    mExpressionMorfOverride = 0.0f;
    mMotionMorfOverride = 0.0f;
    mGroundH = 0.0f;

    for (int i = 0; i < 3; i++) {
        field_0x984[i] = 0.0f;
    }

    field_0x990 = 0;
    field_0x992 = 0;
    mTurnStartAngle = 0;
    mTurnTargetAngle = 0;
    field_0x998 = 0;
    mAnmFlags = 0;
    mShadowKey = 0;
    field_0x9a4 = -1;
    mHitodamaParticleKey[0] = -1;
    mHitodamaParticleKey[1] = -1;
    mEventIdx = -1;
    mExpressionPhase = 0;
    mExpressionPrevPhase = 0;
    mMotionPhase = 0;
    mMotionPrevPhase = 0;
    mExpression = -1;
    mMotion = -1;
    mMotionLoops = 0;
    mExpressionLoops = 0;
    mOrderEvtNo = 0;
    mOrderSpeakEvt = false;
    field_0x9ea = false;
    field_0x9eb = false;
    field_0x9ec = false;
    mOrderNewEvt = false;
    field_0x9ee = false;
    field_0x9ef = 0;
    mIsDamaged = false;
    field_0x9f1 = 0;
    mHide = false;
    field_0x9f3 = 0;
    field_0x9f5 = 1;
    field_0x9f6 = 1;
    field_0x9d2 = cM_rndF(0x10000);
}

/* 80152B2C-80152B68 14D46C 003C+00 0/0 0/0 69/69 .text            getTrnsfrmKeyAnmP__8daNpcF_cFPci
 */
J3DAnmTransformKey* daNpcF_c::getTrnsfrmKeyAnmP(char* i_arcName, int i_resIdx) {
    return (J3DAnmTransformKey*)dComIfG_getObjectRes(i_arcName, i_resIdx);
}

/* 80152B68-80152BA4 14D4A8 003C+00 0/0 0/0 31/31 .text            getTexPtrnAnmP__8daNpcF_cFPci */
J3DAnmTexPattern* daNpcF_c::getTexPtrnAnmP(char* i_arcName, int i_resIdx) {
    return (J3DAnmTexPattern*)dComIfG_getObjectRes(i_arcName, i_resIdx);
}

/* 80152BA4-80152BE0 14D4E4 003C+00 0/0 0/0 50/50 .text            getTexSRTKeyAnmP__8daNpcF_cFPci
 */
J3DAnmTextureSRTKey* daNpcF_c::getTexSRTKeyAnmP(char* i_arcName, int i_resIdx) {
    return (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(i_arcName, i_resIdx);
}

/* 80152BE0-80152C1C 14D520 003C+00 0/0 0/0 2/2 .text            getTevRegKeyAnmP__8daNpcF_cFPci */
J3DAnmTevRegKey* daNpcF_c::getTevRegKeyAnmP(char* i_arcName, int i_resIdx) {
    return (J3DAnmTevRegKey*)dComIfG_getObjectRes(i_arcName, i_resIdx);
}

/* 80152C1C-80152C80 14D55C 0064+00 0/0 0/0 38/38 .text
 * setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii          */
BOOL daNpcF_c::setMcaMorfAnm(J3DAnmTransformKey* i_anm, f32 i_speed, f32 i_morf, int i_mode,
                             int i_start, int i_end) {
    mpMorf->setAnm(i_anm, i_mode, i_morf, i_speed, (f32)i_start, (f32)i_end);
    return true;
}

/* 80152C80-80152CC4 14D5C0 0044+00 0/0 0/0 25/25 .text
 * setBckAnm__8daNpcF_cFP15J3DAnmTransformfiiib                 */
BOOL daNpcF_c::setBckAnm(J3DAnmTransform* i_bck, f32 i_speed, int i_mode, int i_start, int i_end,
                         bool i_modify) {
    return mBckAnm.init(i_bck, true, i_mode, i_speed, (s16)i_start, (s16)i_end, i_modify);
}

/* 80152CC4-80152D04 14D604 0040+00 0/0 0/0 32/32 .text
 * setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi    */
BOOL daNpcF_c::setBtpAnm(J3DAnmTexPattern* i_btp, J3DModelData* i_modelData, f32 i_speed,
                         int i_mode) {
    return mBtpAnm.init(i_modelData, i_btp, true, i_mode, i_speed, 0, -1);
}

/* 80152D04-80152D44 14D644 0040+00 0/0 0/0 26/26 .text
 * setBtkAnm__8daNpcF_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi */
BOOL daNpcF_c::setBtkAnm(J3DAnmTextureSRTKey* i_btk, J3DModelData* i_modelData, f32 i_speed,
                         int i_mode) {
    return mBtkAnm.init(i_modelData, i_btk, true, i_mode, i_speed, 0, -1);
}

/* 80152D44-80152D84 14D684 0040+00 0/0 0/0 2/2 .text
 * setBrkAnm__8daNpcF_cFP15J3DAnmTevRegKeyP12J3DModelDatafi     */
BOOL daNpcF_c::setBrkAnm(J3DAnmTevRegKey* i_brk, J3DModelData* i_modelData, f32 i_speed,
                         int i_mode) {
    return mBrkAnm.init(i_modelData, i_brk, true, i_mode, i_speed, 0, -1);
}

/* 80152D84-80152DE0 14D6C4 005C+00 1/1 0/0 40/40 .text            setEnvTevColor__8daNpcF_cFv */
void daNpcF_c::setEnvTevColor() {
    tevStr.YukaCol = dComIfG_Bgsp().GetPolyColor(mGndChk);
    tevStr.room_no = dComIfG_Bgsp().GetRoomId(mGndChk);
}

/* 80152DE0-80152E24 14D720 0044+00 1/1 0/0 40/40 .text            setRoomNo__8daNpcF_cFv */
void daNpcF_c::setRoomNo() {
    int room_id = dComIfG_Bgsp().GetRoomId(mGndChk);
    fopAcM_SetRoomNo(this, room_id);
    mCcStts.SetRoomId(room_id);
}

/* 80152E24-80152EC4 14D764 00A0+00 1/1 0/0 0/0 .text            chkEndAnm__8daNpcF_cFf */
BOOL daNpcF_c::chkEndAnm(f32 param_0) {
    switch (mpMorf->getPlayMode()) {
    case J3DFrameCtrl::EMode_LOOP:
        return mpMorf->isLoop();
    case J3DFrameCtrl::EMode_NONE:
    case J3DFrameCtrl::EMode_RESET:
        return mpMorf->isStop() && mpMorf->getPlaySpeed() == 0.0f && param_0 != 0.0f;
    case J3DFrameCtrl::EMode_REVERSE:
    default:
        return false;
    }
}

/* 80152EC4-80152F40 14D804 007C+00 1/1 0/0 0/0 .text chkEndAnm__8daNpcF_cFP12J3DFrameCtrlf */
/**
 * Check whether an animation has ended or looped.
 * @param frameCtrl The frame controller for the animation.
 * @param prevRate The previous rate of animation.
 * @return `true` if the animation has just stopped or just looped, `false` otherwise. Returns
 * `false` if the animation is two-way (attribute 3 or 4).
 */
BOOL daNpcF_c::chkEndAnm(J3DFrameCtrl* frameCtrl, f32 prevRate) {
    switch (frameCtrl->getAttribute()) {
    case J3DFrameCtrl::EMode_LOOP:
        return frameCtrl->checkState(2);
    case J3DFrameCtrl::EMode_NONE:
    case J3DFrameCtrl::EMode_RESET:
        return frameCtrl->checkState(1) && frameCtrl->getRate() == 0.0f && prevRate != 0.0f;
    case J3DFrameCtrl::EMode_REVERSE:
    default:
        return false;
    }
}

/* 80152F40-80153150 14D880 0210+00 1/1 0/0 2/2 .text            playAllAnm__8daNpcF_cFv */
BOOL daNpcF_c::playAllAnm() {
    f32 rate;
    if (!(mAnmFlags & ANM_PAUSE_EXPRESSION)) {
        if (mAnmFlags & ANM_PLAY_BCK) {
            rate = mBckAnm.getPlaySpeed();
            if (mAnmFlags & ANM_PAUSE_BCK) {
                mBckAnm.setPlaySpeed(0.0f);
            }

            mBckAnm.play();

            if (chkEndAnm(mBckAnm.getFrameCtrl(), rate)) {
                mExpressionLoops++;
            }

            mBckAnm.setPlaySpeed(rate);
        }

        if (mAnmFlags & ANM_PLAY_BTP) {
            rate = mBtpAnm.getPlaySpeed();
            if (mAnmFlags & ANM_PAUSE_BTP) {
                mBtpAnm.setPlaySpeed(0.0f);
            }

            mBtpAnm.play();
            mBtpAnm.setPlaySpeed(rate);

            if (mAnmFlags & ANM_FLAG_800) {
                if (chkEndAnm(mBtpAnm.getFrameCtrl(), rate)) {
                    mBtpTimer = cLib_getRndValue(90, 90);
                    mBtpAnm.setPlaySpeed(0.0f);
                }
            } else {
                mBtpTimer = 0;
            }

            if (cLib_calcTimer(&mBtpTimer) == 0) {
                mBtpAnm.setPlaySpeed(1.0f);
            }
        }
    }

    if (mAnmFlags & ANM_PLAY_MORF) {
        rate = mpMorf->getPlaySpeed();
        if (mAnmFlags & ANM_PAUSE_MORF) {
            mpMorf->setPlaySpeed(0.0f);
            mpMorf->play(mPolySound, mReverb);
            mpMorf->setPlaySpeed(rate);
        } else {
            mpMorf->play(mPolySound, mReverb);
            if (chkEndAnm(rate)) {
                mMotionLoops++;
            }
        }
    }

    if (mAnmFlags & ANM_PLAY_BTK) {
        rate = mBtkAnm.getPlaySpeed();
        if (mAnmFlags & ANM_PAUSE_BTK) {
            mBtkAnm.setPlaySpeed(0.0f);
        }
        if (!ctrlBtk()) {
            mBtkAnm.play();
        }
        mBtkAnm.setPlaySpeed(rate);
    }

    if (mAnmFlags & ANM_PLAY_BRK) {
        rate = mBrkAnm.getPlaySpeed();
        if (mAnmFlags & ANM_PAUSE_BRK) {
            mBrkAnm.setPlaySpeed(0.0f);
        }
        mBrkAnm.play();
        mBrkAnm.setPlaySpeed(rate);
    }

    mAnmFlags &= ~ANM_PAUSE_ALL;
    return true;
}

/* 80153150-80153264 14DA90 0114+00 0/0 0/0 25/25 .text
 * playExpressionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData */
/**
 * Set the expression animation.
 * @param anm The animation data, a two-dimensional array of data pointers, indexed first by
 *  the expression index and second by the expression phase. Each piece of data consists of
 *  an animation index for that phase of the expression, the number of interpolation frames, and
 *  the number of loops before moving on to the next phase (or 0 for the last phase).
 */
// NONMATCHING - regalloc, matches debug
void daNpcF_c::playExpressionAnm(daNpcF_c::daNpcF_anmPlayData*** anm) {
    daNpcF_anmPlayData* playData = NULL;
    f32 morf;

    if (anm[mExpression] != NULL) {
        playData = anm[mExpression][mExpressionPhase];
    }

    if (playData != NULL) {
        if (mExpressionPrevPhase == mExpressionPhase && playData->numLoops > 0 &&
            playData->numLoops <= mExpressionLoops)
        {
            mExpressionPhase++;
            playData = anm[mExpression][mExpressionPhase];
        }

        if (playData != NULL && mExpressionPrevPhase != mExpressionPhase) {
            setExpressionAnm(playData->idx, true);
            morf = playData->morf;
            if (mExpressionPhase == 0 && 0.0f <= mExpressionMorfOverride) {
                morf = mExpressionMorfOverride;
            }
            mExpressionMorf = morf;
            mpMorf->setMorf(morf);
        }
    }

    mExpressionPrevPhase = mExpressionPhase;
}

/* 80153264-8015337C 14DBA4 0118+00 0/0 0/0 37/37 .text
 * playMotionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData  */
/**
 * Set the motion animation.
 * @param anm The animation data, a two-dimensional array of data pointers, indexed first by
 *  the motion index and second by the motion phase. Each piece of data consists of
 *  an animation index for that phase of the motion, the number of interpolation frames, and the
 *  number of loops before moving on to the next phase (or 0 for the last phase).
 */
// NONMATCHING - regalloc, matches debug
void daNpcF_c::playMotionAnm(daNpcF_c::daNpcF_anmPlayData*** anm) {
    daNpcF_anmPlayData* playData = NULL;
    f32 morf;

    if (anm[mMotion] != NULL) {
        playData = anm[mMotion][mMotionPhase];
    }

    if (playData != NULL) {
        if (mMotionPrevPhase == mMotionPhase && playData->numLoops > 0 &&
            playData->numLoops <= mMotionLoops)
        {
            mMotionPhase++;
            playData = anm[mMotion][mMotionPhase];
        }
    
        if (playData != NULL && mMotionPrevPhase != mMotionPhase) {
            setMotionAnm(playData->idx, 0.0f);
            morf = playData->morf;
            if (mMotionPhase == 0 && 0.0f <= mMotionMorfOverride) {
                morf = mMotionMorfOverride;
            }
            mExpressionMorf = 0.0f;
            mpMorf->setMorf(morf);
        }
    }

    mMotionPrevPhase = mMotionPhase;
}

/* 8015337C-80153578 14DCBC 01FC+00 0/0 0/0 34/34 .text            setLookatMtx__8daNpcF_cFiPif */
/**
 * Compute the animation matrix for the backbone, neck, or head joint.
 * This matrix is applied to the matrix in `mDoMtx_stack_c::now`.
 * @param i_jointNo The index of the joint in question.
 * @param i_jointList An array of the three indices of the joints for the backbone, neck, and head.
 * @param i_neckHeadAngleRatio The ratio between the neck angle and the head angle.
 */
void daNpcF_c::setLookatMtx(int i_jointNo, int* i_jointList, f32 i_neckHeadAngleRatio) {
    cXyz pos;
    Mtx baseMtx, invParentMtx;

    if (i_jointList[0] == i_jointNo || i_jointList[1] == i_jointNo || i_jointList[2] == i_jointNo) {
        mLookatAngle[1].x = (s16)((f32)mLookatAngle[2].x * i_neckHeadAngleRatio);
        mLookatAngle[1].y = (s16)((f32)mLookatAngle[2].y * i_neckHeadAngleRatio);
        mLookatAngle[1].z = (s16)((f32)mLookatAngle[2].z * i_neckHeadAngleRatio);

        MTXCopy(mDoMtx_stack_c::get(), baseMtx);
        pos.set(baseMtx[0][3], baseMtx[1][3], baseMtx[2][3]);
        baseMtx[0][3] = baseMtx[1][3] = baseMtx[2][3] = 0.0f;

        mDoMtx_stack_c::ZXYrotS(mCurAngle);
        if (i_jointList[0] != i_jointNo) {
            if (i_jointList[1] == i_jointNo) {
                mDoMtx_stack_c::ZXYrotM(mLookatAngle[0]);
            } else if (i_jointList[2] == i_jointNo) {
                mDoMtx_stack_c::ZXYrotM(mLookatAngle[1]);
            }
        }
        mDoMtx_stack_c::inverse();
        MTXCopy(mDoMtx_stack_c::get(), invParentMtx);

        mDoMtx_stack_c::transS(pos);
        mDoMtx_stack_c::XYZrotM(mCurAngle);
        if (i_jointList[0] == i_jointNo) {
            mDoMtx_stack_c::ZXYrotM(mLookatAngle[0]);
        } else if (i_jointList[1] == i_jointNo) {
            mDoMtx_stack_c::ZXYrotM(mLookatAngle[1]);
        } else if (i_jointList[2] == i_jointNo) {
            mDoMtx_stack_c::ZXYrotM(mLookatAngle[2]);
        }
        mDoMtx_stack_c::concat(invParentMtx);
        mDoMtx_stack_c::concat(baseMtx);
    }
}

/* 80153578-80153658 14DEB8 00E0+00 0/0 0/0 13/13 .text            hitChk2__8daNpcF_cFP8dCcD_Cylii
 */
BOOL daNpcF_c::hitChk2(dCcD_Cyl* i_ccCyl, BOOL param_1, BOOL param_2) {
    static_cast<dCcD_Stts*>(i_ccCyl->GetStts())->Move();

    if (mDamageTimer == 0 && i_ccCyl->ChkTgHit()) {
        fopAc_ac_c* hit_actor = i_ccCyl->GetTgHitAc();
        if (hit_actor != NULL) {
            field_0x990 = fopAcM_searchActorAngleY(this, hit_actor) - mCurAngle.y;
            if (fopAcM_GetName(hit_actor) == PROC_NPC_TK) {
                if (param_1) {
                    static_cast<daNPC_TK_c*>(hit_actor)->setBump();
                    return true;
                } else {
                    return false;
                }
            } else {
                if (param_2) {
                    return true;
                } else {
                    return false;
                }
            }
        }
    }

    i_ccCyl->ClrTgHit();
    return false;
}

/* 80153658-80153718 14DF98 00C0+00 0/0 0/0 12/12 .text            setDamage__8daNpcF_cFiii */
void daNpcF_c::setDamage(int i_timer, int i_expression, int i_motion) {
    if (i_expression >= 0) {
        setExpression(i_expression, 0.0f);
    }
    if (i_motion >= 0) {
        setMotion(i_motion, 0.0f, true);
    }

    field_0x984[0] = 8192.0f;
    field_0x984[2] = 12743.0f;
    field_0x992 = 0x4000;
    mTotalDamageTimer = i_timer;
    mDamageTimer = mTotalDamageTimer;
    speed.setall(0.0f);
    speedF = 0.0f;
    mIsDamaged = true;
}

/* 80153718-8015387C 14E058 0164+00 0/0 0/0 81/81 .text ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
 */
int daNpcF_c::ctrlMsgAnm(int& o_expression, int& o_motion, fopAc_ac_c* param_2, BOOL param_3) {
    o_expression = -1;
    o_motion = -1;

    if (param_3 || eventInfo.checkCommandTalk() || mStaffID != -1) {
        fopAc_ac_c* talkPartner = dComIfGp_event_getTalkPartner();
        if (talkPartner == param_2) {
            msg_class* msg_p = dMsgObject_c::getActor();
            JUT_ASSERT(2780, 0 != msg_p);

            if (msg_p->mode == 2 || msg_p->mode == 3) {
                field_0x9a4 = -1;
            } else if (msg_p->mode == dEvtCmd_INCATCH_e) {
                if (msg_p->msg_idx != field_0x9a4) {
                    o_expression = dComIfGp_getMesgFaceAnimeAttrInfo();
                    o_motion = dComIfGp_getMesgAnimeAttrInfo();
                    field_0x9a4 = msg_p->msg_idx;
                }

                if (dMsgObject_c::isMouthCheck()) {
                    mAnmFlags &= ~ANM_PAUSE_EXPRESSION;
                } else {
                    mAnmFlags |= ANM_PAUSE_EXPRESSION;
                }
                mMsgTimer = 20;
            } else {
                if (mAnmFlags & ANM_PAUSE_EXPRESSION) {
                    mAnmFlags &= ~ANM_PAUSE_EXPRESSION;
                }
                field_0x9a4 = -1;
            }
        } else {
            field_0x9a4 = -1;
            if (mMsgTimer != 0) {
                mMsgTimer = 1;
            }
        }
    }

    if (!param_3) {
        cLib_calcTimer(&mMsgTimer);
    }

    return mMsgTimer;
}

/* 8015387C-80153954 14E1BC 00D8+00 0/0 0/0 45/45 .text            orderEvent__8daNpcF_cFiPcUsUsUcUs
 */
void daNpcF_c::orderEvent(int i_speak, char* i_evtName, u16 param_2, u16 i_priority, u8 i_mapToolID,
                          u16 i_flag) {
    if (i_evtName != NULL) {
        mEventIdx = dComIfGp_getEventManager().getEventIdx(this, i_evtName, 0xff);
        fopAcM_orderOtherEventId(this, mEventIdx, i_mapToolID, param_2, i_priority, i_flag);
    } else if (!mTwilight || daPy_py_c::checkNowWolfEyeUp()) {
        if ((attention_info.flags & 8) || (attention_info.flags & 2)) {
            eventInfo.onCondition(dEvtCnd_CANTALK_e);
            if (i_speak) {
                fopAcM_orderSpeakEvent(this, 0, 0);
            }
        }
    }
}

/* 80153954-801539F0 14E294 009C+00 0/0 0/0 31/31 .text            changeEvent__8daNpcF_cFPcPcUsUs
 */
void daNpcF_c::changeEvent(char* i_arcName, char* i_evtName, u16 param_2, u16 param_3) {
    if (i_arcName != NULL) {
        eventInfo.setArchiveName(i_arcName);
        dComIfGp_getEventManager().setObjectArchive(eventInfo.getArchiveName());
    }

    JUT_ASSERT(2887, 0 != i_evtName);

    mEventIdx = dComIfGp_getEventManager().getEventIdx(this, i_evtName, 0xFF);
    dComIfGp_getEvent().reset(this);
    fopAcM_orderChangeEventId(this, mEventIdx, param_2, param_3);
}

/* 801539F0-80153A78 14E330 0088+00 0/0 0/0 21/21 .text chkActorInSight__8daNpcF_cFP10fopAc_ac_cf
 */
BOOL daNpcF_c::chkActorInSight(fopAc_ac_c* i_actor, f32 i_fovY) {
    s16 tmp = mHeadAngle.y;
    s16 angle = fopAcM_searchActorAngleY(this, i_actor) - tmp;
    s16 abs_angle = abs(angle);
    return i_fovY == 180.0f || abs_angle < cM_deg2s(i_fovY);
}

/* 80153A78-80153BDC 14E3B8 0164+00 1/1 0/0 0/0 .text
 * chkActorInArea__8daNpcF_cFP10fopAc_ac_c4cXyz4cXyzs           */
/**
 * Check whether an actor is in an elliptic cylinder region.
 * @param i_actor The actor to check.
 * @param i_center The center of the cylinder.
 * @param i_bounds The dimensions of the bounding box.
 * @param i_angleY The angle to align the axis of the ellipse.
 * @return Whether the actor's position vector lies in the elliptic cylinder.
 */
BOOL daNpcF_c::chkActorInArea(fopAc_ac_c* i_actor, cXyz i_center, cXyz i_bounds, s16 i_angleY) {
    cXyz delta, relPos;
    BOOL ret = false;

    mDoMtx_stack_c::YrotS(-i_angleY);
    mDoMtx_stack_c::transM(-i_center.x, -i_center.y, -i_center.z);
    mDoMtx_stack_c::multVec(&i_actor->current.pos, &relPos);
    f32 boundX = fabsf(i_bounds.x);
    f32 boundZ = fabsf(i_bounds.z);
    f32 posX = fabsf(relPos.x);
    f32 posZ = fabsf(relPos.z);
    delta = i_center - i_actor->current.pos;

    if ((posX * posX) / (boundX * boundX) + (posZ * posZ) / (boundZ * boundZ) <= 1.0f
        && -i_bounds.y < delta.y && delta.y < i_bounds.y)
    {
        ret = true;
    }

    return ret;
}

/* 80153BDC-80153D1C 14E51C 0140+00 0/0 0/0 25/25 .text
 * chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci    */
/**
 * Check whether an actor lies within another actor's region of attention.
 * @param i_actorCheck The actor to check.
 * @param i_actorAttn The actor whose attention region we are using.
 * @param i_distIndex An index into the distance table to determine the attention region.
 * @return Whether `actorCheck` is within the region of attention of `actorAttn`.
 */
BOOL daNpcF_c::chkActorInAttnArea(fopAc_ac_c* i_actorCheck, fopAc_ac_c* i_actorAttn,
                                  int i_distIndex) {
    BOOL ret = false;
    f32 neg_lower_y = dComIfGp_getAttention()->getDistTable(i_distIndex).mLowerY * -1.0f;
    f32 neg_upper_y = dComIfGp_getAttention()->getDistTable(i_distIndex).mUpperY * -1.0f;
    cXyz center = i_actorAttn->current.pos;
    cXyz bounds;

    bounds.x = dComIfGp_getAttention()->getDistTable(i_distIndex).mDistMax;
    bounds.y = (fabsf(neg_lower_y) + fabsf(neg_upper_y)) / 2.0f;
    bounds.z = dComIfGp_getAttention()->getDistTable(i_distIndex).mDistMax;
    center.y = bounds.y + (center.y + neg_upper_y);

    if (chkActorInArea(i_actorCheck, center, bounds, i_actorAttn->shape_angle.y)) {
        ret = true;
    }

    return ret;
}

/* 80153D1C-80153D84 14E65C 0068+00 0/0 0/0 118/118 .text initTalk__8daNpcF_cFiPP10fopAc_ac_c */
BOOL daNpcF_c::initTalk(int i_flowID, fopAc_ac_c** param_1) {
    mFlow.init(this, i_flowID, 0, param_1);
    f32 tmp = 0.0f;
    speedF = tmp;
    speed.set(tmp, tmp, tmp);
    mOrderSpeakEvt = false;
    field_0x9ec = false;
    return true;
}

/* 80153D84-80153EF4 14E6C4 0170+00 0/0 0/0 119/119 .text talkProc__8daNpcF_cFPiiPP10fopAc_ac_c */
BOOL daNpcF_c::talkProc(int* param_0, BOOL param_1, fopAc_ac_c** i_talkPartners_p) {
    BOOL ret = false;
    int i1, motion, expression, i2;
    motion = -1;
    expression = -1;

    if (dMsgObject_c::isMsgSendControl()) {
        if (param_1) {
            dMsgObject_c::offMsgSendControl();
        }
    } else if (mFlow.doFlow(this, i_talkPartners_p, 0)) {
        ret = true;
    } else {
        if (mFlow.getMsg() != NULL && (mFlow.getMsg()->mode == 2 || mFlow.getMsg()->mode == 6) && param_0 != NULL) {
            for (int i = 0; param_0[i] > 0; i++) {
                if (param_0[i] == mFlow.getMsgNo()) {
                    ret = true;
                    break;
                }
            }
        }

        if (mFlow.checkEventRender(&i1, &motion, &expression, &i2)) {
            if (expression != -1) {
                setExpression(expression, -1.0f);
            }
            if (motion != -1) {
                setMotion(motion, -1.0f, false);
            }
        }
    }

    return ret;
}

/* 80153EF4-801540A4 14E834 01B0+00 1/1 0/0 55/55 .text            turn__8daNpcF_cFsfi */
BOOL daNpcF_c::turn(s16 i_targetAngle, f32 i_rate, int i_direction) {
    int target_angle = i_targetAngle;
    if (mTurnAmount == 0) {
        mTurnStepNum = fabsf(cM_sht2d((s16)(current.angle.y - target_angle)));
        mTurnStepNum = (mTurnStepNum / 180.0f) * i_rate;
        mTurnStepNum = (int)mTurnStepNum + 1;
        if (mTurnStepNum < 8.0f) {
            mTurnStepNum = 8.0f;
        }
        mTurnStartAngle = current.angle.y;
    }

    s16 turn_start_angle = mTurnStartAngle;
    if (i_direction == 0) {
        i_direction = (s16)(target_angle - turn_start_angle) >= 0 ? 1 : -1;
    }

    u16 angle_diff = target_angle - turn_start_angle;
    int signed_angle_diff = angle_diff;
    if (i_direction < 0) {
        signed_angle_diff = -(u16)(0xffff - angle_diff);
    }

    int turn_angle = (int)(signed_angle_diff * cM_ssin(mTurnAmount));
    mTurnAmount = (int)((f32)mTurnAmount + (f32)0x4000 / mTurnStepNum);
    if ((u16)mTurnAmount >= 0x4000) {
        current.angle.y = i_targetAngle;
        mTurnAmount = 0x4000;
    } else {
        current.angle.y = mTurnStartAngle + turn_angle;
    }

    return current.angle.y - (s16)i_targetAngle == 0;
}

/* 801540A4-80154250 14E9E4 01AC+00 0/0 0/0 58/58 .text            step__8daNpcF_cFsiii */
BOOL daNpcF_c::step(s16 i_targetAngle, int i_expression, int i_motion, int i_rate) {
    if (mTurnMode == 0) {
        if ((int)fabsf(cM_sht2d((s16)(i_targetAngle - mCurAngle.y))) > 40) {
            if (i_expression >= 0) {
                setExpression(i_expression, -1.0f);
            }
            if (i_motion >= 0) {
                setMotion(i_motion, -1.0f, false);
            }
        }

        mTurnTargetAngle = i_targetAngle;
        mTurnAmount = 0;
        if (mCurAngle.y == mTurnTargetAngle) {
            mTurnMode++;
        }

        current.angle.y = mCurAngle.y;
        shape_angle.y = current.angle.y;
        mTurnMode++;
    } else if (mTurnMode == 1) {
        if (turn(mTurnTargetAngle, i_rate, 0)) {
            shape_angle.y = current.angle.y;
            mCurAngle.y = current.angle.y;
            mOldAngle.y = current.angle.y;
            mTurnMode++;
        } else {
            shape_angle.y = current.angle.y;
            mCurAngle.y = current.angle.y;
        }
    }

    return mTurnMode > 1;
}

/* 80154250-80154278 14EB90 0028+00 0/0 0/0 81/81 .text            setAngle__8daNpcF_cFs */
void daNpcF_c::setAngle(s16 i_angle) {
    current.angle.y = i_angle;
    shape_angle.y = current.angle.y;
    mCurAngle.y = current.angle.y;
    mOldAngle.y = mCurAngle.y;
    old.angle.y = current.angle.y;
}

/* 80154278-801542A0 14EBB8 0028+00 0/0 0/0 36/36 .text            getDistTableIdx__8daNpcF_cFii */
u8 daNpcF_c::getDistTableIdx(int param_0, int param_1) {
    return daNpcF_getDistTableIdx(param_0, param_1);
}

/* 801542A0-8015436C 14EBE0 00CC+00 0/0 0/0 6/6 .text            getEvtAreaTagP__8daNpcF_cFii */
// NONMATCHING regalloc
fopAc_ac_c* daNpcF_c::getEvtAreaTagP(int i_type, int i_no) {
    mFindCount = 0;
    mSrchActorName = PROC_TAG_EVTAREA;
    fpcM_Search(this->srchActor, this);

    for (int i = 0; i < mFindCount; i++) {
        daTag_EvtArea_c* evt_area = static_cast<daTag_EvtArea_c*>(mFindActorPList[i]);
        if (i_type == evt_area->getType() && i_no == evt_area->getNo()) {
            return evt_area;
        }
    }

    return NULL;
}

/* 8015436C-80154730 14ECAC 03C4+00 0/0 0/0 12/12 .text getAttnActorP__8daNpcF_cFiPFPvPv_Pvffffsii
 */
fopAc_ac_c* daNpcF_c::getAttnActorP(BOOL i_playerAttn, fpcLyIt_JudgeFunc i_searchFunc, f32 i_radius,
                                    f32 i_offsetY1, f32 i_offsetY2, f32 i_fovY, s16 i_sightAngle,
                                    int param_7, BOOL param_8) {
    fopAc_ac_c* actor = NULL;
    int sp40 = 450 + (int)((cM_rnd() - 0.5f) * 450.0f);
    int sp3C = param_7 + (int)((cM_rnd() - 0.5f) * param_7);
    int sp38 = 0;
    int sp34;

    f32 minDistance = 1000000000.0f;
    f32 var_f30 = i_radius;

    if (mAttnChangeTimer != 0) {
        fopAcM_SearchByID(daPy_getPlayerActorClass()->getGrabActorID(), &actor);
        if (mAttnActor[mAttnIdx].getActorP() != actor) {
            cLib_calcTimer(&mAttnChangeTimer);
        }

        actor = mAttnActor[mAttnIdx].getActorP();
    }

    if (actor == NULL) {
        mAttnChangeTimer = 0;

        if (i_playerAttn) {
            var_f30 = fopAcM_searchPlayerDistanceXZ(this);
        }

        mFindCount = 0;
        fpcM_Search(i_searchFunc, this);

        int i, j;
        for (i = 0; i < mFindCount; i++) {
            BOOL sp30 = chkPointInArea(getAttentionPos(mFindActorPList[i]), attention_info.position,
                                       var_f30, i_offsetY1, i_offsetY2, 0);
            if (sp30 && chkActorInSight2(mFindActorPList[i], i_fovY, i_sightAngle)) {
                for (j = 0; j < 5; j++) {
                    // !@Bug I think mAttnActorTimer index should be j
                    if (mFindActorPList[i] == mAttnActor[j].getActorP() && mAttnActorTimer[i] != 0)
                    {
                        break;
                    }
                }

                if (j == 5) {
                    f32 dist2 = fopAcM_searchActorDistanceXZ(this, mFindActorPList[i]);
                    if (dist2 < minDistance) {
                        actor = mFindActorPList[i];
                        minDistance = dist2;
                    }
                }
            }
        }

        if (actor == NULL && i_playerAttn) {
            fopAcM_SearchByID(daPy_getPlayerActorClass()->getGrabActorID(), &actor);
            sp38 = 1;
        }

        if (actor != NULL) {
            sp34 = 900;
            i = 0;

            for (j = 0; j < 5; j++) {
                if (mAttnActorTimer[j] < sp34) {
                    sp34 = mAttnActorTimer[j];
                    i = j;
                }
            }

            mAttnActor[i].entry(actor);

            if (param_8) {
                mAttnActorTimer[i] = sp38 == 1 ? 0 : sp40;
            } else {
                mAttnActorTimer[i] = 0;
            }

            mAttnChangeTimer = sp38 == 1 ? 30 : sp3C;
            mAttnIdx = i;
        }
    }

    if (actor == NULL) {
        mAttnChangeTimer = 0;
    }

    return actor;
}

/* 80154730-80154834 14F070 0104+00 2/2 0/0 0/0 .text chkActorInSight2__8daNpcF_cFP10fopAc_ac_cfs
 */
BOOL daNpcF_c::chkActorInSight2(fopAc_ac_c* i_actor, f32 i_fovY, s16 i_sightAngle) {
    if (i_fovY < 180.0f) {
        s16 fov_y = cM_deg2s(i_fovY);
        cXyz actor_attn_pos = getAttentionPos(i_actor);
        cSGlobe globe(attention_info.position - actor_attn_pos);
        cSAngle s_ang_diff = cSAngle(globe.U().Inv()) - i_sightAngle;
        s16 ang_diff = s_ang_diff.Val();
        if (ang_diff < 0) {
            ang_diff = -ang_diff;
        }
        return ang_diff <= fov_y;
    } else {
        return true;
    }
}

/* 80154834-801548F4 14F174 00C0+00 2/2 0/0 0/0 .text chkPointInArea__8daNpcF_cF4cXyz4cXyzfffs */
BOOL daNpcF_c::chkPointInArea(cXyz i_point, cXyz param_1, f32 i_radius, f32 i_offsetY1,
                              f32 i_offsetY2, s16 i_angleY) {
    cXyz bounds, center;

    f32 lower = i_offsetY2;
    f32 upper = i_offsetY1;

    if (i_offsetY1 < i_offsetY2) {
        lower = i_offsetY1;
        upper = i_offsetY2;
    }

    bounds.set(i_radius, fabsf(upper - lower) / 2.0f, i_radius);

    center = param_1;
    center.y += lower;
    center.y += bounds.y;

    return chkPointInArea(i_point, center, bounds, i_angleY);
}

/* 801548F4-8015496C 14F234 0078+00 1/1 0/0 0/0 .text chkPointInArea__8daNpcF_cF4cXyz4cXyz4cXyzs
 */
BOOL daNpcF_c::chkPointInArea(cXyz i_point, cXyz i_center, cXyz i_bounds, s16 i_angleY) {
    return daNpcF_chkPointInArea(i_point, i_center, i_bounds, i_angleY);
}

/* 8015496C-801549E0 14F2AC 0074+00 3/3 0/0 0/0 .text getAttentionPos__8daNpcF_cFP10fopAc_ac_c */
cXyz daNpcF_c::getAttentionPos(fopAc_ac_c* i_actor_p) {
    cXyz pos = i_actor_p->attention_info.position;

    if (fopAcM_GetName(i_actor_p) == PROC_ALINK) {
        pos.y -= daPy_py_c::getAttentionOffsetY();
    }

    return pos;
}

/* 801549E0-80154BD8 14F320 01F8+00 0/0 0/0 18/18 .text            chkFindPlayer2__8daNpcF_cFis */
BOOL daNpcF_c::chkFindPlayer2(BOOL i_hasAttn, s16 i_angle) {
    BOOL sp20;

    cXyz attn_pos = getAttentionPos(daPy_getPlayerActorClass());
    int attn_no = i_hasAttn == false ? attention_info.distances[fopAc_attn_SPEAK_e]
                                     : attention_info.distances[fopAc_attn_TALK_e];
    f32 dist_max = i_hasAttn == false ? dComIfGp_getAttention()->getDistTable(attn_no).mDistMax
                                     : dComIfGp_getAttention()->getDistTable(attn_no).mDistMaxRelease;
    f32 lower_y = dComIfGp_getAttention()->getDistTable(attn_no).mLowerY * -1.0f;
    f32 upper_y = dComIfGp_getAttention()->getDistTable(attn_no).mUpperY * -1.0f;
    u32 angle_select = dComIfGp_getAttention()->getDistTable(attn_no).mAngleSelect;

    f32 fovy = 180.0f;
    if (angle_select & 8) {
        fovy = 30.0f;
    } else if (angle_select & 0x10) {
        fovy = 45.0f;
    } else if (angle_select & 0x20) {
        fovy = 60.0f;
    } else if (angle_select & 0x40) {
        fovy = 90.0f;
    } else if (angle_select & 0x80) {
        fovy = 110.0f;
    } else if (angle_select & 0x100) {
        fovy = 135.0f;
    }

    sp20 = chkPointInArea(attn_pos, attention_info.position, dist_max, lower_y, upper_y, 0);
    if (sp20 && chkActorInSight2(daPy_getPlayerActorClass(), fovy, i_angle)) {
        return true;
    }

    return false;
}

/* 80154BD8-80154DA8 14F518 01D0+00 1/1 0/0 0/0 .text            setHitodamaPrtcl__8daNpcF_cFv */
void daNpcF_c::setHitodamaPrtcl() {
    JPABaseEmitter* emitter = NULL;
    cXyz pos;

    field_0x9d0 = (u16)(field_0x9d2 * 2);
    field_0x9b8.x = cM_ssin(field_0x9d2) * 8.0f;
    field_0x9b8.y = cM_ssin(field_0x9d0) * 4.0f;
    field_0x9b8.z = field_0x9b8.x * -cM_ssin(shape_angle.y);

    field_0x9b8.x *= cM_scos(shape_angle.y);
    field_0x9d2 += (s16)0x400;

    pos.x = eyePos.x + field_0x9b8.x + field_0x9c4.x;
    pos.y = eyePos.y + field_0x9b8.y + field_0x9c4.y;
    pos.z = eyePos.z + field_0x9b8.z + field_0x9c4.z;

    for (int i = 0; i < 2; i++) {
        static const u16 id[2] = {0x8497, 0x8498};
        mHitodamaParticleKey[i] = dComIfGp_particle_set(mHitodamaParticleKey[i], id[i], &pos, &mCurAngle, NULL);

        emitter = dComIfGp_particle_getEmitter(mHitodamaParticleKey[i]);
        if (emitter != NULL) {
            u8 alpha = dComIfGs_wolfeye_effect_check() == 0 ? 0xFF : 0;
            emitter->setGlobalTranslation(pos.x, pos.y, pos.z);
            emitter->setGlobalAlpha(alpha);
        }
    }
}

/* 80154DA8-80154E54 14F6E8 00AC+00 1/1 0/0 1/1 .text
 * daNpcF_pntVsLineSegmentLengthSquare2D__FffffffPfPfPf         */
BOOL daNpcF_pntVsLineSegmentLengthSquare2D(f32 i_pntX, f32 i_pntZ, f32 i_startX, f32 i_startZ,
                                           f32 i_endX, f32 i_endZ, f32* o_projX, f32* o_projZ,
                                           f32* o_dist2) {
    BOOL ret = false;
    f32 len2;
    f32 line_x = i_endX - i_startX;
    f32 line_z = i_endZ - i_startZ;
    len2 = line_x * line_x + line_z * line_z;

    if (0.0f == len2) {
        *o_dist2 = 0.0f;
        return false;
    }

    f32 prm = (line_x * (i_pntX - i_startX) + line_z * (i_pntZ - i_startZ)) / len2;

    if (0.0f <= prm && prm <= 1.0f) {
        ret = true;
    }

    *o_projX = i_startX + line_x * prm;
    *o_projZ = i_startZ + line_z * prm;
    //!@bug The last `o_projX` should be `o_projZ`
    *o_dist2 = (*o_projX - i_pntX) * (*o_projX - i_pntX)
             + (*o_projZ - i_pntZ) * (*o_projX - i_pntZ);
    return ret;
}

/* 80154E54-80154E5C 14F794 0008+00 1/1 0/0 0/0 .text            daNpcF_putNurbs__FP4dPntiiP4dPnti
 */
static u16 daNpcF_putNurbs(dPnt* param_0, int param_1, int param_2, dPnt* param_3, int param_4) {
    return 0;
}

/* 80154E5C-8015556C 14F79C 0710+00 1/1 0/0 1/1 .text daNpcF_chkPassed__F4cXyzP4dPntUsUsii */
BOOL daNpcF_chkPassed(cXyz i_pos, dPnt* i_points, u16 i_idx, u16 i_num, BOOL i_isClosed,
                      BOOL i_isReversed) {
    cXyz prev_pos, cur_pos, next_pos, pos;
    u16 prev_idx = i_idx;
    u16 next_idx = i_idx;
    daNpcF_incIdx(i_num, next_idx, i_isClosed, false);
    daNpcF_decIdx(i_num, prev_idx, i_isClosed, false);

    prev_pos.set(i_points[prev_idx].m_position.x,
                 i_points[prev_idx].m_position.y,
                 i_points[prev_idx].m_position.z);
    cur_pos.set(i_points[i_idx].m_position.x,
                i_points[i_idx].m_position.y,
                i_points[i_idx].m_position.z);
    next_pos.set(i_points[next_idx].m_position.x,
                 i_points[next_idx].m_position.y,
                 i_points[next_idx].m_position.z);
    
    f32 dist;
    s16 angle;
    if (prev_idx != i_idx || next_idx != i_idx) {
        if (prev_idx < i_idx && i_idx < next_idx) {
            dist = (next_pos - prev_pos).absXZ();
            angle = cM_atan2s(next_pos.x - prev_pos.x, next_pos.z - prev_pos.z);
            pos = prev_pos;
            prev_pos.x = pos.x + dist * -1.0f * cM_ssin(angle);
            prev_pos.z = pos.z + dist * -1.0f * cM_scos(angle);
            next_pos.x = pos.x + dist * 2.0f * cM_ssin(angle);
            next_pos.z = pos.z + dist * 2.0f * cM_scos(angle);
        } else if (prev_idx < i_idx) {
            dist = (cur_pos - prev_pos).absXZ();
            angle = cM_atan2s(cur_pos.x - prev_pos.x, cur_pos.z - prev_pos.z);
            pos = cur_pos;
            prev_pos.x = pos.x + dist * -2.0f * cM_ssin(angle);
            prev_pos.z = pos.z + dist * -2.0f * cM_scos(angle);
            next_pos.x = pos.x + dist * 2.0f * cM_ssin(angle);
            next_pos.z = pos.z + dist * 2.0f * cM_scos(angle);
        } else if (i_idx < next_idx) {
            dist = (next_pos - cur_pos).absXZ();
            angle = cM_atan2s(next_pos.x - cur_pos.x, next_pos.z - cur_pos.z);
            pos = cur_pos;
            prev_pos.x = pos.x + dist * -2.0f * cM_ssin(angle);
            prev_pos.z = pos.z + dist * -2.0f * cM_scos(angle);
            next_pos.x = pos.x + dist * 2.0f * cM_ssin(angle);
            next_pos.z = pos.z + dist * 2.0f * cM_scos(angle);
        }

        f32 proj_x, proj_z, proj2_x, proj2_z;
        daNpcF_pntVsLineSegmentLengthSquare2D(i_pos.x, i_pos.z, prev_pos.x, prev_pos.z,
                                              next_pos.x, next_pos.z, &proj_x, &proj_z, &dist);
        if (cM3d_IsZero(dist)) {
            return false;
        } else {
            daNpcF_pntVsLineSegmentLengthSquare2D(cur_pos.x, cur_pos.z, prev_pos.x, prev_pos.z,
                                                next_pos.x, next_pos.z, &proj2_x, &proj2_z, &dist);
            s16 angle2;
            if (i_isReversed) {
                angle2 = cM_atan2s(prev_pos.x - next_pos.x, prev_pos.z - next_pos.z);
            } else {
                angle2 = cM_atan2s(next_pos.x - prev_pos.x, next_pos.z - prev_pos.z);
            }
            u16 angle_diff = abs((s16)(angle2 - cM_atan2s(proj2_x - proj_x, proj2_z - proj_z)));
            return angle_diff > 0x4000;
        }
    } else {
        return false;
    }
}

/* 8015556C-80155634 14FEAC 00C8+00 1/1 0/0 8/8 .text daNpcF_getGroundAngle__FP13cBgS_PolyInfos */
s16 daNpcF_getGroundAngle(cBgS_PolyInfo* param_0, s16 param_1) {
    cM3dGPla plane;

    if (dComIfG_Bgsp().ChkPolySafe(*param_0)) {
        if (!dComIfG_Bgsp().GetTriPla(*param_0, &plane) || !cBgW_CheckBGround(plane.mNormal.y)) {
            return 0;
        } else {
            return fopAcM_getPolygonAngle(&plane, param_1);
        }
    } else {
        return 0;
    }
}

/* 80155634-80155674 14FF74 0040+00 0/0 0/0 69/69 .text            daNpcF_chkEvtBit__FUl */
BOOL daNpcF_chkEvtBit(u32 i_no) {
    return dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[i_no]);
}

/* 80155674-801556B4 14FFB4 0040+00 0/0 0/0 13/13 .text            daNpcF_onEvtBit__FUl */
void daNpcF_onEvtBit(u32 i_no) {
    dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[i_no]);
}

/* 801556B4-801556F4 14FFF4 0040+00 0/0 0/0 6/6 .text            daNpcF_chkTmpBit__FUl */
BOOL daNpcF_chkTmpBit(u32 i_no) {
    return dComIfGs_isTmpBit(dSv_event_tmp_flag_c::tempBitLabels[i_no]);
}

/* 801556F4-80155734 150034 0040+00 0/0 0/0 6/6 .text            daNpcF_onTmpBit__FUl */
void daNpcF_onTmpBit(u32 i_no) {
    dComIfGs_onTmpBit(dSv_event_tmp_flag_c::tempBitLabels[i_no]);
}

/* 80155734-80155774 150074 0040+00 1/1 0/0 36/36 .text            daNpcF_offTmpBit__FUl */
void daNpcF_offTmpBit(u32 i_no) {
    dComIfGs_offTmpBit(dSv_event_tmp_flag_c::tempBitLabels[i_no]);
}

/* 80155774-80155854 1500B4 00E0+00 0/0 2/2 5/5 .text            daNpcF_getPlayerInfoFromPlayerList__FiiR4cXyzR5csXyz */
int daNpcF_getPlayerInfoFromPlayerList(int param_0, int i_roomNo, cXyz& param_2, csXyz& param_3) {
    int rv = 0;

    dStage_roomDt_c* room_p = dComIfGp_roomControl_getStatusRoomDt(i_roomNo);
    stage_actor_data_class* entries = room_p->getPlayer()->m_entries;

    for (int i = 0; i < room_p->getPlayerNum(); entries++, i++) {
        if (param_0 == (u8)entries->base.angle.z) {
            param_2 = entries->base.position;
            param_3 = entries->base.angle;
            rv = 1;
            break;
        }
    }

    return rv;
}

/* 80155854-80155968 150194 0114+00 0/0 0/0 1/1 .text daNpcF_chkDoBtnEqSpeak__FP10fopAc_ac_c */
bool daNpcF_chkDoBtnEqSpeak(fopAc_ac_c* i_actor_p) {
    bool ret = FALSE;

    if (daPy_getPlayerActorClass()->checkPriActorOwn(i_actor_p)) {
        for (int i = 0; i < dComIfGp_getAttention()->GetActionCount(); i++) {
            if (dComIfGp_getAttention()->ActionTarget(i) == i_actor_p &&
                dComIfGp_getAttention()->getActionBtnB() &&
                dComIfGp_getAttention()->getActionBtnB()->mType == 3)
            {
                ret = TRUE;
            }
        }

        for (int i = 0; i < dComIfGp_getAttention()->GetLockonCount(); i++) {
            if (dComIfGp_getAttention()->LockonTarget(i) == i_actor_p &&
                dComIfGp_getAttention()->getActionBtnB() &&
                dComIfGp_getAttention()->getActionBtnB()->mType == 1)
            {
                ret = TRUE;
            }
        }
    }

    return ret;
}

/* 80155968-80155AD4 1502A8 016C+00 1/1 0/0 2/2 .text daNpcF_chkPointInArea__F4cXyz4cXyz4cXyzs */
BOOL daNpcF_chkPointInArea(cXyz i_point, cXyz i_center, cXyz i_bounds, s16 i_angleY) {
    cXyz delta_aligned;

    mDoMtx_stack_c::YrotS(-i_angleY);
    mDoMtx_stack_c::transM(-i_center.x, -i_center.y, -i_center.z);
    mDoMtx_stack_c::multVec(&i_point, &delta_aligned);

    f32 bound_x = fabsf(i_bounds.x);
    f32 bound_z = fabsf(i_bounds.z);
    f32 delta_x = fabsf(delta_aligned.x);
    f32 delta_z = fabsf(delta_aligned.z);

    cXyz delta = i_center - i_point;

    if (delta.y <= -i_bounds.y || i_bounds.y <= delta.y) {
        return FALSE;
    } else {
        f32 tmp_float1 = (delta_x * delta_x) / (bound_x * bound_x);
        f32 tmp_float2 = (delta_z * delta_z) / (bound_z * bound_z);
        f32 tmp_float3 = tmp_float1 + tmp_float2;
        return tmp_float3 <= 1.0f;
    }
}

/* 80155AD4-80155AE8 150414 0014+00 1/1 0/0 1/1 .text            daNpcF_getDistTableIdx__Fii */
u8 daNpcF_getDistTableIdx(int param_0, int param_1) {
    return param_0 + param_1 * 0x14 + 0x5e;
}

/* 80155AE8-80155B54 150428 006C+00 0/0 0/0 6/6 .text            daNpcF_clearMessageTmpBit__Fv */
void daNpcF_clearMessageTmpBit() {
    daNpcF_offTmpBit(0xb);
    daNpcF_offTmpBit(0xc);
    daNpcF_offTmpBit(0xd);
    daNpcF_offTmpBit(0xe);
    daNpcF_offTmpBit(0xf);
    daNpcF_offTmpBit(0x33);
    daNpcF_offTmpBit(0x34);
    daNpcF_offTmpBit(0x35);
    daNpcF_offTmpBit(0x36);
    daNpcF_offTmpBit(0x37);
}

// TODO: dummy to generate weak functions, proper fix later
static void dummyVirtual(daNpcF_MoveBgActor_c* dummy) {
    dummy->~daNpcF_MoveBgActor_c();
    dummy->CreateHeap();
    dummy->Create();
    dummy->Execute(NULL);
    dummy->Draw();
    dummy->Delete();
    dummy->IsDelete();
    dummy->ToFore();
    dummy->ToBack();
}

/* 803926B0-803926E0 01ED10 0030+00 0/0 0/0 0/0 .rodata          mCcDObj__11daBaseNpc_c */
dCcD_SrcGObjInf const daBaseNpc_c::mCcDObj = {
    {0, {{0, 0, 0}, {0x0, 0x0}, {0x79}}},
    {dCcD_SE_NONE, 0, 0, 0, 0},
    {dCcD_SE_NONE, 0, 0, 0, 0},
    {0}
};

/* 803926E0-80392710 01ED40 0030+00 0/0 0/0 0/0 .rodata          mCcDObjInfo__8daNpcF_c */
dCcD_SrcGObjInf const daNpcF_c::mCcDObjInfo = {
    {0, {{0, 0, 0}, {0x0, 0x0}, {0x79}}},
    {dCcD_SE_NONE, 0, 0, 0, 0},
    {dCcD_SE_NONE, 0, 0, 0, 0},
    {0}
};

/* 80392720-80392725 01ED80 0005+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80392720 = ".bck";
#pragma pop

/* 80392725-8039272A 01ED85 0005+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80392725 = ".btp";
#pragma pop

/* 8039272A-8039272F 01ED8A 0005+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8039272A = ".btk";
#pragma pop

/* 8039272F-8039274A 01ED8F 001B+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8039272F = "%.3ff,\t//  注目オフセット\n";
#pragma pop

/* 8039274A-8039275B 01EDAA 0011+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8039274A = "%.3ff,\t//  重力\n";
#pragma pop

/* 8039275B-80392770 01EDBB 0015+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8039275B = "%.3ff,\t//  スケ−ル\n";
#pragma pop

/* 80392770-8039278B 01EDD0 001B+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80392770 = "%.3ff,\t//  リアル影サイズ\n";
#pragma pop

/* 8039278B-8039279C 01EDEB 0011+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8039278B = "%.3ff,\t//  体重\n";
#pragma pop

/* 8039279C-803927AD 01EDFC 0011+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8039279C = "%.3ff,\t//  高さ\n";
#pragma pop

/* 803927AD-803927C0 01EE0D 0013+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_803927AD = "%.3ff,\t//  ひざ丈\n";
#pragma pop

/* 803927C0-803927CF 01EE20 000F+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_803927C0 = "%.3ff,\t//  幅\n";
#pragma pop

/* 803927CF-803927E8 01EE2F 0019+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_803927CF = "%.3ff,\t//  腰のＸ角上限\n";
#pragma pop

/* 803927E8-80392801 01EE48 0019+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_803927E8 = "%.3ff,\t//  腰のＸ角下限\n";
#pragma pop

/* 80392801-8039281A 01EE61 0019+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80392801 = "%.3ff,\t//  腰のＹ角上限\n";
#pragma pop

/* 8039281A-80392833 01EE7A 0019+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8039281A = "%.3ff,\t//  腰のＹ角下限\n";
#pragma pop

/* 80392833-8039284C 01EE93 0019+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80392833 = "%.3ff,\t//  頭のＸ角上限\n";
#pragma pop

/* 8039284C-80392865 01EEAC 0019+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8039284C = "%.3ff,\t//  頭のＸ角下限\n";
#pragma pop

/* 80392865-8039287E 01EEC5 0019+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80392865 = "%.3ff,\t//  頭のＹ角上限\n";
#pragma pop

/* 8039287E-80392897 01EEDE 0019+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8039287E = "%.3ff,\t//  頭のＹ角下限\n";
#pragma pop

/* 80392897-803928B0 01EEF7 0019+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80392897 = "%.3ff,\t//  首の回転比率\n";
#pragma pop

/* 803928B0-803928C9 01EF10 0019+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_803928B0 = "%.3ff,\t//  補間フレ−ム\n";
#pragma pop

/* 803928C9-803928DE 01EF29 0015+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_803928C9 = "%d,   \t//  会話距離\n";
#pragma pop

/* 803928DE-803928F3 01EF3E 0015+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_803928DE = "%d,   \t//  会話角度\n";
#pragma pop

/* 803928F3-80392908 01EF53 0015+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_803928F3 = "%d,   \t//  注目距離\n";
#pragma pop

/* 80392908-8039291D 01EF68 0015+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80392908 = "%d,   \t//  注目角度\n";
#pragma pop

/* 8039291D-8039292E 01EF7D 0011+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8039291D = "%.3ff,\t//  視界\n";
#pragma pop

/* 8039292E-80392945 01EF8E 0017+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8039292E = "%.3ff,\t//  サ−チ距離\n";
#pragma pop

/* 80392945-8039295C 01EFA5 0017+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80392945 = "%.3ff,\t//  サ−チ高さ\n";
#pragma pop

/* 8039295C-80392973 01EFBC 0017+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8039295C = "%.3ff,\t//  サ−チ低さ\n";
#pragma pop

/* 80392973-80392988 01EFD3 0015+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80392973 = "%d,   \t//  注目時間\n";
#pragma pop

/* 80392988-803929A1 01EFE8 0019+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80392988 = "%d,   \t//  ダメ−ジ期間\n";
#pragma pop

/* 803929A1-803929B2 01F001 0011+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
// MWCC ignores mapping of some japanese characters using the
// byte 0x5C (ASCII '\'). This is why this string is hex-encoded.
SECTION_DEAD static char const* const stringBase_803929A1 =
    "\x25\x64\x2C\x20\x20\x20\x09\x2F\x2F\x20\x20\x95\x5C\x8F\xEE\x0A";
#pragma pop

/* 803929B2-803929C3 01F012 0011+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_803929B2 = "%d,   \t//  動作\n";
#pragma pop

/* 803929C3-803929DA 01F023 0017+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_803929C3 = "%d,   \t//  注視モ−ド\n";
#pragma pop

/* 803929DA-803929F7 01F03A 001D+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_803929DA = "%d,   \t//  デバグモ−ドＯＮ\n";
#pragma pop

/* 803929F7-80392A18 01F057 001B+06 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_803929F7 = "%d,   \t//  デバグ情報ＯＮ\n";
#pragma pop
