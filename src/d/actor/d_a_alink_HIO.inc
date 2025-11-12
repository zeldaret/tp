/**
 * d_a_alink_HIO.inc
 * Player HostIO interface handling
 */

#include "d/actor/d_a_alink.h"

#ifdef DEBUG

static void daAlinkHIO_setAnmGenMessage(daAlinkHIO_anm_c* i_anmP, JORMContext* ctx, char* param_3, f32 param_4, int param_5) {
    size_t sVar1;
    char acStack_94[100];
    
    sVar1 = strlen(param_3);
    sprintf(acStack_94,param_3);

    // A Speed
    sprintf(acStack_94 + sVar1, "Ａ速度");
    ctx->genSlider(acStack_94, &i_anmP->mSpeed, 0.0f, 10.0f, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);

    // Starting F
    sprintf(acStack_94 + sVar1,"開始Ｆ");
    ctx->genSlider(acStack_94, &i_anmP->mStartFrame, 0.0f, param_4, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);

    // Ending F
    sprintf(acStack_94 + sVar1,"終了Ｆ");
    ctx->genSlider(acStack_94, &i_anmP->mEndFrame, 0, param_4, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);

    if (param_5 != 0) {
        sprintf(acStack_94 + sVar1,"ＣＦ");
        ctx->genSlider(acStack_94, &i_anmP->mCancelFrame, -1.0f, param_4 + 1.0f, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
    }

    // Interpolation
    sprintf(acStack_94 + sVar1,"補間");
    ctx->genSlider(acStack_94, &i_anmP->mInterpolation, 0.0f, 20.0f, 0, NULL, 0xffff,0xffff,0x200,0x18);
}

static void daAlinkHIO_setReverseAnmGenMessage(daAlinkHIO_anm_c * i_anmP, JORMContext* ctx, char *param_3, f32 param_4, int param_5) {
    size_t sVar1;
    char acStack_94[100];

    sVar1 = strlen(param_3);
    sprintf(acStack_94,param_3);

    // A Speed
    sprintf(acStack_94 + sVar1,"Ａ速度");
    ctx->genSlider(acStack_94, &i_anmP->mSpeed, -10.0f, 0.0f, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);

    // Starting F
    sprintf(acStack_94 + sVar1,"開始Ｆ");
    ctx->genSlider(acStack_94, &i_anmP->mEndFrame, 0, param_4, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);

    // Ending F
    sprintf(acStack_94 + sVar1,"終了Ｆ");
    ctx->genSlider(acStack_94, &i_anmP->mStartFrame, 0.0f, param_4, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
  
    if (param_5 != 0) {
        sprintf(acStack_94 + sVar1,"ＣＦ");
        ctx->genSlider(acStack_94, &i_anmP->mCancelFrame, -1.0f, param_4 + 1.0f, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
    }

    // Interpolation
    sprintf(acStack_94 + sVar1,"補間");
    ctx->genSlider(acStack_94, &i_anmP->mInterpolation, 0.0f, 20.0f, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
}


// NONMATCHING - regalloc + extra mr instruction
void daAlinkHIO_data_c::setStructData(char* param_1) {
    u8* pfVar2;
    u8* pfVar4;

    sprintf(param_1 + strlen(param_1), m_name_string);
    pfVar2 = (u8*)mp_data;

    for (int i = 0; i < m_anm_num; i++) {
        sprintf(param_1 + strlen(param_1), "\t{\n");
        pfVar4 = pfVar2;
        
        for (int i = 0; i < 2; i++) {
            sprintf(param_1 + strlen(param_1), "\t\t%d,\n", *(s16*)pfVar4);
            pfVar4 += 2;
        }

        pfVar4 = pfVar2;

        for (int i = 0; i < 4; i++) {
            sprintf(param_1 + strlen(param_1), "\t\t%ff,\n",*(f32*)pfVar4);
            pfVar4 += 4;
        }

        pfVar2 += 0x14;
        sprintf(param_1 + strlen(param_1), "\t},\n");
    }

    pfVar4 = pfVar2;

    for (int i = 0; i < m_u8_num; i++) {
        sprintf(param_1 + strlen(param_1), "\t%d,\n", *(u8*)pfVar2);
        pfVar2++;
    }

    for (int i = 0; i < m_s16_num; i++) {
        sprintf(param_1 + strlen(param_1), "\t%d,\n", *(s16*)pfVar2);
        pfVar2+=2;
    }

    for (int i = 0; i < m_f32_num; i++) {
        sprintf(param_1 + strlen(param_1), "\t%ff,\n", *(f32*)pfVar2);
        pfVar2 += 4;
    }

    sprintf(param_1 + strlen(param_1), "};\n\n");
}

daAlinkHIO_data_c* l_HIO_before;
daAlinkHIO_data_c* l_HIO_top;

void daAlinkHIO_data_c::checkDataSize() {
    u32 dataSize = (m_u8_num + m_anm_num * 0x14) + (m_s16_num * 2) + (m_f32_num * 4);
    JUT_ASSERT(188, dataSize == m_len);

    if (l_HIO_before != NULL) {
        l_HIO_before->mpNext = this;
    } else {
        l_HIO_top = this;
    }

    mpNext = NULL;
    l_HIO_before = this;
}


void daAlinkHIO_data_c::baseCopy() {
    cLib_memCpy(mp_data,mp_src_data,m_len);
}

// NONMATCHING
void daAlinkHIO_data_c::update() {
    baseCopy();
    JORMContext* ctx = attachJORMContext(8);
    ctx->startUpdateNode(this);
    u8* local_20 = (u8*)mp_data;

    for (int i = 0; i < m_anm_num; i++) {
        ctx->updateSlider(2,(s16*)local_20,0,0,0);

        for (int j = 0; j < 4; local_20 += 4, j++) {
            ctx->updateSlider(2,(f32*)local_20,0.0f,0.0f,0);
        }
    }

    for (int i = 0; i < f14; i++) {
        ctx->updateCheckBox(2, local_20, 1, 0);
    }

    for (int i  = 0; i < f18; i++) {
        ctx->updateComboBox(2, local_20,0);
        // local_20++;
    }

    for (int i = 0; i < (m_u8_num - f14 + f18); i++) {
        // local_20++;
    }

    int iVar1 = f1c;
    int iVar3 = m_s16_num;

    for (int i = 0; i < iVar3 - iVar1; i++) {
        ctx->updateSlider(2,(s16*)local_20,0,0,0);
        // local_20 += 2;
    }

    for (int i = 0; i < f1c; i++) {
        // local_20 += 2;
    }

    for (int i = 0; i < m_f32_num; i++) {
        ctx->updateSlider(2,(f32*)local_20,0.0f,0.0f,0);
        // local_20 += 4;
    }
    
    ctx->endUpdateNode();
    releaseJORMContext(ctx);
}

void daAlinkHIO_data_c::listenPropertyEvent(const JORPropertyEvent* event) {
    JORReflexible::listenPropertyEvent(event);
    
    switch(event->id)
    case 0x4000003:
        update();
}

void daAlinkHIO_basic_c::genMessage(JORMContext* ctx) {
    // Reset
    ctx->genButton("リセット",0x4000003,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Basic Interpolation
    ctx->genSlider("基本補間", &m.mBasicInterpolation, 0.0f, 50.0f, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
    // Rotation A Speed
    ctx->genSlider("旋回Ａ速度", &m.mRotationASpeed, 0.0f,10.0f,0, NULL, 0xffff, 0xffff, 0x200, 0x18);
    // Max horizontal head turn
    ctx->genSlider("首横向き最大", &m.mHeadMaxTurnHorizontal, 0,0x7fff,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Max vertical head turn up
    ctx->genSlider("首上向き最大",&m.mHeadMaxTurnUp, -0x7fff,0,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Max vertical head turn down
    ctx->genSlider("首下向き最大",&m.mHeadMaxTurnDown, 0,0x7fff,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Standing guard interpolation
    ctx->genSlider("立ち防御補間",&m.mStandingGuardInterpolation, 0.0f, 50.0f, 0, NULL, 0xffff,0xffff,0x200,0x18);
    // One hit death
    ctx->genCheckBox("一撃死", (u8*)(&m.mOneHitKill), 1, 0, NULL, 0xffff,0xffff,0x200,0x18);
    // Adult water effect height
    ctx->genSlider("大人水面エフェクト高さ", &m.mWaterSurfaceEffectHeight, 0.0f,100.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Wolf water effect height
    ctx->genSlider("狼水面エフェクト高さ",&m.mWolfWaterSurfaceEffectHeight,0.0f,100.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Max wind influence distance
    ctx->genSlider("風影響最大距離",&m.mMaxWindInfluenceDist,0.0f,1000.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // No wind influence distance
    ctx->genSlider("風影響無し距離", &m.mNoWindInfluenceDist,0.0f,1000.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Max wind speed
    ctx->genSlider("風最大速度",&m.mMaxWindSpeed,0.0f,100.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Lava instant death depth
    ctx->genSlider("溶岩即死深さ", &m.mLavaDeathDepth,0.0f,100.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Link -> Wolf Cancel Frame
    ctx->genSlider("リンク→狼ＣＦ", &m.mLinkToWolfCancelFrame,0.0f,35.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Wolf -> Link Cancel Frame
    ctx->genSlider("狼→リンクＣＦ", &m.mWolfToLinkCancelFrame,0.0f,30.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Room speed rate
    ctx->genSlider("部屋速度率",&m.mIndoorSpeedFactor,0.0f,1.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Hot spring heal time
    ctx->genSlider("温泉回復時間", &m.mHotspringRecoverTime,0,0xff,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Sand sinking speed
    ctx->genSlider("砂沈み速度", &m.mSandSinkSpeed,0.0f,5.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Sand floating speed
    ctx->genSlider("砂浮上速度", &m.mSandSurfaceSpeed,0.0f,5.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Wii perspective camera speed (horizontal)
    ctx->genSlider("Wii主観カメラ速度横", &m.mWiiCamSpeedH,0,0x7fff,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Wii perspective camera speed (vertical)
    ctx->genSlider("Wii主観カメラ速度縦", &m.mWiiCamSpeedV,0,0x7fff,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Transformation prohibit distance (near)
    ctx->genSlider("変身禁止距離（近）", &m.mTransformBlockNearDis,0.0f,10000.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Transformation prohibit distance (far)
    ctx->genSlider("変身禁止距離（遠）", &m.mTransformBlockFarDis,0.0,10000.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Transformation prohibit angle (far)
    ctx->genSlider("変身禁止角度（遠）", &m.mTransformBlockFarAngle,0,0x7fff,0, NULL, 0xffff,0xffff,0x200,0x18);
}

daAlinkHIO_basic_c::daAlinkHIO_basic_c() {
    const static char plabel[] = "const daAlinkHIO_basic_c1 daAlinkHIO_basic_c0::m = {\n";
    m_len = 88;
    mp_src_data = (void*)&daAlinkHIO_basic_c0::m;
    mp_data = (void*)&m;
    m_name_string = plabel;
    baseCopy();
    m_anm_num = 0;
    m_u8_num = 2;
    m_s16_num = 9;
    m_f32_num = 17;
    f14 = 1;
    f18 = 0;
    f1c = 1;
    checkDataSize();
}

daAlinkHIO_data_c::~daAlinkHIO_data_c() {}
daAlinkHIO_data_c::daAlinkHIO_data_c() {}

void daAlinkHIO_move_c::genMessage(JORMContext* ctx) {
    // Reset
    ctx->genButton("リセット",0x4000003,0,NULL,0xffff,0xffff,0x200,0x18);
    // Max speed
    ctx->genSlider("最高速度",&m.mMaxSpeed,0.0,50.0,0,NULL,0xffff,0xffff,0x200,0x18);
    // Acceleration
    ctx->genSlider("加速度", &m.mAcceleration,0.0,10.0,0,NULL,0xffff,0xffff,0x200,0x18);
    // Wait A speed
    ctx->genSlider("待機Ａ速度", &m.mWaitAnmSpeed,0.01,10.0,0,NULL,0xffff,0xffff,0x200,0x18);
    // Walking A speed
    ctx->genSlider("歩きＡ速度", &m.mWalkAnmSpeed,0.01,10.0,0,NULL,0xffff,0xffff,0x200,0x18);
    // Running A speed
    ctx->genSlider("走りＡ速度", &m.mRunAnmSpeed,0.01,10.0,0,NULL,0xffff,0xffff,0x200,0x18);
    // Walking change rate
    ctx->genSlider("歩き変更率", &m.mWalkChangeRate,0.0,1.0,0,NULL,0xffff,0xffff,0x200,0x18);
    // Running change rate
    ctx->genSlider("走り変更率", &m.mRunChangeRate,0.0,1.0,0,NULL,0xffff,0xffff,0x200,0x18);
    // Walking minimum synthesis rate
    ctx->genSlider("歩き最低合成率", &m.mMinWalkRate,0.0,1.0,0,NULL,0xffff,0xffff,0x200,0x18);
    // Tired walking minimum synthesis rate
    ctx->genSlider("疲れ歩き最低合成率", &m.mMinTiredWalkRate,0.0,1.0,0,NULL,0xffff,0xffff,0x200,0x18);
    // Rotation angle max
    ctx->genSlider("旋回角度最大", &m.mMaxTurnAngle,0,0x4000,0,NULL,0xffff,0xffff,0x200,0x18);
    // Rotation angle min
    ctx->genSlider("旋回角度最小", &m.mMinTurnAngle,0,0x4000,0,NULL,0xffff,0xffff,0x200,0x18);
    // Rotation angle rate
    ctx->genSlider("旋回角度率", &m.mTurnAngleRate,0,0x14,0,NULL,0xffff,0xffff,0x200,0x18);
    // Deceleration
    ctx->genSlider("減速", &m.mDeceleration,0.0,20.0,0,NULL,0xffff,0xffff,0x200,0x18);
    // Slide
    daAlinkHIO_setAnmGenMessage(&m.mSlideAnm, ctx, "滑り",11.0f,0);
    // Slide start
    ctx->genSlider("滑り開始", &m.mSlideThresholdSpeed,0.0,1.0,0,NULL,0xffff,0xffff,0x200,0x18);
    // Slide initial speed rate
    ctx->genSlider("滑り初速率", &m.mSlideSpeed,0.0,10.0,0,NULL,0xffff,0xffff,0x200,0x18);
    // Slide deceleration
    ctx->genSlider("滑り減速", &m.mSlideDeceleration,0.0,20.0,0,NULL,0xffff,0xffff,0x200,0x18);
    // Foot propotional placement when walking
    ctx->genSlider("歩き時足位置比率", &m.mFootPositionRatio,0.0,1.0,0,NULL,0xffff,0xffff,0x200,0x18);
    // Light stance interpolation
    ctx->genSlider("軽く構え補間", &m.mWaitBInterpolation,0.0,10.0,0,NULL, 0xffff,0xffff,0x200,0x18);
}

daAlinkHIO_move_c::daAlinkHIO_move_c() {
    static const char plabel[] = "const daAlinkHIO_move_c1 daAlinkHIO_move_c0::m = {\n";
    m_len = 88;
    mp_src_data = (void*)&daAlinkHIO_move_c0::m;
    mp_data = (void*)&m;
    m_name_string = plabel;
    baseCopy();
    m_anm_num = 1;
    m_u8_num = 0;
    m_s16_num = 4;
    m_f32_num = 15;
    f14 = 0;
    f18 = 0;
    f1c = 1;
    checkDataSize();
}

void daAlinkHIO_atnMove_c::genMessage(JORMContext* ctx) {
    // Reset
    ctx->genButton("リセット",0x4000003,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Max speed
    ctx->genSlider("最高速度", &m.mMaxSpeed,0.0,50.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Acceleration
    ctx->genSlider("加速度",&m.mAcceleration,0.0,10.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Idle A speed
    ctx->genSlider("待機Ａ速度",&m.mWaitAnmSpeed,0.01,10.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Walking A speed
    ctx->genSlider("歩きＡ速度", &m.mWalkAnmSpeed,0.01,10.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Running A speed
    ctx->genSlider("走りＡ速度", &m.mRunAnmSpeed,0.01,10.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Walking update rate
    ctx->genSlider("歩き変更率", &m.mWalkChangeRate,0.0,1.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Running update rate
    ctx->genSlider("走り変更率", &m.mRunChangeRate,0.0,1.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Walking minimum synthesis rate
    ctx->genSlider("歩き最低合成率", &m.mMinWalkFrame,0.0,1.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Forward walk A speed
    ctx->genSlider("前歩きＡ速度", &m.mWalkForwardAnmSpeed,0.01,10.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Forward run A speed
    ctx->genSlider("前走りＡ速度", &m.mRunForwardAnmSpeed,0.01,10.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Max rotation angle
    ctx->genSlider("旋回角度最大", &m.mMaxTurnAngle,0,0x4000,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Min rotation angle
    ctx->genSlider("旋回角度最小", &m.mMinTurnAngle,0,0x4000,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Rotation angle rate
    ctx->genSlider("旋回角度率",&m.mTurnAngleRate,0,0x14,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Deceleration
    ctx->genSlider("減速", &m.mDeceleration,0.0,20.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Max speed backwards
    ctx->genSlider("後方最高速度", &m.mMaxBackwardsSpeed,0.0,50.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Acceleration backwards
    ctx->genSlider("後方加速度", &m.mBackAcceleration,0.0,10.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Back walk A speed
    ctx->genSlider("後歩Ａ速度", &m.mBackWalkAnmSpeed,0.01,10.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Back run A speed
    ctx->genSlider("後走Ａ速度", &m.mBackRunAnmSpeed,0.01,10.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Back walk rate of change
    ctx->genSlider("後歩変更率", &m.mBackWalkChangeRate,0.0,1.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Back run rate of change
    ctx->genSlider("後走変更率", &m.mBackRunChangeRate,0.0,1.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Back walk minimum synthesis rate
    ctx->genSlider("後歩最低合成率", &m.mMinBackWalkFrame,0.0,1.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Back walk deceleration
    ctx->genSlider("後方減速", &m.mBackDeceleration,0.0,20.0,0,NULL, 0xffff,0xffff,0x200,0x18);
}

daAlinkHIO_atnMove_c::daAlinkHIO_atnMove_c() {
    static const char plabel[] = "const daAlinkHIO_atnMove_c1 daAlinkHIO_atnMove_c0::m = {\n";   
    m_len = 84;
    mp_src_data = (void*)&daAlinkHIO_atnMove_c0::m;
    mp_data = (void*)&m;
    m_name_string = plabel;
    baseCopy();
    m_anm_num = 0;
    m_u8_num = 0;
    m_s16_num = 4;
    m_f32_num = 19;
    f14 = 0;
    f18 = 0;
    f1c = 1;
    checkDataSize();
}

void daAlinkHIO_noActAtnMove_c::genMessage(JORMContext* ctx) {
    // Reset
    ctx->genButton("リセット",0x4000003,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Max speed
    ctx->genSlider("最高速度", &m.mMaxSpeed,0.0,50.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Acceleration
    ctx->genSlider("加速度",&m.mAcceleration,0.0,10.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Wait A speed
    ctx->genSlider("待機Ａ速度", &m.mWaitAnmSpeed,0.01,10.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Walk A speed
    ctx->genSlider("歩きＡ速度", &m.mWalkAnmSpeed,0.01,10.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Run A speed
    ctx->genSlider("走りＡ速度", &m.mRunAnmSpeed,0.01,10.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Walk rate of change
    ctx->genSlider("歩き変更率", &m.mWalkChangeRate,0.0,1.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Run rate of change
    ctx->genSlider("走り変更率", &m.mRunChangeRate,0.0,1.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Walk minimum synthesis rate
    ctx->genSlider("歩き最低合成率", &m.mMinWalkFrame,0.0,1.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Max rotation angle
    ctx->genSlider("旋回角度最大",&m.mMaxTurnAngle,0,0x4000,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Min rotation angle
    ctx->genSlider("旋回角度最小",&m.mMinTurnAngle,0,0x4000,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Rotation angle rate
    ctx->genSlider("旋回角度率",&m.mTurnAngleRate,0,0x14,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Deceleration
    ctx->genSlider("減速",&m.mDeceleration,0.0,20.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Max backwards speed
    ctx->genSlider("後方最高速度",&m.mMaxBackwardsSpeed,0.0,50.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Backwards acceleration
    ctx->genSlider("後方加速度", &m.mBackAcceleration,0.0,10.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Back walk A speed
    ctx->genSlider("後歩Ａ速度", &m.mBackWalkAnmSpeed,0.01,10.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Back run A speed
    ctx->genSlider("後走Ａ速度", &m.mBackRunAnmSpeed,0.01,10.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Backwards walk rate of change
    ctx->genSlider("後歩変更率", &m.mBackWalkChangeRate,0.0,1.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Backwards run rate of change
    ctx->genSlider("後走変更率", &m.mBackRunChangeRate,0.0,1.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Minimum back walk synthesis rate
    ctx->genSlider("後歩最低合成率", &m.mMinBackWalkFrame,0.0,1.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Backwards deceleration
    ctx->genSlider("後方減速", &m.mBackDeceleration,0.0,20.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Minimum rotation A speed
    ctx->genSlider("旋回Ａ速度最小",&m.mWalkForwardAnmSpeed,0.0,5.0,0,NULL, 0xffff,0xffff,0x200,0x18);
    // Maximum backwards A speed
    ctx->genSlider("後方Ａ速度最大", &m.mRunForwardAnmSpeed,0.0,5.0,0,NULL, 0xffff,0xffff,0x200,0x18);
}

daAlinkHIO_noActAtnMove_c::daAlinkHIO_noActAtnMove_c() {
    static const char plabel[] = "const daAlinkHIO_noActAtnMove_c1 daAlinkHIO_noActAtnMove_c0::m = {\n";   
    m_len = 84;
    mp_src_data = (void*)&daAlinkHIO_noActAtnMove_c0::m;
    mp_data = (void*)&m;
    m_name_string = plabel;
    baseCopy();
    m_anm_num = 0;
    m_u8_num = 0;
    m_s16_num = 4;
    m_f32_num = 19;
    f14 = 0;
    f18 = 0;
    f1c = 1;
    checkDataSize();
}

void daAlinkHIO_frontRoll_c::genMessage(JORMContext* ctx) {
    // Reset
    ctx->genButton("リセット", 0x4000003,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Forward roll
    daAlinkHIO_setAnmGenMessage(&m.mRollAnm, ctx, "前転",29.0,1);
    // Initial speed
    ctx->genSlider("初速",&m.mInitSpeed,0.0,50.0,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Speed rate of change
    ctx->genSlider("速度率", &m.mSpeedRate, 0.0f, 5.0f, 0, NULL, 0xffff,0xffff,0x200,0x18);
    // Minimum speed
    ctx->genSlider("最低速度", &m.mMinSpeed, 0.0f, 50.0f, 0, NULL, 0xffff,0xffff,0x200,0x18);
    // Rotation rate
    ctx->genSlider("旋回率", &m.mTurnRate,0,100,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Max rotation angle
    ctx->genSlider("旋回最大角度", &m.mTurnMaxAngle,0,0x7fff,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Min rotation angle
    ctx->genSlider("旋回最小角度", &m.mTurnMinAngle,0,0x7fff,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Boots attack start F
    ctx->genSlider("ブーツ攻撃開始Ｆ", &m.mBootsAttackInitF,0.0f,33.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Boots attack end F
    ctx->genSlider("ブーツ攻撃終了Ｆ", &m.mBootsAttackEndF,0.0f,33.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Boots attack radius
    ctx->genSlider("ブーツ攻撃半径",&m.mBootsAttackRadius,0.0f,100.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Required impact speed
    ctx->genSlider("衝突必要速度",&m.mCrashSpeedThreshold, 0.0f,50.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Required impact angle
    ctx->genSlider("衝突必要角度",&m.mCrashAngleThreshold,0,0x7fff,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Impact allowed start F
    ctx->genSlider("衝突許可開始Ｆ", &m.mCrashInitF,0.0f,29.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Impact allowed end F
    ctx->genSlider("衝突許可終了Ｆ", &m.mCrashEndF,0.0f,29.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Impact
    daAlinkHIO_setAnmGenMessage(&m.mCrashAnm, ctx, "衝突", 29.0f,1);
    // Impact horizontal speed
    ctx->genSlider("衝突水平速度", &m.mCrashSpeedH,0.0f,50.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Impact vertical speed
    ctx->genSlider("衝突垂直速度", &m.mCrashSpeedV,0.0f,50.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Impact success
    daAlinkHIO_setAnmGenMessage(&m.mCrashHitAnm, ctx, "衝突成功", 33.0f,1);
}

daAlinkHIO_frontRoll_c::daAlinkHIO_frontRoll_c() {
    static const char plabel[] = "const daAlinkHIO_frontRoll_c1 daAlinkHIO_frontRoll_c0::m = {\n";   
    m_len = 112;
    mp_src_data = (void*)&daAlinkHIO_frontRoll_c0::m;
    mp_data = (void*)&m;
    m_name_string = plabel;
    baseCopy();
    m_anm_num = 3;
    m_u8_num = 0;
    m_s16_num = 4;
    m_f32_num = 11;
    f14 = 0;
    f18 = 0;
    f1c = 0;
    checkDataSize();
}

void daAlinkHIO_backJump_c::genMessage(JORMContext* ctx) {
    // Reset
    ctx->genButton("リセット",0x4000003,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Backflip
    daAlinkHIO_setAnmGenMessage(&m.mBackflipAnm,ctx, "バク転",9.0f,0);
    // Backflip horizontal speed
    ctx->genSlider("バク転水平速度",&m.mBackflipSpeedH,0.0f,50.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Backflip vertical speed
    ctx->genSlider("バク転垂直速度",&m.mBackflipSpeedV,0.0f,50.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Landing
    daAlinkHIO_setAnmGenMessage(&m.mLandAnm, ctx, "着地",17.0f,1);
    // Fall height
    ctx->genSlider("落下高さ",&m.mFallHeight,0.0f,500.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Fall interpolation
    ctx->genSlider("落下補間",&m.mFallInterpolation,0.0f,30.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
}

daAlinkHIO_backJump_c::daAlinkHIO_backJump_c() {
    static const char plabel[] = "const daAlinkHIO_backJump_c1 daAlinkHIO_backJump_c0::m = {\n";   
    m_len = 56;
    mp_src_data = (void*)&daAlinkHIO_backJump_c0::m;
    mp_data = (void*)&m;
    m_name_string = plabel;
    baseCopy();
    m_anm_num = 2;
    m_u8_num = 0;
    m_s16_num = 0;
    m_f32_num = 4;
    f14 = 0;
    f18 = 0;
    f1c = 0;
    checkDataSize();
}

void daAlinkHIO_sideStep_c::genMessage(JORMContext* ctx) {
    // Reset
    ctx->genButton("リセット",0x4000003,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Side step
    daAlinkHIO_setAnmGenMessage(&m.mSideJumpAnm,ctx,"横飛",5.0f,0);
    // Side step horizontal speed
    ctx->genSlider("横飛水平速度",&m.mSideJumpSpeedH,0.0f,50.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Side step vertical speed
    ctx->genSlider("横飛垂直速度",&m.mSideJumpSpeedV,0.0f,50.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Side landing
    daAlinkHIO_setAnmGenMessage(&m.mSideLandAnm,ctx,"横着地",9.0f,1);
    // Back step
    daAlinkHIO_setAnmGenMessage(&m.mBackJumpAnm,ctx,"後飛",6.0f,0);
    // Back step horizontal speed
    ctx->genSlider("後飛水平速度",&m.mBackJumpSpeedH,0.0f,50.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Back step vertical speed
    ctx->genSlider("後飛垂直速度",&m.mBackJumpSpeedV,0.0f,50.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Back landing
    daAlinkHIO_setAnmGenMessage(&m.mBackLandAnm,ctx,"後着地",9.0f,1);
    // Fall height
    ctx->genSlider("落下高さ",&m.mFallHeight,0.0f,500.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Fall interpolation
    ctx->genSlider("落下補間",&m.mFallInterpolation,0.0f,30.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
}

daAlinkHIO_sideStep_c::daAlinkHIO_sideStep_c() {
    static const char plabel[] = "const daAlinkHIO_sideStep_c1 daAlinkHIO_sideStep_c0::m = {\n";   
    m_len = 104;
    mp_src_data = (void*)&daAlinkHIO_sideStep_c0::m;
    mp_data = (void*)&m;
    m_name_string = plabel;
    baseCopy();
    m_anm_num = 4;
    m_u8_num = 0;
    m_s16_num = 0;
    m_f32_num = 6;
    f14 = 0;
    f18 = 0;
    f1c = 0;
    checkDataSize();
}

void daAlinkHIO_slide_c::genMessage(JORMContext* ctx) {
    // Reset
    ctx->genButton("リセット",0x4000003,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Slide angle
    ctx->genSlider("滑り角度",&m.mSlideAngle,0.0f,90.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Slope climb angle
    ctx->genSlider("登坂角度",&m.mClimbAngle,0.0f,90.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Slope climb A minimum speed
    ctx->genSlider("登坂Ａ速度最小",&m.mClimbAnmMinSpeed,0.0f,10.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Slope climb A max speed
    ctx->genSlider("登坂Ａ速度最大",&m.mMaxClimbAnmSpeed,0.0f,10.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Slope climb max speed
    ctx->genSlider("登坂最高速度",&m.mMaxClimbSpeed,0.0f,100.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Forward slide
    daAlinkHIO_setAnmGenMessage(&m.mForwardSlideAnm, ctx, "前滑り", 14.0f,0);
    // Back slide
    daAlinkHIO_setAnmGenMessage(&m.mBackwardSlideAnm, ctx, "後滑り", 6.0f,0);
    // Max speed
    ctx->genSlider("最大速度",&m.mMaxSpeed,0.0f,100.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Acceleration
    ctx->genSlider("加速度",&m.mAcceleration,0.0f,10.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Forward landing
    daAlinkHIO_setAnmGenMessage(&m.mForwardLandAnm, ctx, "前着地", 15.0f,1);
    // Backward landing
    daAlinkHIO_setAnmGenMessage(&m.mBackwardLandAnm, ctx, "後着地", 20.0f,1);
    // Lava floor slide angle
    ctx->genSlider("溶岩床滑り角度",&m.mLV2MinibossFloorSlideAngle,0.0f,90.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Lava floor weak slide angle
    ctx->genSlider("溶岩床弱滑り角度",&m.mLV2MinibossFloorWeakSlideAngle,0.0f,90.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Lava floor weak slide speed
    ctx->genSlider("溶岩床弱滑り速度",&m.mLV2MinibossFloorWeakSlideSpeed,0.0f,100.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
}

daAlinkHIO_slide_c::daAlinkHIO_slide_c() {
    static const char plabel[] = "const daAlinkHIO_slide_c1 daAlinkHIO_slide_c0::m = {\n";   
    m_len = 120;
    mp_src_data = (void*)&daAlinkHIO_slide_c0::m;
    mp_data = (void*)&m;
    m_name_string = plabel;
    baseCopy();
    m_anm_num = 4;
    m_u8_num = 0;
    m_s16_num = 0;
    m_f32_num = 10;
    f14 = 0;
    f18 = 0;
    f1c = 0;
    checkDataSize();
}

void daAlinkHIO_cutNormal_c::genMessage(JORMContext* ctx) {
    // Reset
    ctx->genButton("リセット",0x4000003,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Cut
    daAlinkHIO_setAnmGenMessage(&m.mCutAnm, ctx, "斬り",field_0x34,1);
    // Speed
    ctx->genSlider("速度", &m.mSpeed,0.0f,50.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Attack start F
    ctx->genSlider("攻撃開始Ｆ", &m.mAttackStartFrame,0.0f,field_0x34,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Attack end F
    ctx->genSlider("攻撃終了Ｆ", &m.mAttackEndFrame,0.0f,field_0x34,0, NULL, 0xffff,0xffff,0x200,0x18);
}

daAlinkHIO_cutNormal_c::daAlinkHIO_cutNormal_c(int param_0, float param_1) {
    field_0x34 = param_1;

    static void* baseP[5] = {
        (void*)&daAlinkHIO_cutNmV_c0::m,
        (void*)&daAlinkHIO_cutNmL_c0::m,
        (void*)&daAlinkHIO_cutNmR_c0::m,
        (void*)&daAlinkHIO_cutNmSL_c0::m,
        (void*)&daAlinkHIO_cutNmSR_c0::m
    };

    static const char* plabel[] = {
    "const daAlinkHIO_cutNormal_c1 daAlinkHIO_cutNmSL_c0::m = {\n",
    "const daAlinkHIO_cutNormal_c1 daAlinkHIO_cutNmV_c0::m = {\n",
    "const daAlinkHIO_cutNormal_c1 daAlinkHIO_cutNmL_c0::m = {\n",
    "const daAlinkHIO_cutNormal_c1 daAlinkHIO_cutNmSR_c0::m = {\n",
    "const daAlinkHIO_cutNormal_c1 daAlinkHIO_cutNmR_c0::m = {\n"
    };

    m_len = 32;
    mp_src_data = baseP[param_0];
    mp_data = (void*)&m;
    m_name_string = plabel[param_0];
    baseCopy();
    m_anm_num = 1;
    m_u8_num = 0;
    m_s16_num = 0;
    m_f32_num = 3;
    f14 = 0;
    f18 = 0;
    f1c = 0;
    checkDataSize();
}

void daAlinkHIO_cutFinish_c::genMessage(JORMContext* ctx) {
    // Reset
    ctx->genButton("リセット",0x4000003,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Cut
    daAlinkHIO_setAnmGenMessage(&m.mCutAnm, ctx, "斬り",field_0x34,1);
    // Speed
    ctx->genSlider("速度",&m.mSpeed,0.0f,50.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Attack start F
    ctx->genSlider("攻撃開始Ｆ",&m.mAttackStartFrame,0.0f,field_0x34,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Attack end F
    ctx->genSlider("攻撃終了Ｆ",&m.mAttackEndFrame,0.0f,field_0x34,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Stop time
    ctx->genSlider("停止時間",&m.mStopTime,0,300,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Mid-combo start F
    ctx->genSlider("コンボ中開始Ｆ",&m.mComboStartFrame,0.0f,field_0x34 + 1.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Mid-combo CF
    ctx->genSlider("コンボ中ＣＦ",&m.mComboCheckFrame,0.0f,field_0x34 + 1.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Mid-combo stop time
    ctx->genSlider("コンボ中停止時間",&m.mComboStopTime,0,300,0, NULL, 0xffff,0xffff,0x200,0x18);
}

daAlinkHIO_cutFinish_c::daAlinkHIO_cutFinish_c(int param_0, float param_1) {
    field_0x34 = param_1;

    static void* baseP[6] = {
        (void*)&daAlinkHIO_cutFnL_c0::m,
        (void*)&daAlinkHIO_cutFnV_c0::m,
        (void*)&daAlinkHIO_cutFnS_c0::m,
        (void*)&daAlinkHIO_cutFnSl_c0::m,
        (void*)&daAlinkHIO_cutFnSm_c0::m,
        (void*)&daAlinkHIO_cutFnR_c0::m
    };

    static const char* plabel[] = {
    "const daAlinkHIO_cutFinish_c1 daAlinkHIO_cutFnL_c0::m = {\n",
    "const daAlinkHIO_cutFinish_c1 daAlinkHIO_cutFnV_c0::m = {\n",
    "const daAlinkHIO_cutFinish_c1 daAlinkHIO_cutFnS_c0::m = {\n",
    "const daAlinkHIO_cutFinish_c1 daAlinkHIO_cutFnSl_c0::m = {\n",
    "const daAlinkHIO_cutFinish_c1 daAlinkHIO_cutFnSm_c0::m = {\n",
    "const daAlinkHIO_cutFinish_c1 daAlinkHIO_cutFnR_c0::m = {\n",
    };

    m_len = 44;
    mp_src_data = baseP[param_0];
    mp_data = (void*)&m;
    m_name_string = plabel[param_0];
    baseCopy();
    m_anm_num = 1;
    m_u8_num = 0;
    m_s16_num = 2;
    m_f32_num = 5;
    f14 = 0;
    f18 = 0;
    f1c = 0;
    checkDataSize();
}

void daAlinkHIO_cutFnJU_c::genMessage(JORMContext* ctx) {
    // Reset
    ctx->genButton("リセット",0x4000003,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Cut
    daAlinkHIO_setAnmGenMessage(&m.mCutAnm, ctx,"斬り", 19.0f,0);
    // Horizontal speed
    ctx->genSlider("水平速度", &m.mSpeedH,0.0f,50.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Vertical speed
    ctx->genSlider("垂直速度", &m.mSpeedV,0.0f,100.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Attack start F
    ctx->genSlider("攻撃開始Ｆ", &m.mAttackStartFrame,0.0f,19.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Attack end F
    ctx->genSlider("攻撃終了Ｆ", &m.mAttackEndFrame,0.0f,19.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Stop time
    ctx->genSlider("停止時間", &m.mStopTime,0,300,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Mid-combo start F
    ctx->genSlider("コンボ中開始Ｆ", &m.mComboStartFrame,0.0f,19.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Landing
    daAlinkHIO_setAnmGenMessage(&m.mLandAnm, ctx, "着地",17.0f,1);
    // Mid-combo CF
    ctx->genSlider("コンボ中ＣＦ", &m.mComboCheckFrame,0.0f,18.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Mid-combo stop time
    ctx->genSlider("コンボ中停止時間", &m.mComboStopTime,0,300,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Fall height
    ctx->genSlider("落下高さ", &m.mFallHeight,0.0f,1000.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Fall interpolation
    ctx->genSlider("落下補間", &m.mFallInterpolation,0.0f,50.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Attack radius
    ctx->genSlider("攻撃半径", &m.mAttackRadius,0.0f,200.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Attack offset
    ctx->genSlider("攻撃オフセット", &m.mAttackOffset,0.0f,1000.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
}

daAlinkHIO_cutFnJU_c::daAlinkHIO_cutFnJU_c() {
    static const char plabel[] = "const daAlinkHIO_cutFnJU_c1 daAlinkHIO_cutFnJU_c0::m = {\n";   
    m_len = 84;
    mp_src_data = (void*)&daAlinkHIO_cutFnJU_c0::m;
    mp_data = (void*)&m;
    m_name_string = plabel;
    baseCopy();
    m_anm_num = 2;
    m_u8_num = 0;
    m_s16_num = 2;
    m_f32_num = 10;
    f14 = 0;
    f18 = 0;
    f1c = 0;
    checkDataSize();
}

void daAlinkHIO_cutDash_c::genMessage(JORMContext* ctx) {
    // Reset
    ctx->genButton("リセット",0x4000003,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Cut
    daAlinkHIO_setAnmGenMessage(&m.mCutAnm, ctx,"斬り",field_0x34,1);
    // Attack start F
    ctx->genSlider("攻撃開始Ｆ",&m.mAttackStartFrame,0.0f,field_0x34,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Attack end F
    ctx->genSlider("攻撃終了Ｆ",&m.mAttackEndFrame,0.0f,field_0x34,0, NULL, 0xffff,0xffff,0x200,0x18);
}

daAlinkHIO_cutDash_c::daAlinkHIO_cutDash_c(int param_0, float param_1) {
    field_0x34 = param_1;

    static void* baseP[3] = {
        (void*)&daAlinkHIO_cutDaL_c0::m,
        (void*)&daAlinkHIO_cutDaR_c0::m,
        (void*)&daAlinkHIO_cutDaCharge_c0::m,
    };

    static const char* plabel[] = {
        "const daAlinkHIO_cutDash_c1 daAlinkHIO_cutDaL_c0::m = {\n",
        "const daAlinkHIO_cutDash_c1 daAlinkHIO_cutDaR_c0::m = {\n",
        "const daAlinkHIO_cutDash_c1 daAlinkHIO_cutDaCharge_c0::m = {\n",
    };
    
    m_len = 28;
    mp_src_data = baseP[param_0];
    mp_data = (void*)&m;
    m_name_string = plabel[param_0];
    baseCopy();
    m_anm_num = 1;
    m_u8_num = 0;
    m_s16_num = 0;
    m_f32_num = 2;
    f14 = 0;
    f18 = 0;
    f1c = 0;
    checkDataSize();
}

void daAlinkHIO_cutJump_c::genMessage(JORMContext* ctx) {
    // Reset
    ctx->genButton("リセット",0x4000003,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Cut
    daAlinkHIO_setAnmGenMessage(&m.mCutAnm, ctx,"斬り",17.0f,0);
    // Attack start F
    ctx->genSlider("攻撃開始Ｆ",&m.mStartAttackFrame,0.0f,17.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Attack end F
    ctx->genSlider("攻撃終了Ｆ",&m.mEndAttackFrame,0.0f,14.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Horizontal cut speed
    ctx->genSlider("斬り水平速度", &m.mBaseJumpSpeedH,0.0f,50.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Vertical cut speed
    ctx->genSlider("斬り垂直速度", &m.mBaseJumpSpeedV,0.0f,50.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Cut short horizontal speed
    ctx->genSlider("斬り短い水平速度", &m.mAirJumpSpeedH,0.0f,50.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Cut short vertical speed
    ctx->genSlider("斬り短い垂直速度", &m.mAirJumpSpeedV,0.0f,50.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Landing
    daAlinkHIO_setAnmGenMessage(&m.mLandAnm, ctx, "着地", 29.0f,1);
    // Spin attack CF
    ctx->genSlider("回転斬りＣＦ", &m.mJumpSpinDelay,0.0f,29.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
}

daAlinkHIO_cutJump_c::daAlinkHIO_cutJump_c() {
    static const char plabel[] = "const daAlinkHIO_cutJump_c1 daAlinkHIO_cutJump_c0::m = {\n";   
    m_len = 68;
    mp_src_data = (void*)&daAlinkHIO_cutJump_c0::m;
    mp_data = (void*)&m;
    m_name_string = plabel;
    baseCopy();
    m_anm_num = 2;
    m_u8_num = 0;
    m_s16_num = 0;
    m_f32_num = 7;
    f14 = 0;
    f18 = 0;
    f1c = 0;
    checkDataSize();
}

void daAlinkHIO_cutTurn_c::genMessage(JORMContext* ctx) {
    // Reset
    ctx->genButton("リセット",0x4000003,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Right spin
    daAlinkHIO_setAnmGenMessage(&m.mRightTurnAnm, ctx, "右回り",47.0f,1);
    // Right mid-combo start F
    ctx->genSlider("右コンボ中開始Ｆ", &m.mRightComboStartFrame,0.0f,47.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Right spin input time start F
    ctx->genSlider("右回転入力時開始Ｆ", &m.mRightTurnInputStartFrame,0.0f,47.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Right attack start F
    ctx->genSlider("右攻撃開始Ｆ", &m.mRightAttackStartFrame,0.0f,47.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Right attack end F
    ctx->genSlider("右攻撃終了Ｆ", &m.mRightAttackEndFrame,0.0f,47.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Left spin
    daAlinkHIO_setAnmGenMessage(&m.mLeftTurnAnm, ctx, "左回り",42.0f,1);
    // Left mid-combo start F
    ctx->genSlider("左コンボ中開始Ｆ", &m.mLeftComboStartFrame,0.0f,42.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Left spin input time start F
    ctx->genSlider("左回転入力時開始Ｆ", &m.mLeftTurnInputStartFrame,0.0f,42.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Left attack start F
    ctx->genSlider("左攻撃開始Ｆ", &m.mLeftAttackStartFrame,0.0f,42.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Left attack end F
    ctx->genSlider("左攻撃終了Ｆ", &m.mLeftAttackEndFrame,0.0f,42.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Stop time
    ctx->genSlider("停止時間", &m.mStopTime,0,300,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Charge movement
    daAlinkHIO_setAnmGenMessage(&m.mChargeAnm, ctx, "ため移行",9.0f,0);
    // Forward/back movement A speed
    ctx->genSlider("前後移動Ａ速度", &m.mMoveFBAnmSpeed,0.0f,10.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Forward/back movement interpolation
    ctx->genSlider("前後移動補間", &m.mMoveFBInterpolation,0.0f,10.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Left/right movement A speed
    ctx->genSlider("左右移動Ａ速度", &m.mMoveLRAnmSpeed,0.0f,10.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Left/right movement interpolation
    ctx->genSlider("左右移動補間", &m.mMoveLRInterpolation,0.0f,10.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Max speed
    ctx->genSlider("最高速度",&m.mMaxSpeed,0.0f,30.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Charge movement acceleration
    ctx->genSlider("ため移動加速", &m.mChargeMoveAccel,0.0f,5.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Charge movement deceleration
    ctx->genSlider("ため移動減速", &m.mChargeMoveDecel,0.0f,5.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Speed
    ctx->genSlider("速度", &m.mSpeed,0.0f,50.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Attack radius
    ctx->genSlider("攻撃半径", &m.mAttackRadius,0.0f,500.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Attack radius speed increase
    ctx->genSlider("攻撃半径増加速度", &m.mAttackRadiusAccel,0.0f,100.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Light sword attack radius
    ctx->genSlider("光攻撃半径", &m.mLightAttackRadius,0.0f,1000.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Light sword attack radius speed increase
    ctx->genSlider("光攻撃半径増加速度", &m.mLightAttackRadiusAccel,0.0f,100.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Big attack radius
    ctx->genSlider("大攻撃半径", &m.mLargeAttackRadius,0.0f,1000.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Big attack radius speed increase
    ctx->genSlider("大攻撃半径増加速度", &m.mLargeAttackAccel,0.0f,100.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
}

daAlinkHIO_cutTurn_c::daAlinkHIO_cutTurn_c() {
    static const char plabel[] = "const daAlinkHIO_cutTurn_c1 daAlinkHIO_cutTurn_c0::m = {\n";   
    m_len = 152;
    mp_src_data = (void*)&daAlinkHIO_cutTurn_c0::m;
    mp_data = (void*)&m;
    m_name_string = plabel;
    baseCopy();
    m_anm_num = 3;
    m_u8_num = 0;
    m_s16_num = 2;
    m_f32_num = 22;
    f14 = 0;
    f18 = 0;
    f1c = 1;
    checkDataSize();
}

void daAlinkHIO_hoCut_c::genMessage(JORMContext* ctx) {
    // Reset
    ctx->genButton("リセット",0x4000003,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Cut
    daAlinkHIO_setAnmGenMessage(&m.mCutAnm, ctx, "斬り",field_0x34,1);
    // Post-cut interpolation
    ctx->genSlider("斬り後補間",&m.mAfterCutMorf,0.0f,10.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Attack start F
    ctx->genSlider("攻撃開始Ｆ",&m.mAttackStartFrame,0.0f,field_0x34,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Attack end F
    ctx->genSlider("攻撃終了Ｆ",&m.mAttackEndFrame,0.0f,field_0x34,0, NULL, 0xffff,0xffff,0x200,0x18);
}

daAlinkHIO_hoCut_c::daAlinkHIO_hoCut_c(int param_0, float param_1) {
    field_0x34 = param_1;

    static void* baseP[4] = {
        (void*)&daAlinkHIO_hoCutLA_c0::m,
        (void*)&daAlinkHIO_hoCutLB_c0::m,
        (void*)&daAlinkHIO_hoCutRA_c0::m,
        (void*)&daAlinkHIO_hoCutRB_c0::m,
    };

    static const char* plabel[] = {
        "const daAlinkHIO_hoCut_c1 daAlinkHIO_hoCutLA_c0::m = {\n",
        "const daAlinkHIO_hoCut_c1 daAlinkHIO_hoCutLB_c0::m = {\n",
        "const daAlinkHIO_hoCut_c1 daAlinkHIO_hoCutRA_c0::m = {\n",
        "const daAlinkHIO_hoCut_c1 daAlinkHIO_hoCutRB_c0::m = {\n",
    };

    m_len = 32;
    mp_src_data = baseP[param_0];
    mp_data = (void*)&m;
    m_name_string = plabel[param_0];
    baseCopy();
    m_anm_num = 1;
    m_u8_num = 0;
    m_s16_num = 0;
    m_f32_num = 3;
    f14 = 0;
    f18 = 0;
    f1c = 0;
    checkDataSize();
}

void daAlinkHIO_hoCutCharge_c::genMessage(JORMContext* ctx) {
    // Reset
    ctx->genButton("リセット",0x4000003,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Charge
    daAlinkHIO_setAnmGenMessage(&m.mChargeAnm, ctx, "ため",6.0f,0);
    // Cut
    daAlinkHIO_setAnmGenMessage(&m.mCutAnm, ctx,"斬り",21.0f,0);
    // Cut attack start F
    ctx->genSlider("斬り攻撃開始Ｆ", &m.mCutAttackStartFrame,0.0f,21.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Cut attack end F
    ctx->genSlider("斬り攻撃終了Ｆ", &m.mCutAttackEndFrame,0.0f,21.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Cut stop time
    ctx->genSlider("斬り停止時間", &m.mCutStopTime,0,300,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Spin
    daAlinkHIO_setAnmGenMessage(&m.mSpinAnm, ctx, "回転",49.0f,1);
    // Spin attack start F
    ctx->genSlider("回転攻撃開始Ｆ", &m.mSpinAttackStartFrame,0.0f,49.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Spin attack end F
    ctx->genSlider("回転攻撃終了Ｆ", &m.mSpinAttackEndFrame,0.0f,49.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Spin attack radius
    ctx->genSlider("回転攻撃半径", &m.mSpinAttackRadius,0.0f,500.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Spin stop time
    ctx->genSlider("回転停止時間", &m.mSpinStopTime,0,300,0, NULL, 0xffff,0xffff,0x200,0x18);
}

daAlinkHIO_hoCutCharge_c::daAlinkHIO_hoCutCharge_c() {
    static const char plabel[] = "const daAlinkHIO_hoCutCharge_c1 daAlinkHIO_hoCutCharge_c0::m = {\n";   
    m_len = 84;
    mp_src_data = (void*)&daAlinkHIO_hoCutCharge_c0::m;
    mp_data = (void*)&m;
    m_name_string = plabel;
    baseCopy();
    m_anm_num = 3;
    m_u8_num = 0;
    m_s16_num = 2;
    m_f32_num = 5;
    f14 = 0;
    f18 = 0;
    f1c = 0;
    checkDataSize();
}

void daAlinkHIO_cutDown_c::genMessage(JORMContext* ctx) {
    // Reset
    ctx->genButton("リセット",0x4000003,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Vertical speed
    ctx->genSlider("垂直速度", &m.mRecoverSpeedH,0.0f,50.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Jump
    daAlinkHIO_setAnmGenMessage(&m.mJumpAnm, ctx, "飛出", 8.0f,0);
    // Brace
    daAlinkHIO_setAnmGenMessage(&m.mFallAnm, ctx, "構え", 15.0f,0);
    // Landing
    daAlinkHIO_setAnmGenMessage(&m.mLandAnm, ctx, "着地", 16.0f,0);
    // Success stop time
    ctx->genSlider("成功停止時間",&m.mSuccessStopTime,0,0x96,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Failure stop time
    ctx->genSlider("失敗停止時間",&m.mFailStopTime,0,0x96,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Return horizontal speed
    ctx->genSlider("戻り水平速度",&m.mRecoverSpeedV,0.0f,50.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Return vertical speed
    ctx->genSlider("戻り垂直速度",&m.mSpeedV,0.0f,50.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Return
    daAlinkHIO_setAnmGenMessage(&m.mRecoverAnm, ctx, "戻り", 9.0f,0);
    // Failure
    daAlinkHIO_setAnmGenMessage(&m.mMissAnm, ctx, "失敗", 73.0f,1);
}

daAlinkHIO_cutDown_c::daAlinkHIO_cutDown_c() {
    static const char plabel[] = "const daAlinkHIO_cutDown_c1 daAlinkHIO_cutDown_c0::m = {\n";   
    m_len = 116;
    mp_src_data = (void*)&daAlinkHIO_cutDown_c0::m;
    mp_data = (void*)&m;
    m_name_string = plabel;
    baseCopy();
    m_anm_num = 5;
    m_u8_num = 0;
    m_s16_num = 2;
    m_f32_num = 3;
    f14 = 0;
    f18 = 0;
    f1c = 0;
    checkDataSize();
}

void daAlinkHIO_cutHead_c::genMessage(JORMContext* ctx) {
    // Reset
    ctx->genButton("リセット",0x4000003,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Jump
    daAlinkHIO_setAnmGenMessage(&m.mJumpAnm, ctx, "飛出", 8.0f,0);
    // Gravity
    ctx->genSlider("重力", &m.mGravity,-10.0f,0.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Max height
    ctx->genSlider("最大高さ", &m.mMaxHeight,0.0f,1000.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Max distance
    ctx->genSlider("最大距離", &m.mMaxDistance,0.0f,1000.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Cut
    daAlinkHIO_setAnmGenMessage(&m.mCutAnm, ctx, "斬り",21.0f,0);
    // Attack start F
    ctx->genSlider("攻撃開始Ｆ",&m.mAttackStartFrame,0.0f,21.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Attack end F
    ctx->genSlider("攻撃終了Ｆ",&m.mAttackEndFrame,0.0f,21.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Sword length ratio
    ctx->genSlider("剣長さ比率", &m.mSwordLength,0.0f,5.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Sword radius
    ctx->genSlider("剣半径", &m.mSwordRadius,0.0f,100.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Additional vertical speed
    ctx->genSlider("追加垂直速度", &m.mAddSpeedV,0.0f,100.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Additional horizontal speed
    ctx->genSlider("追加水平速度", &m.mAddSpeedH,0.0f,100.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Landing
    daAlinkHIO_setAnmGenMessage(&m.mLandAnm, ctx, "着地", 21.0f,1);
}

daAlinkHIO_cutHead_c::daAlinkHIO_cutHead_c() {
    static const char plabel[] = "const daAlinkHIO_cutHead_c1 daAlinkHIO_cutHead_c0::m = {\n";   
    m_len = 96;
    mp_src_data = (void*)&daAlinkHIO_cutHead_c0::m;
    mp_data = (void*)&m;
    m_name_string = plabel;
    baseCopy();
    m_anm_num = 3;
    m_u8_num = 0;
    m_s16_num = 0;
    m_f32_num = 9;
    f14 = 0;
    f18 = 0;
    f1c = 0;
    checkDataSize();
}

void daAlinkHIO_cutLargeJump_c::genMessage(JORMContext* ctx) {
    // Reset
    ctx->genButton("リセット",0x4000003,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Charge
    daAlinkHIO_setAnmGenMessage(&m.mChargeAnm, ctx, "ため", 29.0f,0);
    // Jump forward
    daAlinkHIO_setAnmGenMessage(&m.mChargeMoveAnm, ctx, "飛前", 6.0f,0);
    // Jump forward attack start F
    ctx->genSlider("飛前攻撃開始Ｆ", &m.mJumpAttackStartFrame,0.0f,6.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Jump forward attack end F
    ctx->genSlider("飛前攻撃終了Ｆ", &m.mJumpAttackEndFrame,0.0f,6.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Cut
    daAlinkHIO_setAnmGenMessage(&m.mCutAnm, ctx, "斬り",16.0f,0);
    // Cut attack start F
    ctx->genSlider("斬り攻撃開始Ｆ", &m.mCutInitFrame,0.0f,16.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Cut horizontal speed
    ctx->genSlider("斬り水平速度", &m.mCutSpeedH,0.0f,50.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Cut vertical speed
    ctx->genSlider("斬り垂直速度", &m.mCutSpeedV,0.0f,50.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Landing
    daAlinkHIO_setAnmGenMessage(&m.mLandAnm, ctx, "着地", 35.0f,1);
    // Spin attack CF
    ctx->genSlider("回転斬りＣＦ", &m.mSpinSlashCheckFrame,0.0f,35.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Landing attack start F
    ctx->genSlider("着地攻撃開始Ｆ", &m.mLandAttackInitFrame,0.0f,35.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Landing attack end F
    ctx->genSlider("着地攻撃終了Ｆ", &m.mLandAttackEndFrame,0.0f,35.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Landing attack radius
    ctx->genSlider("着地攻撃半径", &m.mLandAttackRadius,0.0f,500.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
}

daAlinkHIO_cutLargeJump_c::daAlinkHIO_cutLargeJump_c() {
    static const char plabel[] = "const daAlinkHIO_cutLargeJump_c1 daAlinkHIO_cutLargeJump_c0::m = {\n";   
    m_len = 116;
    mp_src_data = (void*)&daAlinkHIO_cutLargeJump_c0::m;
    mp_data = (void*)&m;
    m_name_string = plabel;
    baseCopy();
    m_anm_num = 4;
    m_u8_num = 0;
    m_s16_num = 0;
    m_f32_num = 9;
    f14 = 0;
    f18 = 0;
    f1c = 0;
    checkDataSize();
}

void daAlinkHIO_cut_c::genMessage(JORMContext* ctx) {
    // Reset
    ctx->genButton("リセット",0x4000003,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Vertical
    ctx->genNode("縦", &mCutVertical,0,0);
    // Left
    ctx->genNode("左", &mCutLeft,0,0);
    // Right
    ctx->genNode("右", &mCutRight,0,0);
    // Left stab
    ctx->genNode("左突", &mCutLeftStab,0,0);
    // Right stab
    ctx->genNode("右突", &mCutRightStab,0,0);
    // E left
    ctx->genNode("Ｅ左", &mCutFinishLeft,0,0);
    // E vertical
    ctx->genNode("Ｅ縦", &mCutFinishVertical,0,0);
    // E stab
    ctx->genNode("Ｅ突", &mCutFinishStab,0,0);
    // E sweep
    ctx->genNode("Ｅ払", &mCutFinishSweep,0,0);
    // E slash
    ctx->genNode("Ｅ袈裟", &mCutFinishSlash,0,0);
    // E right
    ctx->genNode("Ｅ右", &mCutFinishRight,0,0);
    // E J upper cut
    ctx->genNode("ＥＪ斬上", &mCutFinishJumpUppercut,0,0);
    // Jump
    ctx->genNode("ジャンプ", &mCutJump,0,0);
    // Spin
    ctx->genNode("回転", &mCutTurn,0,0);
    // Horse left A
    ctx->genNode("馬上左Ａ", &mHorseCutLeftA,0,0);
    // Horse left B
    ctx->genNode("馬上左Ｂ", &mHorseCutLeftB,0,0);
    // Horse right A
    ctx->genNode("馬上右Ａ", &mHorseCutRightA,0,0);
    // Horse right B
    ctx->genNode("馬上右Ｂ", &mHorseCutRightB,0,0);
    // Horse charge
    ctx->genNode("馬上ため", &mHorseCutCharge,0,0);
    // Run left
    ctx->genNode("走り左", &mCutDashLeft,0,0);
    // Run right
    ctx->genNode("走り右", &mCutDashRight,0,0);
    // Run charge
    ctx->genNode("走りため", &mCutDashCharge,0,0);
    // Ending Blow
    ctx->genNode("ダウン下突き", &mCutDown,0,0);
    // Helm Splitter
    ctx->genNode("兜割", &mCutHead,0,0);
    // Jump Strike
    ctx->genNode("大ジャンプ", &mCutLargeJump,0,0);
    // Equip
    daAlinkHIO_setReverseAnmGenMessage(&m.mEquipAnm, ctx, "装備", 22.0f,0);
    // Cancel
    daAlinkHIO_setAnmGenMessage(&m.mUnequipAnm, ctx, "解除", 22.0f,0);
    // Early cancel A speed
    ctx->genSlider("早解除Ａ速度", &m.mFastUnequipAnmSpeed,0.0f,10.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Combo continue time
    ctx->genSlider("コンボ持続時間", &m.mComboDuration,0,300,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Jump back
    daAlinkHIO_setAnmGenMessage(&m.mRecoilAnm, ctx, "跳返", 45.0f,1);
    // Jump back speed
    ctx->genSlider("跳返速度", &m.mRecoilSpeed,0.0f,100.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Jump back deceleration
    ctx->genSlider("跳返減速", &m.mRecoilDeceleration,0.0f,10.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Blur alpha
    ctx->genSlider("ブラーアルファ", &m.mBlurAlpha,0,0xff,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Dash blur alpha
    ctx->genSlider("ダッシュブラーアルファ", &m.mDashBlurAlpha,0,0xff,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Special sword cancel A speed
    ctx->genSlider("特殊剣解除Ａ速度", &m.mFlourishAnmSpeed,0.0f,10.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Special sword cancel finish A speed
    ctx->genSlider("特殊剣解除終了Ａ速度", &m.mFlourishEndAnmSpeed,0.0f,10.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Special sword cancel CF
    ctx->genSlider("特殊剣解除ＣＦ", &m.mFlourishControlStartFrame,0.0f,59.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Special sword cancel accept time
    ctx->genSlider("特殊剣解除受付時間", &m.mFlourishTime,0,1000,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Sword length ratio
    ctx->genSlider("剣長さ比率", &m.mSwordLength,0.0f,10.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Sword radius
    ctx->genSlider("剣半径", &m.mSwordRadius,0.0f,100.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Mounted sword length ratio
    ctx->genSlider("馬上剣長さ比率", &m.mSwordLengthHorseback,0.0f,10.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Mounted sword radius
    ctx->genSlider("馬上剣半径", &m.mSwordRadiusHorseback,0.0f,100.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Running sword length ratio
    ctx->genSlider("走り剣長さ比率", &m.mRunCutLength,0.0f,10.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Running sword radius
    ctx->genSlider("走り剣半径", &m.mRunCutRadius,0.0f,100.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Normal sword swing decision time
    ctx->genSlider("通常剣振り判定時間", &m.mNormalSwingDuration,0,0x1e,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Force hit combo
    ctx->genCheckBox("強制ヒットコンボ", (u8*)&m.mForceHitCombo, 1, 0, NULL, 0xffff,0xffff,0x200,0x18);
    // Mounted duel sword length ratio
    ctx->genSlider("一騎打ち馬上剣長さ比率", &m.mSwordLengthHorsebackFight,0.0f,10.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Mounted duel sword radius
    ctx->genSlider("一騎打ち馬上剣半径", &m.mSwordRadiusHorsebackFight,0.0f,100.0f,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Mortal draw time
    ctx->genSlider("居合時間", &m.mUnkTime,0,1000,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Max body face up
    ctx->genSlider("体上向き最大", &m.mUnkBodyUpwards,-0x7fff,0,0, NULL, 0xffff,0xffff,0x200,0x18);
    // Max body face down
    ctx->genSlider("体下向き最大", &m.mUnkBodyDownwards,0,0x7fff,0, NULL, 0xffff,0xffff,0x200,0x18);
    // OI stab
    daAlinkHIO_setAnmGenMessage(&m.mStabAnm, ctx, "ＯＩ刺し", 47.0f,1);
    // Spin attack wait
    ctx->genSlider("回転斬り待ち", &m.mSpinSlashWait,0,1000,0, NULL, 0xffff,0xffff,0x200,0x18);
}

daAlinkHIO_cut_c::daAlinkHIO_cut_c() :
    mCutVertical(0, 27.0f),
    mCutLeft(1, 27.0f),
    mCutRight(2, 27.0f),
    mCutLeftStab(3, 31.0f),
    mCutRightStab(4, 27.0f),
    mCutFinishLeft(0, 29.0f),
    mCutFinishVertical(1, 33.0f),
    mCutFinishStab(2, 31.0f),
    mCutFinishSweep(3, 33.0f),
    mCutFinishSlash(4, 31.0f),
    mCutFinishRight(5, 34.0f),
    mCutFinishJumpUppercut(),
    mCutJump(),
    mCutTurn(),
    mHorseCutLeftA(0, 21.0f),
    mHorseCutLeftB(1, 24.0f),
    mHorseCutRightA(2, 24.0f),
    mHorseCutRightB(3, 11.0f),
    mHorseCutCharge(),
    mCutDashLeft(0, 12.0f),
    mCutDashRight(1, 14.0f),
    mCutDashCharge(2, 14.0f),
    mCutDown(),
    mCutHead(),
    mCutLargeJump() {
    static const char plabel[] = "const daAlinkHIO_cut_c1 daAlinkHIO_cut_c0::m = {\n";   
    m_len = 156;
    mp_src_data = (void*)&daAlinkHIO_cut_c0::m;
    mp_data = (void*)&m;
    m_name_string = plabel;
    baseCopy();
    m_anm_num = 4;
    m_u8_num = 2;
    m_s16_num = 9;
    m_f32_num = 14;
    f14 = 1;
    f18 = 0;
    f1c = 0;
    checkDataSize();
}

daAlinkHIO_cutLargeJump_c::~daAlinkHIO_cutLargeJump_c() {}
daAlinkHIO_cutHead_c::~daAlinkHIO_cutHead_c() {}
daAlinkHIO_cutDown_c::~daAlinkHIO_cutDown_c() {}
daAlinkHIO_cutDash_c::~daAlinkHIO_cutDash_c() {}
daAlinkHIO_hoCutCharge_c::~daAlinkHIO_hoCutCharge_c() {}
daAlinkHIO_hoCut_c::~daAlinkHIO_hoCut_c() {}
daAlinkHIO_cutTurn_c::~daAlinkHIO_cutTurn_c() {}
daAlinkHIO_cutJump_c::~daAlinkHIO_cutJump_c() {}
daAlinkHIO_cutFnJU_c::~daAlinkHIO_cutFnJU_c() {}
daAlinkHIO_cutFinish_c::~daAlinkHIO_cutFinish_c() {}
daAlinkHIO_cutNormal_c::~daAlinkHIO_cutNormal_c() {}

void daAlinkHIO_guardAttack_c::genMessage(JORMContext* ctx) {
    // Reset
    ctx->genButton("リセット",0x4000003,0, NULL,0xffff,0xffff,0x200,0x18);
    // Attack
    daAlinkHIO_setAnmGenMessage(&m.mAttackAnm, ctx,"攻撃",field_0x34,1);
    // Slash check frame
    ctx->genSlider("剣振りＣＦ",&m.mSlashCheckFrame,0.0f,field_0x34,0, NULL,0xffff,0xffff,0x200,0x18);
    // Speed
    ctx->genSlider("速度",&m.mSpeed,0.0f,50.0f,0, NULL,0xffff,0xffff,0x200,0x18);
    // Attack start F
    ctx->genSlider("攻撃開始Ｆ",&m.mAttackStartFrame,0.0f,field_0x34,0, NULL,0xffff,0xffff,0x200,0x18);
    // Attack end F
    ctx->genSlider("攻撃終了Ｆ",&m.mAttackEndFrame,0.0f,field_0x34,0, NULL,0xffff,0xffff,0x200,0x18);
}

daAlinkHIO_guardAttack_c::daAlinkHIO_guardAttack_c(int param_0, float param_1) {
    field_0x34 = param_1;

    static void* baseP[2] = {
        (void*)&daAlinkHIO_gAtPush_c0::m,
        (void*)&daAlinkHIO_gAtKick_c0::m,
    };

    static const char* plabel[] = {
        "const daAlinkHIO_guardAttack_c1 daAlinkHIO_gAtPush_c0::m = {\n",
        "const daAlinkHIO_guardAttack_c1 daAlinkHIO_gAtKick_c0::m = {\n",   
    };

    m_len = 36;
    mp_src_data = baseP[param_0];
    mp_data = (void*)&m;
    m_name_string = plabel[param_0];
    baseCopy();
    m_anm_num = 1;
    m_u8_num = 0;
    m_s16_num = 0;
    m_f32_num = 4;
    f14 = 0;
    f18 = 0;
    f1c = 0;
    checkDataSize();
}

void daAlinkHIO_turnMove_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_turnMove_c::daAlinkHIO_turnMove_c() {
    static const char plabel[] = "const daAlinkHIO_turnMove_c1 daAlinkHIO_turnMove_c0::m = {\n";   
    m_len = 44;
    mp_src_data = (void*)&daAlinkHIO_turnMove_c0::m;
    mp_data = (void*)&m;
    m_name_string = plabel;
    baseCopy();
    m_anm_num = 1;
    m_u8_num = 0;
    m_s16_num = 4;
    m_f32_num = 4;
    f14 = 0;
    f18 = 0;
    f1c = 0;
    checkDataSize();
}

void daAlinkHIO_guard_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_guard_c::daAlinkHIO_guard_c() : 
    mGuardAttack1(0, 17.0f),
    mGuardAttack2(1, 21.0f),
    mTurnMove() {
    static const char plabel[] = "const daAlinkHIO_guard_c1 daAlinkHIO_guard_c0::m = {\n";   
    m_len = 128;
    mp_src_data = (void*)&daAlinkHIO_guard_c0::m;
    mp_data = (void*)&m;
    m_name_string = plabel;
    baseCopy();
    m_anm_num = 4;
    m_u8_num = 0;
    m_s16_num = 6;
    m_f32_num = 9;
    f14 = 0;
    f18 = 0;
    f1c = 1;
    checkDataSize();
}

daAlinkHIO_turnMove_c::~daAlinkHIO_turnMove_c() {}
daAlinkHIO_guardAttack_c::~daAlinkHIO_guardAttack_c() {}

void daAlinkHIO_crouch_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_crouch_c::daAlinkHIO_crouch_c() {
    static const char plabel[] = "const daAlinkHIO_crouch_c1 daAlinkHIO_crouch_c0::m = {\n";   
    m_len = 76;
    mp_src_data = (void*)&daAlinkHIO_crouch_c0::m;
    mp_data = (void*)&m;
    m_name_string = plabel;
    baseCopy();
    m_anm_num = 2;
    m_u8_num = 0;
    m_s16_num = 4;
    m_f32_num = 7;
    f14 = 0;
    f18 = 0;
    f1c = 1;
    checkDataSize();
}

void daAlinkHIO_autoJump_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_autoJump_c::daAlinkHIO_autoJump_c() {
    static const char plabel[] = "const daAlinkHIO_autoJump_c1 daAlinkHIO_autoJump_c0::m = {\n";   
    m_len = 180;
    mp_src_data = (void*)&daAlinkHIO_autoJump_c0::m;
    mp_data = (void*)&m;
    m_name_string = plabel;
    baseCopy();
    m_anm_num = 4;
    m_u8_num = 2;
    m_s16_num = 5;
    m_f32_num = 22;
    f14 = 1;
    f18 = 0;
    f1c = 1;
    checkDataSize();
}

void daAlinkHIO_smallJump_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_smallJump_c::daAlinkHIO_smallJump_c() {
    static const char plabel[] = "const daAlinkHIO_smallJump_c1 daAlinkHIO_smallJump_c0::m = {\n";   
    m_len = 72;
    mp_src_data = (void*)&daAlinkHIO_smallJump_c0::m;
    mp_data = (void*)&m;
    m_name_string = plabel;
    baseCopy();
    m_anm_num = 3;
    m_u8_num = 0;
    m_s16_num = 0;
    m_f32_num = 3;
    f14 = 0;
    f18 = 0;
    f1c = 0;
    checkDataSize();
}

void daAlinkHIO_wallCatch_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wallCatch_c::daAlinkHIO_wallCatch_c() {
    static const char plabel[] = "const daAlinkHIO_wallCatch_c1 daAlinkHIO_wallCatch_c0::m = {\n";   
    m_len = 84;
    mp_src_data = (void*)&daAlinkHIO_wallCatch_c0::m;
    mp_data = (void*)&m;
    m_name_string = plabel;
    baseCopy();
    m_anm_num = 4;
    m_u8_num = 0;
    m_s16_num = 0;
    m_f32_num = 1;
    f14 = 0;
    f18 = 0;
    f1c = 0;
    checkDataSize();
}

void daAlinkHIO_wallFall_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wallFall_c::daAlinkHIO_wallFall_c() {
    static const char plabel[] = "const daAlinkHIO_wallFall_c1 daAlinkHIO_wallFall_c0::m = {\n";   
    m_len = 40;
    mp_src_data = (void*)&daAlinkHIO_wallFall_c0::m;
    mp_data = (void*)&m;
    m_name_string = plabel;
    baseCopy();
    m_anm_num = 2;
    m_u8_num = 0;
    m_s16_num = 0;
    m_f32_num = 0;
    f14 = 0;
    f18 = 0;
    f1c = 0;
    checkDataSize();
}

void daAlinkHIO_wallMove_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wallMove_c::daAlinkHIO_wallMove_c() {
    static const char plabel[] = "const daAlinkHIO_wallMove_c1 daAlinkHIO_wallMove_c0::m = {\n";   
    m_len = 20;
    mp_src_data = (void*)&daAlinkHIO_wallMove_c0::m;
    mp_data = (void*)&m;
    m_name_string = plabel;
    baseCopy();
    m_anm_num = 0;
    m_u8_num = 0;
    m_s16_num = 0;
    m_f32_num = 5;
    f14 = 0;
    f18 = 0;
    f1c = 0;
    checkDataSize();
}

void daAlinkHIO_wallHang_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wallHang_c::daAlinkHIO_wallHang_c() :
    mSmallJump(),
    mWallCatch(),
    mWallFall(),
    mWallMove() {
    static const char plabel[] = "const daAlinkHIO_wallHang_c1 daAlinkHIO_wallHang_c0::m = {\n";
    m_len = 28;
    mp_src_data = (void*)&daAlinkHIO_wallHang_c0::m;
    mp_data = (void*)&m;
    m_name_string = plabel;
    baseCopy();
    m_anm_num = 0;
    m_u8_num = 0;
    m_s16_num = 2;
    m_f32_num = 6;
    f14 = 0;
    f18 = 0;
    f1c = 0;
    checkDataSize();
}

daAlinkHIO_wallMove_c::~daAlinkHIO_wallMove_c() {}
daAlinkHIO_wallFall_c::~daAlinkHIO_wallFall_c() {}
daAlinkHIO_wallCatch_c::~daAlinkHIO_wallCatch_c() {}
daAlinkHIO_smallJump_c::~daAlinkHIO_smallJump_c() {}

void daAlinkHIO_pushpull_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_pushpull_c::daAlinkHIO_pushpull_c() {
    static const char plabel[] = "const daAlinkHIO_pushpull_c1 daAlinkHIO_pushpull_c0::m = {\n";
    m_len = 60;
    mp_src_data = (void*)&daAlinkHIO_pushpull_c0::m;
    mp_data = (void*)&m;
    m_name_string = plabel;
    baseCopy();
    m_anm_num = 0;
    m_u8_num = 2;
    m_s16_num = 7;
    m_f32_num = 11;
    f14 = 1;
    f18 = 0;
    f1c = 0;
    checkDataSize();
}

void daAlinkHIO_damNormal_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_damNormal_c::daAlinkHIO_damNormal_c() {
    static const char plabel[] = "const daAlinkHIO_damNormal_c1 daAlinkHIO_damNormal_c0::m = {\n";
    m_len = 100;
    mp_src_data = (void*)&daAlinkHIO_damNormal_c0::m;
    mp_data = (void*)&m;
    m_name_string = plabel;
    baseCopy();
    m_anm_num = 4;
    m_u8_num = 0;
    m_s16_num = 2;
    m_f32_num = 4;
    f14 = 0;
    f18 = 0;
    f1c = 0;
    checkDataSize();
}

void daAlinkHIO_damLaHu_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_damLaHu_c::daAlinkHIO_damLaHu_c(int param_0) {
    static void* baseP[2] = {
        (void*)&daAlinkHIO_damLarge_c0::m,
        (void*)&daAlinkHIO_damHuge_c0::m,
    };

    static const char* plabel[] = {
        "const daAlinkHIO_guardAttack_c1 daAlinkHIO_damLarge_c0::m = {\n",
        "const daAlinkHIO_guardAttack_c1 daAlinkHIO_damHuge_c0::m = {\n",   
    };

    m_len = 188;
    mp_src_data = baseP[param_0];
    mp_data = (void*)&m;
    m_name_string = plabel[param_0];
    baseCopy();
    m_anm_num = 8;
    m_u8_num = 0;
    m_s16_num = 2;
    m_f32_num = 6;
    f14 = 0;
    f18 = 0;
    f1c = 1;
    checkDataSize();
}

void daAlinkHIO_damHorse_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_damHorse_c::daAlinkHIO_damHorse_c() {
    static const char plabel[] = "const daAlinkHIO_damHorse_c1 daAlinkHIO_damHorse_c0::m = {\n";
    m_len = 44;
    mp_src_data = (void*)&daAlinkHIO_damHorse_c0::m;
    mp_data = (void*)&m;
    m_name_string = plabel;
    baseCopy();
    m_anm_num = 2;
    m_u8_num = 0;
    m_s16_num = 2;
    m_f32_num = 0;
    f14 = 0;
    f18 = 0;
    f1c = 0;
    checkDataSize();
}

void daAlinkHIO_damFall_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_damFall_c::daAlinkHIO_damFall_c() {
    // NONMATCHING
}

void daAlinkHIO_damCaught_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_damCaught_c::daAlinkHIO_damCaught_c() {
    // NONMATCHING
}

void daAlinkHIO_damSwim_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_damSwim_c::daAlinkHIO_damSwim_c() {
    // NONMATCHING
}

void daAlinkHIO_damage_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_damage_c::daAlinkHIO_damage_c() {
    // NONMATCHING
}

daAlinkHIO_damSwim_c::~daAlinkHIO_damSwim_c() {}
daAlinkHIO_damCaught_c::~daAlinkHIO_damCaught_c() {}
daAlinkHIO_damFall_c::~daAlinkHIO_damFall_c() {}
daAlinkHIO_damHorse_c::~daAlinkHIO_damHorse_c() {}
daAlinkHIO_damLaHu_c::~daAlinkHIO_damLaHu_c() {}
daAlinkHIO_damNormal_c::~daAlinkHIO_damNormal_c() {}

void daAlinkHIO_horse_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_horse_c::daAlinkHIO_horse_c() {
    // NONMATCHING
}

void daAlinkHIO_canoe_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_canoe_c::daAlinkHIO_canoe_c() {
    // NONMATCHING
}

void daAlinkHIO_bow_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_bow_c::daAlinkHIO_bow_c() {
    // NONMATCHING
}

void daAlinkHIO_boom_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_boom_c::daAlinkHIO_boom_c() {
    // NONMATCHING
}

void daAlinkHIO_bomb_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_bomb_c::daAlinkHIO_bomb_c() {
    // NONMATCHING
}

void daAlinkHIO_light_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_light_c::daAlinkHIO_light_c(int) {
    // NONMATCHING
}

void daAlinkHIO_kandelaar_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_kandelaar_c::daAlinkHIO_kandelaar_c() {
    // NONMATCHING
}

void daAlinkHIO_magneBoots_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_magneBoots_c::daAlinkHIO_magneBoots_c() {
    // NONMATCHING
}

void daAlinkHIO_fmChain_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_fmChain_c::daAlinkHIO_fmChain_c() {
    // NONMATCHING
}

void daAlinkHIO_hookshot_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_hookshot_c::daAlinkHIO_hookshot_c() {
    // NONMATCHING
}

void daAlinkHIO_spinner_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_spinner_c::daAlinkHIO_spinner_c() {
    // NONMATCHING
}

void daAlinkHIO_ironBall_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_ironBall_c::daAlinkHIO_ironBall_c() {
    // NONMATCHING
}

void daAlinkHIO_copyRod_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_copyRod_c::daAlinkHIO_copyRod_c() {
    // NONMATCHING
}

void daAlinkHIO_pickUp_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_pickUp_c::daAlinkHIO_pickUp_c() {
    // NONMATCHING
}

void daAlinkHIO_board_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_board_c::daAlinkHIO_board_c() {
    // NONMATCHING
}

void daAlinkHIO_bottle_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_bottle_c::daAlinkHIO_bottle_c() {
    // NONMATCHING
}

void daAlinkHIO_item_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_item_c::daAlinkHIO_item_c() {
    // NONMATCHING
}

daAlinkHIO_copyRod_c::~daAlinkHIO_copyRod_c() {}
daAlinkHIO_ironBall_c::~daAlinkHIO_ironBall_c() {}
daAlinkHIO_spinner_c::~daAlinkHIO_spinner_c() {}
daAlinkHIO_hookshot_c::~daAlinkHIO_hookshot_c() {}
daAlinkHIO_bottle_c::~daAlinkHIO_bottle_c() {}
daAlinkHIO_board_c::~daAlinkHIO_board_c() {}
daAlinkHIO_pickUp_c::~daAlinkHIO_pickUp_c() {}
daAlinkHIO_magneBoots_c::~daAlinkHIO_magneBoots_c() {}
daAlinkHIO_fmChain_c::~daAlinkHIO_fmChain_c() {}
daAlinkHIO_kandelaar_c::~daAlinkHIO_kandelaar_c() {}
daAlinkHIO_light_c::~daAlinkHIO_light_c() {}
daAlinkHIO_bomb_c::~daAlinkHIO_bomb_c() {}
daAlinkHIO_boom_c::~daAlinkHIO_boom_c() {}
daAlinkHIO_bow_c::~daAlinkHIO_bow_c() {}

void daAlinkHIO_ladder_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_ladder_c::daAlinkHIO_ladder_c() {
    // NONMATCHING
}

void daAlinkHIO_roofHang_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_roofHang_c::daAlinkHIO_roofHang_c() {
    // NONMATCHING
}

void daAlinkHIO_grab_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_grab_c::daAlinkHIO_grab_c() {
    // NONMATCHING
}

void daAlinkHIO_swim_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_swim_c::daAlinkHIO_swim_c() {
    // NONMATCHING
}

void daAlinkHIO_wlMove_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlMove_c::daAlinkHIO_wlMove_c() {
    static char* plabel = "const daAlinkHIO_wlMove_c1 daAlinkHIO_wlMove_c0::m = {\n";
    field_0x20 = 256;
    field_0x24 = &daAlinkHIO_wlMove_c0::m;
    field_0x28 = (daAlinkHIO_wlMove_c*)field_0x34;
    field_0x2c = plabel;
    baseCopy();
    checkDataSize();
}

void daAlinkHIO_wlMoveNoP_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlMoveNoP_c::daAlinkHIO_wlMoveNoP_c() {
    // NONMATCHING
}

void daAlinkHIO_wlAtnMove_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlAtnMove_c::daAlinkHIO_wlAtnMove_c() {
    // NONMATCHING
}

void daAlinkHIO_wlHowl_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlHowl_c::daAlinkHIO_wlHowl_c() {
    // NONMATCHING
}

void daAlinkHIO_wlSideStep_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlSideStep_c::daAlinkHIO_wlSideStep_c() {
    // NONMATCHING
}

void daAlinkHIO_wlBackJump_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlBackJump_c::daAlinkHIO_wlBackJump_c() {
    // NONMATCHING
}

void daAlinkHIO_wlAutoJump_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlAutoJump_c::daAlinkHIO_wlAutoJump_c() {
    // NONMATCHING
}

void daAlinkHIO_wlPush_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlPush_c::daAlinkHIO_wlPush_c() {
    // NONMATCHING
}

void daAlinkHIO_wlLie_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlLie_c::daAlinkHIO_wlLie_c() {
    // NONMATCHING
}

void daAlinkHIO_wlWallHang_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlWallHang_c::daAlinkHIO_wlWallHang_c() {
    // NONMATCHING
}

void daAlinkHIO_wlDamNormal_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlDamNormal_c::daAlinkHIO_wlDamNormal_c() {
    // NONMATCHING
}

void daAlinkHIO_wlDamLaHu_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlDamLaHu_c::daAlinkHIO_wlDamLaHu_c(int) {
    // NONMATCHING
}

void daAlinkHIO_wlDamCaught_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlDamCaught_c::daAlinkHIO_wlDamCaught_c() {
    // NONMATCHING
}

void daAlinkHIO_wlDamFall_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlDamFall_c::daAlinkHIO_wlDamFall_c() {
    // NONMATCHING
}

void daAlinkHIO_wlDamage_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlDamage_c::daAlinkHIO_wlDamage_c() :
    mWlDamCaught(),
    mWlDamFall(),
    mWlDamLaHu1(1),
    mWlDamLaHu2(1),
    mWlDamNormal() {
    // NONMATCHING
}

daAlinkHIO_wlDamCaught_c::~daAlinkHIO_wlDamCaught_c() {}
daAlinkHIO_wlDamFall_c::~daAlinkHIO_wlDamFall_c() {}
daAlinkHIO_wlDamLaHu_c::~daAlinkHIO_wlDamLaHu_c() {}
daAlinkHIO_wlDamNormal_c::~daAlinkHIO_wlDamNormal_c() {}

void daAlinkHIO_wlSlide_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlSlide_c::daAlinkHIO_wlSlide_c() {
    // NONMATCHING
}

void daAlinkHIO_wlRope_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlRope_c::daAlinkHIO_wlRope_c() {
    // NONMATCHING
}

void daAlinkHIO_wlAtWait_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlAtWait_c::daAlinkHIO_wlAtWait_c(int, float) {
    // NONMATCHING
}

void daAlinkHIO_wlAtRoll_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlAtRoll_c::daAlinkHIO_wlAtRoll_c() {
    // NONMATCHING
}

void daAlinkHIO_wlAtNjump_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlAtNjump_c::daAlinkHIO_wlAtNjump_c() {
    // NONMATCHING
}

void daAlinkHIO_wlAtCjump_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlAtCjump_c::daAlinkHIO_wlAtCjump_c() {
    // NONMATCHING
}

void daAlinkHIO_wlAtLand_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlAtLand_c::daAlinkHIO_wlAtLand_c() {
    // NONMATCHING
}

void daAlinkHIO_wlAtDown_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlAtDown_c::daAlinkHIO_wlAtDown_c() {
    // NONMATCHING
}

void daAlinkHIO_wlAtLock_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlAtLock_c::daAlinkHIO_wlAtLock_c() {
    // NONMATCHING
}

void daAlinkHIO_wlAtBite_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlAtBite_c::daAlinkHIO_wlAtBite_c() {
    // NONMATCHING
}

void daAlinkHIO_wlAttack_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlAttack_c::daAlinkHIO_wlAttack_c() :
    mWlAtBite(),
    mWlAtLock(),
    mWlAtDown(),
    mWlAtLand(),
    mWlAtCjump(),
    mWlAtNjump(),
    mAtRoll(),
    mAtWait1(1, 1.0f),
    mAtWait2(1, 1.0f),
    mAtWait3(1, 1.0f) {
    // NONMATCHING
}

daAlinkHIO_wlAtBite_c::~daAlinkHIO_wlAtBite_c() {}
daAlinkHIO_wlAtLock_c::~daAlinkHIO_wlAtLock_c() {}
daAlinkHIO_wlAtDown_c::~daAlinkHIO_wlAtDown_c() {}
daAlinkHIO_wlAtLand_c::~daAlinkHIO_wlAtLand_c() {}
daAlinkHIO_wlAtCjump_c::~daAlinkHIO_wlAtCjump_c() {}
daAlinkHIO_wlAtNjump_c::~daAlinkHIO_wlAtNjump_c() {}
daAlinkHIO_wlAtRoll_c::~daAlinkHIO_wlAtRoll_c() {}
daAlinkHIO_wlAtWait_c::~daAlinkHIO_wlAtWait_c() {}

void daAlinkHIO_wlPoint_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlPoint_c::daAlinkHIO_wlPoint_c() {
    // NONMATCHING
}

void daAlinkHIO_wlChain_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlChain_c::daAlinkHIO_wlChain_c() {
    // NONMATCHING
}

void daAlinkHIO_wlSwim_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlSwim_c::daAlinkHIO_wlSwim_c() {
    // NONMATCHING
}

void daAlinkHIO_wlGrab_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlGrab_c::daAlinkHIO_wlGrab_c() {
    // NONMATCHING
}

void daAlinkHIO_wlBall_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

daAlinkHIO_wlBall_c::daAlinkHIO_wlBall_c() {
    // NONMATCHING
}

void daAlinkHIO_wolf_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

// NONMATCHING
daAlinkHIO_wolf_c::daAlinkHIO_wolf_c() : 
    mWlMove(),
    mWlMoveNoP(),
    mWlAtnMove(),
    mWlSideStep(),
    mWlBackJump(),
    mWlHowl(),
    mWlAutoJump(),
    mWlPush(),
    mWlLie(),
    mLight(1),
    mWlWallHang(),
    mWlDamage(),
    mWlSlide(),
    mWlRope(),
    mWlAttack(),
    mWlPoint(),
    mWlChain(),
    mWlSwim(),
    mWlGrab(),
    mWlBall()  {
        baseCopy();
        checkDataSize();
}

daAlinkHIO_wlBall_c::~daAlinkHIO_wlBall_c() {}
daAlinkHIO_wlGrab_c::~daAlinkHIO_wlGrab_c() {}
daAlinkHIO_wlSwim_c::~daAlinkHIO_wlSwim_c() {}
daAlinkHIO_wlChain_c::~daAlinkHIO_wlChain_c() {}
daAlinkHIO_wlPoint_c::~daAlinkHIO_wlPoint_c() {}
daAlinkHIO_wlAttack_c::~daAlinkHIO_wlAttack_c() {}
daAlinkHIO_wlRope_c::~daAlinkHIO_wlRope_c() {}
daAlinkHIO_wlSlide_c::~daAlinkHIO_wlSlide_c() {}
daAlinkHIO_wlDamage_c::~daAlinkHIO_wlDamage_c() {}
daAlinkHIO_wlWallHang_c::~daAlinkHIO_wlWallHang_c() {}
daAlinkHIO_wlLie_c::~daAlinkHIO_wlLie_c() {}
daAlinkHIO_wlPush_c::~daAlinkHIO_wlPush_c() {}
daAlinkHIO_wlAutoJump_c::~daAlinkHIO_wlAutoJump_c() {}
daAlinkHIO_wlHowl_c::~daAlinkHIO_wlHowl_c() {}
daAlinkHIO_wlBackJump_c::~daAlinkHIO_wlBackJump_c() {}
daAlinkHIO_wlSideStep_c::~daAlinkHIO_wlSideStep_c() {}
daAlinkHIO_wlAtnMove_c::~daAlinkHIO_wlAtnMove_c() {}
daAlinkHIO_wlMoveNoP_c::~daAlinkHIO_wlMoveNoP_c() {}
daAlinkHIO_wlMove_c::~daAlinkHIO_wlMove_c() {}

void daAlinkHIO_c::jumpStateUpdate(const cXyz* param_0, const cXyz* param_1, f32 param_2) {
  char buf[68];

  f32 xDiff = param_0->x - param_1->x;
  f32 zDiff = param_0->z - param_1->z;
  JORMContext* ctx = attachJORMContext(8);
  ctx->startUpdateNode(this);
  sprintf(buf, "水平距離 %-8.3f", JMAFastSqrt(xDiff * xDiff + zDiff * zDiff));
  ctx->updateLabel(2, 0x4000006, buf);
  sprintf(buf, "最頂点   %-8.3f", param_2);
  ctx->updateLabel(2, 0x4000007, buf);
  ctx->endUpdateNode();
  releaseJORMContext(ctx);
}

void daAlinkHIO_c::genMessage(JORMContext* ctx) {
    // NONMATCHING
}

void daAlinkHIO_c::readFileData(char* param_0) {
    // NONMATCHING
}

void daAlinkHIO_c::makeFileOutData(char* param_0, char* param_1) {
    // NONMATCHING
}

void daAlinkHIO_c::listenPropertyEvent(const JORPropertyEvent* event) {
    // NONMATCHING
}

#endif

/* 80140B88-80140B98 13B4C8 0010+00 1/1 0/0 0/0 .text            __ct__12daAlinkHIO_cFv */
daAlinkHIO_c::daAlinkHIO_c() {}

/* 80140B98-80140BD4 13B4D8 003C+00 1/1 0/0 0/0 .text            __dt__17daAlinkHIO_wolf_cFv */
daAlinkHIO_wolf_c::~daAlinkHIO_wolf_c() {}

/* 80140BD4-80140C10 13B514 003C+00 1/1 0/0 0/0 .text            __dt__16daAlinkHIO_cut_cFv */
daAlinkHIO_cut_c::~daAlinkHIO_cut_c() {}

/* 80140C10-80140C80 13B550 0070+00 1/0 0/0 0/0 .text            __dt__12daAlinkHIO_cFv */
daAlinkHIO_c::~daAlinkHIO_c() {}
