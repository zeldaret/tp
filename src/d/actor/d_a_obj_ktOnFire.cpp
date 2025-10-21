/**
 * @file d_a_obj_ktOnFire.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_ktOnFire.h"
#include "d/d_s_play.h"

class daKtOnFire_HIO_c : public mDoHIO_entry_c {
public:
    /* 8058C60C */ daKtOnFire_HIO_c();
    /* 8058CEA8 */ ~daKtOnFire_HIO_c() {}

    void genMessage(JORMContext*);

    /* 0x4 */ u8 wait_time;
};

/* 8058D0CC-8058D0D4 000014 0008+00 2/2 0/0 0/0 .bss             l_HIO */
static daKtOnFire_HIO_c l_HIO;

/* 8058CFDC-8058CFF4 000000 0018+00 1/1 0/0 0/0 .data            l_cull_box */
static cull_box l_cull_box = {
    {-50.0f, 0.0f, -50.0f},
    {50.0f, 100.0f, 50.0f},
};

/* 8058CF88-8058CFB8 000000 0030+00 3/3 0/0 0/0 .rodata          mCcDObjInfo__12daKtOnFire_c */
const dCcD_SrcGObjInf daKtOnFire_c::mCcDObjInfo = {
    {0x0, {{0x200, 0x0, 0x13}, {0xD8FBFFFF, 0x11}, 0x0}}, // mObj
    {dCcD_SE_SWORD, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
    {dCcD_SE_STONE, 0x0, 0x0, 0x0, 0x0}, // mGObjTg
    {0x0}, // mGObjCo
};

/* 8058CFF4-8058D038 000018 0044+00 2/2 0/0 0/0 .data            mCcDCyl__12daKtOnFire_c */
dCcD_SrcCyl daKtOnFire_c::mCcDCyl = {
    mCcDObjInfo,
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        0.0f, // mRadius
        0.0f // mHeight
    } // mCyl
};

/* 8058C60C-8058C630 0000EC 0024+00 1/1 0/0 0/0 .text            __ct__16daKtOnFire_HIO_cFv */
daKtOnFire_HIO_c::daKtOnFire_HIO_c() {
    wait_time = 20;
}

/* 8058C678-8058C6D0 000158 0058+00 1/1 0/0 0/0 .text            setBaseMtx__12daKtOnFire_cFv */
void daKtOnFire_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
}

/* 8058C6D0-8058C8D0 0001B0 0200+00 1/1 0/0 0/0 .text            create__12daKtOnFire_cFv */
int daKtOnFire_c::create() {
    fopAcM_ct(this, daKtOnFire_c);

    setBaseMtx();
    
    mCcStts.Init(255, 255, this);
    mCcCyl.Set(mCcDCyl);
    mCcCyl.SetStts(&mCcStts);

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

    u8 arg0 = (fopAcM_GetParam(this) & 0xFF00) >> 8;
    mTorchPos.x = current.pos.x;
    mTorchPos.y = current.pos.y + arg0 * 10.0f;
    mTorchPos.z = current.pos.z;

    lightInit();

    mWaitTime = 0;
    field_0x6e2 = 0;

    mIsSwitch = fopAcM_isSwitch(this, fopAcM_GetParam(this) & 0xFF);
    if (mIsSwitch) {
        mCcCyl.SetAtMtrl(dCcD_MTRL_FIRE);
        setLight();
        field_0x6e2 = 1;
    }

    return cPhs_COMPLEATE_e;
}

/* 8058C960-8058C9D4 000440 0074+00 1/1 0/0 0/0 .text            lightInit__12daKtOnFire_cFv */
void daKtOnFire_c::lightInit() {
    mLightPos = mTorchPos;
    mLightPos.y += 10.0f;

    mLight.mPosition = mLightPos;
    mLight.mColor.r = 188;
    mLight.mColor.g = 102;
    mLight.mColor.b = 66;
    mLight.mPow = 500.0f;
    mLight.mFluctuation = 1.0f;
}

/* 8058C9D4-8058C9F8 0004B4 0024+00 2/2 0/0 0/0 .text            setLight__12daKtOnFire_cFv */
void daKtOnFire_c::setLight() {
    dKy_plight_set(&mLight);
}

/* 8058C9F8-8058CA1C 0004D8 0024+00 1/1 0/0 0/0 .text            cutLight__12daKtOnFire_cFv */
void daKtOnFire_c::cutLight() {
    dKy_plight_cut(&mLight);
}

/* 8058CA1C-8058CDF8 0004FC 03DC+00 1/1 0/0 0/0 .text            Execute__12daKtOnFire_cFv */
int daKtOnFire_c::Execute() {
    u8 prev_switch = mIsSwitch;
    mIsSwitch = fopAcM_isSwitch(this, fopAcM_GetParam(this) & 0xFF);

    if (prev_switch != mIsSwitch && !mIsSwitch) {
        fopAcM_offSwitch(this, fopAcM_GetParam(this) & 0xFF);
        mCcCyl.SetAtMtrl(dCcD_MTRL_NONE);
        cutLight();
        field_0x6e2 = 0;
    }

    if (mCcCyl.ChkTgHit()) {
        dCcD_GObjInf* hit_gobj = mCcCyl.GetTgHitGObj();
        if (hit_gobj->GetAtType() == AT_TYPE_LANTERN_SWING && hit_gobj->GetAtMtrl() == dCcD_MTRL_FIRE && field_0x6e2 == 0) {
            field_0x6e2 = 1;
            mCcCyl.SetAtMtrl(dCcD_MTRL_FIRE);
            mDoAud_seStart(Z2SE_OBJ_FIRE_IGNITION, &mTorchPos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
            mWaitTime = l_HIO.wait_time;
            setLight();
        }

        if (hit_gobj->GetAtType() == AT_TYPE_LANTERN_SWING && hit_gobj->GetAtMtrl() == dCcD_MTRL_UNK_6 && field_0x6e2 == 1) {
            field_0x6e2 = 0;
            mCcCyl.SetAtMtrl(dCcD_MTRL_NONE);
            mDoAud_seStart(Z2SE_OBJ_FIRE_OFF, &mTorchPos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
            mWaitTime = l_HIO.wait_time;
            cutLight();
        }
    }

    mCcCyl.SetR(50.0f + oREG_F(2));
    mCcCyl.SetH(100.0f + oREG_F(3));
    mCcCyl.SetC(current.pos);
    dComIfG_Ccsp()->Set(&mCcCyl);

    if (field_0x6e2 != 0) {
        field_0x6f0 = dComIfGp_particle_set(field_0x6f0, 0x3AD, &mTorchPos, NULL, NULL);
        field_0x6f4 = dComIfGp_particle_set(field_0x6f4, 0x3AF, &mTorchPos, NULL, NULL);
        field_0x6f8 = dComIfGp_particle_set(field_0x6f8, 0x3AE, &mTorchPos, NULL, NULL);
        mDoAud_seStartLevel(Z2SE_OBJ_FIRE_BURNING, &mTorchPos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    }

    if (mWaitTime != 0) {
        mWaitTime--;
        if (mWaitTime == 0) {
            if (field_0x6e2 == 1) {
                fopAcM_onSwitch(this, fopAcM_GetParam(this) & 0xFF);
            } else {
                fopAcM_offSwitch(this, fopAcM_GetParam(this) & 0xFF);
            }
        }
    }

    return 1;
}

/* 8058CDF8-8058CE00 0008D8 0008+00 1/1 0/0 0/0 .text            Draw__12daKtOnFire_cFv */
int daKtOnFire_c::Draw() {
    return 1;
}

/* 8058CE00-8058CE28 0008E0 0028+00 1/1 0/0 0/0 .text            Delete__12daKtOnFire_cFv */
int daKtOnFire_c::Delete() {
    dKy_plight_cut(&mLight);
    return 1;
}

/* 8058CE28-8058CE48 000908 0020+00 1/0 0/0 0/0 .text            daKtOnFire_Draw__FP12daKtOnFire_c
 */
static int daKtOnFire_Draw(daKtOnFire_c* i_this) {
    return i_this->Draw();
}

/* 8058CE48-8058CE68 000928 0020+00 1/0 0/0 0/0 .text daKtOnFire_Execute__FP12daKtOnFire_c */
static int daKtOnFire_Execute(daKtOnFire_c* i_this) {
    return i_this->Execute();
}

/* 8058CE68-8058CE88 000948 0020+00 1/0 0/0 0/0 .text            daKtOnFire_Delete__FP12daKtOnFire_c
 */
static int daKtOnFire_Delete(daKtOnFire_c* i_this) {
    return i_this->Delete();
}

/* 8058CE88-8058CEA8 000968 0020+00 1/0 0/0 0/0 .text            daKtOnFire_Create__FP10fopAc_ac_c
 */
static int daKtOnFire_Create(fopAc_ac_c* i_this) {
    return ((daKtOnFire_c*)i_this)->create();
}

/* 8058D038-8058D058 -00001 0020+00 1/0 0/0 0/0 .data            l_daKtOnFire_Method */
static actor_method_class l_daKtOnFire_Method = {
    (process_method_func)daKtOnFire_Create,
    (process_method_func)daKtOnFire_Delete,
    (process_method_func)daKtOnFire_Execute,
    0,
    (process_method_func)daKtOnFire_Draw,
};

/* 8058D058-8058D088 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_KtOnFire */
extern actor_process_profile_definition g_profile_Tag_KtOnFire = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Tag_KtOnFire,      // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daKtOnFire_c),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  502,                    // mPriority
  &l_daKtOnFire_Method,   // sub_method
  0x00044000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
