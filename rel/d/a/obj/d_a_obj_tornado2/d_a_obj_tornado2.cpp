//
// Tornado 2
//

#include "rel/d/a/obj/d_a_obj_tornado2/d_a_obj_tornado2.h"
#include "d/com/d_com_inf_game.h"
#include "d/kankyo/d_kankyo_rain.h"
#include "SSystem/SComponent/c_math.h"

/* 80D1D3D4-80D1D3DC 000000 0006+02 6/6 0/0 0/0 .rodata          l_R02_eff_id */
static u16 const l_R02_eff_id[3] = {
    0x8B5E,
    0x8B5F,
    0xFFFF,
};

/* 80D1D3DC-80D1D3E4 000008 0006+02 0/1 0/0 0/0 .rodata          l_R04_eff_id */
static u16 const l_R04_eff_id[3] = {
    0x8B60,
    0x8B61,
    0xFFFF,
};

/* 80D1D3E4-80D1D3EC 000010 0006+02 0/1 0/0 0/0 .rodata          l_R05_eff_id */
static u16 const l_R05_eff_id[3] = {
    0x8B6B,
    0x8B6C,
    0xFFFF,
};

/* 80D1D3EC-80D1D3F4 000018 0006+02 0/1 0/0 0/0 .rodata          l_R07_eff_id */
static u16 const l_R07_eff_id[3] = {
    0x8B6D,
    0x8B6E,
    0xFFFF,
};

/* 80D1D3F4-80D1D3FC 000020 0006+02 0/1 0/0 0/0 .rodata          l_R14_eff_id */
static u16 const l_R14_eff_id[3] = {
    0x8B66,
    0x8B67,
    0x8B68,
};

/* 80D1D3FC-80D1D404 000028 0006+02 0/1 0/0 0/0 .rodata          l_R51_eff_id */
static u16 const l_R51_eff_id[3] = {
    0x8B69,
    0x8B6A,
    0xFFFF,
};

/* 80D1C4D8-80D1C54C 000078 0074+00 1/1 0/0 0/0 .text            setPntWind__12daObjTrnd2_cFv */
void daObjTrnd2_c::setPntWind() {
    mWindInfluence.position = current.pos;
    mWindInfluence.mDirection.x = 0.0f;
    mWindInfluence.mDirection.y = 1.0f;
    mWindInfluence.mDirection.z = 0.0f;
    mWindInfluence.mRadius = field_0x768 * scale.x;
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
    cXyz local_20;
    cXyz local_2c;
    cXyz cStack_38;
    local_20.x = field_0x6e8.mStart.x;
    local_20.y = field_0x6e8.mStart.y;
    local_20.z = field_0x6e8.mStart.z;
    local_2c.x = field_0x6e8.mEnd.x;
    local_2c.y = field_0x6e8.mEnd.y;
    local_2c.z = field_0x6e8.mEnd.z;
    dKyr_get_vectle_calc(&local_20, &local_2c, &cStack_38);
    mWindInfluence.mDirection = cStack_38;
    mWindInfluence.mRadius = field_0x6e8.mRadius * 2.0f;
    mWindInfluence.field_0x20 = 0.0f;
    cLib_addCalc(&mWindInfluence.position.x, field_0x6e8.mEnd.x, 0.1f, mWindInfluence.mRadius,
                 mWindInfluence.mRadius * 0.5f);
    cLib_addCalc(&mWindInfluence.position.y, field_0x6e8.mEnd.y, 0.1f, mWindInfluence.mRadius,
                 mWindInfluence.mRadius * 0.5f);
    cLib_addCalc(&mWindInfluence.position.z, field_0x6e8.mEnd.z, 0.1f, mWindInfluence.mRadius,
                 mWindInfluence.mRadius * 0.5f);
    if (mWindInfluence.position.abs(field_0x6e8.mEnd) < mWindInfluence.mRadius) {
        mWindInfluence.position = field_0x6e8.mStart;
    }
}

/* 80D1C780-80D1C924 000320 01A4+00 1/1 0/0 0/0 .text            setCpsInfo__12daObjTrnd2_cFv */
void daObjTrnd2_c::setCpsInfo() {
    cLib_chaseF(&field_0x704, field_0x738, field_0x76c * scale.y * 0.05f);
    field_0x6e8.mEnd.x = 0;
    field_0x6e8.mEnd.y = field_0x704;
    field_0x6e8.mEnd.z = 0;
    mDoMtx_stack_c::transS(field_0x6e8.mStart);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::multVec(&field_0x6e8.mEnd, &field_0x6e8.mEnd);
    mCps.cM3dGCps::Set(field_0x6e8);
    f32 dVar6 = 10.0f;
    if (getPower() != 0xff) {
        dVar6 = getPower();
    }
    cXyz local_20;
    cXyz cStack_40;
    local_20.x = field_0x6e8.mEnd.x - field_0x6e8.mStart.x;
    local_20.y = field_0x6e8.mEnd.y - field_0x6e8.mStart.y;
    local_20.z = field_0x6e8.mEnd.z - field_0x6e8.mStart.z;
    if (!local_20.isZero()) {
        local_20.normalize();
    } else {
        local_20 = cXyz::Zero;
    }
    cStack_40 = local_20;
    local_20 *= dVar6;
    mCps.SetAtVec(local_20);
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
    MTXCopy(mDoMtx_stack_c::get(), field_0x708);
}

/* 80D1D458-80D1D4A4 000000 004C+00 1/1 0/0 0/0 .data            l_cps_src */
static dCcD_SrcCps l_cps_src = {
    {
        {0x0, {{AT_TYPE_LANTERN_SWING, 0x0, 0x1d}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x3, 0x2}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, {0.0f, 3000.0f, 0.0f}, 150.0f}, // mCps
    } // mCpsAttr
};

/* 80D1C98C-80D1CC80 00052C 02F4+00 1/1 0/0 0/0 .text            Create__12daObjTrnd2_cFv */
int daObjTrnd2_c::Create() {
    field_0x768 = 150.0f;
    field_0x76c = 1000.0f;
    if (getScale() == 1) {
        field_0x768 *= 10.0f;
        field_0x76c *= 10.0f;
    }
    initBaseMtx();
    fopAcM_SetMtx(this, field_0x708);
    mStts.Init(0xff, 0xff, this);
    mCps.Set(l_cps_src);
    mCps.SetStts(&mStts);
    cXyz local_1c;
    cXyz local_28;
    local_1c.x = -field_0x768 * scale.x;
    local_1c.y = 0.0;
    local_1c.z = -field_0x768 * scale.x;
    local_28.x = field_0x768 * scale.x;
    local_28.y = field_0x76c * scale.y;
    local_28.z = field_0x768 * scale.x;
    fopAcM_setCullSizeBox(this, local_1c.x, 0, local_1c.z,
                                          local_28.x, local_28.y,
                                          local_28.z);
    field_0x6e8.mRadius = field_0x768 * scale.x;
    field_0x6e8.mStart = current.pos;
    setParticle();
    u32 swBit = getSwbit();
    switch(getSwType()) {
    case 15:
        if ((swBit != 0xff && fopAcM_isSwitch(this, swBit)) || swBit == 0xff) {
            field_0x778 = true;
        } else {
            field_0x778 = false;
        }
        break;
    case 0:
        if (fopAcM_isSwitch(this, swBit)) {
            field_0x778 = false;
        } else {
            field_0x778 = true;
        }
        break;
    case 1:
        if (swBit != 0xff && !fopAcM_isSwitch(this, swBit)) {
            field_0x778 = false;
            mTimer = getOffTime() * 30;
        } else if (cM_rndF(1.0f) > 0.5f) {
            field_0x778 = true;
            mTimer = getOnTime() * 30;
        } else {
            field_0x778 = false;
            mTimer = getOffTime() * 30;
        }
        break;
    case 2:
        field_0x778 = true;
        mTimer = getOnTime() * 30;
        break;
    case 3:
        field_0x778 = false;
        mTimer = getOffTime() * 30;
        break;
    }

    if (field_0x778 == true) {
        field_0x738 = field_0x76c * scale.y;
        field_0x704 = field_0x738;
        startParticle();
    } else {
        field_0x738 = 0;
        field_0x704 = 0;
    }
    setPntWind();
    return 1;
}

/* 80D1CC80-80D1CD78 000820 00F8+00 1/1 0/0 0/0 .text            create__12daObjTrnd2_cFv */
int daObjTrnd2_c::create() {
    fopAcM_SetupActor(this, daObjTrnd2_c);
    if (Create() == 0) {
        return cPhs_ERROR_e;
    }
    return cPhs_COMPLEATE_e;
}

/* 80D1CDC0-80D1D0AC 000960 02EC+00 1/1 0/0 0/0 .text            execute__12daObjTrnd2_cFv */
int daObjTrnd2_c::execute() {
    bool bVar1;
    u32 swBit;
    if (field_0x778 == true) {
        bVar1 = false;
        swBit = getSwbit();
        switch (getSwType()) {
        case 15:
            if (swBit != 0xff && !fopAcM_isSwitch(this, swBit)) {
                bVar1 = true;
            }
            break;
        case 0:
            if (fopAcM_isSwitch(this, swBit)) {
                bVar1 = true;
            }
            break;
        case 1:
        case 2:
        case 3:
            if (cLib_calcTimer(&mTimer) == 0 || (swBit != 0xff && !fopAcM_isSwitch(this, swBit))) {
                bVar1 = true;
                mTimer = getOffTime() * 30;
            }
            break;
        }
       
        if (bVar1) {
            field_0x738 = 0.0f;
            field_0x778 = false;
            stopParticle();
        }
    } else if (field_0x778 == false) {
        bVar1 = false;
        swBit = getSwbit();
        switch(getSwType()) {
        case 15:
            if (fopAcM_isSwitch(this, swBit)) {
                bVar1 = true;
            }
            break;
        case 0:
            if (swBit != 0xff && !fopAcM_isSwitch(this, swBit)) {
                bVar1 = true;
            }
            break;
        case 1:
        case 2:
        case 3:
            if (cLib_calcTimer(&mTimer) == 0 && ((swBit != 0xff && fopAcM_isSwitch(this, swBit)) || swBit == 0xff)) {
                bVar1 = true;
                mTimer = getOnTime() * 30;
            }
            break;
        }
        if (bVar1) {
            field_0x738 = field_0x76c * scale.y;
            field_0x778 = true;
            startParticle();
        }
    }
    if (field_0x738 == 0.0f) {
        cLib_addCalc(&mWindPower, 0.3f, 0.2f, 0.1f, 0.001f);
    } else {
        cLib_addCalc(&mWindPower, 0.9f, 0.5f, 0.1f, 0.001f);
    }
    dKyw_evt_wind_set(0, home.angle.y);
    dKyw_custom_windpower(mWindPower);
    setCpsInfo();
    setBaseMtx();
    if (field_0x704 != 0.0f) {
        mCps.cM3dGCps::Set(field_0x6e8);
        dComIfG_Ccsp()->Set(&mCps);
    }
    return 1;
}

/* 80D1D0AC-80D1D214 000C4C 0168+00 1/1 0/0 0/0 .text            setParticle__12daObjTrnd2_cFv */
void daObjTrnd2_c::setParticle() {
    const u16* pEffId = NULL;
    switch (fopAcM_GetRoomNo(this)) {
    case 2:
        pEffId = l_R02_eff_id;
        break;
    case 4:
        pEffId = l_R04_eff_id;
        break;
    case 5:
        pEffId = l_R05_eff_id;
        break;
    case 7:
    case 8:
        pEffId = l_R07_eff_id;
        break;
    case 14:
        pEffId = l_R14_eff_id;
        break;
    case 51:
        pEffId = l_R51_eff_id;
        break;
    case 0:
    case 3:
    case 6:
    case 13:
        return;
    default:
        break;
    }

    for (int i = 0; i < 3; pEffId++, i++) {
        if (*pEffId != 0xffff) {
            mParticles[i] = dComIfGp_particle_set(*pEffId, &current.pos, &home.angle, NULL,
                                                  0xff, NULL, -1, NULL, NULL, NULL);
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
    dKy_getEnvlight()->mEvtWindSet = 0;
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
    (process_method_func)daObjTrnd2_Create,
    (process_method_func)daObjTrnd2_Delete,
    (process_method_func)daObjTrnd2_Execute,
    (process_method_func)NULL,
    (process_method_func)daObjTrnd2_Draw,
};

extern actor_process_profile_definition g_profile_Obj_Tornado2 = {
    fpcLy_CURRENT_e,        // mLayerID
    7,                      // mListID
    fpcPi_CURRENT_e,        // mListPrio
    PROC_Obj_Tornado2,      // mProcName
    &g_fpcLf_Method.mBase,  // sub_method
    sizeof(daObjTrnd2_c),   // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // sub_method
    0x1BD,                  // mPriority
    &l_daObjTrnd2_Method,   // sub_method
    0x40000,                // mStatus
    fopAc_ACTOR_e,          // mActorType
    fopAc_CULLBOX_CUSTOM_e, // cullType
};
