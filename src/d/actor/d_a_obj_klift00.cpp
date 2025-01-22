/**
 * @file d_a_obj_klift00.cpp
 * 
*/

#include "d/actor/d_a_obj_klift00.h"
#include "JSystem/JHostIO/JORMContext.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_bg_w.h"
#include "d/d_cc_uty.h"
#include "d/d_com_inf_game.h"

static int daObjKLift00_create1st(daObjKLift00_c*);
static int daObjKLift00_MoveBGDelete(daObjKLift00_c*);
static int daObjKLift00_MoveBGExecute(daObjKLift00_c*);
static int daObjKLift00_MoveBGDraw(daObjKLift00_c*);

#ifdef DEBUG
static daObjKLift00_HIO_c l_HIO;

daObjKLift00_HIO_c::daObjKLift00_HIO_c() {
    mChainGravity = -20.0f;
    mRideParameters = 0.0025f;
    mWindSwayOccuranceFactor = 0.05f;
    mWindMagnitudeChain = 0.05f;
    mWindMagnitudeFoundation = 1.25f;
    mChainHitSpeed = 15.0f;
    field_0x1C = 1.0f;
}

void daObjKLift00_HIO_c::genMessage(JORMContext* ctx) {
    // "Foothold"
    ctx->genLabel("足場", 0, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);

    // "Chain gravity"
    ctx->genSlider("チェイン重力", &mChainGravity, -40.0, 0.0, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);

    // "Ride parameters"
    ctx->genSlider("Ride パラメータ", &mRideParameters, 0.0, 0.1, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);

    // "Wind effect occurence rate"
    ctx->genSlider("風影響発生率", &mWindSwayOccuranceFactor, 0.0, 0.5, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);

    // "Chain・Wind"
    ctx->genSlider("鎖・風", &mWindMagnitudeChain, 0.0, 1000.0, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);

    // "Foundation・Wind"
    ctx->genSlider("土台・風", &mWindMagnitudeFoundation, 0.0, 1000.0, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);

    // "Chain hit speed"
    ctx->genSlider("鎖ヒット速度", &mChainHitSpeed, 0.0, 50.0, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);

    // "Hammer adjustment"
    ctx->genSlider("ハンマー調整", &field_0x1C, 0.0, 10.0, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
}
#endif

/* 8058AF38-8058AF60 000078 0028+00 1/1 0/0 0/0 .text
 * rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c              */
static void rideCallBack(dBgW* unused, fopAc_ac_c* k_lift, fopAc_ac_c* riding_actor) {
    daObjKLift00_c* const kLift = static_cast<daObjKLift00_c*>(k_lift);
    fopAc_ac_c* const rideActor = riding_actor;

    kLift->rideActor(rideActor);
}

/* 8058C3F4-8058C3F8 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static const char* l_arcName = "K_lift00";

/* 8058C3F8-8058C438 000004 0040+00 1/1 0/0 0/0 .data            l_cc_sph_src */
static dCcD_SrcSph l_cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x11}, 0x79}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x5, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 8058C438-8058C47C 000044 0044+00 1/1 0/0 0/0 .data            l_cc_cyl_src */
static dCcD_SrcCyl l_cc_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x408000, 0x11}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x5, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        300.0f, // mRadius
        100.0f // mHeight
    } // mCyl
};

/* 8058C47C-8058C49C -00001 0020+00 1/0 0/0 0/0 .data            daObjKLift00_METHODS */
static actor_method_class daObjKLift00_METHODS = {
    (process_method_func)daObjKLift00_create1st,
    (process_method_func)daObjKLift00_MoveBGDelete,
    (process_method_func)daObjKLift00_MoveBGExecute,
    0,
    (process_method_func)daObjKLift00_MoveBGDraw,
};

/* 8058C49C-8058C4CC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_KLift00 */
extern actor_process_profile_definition g_profile_Obj_KLift00 = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_KLift00,       // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjKLift00_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  673,                    // mPriority
  &daObjKLift00_METHODS,  // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

#ifdef DEBUG
static const int l_dzbidx[] = {9};
#endif

/* 8058B02C-8058B0D0 00016C 00A4+00 1/1 0/0 0/0 .text            create1st__14daObjKLift00_cFv */
cPhs__Step daObjKLift00_c::create1st() {
    mNumChainModels = getArg0();
    mNumChains = mNumChainModels + 1;

    cPhs__Step phase = static_cast<cPhs__Step>(dComIfG_resLoad(this, l_arcName));
    if(phase == cPhs_COMPLEATE_e) {
        #if DEBUG
        phase = static_cast<cPhs__Step>(MoveBGCreate(l_arcName, l_dzbidx[0], dBgS_MoveBGProc_TypicalRotY, 0x2000, NULL));
        #else
        phase = static_cast<cPhs__Step>(MoveBGCreate(l_arcName, 9, dBgS_MoveBGProc_TypicalRotY, 0x2000, NULL));
        #endif
        if(phase == cPhs_ERROR_e)
            return phase;
    }

    // "Foothold(Lv3)"
    #ifdef DEBUG
    l_HIO.entryHIO("足場(Lv3)");
    #endif

    return phase;
}

/* ############################################################################################## */
/* 8058C380-8058C38C 000000 000C+00 5/5 0/0 0/0 .rodata          l_bmdidx */
static const int l_bmdidx[3] = {5, 6, 4};

/* 8058B0D0-8058B4B0 000210 03E0+00 2/2 0/0 0/0 .text            setMtx__14daObjKLift00_cFv */
void daObjKLift00_c::setMtx() {
    Mtx nonFoundationChainRotationMatrix;
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);

    if(!getNoBaseDisp())
        mpChainBase->setBaseTRMtx(mDoMtx_stack_c::get());

    MTXCopy(mDoMtx_stack_c::get(), mCullMtx);

    s16 negativeHomeYAngle = -home.angle.y;

    // Compute rotation matrices to make the chains' rotation match their change in position
    for(int i = 0; i < mNumChainModels; i++) {
        cXyz vectorToLowerChain =  mChainPositions[i + 1].mCurrentPos - mChainPositions[i].mCurrentPos;
        cXyz crossProductXAxis;
        VECCrossProduct(&cXyz::BaseZ, &vectorToLowerChain, &crossProductXAxis);

        if(!cM3d_IsZero(vectorToLowerChain.getSquareMag())) {
            vectorToLowerChain.normalize();
            f32 vectorToLowerChainNormalizedZComponent = VECDotProduct(&vectorToLowerChain, &cXyz::BaseZ);

            if(!cM3d_IsZero(crossProductXAxis.getSquareMag()) && -1.0f <= vectorToLowerChainNormalizedZComponent && vectorToLowerChainNormalizedZComponent <= 1.0f) {
                // |vectorToLowerChainNormalizedZComponent||BaseZ|cos(t) = 1 * 1 * cos(t) = cos(t)
                f32 currentChainPairZAngle = acos(vectorToLowerChainNormalizedZComponent);
                crossProductXAxis.normalize();
                MTXRotAxisRad(nonFoundationChainRotationMatrix, &crossProductXAxis, currentChainPairZAngle);
            }
            else {
                MTXIdentity(nonFoundationChainRotationMatrix);
            }
        }
        else {
            MTXIdentity(nonFoundationChainRotationMatrix);
        }

        negativeHomeYAngle += static_cast<s16>(0x4000);
        mDoMtx_stack_c::transS(mChainPositions[i].mCurrentPos);
        mDoMtx_stack_c::concat(nonFoundationChainRotationMatrix);
        mDoMtx_stack_c::ZrotM(negativeHomeYAngle);

        MtxP const now = mDoMtx_stack_c::get();
        mChainMdlObjs[i].setMtx(now);
    }

    Mtx foundationChainRotationMatrix;
    cXyz vectorFromSecondLowestChainToFoundation = mChainPositions[mNumChainModels].mCurrentPos - mChainPositions[mNumChainModels - 1].mCurrentPos;
    cXyz crossProduct;
    Vec inverseBaseY = {0.0f, -1.0f, 0.0f};
    if(!cM3d_IsZero(vectorFromSecondLowestChainToFoundation.getSquareMag())) {
        vectorFromSecondLowestChainToFoundation.normalize();
        VECCrossProduct(&inverseBaseY, &vectorFromSecondLowestChainToFoundation, &crossProduct);
        f32 dotProduct = VECDotProduct(&vectorFromSecondLowestChainToFoundation, &inverseBaseY);

        if(!cM3d_IsZero(crossProduct.getSquareMag()) && -1.0f <= dotProduct && dotProduct <= 1.0f) {
            f32 arcCos = acos(dotProduct);
            crossProduct.normalize();
            MTXRotAxisRad(foundationChainRotationMatrix, &crossProduct, arcCos);
        }
        else {
            MTXIdentity(foundationChainRotationMatrix);
        }
    }
    else {
        MTXIdentity(foundationChainRotationMatrix);
    }

    mDoMtx_stack_c::transS(mChainPositions[mNumChainModels].mCurrentPos);
    mDoMtx_stack_c::concat(foundationChainRotationMatrix);
    mDoMtx_stack_c::YrotM(-negativeHomeYAngle);
    mpLiftPlatform->setBaseTRMtx(mDoMtx_stack_c::get());
    mDoMtx_stack_c::scaleM(scale.x, scale.y, scale.z);
    MTXCopy(mDoMtx_stack_c::get(), mNewBgMtx);
}

/* 8058B4B0-8058B5EC 0005F0 013C+00 1/1 0/0 0/0 .text rideActor__14daObjKLift00_cFP10fopAc_ac_c */
void daObjKLift00_c::rideActor(fopAc_ac_c* riding_actor) {
    if(!fopAcM_CheckCondition(this, fopAcCnd_NOEXEC_e)) {
        cXyz vectorFromFoundationChainToRideActor = riding_actor->current.pos - mChainPositions[mNumChains - 1].mCurrentPos;

        f32 weightMagnitude = 0.01f;

        if(!cM3d_IsZero(riding_actor->speed.getSquareMag()))
            weightMagnitude = 0.03f;

        #if DEBUG
        mChainPositions[mNumChains - 1].mDeltaPosVector.x -= vectorFromFoundationChainToRideActor.x * 0.0025f * (cM_rndFX(weightMagnitude) + l_HIO.mRideParameters);
        mChainPositions[mNumChains - 1].mDeltaPosVector.z -= vectorFromFoundationChainToRideActor.z * 0.0025f * (cM_rndFX(weightMagnitude) + l_HIO.mRideParameters);
        #else
        mChainPositions[mNumChains - 1].mDeltaPosVector.x -= vectorFromFoundationChainToRideActor.x * 0.0025f * (cM_rndFX(weightMagnitude) + 1.0f);
        mChainPositions[mNumChains - 1].mDeltaPosVector.z -= vectorFromFoundationChainToRideActor.z * 0.0025f * (cM_rndFX(weightMagnitude) + 1.0f);
        #endif
    }
}

/* 8058B5EC-8058B77C 00072C 0190+00 1/0 0/0 0/0 .text            CreateHeap__14daObjKLift00_cFv */
int daObjKLift00_c::CreateHeap() {
    J3DModelData* const model_data = static_cast<J3DModelData*>(dComIfG_getObjectRes(l_arcName, l_bmdidx[2]));
    JUT_ASSERT(304, model_data != 0);
    mpLiftPlatform = mDoExt_J3DModel__create(model_data, (1 << 19), 0x11000084);
    if(!mpLiftPlatform)
        return 0;

    if(!getNoBaseDisp()) {
        J3DModelData* const model_data = static_cast<J3DModelData*>(dComIfG_getObjectRes(l_arcName, l_bmdidx[0]));
        JUT_ASSERT(315, model_data != 0);
        mpChainBase = mDoExt_J3DModel__create(model_data, (1 << 19), 0x11000084);
        if(!mpChainBase)
            return 0;
    }
    else {
        mpChainBase = NULL;
    }

    mChainPositions = new ChainPos[mNumChains];
    if(!mChainPositions)
        return 0;

    mChainModelData = static_cast<J3DModelData*>(dComIfG_getObjectRes(l_arcName, l_bmdidx[1]));
    JUT_ASSERT(334, mChainModelData != 0);

    mChainMdlObjs = new dMdl_obj_c[mNumChainModels];

    return mChainMdlObjs ? TRUE : FALSE;
}

/* 8058B77C-8058B97C 0008BC 0200+00 1/0 0/0 0/0 .text            Create__14daObjKLift00_cFv */
int daObjKLift00_c::Create() {
    mpLiftPlatform->setBaseScale(scale);
    mChainPositions[0].mCurrentPos = current.pos; 
    mChainPositions[0].mDeltaPosVector = cXyz::Zero;

    for(int i = 1; i < mNumChains; i++) {
        mChainPositions[i].mDeltaPosVector = cXyz::Zero;

        mChainPositions[i].mCurrentPos.x = current.pos.x;
        mChainPositions[i].mCurrentPos.y = mChainPositions[i-1].mCurrentPos.y - 35.0f;
        mChainPositions[i].mCurrentPos.z = current.pos.z;
    }

    setMtx();
    fopAcM_SetMtx(this, mCullMtx);
    fopAcM_setCullSizeBox(this, -350.0f, (-mNumChainModels * 40.0f) - 100.0f, -350.0f, 350.0f, 10.0f, 350.0f);

    mpBgW->SetRideCallback(rideCallBack);
    mStts.Init(0xFF, 0, this);

    for(int i = 0; i < 8; i++) {
        mChainSphereColliders[i].Set(l_cc_sph_src);
        mChainSphereColliders[i].SetStts(&mStts);
    }

    mCylinderCollider.Set(l_cc_cyl_src);
    mCylinderCollider.SetStts(&mStts);
    mStopSwingingFrames = 0;

    if(getLock())
        mStopSwingingFrames = 5;

    return 1;
}

/* 8058B97C-8058BEEC 000ABC 0570+00 1/0 0/0 0/0 .text            Execute__14daObjKLift00_cFPPA3_A4_f
 */
int daObjKLift00_c::Execute(Mtx** i_mtx) {
    // Apply wind sway
    #if DEBUG
    if(cM_rndF(1.0f) < l_HIO.mWindSwayOccuranceFactor) {
        for(int i = 1; i < mNumChains; i++) {
            cXyz windVector = dKyw_get_wind_vecpow();
            windVector *= cM_rndF(l_HIO.mWindMagnitudeChain);
            mChainPositions[i].mDeltaPosVector += windVector;

            if(i == mNumChains - 1) {
                windVector *= cM_rndF(l_HIO.mWindMagnitudeFoundation);
                mChainPositions[i].mDeltaPosVector += windVector;
            }
        }
    }
    #else
    if(cM_rndF(1.0f) < 0.05f) {
        for(int i = 1; i < mNumChains; i++) {
            cXyz windVector = dKyw_get_wind_vecpow();
            VECScale(&windVector, &windVector, cM_rndF(0.05f));
            VECAdd(&mChainPositions[i].mDeltaPosVector, &windVector, &mChainPositions[i].mDeltaPosVector);

            if(i == mNumChains - 1) {
                VECScale(&windVector, &windVector, cM_rndF(1.25f));
                VECAdd(&mChainPositions[i].mDeltaPosVector, &windVector, &mChainPositions[i].mDeltaPosVector);
            }
        }
    }
    #endif

    // Check if player hit chains, and play sfx & move the chains accordingly
    bool playedHitSfx = false;
    #ifdef DEBUG
    for(int i = 0; i < 8; i++) {
        const s32 currentChainIdx = (mNumChains - 1) - (i * 2);
        if(currentChainIdx >= 0 && mChainSphereColliders[i].ChkTgHit() ) {
            dCcD_GObjInf* const hitObj = static_cast<dCcD_GObjInf*>(mChainSphereColliders[i].GetTgHitObj());
            fopAc_ac_c* const hitObjActor = dCc_GetAc(hitObj->GetAc());
            cXyz vectorFromHitActorToCurrentChain = mChainPositions[currentChainIdx].mCurrentPos - hitObjActor->current.pos;
            if(!cM3d_IsZero(vectorFromHitActorToCurrentChain.getSquareMag())) {
                vectorFromHitActorToCurrentChain.normalize();
                vectorFromHitActorToCurrentChain *= l_HIO.mChainHitSpeed;
                mChainPositions[currentChainIdx].mDeltaPosVector += vectorFromHitActorToCurrentChain;
            }

            if(!playedHitSfx) {
                playedHitSfx = true;
                Z2GetAudioMgr()->seStart(mChainSphereColliders[i].getHitSeID(hitObj->GetAtSe(), 0), mChainSphereColliders[i].GetCP(), 53, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
            }
        }
    }
    #else
    for(int i = 0; i < 8; i++) {
        const s32 currentChainIdx = (mNumChains - 1) - (i * 2);
        if(currentChainIdx >= 0 && mChainSphereColliders[i].ChkTgHit() ) {
            dCcD_GObjInf* const hitObj = static_cast<dCcD_GObjInf*>(mChainSphereColliders[i].GetTgHitObj());
            fopAc_ac_c* const hitObjActor = dCc_GetAc(hitObj->GetAc());
            cXyz vectorFromHitActorToCurrentChain = mChainPositions[currentChainIdx].mCurrentPos - hitObjActor->current.pos;
            if(!cM3d_IsZero(vectorFromHitActorToCurrentChain.getSquareMag())) {
                vectorFromHitActorToCurrentChain.normalize();
                VECScale(&vectorFromHitActorToCurrentChain, &vectorFromHitActorToCurrentChain, 15.0f);
                VECAdd(&mChainPositions[currentChainIdx].mDeltaPosVector, &vectorFromHitActorToCurrentChain, &mChainPositions[currentChainIdx].mDeltaPosVector);
            }

            if(!playedHitSfx) {
                playedHitSfx = true;
                Z2GetAudioMgr()->seStart(mChainSphereColliders[i].getHitSeID(hitObj->GetAtSe(), 0), mChainSphereColliders[i].GetCP(), 53, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
            }
        }
    }
    #endif

    // Apply chain gravity
    #if DEBUG
    mChainPositions[0].mDeltaPosVector = cXyz::Zero;
    mChainPositions[0].mCurrentPos = current.pos;
    for(int i = 1; i < mNumChains; i++) {
        mChainPositions[i].mPrevPos = mChainPositions[i].mCurrentPos;
        mChainPositions[i].mDeltaPosVector.y += l_HIO.mChainGravity;
        mChainPositions[i].mCurrentPos += mChainPositions[i].mDeltaPosVector;
    }
    #else
    mChainPositions[0].mDeltaPosVector = cXyz::Zero;
    mChainPositions[0].mCurrentPos = current.pos;
    for(int i = 1; i < mNumChains; i++) {
        mChainPositions[i].mPrevPos = mChainPositions[i].mCurrentPos;
        mChainPositions[i].mDeltaPosVector.y += -4.0f;
        VECAdd(&mChainPositions[i].mCurrentPos, &mChainPositions[i].mDeltaPosVector, &mChainPositions[i].mCurrentPos);
    }
    #endif

    for(int i = 1; i < mNumChains - 1; i++) {
        if(i != mNumChains - 1) {
            mChainPositions[i].mCurrentPos = (mChainPositions[i - 1].mCurrentPos + mChainPositions[i].mCurrentPos + mChainPositions[i + 1].mCurrentPos) * 0.33333334f;
        }
    }

    for(int i = 1; i < mNumChains; i++) {
        cXyz vectorFromChainAboveToCurrentChain = mChainPositions[i].mCurrentPos - mChainPositions[i - 1].mCurrentPos;
        if(mStopSwingingFrames > 0) {
            vectorFromChainAboveToCurrentChain.set(0.0f, -1.0f, 0.0f); 
        }
        else {
            if(!cM3d_IsZero(vectorFromChainAboveToCurrentChain.getSquareMag()))
                vectorFromChainAboveToCurrentChain.normalize(); 
            else
                vectorFromChainAboveToCurrentChain.set(0.0f, -1.0f, 0.0f); 
        }
        #if DEBUG
            vectorFromChainAboveToCurrentChain *= 35.0f;
        #else
        VECScale(&vectorFromChainAboveToCurrentChain, &vectorFromChainAboveToCurrentChain, 35.0f);
        #endif
        mChainPositions[i].mCurrentPos = vectorFromChainAboveToCurrentChain + mChainPositions[i - 1].mCurrentPos;
        mChainPositions[i].mDeltaPosVector = mChainPositions[i].mCurrentPos - mChainPositions[i].mPrevPos;
    }

    if(mStopSwingingFrames > 0) {
        mStopSwingingFrames--;
        if(mStopSwingingFrames < 0)
            mStopSwingingFrames = 0;
    }

    for(int i = 0; i < 8; i++) {
        const s32 currentChainIdx = (mNumChains - 1) - (i * 2);
        if(currentChainIdx >= 0) {
            mChainSphereColliders[i].SetC(mChainPositions[currentChainIdx].mCurrentPos);
            dComIfG_Ccsp()->Set(&mChainSphereColliders[i]);
        }
    }

    mStts.Move();
    setMtx();
    *i_mtx = &mNewBgMtx;

    return 1;
}

/* 8058BEEC-8058C014 00102C 0128+00 1/0 0/0 0/0 .text            Draw__14daObjKLift00_cFv */
int daObjKLift00_c::Draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpLiftPlatform, &tevStr);

    if(!getNoBaseDisp())
        g_env_light.setLightTevColorType_MAJI(mpChainBase, &tevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpLiftPlatform);
    
    if(!getNoBaseDisp())
        mDoExt_modelUpdateDL(mpChainBase);

    dMdl_c* const dMdl = dMdl_mng_c::entry(mChainModelData, 0, current.roomNo);
    if(dMdl) {
        for(int i = 0; i < mNumChainModels; i++)
            dMdl->entryObj(&mChainMdlObjs[i]);
    }

    dComIfGd_setList();

    return 1;
}

/* 8058C014-8058C050 001154 003C+00 1/0 0/0 0/0 .text            Delete__14daObjKLift00_cFv */
int daObjKLift00_c::Delete() {
    dComIfG_resDelete(this, l_arcName);

    #ifdef DEBUG
    l_HIO.removeHIO();
    #endif

    return 1;
}

/* 8058C050-8058C164 001190 0114+00 1/0 0/0 0/0 .text daObjKLift00_create1st__FP14daObjKLift00_c
 */
static int daObjKLift00_create1st(daObjKLift00_c* i_this) {
    fopAcM_SetupActor(i_this, daObjKLift00_c);
    return i_this->create1st();
}

/* 8058C2C0-8058C2E0 001400 0020+00 1/0 0/0 0/0 .text
 * daObjKLift00_MoveBGDelete__FP14daObjKLift00_c                */
static int daObjKLift00_MoveBGDelete(daObjKLift00_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 8058C2E0-8058C300 001420 0020+00 1/0 0/0 0/0 .text
 * daObjKLift00_MoveBGExecute__FP14daObjKLift00_c               */
static int daObjKLift00_MoveBGExecute(daObjKLift00_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 8058C300-8058C32C 001440 002C+00 1/0 0/0 0/0 .text daObjKLift00_MoveBGDraw__FP14daObjKLift00_c
 */
static int daObjKLift00_MoveBGDraw(daObjKLift00_c* i_this) {
    return i_this->MoveBGDraw();
}
