/**
 * d_a_obj_fireWood.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_fireWood.h"
#include "d/d_s_play.h"

/* 80BE762C-80BE7668 0000EC 003C+00 1/1 0/0 0/0 .text            __ct__16daFireWood_HIO_cFv */
daFireWood_HIO_c::daFireWood_HIO_c() {
    mFlameOffsetY = 0.0f;
    mCollisionRadius = 60.0f;
    mWaitTime = 20;
}

/* 80BE76B0-80BE7708 000170 0058+00 1/1 0/0 0/0 .text            setBaseMtx__12daFireWood_cFv */
void daFireWood_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(current.angle.x, current.angle.y, current.angle.z);
}

/* 80BE8144-80BE8154 000014 0010+00 3/3 0/0 0/0 .bss             l_HIO */
static daFireWood_HIO_c l_HIO;

/* 80BE8050-80BE8094 000000 0044+00 2/2 0/0 0/0 .data            mCcDCyl__12daFireWood_c */
dCcD_SrcCyl daFireWood_c::mCcDCyl = {
    daFireWood_c::mCcDObjInfo,
    {
        {0.0f, 0.0f, 0.0f},  // mCenter
        0.0f,                // mRadius
        0.0f                 // mHeight
    }  // mCyl
};

/* 80BE800C-80BE803C 000008 0030+00 1/1 0/0 0/0 .rodata          mCcDObjInfo__12daFireWood_c */
const dCcD_SrcGObjInf daFireWood_c::mCcDObjInfo = {
    {0, {{AT_TYPE_LANTERN_SWING, 0, 0x13}, {0xD8FBFFFF, 0x1F}, {0x0}}},
    {dCcD_SE_SWORD, 0, 0, dCcD_MTRL_NONE, 0},
    {dCcD_SE_STONE, 0, 0, dCcD_MTRL_NONE, 0},
    {0},
};

/* 80BE8094-80BE80AC 000044 0018+00 1/1 0/0 0/0 .data            l_cull_box */
static cull_box l_cull_box = {
    {-50.0f, 0.0f, -50.0f},
    {50.0f, 100.0f, 50.0f},
};

/* 80BE7708-80BE7910 0001C8 0208+00 1/1 0/0 0/0 .text            create__12daFireWood_cFv */
int daFireWood_c::create() {
    fopAcM_SetupActor(this, daFireWood_c);

    setBaseMtx();
    mCcStts.Init(0xFF, 0xFF, this);
    mCcCyl.Set(mCcDCyl);
    mCcCyl.SetStts(&mCcStts);

    f32 min_x = l_cull_box.min.x * scale.x;
    f32 min_y = l_cull_box.min.y * scale.y;
    f32 min_z = l_cull_box.min.z * scale.x;
    f32 max_x = l_cull_box.max.x * scale.x;
    f32 max_y = l_cull_box.max.y * scale.y;
    f32 max_z = l_cull_box.max.z * scale.x;
    fopAcM_setCullSizeBox(this, min_x, min_y, min_z, max_x, max_y, max_y);

    mFlamePos.x = current.pos.x;
    mFlamePos.y = current.pos.y + l_HIO.mFlameOffsetY;
    mFlamePos.z = current.pos.z;

    for (int i = 0; i < 4; i++) {
        mFlameEmtrIDs[i] = 0;
    }

    lightInit();

    mIsLit = false;
    mIsSwitch = fopAcM_isSwitch(this, fopAcM_GetParam(this) & 0xFF);
    if (mIsSwitch) {
        mIsLit = true;
        mCcCyl.SetAtMtrl(dCcD_MTRL_FIRE);
        setLight();
    }

    mFlameType = fopAcM_GetParam(this) >> 8;
    mSwWaitTime = 0;

    return cPhs_COMPLEATE_e;
}

/* 80BE79A0-80BE7A14 000460 0074+00 1/1 0/0 0/0 .text            lightInit__12daFireWood_cFv */
void daFireWood_c::lightInit() {
    mLightPos = mFlamePos;
    mLightPos.y += 10.0f;

    mLightInfluence.mPosition = mLightPos;
    mLightInfluence.mColor.r = 0xBC;
    mLightInfluence.mColor.g = 0x66;
    mLightInfluence.mColor.b = 0x42;
    mLightInfluence.mPow = 500.0f;
    mLightInfluence.mFluctuation = 1.0f;
}

/* 80BE7A14-80BE7A38 0004D4 0024+00 2/2 0/0 0/0 .text            setLight__12daFireWood_cFv */
void daFireWood_c::setLight() {
    dKy_plight_set(&mLightInfluence);
}

/* 80BE7A38-80BE7E74 0004F8 043C+00 1/1 0/0 0/0 .text            Execute__12daFireWood_cFv */
int daFireWood_c::Execute() {
    mIsSwitch = fopAcM_isSwitch(this, fopAcM_GetParam(this) & 0xFF);

    if (mIsLit) {
        if (mFlameType == 1) {
            mFlameEmtrIDs[0] =
                dComIfGp_particle_set(mFlameEmtrIDs[0], 0x85A7, &mFlamePos, NULL, NULL);
            mFlameEmtrIDs[1] =
                dComIfGp_particle_set(mFlameEmtrIDs[1], 0x85BB, &mFlamePos, NULL, NULL);
            mFlameEmtrIDs[2] =
                dComIfGp_particle_set(mFlameEmtrIDs[2], 0x85BC, &mFlamePos, NULL, NULL);
            mFlameEmtrIDs[3] =
                dComIfGp_particle_set(mFlameEmtrIDs[3], 0x85BD, &mFlamePos, NULL, NULL);
        } else {
            mFlameEmtrIDs[0] =
                dComIfGp_particle_set(mFlameEmtrIDs[0], 0x3AD, &mFlamePos, NULL, NULL);
            mFlameEmtrIDs[1] =
                dComIfGp_particle_set(mFlameEmtrIDs[1], 0x3AF, &mFlamePos, NULL, NULL);
            mFlameEmtrIDs[2] =
                dComIfGp_particle_set(mFlameEmtrIDs[2], 0x3AE, &mFlamePos, NULL, NULL);
        }

        mDoAud_seStartLevel(Z2SE_OBJ_FIRE_BURNING, &mFlamePos, 0,
                            dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    }

    if (mCcCyl.ChkTgHit()) {
        dCcD_GObjInf* gobj = mCcCyl.GetTgHitGObj();

        if (gobj->GetAtType() == AT_TYPE_LANTERN_SWING && gobj->GetAtMtrl() == dCcD_MTRL_FIRE &&
            !mIsLit)
        {
            mSwWaitTime = l_HIO.mWaitTime;
            mIsLit = true;
            mCcCyl.SetAtMtrl(dCcD_MTRL_FIRE);

            mDoAud_seStart(Z2SE_OBJ_FIRE_IGNITION, &mFlamePos, 0,
                           dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
            setLight();
        }
    }

    mCcCyl.SetR(l_HIO.mCollisionRadius);
    mCcCyl.SetH(oREG_F(11) + 100.0f);
    mCcCyl.SetC(current.pos);
    dComIfG_Ccsp()->Set(&mCcCyl);
    
    if (mSwWaitTime != 0) {
        mSwWaitTime--;

        if (mSwWaitTime == 0) {
            fopAcM_onSwitch(this, fopAcM_GetParam(this) & 0xFF);
        }
    }

    return 1;
}

/* 80BE7E74-80BE7E7C 000934 0008+00 1/1 0/0 0/0 .text            Draw__12daFireWood_cFv */
int daFireWood_c::Draw() {
    return 1;
}

/* 80BE7E7C-80BE7EA4 00093C 0028+00 1/1 0/0 0/0 .text            Delete__12daFireWood_cFv */
int daFireWood_c::Delete() {
    dKy_plight_cut(&mLightInfluence);
    return 1;
}

/* 80BE7EA4-80BE7EC4 000964 0020+00 1/0 0/0 0/0 .text            daFireWood_Draw__FP12daFireWood_c
 */
static int daFireWood_Draw(daFireWood_c* i_this) {
    return i_this->Draw();
}

/* 80BE7EC4-80BE7EE4 000984 0020+00 1/0 0/0 0/0 .text daFireWood_Execute__FP12daFireWood_c */
static int daFireWood_Execute(daFireWood_c* i_this) {
    return i_this->Execute();
}

/* 80BE7EE4-80BE7F04 0009A4 0020+00 1/0 0/0 0/0 .text            daFireWood_Delete__FP12daFireWood_c
 */
static int daFireWood_Delete(daFireWood_c* i_this) {
    return i_this->Delete();
}

/* 80BE7F04-80BE7F24 0009C4 0020+00 1/0 0/0 0/0 .text            daFireWood_Create__FP10fopAc_ac_c
 */
static int daFireWood_Create(fopAc_ac_c* i_this) {
    return ((daFireWood_c*)i_this)->create();
}


/* 80BE80AC-80BE80CC -00001 0020+00 1/0 0/0 0/0 .data            l_daFireWood_Method */
static actor_method_class l_daFireWood_Method = {
    (process_method_func)daFireWood_Create,  (process_method_func)daFireWood_Delete,
    (process_method_func)daFireWood_Execute, (process_method_func)NULL,
    (process_method_func)daFireWood_Draw,
};

/* 80BE80CC-80BE80FC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_FireWood */
extern actor_process_profile_definition g_profile_Obj_FireWood = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_FireWood,      // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daFireWood_c),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  506,                    // mPriority
  &l_daFireWood_Method,   // sub_method
  0x00060000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
