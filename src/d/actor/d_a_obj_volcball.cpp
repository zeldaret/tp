/**
 * d_a_obj_volcball.cpp
 * Volcano Eruption Falling Rocks
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_volcball.h"
#include "d/actor/d_a_obj_volcbom.h"
#include "SSystem/SComponent/c_math.h"
#include "d/actor/d_a_player.h"
#include "d/d_com_inf_game.h"
#include "d/d_event_lib.h"
#include "f_op/f_op_actor_mng.h"

//
// Declarations:
//

/* 80D23EAC-80D23EB0 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static const char* l_arcName = "M_Volcbal";

/* 80D23EB0-80D23F58 000024 00A8+00 1/1 0/0 0/0 .data            l_param */
static daObjVolcBall_c::volc_param_c l_param[] = {
    {
        -3.0f, -70.0f, 1.0f,  1700.0f, 400.0f, 1.0f, 0.5f, 5.0f,    5.0f, 50.0f, 20.0f,
        6.0f,  2.0f,   20.0f, 4.0f,    0.6f,   2.0f, 0.0f, 5000.0f, 1.2f, 8,     70,
    },
    {
        -10.0f, -100.0f, 1.0f, 1700.0f, 400.0f, 1.0f, 0.5f, 0.0f,    0.0f, 0.0f, 0.0f,
        1.0f,   0.0f,    9.0f, 0.0f,    1.0f,   2.0f, 0.3f, 5000.0f, 1.2f, 2,    43,
    },
};

/* 80D21B18-80D21B30 000078 0018+00 8/8 0/0 0/0 .text            getData__15daObjVolcBall_cFv */
daObjVolcBall_c::volc_param_c* daObjVolcBall_c::getData() {
    return &l_param[mIsBigVolc];
}

/* 80D21B30-80D21B50 000090 0020+00 1/1 0/0 0/0 .text            CheckCreateHeap__FP10fopAc_ac_c */
static int CheckCreateHeap(fopAc_ac_c* i_this) {
    return static_cast<daObjVolcBall_c*>(i_this)->CreateHeap();
}

/* 80D21B50-80D21BA0 0000B0 0050+00 1/1 0/0 0/0 .text            search_big_volc__FPvPv */
static void* search_big_volc(void* i_actor, void*) {
    if (i_actor != NULL && fopAcM_IsActor(i_actor) &&
        fopAcM_GetProfName(i_actor) == PROC_Obj_VolcanicBomb)
    {
        return i_actor;
    }

    return NULL;
}

/* 80D21BA0-80D21BC0 000100 0020+00 1/1 0/0 0/0 .text            initBaseMtx__15daObjVolcBall_cFv */
void daObjVolcBall_c::initBaseMtx() {
    setBaseMtx();
}

/* 80D21BC0-80D21C40 000120 0080+00 1/1 0/0 0/0 .text            setBaseMtx__15daObjVolcBall_cFv */
void daObjVolcBall_c::setBaseMtx() {
    daPy_py_c* player_p = daPy_getPlayerActorClass();

    if (mIsBigVolc == 0) {
        current.pos = player_p->current.pos;
    }

    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    MTXCopy(mDoMtx_stack_c::get(), field_0x28ec);
}

/* 80D23DCC-80D23E0C 000000 0040+00 7/7 0/0 0/0 .rodata          l_sph_src */
static const dCcD_SrcSph l_sph_src = {
    {
        {0, {{AT_TYPE_BOMB, 1, 0x1F}, {0, 0x11}, 0}},
        {dCcD_SE_NONE, 0, 1, 0, {8}},
        {dCcD_SE_NONE, 0, 0, 0, {2}},
        {0},
    },
    {
        {
            {0.0f, 0.0f, 0.0f},
            100.0f,
        },
    }
};

/* 80D21C40-80D21D80 0001A0 0140+00 1/1 0/0 0/0 .text            Create__15daObjVolcBall_cFv */
int daObjVolcBall_c::Create() {
    initBaseMtx();
    fopAcM_SetMtx(this, field_0x28ec);

    for (int i = 0; i < 9; i++) {
        mAcchCir.SetWall(30.0f, 30.0f);
        mBall[i].mAcch.Set(&mBall[i].field_0x4, &mBall[i].field_0x10, this, 1, &mAcchCir,
                           &mBall[i].field_0x3c, NULL, NULL);
        mCcStts.Init(0, 0xFF, this);
        mBall[i].mSphCc.Set(l_sph_src);
        mBall[i].mSphCc.SetStts(&mCcStts);
    }

    fopAcM_setCullSizeBox(this, -1000.0f, 0.0f, -1000.0f, 1000.0f, 1000.0f, 1000.0f);

    if (mIsBigVolc == 0) {
        if (fopAcM_isSwitch(this, getSwBit())) {
            initActionWarning();
        } else {
            initActionSwWait();
        }
    } else {
        initActionPlayerWait();
    }

    mBigVolcActorID = -1;
    return 1;
}


/* 80D21D80-80D21E28 0002E0 00A8+00 1/1 0/0 0/0 .text            CreateHeap__15daObjVolcBall_cFv */
int daObjVolcBall_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 3);

    for (int i = 0; i < 9; i++) {
        mBall[i].mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
        if (mBall[i].mpModel == NULL) {
            return 0;
        }
    }

    return 1;
}

/* 80D21E28-80D21FA8 000388 0180+00 1/1 0/0 0/0 .text            create__15daObjVolcBall_cFv */
int daObjVolcBall_c::create() {
    fopAcM_SetupActor(this, daObjVolcBall_c);

    mIsBigVolc = checkBigVolc();
    if (mIsBigVolc == 1) {
        if (fopAcM_isSwitch(this, getSwBit2())) {
            return cPhs_ERROR_e;
        }

        field_0x2926 = 1;
    }

    int phase = dComIfG_resLoad(&mPhase, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, CheckCreateHeap, 0x4900)) {
            return cPhs_ERROR_e;
        }

        if (!Create()) {
            return cPhs_ERROR_e;
        }
    }

    return phase;
}

/* 80D22424-80D22484 000984 0060+00 1/1 0/0 0/0 .text            execute__15daObjVolcBall_cFv */
int daObjVolcBall_c::execute() {
    f32 ball_gravity = getData()->mGravity;
    f32 ball_fall_speed = getData()->mMaxFallSpeed;

    gravity = ball_gravity;
    maxFallSpeed = ball_fall_speed;

    action();
    return 1;
}

typedef void (daObjVolcBall_c::*actionFunc)();

/* 80D22484-80D22570 0009E4 00EC+00 1/1 0/0 0/0 .text            action__15daObjVolcBall_cFv */
void daObjVolcBall_c::action() {
    static actionFunc l_func[] = {
        &daObjVolcBall_c::actionPlayerWait, &daObjVolcBall_c::actionSwWait,
        &daObjVolcBall_c::actionStop,       &daObjVolcBall_c::actionWarning,
        &daObjVolcBall_c::actionEruption,   &daObjVolcBall_c::actionEnd,
    };

    (this->*l_func[mMode])();
}

/* 80D22570-80D2257C 000AD0 000C+00 1/1 0/0 0/0 .text initActionPlayerWait__15daObjVolcBall_cFv */
void daObjVolcBall_c::initActionPlayerWait() {
    setAction(MODE_PLAYER_WAIT);
}

/* 80D2257C-80D225A4 000ADC 0028+00 3/3 0/0 0/0 .text initActionWarning__15daObjVolcBall_cFv */
void daObjVolcBall_c::initActionWarning() {
    setAction(MODE_QUAKE);
    startQuake();
}

/* 80D225A4-80D225B0 000B04 000C+00 1/1 0/0 0/0 .text initActionSwWait__15daObjVolcBall_cFv */
void daObjVolcBall_c::initActionSwWait() {
    setAction(MODE_SWITCH_WAIT);
}

/* 80D225B0-80D2267C 000B10 00CC+00 1/0 0/0 0/0 .text actionPlayerWait__15daObjVolcBall_cFv */
void daObjVolcBall_c::actionPlayerWait() {
    daPy_py_c* player_p = daPy_getPlayerActorClass();

    if (fopAcM_searchPlayerDistanceXZ(this) < 2500.0f) {
        if (fabsf(current.pos.y - player_p->current.pos.y) < 300.0f) {
            mTime = getData()->mNormalWarningTime * 30.0f +
                    cM_rndFX(getData()->mRandWarningTime * 30.0f);
            initActionWarning();
        }
    }
}

/* 80D2267C-80D22724 000BDC 00A8+00 1/0 0/0 0/0 .text            actionSwWait__15daObjVolcBall_cFv
 */
void daObjVolcBall_c::actionSwWait() {
    if (fopAcM_isSwitch(this, getSwBit())) {
        setAction(MODE_STOP);
        mTime = getData()->mNormalWaitTime * 30.0f + cM_rndFX(getData()->mRandWaitTime * 30.0f);
    }
}

/* 80D22724-80D227E4 000C84 00C0+00 1/0 0/0 0/0 .text            actionStop__15daObjVolcBall_cFv */
void daObjVolcBall_c::actionStop() {
    if (!fopAcM_isSwitch(this, getSwBit())) {
        setAction(MODE_SWITCH_WAIT);
    }

    if (cLib_calcTimer(&mTime) == 0) {
        mTime = getData()->mNormalWarningTime * 30.0f +
                cM_rndFX(getData()->mRandWarningTime * 30.0f);
        initActionWarning();
    }
}

/* 80D227E4-80D22944 000D44 0160+00 1/0 0/0 0/0 .text            actionWarning__15daObjVolcBall_cFv
 */
void daObjVolcBall_c::actionWarning() {
    if (!dComIfGp_getVibration().CheckQuake()) {
        startQuake();
    }

    if (getSwBit() != 0xFF) {
        if (!fopAcM_isSwitch(this, getSwBit())) {
            dComIfGp_getVibration().StopQuake(31);
            setAction(MODE_SWITCH_WAIT);
        }
    }

    if (cLib_calcTimer(&mTime) == 0) {
        setAction(MODE_ERUPT);
        mTime = getData()->mNormalEruptTime * 30.0f +
                cM_rndFX(getData()->mRandEruptTime * 30.0f);

        mSearchBallCreateTimer = getData()->mSearchBallCreateTime * 30;
    }

    mDoAud_seStartLevel(Z2SE_ENV_VOLCANO_SHAKE, NULL, 0,
                          dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
}

/* 80D22944-80D22C6C 000EA4 0328+00 1/0 0/0 0/0 .text            actionEruption__15daObjVolcBall_cFv
 */
// NONMATCHING small regalloc
void daObjVolcBall_c::actionEruption() {
    if (!dComIfGp_getVibration().CheckQuake()) {
        startQuake();
    }

    daPy_py_c* player_p = daPy_getPlayerActorClass();
    u32 timer = cLib_calcTimer(&mTime);
    bool disable_ball_create = true;

    if (timer != 0) {
        bool bvar2 = false;
        if (getSwBit() != 0xFF && !fopAcM_isSwitch(this, getSwBit())) {
            bvar2 = true;
        }

        if (!bvar2) {
            disable_ball_create = false;
        }
    }

    if (!disable_ball_create) {
        if (cLib_calcTimer(&mSearchBallCreateTimer) == 0) {
            createSearchBall();
        }

        if (cLib_calcTimer(&mNormalBallCreateTimer) == 0) {
            createNormalBall();
        }
    }

    if (mBall[8].field_0x376 != 0) {
        field_0x603++;

        u8 search_time = getData()->mPlayerSearchTime;
        f32 shadow_intensity = getData()->mSearchBallShadowIntensity;

        if (field_0x603 < search_time) {
            mBall[8].field_0x4.x = player_p->current.pos.x;
            mBall[8].field_0x4.z = player_p->current.pos.z;
            mBall[8].field_0x364 = player_p->current.pos;
        }

        cLib_chaseF(&mBall[8].field_0x1c.x, field_0x291c, field_0x291c / (f32)search_time);
        cLib_chaseF(&mBall[8].field_0x1c.y, field_0x291c, field_0x291c / (f32)search_time);
        cLib_chaseF(&mBall[8].field_0x1c.z, field_0x291c, field_0x291c / (f32)search_time);
        cLib_chaseF(&mBall[8].field_0x50, shadow_intensity, shadow_intensity / (f32)search_time);

        mBall[8].field_0x28 = mBall[8].field_0x1c;
        mBall[8].mSphCc.SetR(field_0x291c * 100.0f);
        mBall[8].mSphCc.SetC(mBall[8].field_0x4);
        dComIfG_Ccsp()->Set(&mBall[8].mSphCc);
    }

    if (!executeBall() && disable_ball_create) {
        if (mIsBigVolc == 0) {
            setAction(MODE_STOP);
            mTime = getData()->mNormalWaitTime * 30.0f + cM_rndFX(getData()->mRandWaitTime * 30.0f);
        } else if (mIsBigVolc == 1) {
            initActionEnd();
        }

        dComIfGp_getVibration().StopQuake(31);
    }

    mDoAud_seStartLevel(Z2SE_ENV_VOLCANO_SHAKE, NULL, 0,
                          dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
}

/* 80D22C6C-80D22CD4 0011CC 0068+00 1/1 0/0 0/0 .text            initActionEnd__15daObjVolcBall_cFv
 */
void daObjVolcBall_c::initActionEnd() {
    field_0x2925 = 0;
    field_0x2924 = 0;

    fopAc_ac_c* big_volc = fopAcM_Search(search_big_volc, this);
    if (big_volc != NULL) {
        mBigVolcActorID = fopAcM_GetID(big_volc);
    }

    setAction(MODE_END);
}

/* 80D22CD4-80D22DDC 001234 0108+00 1/0 0/0 0/0 .text            actionEnd__15daObjVolcBall_cFv */
void daObjVolcBall_c::actionEnd() {
    if (mIsBigVolc != 1 || (mIsBigVolc == 1 && fopAcM_isSwitch(this, getSwBit()))) {
        return;
    }

    daObjVolcBom_c* bom_p = (daObjVolcBom_c*)fopAcM_SearchByID(mBigVolcActorID);
    if (bom_p != NULL) {
        switch (field_0x2924) {
        case 0:
            bom_p->startSearch();
            field_0x2924 = 1;
        case 1:
            if (field_0x2925 == 60) {
                field_0x2924 = 2;
            }

            field_0x2925++;
            break;
        case 2:
            orderEvent(getEvNo(), 0xFF, 1);
            field_0x2924 = 3;
            break;
        case 3:
            eventUpdate();
            break;
        }
    }
    
}

/* 80D22DDC-80D22E24 00133C 0048+00 2/1 0/0 0/0 .text            eventStart__15daObjVolcBall_cFv */
bool daObjVolcBall_c::eventStart() {
    daObjVolcBom_c* bom_p = (daObjVolcBom_c*)fopAcM_SearchByID(mBigVolcActorID);
    if (bom_p != NULL) {
        bom_p->startFall();
    }

    return true;
}

/* 80D22E24-80D22ED4 001384 00B0+00 1/1 0/0 0/0 .text            setEruptEffect__15daObjVolcBall_cFi
 */
void daObjVolcBall_c::setEruptEffect(int i_ballNo) {
    static u16 const l_effect_id[6] = {0x84A8, 0x84A9, 0x84AA, 0x84AB, 0x84AC, 0x84AD};

    vball_s* ball = &mBall[i_ballNo];

    for (int i = 0; i < 6; i++) {
        dComIfGp_particle_setColor(l_effect_id[i], &ball->field_0x4, &tevStr, NULL, NULL,
                                   0.0f, 0xFF, NULL, &ball->field_0x1c, NULL, -1,
                                   NULL);
    }
}

/* 80D22ED4-80D22FCC 001434 00F8+00 2/2 0/0 0/0 .text            setFallEffect__15daObjVolcBall_cFi
 */
void daObjVolcBall_c::setFallEffect(int i_ballNo) {
    static u16 const l_fall_effect_id[4] = {0x84AE, 0x84AF, 0x84B0, 0x84B1};

    vball_s* ball = &mBall[i_ballNo];

    for (int i = 0; i < 4; i++) {
        cXyz sp28;

        if (i_ballNo == 8) {
            sp28.setall(field_0x291c);
        } else {
            sp28 = ball->field_0x1c;
        }

        dComIfGp_particle_setColor(l_fall_effect_id[i], &ball->field_0x4, &tevStr, NULL, NULL,
                                   0.0f, 0xFF, &ball->field_0x34, &sp28,
                                   &ball->field_0x390[i], -1, NULL);
    }
}

/* 80D22FCC-80D23034 00152C 0068+00 2/2 0/0 0/0 .text            endFallEffect__15daObjVolcBall_cFi
 */
void daObjVolcBall_c::endFallEffect(int i_ballNo) {
    vball_s* ball = &mBall[i_ballNo];

    for (int i = 0; i < 4; i++) {
        ball->field_0x390[i].remove();
    }
}

/* 80D23034-80D23188 001594 0154+00 1/1 0/0 0/0 .text createSearchBall__15daObjVolcBall_cFv */
bool daObjVolcBall_c::createSearchBall() {
    daPy_py_c* player_p = daPy_getPlayerActorClass();
    bool var_r30 = false;

    if (mBall[8].field_0x376 == 0) {
        f32 create_freq = getData()->mSearchBallFreq;
        f32 scale = getData()->mSearchBallBaseScale + cM_rndFX(getData()->mSearchBallRandScale);
        f32 height = getData()->mSearchBallSetHeight;

        if (cM_rndF(1.0f) < create_freq) {
            mBall[8].field_0x376 = 1;
            mBall[8].field_0x4 = player_p->current.pos;
            mBall[8].field_0x4.y += height;
            mBall[8].field_0x4c = mBall[8].field_0x4.y;
            mBall[8].field_0x1c.set(0.0f, 0.0f, 0.0f);
            mBall[8].field_0x3c.set(0.0f, 0.0f, 0.0f);
            mBall[8].field_0x50 = 0.0f;

            field_0x291c = scale;
            field_0x603 = 0;
            setFallEffect(8);
            var_r30 = true;
        }

        mSearchBallCreateTimer = getData()->mSearchBallCreateTime * 30;
    }

    return var_r30;
}

/* 80D23188-80D23438 0016E8 02B0+00 1/1 0/0 0/0 .text createNormalBall__15daObjVolcBall_cFv */
bool daObjVolcBall_c::createNormalBall() {
    daPy_py_c* player_p = daPy_getPlayerActorClass();

    bool bvar = false;

    f32 fvar11 = getData()->mBallSetShortRange;
    f32 fvar1 = getData()->mBallSetRandom;

    cXyz sp8C(1.0f, 0.0f, 0.0f);
    cXyz sp98;

    mDoMtx_stack_c::YrotS(cM_rndFX(32767.0f));
    mDoMtx_stack_c::multVec(&sp8C, &sp8C);
    sp98 = sp8C;
    sp8C *= fvar11;

    cXyz spA4 = player_p->current.pos + sp8C;
    sp98 *= cM_rndF(fvar1);

    spA4 += sp98;
    spA4.y = player_p->current.pos.y + 3000.0f;

    if (!fopAcM_gc_c::gndCheck(&spA4)) {
        return false;
    }

    f32 scale = getData()->mNormalScale + cM_rndFX(getData()->mScaleRandValue);
    f32 ball_speedH = getData()->mBallSpeedH;

    int ball_no = -1;
    for (int i = 0; i < 8; i++) {
        if (mBall[i].field_0x376 == 0) {
            ball_no = i;
            break;
        }
    }

    if (ball_no != -1) {
        vball_s* ball = &mBall[ball_no];

        ball->field_0x4 = spA4;
        ball->field_0x10 = spA4;
        ball->field_0x1c.set(scale, scale, scale);
        ball->field_0x28.set(0.0f, 0.0f, 0.0f);
        ball->field_0x3c.set(0.0f, 0.0f, 0.0f);
        ball->field_0x34.y = cM_rndF(32767.0f);
        ball->field_0x4c = ball->field_0x4.y;
        ball->field_0x48 = ball_speedH;
        ball->field_0x374 = ball->field_0x34.y;
        ball->field_0x376 = 1;

        setFallEffect(ball_no);
        mNormalBallCreateTimer = getData()->mNormalInterval + cM_rndFX(getData()->mRandInterval);
        bvar = true;
    }

    return bvar;
}

/* 80D23438-80D23868 001998 0430+00 1/1 0/0 0/0 .text            executeBall__15daObjVolcBall_cFv */
int daObjVolcBall_c::executeBall() {
    int ret = 0;
    vball_s* ball = mBall;

    for (int i = 0; i < 9; i++, ball++) {
        if (ball->field_0x376 != 0) {
            ball->field_0x10 = ball->field_0x4;
            ball->field_0x364.y = ball->field_0x4.y;
            ball->field_0x3c.y += fopAcM_GetGravity(this);

            if (ball->field_0x3c.y < fopAcM_GetMaxFallSpeed(this)) {
                ball->field_0x3c.y = fopAcM_GetMaxFallSpeed(this);
            }

            ball->field_0x3c.x = ball->field_0x48 * cM_scos(ball->field_0x374);
            ball->field_0x3c.z = ball->field_0x48 * cM_ssin(ball->field_0x374);

            ball->field_0x4 += ball->field_0x3c;
            ball->field_0x34.x += 2000;

            if (i != 8) {
                cLib_chaseF(&ball->field_0x28.x, ball->field_0x1c.x, 0.1f);
                cLib_chaseF(&ball->field_0x28.y, ball->field_0x1c.y, 0.1f);
                cLib_chaseF(&ball->field_0x28.z, ball->field_0x1c.z, 0.1f);
            }

            mDoMtx_stack_c::transS(ball->field_0x4);
            mDoMtx_stack_c::ZXYrotM(ball->field_0x34);

            ball->mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
            ball->mpModel->setBaseScale(ball->field_0x28);

            ball->mAcch.CrrPos(dComIfG_Bgsp());

            if (ball->mAcch.ChkGroundHit() || ball->mAcch.GetGroundH() == -1000000000.0f) {
                mDoAud_seStart(Z2SE_OBJ_BREAK_ROCK, &mBall[i].field_0x4, 0,
                               dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
                endFallEffect(i);
                setEruptEffect(i);
                ball->field_0x376 = 0;
            } else {
                if (i == 8) {
                    mDoAud_seStartLevel(Z2SE_OBJ_ROCK_FALL_DIRECT, &ball->field_0x4, 0,
                                          dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
                } else {
                    mDoAud_seStartLevel(Z2SE_OBJ_ROCK_FALL_DUMMY, &ball->field_0x4, 0,
                                          dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
                }

                ball->field_0x378.x = cM_atan2s(ball->field_0x4.y - ball->field_0x10.y,
                                                ball->field_0x4.absXZ(ball->field_0x10));
                ball->field_0x378.y = cM_atan2s(ball->field_0x4.z - ball->field_0x10.z,
                                                ball->field_0x4.x - ball->field_0x10.x);
                ball->field_0x378.z = 0;
            }

            ret++;
        }
    }

    return ret;
}

/* 80D23868-80D23904 001DC8 009C+00 3/3 0/0 0/0 .text            startQuake__15daObjVolcBall_cFv */
void daObjVolcBall_c::startQuake() {
    if (mIsBigVolc == 0) {
        dComIfGp_getVibration().StartQuake(2, 31, cXyz(0.0f, 1.0f, 0.0f));
    } else {
        dComIfGp_getVibration().StartQuake(4, 31, cXyz(0.0f, 1.0f, 0.0f));
    }
}

/* 80D23904-80D23A0C 001E64 0108+00 1/1 0/0 0/0 .text            draw__15daObjVolcBall_cFv */
int daObjVolcBall_c::draw() {
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);

    tevStr.mLightPosWorld.x = mBall[8].field_0x4.x;
    tevStr.mLightPosWorld.y = mBall[8].field_0x4.y;
    tevStr.mLightPosWorld.z = mBall[8].field_0x4.z;
    tevStr.field_0x344 = mBall[8].field_0x50;

    vball_s* ball = mBall;
    for (int i = 0; i < 9; i++) {
        if (ball->field_0x376 != 0) {
            g_env_light.setLightTevColorType_MAJI(ball->mpModel, &tevStr);
            mDoExt_modelUpdateDL(ball->mpModel);
        }

        ball++;
    }

    if (mBall[8].field_0x376 != 0) {
        mBall[8].field_0x370 = dComIfGd_setShadow(
            mBall[8].field_0x370, 0, mBall[8].mpModel, &mBall[8].field_0x364, 2000.0f, 0.0f,
            mBall[8].field_0x364.y, mBall[8].mAcch.GetGroundH(), mBall[8].mAcch.m_gnd, &tevStr, 0,
            1.0f, dDlst_shadowControl_c::getSimpleTex());
    }

    return 1;
}

/* 80D23A0C-80D23AA4 001F6C 0098+00 1/1 0/0 0/0 .text            _delete__15daObjVolcBall_cFv */
int daObjVolcBall_c::_delete() {
    dComIfG_resDelete(&mPhase, l_arcName);

    if (mIsBigVolc == 0 || (mIsBigVolc == 1 && field_0x2926 != 0)) {
        dComIfGp_getVibration().StopQuake(31);
    }

    for (int i = 0; i < 9; i++) {
        endFallEffect(i);
    }

    return 1;
}

/* 80D23AA4-80D23AC4 002004 0020+00 1/0 0/0 0/0 .text daObjVolcBall_Draw__FP15daObjVolcBall_c */
static int daObjVolcBall_Draw(daObjVolcBall_c* i_this) {
    return i_this->draw();
}

/* 80D23AC4-80D23AE4 002024 0020+00 1/0 0/0 0/0 .text daObjVolcBall_Execute__FP15daObjVolcBall_c
 */
static int daObjVolcBall_Execute(daObjVolcBall_c* i_this) {
    return i_this->execute();
}

/* 80D23AE4-80D23B04 002044 0020+00 1/0 0/0 0/0 .text daObjVolcBall_Delete__FP15daObjVolcBall_c */
static int daObjVolcBall_Delete(daObjVolcBall_c* i_this) {
    return i_this->_delete();
}

/* 80D23B04-80D23B24 002064 0020+00 1/0 0/0 0/0 .text daObjVolcBall_Create__FP10fopAc_ac_c */
static int daObjVolcBall_Create(fopAc_ac_c* i_this) {
    return static_cast<daObjVolcBall_c*>(i_this)->create();
}

/* 80D23FE8-80D24008 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjVolcBall_Method */
static actor_method_class l_daObjVolcBall_Method = {
    (process_method_func)daObjVolcBall_Create,
    (process_method_func)daObjVolcBall_Delete,
    (process_method_func)daObjVolcBall_Execute,
    NULL,
    (process_method_func)daObjVolcBall_Draw,
};

/* 80D24008-80D24038 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_VolcanicBall */
extern actor_process_profile_definition g_profile_Obj_VolcanicBall = {
  fpcLy_CURRENT_e,         // mLayerID
  3,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_Obj_VolcanicBall,   // mProcName
  &g_fpcLf_Method.base,   // sub_method
  0x00002928,              // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  593,                     // mPriority
  &l_daObjVolcBall_Method, // sub_method
  0x00040000,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};
