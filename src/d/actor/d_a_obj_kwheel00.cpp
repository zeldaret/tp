/**
 * @file d_a_obj_kwheel00.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_kwheel00.h"
#include "JSystem/JHostIO/JORMContext.h"
#include "d/actor/d_a_obj_lv3Water.h"
#include "d/d_com_inf_game.h"
#include "SSystem/SComponent/c_math.h"
#include "m_Do/m_Do_hostIO.h"

static int daObjKWheel00_create1st(daObjKWheel00_c*);
static int daObjKWheel00_MoveBGDelete(daObjKWheel00_c*);
static int daObjKWheel00_MoveBGExecute(daObjKWheel00_c*);
static int daObjKWheel00_MoveBGDraw(daObjKWheel00_c*);

#ifdef DEBUG
static daObjKWheel00_HIO_c l_HIO;

daObjKWheel00_HIO_c::daObjKWheel00_HIO_c() {
    mTargetZAngularSpeed = 64;
    mZAngularAcceleration = 2;
}

void daObjKWheel00_HIO_c::genMessage(JORMContext* ctx) {
    // "Water wheel"
    ctx->genLabel("水車", 0, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);

    // "Rotational speed(short)"
    ctx->genSlider("回転速度(short)",&mTargetZAngularSpeed, 0, 0x4000, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);

    // "Rotational acceleration(short)"
    ctx->genSlider("回転加速度(short)",&mZAngularAcceleration, 0, 32, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
}
#endif

/* ############################################################################################## */
/* 80C4E800-80C4E808 000000 0008+00 2/2 0/0 0/0 .rodata          l_dzbidx */
static const u32 l_dzbidx[2] = {7, 7};

/* 80C4E870-80C4E878 -00001 0008+00 3/3 0/0 0/0 .data            l_arcName */
static const char* l_arcName[2] = { "K_Wheel00", "S_wheel00" }; // K = Kinto, S = Shirogane?

/* 80C4D6F8-80C4D7A8 000078 00B0+00 1/1 0/0 0/0 .text            create1st__15daObjKWheel00_cFv */
int daObjKWheel00_c::create1st() {
    m_type = static_cast<Type_e>(getType());
    JUT_ASSERT(118, m_type == 0 || m_type == 1);

    cPhs__Step phase = static_cast<cPhs__Step>(dComIfG_resLoad(this, l_arcName[m_type]));
    if(phase == cPhs_COMPLEATE_e) {
        setMtx();

        phase = static_cast<cPhs__Step>(MoveBGCreate(l_arcName[m_type], l_dzbidx[m_type], NULL, 0x4000, &mNewBgMtx));

        if(phase == cPhs_ERROR_e)
            return phase;

        #ifdef DEBUG
        // "Water wheel(Lv3)"
        l_HIO.entryHIO("水車(Lv3)");
        #endif
    }
    return phase;

}

/* 80C4D7A8-80C4D86C 000128 00C4+00 1/1 0/0 0/0 .text            searchLv3Water__FPvPv */
static void* searchLv3Water(void* param_0, void* i_this) {
    daLv3Water_c* const lv3Water = static_cast<daLv3Water_c*>(param_0);
    daObjKWheel00_c* const kWheel00 = static_cast<daObjKWheel00_c*>(i_this);

    if(lv3Water && fopAcM_IsActor(lv3Water) && fopAcM_GetProfName(lv3Water) == PROC_Obj_Lv3Water) {
        if(
            (fopAcM_GetRoomNo(kWheel00) == 7 && lv3Water->getType() == 8) || 
            (fopAcM_GetRoomNo(kWheel00) == 11 && lv3Water->getType() == 14) ||
            (fopAcM_GetRoomNo(kWheel00) == 2 && ((kWheel00->getSwNo() == 9 && lv3Water->getType() == 13) || (kWheel00->getSwNo() == 18 && lv3Water->getType() == 12)))
        ) 
        {
            return param_0;
        }
    }
    return NULL;
}

/* ############################################################################################## */
/* 80C4E808-80C4E810 000008 0008+00 1/1 0/0 0/0 .rodata          l_bmdidx */
static const int l_bmdidx[2] = {4, 4};

/* 80C4E810-80C4E840 000010 0030+00 1/1 0/0 0/0 .rodata          l_cull_box */
const Vec l_cull_box[4] = {
    {-830.0f, -830.0f, -2500.0f}, {830.0f, 830.0f, 200.0f}, // Type 0
    {-560.0f, -560.0f, -350.0f}, {560.0f, 560.0f, 350.0f}   // Type 1
};

/* 80C4D86C-80C4D9B8 0001EC 014C+00 2/2 0/0 0/0 .text            setMtx__15daObjKWheel00_cFv */
void daObjKWheel00_c::setMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(current.angle.y);
    mDoMtx_stack_c::ZrotM(current.angle.z);
    
    MTXCopy(mDoMtx_stack_c::get(), mTransformMtx);
    MTXCopy(mDoMtx_stack_c::get(), mNewBgMtx);

    if(mZAngularVelocity) {
        mDoMtx_stack_c::copy(mTransformMtx);

        if(m_type == TYPE_LARGE_GOLD)
            mDoMtx_stack_c::transM(cM_rndFX(1.0f), cM_rndFX(1.0f), cM_rndFX(1.0f));
        else
            mDoMtx_stack_c::transM(cM_rndFX(0.1f), cM_rndFX(0.1f), cM_rndFX(0.1f));

        MTXCopy(mDoMtx_stack_c::get(), mTransformMtx);
    }
}

/* 80C4D9B8-80C4DA38 000338 0080+00 1/0 0/0 0/0 .text            CreateHeap__15daObjKWheel00_cFv */
int daObjKWheel00_c::CreateHeap() {
    J3DModelData* const model_data = static_cast<J3DModelData*>(dComIfG_getObjectRes(l_arcName[m_type], l_bmdidx[m_type]));
    JUT_ASSERT(206, model_data != 0);

    mpModel = mDoExt_J3DModel__create(model_data, (1 << 19), 0x11000084);
    return !mpModel ? 0 : 1;
}

/* ############################################################################################## */
/* 80C4E878-80C4E8B8 000008 0040+00 1/1 0/0 0/0 .data            l_sphSrc */
static dCcD_SrcSph l_sphSrc = {
    {
        {0x0, {{AT_TYPE_0, 0x1, 0x0}, {0xd8fbfdff, 0x0}, 0x79}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x1}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 160.0f} // mSph
    } // mSphAttr
};

/* 80C4E8B8-80C4E8C0 000048 0008+00 2/2 0/0 0/0 .data            l_se_angle */
u16 l_se_angle[4] = {0, 0x3FFF, 0x7FFF, 0xBFFF}; // {0°, 90°, 180°, 270°}

/* 80C4DA38-80C4DBBC 0003B8 0184+00 1/0 0/0 0/0 .text            Create__15daObjKWheel00_cFv */
int daObjKWheel00_c::Create() {
    mpModel->setBaseTRMtx(mTransformMtx);
    fopAcM_SetMtx(this, mTransformMtx);

    mZAngularVelocity = 0;
    if(getSwNo() != 0xFF && fopAcM_isSwitch(this, getSwNo())) {
        #ifdef DEBUG
        if(getArg0())
            mZAngularVelocity = l_HIO.mTargetZAngularSpeed;
        else
            mZAngularVelocity = -l_HIO.mTargetZAngularSpeed;
        #else
        if(getArg0())
            mZAngularVelocity = 64;
        else
            mZAngularVelocity = -64;
        #endif
    }

    const u32 minCullIdx = m_type << 1;
    const u32 maxCullIdx = minCullIdx + 1;
    fopAcM_setCullSizeBox(this, l_cull_box[minCullIdx].x, l_cull_box[minCullIdx].y, l_cull_box[minCullIdx].z, l_cull_box[maxCullIdx].x, l_cull_box[maxCullIdx].y, l_cull_box[maxCullIdx].z);

    if(m_type == TYPE_SMALL_PLATINUM)
        fopAcM_SetStatus(this, 0);

    mStts.Init(254, 0, this);

    for(int i = 0; i < 4; i++) {
        mLargeGearTeethSphereColliders[i].SetStts(&mStts);
        mLargeGearTeethSphereColliders[i].Set(l_sphSrc);
    }

    mPrevQuadrantalZAngle = DEG_INVALID;

    for(int i = 0; i < 4; i++) {
        if(current.angle.z == l_se_angle[i])
            mPrevQuadrantalZAngle = static_cast<QuadrantalAngle_e>(i);
    }

    return 1;
}

/* 80C4E8C0-80C4E920 000050 0060+00 1/1 0/0 0/0 .data            l_pos */
static Vec l_pos[8] = {
    {830.0f, 0.0f, 0.0f}, {0.0f, 830.0f, 0.0f},
    {-830.0f, 0.0f, 0.0f}, {0.0f, -830.0f, 0.0f},
    {560.0f, 0.0f, 0.0f}, {0.0f, 560.0f, 0.0f},
    {-560.0f, 0.0f, 0.0f}, {0.0f, -560.0f, 0.0f}
};

/* 80C4DBBC-80C4E1B0 00053C 05F4+00 1/0 0/0 0/0 .text Execute__15daObjKWheel00_cFPPA3_A4_f */
int daObjKWheel00_c::Execute(Mtx** i_mtx) {
    eventUpdate();

    if(mZAngularVelocity == 0 && fopAcM_isSwitch(this, getSwNo())) {
        if(getEvent() != 0xFF)
            orderEvent(getEvent(), 0xFF, 1);
        else
            eventStart();
    }

    // Only draw particles and play SFX if gear is moving
    if(mZAngularVelocity != 0) {
        // Increase angular velocity via an arithmetic sequence with a ratio of 2
        #ifdef DEBUG
        if(mZAngularVelocity > 0) {
            if(mZAngularVelocity < l_HIO.mTargetZAngularSpeed)
                mZAngularVelocity += l_HIO.mZAngularAcceleration;
        }
        else if(mZAngularVelocity > -l_HIO.mTargetZAngularSpeed) {
            mZAngularVelocity -= l_HIO.mZAngularAcceleration;
        }
        #else
        if(mZAngularVelocity > 0) {
            if(mZAngularVelocity < 64)
                mZAngularVelocity += 2;
        }
        else if(mZAngularVelocity > -64) {
            mZAngularVelocity -= 2;
        }
        #endif

        cXyz sfxPos = current.pos;
        u32 wheelSfxID;
        if(m_type == TYPE_LARGE_GOLD) {
            sfxPos.y -= 830.0f; // Offset of tip of large gear tooth
            wheelSfxID =  Z2SE_OBJ_WTR_WHL_1;
        }
        else {
            sfxPos.y -= 560.0f; // Offset of tip of large gear tooth
            wheelSfxID =  Z2SE_OBJ_WTR_WHL_2;
        }

        Z2GetAudioMgr()->seStartLevel(wheelSfxID, &sfxPos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);

        u16 currentIntermediateZAngle = current.angle.z;
        s32 totalZAngleChange = mZAngularVelocity;

        // Assume clockwise movement, change to counter-clockwise if angular velocity is negative
        s32 angleStep = 1;
        if(totalZAngleChange < 0) {
            totalZAngleChange *= -1;
            angleStep = -1;
        }

        bool passedQuadrantalAngle = false;
        for(int angleOffset = 0; angleOffset < totalZAngleChange; angleOffset++) {
            for(int quadrantalAngle = DEG_0; quadrantalAngle < DEG_MAX; quadrantalAngle++) {
                // Only draw particles & make splash sfx if a quadrantal angle is passed (reults in larger gear teeth hitting water)
                if(currentIntermediateZAngle == l_se_angle[quadrantalAngle] && quadrantalAngle != mPrevQuadrantalZAngle) {
                    passedQuadrantalAngle = true;
                    mPrevQuadrantalZAngle = static_cast<QuadrantalAngle_e>(quadrantalAngle);

                    u32 splashSfxID;
                    if(m_type == TYPE_LARGE_GOLD)
                        splashSfxID = Z2SE_OBJ_WTR_WHL_1_SPLSH;
                    else
                        splashSfxID = Z2SE_OBJ_WTR_WHL_2_SPLSH;

                    Z2GetAudioMgr()->seStart(splashSfxID, &sfxPos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
                    
                    if(fopAcM_GetRoomNo(this) == 7) {
                        daLv3Water_c* const lv3Water = static_cast<daLv3Water_c*>(fopAcM_Search(searchLv3Water, this));
                        if(lv3Water) {
                            dComIfGp_particle_set(0x8AB0,&lv3Water->current.pos,NULL, NULL);
                            dComIfGp_particle_set(0x8AB1,&lv3Water->current.pos,NULL, NULL);
                        }
                    }
                    else if(fopAcM_GetRoomNo(this) == 11) {
                        daLv3Water_c* const lv3Water = static_cast<daLv3Water_c*>(fopAcM_Search(searchLv3Water, this));
                        if(lv3Water) {
                            dComIfGp_particle_set(0x8ABD,&lv3Water->current.pos,NULL, NULL);
                            dComIfGp_particle_set(0x8ABE,&lv3Water->current.pos,NULL, NULL);
                        }
                    }
                    else if(fopAcM_GetRoomNo(this) == 2) {
                        daLv3Water_c* const lv3Water = static_cast<daLv3Water_c*>(fopAcM_Search(searchLv3Water, this));
                        if(lv3Water) {
                            if(getSwNo() == 9) {
                                dComIfGp_particle_set(0x8B04,&lv3Water->current.pos,NULL, NULL);
                                dComIfGp_particle_set(0x8B05,&lv3Water->current.pos,NULL, NULL);
                            }
                            else {
                                dComIfGp_particle_set(0x8B06,&lv3Water->current.pos,NULL, NULL);
                                dComIfGp_particle_set(0x8B07,&lv3Water->current.pos,NULL, NULL);
                            }
                        }
                    }

                    break;
                }
            }

            if(passedQuadrantalAngle == true) break;
            currentIntermediateZAngle += angleStep;
        }
    }

    current.angle.z += mZAngularVelocity;
    setMtx();
    mpModel->setBaseTRMtx(mTransformMtx);
    *i_mtx = &mNewBgMtx;

    // Only update colliders if gear is moving
    if(mZAngularVelocity) {
        for(int sphereColliderIdx = 0; sphereColliderIdx < 4; sphereColliderIdx++) {
            cXyz largeGearToothPos;
            MTXMultVec(mNewBgMtx, &l_pos[sphereColliderIdx + (m_type << 2)], &largeGearToothPos);
            mLargeGearTeethSphereColliders[sphereColliderIdx].SetC(largeGearToothPos);

            if(m_type == TYPE_LARGE_GOLD)
                mLargeGearTeethSphereColliders[sphereColliderIdx].SetR(160.0f);
            else
                mLargeGearTeethSphereColliders[sphereColliderIdx].SetR(140.0f);
            
            dComIfG_Ccsp()->Set(&mLargeGearTeethSphereColliders[sphereColliderIdx]);
        }
    }

    return 1;
}

/* 80C4E1B0-80C4E254 000B30 00A4+00 1/0 0/0 0/0 .text            Draw__15daObjKWheel00_cFv */
int daObjKWheel00_c::Draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();

    return 1;
}

/* 80C4E254-80C4E298 000BD4 0044+00 1/0 0/0 0/0 .text            Delete__15daObjKWheel00_cFv */
int daObjKWheel00_c::Delete() {
    dComIfG_resDelete(this, l_arcName[m_type]);

    #ifdef DEBUG
    l_HIO.removeHIO();
    #endif

    return 1;
}

/* 80C4E298-80C4E2C0 000C18 0028+00 2/1 0/0 0/0 .text            eventStart__15daObjKWheel00_cFv */
bool daObjKWheel00_c::eventStart() {
    #if DEBUG
    if(getArg0())
        mZAngularVelocity = l_HIO.mZAngularAcceleration;
    else
        mZAngularVelocity = -l_HIO.mZAngularAcceleration;
    #else
    if(getArg0())
        mZAngularVelocity = 2;
    else
        mZAngularVelocity = -2;
    #endif

    return true;
}

/* ############################################################################################## */
/* 80C4E920-80C4E940 -00001 0020+00 1/0 0/0 0/0 .data            daObjKWheel00_METHODS */
static actor_method_class daObjKWheel00_METHODS = {
    (process_method_func)daObjKWheel00_create1st,
    (process_method_func)daObjKWheel00_MoveBGDelete,
    (process_method_func)daObjKWheel00_MoveBGExecute,
    0,
    (process_method_func)daObjKWheel00_MoveBGDraw,
};

/* 80C4E940-80C4E970 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_KWheel00 */
extern actor_process_profile_definition g_profile_Obj_KWheel00 = {
  fpcLy_CURRENT_e,         // mLayerID
  3,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_Obj_KWheel00,       // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daObjKWheel00_c), // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  662,                     // mPriority
  &daObjKWheel00_METHODS,  // sub_method
  0x00040100,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80C4E2C0-80C4E394 000C40 00D4+00 1/0 0/0 0/0 .text daObjKWheel00_create1st__FP15daObjKWheel00_c
 */
static int daObjKWheel00_create1st(daObjKWheel00_c* i_this) {
    fopAcM_SetupActor(i_this, daObjKWheel00_c);
    return i_this->create1st();
}

/* 80C4E5D0-80C4E5F0 000F50 0020+00 1/0 0/0 0/0 .text
 * daObjKWheel00_MoveBGDelete__FP15daObjKWheel00_c              */
static int daObjKWheel00_MoveBGDelete(daObjKWheel00_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C4E5F0-80C4E610 000F70 0020+00 1/0 0/0 0/0 .text
 * daObjKWheel00_MoveBGExecute__FP15daObjKWheel00_c             */
static int daObjKWheel00_MoveBGExecute(daObjKWheel00_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C4E610-80C4E63C 000F90 002C+00 1/0 0/0 0/0 .text
 * daObjKWheel00_MoveBGDraw__FP15daObjKWheel00_c                */
static int daObjKWheel00_MoveBGDraw(daObjKWheel00_c* i_this) {
    return i_this->MoveBGDraw();
}
