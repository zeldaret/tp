/**
 * @file d_a_obj_timeFire.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_timeFire.h"
#include "d/d_com_inf_game.h"
#include "dol2asm.h"

/* 80D0E8EC-80D0E910 0000EC 0024+00 1/1 0/0 0/0 .text            __ct__16daTimeFire_HIO_cFv */
daTimeFire_HIO_c::daTimeFire_HIO_c() {
    field_0x4 = 20;
}

/* 80D0E958-80D0E9B0 000158 0058+00 1/1 0/0 0/0 .text            setBaseMtx__12daTimeFire_cFv */
void daTimeFire_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
}

/* 80D0E9B0-80D0EACC 0001B0 011C+00 1/1 0/0 0/0 .text            create__12daTimeFire_cFv */
int daTimeFire_c::create() {
    fopAcM_SetupActor(this, daTimeFire_c);
    setBaseMtx();
    field_0x570 = current.pos;
    lightInit();
    mStartTime = getStartTime();
    mEndTime = getEndTime();
    int scaleParam = getScale();
    f32 fVar1 = scaleParam / 10.0f;
    mParticleScale.set(fVar1, fVar1, fVar1);
    field_0x56c = fireCheck(1);
    if (!field_0x56c) {
        cutLight();
        field_0x56d = false;
    } else {
        setLight();
        field_0x56d = true;
    }
    field_0x568 = 0;
    field_0x569 = 0;
    return cPhs_COMPLEATE_e;
}

/* 80D0EACC-80D0EB40 0002CC 0074+00 1/1 0/0 0/0 .text            lightInit__12daTimeFire_cFv */
void daTimeFire_c::lightInit() {
    field_0x594 = field_0x570;
    field_0x594.y += 10.0f;
    mLightInfluence.mPosition = field_0x594;
    mLightInfluence.mColor.r = 0xbc;
    mLightInfluence.mColor.g = 0x66;
    mLightInfluence.mColor.b = 0x42;
    mLightInfluence.mPow = 500.0f;
    mLightInfluence.mFluctuation = 1.0f;
}

/* 80D0EB40-80D0EB64 000340 0024+00 2/2 0/0 0/0 .text            setLight__12daTimeFire_cFv */
void daTimeFire_c::setLight() {
    dKy_plight_set(&mLightInfluence);
}

/* 80D0EB64-80D0EB88 000364 0024+00 2/2 0/0 0/0 .text            cutLight__12daTimeFire_cFv */
void daTimeFire_c::cutLight() {
    dKy_plight_cut(&mLightInfluence);
}

/* 80D0EB88-80D0ED68 000388 01E0+00 1/1 0/0 0/0 .text            Execute__12daTimeFire_cFv */
int daTimeFire_c::Execute() {
    bool prevFireCheck = field_0x56c;
    field_0x56c = fireCheck(0);
    if (prevFireCheck != field_0x56c) {
        if (field_0x56c == 0) {
            cutLight();
            field_0x56d = false;
        } else {
            setLight();
            field_0x56d = true;
        }
    }
    if (field_0x56d) {
        mParticleId1 = dComIfGp_particle_set(mParticleId1, 0x3ad, &field_0x570, NULL, &mParticleScale);
        mParticleId2 = dComIfGp_particle_set(mParticleId2, 0x3af, &field_0x570, NULL, &mParticleScale);
        mParticleId3 = dComIfGp_particle_set(mParticleId3, 0x3ae, &field_0x570, NULL, &mParticleScale);
        s8 reverb = dComIfGp_getReverb(fopAcM_GetRoomNo(this));
        mDoAud_seStartLevel(Z2SE_OBJ_FIRE_BURNING, &field_0x570, 0, reverb);
    }
    return 1;
}

/* 80D0ED68-80D0EF88 000568 0220+00 2/2 0/0 0/0 .text            fireCheck__12daTimeFire_cFUc */
bool daTimeFire_c::fireCheck(u8 param_1) {
    bool inTime = false;
    BOOL isSw;
    if (getSw() == 0xff) {
        isSw = 1;
    } else {
        isSw = fopAcM_isSwitch(this, getSw()) & 0xff;
    }
    if (mStartTime > mEndTime) {
        if (dKy_getdaytime_hour() >= mStartTime || dKy_getdaytime_hour() <= mEndTime) {
            inTime = true;
        }
    } else {
        if (dKy_getdaytime_hour() >= mStartTime && dKy_getdaytime_hour() <= mEndTime) {
            inTime = true;
        }
    }
    if (inTime && (isSw & 0xff) && dKy_getdaytime_hour() == mStartTime && dKy_getdaytime_minute() == 0 &&
        field_0x569 == 0 && param_1 == 0)
    {
        s8 reverb = dComIfGp_getReverb(fopAcM_GetRoomNo(this));
        mDoAud_seStart(Z2SE_OBJ_FIRE_IGNITION, &field_0x570, 0, reverb);
        field_0x569 = 1;
    }
    if (inTime && (isSw & 0xff) && dKy_getdaytime_hour() == mEndTime && dKy_getdaytime_minute() == 0 &&
        field_0x569 == 1 && param_1 == 0)
    {
        s8 reverb = dComIfGp_getReverb(fopAcM_GetRoomNo(this));
        mDoAud_seStart(Z2SE_OBJ_FIRE_OFF, &field_0x570, 0, reverb);
        field_0x569 = 2;
    }
    if (inTime && (isSw & 0xff)) {
        return 1;
    }
    field_0x569 = 0;
    return 0;
}

/* 80D0EF88-80D0EF90 000788 0008+00 1/1 0/0 0/0 .text            Draw__12daTimeFire_cFv */
int daTimeFire_c::Draw() {
    return 1;
}

/* 80D0EF90-80D0EFB8 000790 0028+00 1/1 0/0 0/0 .text            Delete__12daTimeFire_cFv */
int daTimeFire_c::Delete() {
    dKy_plight_cut(&mLightInfluence);
    return 1;
}

/* 80D0EFB8-80D0EFD8 0007B8 0020+00 1/0 0/0 0/0 .text            daTimeFire_Draw__FP12daTimeFire_c
 */
static int daTimeFire_Draw(daTimeFire_c* i_this) {
    return i_this->Draw();
}

/* 80D0EFD8-80D0EFF8 0007D8 0020+00 1/0 0/0 0/0 .text daTimeFire_Execute__FP12daTimeFire_c */
static int daTimeFire_Execute(daTimeFire_c* i_this) {
    return i_this->Execute();
}

/* 80D0EFF8-80D0F018 0007F8 0020+00 1/0 0/0 0/0 .text            daTimeFire_Delete__FP12daTimeFire_c
 */
static int daTimeFire_Delete(daTimeFire_c* i_this) {
    return i_this->Delete();
}

/* 80D0F018-80D0F038 000818 0020+00 1/0 0/0 0/0 .text            daTimeFire_Create__FP10fopAc_ac_c
 */
static int daTimeFire_Create(fopAc_ac_c* i_this) {
    return static_cast<daTimeFire_c*>(i_this)->create();
}

/* 80D0F17C-80D0F184 000014 0008+00 1/1 0/0 0/0 .bss             l_HIO */
static daTimeFire_HIO_c l_HIO;

/* 80D0F100-80D0F120 -00001 0020+00 1/0 0/0 0/0 .data            l_daTimeFire_Method */
static actor_method_class l_daTimeFire_Method = {
    (process_method_func)daTimeFire_Create,
    (process_method_func)daTimeFire_Delete,
    (process_method_func)daTimeFire_Execute,
    NULL,
    (process_method_func)daTimeFire_Draw,
};

/* 80D0F120-80D0F150 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_TimeFire */
extern actor_process_profile_definition g_profile_Obj_TimeFire = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_TimeFire,      // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daTimeFire_c),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  661,                    // mPriority
  &l_daTimeFire_Method,   // sub_method
  0x00060000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
