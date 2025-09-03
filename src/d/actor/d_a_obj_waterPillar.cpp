/**
 * @file d_a_obj_waterPillar.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_waterPillar.h"
#include "d/d_com_inf_game.h"
#include "SSystem/SComponent/c_math.h"

struct daWtPillar_HIO_c : public mDoHIO_entry_c {
    /* 80D2C6CC */ daWtPillar_HIO_c();
    /* 80D2DF34 */ ~daWtPillar_HIO_c();

    void genMessage(JORMContext*);

    /* 0x04 */ cXyz field_0x04;
    /* 0x10 */ csXyz field_0x10;
    /* 0x16 */ s8 mForTesting;                      // "----------- テスト用 ----------" "----------- For Testing ----------" | Checkbox
    /* 0x17 */ s8 mDisableDrawing;                  // "モデル描画ＯＦＦ" "Model Drawing OFF" | Checkbox
    /* 0x18 */ s8 mStopTime;                        // "停止時間" "Stop time" | Slider
    /* 0x19 */ u8 mUpFirstWaitFrames;               // "待ち時間" "Waiting time" | Slider
    /* 0x1A */ u8 field_0x1A[6];
    /* 0x20 */ f32 field_0x20;                      // "速度" "Velocity" | Slider
    /* 0x24 */ u8 field_0x24[4];
    /* 0x28 */ f32 field_0x28;                      // mColliderUpdateScaleFactor?
    /* 0x2C */ u8 mUpWaitFrames;                    // "待ち時間" "Waiting time" | Slider
    /* 0x2D */ u8 field_0x2D[4];
    /* 0x34 */ f32 field_0x34;                      // "速度" "Velocity" | Slider
    /* 0x38 */ u8 field_0x38[8];
    /* 0x40 */ f32 mDownwardSpeedUnitsPerSecond;    // "速度" "Velocity" | Slider
    /* 0x44 */ f32 mEffectOscillationAngle;         // "振幅Ｙ" "Y Amplitude" | Slider
    /* 0x48 */ f32 mEffectOscillationAmplitude;     // "移動強さ" "Moving strength" | Slider
    /* 0x4C */ f32 mEffectOscillationDampingScale;  // "揺れ減衰" "Sway damping" | Slider
    /* 0x50 */ f32 mEffectOscillationMaxDecay;      // "最大減衰量" "Maximum decay" | Slider
    /* 0x54 */ f32 mEffectOscillationMinDecay;      // "最小減衰量" "Minimum decay" | Slider
};

typedef void (daWtPillar_c::*actionFunc)();

int daWtPillar_Draw(daWtPillar_c* i_this);
int daWtPillar_Execute(daWtPillar_c* i_this);
int daWtPillar_Delete(daWtPillar_c* i_this);
int daWtPillar_Create(fopAc_ac_c* i_this);

/* 80D2C6CC-80D2C768 0000EC 009C+00 1/1 0/0 0/0 .text            __ct__16daWtPillar_HIO_cFv */
daWtPillar_HIO_c::daWtPillar_HIO_c() {
    field_0x04.setall(1.0f);
    field_0x10.setall(0);
    mDisableDrawing = mForTesting = false;
    mStopTime = 30;
    field_0x20 = 2000.0f;
    mUpFirstWaitFrames = 30;
    field_0x34 = 5000.0f;
    mUpWaitFrames = 60;
    mDownwardSpeedUnitsPerSecond = 1000.0f;
    mEffectOscillationAngle = 20.0f;
    mEffectOscillationAmplitude = 25.0f;
    mEffectOscillationDampingScale = 1.0f / 100.0f;
    mEffectOscillationMaxDecay = 1.0f / 20.0f; 
    mEffectOscillationMinDecay = 1.0f / 100.0f;
}

/* 80D2C7B0-80D2C838 0001D0 0088+00 2/2 0/0 0/0 .text            setBaseMtx__12daWtPillar_cFv */
void daWtPillar_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y + mCurrentHeight, current.pos.z);
    mDoMtx_stack_c::transM(mEffectOscillationVerticalOffset.x, mEffectOscillationVerticalOffset.y, mEffectOscillationVerticalOffset.z);

    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80D2C838-80D2C858 000258 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__12daWtPillar_cFP10fopAc_ac_c             */
int daWtPillar_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daWtPillar_c*>(i_this)->CreateHeap();
}

/* 80D2C858-80D2C960 000278 0108+00 1/1 0/0 0/0 .text            CreateHeap__12daWtPillar_cFv */
int daWtPillar_c::CreateHeap() {
    J3DModelData* modelData = static_cast<J3DModelData*>(dComIfG_getObjectRes("efWater", 8));
    JUT_ASSERT(369, modelData != 0);
    mpModel = mDoExt_J3DModel__create(modelData, J3DMdlFlag_Unk80000, 0x11000284);

    if(!mpModel)
        return 0;

    J3DAnmTransform* anmTransform = static_cast<J3DAnmTransform*>(dComIfG_getObjectRes("efWater", 5));
    int res = mModelRotationAnimation.init(anmTransform, 1, 2, 1.0f, 0, -1, false);
    JUT_ASSERT(385, res == 1)

    J3DAnmTextureSRTKey* anmSRTKey = static_cast<J3DAnmTextureSRTKey*>(dComIfG_getObjectRes("efWater", 11));
    res = mVerticalTextureScrollAnimation.init(modelData, anmSRTKey, 1, 2, 1.0f, 0, -1);
    JUT_ASSERT(395, res == 1)

    return 1;
}

/* 80D2E86C-80D2E884 000020 0018+00 0/1 0/0 0/0 .data            l_cull_box */
Vec l_cull_box[2] = {
    {-30.0f, -10.0f, -30.0f},
    {30.0f, 60.0f, 30.0f}
};

const dCcD_SrcGObjInf daWtPillar_c::mCcDObjInfo = {
    {0x0, {{AT_TYPE_100, 0x0, 0x1D}, {AT_TYPE_0, 0x0}, 0x0}},    // mObj
    {dCcD_SE_SWORD, 0x0, 0x0, dCcD_MTRL_NONE, 0x0},      // mGObjAt
    {dCcD_SE_STONE, 0x0, 0x0, dCcD_MTRL_NONE, 0x0},      // mGObjTg
    {},  // mGObjCo
};
const dCcD_SrcGObjInf daWtPillar_c::mCcDObjCoInfo = {
    {0x0, {{AT_TYPE_0, 0x0, 0x0}, {0x00, 0x0}, 0x79}},    // mObj
    {dCcD_SE_SWORD, 0x0, 0x0, dCcD_MTRL_NONE, 0x0},      // mGObjAt
    {dCcD_SE_STONE, 0x0, 0x0, dCcD_MTRL_NONE, 0x0},      // mGObjTg
    {},  // mGObjCo
};

/* 80D2EB3C-80D2EB94 000014 0058+00 5/5 0/0 0/0 .bss             l_HIO */
daWtPillar_HIO_c l_HIO;

/* 80D2E884-80D2E8D0 000038 004C+00 1/2 0/0 0/0 .data            mCcDCps__12daWtPillar_c */
dCcD_SrcCps daWtPillar_c::mCcDCps = {
    daWtPillar_c::mCcDObjInfo,
    { { {0.0f, 0.0f, 0.0f}, {0.0f,1100.0f, 0.0f}, 150.0f }}
};

/* 80D2E8D0-80D2E914 000084 0044+00 1/2 0/0 0/0 .data            mCcDCyl__12daWtPillar_c */
dCcD_SrcCyl daWtPillar_c::mCcDCyl = {daWtPillar_c::mCcDObjCoInfo};

/* 80D2C960-80D2CC0C 000380 02AC+00 1/1 0/0 0/0 .text            create__12daWtPillar_cFv */
cPhs__Step daWtPillar_c::create() {
    fopAcM_SetupActor(this, daWtPillar_c);
    const cPhs__Step phase = static_cast<cPhs__Step>(dComIfG_resLoad(&mPhase, "efWater"));

    if(phase == cPhs_COMPLEATE_e) {
        if(!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x2000))
            return cPhs_ERROR_e;
        
        mStts.Init(0xFE, 0xFF, this);
        mCylinderCollider.Set(mCcDCyl);
        mCylinderCollider.SetStts(&mStts);
        mCapsuleCollider.Set(mCcDCps);
        mCapsuleCollider.SetStts(&mStts);

        //! @bug maxY is used as maxZ for setting cull size box, making it larger than intended
        const f32 minX = l_cull_box[0].x * scale.x;
        const f32 minY = l_cull_box[0].y * scale.y;
        const f32 minZ = l_cull_box[0].z * scale.x;
        const f32 maxX = l_cull_box[1].x * scale.x;
        const f32 maxY = l_cull_box[1].y * scale.y;
        fopAcM_setCullSizeBox(this, minX, minY, minZ, maxX, maxY, maxY);

        mAcchCir.SetWall(150.0f, 5.0f);
        mAcch.Set(&current.pos, &old.pos, this, 1, &mAcchCir, &speed, 0, 0);
        mAcch.ClrWaterNone();
        mAcch.SetWaterCheckOffset(10000.0f);
        mAcch.OnLineCheckNone();

        mStalactiteShouldStartShaking = mIsCarryingStalactite = false;

        mSwitchNo = getParam(0, 8);
        mType = getParam(8, 4);

        mMaxHeight = getParam(27, 6) * 100.0f;

        // "== Maximum height %f ==\n"
        OS_REPORT("== 最大の高さ %f ==\n", mMaxHeight);

        mAcch.CrrPos(dComIfG_Bgsp());

        /** 
         * @bug Adjustments to the water pillar's target height are only made when the object
         * is created, leading to inconsistent behavior if the water height is changed
         * after the object is created.
         *
         * See the east room in B1 of the Lakebed Temple as an example: 
         * When first entering entering the room after redirecting water towards it, a
         * cutscene plays showing the water level rising; 
         * the bottom of the oscillating water pillar in this room starts above water, 
         * but ends up below water after the cutscene, resulting in its target height never being modified.
         * However, exiting and re-entering the room does not result in the cutscene playing again,
         * so its target height is modified upon subsequent entries to the room
         */
        if(mAcch.ChkWaterHit() && mType == RISES_AND_FALLS) {
            mRelativeWaterHeight = mAcch.m_wtr.GetHeight() - current.pos.y;
            mMaxHeight += mRelativeWaterHeight;

            // "== Underwater (%f) (%f) type: %d ==\n"
            OS_REPORT("== 水中にある (%f) (%f) type:%d ==\n", mMaxHeight, mRelativeWaterHeight, mType);
        }

        mEffectOscillationAngleStep = mPillarIsPreparingToRise = mStartedRisingOrDoesNotRiseAndFall = field_0xB44 = 0;
        mEffectOscillationVerticalOffset.set(0.0f, 0.0f, 0.0f);
        mCurrentHeight = mEffectOscillationMinDecay = mEffectOscillationMaxDecay = mEffectOscillationDampingScale = mEffectOscillationAngle = mEffectOscillationAmplitude = 0.0f;

        if(mSwitchNo != 0xFF) {
            actionSwWaitInit();
        }
        else if(mType == STATIC) {
            mCurrentHeight = mMaxHeight;
            mStartedRisingOrDoesNotRiseAndFall = field_0xB44 = true;
            actionRockWaitInit();
        }
        else {
            actionUpFirstInit();
        }

        setBaseMtx();
        
        // TODO:
        // "Water column"
        // entryHIO(&l_HIO, "水柱");
    }

    return phase;
}

/* 80D2CC0C-80D2CE4C 00062C 0240+00 1/1 0/0 0/0 .text            execute__12daWtPillar_cFv */
int daWtPillar_c::execute() {
    mModelRotationAnimation.play();
    mVerticalTextureScrollAnimation.play();

    eventUpdate();
    actionMain();

    mAcch.CrrPos(dComIfG_Bgsp());
    effectSet();
    effectSet2();

    mScaleX = scale.x;
    mScaleZ = scale.z;

    cXyz currentHeightVector(0.0f, 1.0f, 0.0f);
    currentHeightVector.y *= mCurrentHeight;


    mDoMtx_stack_c::ZXYrotS(current.angle.x, current.angle.y, current.angle.z);
    mDoMtx_stack_c::multVec(&currentHeightVector, &currentHeightVector);

    cXyz currentPos = current.pos;
    currentPos.y -= 150.0f;

    mCapsuleSource.mStart = currentPos;


    mCapsuleSource.mEnd = currentHeightVector + currentPos;
    mCapsuleSource.mRadius = scale.x * 140.0f;

    if(mCurrentHeight / 100.0f > scale.y * l_HIO.field_0x28) {
        cM3dGCps& cps = mCapsuleCollider;
        cps.Set(mCapsuleSource);
        dComIfG_Ccsp()->Set(&mCapsuleCollider);
    }

    mCylinderCollider.SetR(scale.x * 140.0f);
    mCylinderCollider.SetH(mCurrentHeight);
    mCylinderCollider.SetC(current.pos);
    dComIfG_Ccsp()->Set(&mCylinderCollider);

    mEffectOscillationVerticalOffset.y = mEffectOscillationAmplitude * cM_ssin(mEffectOscillationAngleStep * cM_deg2s(mEffectOscillationAngle));

    cLib_addCalc(&mEffectOscillationAmplitude, 0.0f, mEffectOscillationDampingScale, mEffectOscillationMaxDecay, mEffectOscillationMinDecay);

    mEffectOscillationAngleStep++;

    setBaseMtx();

    return 1;
}

/* 80D2CE4C-80D2CF98 00086C 014C+00 1/1 0/0 0/0 .text            actionMain__12daWtPillar_cFv */
void daWtPillar_c::actionMain() {
    static actionFunc l_func[] = {
    &daWtPillar_c::actionSwWait, &daWtPillar_c::actionWait,
    &daWtPillar_c::actionUpFirst, &daWtPillar_c::actionUpFirstWait,
    &daWtPillar_c::actionUp, &daWtPillar_c::actionUpWait,
    &daWtPillar_c::actionDown, &daWtPillar_c::actionRockWait,
    &daWtPillar_c::actionRockOn, &daWtPillar_c::actionEnd
    };

    (this->*l_func[mAction])();
}

/* 80D2EA04-80D2EA14 0001B8 000E+02 1/1 0/0 0/0 .data            l_eff$3970 */
static u16 l_eff[7] = {
    0x86E3, // Smoke-like water foam particles, placed at pillar top
    0x86E4, // Large paint splatter-type water foam particles, placed at pillar top
    0x86E7, // Small paint splash-type water foam particles, placed at pillar top
    0x86E6, // Small paint splatter-type water foam particles, placed at pillar top
    0x86E5, // Large paint splash-type water foam particles, placed at pillar bottom
    0x86EB, // Water splash particles, placed at pillar bottom
    0x86EA  // Water splash particles, placed at pillar top
};

/* 80D2CF98-80D2D278 0009B8 02E0+00 1/1 0/0 0/0 .text            effectSet__12daWtPillar_cFv */
void daWtPillar_c::effectSet() {
    // Create foam particles at the bottom and top of the pillar
    cXyz effectOscillationOffset;
    effectOscillationOffset.setall(0.0f);

    mDoMtx_stack_c::transS(mEffectOscillationVerticalOffset.x, mEffectOscillationVerticalOffset.y, mEffectOscillationVerticalOffset.z);
    mDoMtx_stack_c::multVec(&effectOscillationOffset, &effectOscillationOffset);

    cXyz currentPosWithOscillationOffset = current.pos + effectOscillationOffset;

    mTopPos = currentPosWithOscillationOffset;
    mTopPos.y += mCurrentHeight;

    for(int i = 0; i < 3; i++)
        mBottomAndTopParticleEmmitters[i] = dComIfGp_particle_set(mBottomAndTopParticleEmmitters[i],l_eff[i], &mTopPos, NULL, NULL);
    
    if(!mIsCarryingStalactite)
        mBottomAndTopParticleEmmitters[3] = dComIfGp_particle_set(mBottomAndTopParticleEmmitters[3],l_eff[3], &mTopPos, NULL, NULL);
    
    if(mStartedRisingOrDoesNotRiseAndFall)
        mBottomAndTopParticleEmmitters[4] = dComIfGp_particle_set(mBottomAndTopParticleEmmitters[4],l_eff[4], &current.pos, NULL, NULL);
    
    if(mPillarIsPreparingToRise) { 
        mBottomAndTopParticleEmmitters[5] = dComIfGp_particle_set(mBottomAndTopParticleEmmitters[5],l_eff[5], &current.pos, NULL, NULL);
    }

    if(mIsCarryingStalactite)
        mBottomAndTopParticleEmmitters[6] = dComIfGp_particle_set(mBottomAndTopParticleEmmitters[6],l_eff[6], &mTopPos, NULL, NULL);
}

/* 80D2D278-80D2D3FC 000C98 0184+00 1/1 0/0 0/0 .text            effectSet2__12daWtPillar_cFv */
void daWtPillar_c::effectSet2() {
      
    /* If the bottom of the pillar is at least 500.0 units underwater and the
        current height of the pillar makes the top be above water,
        create foam particles at the horizontal position of the pillar, but at 
        the water surface
    */

    // Can be observed in Lakebed Temple, when water level is raised in certain rooms
    if(mAcch.m_wtr.GetHeight() - current.pos.y >= 500.0f && 
    current.pos.y + mCurrentHeight >= mAcch.m_wtr.GetHeight())
    {
        cXyz effectOscillationOffset;
        effectOscillationOffset.setall(0.0f);

        mDoMtx_stack_c::transS(mEffectOscillationVerticalOffset.x, mEffectOscillationVerticalOffset.y, mEffectOscillationVerticalOffset.z);
        mDoMtx_stack_c::multVec(&effectOscillationOffset, &effectOscillationOffset);

        cXyz currentPosWithVerticalOffset = current.pos + effectOscillationOffset;
        currentPosWithVerticalOffset.y = mAcch.m_wtr.GetHeight();

        mWaterSurfaceParticleEmitters[0] = dComIfGp_particle_set(mWaterSurfaceParticleEmitters[0], 0x888F, &currentPosWithVerticalOffset, NULL, NULL);
        mWaterSurfaceParticleEmitters[1] = dComIfGp_particle_set(mWaterSurfaceParticleEmitters[1], 0x8890, &currentPosWithVerticalOffset, NULL, NULL);
    }
}

/* 80D2D3FC-80D2D408 000E1C 000C+00 1/1 0/0 0/0 .text            actionSwWaitInit__12daWtPillar_cFv
 */
void daWtPillar_c::actionSwWaitInit() {
    mAction = ACTION_SW_WAIT;
}

/* 80D2D408-80D2D488 000E28 0080+00 1/0 0/0 0/0 .text            actionSwWait__12daWtPillar_cFv */
void daWtPillar_c::actionSwWait() {
    if(dComIfGs_isSwitch(mSwitchNo, fopAcM_GetHomeRoomNo(this))) { 
        if(getEventID() != 0xFF)
            orderEvent(getEventID(), 0xFF, 1);
        else
            eventStart();
    }
}

/* 80D2D488-80D2D4AC 000EA8 0024+00 2/1 0/0 0/0 .text            eventStart__12daWtPillar_cFv */
bool daWtPillar_c::eventStart() {
    actionUpFirstInit();
    return TRUE;
}

/* 80D2D4AC-80D2D588 000ECC 00DC+00 1/1 0/0 0/0 .text            actionWaitInit__12daWtPillar_cFv */
void daWtPillar_c::actionWaitInit() {
    mWaitFrameDelay = getParam(12, 5) * 0.5f * 30.0f;
    mStartedRisingOrDoesNotRiseAndFall = field_0xB44 = false;

    fopAcM_seStartCurrent(this, Z2SE_OBJ_WTR_CLMN_WAIT, 0);

    mAction = ACTION_WAIT;
}

/* 80D2D588-80D2D5C0 000FA8 0038+00 1/0 0/0 0/0 .text            actionWait__12daWtPillar_cFv */
void daWtPillar_c::actionWait() {
    if(mWaitFrameDelay)
        mWaitFrameDelay--;
    else
        actionUpFirstInit();
}

/* 80D2D5C0-80D2D6C4 000FE0 0104+00 3/3 0/0 0/0 .text            actionUpFirstInit__12daWtPillar_cFv
 */
void daWtPillar_c::actionUpFirstInit() {
    mTargetMaxSpeed = (getParam(17, 5) * 100.0f * 5.0f) / 30.0f;

    if(mIsCarryingStalactite)
        mFirstTargetHeight = 50.0f;
    else
        mFirstTargetHeight = 300.0f;

    speedF = 0.0f;

    mStalactiteShouldStartShaking = mPillarIsPreparingToRise = field_0xB44 = TRUE;
    
    fopAcM_seStartCurrent(this, Z2SE_OBJ_WTR_CLMN_READY, 0);

    mAction = ACTION_UP_FIRST;
}

/* 80D2D6C4-80D2D73C 0010E4 0078+00 1/0 0/0 0/0 .text            actionUpFirst__12daWtPillar_cFv */
void daWtPillar_c::actionUpFirst() {
    cLib_chaseF(&speedF, mTargetMaxSpeed, mTargetMaxSpeed / 30.0f);

    const f32 differenceBetweenCurrentAndFirstTargetHeight = cLib_addCalc(&mCurrentHeight, mFirstTargetHeight, 1.0f, speedF, 1.0f / 10.0f);

    if(differenceBetweenCurrentAndFirstTargetHeight == 0.0f)
        actionUpFirstWaitInit();
}

/* 80D2D73C-80D2D780 00115C 0044+00 1/1 0/0 0/0 .text actionUpFirstWaitInit__12daWtPillar_cFv */
void daWtPillar_c::actionUpFirstWaitInit() {
    mWaitFrameDelay = l_HIO.mUpFirstWaitFrames;
    mEffectOscillationAmplitude = l_HIO.mEffectOscillationAmplitude;
    mEffectOscillationAngle = l_HIO.mEffectOscillationAngle;
    mEffectOscillationDampingScale = l_HIO.mEffectOscillationDampingScale;
    mEffectOscillationMaxDecay = l_HIO.mEffectOscillationMaxDecay;
    mEffectOscillationMinDecay = l_HIO.mEffectOscillationMinDecay;
    mAction = ACTION_UP_FIRST_WAIT;
}

/* 80D2D780-80D2D7B8 0011A0 0038+00 1/0 0/0 0/0 .text            actionUpFirstWait__12daWtPillar_cFv
 */
void daWtPillar_c::actionUpFirstWait() {
    if(mWaitFrameDelay)
        mWaitFrameDelay--;
    else
        actionUpInit();
}

/* 80D2D7B8-80D2D850 0011D8 0098+00 1/1 0/0 0/0 .text            actionUpInit__12daWtPillar_cFv */
void daWtPillar_c::actionUpInit() {
    mTargetMaxSpeed = getParam(22, 5) * 100.0f * 5.0f / 30.0f;

    if(mIsCarryingStalactite)
        mTargetHeightStalactiteOffset = -250.0f;
    else
        mTargetHeightStalactiteOffset = 0.0f;

    mPillarIsPreparingToRise = false;

    mStalactiteShouldStartShaking = mStartedRisingOrDoesNotRiseAndFall = true;

    speedF = 0.0f;

    mAction = ACTION_UP;
}

/* 80D2D850-80D2D95C 001270 010C+00 1/0 0/0 0/0 .text            actionUp__12daWtPillar_cFv */
void daWtPillar_c::actionUp() {
    cLib_chaseF(&speedF, mTargetMaxSpeed, mTargetMaxSpeed / 30.0f);

    const f32 differenceBetweenCurrentAndMaxHeightWithStalactiteWeight = cLib_addCalc(&mCurrentHeight, mMaxHeight + mTargetHeightStalactiteOffset, 1.0f, speedF, 1.0f / 10.0f);

    mDoAud_seStartLevel(Z2SE_OBJ_WTR_CLMN_UP, &mTopPos, mMaxHeight + mTargetHeightStalactiteOffset, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

    if(differenceBetweenCurrentAndMaxHeightWithStalactiteWeight == 0.0f) {
        if(mType == STATIC)
            actionRockWaitInit();
        else
            actionUpWaitInit();
    }

}

/* 80D2D95C-80D2D9A0 00137C 0044+00 1/1 0/0 0/0 .text            actionUpWaitInit__12daWtPillar_cFv
 */
void daWtPillar_c::actionUpWaitInit() {
    mWaitFrameDelay = l_HIO.mUpWaitFrames;
    mEffectOscillationAmplitude = l_HIO.mEffectOscillationAmplitude;
    mEffectOscillationAngle = l_HIO.mEffectOscillationAngle;
    mEffectOscillationDampingScale = l_HIO.mEffectOscillationDampingScale;
    mEffectOscillationMaxDecay = l_HIO.mEffectOscillationMaxDecay;
    mEffectOscillationMinDecay = l_HIO.mEffectOscillationMinDecay;
    mAction = ACTION_UP_WAIT;
}

/* 80D2D9A0-80D2DA58 0013C0 00B8+00 1/0 0/0 0/0 .text            actionUpWait__12daWtPillar_cFv */
void daWtPillar_c::actionUpWait() {
    mDoAud_seStartLevel(Z2SE_OBJ_WTR_CLMN_UP, &mTopPos, mMaxHeight + mTargetHeightStalactiteOffset, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

    if(mWaitFrameDelay)
        mWaitFrameDelay--;
    else
        actionDownInit();
}

/* 80D2DA58-80D2DA78 001478 0020+00 1/1 0/0 0/0 .text            actionDownInit__12daWtPillar_cFv */
void daWtPillar_c::actionDownInit() {
    speedF = 0.0f;
    mStalactiteShouldStartShaking = true;
    mAction = ACTION_DOWN;
}

/* 80D2DA78-80D2DB68 001498 00F0+00 1/0 0/0 0/0 .text            actionDown__12daWtPillar_cFv */
void daWtPillar_c::actionDown() {
    cLib_chaseF(&speedF, l_HIO.mDownwardSpeedUnitsPerSecond / 30.0f, (l_HIO.mDownwardSpeedUnitsPerSecond / 30.0f) / 30.0f);

    const f32 diff = cLib_addCalc(&mCurrentHeight, 0.0f, 1.0f, speedF, 0.1f);

    mDoAud_seStartLevel(Z2SE_OBJ_WTR_CLMN_DOWN, &mTopPos, mCurrentHeight, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

    if(diff == 0.0f)
        actionWaitInit();
}

/* 80D2DB68-80D2DB74 001588 000C+00 2/2 0/0 0/0 .text actionRockWaitInit__12daWtPillar_cFv */
void daWtPillar_c::actionRockWaitInit() {
    mAction = ACTION_ROCK_WAIT;
}

/* 80D2DB74-80D2DC20 001594 00AC+00 1/0 0/0 0/0 .text            actionRockWait__12daWtPillar_cFv */
void daWtPillar_c::actionRockWait() {
    mDoAud_seStartLevel(Z2SE_OBJ_WTR_CLMN_UP, &mTopPos, mMaxHeight + mTargetHeightStalactiteOffset, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

    if(mIsCarryingStalactite)
        actionRockOnInit();
}

/* 80D2DC20-80D2DC2C 001640 000C+00 1/1 0/0 0/0 .text            actionRockOnInit__12daWtPillar_cFv
 */
void daWtPillar_c::actionRockOnInit() {
    mAction = ACTION_ROCK_ON;
}

/* 80D2DC2C-80D2DD0C 00164C 00E0+00 1/0 0/0 0/0 .text            actionRockOn__12daWtPillar_cFv */
void daWtPillar_c::actionRockOn() {
    const f32 differenceBetweenCurrentAndMaxHeightWithStalactiteWeight = cLib_addCalc(&mCurrentHeight, mMaxHeight - 250.0f, 3.0f / 5.0f, 10.0f, 0.1f);

    mDoAud_seStartLevel(Z2SE_OBJ_WTR_CLMN_UP, &mTopPos, mMaxHeight + mTargetHeightStalactiteOffset, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

    if(differenceBetweenCurrentAndMaxHeightWithStalactiteWeight == 0.0f)
        actionEndInit();
}

/* 80D2DD0C-80D2DD18 00172C 000C+00 1/1 0/0 0/0 .text            actionEndInit__12daWtPillar_cFv */
void daWtPillar_c::actionEndInit() {
    mAction = ACTION_END;
}

/* 80D2DD18-80D2DDB0 001738 0098+00 1/0 0/0 0/0 .text            actionEnd__12daWtPillar_cFv */
void daWtPillar_c::actionEnd() {
    mDoAud_seStartLevel(Z2SE_OBJ_WTR_CLMN_UP, &mTopPos, mMaxHeight + mTargetHeightStalactiteOffset, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
}

/* 80D2DDB0-80D2DDB8 0017D0 0008+00 0/0 0/0 1/1 .text            getPillarHeight__12daWtPillar_cFv
 */
f32 daWtPillar_c::getPillarHeight() {
    return mCurrentHeight;
}

/* 80D2DDB8-80D2DE84 0017D8 00CC+00 1/1 0/0 0/0 .text            draw__12daWtPillar_cFv */
int daWtPillar_c::draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    J3DModelData* const modelData = mpModel->getModelData(); 
    mModelRotationAnimation.entry(modelData);
    mVerticalTextureScrollAnimation.entry(modelData);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    
    return 1;
}

/* 80D2DE84-80D2DEB4 0018A4 0030+00 1/1 0/0 0/0 .text            _delete__12daWtPillar_cFv */
int daWtPillar_c::_delete() {
    dComIfG_resDelete(&mPhase, "efWater");
    return 1;
}

/* 80D2DEB4-80D2DED4 0018D4 0020+00 1/0 0/0 0/0 .text            daWtPillar_Draw__FP12daWtPillar_c
 */
int daWtPillar_Draw(daWtPillar_c* i_this) {
    return i_this->draw();
}

/* 80D2DED4-80D2DEF4 0018F4 0020+00 1/0 0/0 0/0 .text daWtPillar_Execute__FP12daWtPillar_c */
int daWtPillar_Execute(daWtPillar_c* i_this) {
    return i_this->execute();
}

/* 80D2DEF4-80D2DF14 001914 0020+00 1/0 0/0 0/0 .text            daWtPillar_Delete__FP12daWtPillar_c
 */
int daWtPillar_Delete(daWtPillar_c* i_this) {
    return i_this->_delete();
}

/* 80D2DF14-80D2DF34 001934 0020+00 1/0 0/0 0/0 .text            daWtPillar_Create__FP10fopAc_ac_c
 */
int daWtPillar_Create(fopAc_ac_c* i_this) {
    return static_cast<daWtPillar_c*>(i_this)->create();
}

daWtPillar_HIO_c::~daWtPillar_HIO_c() {
}

/* 80D2E054-80D2E21C 001A74 01C8+00 1/1 0/0 0/0 .text            __ct__12daWtPillar_cFv */
daWtPillar_c::daWtPillar_c() : dEvLib_callback_c(this) {
    // Empty
    // Having this in the header file results in inlining...
}

daWtPillar_c::~daWtPillar_c() {
}

/* 80D2EA14-80D2EA34 -00001 0020+00 1/0 0/0 0/0 .data            l_daWtPillar_Method */
actor_method_class l_daWtPillar_Method = {
    (process_method_func)daWtPillar_Create,
    (process_method_func)daWtPillar_Delete,
    (process_method_func)daWtPillar_Execute,
    0,
    (process_method_func)daWtPillar_Draw,
};

/* 80D2EA34-80D2EA64 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_WaterPillar */
extern actor_process_profile_definition g_profile_Obj_WaterPillar = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_WaterPillar,   // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daWtPillar_c),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  520,                    // mPriority
  &l_daWtPillar_Method,   // sub_method
  0x00040000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
