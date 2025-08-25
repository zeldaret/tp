/**
 * d_a_obj_tornado2.cpp
 * Strong Wind Column
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_tornado2.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_com_inf_game.h"
#include "d/d_kankyo_rain.h"

/* 80D1D3D4-80D1D3DC 000000 0006+02 6/6 0/0 0/0 .rodata          l_R02_eff_id */
static const u16 l_R02_eff_id[3] = {0x8B5E, 0x8B5F, 0xFFFF};

/* 80D1D3DC-80D1D3E4 000008 0006+02 0/1 0/0 0/0 .rodata          l_R04_eff_id */
static const u16 l_R04_eff_id[3] = {0x8B60, 0x8B61, 0xFFFF};

/* 80D1D3E4-80D1D3EC 000010 0006+02 0/1 0/0 0/0 .rodata          l_R05_eff_id */
static const u16 l_R05_eff_id[3] = {0x8B6B, 0x8B6C, 0xFFFF};

/* 80D1D3EC-80D1D3F4 000018 0006+02 0/1 0/0 0/0 .rodata          l_R07_eff_id */
static const u16 l_R07_eff_id[3] = {0x8B6D, 0x8B6E, 0xFFFF};

/* 80D1D3F4-80D1D3FC 000020 0006+02 0/1 0/0 0/0 .rodata          l_R14_eff_id */
static const u16 l_R14_eff_id[3] = {0x8B66, 0x8B67, 0x8B68};

/* 80D1D3FC-80D1D404 000028 0006+02 0/1 0/0 0/0 .rodata          l_R51_eff_id */
static const u16 l_R51_eff_id[3] = {0x8B69, 0x8B6A, 0xFFFF};

/* 80D1C4D8-80D1C54C 000078 0074+00 1/1 0/0 0/0 .text            setPntWind__12daObjTrnd2_cFv */
void daObjTrnd2_c::setPntWind() {
    mWindInfluence.position = current.pos;
    mWindInfluence.mDirection.x = 0.0f;
    mWindInfluence.mDirection.y = 1.0f;
    mWindInfluence.mDirection.z = 0.0f;
    mWindInfluence.mRadius = mDefaultRadius * scale.x;
    mWindInfluence.field_0x20 = 0.0f;
    mWindInfluence.mStrength = 0.2f;
    dKyw_pntwind_set(&mWindInfluence);
}

/* 80D1C54C-80D1C570 0000EC 0024+00 1/1 0/0 0/0 .text            cutPntWind__12daObjTrnd2_cFv */
void daObjTrnd2_c::cutPntWind() {
    dKyw_pntwind_cut(&mWindInfluence);
}

/* 80D1C570-80D1C780 000110 0210+00 1/1 0/0 0/0 .text            movePntWind__12daObjTrnd2_cFv */
void daObjTrnd2_c::movePntWind() {
    cXyz start;
    cXyz end;
    cXyz direction;
    start.x = mWindCps.mStart.x;
    start.y = mWindCps.mStart.y;
    start.z = mWindCps.mStart.z;
    end.x = mWindCps.mEnd.x;
    end.y = mWindCps.mEnd.y;
    end.z = mWindCps.mEnd.z;
    dKyr_get_vectle_calc(&start, &end, &direction);

    mWindInfluence.mDirection = direction;
    mWindInfluence.mRadius = mWindCps.mRadius * 2.0f;
    mWindInfluence.field_0x20 = 0.0f;

    cLib_addCalc(&mWindInfluence.position.x, mWindCps.mEnd.x, 0.1f, mWindInfluence.mRadius,
                 mWindInfluence.mRadius * 0.5f);
    cLib_addCalc(&mWindInfluence.position.y, mWindCps.mEnd.y, 0.1f, mWindInfluence.mRadius,
                 mWindInfluence.mRadius * 0.5f);
    cLib_addCalc(&mWindInfluence.position.z, mWindCps.mEnd.z, 0.1f, mWindInfluence.mRadius,
                 mWindInfluence.mRadius * 0.5f);

    if (mWindInfluence.position.abs(mWindCps.mEnd) < mWindInfluence.mRadius) {
        mWindInfluence.position = mWindCps.mStart;
    }
}

/* 80D1C780-80D1C924 000320 01A4+00 1/1 0/0 0/0 .text            setCpsInfo__12daObjTrnd2_cFv */
void daObjTrnd2_c::setCpsInfo() {
    cLib_chaseF(&mNowLength, mTargetLength, mDefaultLength * scale.y * 0.05f);
    mWindCps.mEnd.x = 0;
    mWindCps.mEnd.y = mNowLength;
    mWindCps.mEnd.z = 0;

    mDoMtx_stack_c::transS(mWindCps.mStart);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::multVec(&mWindCps.mEnd, &mWindCps.mEnd);
    mCps.cM3dGCps::Set(mWindCps);

    f32 strength = 10.0f;
    if (getPower() != 0xFF) {
        strength = getPower();
    }

    cXyz push_vec;
    cXyz sp40;
    push_vec.x = mWindCps.mEnd.x - mWindCps.mStart.x;
    push_vec.y = mWindCps.mEnd.y - mWindCps.mStart.y;
    push_vec.z = mWindCps.mEnd.z - mWindCps.mStart.z;

    if (!push_vec.isZero()) {
        push_vec.normalize();
    } else {
        push_vec = cXyz::Zero;
    }

    sp40 = push_vec;
    push_vec *= strength;
    mCps.SetAtVec(push_vec);
    movePntWind();
}

/* 80D1C924-80D1C944 0004C4 0020+00 1/1 0/0 0/0 .text            initBaseMtx__12daObjTrnd2_cFv */
void daObjTrnd2_c::initBaseMtx() {
    setBaseMtx();
}

/* 80D1C944-80D1C98C 0004E4 0048+00 2/2 0/0 0/0 .text            setBaseMtx__12daObjTrnd2_cFv */
void daObjTrnd2_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    MTXCopy(mDoMtx_stack_c::get(), mMtx);
}

/* 80D1D458-80D1D4A4 000000 004C+00 1/1 0/0 0/0 .data            l_cps_src */
static dCcD_SrcCps l_cps_src = {
    {
        {0x0, {{AT_TYPE_LANTERN_SWING, 0x0, 0x1d}, {0x0, 0x0}, 0x0}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x0, dCcD_MTRL_WIND, 0x2},                 // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, dCcD_MTRL_NONE, 0x4},                 // mGObjTg
        {0x0},                                                         // mGObjCo
    },                                                                 // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, {0.0f, 3000.0f, 0.0f}, 150.0f},  // mCps
    }  // mCpsAttr
};

/* 80D1C98C-80D1CC80 00052C 02F4+00 1/1 0/0 0/0 .text            Create__12daObjTrnd2_cFv */
int daObjTrnd2_c::Create() {
    mDefaultRadius = 150.0f;
    mDefaultLength = 1000.0f;
    if (getScale() == 1) {
        mDefaultRadius *= 10.0f;
        mDefaultLength *= 10.0f;
    }

    initBaseMtx();
    fopAcM_SetMtx(this, mMtx);

    mStts.Init(0xFF, 0xFF, this);
    mCps.Set(l_cps_src);
    mCps.SetStts(&mStts);

    cXyz cull_min;
    cXyz cull_max;
    cull_min.x = -mDefaultRadius * scale.x;
    cull_min.y = 0.0f;
    cull_min.z = -mDefaultRadius * scale.x;
    cull_max.x = mDefaultRadius * scale.x;
    cull_max.y = mDefaultLength * scale.y;
    cull_max.z = mDefaultRadius * scale.x;
    fopAcM_setCullSizeBox(this, cull_min.x, 0.0f, cull_min.z, cull_max.x, cull_max.y, cull_max.z);

    mWindCps.mRadius = mDefaultRadius * scale.x;
    mWindCps.mStart = current.pos;

    setParticle();

    u32 swBit = getSwbit();
    switch (getSwType()) {
    case 15:
        if ((swBit != 0xFF && fopAcM_isSwitch(this, swBit)) || swBit == 0xFF) {
            mColumnOn = true;
        } else {
            mColumnOn = false;
        }
        break;
    case 0:
        if (fopAcM_isSwitch(this, swBit)) {
            mColumnOn = false;
        } else {
            mColumnOn = true;
        }
        break;
    case 1:
        if (swBit != 0xFF && !fopAcM_isSwitch(this, swBit)) {
            mColumnOn = false;
            mTimer = getOffTime() * 30;
        } else if (cM_rndF(1.0f) > 0.5f) {
            mColumnOn = true;
            mTimer = getOnTime() * 30;
        } else {
            mColumnOn = false;
            mTimer = getOffTime() * 30;
        }
        break;
    case 2:
        mColumnOn = true;
        mTimer = getOnTime() * 30;
        break;
    case 3:
        mColumnOn = false;
        mTimer = getOffTime() * 30;
        break;
    }

    if (mColumnOn == true) {
        mTargetLength = mDefaultLength * scale.y;
        mNowLength = mTargetLength;
        startParticle();
    } else {
        mTargetLength = 0;
        mNowLength = 0;
    }

    setPntWind();
    return 1;
}

/* 80D1CC80-80D1CD78 000820 00F8+00 1/1 0/0 0/0 .text            create__12daObjTrnd2_cFv */
int daObjTrnd2_c::create() {
    fopAcM_SetupActor(this, daObjTrnd2_c);
    if (!Create()) {
        return cPhs_ERROR_e;
    }

    return cPhs_COMPLEATE_e;
}

/* 80D1CDC0-80D1D0AC 000960 02EC+00 1/1 0/0 0/0 .text            execute__12daObjTrnd2_cFv */
int daObjTrnd2_c::execute() {
    bool set_column;
    u32 swBit;
    if (mColumnOn == true) {
        set_column = false;
        swBit = getSwbit();
        switch (getSwType()) {
        case 15:
            if (swBit != 0xFF && !fopAcM_isSwitch(this, swBit)) {
                set_column = true;
            }
            break;
        case 0:
            if (fopAcM_isSwitch(this, swBit)) {
                set_column = true;
            }
            break;
        case 1:
        case 2:
        case 3:
            if (cLib_calcTimer(&mTimer) == 0 || (swBit != 0xFF && !fopAcM_isSwitch(this, swBit))) {
                set_column = true;
                mTimer = getOffTime() * 30;
            }
            break;
        }

        if (set_column) {
            mTargetLength = 0.0f;
            mColumnOn = false;
            stopParticle();
        }
    } else if (mColumnOn == false) {
        set_column = false;
        swBit = getSwbit();
        switch (getSwType()) {
        case 15:
            if (fopAcM_isSwitch(this, swBit)) {
                set_column = true;
            }
            break;
        case 0:
            if (swBit != 0xFF && !fopAcM_isSwitch(this, swBit)) {
                set_column = true;
            }
            break;
        case 1:
        case 2:
        case 3:
            if (cLib_calcTimer(&mTimer) == 0 &&
                ((swBit != 0xFF && fopAcM_isSwitch(this, swBit)) || swBit == 0xFF))
            {
                set_column = true;
                mTimer = getOnTime() * 30;
            }
            break;
        }

        if (set_column) {
            mTargetLength = mDefaultLength * scale.y;
            mColumnOn = true;
            startParticle();
        }
    }

    if (mTargetLength == 0.0f) {
        cLib_addCalc(&mWindPower, 0.3f, 0.2f, 0.1f, 0.001f);
    } else {
        cLib_addCalc(&mWindPower, 0.9f, 0.5f, 0.1f, 0.001f);
    }

    dKyw_evt_wind_set(0, home.angle.y);
    dKyw_custom_windpower(mWindPower);
    setCpsInfo();
    setBaseMtx();

    if (mNowLength != 0.0f) {
        mCps.cM3dGCps::Set(mWindCps);
        dComIfG_Ccsp()->Set(&mCps);
    }

    return 1;
}

/* 80D1D0AC-80D1D214 000C4C 0168+00 1/1 0/0 0/0 .text            setParticle__12daObjTrnd2_cFv */
void daObjTrnd2_c::setParticle() {
    const u16* efflist_p = NULL;
    switch (fopAcM_GetRoomNo(this)) {
    case 2:
        efflist_p = l_R02_eff_id;
        break;
    case 4:
        efflist_p = l_R04_eff_id;
        break;
    case 5:
        efflist_p = l_R05_eff_id;
        break;
    case 7:
    case 8:
        efflist_p = l_R07_eff_id;
        break;
    case 14:
        efflist_p = l_R14_eff_id;
        break;
    case 51:
        efflist_p = l_R51_eff_id;
        break;
    case 0:
    case 3:
    case 6:
    case 13:
        return;
    default:
        break;
    }

    for (int i = 0; i < 3; efflist_p++, i++) {
        if (*efflist_p != 0xffff) {
            mParticles[i] = dComIfGp_particle_set(*efflist_p, &current.pos, &home.angle, NULL, 0xFF,
                                                  NULL, -1, NULL, NULL, NULL);
        } else {
            mParticles[i] = NULL;
        }
    }

    stopParticle();
}

/* 80D1D214-80D1D278 000DB4 0064+00 1/1 0/0 0/0 .text            endParticle__12daObjTrnd2_cFv */
void daObjTrnd2_c::endParticle() {
    for (int i = 0; i < 3; i++) {
        if (mParticles[i] != NULL) {
            mParticles[i]->stopCreateParticle();
            mParticles[i]->quitImmortalEmitter();
            mParticles[i]->becomeInvalidEmitter();
            mParticles[i] = NULL;
        }
    }
}

/* 80D1D278-80D1D2AC 000E18 0034+00 2/2 0/0 0/0 .text            startParticle__12daObjTrnd2_cFv */
void daObjTrnd2_c::startParticle() {
    for (int i = 0; i < 3; i++) {
        if (mParticles[i] != NULL) {
            mParticles[i]->playCreateParticle();
        }
    }
}

/* 80D1D2AC-80D1D2E0 000E4C 0034+00 2/2 0/0 0/0 .text            stopParticle__12daObjTrnd2_cFv */
void daObjTrnd2_c::stopParticle() {
    for (int i = 0; i < 3; i++) {
        if (mParticles[i] != NULL) {
            mParticles[i]->stopCreateParticle();
        }
    }
}

/* 80D1D2E0-80D1D2E8 000E80 0008+00 1/1 0/0 0/0 .text            draw__12daObjTrnd2_cFv */
int daObjTrnd2_c::draw() {
    return 1;
}

/* 80D1D2E8-80D1D330 000E88 0048+00 1/1 0/0 0/0 .text            _delete__12daObjTrnd2_cFv */
int daObjTrnd2_c::_delete() {
    dKy_getEnvlight()->evt_wind_go = 0;
    cutPntWind();
    endParticle();
    return 1;
}

/* 80D1D330-80D1D350 000ED0 0020+00 1/0 0/0 0/0 .text            daObjTrnd2_Draw__FP12daObjTrnd2_c
 */
static int daObjTrnd2_Draw(daObjTrnd2_c* i_this) {
    return i_this->draw();
}

/* 80D1D350-80D1D370 000EF0 0020+00 1/0 0/0 0/0 .text daObjTrnd2_Execute__FP12daObjTrnd2_c */
static int daObjTrnd2_Execute(daObjTrnd2_c* i_this) {
    return i_this->execute();
}

/* 80D1D370-80D1D390 000F10 0020+00 1/0 0/0 0/0 .text            daObjTrnd2_Delete__FP12daObjTrnd2_c
 */
static int daObjTrnd2_Delete(daObjTrnd2_c* i_this) {
    return i_this->_delete();
}

/* 80D1D390-80D1D3B0 000F30 0020+00 1/0 0/0 0/0 .text            daObjTrnd2_Create__FP12daObjTrnd2_c
 */
static int daObjTrnd2_Create(daObjTrnd2_c* i_this) {
    return i_this->create();
}

/* 80D1D4A4-80D1D4C4 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjTrnd2_Method */
static actor_method_class l_daObjTrnd2_Method = {
    (process_method_func)daObjTrnd2_Create,  (process_method_func)daObjTrnd2_Delete,
    (process_method_func)daObjTrnd2_Execute, (process_method_func)NULL,
    (process_method_func)daObjTrnd2_Draw,
};

extern actor_process_profile_definition g_profile_Obj_Tornado2 = {
    fpcLy_CURRENT_e,         // mLayerID
    7,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_Tornado2,       // mProcName
    &g_fpcLf_Method.base,   // sub_method
    sizeof(daObjTrnd2_c),    // mDefaultRadius
    0,                       // mDefaultRadiusOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    0x1BD,                   // mPriority
    &l_daObjTrnd2_Method,    // sub_method
    0x40000,                 // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
