/**
 * d_a_obj_fireWood2.cpp
 * Firewood 2 (Flame)
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_fireWood2.h"
#include "m_Do/m_Do_hostIO.h"

/* 80BE824C-80BE8288 0000EC 003C+00 1/1 0/0 0/0 .text            __ct__17daFireWood2_HIO_cFv */
daFireWood2_HIO_c::daFireWood2_HIO_c() {
    mFlameOffsetY = 15.0f;
    mCollisionDiameter = 25.0f;
    mCollisionHeight = 50.0f;
}

/* 80BE82D0-80BE8328 000170 0058+00 2/2 0/0 0/0 .text            setBaseMtx__13daFireWood2_cFv */
void daFireWood2_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(current.angle.x, current.angle.y, current.angle.z);
}

/* 80BE908C-80BE909C 000014 0010+00 3/3 0/0 0/0 .bss             l_HIO */
static daFireWood2_HIO_c l_HIO;

/* 80BE8F40-80BE8F70 00000C 0030+00 1/1 0/0 0/0 .rodata          mCcDObjInfo__13daFireWood2_c */
const dCcD_SrcGObjInf daFireWood2_c::mCcDObjInfo = {
    {0, {{AT_TYPE_LANTERN_SWING, 0, 0x13}, {0xD8FBFFFF, 0x1F}, {0x79}}},
    {dCcD_SE_SWORD, 0, 0, dCcD_MTRL_NONE, 0},
    {dCcD_SE_STONE, 0, 0, dCcD_MTRL_NONE, 0},
    {0},
};

/* 80BE8F98-80BE8FDC 000000 0044+00 2/2 0/0 0/0 .data            mCcDCyl__13daFireWood2_c */
dCcD_SrcCyl daFireWood2_c::mCcDCyl = {
    daFireWood2_c::mCcDObjInfo,
    {
        {0.0f, 0.0f, 0.0f},  // mCenter
        0.0f,                // mRadius
        0.0f                 // mHeight
    }  // mCyl
};

/* 80BE8FDC-80BE8FF4 000044 0018+00 1/1 0/0 0/0 .data            l_cull_box */
static cull_box l_cull_box = {
    {-50.0f, 0.0f, -50.0f},
    {50.0f, 100.0f, 50.0f},
};

/* 80BE8328-80BE85B0 0001C8 0288+00 1/1 0/0 0/0 .text            create__13daFireWood2_cFv */
int daFireWood2_c::create() {
    fopAcM_SetupActor(this, daFireWood2_c);

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

    mIsPLight = fopAcM_GetParam(this) >> 0x10;
    if (mIsPLight == 0xFF) {
        mIsPLight = false;
    }

    lightInit();

    mSwitchType = fopAcM_GetParam(this) >> 0x8;
    if (mSwitchType == 0xFF) {
        mSwitchType = 0;
    }

    mFlameType = fopAcM_GetParam(this) >> 0x18;

    eyePos = mFlamePos;

    mIsSwitch = fopAcM_isSwitch(this, fopAcM_GetParam(this) & 0xFF);
    mIsLit = false;

    if (mSwitchType == 0) {
        if (mIsSwitch) {
            mIsLit = true;
            mCcCyl.SetAtMtrl(dCcD_MTRL_FIRE);
            setLight();
        }
    } else if (!mIsSwitch) {
        mIsLit = true;
        mCcCyl.SetAtMtrl(dCcD_MTRL_FIRE);
        setLight();
    }

    return cPhs_COMPLEATE_e;
}

/* 80BE8640-80BE86CC 0004E0 008C+00 1/1 0/0 0/0 .text            lightInit__13daFireWood2_cFv */
void daFireWood2_c::lightInit() {
    mLightPos = mFlamePos;
    mLightPos.y += 10.0f;

    if (mIsPLight) {
        mLightInfluence.mPosition = mLightPos;
        mLightInfluence.mColor.r = 0xBC;
        mLightInfluence.mColor.g = 0x66;
        mLightInfluence.mColor.b = 0x42;
        mLightInfluence.mPow = 500.0f;
        mLightInfluence.mFluctuation = 1.0f;
    } else {
        mBossLightStrength = 0.0f;
    }
}

/* 80BE86CC-80BE86FC 00056C 0030+00 2/2 0/0 0/0 .text            setLight__13daFireWood2_cFv */
void daFireWood2_c::setLight() {
    if (mIsPLight) {
        dKy_plight_set(&mLightInfluence);
    }
}

/* 80BE86FC-80BE872C 00059C 0030+00 1/1 0/0 0/0 .text            cutLight__13daFireWood2_cFv */
void daFireWood2_c::cutLight() {
    if (mIsPLight) {
        dKy_plight_cut(&mLightInfluence);
    }
}

/* 80BE872C-80BE87DC 0005CC 00B0+00 1/1 0/0 0/0 .text            pointLightProc__13daFireWood2_cFv
 */
void daFireWood2_c::pointLightProc() {
    if (!mIsPLight) {
        GXColor color = {0xBC, 0x66, 0x42, 0xFF};

        if (mIsLit) {
            cLib_addCalc(&mBossLightStrength, 1.0f, 0.5f, 0.1f, 0.0001f);
        } else {
            cLib_addCalc(&mBossLightStrength, 0.0f, 0.5f, 0.1f, 0.0001f);
        }

        if (mBossLightStrength >= 0.000001f) {
            dKy_BossLight_set(&mLightPos, &color, mBossLightStrength, 0);
        }
    }
}

/* 80BE87DC-80BE8D98 00067C 05BC+00 1/1 0/0 0/0 .text            Execute__13daFireWood2_cFv */
int daFireWood2_c::Execute() {
    u8 is_switch = fopAcM_isSwitch(this, fopAcM_GetParam(this) & 0xFF);

    if (mIsSwitch != is_switch) {
        mIsLit = false;
        mCcCyl.SetAtMtrl(dCcD_MTRL_NONE);
        cutLight();

        if (mSwitchType == 0) {
            if (is_switch) {
                mIsLit = true;
                mCcCyl.SetAtMtrl(dCcD_MTRL_FIRE);
                setLight();
            }
        } else if (!is_switch) {
            mIsLit = true;
            mCcCyl.SetAtMtrl(dCcD_MTRL_FIRE);
            setLight();
        }

        mIsSwitch = is_switch;
    }

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

    setBaseMtx();

    if (mCcCyl.ChkTgHit()) {
        dCcD_GObjInf* gobj = mCcCyl.GetTgHitGObj();

        if (gobj->GetAtType() == AT_TYPE_LANTERN_SWING && gobj->GetAtMtrl() == dCcD_MTRL_FIRE &&
            !mIsLit)
        {
            mIsLit = true;
            mCcCyl.SetAtMtrl(dCcD_MTRL_FIRE);

            if (mSwitchType == 0) {
                fopAcM_onSwitch(this, fopAcM_GetParam(this) & 0xFF);
            } else {
                fopAcM_offSwitch(this, fopAcM_GetParam(this) & 0xFF);
            }

            mDoAud_seStart(Z2SE_OBJ_FIRE_IGNITION, &mFlamePos, 0,
                           dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
            setLight();
        }

        if (gobj->GetAtType() == AT_TYPE_BOOMERANG && gobj->GetAtMtrl() == dCcD_MTRL_WIND &&
            mIsLit == true)
        {
            mIsLit = false;
            mCcCyl.SetAtMtrl(dCcD_MTRL_NONE);

            if (mSwitchType == 0) {
                fopAcM_offSwitch(this, fopAcM_GetParam(this) & 0xFF);
            } else {
                fopAcM_onSwitch(this, fopAcM_GetParam(this) & 0xFF);
            }

            mDoAud_seStart(Z2SE_OBJ_FIRE_OFF, &mFlamePos, 0,
                           dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
            cutLight();
        }
    }

    mCcCyl.SetR(l_HIO.mCollisionDiameter);
    mCcCyl.SetH(l_HIO.mCollisionHeight);
    mCcCyl.SetC(current.pos);
    dComIfG_Ccsp()->Set(&mCcCyl);
    pointLightProc();
    return 1;
}

/* 80BE8D98-80BE8DA0 000C38 0008+00 1/1 0/0 0/0 .text            Draw__13daFireWood2_cFv */
int daFireWood2_c::Draw() {
    return 1;
}

/* 80BE8DA0-80BE8DD4 000C40 0034+00 1/1 0/0 0/0 .text            Delete__13daFireWood2_cFv */
int daFireWood2_c::Delete() {
    if (mIsPLight) {
        dKy_plight_cut(&mLightInfluence);
    }

    return 1;
}

/* 80BE8DD4-80BE8DF4 000C74 0020+00 1/0 0/0 0/0 .text            daFireWood2_Draw__FP13daFireWood2_c
 */
static int daFireWood2_Draw(daFireWood2_c* i_this) {
    return i_this->Draw();
}

/* 80BE8DF4-80BE8E14 000C94 0020+00 1/0 0/0 0/0 .text daFireWood2_Execute__FP13daFireWood2_c */
static int daFireWood2_Execute(daFireWood2_c* i_this) {
    return i_this->Execute();
}

/* 80BE8E14-80BE8E34 000CB4 0020+00 1/0 0/0 0/0 .text daFireWood2_Delete__FP13daFireWood2_c */
static int daFireWood2_Delete(daFireWood2_c* i_this) {
    return i_this->Delete();
}

/* 80BE8E34-80BE8E54 000CD4 0020+00 1/0 0/0 0/0 .text            daFireWood2_Create__FP10fopAc_ac_c
 */
static int daFireWood2_Create(fopAc_ac_c* i_this) {
    return ((daFireWood2_c*)i_this)->create();
}

/* 80BE8FF4-80BE9014 -00001 0020+00 1/0 0/0 0/0 .data            l_daFireWood2_Method */
static actor_method_class l_daFireWood2_Method = {
    (process_method_func)daFireWood2_Create,  (process_method_func)daFireWood2_Delete,
    (process_method_func)daFireWood2_Execute, (process_method_func)NULL,
    (process_method_func)daFireWood2_Draw,
};

/* 80BE9014-80BE9044 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_FireWood2 */
extern actor_process_profile_definition g_profile_Obj_FireWood2 = {
    fpcLy_CURRENT_e,         // mLayerID
    3,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_Lv1Cdl00,       // mProcName
    &g_fpcLf_Method.base,   // sub_method
    sizeof(daFireWood2_c),   // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    494,                     // mPriority
    &l_daFireWood2_Method,   // sub_method
    0x00060000,              // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
