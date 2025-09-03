/**
* @file d_a_coach_fire.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_coach_fire.h"

/* 806583E8-806583F8 000000 0010+00 3/3 0/0 0/0 .rodata          M_attr__13daCoachFire_c */
CoachFireAttr const daCoachFire_c::M_attr = {
    50.0f,  // radius
    4.0f,   // field_0x04
    36,     // field_0x08
    255,    // colorR
    100,    // colorG
    0,      // colorB
    700.0f, // pow
};

/* 80657B78-80657C48 000078 00D0+00 1/1 0/0 0/0 .text            create_init__13daCoachFire_cFv */
void daCoachFire_c::create_init() {
    fopAcM_setStageLayer(this);
    fopAcM_setCullSizeBox(this, -100.0, -10.0, -100.0, 100.0, 200.0, 100.0);
    attention_info.flags = 0x101;
    attention_info.distances[fopAc_attn_LOCK_e] = 0x24;
    attention_info.distances[fopAc_attn_CHECK_e] = 0x22;
    mLightInfluence.mPosition = current.pos;
    mLightInfluence.mColor.r = attr().colorR;
    mLightInfluence.mColor.g = attr().colorG;
    mLightInfluence.mColor.b = attr().colorB;
    mLightInfluence.mPow = attr().pow;
    dKy_plight_set(&mLightInfluence);
    mpMtx = NULL;
    initBaseMtx();
    initCcSphere();
}

/* 80657C48-80657CA8 000148 0060+00 1/1 0/0 0/0 .text            initBaseMtx__13daCoachFire_cFv */
void daCoachFire_c::initBaseMtx() {
    daNpcCoach_c* coach = (daNpcCoach_c*)fpcM_SearchByID(parentActorID);
    if (coach != NULL) {
        mPos = current.pos;
        mpMtx = coach->getCoachMtx();
    }
    setBaseMtx();
}

/* 80657CA8-80657D2C 0001A8 0084+00 1/1 0/0 0/0 .text            setBaseMtx__13daCoachFire_cFv */
void daCoachFire_c::setBaseMtx() {
    if (mpMtx != NULL) {
        mDoMtx_stack_c::copy(*mpMtx);
        mDoMtx_stack_c::multVec(&mPos, &current.pos);
        attention_info.position = current.pos;
        eyePos = current.pos;
    }
}

/* 80658408-80658448 000020 0040+00 1/1 0/0 0/0 .rodata
 * ccSphSrc$localstatic3$initCcSphere__13daCoachFire_cFv        */

/* 80657D2C-80657D9C 00022C 0070+00 1/1 0/0 0/0 .text            initCcSphere__13daCoachFire_cFv */
void daCoachFire_c::initCcSphere() {
    static const dCcD_SrcSph ccSphSrc = {
        {
            {0, {{AT_TYPE_0, 0, 0}, {0x00010000, 0x11}, 0}},  // mObj
            {dCcD_SE_NONE, 0, 0, 0, 0},                       // mGObjAt
            {dCcD_SE_NONE, 0, 0, 0, 0x4},                     // mGObjTg
            {0},                                              // mGObjCo
        },                                                    // mObjInf
        {{{0.0f, 0.0f, 0.0f}, 50.0f}}                         // mSph
    };  // mSphAttr

    mStts.Init(0xFF, 0xFF, this);
    mSph.Set(ccSphSrc);
    mSph.SetStts(&mStts);
    mSph.SetC(current.pos);
    mSph.SetR(attr().radius);
}

int daCoachFire_c::draw() {
    mParticleKey = dComIfGp_particle_set(mParticleKey, 0x8113, &current.pos, NULL, NULL, NULL, 0xFF,
                                         NULL, -1, NULL, NULL, NULL);
    JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(mParticleKey);
    if (emitter != NULL) {
        speed = current.pos - old.pos;
        speed.y = 0.0f;
        speed *= 0.9f;
        emitter->setParticleCallBackPtr(dPa_control_c::getParticleTracePCB());
        emitter->setUserWork((u32)(&speed));
    }
    return 1;
}

/* 80657D9C-80657EA0 00029C 0104+00 1/0 0/0 0/0 .text            daCoachFire_Draw__FP13daCoachFire_c
 */
static int daCoachFire_Draw(daCoachFire_c* i_this) {
    return i_this->draw();
}

void daCoachFire_c::setCcSphere() {
    if (noHitTimer != 0) {
        mSph.ClrTgHit();
    } else {
        mSph.SetC(current.pos);
        dComIfG_Ccsp()->Set(&mSph);
    }
}

void daCoachFire_c::setNoHitTimer() {
    noHitTimer = 20;
}

int daCoachFire_c::execute() {
    daNpcCoach_c* coach = (daNpcCoach_c*)fpcM_SearchByID(parentActorID);
    if (noHitTimer > 0) {
        noHitTimer = noHitTimer - 1;
    }
    if (mSph.ChkTgHit() && noHitTimer == 0) {
        if (coach != NULL) {
            coach->deleteFireArrow(fopAcM_GetID(this));
        }
        setNoHitTimer();
    }
    if (coach != NULL && coach->checkCoachBlazing()) {
        dAttention_c* attn = dComIfGp_getAttention();
        if (attn->LockonTruth()) {
            if (attn->LockonTarget(0) != this) {
                if (coach->deleteFireArrowFromList(fopAcM_GetID(this)) != NULL) {
                    fopAcM_delete(this);
                }
            }
        } else if (coach->deleteFireArrowFromList(fopAcM_GetID(this)) != NULL) {
            fopAcM_delete(this);
        }
    }
    if (mpMtx != NULL) {
        mDoMtx_stack_c::copy(*mpMtx);
        mDoMtx_stack_c::multVec(&mPos, &current.pos);
        attention_info.position = current.pos;
        eyePos = current.pos;
    }
    setCcSphere();
    mLightInfluence.mPosition = current.pos;
    return 1;
}

/* 80657EA0-80658094 0003A0 01F4+00 1/0 0/0 0/0 .text daCoachFire_Execute__FP13daCoachFire_c */
static int daCoachFire_Execute(daCoachFire_c* i_this) {
    return i_this->execute();
}

/* 80658094-8065809C 000594 0008+00 1/0 0/0 0/0 .text daCoachFire_IsDelete__FP13daCoachFire_c */
static bool daCoachFire_IsDelete(daCoachFire_c* i_this) {
    return true;
}

daCoachFire_c::~daCoachFire_c() {
    dKy_plight_cut(&mLightInfluence);
}

/* 8065809C-806581C0 00059C 0124+00 1/0 0/0 0/0 .text daCoachFire_Delete__FP13daCoachFire_c */
static int daCoachFire_Delete(daCoachFire_c* i_this) {
    i_this->~daCoachFire_c();
    return 1;
}

/* 806581C0-806582AC 0006C0 00EC+00 1/0 0/0 0/0 .text            daCoachFire_Create__FP10fopAc_ac_c
 */
static int daCoachFire_Create(fopAc_ac_c* i_this) {
    fopAcM_SetupActor(i_this, daCoachFire_c);
    static_cast<daCoachFire_c*>(i_this)->create_init();
    return cPhs_COMPLEATE_e;
}

/* 80658454-8065845A 00006C 0006+00 0/0 0/0 0/0 .rodata          None */
static char* stringBase_80658454 = "Coach";

/* 80658454-80658454 00006C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/* 8065845C-8065847C -00001 0020+00 1/0 0/0 0/0 .data            l_daCoachFire_Method */
static actor_method_class l_daCoachFire_Method = {
    (process_method_func)daCoachFire_Create,  (process_method_func)daCoachFire_Delete,
    (process_method_func)daCoachFire_Execute, (process_method_func)daCoachFire_IsDelete,
    (process_method_func)daCoachFire_Draw,
};

/* 8065847C-806584AC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_COACH_FIRE */
extern actor_process_profile_definition g_profile_COACH_FIRE = {
    fpcLy_CURRENT_e,         // mLayerID
    3,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_COACH_FIRE,         // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daCoachFire_c),   // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    332,                     // mPriority
    &l_daCoachFire_Method,   // sub_method
    0x00044000,              // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
