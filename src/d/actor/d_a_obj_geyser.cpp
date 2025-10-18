/**
 * @file d_a_obj_geyser.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_geyser.h"
#include "d/actor/d_a_player.h"
#include "d/d_kankyo_rain.h"

/* 80BF6F18-80BF6F38 000078 0020+00 1/1 0/0 0/0 .text            initBaseMtx__13daObjGeyser_cFv */
void daObjGeyser_c::initBaseMtx() {
    setBaseMtx();
}

/* 80BF6F38-80BF6F80 000098 0048+00 1/1 0/0 0/0 .text            setBaseMtx__13daObjGeyser_cFv */
void daObjGeyser_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    MTXCopy(mDoMtx_stack_c::get(), mMtx);
}

/* 80BF9088-80BF908C -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "H_knktsn";

/* 80BF908C-80BF90A4 000024 0018+00 1/1 0/0 0/0 .data            l_cull_box */
static cull_box l_cull_box = {
    {-100.0f, -10.0f, -100.0f},
    {100.0f, 550.0f, 100.0f},
};

/* 80BF90A4-80BF90F0 00003C 004C+00 1/1 0/0 0/0 .data            l_cps_src */
static dCcD_SrcCps l_cps_src = {
    {
        {0x0, {{0x100, 0x0, 0x1d}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x1, 0x0, 0x2}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, {0.0f, 500.0f, 0.0f}, 100.0f}, // mCps
    } // mCpsAttr
};

/* 80BF6F80-80BF70E0 0000E0 0160+00 1/0 0/0 0/0 .text            Create__13daObjGeyser_cFv */
int daObjGeyser_c::Create() {
    if (getType() == 1) {
        shape_angle.x = 0x4000;
        home.angle.x = 0x4000;
        current.angle.x = 0x4000;
    }

    initBaseMtx();
    fopAcM_SetMtx(this, mMtx);

    mCcStts.Init(0, 255, this);
    mCcCps.Set(l_cps_src);
    mCcCps.SetStts(&mCcStts);

    cull_box cullbox;
    cullbox.min.x = l_cull_box.min.x * scale.x;
    cullbox.min.y = l_cull_box.min.y * scale.y;
    cullbox.min.z = l_cull_box.min.z * scale.x;
    cullbox.max.x = l_cull_box.max.x * scale.x;
    cullbox.max.y = l_cull_box.max.y * scale.y;
    cullbox.max.z = l_cull_box.max.z * scale.x;
    fopAcM_setCullSizeBox(this,
                          cullbox.min.x, cullbox.min.y, cullbox.min.z,
                          cullbox.max.x, cullbox.max.y, cullbox.max.y);

    switch (getArg0()) {
    case 0xFF:
    case 0:
        actionOffInit();
        break;
    case 1:
        actionOff2Init();
        break;
    default:
        JUT_ASSERT(309, FALSE);
        break;
    }

    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::scaleM(scale.x, scale.y, scale.x);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());

    if (mpBgW != NULL) {
        mpBgW->Move();
        mpBgW->SetLock();
    }

    return 1;
}

/* 80BF70E0-80BF7174 000240 0094+00 1/0 0/0 0/0 .text            CreateHeap__13daObjGeyser_cFv */
int daObjGeyser_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 4);
    JUT_ASSERT(345, modelData != NULL);

    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    mDoExt_setupStageTexture(modelData);
    return 1;
}

/* 80BF8FE8-80BF8FF0 000000 0008+00 8/8 0/0 0/0 .rodata          l_dzb */
static const int l_dzb[] = {7, 8};

/* 80BF7174-80BF7288 0002D4 0114+00 1/1 0/0 0/0 .text            create1st__13daObjGeyser_cFv */
int daObjGeyser_c::create1st() {
    int phase_state = dComIfG_resLoad(&mPhase, l_arcName);
    if (phase_state != cPhs_COMPLEATE_e) {
        return phase_state;
    }

    phase_state = MoveBGCreate(l_arcName, l_dzb[getType()], dBgS_MoveBGProc_TypicalRotY, 0x1540, NULL);
    if (phase_state == cPhs_ERROR_e) {
        return phase_state;
    }

    if (!mIsPrmInit) {
        field_0x766 = home.angle.x;
        field_0x768 = home.angle.z;
        home.angle.z = 0;
        home.angle.x = 0;
        current.angle = home.angle;
        shape_angle = home.angle;
        mIsPrmInit = TRUE;
    }

    if (!Create()) {
        return cPhs_ERROR_e;
    }

    return cPhs_COMPLEATE_e;
}

/* 80BF8FF0-80BF9008 000008 0018+00 0/1 0/0 0/0 .rodata          l_scale */
static const Vec l_scale[] = {
    {0.7f, 1.0f, 1.0f},
    {0.3f, 0.8f, 1.0f},
};

/* 80BF7288-80BF744C 0003E8 01C4+00 1/0 0/0 0/0 .text            Execute__13daObjGeyser_cFPPA3_A4_f
 */
int daObjGeyser_c::Execute(Mtx** param_0) {
    if (dComIfGp_event_runCheck() == 0) {
        f32 range = 5000.0f;
        if (fopAcM_searchPlayerDistance(this) > range) {
            stopEmitterPre00();
            stopEmitterSrc00Sand();
            stopEmitterSrc01Smk();
            stopEmitterClm00();
            stopEmitterSmk01();
            stopEmitterSmk02();
            return 1;
        }
    }

    action();

    if (mAction == 2 || mAction == 2) {
        cXyz geyser_size;
        geyser_size = l_scale[getType()];

        cXyz length(0.0f, 1.0f, 0.0f);
        length.y *= 500.0f * (field_0x730 * geyser_size.y);

        mDoMtx_stack_c::ZXYrotS(current.angle);
        mDoMtx_stack_c::multVec(&length, &length);

        mCpsSrc.mStart = current.pos;
        mCpsSrc.mEnd = length + current.pos;
        mCpsSrc.mRadius = 100.0f * geyser_size.x;

        if (!daPy_getPlayerActorClass()->checkEquipHeavyBoots()) {
            mCcCps.cM3dGCps::Set(mCpsSrc);
            dComIfG_Ccsp()->Set(&mCcCps);
        }
    
        movePntWind();
    }

    *param_0 = &mBgMtx;
    return 1;
}

/* 80BF744C-80BF75B8 0005AC 016C+00 1/1 0/0 0/0 .text            action__13daObjGeyser_cFv */
void daObjGeyser_c::action() {
    static void (daObjGeyser_c::*l_func[])() = {
        &daObjGeyser_c::actionOff,
        &daObjGeyser_c::actionOnWait,
        &daObjGeyser_c::actionOn,
    };

    static void (daObjGeyser_c::*l_func2[])() = {
        &daObjGeyser_c::actionOff2,
        &daObjGeyser_c::actionOnWait2,
        &daObjGeyser_c::actionOn2,
        &daObjGeyser_c::actionDisappear,
    };

    switch (getArg0()) {
    case 0xFF:
    case 0:
        (this->*l_func[mAction])();
        break;
    case 1:
        (this->*l_func2[mAction])();
        break;
    default:
        JUT_ASSERT(309, FALSE);
        break;
    }
}

/* 80BF75B8-80BF75C4 000718 000C+00 3/3 0/0 0/0 .text            actionOff2Init__13daObjGeyser_cFv
 */
void daObjGeyser_c::actionOff2Init() {
    mAction = 0;
}

/* 80BF75C4-80BF77F0 000724 022C+00 1/0 0/0 0/0 .text            actionOff2__13daObjGeyser_cFv */
void daObjGeyser_c::actionOff2() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    
    if (getType() == 0) {
        f32 range = 1000.0f;
        if (fopAcM_searchPlayerDistance(this) < range) {
            actionOnWait2Init();
        }
    } else {
        f32 temp_f30 = 1200.0f;
        f32 temp_f29 = 1200.0f;
        cXyz start(0.0f, 0.0f, -50.0f);
        cXyz end(0.0f, 0.0f, temp_f30);

        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::YrotM(current.angle.y);
        mDoMtx_stack_c::multVec(&end, &end);
        mDoMtx_stack_c::multVec(&start, &start);

        cM3dGLin line;
        line.SetStartEnd(start, end);
        
        Vec spC;
        f32 sp8;
        bool temp_r3 = cM3d_Len3dSqPntAndSegLine(&line, &player->current.pos, &spC, &sp8);
        if (temp_r3 && std::sqrt(sp8) < temp_f29) {
            actionOnWait2Init();
        }
    }

    cLib_chaseF(&field_0x730, 0.0f, 0.1f * scale.y);
}

/* 80BF7838-80BF787C 000998 0044+00 2/2 0/0 0/0 .text actionOnWait2Init__13daObjGeyser_cFv */
void daObjGeyser_c::actionOnWait2Init() {
    setEmitterPre00();
    setEmitterSrc00Sand();
    setEmitterSrc01Smk();
    mAction = 1;
}

/* 80BF787C-80BF7C54 0009DC 03D8+00 1/0 0/0 0/0 .text            actionOnWait2__13daObjGeyser_cFv */
void daObjGeyser_c::actionOnWait2() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    if (getType() == 0) {
        f32 on_range = 500.0f;
        f32 off_range = 1000.0f;

        f32 pl_dist = fopAcM_searchPlayerDistance(this);
        if (pl_dist < on_range) {
            stopEmitterPre00();
            actionOn2Init();
        } else if (pl_dist > off_range) {
            stopEmitterPre00();
            stopEmitterSrc00Sand();
            stopEmitterSrc01Smk();
            actionOff2Init();
        }
    } else {
        f32 temp_f28 = 1200.0f;
        f32 temp_f27 = 600.0f;
        f32 temp_f26 = 1200.0f;
        cXyz start(0.0f, 0.0f, -50.0f);
        cXyz end(0.0f, 0.0f, temp_f28);

        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::YrotM(current.angle.y);
        mDoMtx_stack_c::multVec(&end, &end);
        mDoMtx_stack_c::multVec(&start, &start);

        cM3dGLin line;
        line.SetStartEnd(start, end);

        Vec spC;
        f32 sp8;
        bool temp_r28 = cM3d_Len3dSqPntAndSegLine(&line, &player->current.pos, &spC, &sp8);
        if (temp_r28 && std::sqrt(sp8) < temp_f27) {
            stopEmitterPre00();
            actionOn2Init();
        } else if (!temp_r28 || std::sqrt(sp8) > temp_f26) {
            stopEmitterPre00();
            stopEmitterSrc00Sand();
            stopEmitterSrc01Smk();
            actionOff2Init();
        }
    }

    cLib_chaseF(&field_0x730, 0.0f, 0.1f * scale.y);
    fopAcM_seStartLevel(this, Z2SE_OBJ_GEYSER_LOW, 0);
}

/* 80BF7C54-80BF7CA0 000DB4 004C+00 1/1 0/0 0/0 .text            actionOn2Init__13daObjGeyser_cFv */
void daObjGeyser_c::actionOn2Init() {
    setEmitterClm00();
    setEmitterSmk01();
    setEmitterSmk02();
    setPntWind();
    mAction = 2;
}

/* 80BF7CA0-80BF8158 000E00 04B8+00 1/0 0/0 0/0 .text            actionOn2__13daObjGeyser_cFv */
void daObjGeyser_c::actionOn2() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    if (getType() == 0) {
        f32 temp_f30 = 500.0f;
        f32 temp_f29 = 1000.0f;

        f32 pl_dist = fopAcM_searchPlayerDistance(this);
        if (pl_dist > temp_f29) {
            cutPntWind();
            actionDisappearInit(0);
        } else if (pl_dist > temp_f30) {
            cutPntWind();
            actionDisappearInit(1);
        }
    } else {
        f32 temp_f27 = 1200.0f;
        f32 temp_f26 = 600.0f;
        f32 temp_f31 = 1200.0f;
        cXyz start(0.0f, 0.0f, -50.0f);
        cXyz end(0.0f, 0.0f, temp_f27);

        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::YrotM(current.angle.y);
        mDoMtx_stack_c::multVec(&end, &end);
        mDoMtx_stack_c::multVec(&start, &start);

        cM3dGLin line;
        line.SetStartEnd(start, end);

        Vec spC;
        f32 sp8;
        bool temp_r28 = cM3d_Len3dSqPntAndSegLine(&line, &player->current.pos, &spC, &sp8);
        if (!temp_r28 || std::sqrt(sp8) > temp_f31) {
            cutPntWind();
            actionDisappearInit(0);
        } else if (temp_r28 && std::sqrt(sp8) < temp_f31 && std::sqrt(sp8) > temp_f26) {
            cutPntWind();
            actionDisappearInit(1);
        }
    }

    cLib_chaseF(&field_0x730, scale.y, 0.05f * scale.y);
    fopAcM_seStartLevel(this, Z2SE_OBJ_GEYSER_HIGH, 0);
}

/* 80BF8158-80BF8178 0012B8 0020+00 1/1 0/0 0/0 .text actionDisappearInit__13daObjGeyser_cFUc */
void daObjGeyser_c::actionDisappearInit(u8 param_0) {
    field_0x784 = 0xFF;
    field_0x760 = 10;
    field_0x763 = param_0;
    mAction = 3;
}

/* 80BF8178-80BF823C 0012D8 00C4+00 1/0 0/0 0/0 .text            actionDisappear__13daObjGeyser_cFv
 */
void daObjGeyser_c::actionDisappear() {
    if (field_0x760 == 0) {
        stopEmitterClm00();

        if (field_0x763 != 1) {
            actionOff2Init();
        } else {
            actionOnWait2Init();
        }
    } else {
        if (field_0x760 == 5) {
            field_0x784 = 0;
            stopEmitterSmk01();
            stopEmitterSmk02();

            if (field_0x763 != 1) {
                stopEmitterSrc00Sand();
                stopEmitterSrc01Smk();
            }
        }
        field_0x760--;
    }

    cLib_chaseUC(&field_0x785, field_0x784, 51);
    if (mpEmitterClm00 != NULL) {
        mpEmitterClm00->setGlobalAlpha(field_0x785);
    }
}

/* 80BF823C-80BF8268 00139C 002C+00 2/2 0/0 0/0 .text            actionOffInit__13daObjGeyser_cFv */
void daObjGeyser_c::actionOffInit() {
    u8 var_r31 = getArg1();
    if (var_r31 == 0xFF) {
        var_r31 = 10;
    }

    field_0x760 = var_r31 * 15;
    mAction = 0;
}

/* 80BF8268-80BF82D0 0013C8 0068+00 1/0 0/0 0/0 .text            actionOff__13daObjGeyser_cFv */
void daObjGeyser_c::actionOff() {
    cLib_chaseF(&field_0x730, 0.0f, 0.1f * scale.y);

    if (field_0x760 == 0) {
        actionOnWaitInit();
        return;
    }

    if (getSwNo() != 0xFF) {
        if (fopAcM_isSwitch(this, getSwNo())) {
            field_0x760--;
        }
    } else {
        field_0x760--;
    }
}

/* 80BF82D0-80BF8344 001430 0074+00 1/1 0/0 0/0 .text            actionOnWaitInit__13daObjGeyser_cFv
 */
void daObjGeyser_c::actionOnWaitInit() {
    u8 var_r30 = getArg2();
    if (var_r30 == 0xFF) {
        var_r30 = 4;
    }

    setEmitterPre00();
    setEmitterSrc00Sand();
    setEmitterSrc01Smk();
    field_0x760 = var_r30 * 15;
    mAction = 1;
}

/* 80BF8344-80BF83E4 0014A4 00A0+00 1/0 0/0 0/0 .text            actionOnWait__13daObjGeyser_cFv */
void daObjGeyser_c::actionOnWait() {
    if (field_0x760 == 0) {
        stopEmitterPre00();
        actionOnInit();
    } else if (getSwNo() != 0xFF) {
        if (fopAcM_isSwitch(this,  getSwNo())) {
            field_0x760--;
        } else {
            stopEmitterPre00();
            stopEmitterSrc00Sand();
            stopEmitterSrc01Smk();
            actionOffInit();
        }
    } else {
        field_0x760--;
    }

    fopAcM_seStartLevel(this, Z2SE_OBJ_GEYSER_LOW, 0);
}

/* 80BF83E4-80BF846C 001544 0088+00 1/1 0/0 0/0 .text            actionOnInit__13daObjGeyser_cFv */
void daObjGeyser_c::actionOnInit() {
    u8 var_r30 = getArg3();
    if (var_r30 == 0xFF) {
        var_r30 = 6;
    }

    field_0x785 = 0xFF;
    field_0x784 = 0xFF;

    setEmitterClm00();
    setEmitterSmk01();
    setEmitterSmk02();
    setPntWind();

    field_0x760 = var_r30 * 15;
    mAction = 2;
}

/* 80BF846C-80BF8584 0015CC 0118+00 1/0 0/0 0/0 .text            actionOn__13daObjGeyser_cFv */
void daObjGeyser_c::actionOn() {
    if (field_0x760 == 0) {
        cutPntWind();
        stopEmitterClm00();
        actionOffInit();
    } else {
        if (field_0x760 == 5) {
            field_0x784 = 0;
            stopEmitterSmk01();
            stopEmitterSmk02();
            stopEmitterSrc00Sand();
            stopEmitterSrc01Smk();
        }

        if (getSwNo() != 0xFF) {
            if (fopAcM_isSwitch(this, getSwNo())) {
                field_0x760--;
            } else {
                field_0x760 = 0;
            }
        } else {
            field_0x760--;
        }
    }

    cLib_chaseUC(&field_0x785, field_0x784, 51);
    if (mpEmitterClm00 != NULL) {
        mpEmitterClm00->setGlobalAlpha(field_0x785);
    }

    cLib_chaseF(&field_0x730, scale.y, 0.05f * scale.y);
    fopAcM_seStartLevel(this, Z2SE_OBJ_GEYSER_HIGH, 0);
}

/* 80BF8584-80BF863C 0016E4 00B8+00 2/2 0/0 0/0 .text            setPntWind__13daObjGeyser_cFv */
void daObjGeyser_c::setPntWind() {
    cXyz direction(0.0f, 1.0f, 0.0f);
    mDoMtx_stack_c::ZXYrotS(current.angle);
    mDoMtx_stack_c::multVec(&direction, &direction);

    mWind.position = current.pos;
    mWind.mDirection.x = direction.x;
    mWind.mDirection.y = direction.y;
    mWind.mDirection.z = direction.z;
    mWind.mRadius = 100.0f;
    mWind.field_0x20 = 0.0f;
    mWind.mStrength = 0.2f;

    dKyw_pntwind_set(&mWind);
}

/* 80BF863C-80BF8660 00179C 0024+00 3/3 0/0 0/0 .text            cutPntWind__13daObjGeyser_cFv */
void daObjGeyser_c::cutPntWind() {
    dKyw_pntwind_cut(&mWind);
}

/* 80BF8660-80BF8870 0017C0 0210+00 1/1 0/0 0/0 .text            movePntWind__13daObjGeyser_cFv */
void daObjGeyser_c::movePntWind() {
    cXyz start;
    cXyz end;
    cXyz direction;

    start = mCpsSrc.mStart;
    end = mCpsSrc.mEnd;
    dKyr_get_vectle_calc(&start, &end, &direction);

    mWind.mDirection = direction;
    mWind.mRadius = 2.0f * mCpsSrc.mRadius;
    mWind.field_0x20 = 0.0f;

    cLib_addCalc(&mWind.position.x, mCpsSrc.mEnd.x, 0.1f, mWind.mRadius, 0.5f * mWind.mRadius);
    cLib_addCalc(&mWind.position.y, mCpsSrc.mEnd.y, 0.1f, mWind.mRadius, 0.5f * mWind.mRadius);
    cLib_addCalc(&mWind.position.z, mCpsSrc.mEnd.z, 0.1f, mWind.mRadius, 0.5f * mWind.mRadius);

    if (mWind.position.abs(mCpsSrc.mEnd) < mWind.mRadius) {
        mWind.position = mCpsSrc.mStart;
    }
}

/* 80BF8870-80BF8914 0019D0 00A4+00 1/0 0/0 0/0 .text            Draw__13daObjGeyser_cFv */
int daObjGeyser_c::Draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();

    return 1;
}

/* 80BF8914-80BF89AC 001A74 0098+00 2/2 0/0 0/0 .text            setEmitterPre00__13daObjGeyser_cFv
 */
void daObjGeyser_c::setEmitterPre00() {
    mParticleScale.set(scale.x, scale.y, scale.z);

    mpEmitterPre00 = dComIfGp_particle_set(dPa_RM(ID_ZF_S_GEYSERPRE00), &current.pos, &current.angle, &mParticleScale, 0xFF, NULL, -1, NULL, NULL, NULL);
    if (mpEmitterPre00 == NULL) {
        // "Geyser: Pre state Effect set failure ID_ZF_S_GEYSERPRE00\n"
        OS_REPORT("\x1B[43;30m間欠泉：予兆状態エフェクトセット失敗 ID_ZF_S_GEYSERPRE00\n\x1B[m");
    }
}

/* 80BF89AC-80BF89B0 001B0C 0004+00 2/2 0/0 0/0 .text setEmitterSrc00Sand__13daObjGeyser_cFv */
void daObjGeyser_c::setEmitterSrc00Sand() {}

/* 80BF89B0-80BF8A54 001B10 00A4+00 2/2 0/0 0/0 .text setEmitterSrc01Smk__13daObjGeyser_cFv */
void daObjGeyser_c::setEmitterSrc01Smk() {
    mParticleScale.set(scale.x, scale.y, scale.z);

    if (mpEmitterSrc01Smk == NULL) {
        mpEmitterSrc01Smk = dComIfGp_particle_set(dPa_RM(ID_ZF_S_GEYSERSRC01SMK), &current.pos, &current.angle, &mParticleScale, 0xFF, NULL, -1, NULL, NULL, NULL);
    }

    if (mpEmitterSrc01Smk == NULL) {
        // "Geyser: Pre state Effect set failure ID_ZF_S_GEYSERSRC01SMK\n"
        OS_REPORT("\x1B[43;30m間欠泉：予兆状態エフェクトセット失敗 ID_ZF_S_GEYSERSRC01SMK\n\x1B[m");
    }
}

/* 80BF8A54-80BF8A80 001BB4 002C+00 4/4 0/0 0/0 .text            stopEmitterPre00__13daObjGeyser_cFv
 */
void daObjGeyser_c::stopEmitterPre00() {
    if (mpEmitterPre00 != NULL) {
        mpEmitterPre00->becomeInvalidEmitter();
        mpEmitterPre00 = NULL;
    }
}

/* 80BF8A80-80BF8AAC 001BE0 002C+00 5/5 0/0 0/0 .text stopEmitterSrc00Sand__13daObjGeyser_cFv */
void daObjGeyser_c::stopEmitterSrc00Sand() {
    if (mpEmitterSrc00Sand != NULL) {
        mpEmitterSrc00Sand->becomeInvalidEmitter();
        mpEmitterSrc00Sand = NULL;
    }
}

/* 80BF8AAC-80BF8AD8 001C0C 002C+00 5/5 0/0 0/0 .text stopEmitterSrc01Smk__13daObjGeyser_cFv */
void daObjGeyser_c::stopEmitterSrc01Smk() {
    if (mpEmitterSrc01Smk != NULL) {
        mpEmitterSrc01Smk->becomeInvalidEmitter();
        mpEmitterSrc01Smk = NULL;
    }
}

/* 80BF8AD8-80BF8B70 001C38 0098+00 2/2 0/0 0/0 .text            setEmitterClm00__13daObjGeyser_cFv
 */
void daObjGeyser_c::setEmitterClm00() {
    mParticleScale.set(scale.x, scale.y, scale.z);

    mpEmitterClm00 = dComIfGp_particle_set(dPa_RM(ID_ZF_S_GEYSER00CLM), &current.pos, &current.angle, &mParticleScale, 0xFF, NULL, -1, NULL, NULL, NULL);
    if (mpEmitterClm00 == NULL) {
        // "Geyser: Effect set failure ID_ZF_S_GEYSER00CLM\n"
        OS_REPORT("\x1B[43;30m間欠泉：エフェクトセット失敗 ID_ZF_S_GEYSER00CLM\n\x1B[m");
    }
}

/* 80BF8B70-80BF8C08 001CD0 0098+00 2/2 0/0 0/0 .text            setEmitterSmk01__13daObjGeyser_cFv
 */
void daObjGeyser_c::setEmitterSmk01() {
    mParticleScale.set(scale.x, scale.y, scale.z);

    mpEmitterSmk01 = dComIfGp_particle_set(dPa_RM(ID_ZF_S_GEYSER01SMK), &current.pos, &current.angle, &mParticleScale, 0xFF, NULL, -1, NULL, NULL, NULL);
    if (mpEmitterSmk01 == NULL) {
        // "Geyser: Effect set failure ID_ZF_S_GEYSER01SMK\n"
        OS_REPORT("\x1B[43;30m間欠泉：エフェクトセット失敗 ID_ZF_S_GEYSER01SMK\n\x1B[m");
    }
}

/* 80BF8C08-80BF8CA0 001D68 0098+00 2/2 0/0 0/0 .text            setEmitterSmk02__13daObjGeyser_cFv
 */
void daObjGeyser_c::setEmitterSmk02() {
    mParticleScale.set(scale.x, scale.y, scale.z);

    mpEmitterSmk02 = dComIfGp_particle_set(dPa_RM(ID_ZF_S_GEYSER02SMK), &current.pos, &current.angle, &mParticleScale, 0xFF, NULL, -1, NULL, NULL, NULL);
    if (mpEmitterSmk02 == NULL) {
        // "Geyser: Effect set failure ID_ZF_S_GEYSER02SMK\n"
        OS_REPORT("\x1B[43;30m間欠泉：エフェクトセット失敗 ID_ZF_S_GEYSER02SMK\n\x1B[m");
    }
}

/* 80BF8CA0-80BF8CCC 001E00 002C+00 4/4 0/0 0/0 .text            stopEmitterClm00__13daObjGeyser_cFv
 */
void daObjGeyser_c::stopEmitterClm00() {
    if (mpEmitterClm00 != NULL) {
        mpEmitterClm00->becomeInvalidEmitter();
        mpEmitterClm00 = NULL;
    }
}

/* 80BF8CCC-80BF8CF8 001E2C 002C+00 4/4 0/0 0/0 .text            stopEmitterSmk01__13daObjGeyser_cFv
 */
void daObjGeyser_c::stopEmitterSmk01() {
    if (mpEmitterSmk01 != NULL) {
        mpEmitterSmk01->becomeInvalidEmitter();
        mpEmitterSmk01 = NULL;
    }
}

/* 80BF8CF8-80BF8D24 001E58 002C+00 4/4 0/0 0/0 .text            stopEmitterSmk02__13daObjGeyser_cFv
 */
void daObjGeyser_c::stopEmitterSmk02() {
    if (mpEmitterSmk02 != NULL) {
        mpEmitterSmk02->becomeInvalidEmitter();
        mpEmitterSmk02 = NULL;
    }
}

/* 80BF8D24-80BF8D98 001E84 0074+00 1/0 0/0 0/0 .text            Delete__13daObjGeyser_cFv */
int daObjGeyser_c::Delete() {
    stopEmitterPre00();
    stopEmitterSrc00Sand();
    stopEmitterSrc01Smk();
    stopEmitterClm00();
    stopEmitterSmk01();
    stopEmitterSmk02();

    cutPntWind();
    dComIfG_resDelete(&mPhase, l_arcName);
    return 1;
}

/* 80BF8D98-80BF8E88 001EF8 00F0+00 1/0 0/0 0/0 .text daObjGeyser_create1st__FP13daObjGeyser_c */
static int daObjGeyser_create1st(daObjGeyser_c* i_this) {
    fopAcM_ct(i_this, daObjGeyser_c);
    return i_this->create1st();
}

/* 80BF8F2C-80BF8F4C 00208C 0020+00 1/0 0/0 0/0 .text daObjGeyser_MoveBGDelete__FP13daObjGeyser_c
 */
static int daObjGeyser_MoveBGDelete(daObjGeyser_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80BF8F4C-80BF8F6C 0020AC 0020+00 1/0 0/0 0/0 .text daObjGeyser_MoveBGExecute__FP13daObjGeyser_c
 */
static int daObjGeyser_MoveBGExecute(daObjGeyser_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80BF8F6C-80BF8F98 0020CC 002C+00 1/0 0/0 0/0 .text daObjGeyser_MoveBGDraw__FP13daObjGeyser_c */
static int daObjGeyser_MoveBGDraw(daObjGeyser_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80BF9198-80BF91B8 -00001 0020+00 1/0 0/0 0/0 .data            daObjGeyser_METHODS */
static actor_method_class daObjGeyser_METHODS = {
    (process_method_func)daObjGeyser_create1st,
    (process_method_func)daObjGeyser_MoveBGDelete,
    (process_method_func)daObjGeyser_MoveBGExecute,
    0,
    (process_method_func)daObjGeyser_MoveBGDraw,
};

/* 80BF91B8-80BF91E8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Geyser */
extern actor_process_profile_definition g_profile_Obj_Geyser = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Geyser,        // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjGeyser_c),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  596,                    // mPriority
  &daObjGeyser_METHODS,   // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
