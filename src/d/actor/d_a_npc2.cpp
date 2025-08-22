#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc.h"

static s32 daBaseNpc_chkPnt(cXyz param_0, dPnt* param_1, u16 param_2, u16 param_3, int param_4, int param_5);
static u16 daBaseNpc_putNurbs(dPnt* i_CPnts, int i_CPntNum, int i_maxPntNum, dPnt* o_curve_p, BOOL i_isClosed);
static s16 daBaseNpc_getGroundAngle(cBgS_PolyInfo* param_0, s16 param_1);

/* 8014D538-8014D584 147E78 004C+00 2/2 0/0 0/0 .text            daBaseNpc_addIdx__FiiPUsi */
static int daBaseNpc_addIdx(int i_step, int i_num, u16* i_idx, BOOL i_closed) {
    BOOL new_idx = *i_idx;
    BOOL ret;

    ret = FALSE;
    new_idx += i_step;

    if (i_num <= new_idx) {
        if (i_closed) {
            new_idx -= i_num * (new_idx / i_num);
        } else {
            new_idx = i_num != 0 ? i_num - 1 : 0;
            ret = TRUE;
        }
    }

    *i_idx = (u16)new_idx;
    return ret;
}

/* 8014D584-8014D5C4 147EC4 0040+00 2/2 0/0 0/0 .text            daBaseNpc_subIdx__FiiPUsi */
static BOOL daBaseNpc_subIdx(int i_step, int i_num, u16* i_idx, BOOL i_closed) {
    int new_idx = *i_idx;
    BOOL ret;

    ret = FALSE;
    new_idx -= i_step;

    if (new_idx <= 0) {
        if (i_closed) {
            new_idx += i_num * (new_idx / i_num + 1);
        } else {
            new_idx = 0;
            ret = TRUE;
        }
    }

    *i_idx = (u16)new_idx;
    return ret;
}

/* 8014D5C4-8014D620 147F04 005C+00 2/2 0/0 0/0 .text            daBaseNpc_incIdx__FiPUsii */
static BOOL daBaseNpc_incIdx(int i_pathNo, u16* i_pathIdx, BOOL i_pathClosed, int i_pathDirection) {
    if (i_pathDirection < 0) {
        return daBaseNpc_subIdx(1, i_pathNo, i_pathIdx, i_pathClosed);
    } else {
        return daBaseNpc_addIdx(1, i_pathNo, i_pathIdx, i_pathClosed);
    }
}

/* 8014D620-8014D67C 147F60 005C+00 1/1 0/0 0/0 .text            daBaseNpc_decIdx__FiPUsii */
static void daBaseNpc_decIdx(int i_pathNo, u16* i_pathIdx, BOOL i_pathClosed, int i_pathDirection) {
    if (i_pathDirection < 0) {
        daBaseNpc_addIdx(1, i_pathNo, i_pathIdx, i_pathClosed);
    } else {
        daBaseNpc_subIdx(1, i_pathNo, i_pathIdx, i_pathClosed);
    }
}

/* 8014D67C-8014D804 147FBC 0188+00 1/1 0/0 0/0 .text            daNpcBase_BBasis__FiiiPi */
static f32 daNpcBase_BBasis(int i_deg, int i_pntNo, int i_knotNo, int* i_knotVector_p) {
    f32 basis;

    if (i_deg != 0) {
        f32 var_f31 = (f32)(i_knotVector_p[i_pntNo + i_deg + 1] - i_knotVector_p[i_pntNo + 1]);
        if (var_f31 != 0.0f) {
            var_f31 = ((f32)(i_knotVector_p[i_pntNo + i_deg + 1] - i_knotNo) / var_f31) * daNpcBase_BBasis(i_deg - 1, i_pntNo + 1, i_knotNo, i_knotVector_p);
        }

        f32 var_f30 = (f32)(i_knotVector_p[i_pntNo + i_deg] - i_knotVector_p[i_pntNo]);
        if (var_f30 != 0.0f) {
            var_f30 = ((f32)(i_knotNo - i_knotVector_p[i_pntNo]) / var_f30) * daNpcBase_BBasis(i_deg - 1, i_pntNo, i_knotNo, i_knotVector_p);
        }

        basis = var_f31 + var_f30;
    } else if (i_knotVector_p[i_pntNo] <= i_knotNo && i_knotNo <= i_knotVector_p[i_pntNo + 1]) {
        basis = 1.0f;
    } else {
        basis = 0.0f;
    }

    return basis;
}

/* 8014D804-8014D81C 148144 0018+00 0/0 0/0 1/1 .text            __ct__18daBaseNpc_acMngr_cFv */
daBaseNpc_acMngr_c::daBaseNpc_acMngr_c() {
    mActorId = fpcM_ERROR_PROCESS_ID_e;
}

/* 8014D81C-8014D838 14815C 001C+00 0/0 0/0 9/9 .text entry__18daBaseNpc_acMngr_cFP10fopAc_ac_c */
void daBaseNpc_acMngr_c::entry(fopAc_ac_c* i_ActorP) {
    mActorId = fopAcM_GetID(i_ActorP);
}

/* 8014D838-8014D884 148178 004C+00 0/0 0/0 6/6 .text            getActor__18daBaseNpc_acMngr_cFv */
fopAc_ac_c* daBaseNpc_acMngr_c::getActor() {
    fopAc_ac_c* ret = NULL;
    if (fopAcM_SearchByID(mActorId, &ret) && ret != NULL) {
        return ret;
    }

    return NULL;
}

/* 8014D884-8014D998 1481C4 0114+00 1/0 0/0 0/0 .text calc__18daBaseNpc_matAnm_cCFP11J3DMaterial
 */
void daBaseNpc_matAnm_c::calc(J3DMaterial* i_material) const {
    J3DMaterialAnm::calc(i_material);

    for (u32 i = 0; i < 8; i++) {
        if (getTexMtxAnm(i).getAnmFlag()) {
            J3DTexMtxInfo* curr_mtx_info =
                &i_material->getTexGenBlock()->getTexMtx(i)->getTexMtxInfo();

            if (mMorfFrm != 0) {
                f32 var_f31 = 1.0f / (mMorfFrm + 1);
                curr_mtx_info->mSRT.mTranslationX = field_0xF4 * (1.0f - var_f31) + curr_mtx_info->mSRT.mTranslationX * var_f31;
                curr_mtx_info->mSRT.mTranslationY = field_0xF8 * (1.0f - var_f31) + curr_mtx_info->mSRT.mTranslationY * var_f31;
            } else if (mEyeMoveFlg != 0) {
                curr_mtx_info->mSRT.mTranslationX = mNowOffsetX;
                curr_mtx_info->mSRT.mTranslationY = mNowOffsetY;
            }

            field_0xF4 = curr_mtx_info->mSRT.mTranslationX;
            field_0xF8 = curr_mtx_info->mSRT.mTranslationY;
        }
    }
}

/* 8014D998-8014D9A8 1482D8 0010+00 0/0 0/0 1/1 .text            __ct__16daBaseNpc_path_cFv */
daBaseNpc_path_c::daBaseNpc_path_c() {}

/* 8014D9A8-8014D9BC 1482E8 0014+00 1/1 0/0 4/4 .text            isPath__16daBaseNpc_path_cFv */
BOOL daBaseNpc_path_c::isPath() {
    return mPathInfo != NULL;
}

/* 8014D9BC-8014DA48 1482FC 008C+00 0/0 0/0 1/1 .text setPathInfo__16daBaseNpc_path_cFUcScSc */
int daBaseNpc_path_c::setPathInfo(u8 i_pathIdx, s8 i_roomNo, s8 i_direction) {
    mPathInfo = NULL;
    mIdx = 0;
    mDirection = i_direction;

    if (i_pathIdx != 0xFF) {
        mPathInfo = dPath_GetRoomPath(i_pathIdx, i_roomNo);
        if (mPathInfo == NULL) {
            return 0;
        }

        mCurvePntNum = daBaseNpc_putNurbs(mPathInfo->m_points, mPathInfo->m_num, 160,
                                          mCurvePnts, dPath_ChkClose(mPathInfo));
    }

    return isPath();
}

/* 8014DA48-8014DA64 148388 001C+00 0/0 0/0 1/1 .text            reverseDir__16daBaseNpc_path_cFv */
void daBaseNpc_path_c::reverseDir() {
    s8 direction;
    if (mDirection > 0) {
        direction = -1;
    } else {
        direction = 1;
    }

    mDirection = direction;
}

/* 8014DA64-8014DAC4 1483A4 0060+00 0/0 0/0 3/3 .text            chkPnt__16daBaseNpc_path_cF4cXyz */
s32 daBaseNpc_path_c::chkPnt(cXyz i_pos) {
    return daBaseNpc_chkPnt(i_pos, mPathInfo->m_points, mIdx, mPathInfo->m_num,
                            dPath_ChkClose(mPathInfo), mDirection);
}

/* 8014DAC4-8014DB04 148404 0040+00 0/0 0/0 3/3 .text            setNextPnt__16daBaseNpc_path_cFv */
BOOL daBaseNpc_path_c::setNextPnt() {
    return daBaseNpc_incIdx(mPathInfo->m_num, &mIdx, dPath_ChkClose(mPathInfo), mDirection);
}

/* 8014DB04-8014DB0C 148444 0008+00 0/0 0/0 3/3 .text            getIdx__16daBaseNpc_path_cFv */
u16 daBaseNpc_path_c::getIdx() {
    return mIdx;
}

/* 8014DB0C-8014DB14 -00001 0008+00 0/0 0/0 0/0 .text            setIdx__16daBaseNpc_path_cFUs */
void daBaseNpc_path_c::setIdx(u16 i_idx) {
    mIdx = i_idx;
}

/* 8014DB14-8014DB40 148454 002C+00 0/0 0/0 4/4 .text            getPntPos__16daBaseNpc_path_cFUs */
Vec daBaseNpc_path_c::getPntPos(u16 iIdx) {
    JUT_ASSERT(676, 0 <= iIdx && iIdx < mPathInfo->m_num);
    return mPathInfo->m_points[iIdx].m_position;
}

/* 8014DB40-8014DBB4 148480 0074+00 1/1 0/0 0/0 .text limitter__18daBaseNpc_lookat_cFsPsss */
void daBaseNpc_lookat_c::limitter(s16 i_value, s16* o_value_p, s16 i_max, s16 i_min) {
    int tmp = i_value;
    int tmp2 = tmp + *o_value_p;

    if (i_max < tmp2) {
        if (tmp < i_max) {
            *o_value_p -= tmp2 - i_max;
        } else {
            *o_value_p = 0;
        }
    }

    tmp += *o_value_p;

    if (tmp >= (s16)i_min) {
        return;
    }

    if (i_min < i_value) {
        *o_value_p -= (int)(tmp - i_min);
        return;
    }

    *o_value_p = 0;
}

/* 8014DBB4-8014E634 1484F4 0A80+00 0/0 0/0 1/1 .text
 * calc__18daBaseNpc_lookat_cFP10fopAc_ac_cPA4_fs               */
// regalloc, equivalent ?
void daBaseNpc_lookat_c::calc(fopAc_ac_c* param_0, Mtx param_1, s16 param_2) {
    if (mpAttnPos == NULL) {
        for (int i = 0; i < 4; i++) {
            f32 sp28 = mRot[i].x;
            f32 sp24 = mRot[i].y;
            f32 sp20 = mRot[i].z;

            cLib_addCalc2(&sp28, 0.0f, 0.25f, 0x800 / (i + 1));
            cLib_addCalc2(&sp24, 0.0f, 0.25f, 0x800 / (i + 1));
            cLib_addCalc2(&sp20, 0.0f, 0.25f, 0x800 / (i + 1));

            mRot[i].set(sp28, sp24, sp20);
        }
        return;
    }

    cXyz sp140[4];
    Mtx sp110;
    Mtx spE0;
    csXyz spC8[4];
    f32 spB8[4];
    cXyz spAC;

    cMtx_copy(param_1, sp110);
    sp110[0][3] = sp110[1][3] = sp110[2][3] = 0.0f;

    mDoMtx_stack_c::copy(sp110);
    mDoMtx_stack_c::inverse();
    cMtx_copy(mDoMtx_stack_c::get(), sp110);
    mDoMtx_stack_c::transS(param_0->current.pos);
    mDoMtx_stack_c::concat(sp110);

    for (int i = 0; i < 4; i++) {
        spAC = mJntPos[i] - param_0->current.pos;
        mDoMtx_stack_c::multVec(&spAC, &sp140[i]);
    }

    cXyz spA0(*mpAttnPos);
    spAC = spA0 - param_0->current.pos;
    mDoMtx_stack_c::multVec(&spAC, &spA0);

    for (int i = 0; i < 3; i++) {
        spAC = sp140[i + 1] - sp140[i];
        
        spC8[i].set(0, 0, 0);
        spC8[i].x = -cM_atan2s(spAC.y, spAC.absXZ());

        if (fabsf(cM_ssin(spC8[i].x)) < 0.8f) {
            spC8[i].y = cM_atan2s(spAC.x, spAC.z);
        } else {
            spC8[i].y = 0;
        }

        spB8[i] = spAC.abs();
    }

    csXyz sp2C;
    cXyz sp94;
    cXyz sp88;

    for (int i = 2; i >= -1; i--) {
        sp2C = csXyz::Zero;
        for (int j = 0; j < 3; j++) {
            mDoMtx_stack_c::XYZrotS(spC8[j]);
            cMtx_copy(mDoMtx_stack_c::get(), spE0);
            mDoMtx_stack_c::transS(sp140[j]);

            sp2C.x += field_0x64[j].x;
            sp2C.y += field_0x64[j].y;

            mDoMtx_stack_c::ZXYrotM(sp2C);
            mDoMtx_stack_c::concat(spE0);
            spAC.set(0.0f, 0.0f, spB8[j]);
            mDoMtx_stack_c::multVec(&spAC, &sp140[j + 1]);
        }

        if (i == -1) {
            break;
        }

        if (param_2 == 0) {
            field_0x94[i] = 0;
        }

        if (field_0x94[i] == 0) {
            sp94 = spA0 - sp140[i];
            if (!sp94.isZero()) {
                sp94.normalize();
                sp88 = sp140[3] - sp140[i];

                if (!sp88.isZero()) {
                    sp88.normalize();
                    s16 sp16, sp14, sp12, sp10;
                    sp16 = -cM_atan2s(sp94.y, sp94.absXZ());
                    sp12 = cM_atan2s(sp94.x, sp94.z);
                    sp14 = -cM_atan2s(sp88.y, sp88.absXZ());
                    sp10 = cM_atan2s(sp88.x, sp88.z);

                    s16 spE = sp16 - sp14;
                    s16 spC = sp12 - sp10;
                    field_0x64[i].x += spE;
                    field_0x64[i].y += spC;

                    limitter(spC8[i].x, &field_0x64[i].x, mMaxJntLmt[i].x, mMinJntLmt[i].x);
                    limitter(spC8[i].y, &field_0x64[i].y, mMaxJntLmt[i].y, mMinJntLmt[i].y);
                }
            }
        }

        if ((param_2 > 0 && field_0x64[i].y < 0) || (param_2 < 0 && field_0x64[i].y > 0)) {
            field_0x94[i] = 1;
        }
    }

    sp2C = csXyz::Zero;
    for (int i = 0; i < 4; i++) {
        sp2C += field_0x64[i];
        mRot[i] = sp2C;
    }
}

/* 8014E634-8014E658 148F74 0024+00 0/0 0/0 1/1 .text setMaxJntLmt__18daBaseNpc_lookat_cF5csXyzi
 */
void daBaseNpc_lookat_c::setMaxJntLmt(csXyz i_max, int i_no) {
    mMaxJntLmt[i_no] = i_max;
}

/* 8014E658-8014E67C 148F98 0024+00 0/0 0/0 1/1 .text setMinJntLmt__18daBaseNpc_lookat_cF5csXyzi
 */
void daBaseNpc_lookat_c::setMinJntLmt(csXyz i_min, int i_no) {
    mMinJntLmt[i_no] = i_min;
}

/* 8014E67C-8014E6A0 148FBC 0024+00 0/0 0/0 1/1 .text setJntPos__18daBaseNpc_lookat_cF4cXyzi */
void daBaseNpc_lookat_c::setJntPos(cXyz i_pos, int i_no) {
    mJntPos[i_no] = i_pos;
}

/* 8014E6A0-8014E6AC 148FE0 000C+00 0/0 0/0 1/1 .text setAttnPos__18daBaseNpc_lookat_cFP4cXyz */
int daBaseNpc_lookat_c::setAttnPos(cXyz* i_pos) {
    mpAttnPos = i_pos;
    return 1;
}

/* 8014E6AC-8014E6C8 148FEC 001C+00 0/0 0/0 1/1 .text            getRot__18daBaseNpc_lookat_cFi */
csXyz daBaseNpc_lookat_c::getRot(int i_no) {
    return mRot[i_no];
}

/* 8014E6C8-8014E89C 149008 01D4+00 1/1 0/0 0/0 .text            __ct__11daBaseNpc_cFv */
daBaseNpc_c::daBaseNpc_c() {}

/* 8014E89C-8014EAD0 1491DC 0234+00 2/1 0/0 2/2 .text            __dt__11daBaseNpc_cFv */
daBaseNpc_c::~daBaseNpc_c() {}

/* 8014EAD0-8014EC50 149410 0180+00 2/0 0/0 2/0 .text            execute__11daBaseNpc_cFv */
int daBaseNpc_c::execute() {
    setParam();
    mainProc();

    fopAcM_posMoveF(this, mCcStts.GetCCMoveP());
    mAcch.CrrPos(dComIfG_Bgsp());
    field_0x9d4 = mAcch.m_gnd;

    mGroundY = mAcch.GetGroundH();
    if (mGroundY != -1000000000.0f) {
        field_0x918 = daBaseNpc_getGroundAngle(&field_0x9d4, field_0x91a.y);
        setEnvTevColor();
        setRoomNo();
    }

    allAnmPlay();
    adjustShapeAngle();
    setMtx(0);
    setCollisions();
    setAttnPos();
    return 1;
}

/* 8014EC50-8014EE3C 149590 01EC+00 2/0 0/0 2/0 .text            draw__11daBaseNpc_cFf */
int daBaseNpc_c::draw(f32 param_0) {
    J3DModel* model_p = mpModelMorf->getModel();
    J3DModelData* modelData_p = model_p->getModelData();

    if (dKy_darkworld_check()) {
        g_env_light.settingTevStruct(4, &current.pos, &tevStr);
    } else {
        g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    }

    g_env_light.setLightTevColorType_MAJI(model_p, &tevStr);

    if (!dbgDraw()) {
        return 1;
    }

    if (cLib_checkBit<u16>(field_0x840, 0x40)) {
        mBtp.entry(modelData_p);
    }

    if (cLib_checkBit<u16>(field_0x840, 0x80)) {
        mBtk.entry(modelData_p);
    }

    if (dKy_darkworld_check()) {
        dComIfGd_setListDark();
        mpModelMorf->entryDL();
        dComIfGd_setList();
    } else {
        mpModelMorf->entryDL();
    }

    if (cLib_checkBit<u16>(field_0x840, 0x40)) {
        mBtp.remove(modelData_p);
    }

    if (cLib_checkBit<u16>(field_0x840, 0x80)) {
        mBtk.remove(modelData_p);
    }

    mShadowId = dComIfGd_setShadow(mShadowId, 1, model_p, &current.pos, param_0, 20.0f, current.pos.y, mGroundY, field_0x9d4, &tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
    drawOtherMdls();
    return 1;
}

/* 8014EE3C-8014EE44 14977C 0008+00 2/0 0/0 1/0 .text            getResName__11daBaseNpc_cFv */
const char* daBaseNpc_c::getResName() {
    return NULL;
}

/* 8014EE44-8014EE80 149784 003C+00 0/0 0/0 2/2 .text getTrnsfrmKeyAnmP__11daBaseNpc_cFPci */
J3DAnmTransform* daBaseNpc_c::getTrnsfrmKeyAnmP(char* i_arcName, int i_resIdx) {
    return (J3DAnmTransform*)dComIfG_getObjectRes(i_arcName, i_resIdx);
}

/* 8014EE80-8014EEE4 1497C0 0064+00 0/0 0/0 1/1 .text
 * setMcaMorfAnm__11daBaseNpc_cFP18J3DAnmTransformKeyffiii      */
int daBaseNpc_c::setMcaMorfAnm(J3DAnmTransformKey* i_anm, f32 i_speed, f32 i_morf,
                                int i_mode, int i_start, int i_end) {
    mpModelMorf->setAnm(i_anm, i_mode, i_morf, i_speed, i_start, i_end);
    return 1;
}

/* 8014EEE4-8014EF28 149824 0044+00 0/0 0/0 1/1 .text
 * setBckAnm__11daBaseNpc_cFP15J3DAnmTransformfiiib             */
int daBaseNpc_c::setBckAnm(J3DAnmTransform* i_anm, f32 i_speed, int i_mode, int i_start,
                            int i_end, bool i_modify) {
    return mBck.init(i_anm, TRUE, i_mode, i_speed, i_start, i_end, i_modify);
}

/* 8014EF28-8014EF64 149868 003C+00 0/0 0/0 1/1 .text            getTexPtrnAnmP__11daBaseNpc_cFPci
 */
J3DAnmTransform* daBaseNpc_c::getTexPtrnAnmP(char* i_arcName, int i_resIdx) {
    return (J3DAnmTransform*)dComIfG_getObjectRes(i_arcName, i_resIdx);
}

/* 8014EF64-8014EFA4 1498A4 0040+00 0/0 0/0 1/1 .text
 * setBtpAnm__11daBaseNpc_cFP16J3DAnmTexPatternP12J3DModelDatafi */
int daBaseNpc_c::setBtpAnm(J3DAnmTexPattern* i_anm, J3DModelData* i_modelData, f32 i_speed,
                            int i_mode) {
    return mBtp.init(i_modelData, i_anm, TRUE, i_mode, i_speed, 0, -1);
}

/* 8014EFA4-8014EFF0 1498E4 004C+00 2/0 0/0 2/0 .text            attnSttsOn__11daBaseNpc_cFii */
void daBaseNpc_c::attnSttsOn(int param_0, int param_1) {
    u32 attn_flags;

    if (dComIfGp_getLinkPlayer()->checkWolf()) {
        if (param_1 != 0) {
            attn_flags = 10;
        } else {
            attn_flags = 1;
        }
    } else if (param_0 != 0) {
        attn_flags = 10;
    } else {
        attn_flags = 1;
    }

    attention_info.flags = attn_flags;
}

/* 8014EFF0-8014EFF4 149930 0004+00 2/0 0/0 1/0 .text            setParam__11daBaseNpc_cFv */
void daBaseNpc_c::setParam() {}

/* 8014EFF4-8014F09C 149934 00A8+00 0/0 0/0 1/1 .text            orderEvent__11daBaseNpc_cFiPc */
void daBaseNpc_c::orderEvent(int param_0, char* i_evtName) {
    if (i_evtName != NULL) {
        mEvtIdx = dComIfGp_getEventManager().getEventIdx(this, i_evtName, -1);
        fopAcM_orderOtherEventId(this, mEvtIdx, 0xFF, 0xFFFF, 0, 1);
    } else if (field_0x848 >= 0 && attention_info.flags == 10) {
        eventInfo.onCondition(1);
        if (param_0 != 0) {
            fopAcM_orderSpeakEvent(this, 0, 0);
        }
    }
}

/* 8014F09C-8014F0A0 1499DC 0004+00 2/0 0/0 1/0 .text            mainProc__11daBaseNpc_cFv */
void daBaseNpc_c::mainProc() {}

/* 8014F0A0-8014F0FC 1499E0 005C+00 1/1 0/0 2/2 .text            setEnvTevColor__11daBaseNpc_cFv */
void daBaseNpc_c::setEnvTevColor() {
    tevStr.YukaCol = dComIfG_Bgsp().GetPolyColor(field_0x9d4);
    tevStr.room_no = dComIfG_Bgsp().GetRoomId(field_0x9d4);
}

/* 8014F0FC-8014F140 149A3C 0044+00 1/1 0/0 2/2 .text            setRoomNo__11daBaseNpc_cFv */
void daBaseNpc_c::setRoomNo() {
    s32 room_id = dComIfG_Bgsp().GetRoomId(field_0x9d4);
    fopAcM_SetRoomNo(this, room_id);
    mCcStts.SetRoomId(room_id);
}

/* 8014F140-8014F148 149A80 0008+00 2/0 0/0 2/0 .text            btkCtrl__11daBaseNpc_cFv */
BOOL daBaseNpc_c::btkCtrl() {
    return false;
}

/* 8014F148-8014F1C8 149A88 0080+00 1/1 0/0 0/0 .text            checkEndAnm__11daBaseNpc_cFf */
int daBaseNpc_c::checkEndAnm(f32 param_0) {
    switch (mpModelMorf->getPlayMode()) {
    case J3DFrameCtrl::EMode_LOOP:
        return mpModelMorf->isLoop();
    case J3DFrameCtrl::EMode_NONE:
    case J3DFrameCtrl::EMode_RESET:
        return mpModelMorf->isStop() && param_0 != mpModelMorf->getPlaySpeed();
    case J3DFrameCtrl::EMode_REVERSE:
        break;
    }

    return 0;
}

/* 8014F1C8-8014F228 149B08 0060+00 1/1 0/0 0/0 .text checkEndAnm__11daBaseNpc_cFP12J3DFrameCtrl
 */
int daBaseNpc_c::checkEndAnm(J3DFrameCtrl* i_framectrl) {
    switch (i_framectrl->getAttribute()) {
    case J3DFrameCtrl::EMode_LOOP:
        return i_framectrl->checkState(2);
    case J3DFrameCtrl::EMode_NONE:
    case J3DFrameCtrl::EMode_RESET:
        return i_framectrl->checkState(1) || i_framectrl->getRate() == 0.0f;
    case J3DFrameCtrl::EMode_REVERSE:
        break;
    }

    return 0;
}

/* 8014F228-8014F38C 149B68 0164+00 2/0 0/0 2/0 .text            allAnmPlay__11daBaseNpc_cFv */
void daBaseNpc_c::allAnmPlay() {
    if (cLib_checkBit<u16>(field_0x840, 0x10) && !cLib_checkBit<u16>(field_0x840, 1)) {
        f32 temp_f31 = mpModelMorf->getPlaySpeed();
        mpModelMorf->play(0, 0);

        if (checkEndAnm(temp_f31)) {
            field_0x842++;
        }
    }

    if (cLib_checkBit<u16>(field_0x840, 0x80) && !cLib_checkBit<u16>(field_0x840, 8) && !btkCtrl()) {
        mBtk.play();
    }

    if (!cLib_checkBit<u16>(field_0x840, 0x100)) {
        if (cLib_checkBit<u16>(field_0x840, 0x20) && !cLib_checkBit<u16>(field_0x840, 2)) {
            mBck.play();
        }

        if (cLib_checkBit<u16>(field_0x840, 0x40) && !cLib_checkBit<u16>(field_0x840, 4)) {
            mBtp.getFrame();
            mBtp.play();

            if (mBtp.getFrameCtrl()->getAttribute() == 2) {
                if (checkEndAnm(mBtp.getFrameCtrl())) {
                    field_0x838 = cLib_getRndValue<int>(60, 100);
                    mBtp.setPlaySpeed(0.0f);
                }
            } else {
                field_0x838 = 0;
            }

            if (cLib_calcTimer<s16>(&field_0x838) == 0) {
                mBtp.setPlaySpeed(1.0f);
            }
        }
    }

    cLib_offBit<u16>(field_0x840, 0x10F);
}

/* 8014F38C-8014F390 149CCC 0004+00 2/0 0/0 1/0 .text            adjustShapeAngle__11daBaseNpc_cFv
 */
void daBaseNpc_c::adjustShapeAngle() {}

/* 8014F390-8014F4A0 149CD0 0110+00 2/0 0/0 1/0 .text            setMtx__11daBaseNpc_cFi */
void daBaseNpc_c::setMtx(int param_0) {
    J3DModel* model = mpModelMorf->getModel();
    J3DModelData* modelData = model->getModelData();

    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(field_0x91a);
    mDoMtx_stack_c::scaleM(scale);

    model->setBaseTRMtx(mDoMtx_stack_c::get());

    if (param_0) {
        model->setUserArea((u32)this);
    } else {
        model->setUserArea(0);
    }

    if ((field_0x840 & 0x10) && field_0x83c) {
        u16 tmp = 0;
        while (field_0x83c[tmp] != 0xFFFF) {
            mBck.entryJoint(modelData, field_0x83c[tmp], mBck.getFrame());
            tmp++;
        }

        mpModelMorf->modelCalc();

        u16 tmp2 = 0;
        while (field_0x83c[tmp2] != 0xFFFF) {
            mBck.removeJoint(modelData, field_0x83c[tmp2]);
            tmp2++;
        }
    } else {
        mpModelMorf->modelCalc();
    }
}

/* 8014F4A0-8014F4A4 149DE0 0004+00 2/0 0/0 1/0 .text            setCollisions__11daBaseNpc_cFv */
void daBaseNpc_c::setCollisions() {}

/* 8014F4A4-8014F4A8 149DE4 0004+00 2/0 0/0 1/0 .text            setAttnPos__11daBaseNpc_cFv */
void daBaseNpc_c::setAttnPos() {}

/* 8014F4A8-8014F4AC 149DE8 0004+00 2/0 0/0 1/0 .text            drawOtherMdls__11daBaseNpc_cFv */
void daBaseNpc_c::drawOtherMdls() {}

/* 8014F4AC-8014F4B4 149DEC 0008+00 2/0 0/0 1/0 .text            dbgDraw__11daBaseNpc_cFv */
bool daBaseNpc_c::dbgDraw() {
    return true;
}
