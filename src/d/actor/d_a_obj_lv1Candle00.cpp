//
// Translation Unit: d_a_obj_lv1Candle00
//

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv1Candle00.h"
#include "d/d_com_inf_game.h"
#include "d/d_procname.h"

/* 80C56B9C-80C56BA4 000014 0008+00 1/1 0/0 0/0 .bss             l_HIO */
static daLv1Cdl00_HIO_c l_HIO;

/* 80C56A50-80C56A80 000000 0030+00 4/4 0/0 0/0 .rodata          mCcDObjInfo__12daLv1Cdl00_c */
dCcD_SrcGObjInf const daLv1Cdl00_c::mCcDObjInfo = {
    {
        0, {
            {0x200, 0, 0x13},
            {0xd8fbffff, 0x1f},
            {0x79}
        }
    },
    {1, 0, 0, 0, 0},
    {0xa, 0, 0, 0, 6},
    {0},
};

/* 80C56AC0-80C56B04 000000 0044+00 2/2 0/0 0/0 .data            mCcDCyl__12daLv1Cdl00_c */
dCcD_SrcCyl daLv1Cdl00_c::mCcDCyl = {
    daLv1Cdl00_c::mCcDObjInfo,
    { {0.0f, 0.0f, 0.0f}, 0, 0}
};

/* 80C55D0C-80C55D38 0000EC 002C+00 1/1 0/0 0/0 .text            __ct__16daLv1Cdl00_HIO_cFv */
daLv1Cdl00_HIO_c::daLv1Cdl00_HIO_c() :
    field_0x4(60),
    field_0x5(1)
    {}

/* 80C55D80-80C55E08 000160 0088+00 2/2 0/0 0/0 .text            setBaseMtx__12daLv1Cdl00_cFv */
void daLv1Cdl00_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(current.angle.x, current.angle.y, current.angle.z);
    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80C55E08-80C55E74 0001E8 006C+00 1/1 0/0 0/0 .text            CreateHeap__12daLv1Cdl00_cFv */
int daLv1Cdl00_c::CreateHeap() {
    J3DModelData* bmd = (J3DModelData*)dComIfG_getObjectRes("lv1cdl00", 4);
    mpModel = mDoExt_J3DModel__create(bmd, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return false;
    }
    return true;
}

/* 80C55E74-80C56110 000254 029C+00 1/1 0/0 0/0 .text            create__12daLv1Cdl00_cFv */
cPhs__Step daLv1Cdl00_c::create() {
    fopAcM_SetupActor(this, daLv1Cdl00_c);
    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&mPhase, "lv1cdl00");
    if (step == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x820)) {
            return cPhs_ERROR_e;
        }
        setBaseMtx();
        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());
        mStts.Init(0xff, 0xff, this);
        mCyl.Set(mCcDCyl);
        mCyl.SetStts(&mStts);
        mTorchPos.x = current.pos.x;
        mTorchPos.y = current.pos.y + 120.0f;
        mTorchPos.z = current.pos.z;
        mLightType = fopAcM_GetParam(this) >> 16;
        if (mLightType == 0xff) {
            mLightType = 0;
        }
        lightInit();
        mSwType = fopAcM_GetParam(this) >> 8;
        if (mSwType == 0xff) {
            mSwType = 0;
        }
        eyePos = mTorchPos;
        mIsSwitch = fopAcM_isSwitch(this, fopAcM_GetParam(this) & 0xff);
        mIsLit = false;
        if (!mSwType) {
            if (mIsSwitch) {
                mIsLit = true;
                mCyl.SetAtMtrl(dCcD_MTRL_FIRE);
                setLight();
            }
        } else {
            if (!mIsSwitch) {
                mIsLit = true;
                mCyl.SetAtMtrl(dCcD_MTRL_FIRE);
                setLight();
            }
        }
        mSound.init(&current.pos, 1);
        mTgHit = 0;
    }
    return step;
}

/* 80C561A0-80C561C0 000580 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__12daLv1Cdl00_cFP10fopAc_ac_c             */
int daLv1Cdl00_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daLv1Cdl00_c*>(i_this)->CreateHeap();
}

/* 80C561C0-80C56268 0005A0 00A8+00 1/1 0/0 0/0 .text            lightInit__12daLv1Cdl00_cFv */
void daLv1Cdl00_c::lightInit() {
    mLightPos = mTorchPos;
    mLightPos.y += 10.0f;
    if (mLightType == 1 || mLightType == 2) {
        mLight.mPosition = mLightPos;
        mLight.mColor.r = 0xbc;
        mLight.mColor.g = 0x66;
        mLight.mColor.b = 0x42;
        mLight.mPow = 500.0f;
        mLight.mFluctuation = 1.0f;
        if (mLightType == 2) {
            mIntensity = 0.0f;
        }
    } else {
        mIntensity = 0.0f;
    }
}

/* 80C56268-80C562A0 000648 0038+00 2/2 0/0 0/0 .text            setLight__12daLv1Cdl00_cFv */
void daLv1Cdl00_c::setLight() {
    if (mLightType == 1 || mLightType == 2) {
        dKy_plight_set(&mLight);
    }
}

/* 80C562A0-80C562D8 000680 0038+00 1/1 0/0 0/0 .text            cutLight__12daLv1Cdl00_cFv */
void daLv1Cdl00_c::cutLight() {
    if (mLightType == 1 || mLightType == 2) {
        dKy_plight_cut(&mLight);
    }
}

/* 80C562D8-80C56388 0006B8 00B0+00 1/1 0/0 0/0 .text            pointLightProc__12daLv1Cdl00_cFv */
void daLv1Cdl00_c::pointLightProc() {
    if (mLightType != 1) {
        GXColor color = { 0xbc, 0x66, 0x42, 0xff };
        if (mIsLit) {
            cLib_addCalc(&mIntensity, 1.0f, 0.5f, 0.1f, 0.0001f);
        } else {
            cLib_addCalc(&mIntensity, 0.0f, 0.5f, 0.1f, 0.0001f);
        }
        if (mIntensity >= 1e-6f) {
            dKy_BossLight_set(&mLightPos, &color, mIntensity, 0);
        }
    }
}

/* 80C56388-80C567EC 000768 0464+00 1/1 0/0 0/0 .text            Execute__12daLv1Cdl00_cFv */
int daLv1Cdl00_c::Execute() {
    u8 sw = fopAcM_isSwitch(this, fopAcM_GetParam(this) & 0xff);
    if (mIsSwitch != sw) {
        mIsLit = false;
        mCyl.SetAtMtrl(dCcD_MTRL_NONE);
        cutLight();
        if (!mSwType) {
            if (sw) {
                mIsLit = true;
                mCyl.SetAtMtrl(dCcD_MTRL_FIRE);
                setLight();
            }
        } else {
            if (!sw) {
                mIsLit = true;
                mCyl.SetAtMtrl(dCcD_MTRL_FIRE);
                setLight();
            }
        }
        mIsSwitch = sw;
    }

    if (mIsLit) {
        dComIfGp_particle_setSimple(0x83a6, &mTorchPos, 0xff,
                                    g_whiteColor, g_whiteColor, 0, 0.0f);
        dComIfGp_particle_setSimple(0x83a7, &mTorchPos, 0xff,
                                    g_whiteColor, g_whiteColor, 0, 0.0f);
        dComIfGp_particle_setSimple(0x103, &mTorchPos, 0xff,
                                    g_whiteColor, g_whiteColor, 0, 0.0f);
        mDoAud_seStartLevel(Z2SE_OBJ_FIRE_BURNING, &mTorchPos, 0,
                            dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    }

    setBaseMtx();

    if (mCyl.ChkTgHit()) {
        dCcD_GObjInf* gobj = mCyl.GetTgHitGObj();
        if (gobj->GetAtType() == AT_TYPE_LANTERN_SWING && gobj->GetAtMtrl() == dCcD_MTRL_FIRE && !mIsLit) {
            mIsLit = true;
            mCyl.SetAtMtrl(dCcD_MTRL_FIRE);
            if (!mSwType) {
                fopAcM_onSwitch(this, fopAcM_GetParam(this) & 0xff);
            } else {
                fopAcM_offSwitch(this, fopAcM_GetParam(this) & 0xff);
            }
            mDoAud_seStart(Z2SE_OBJ_FIRE_IGNITION, &mTorchPos, 0,
                           dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
            setLight();
        }
        if (gobj->GetAtType() == AT_TYPE_BOOMERANG && gobj->GetAtMtrl() == dCcD_MTRL_WIND && mIsLit == true) {
            mIsLit = false;
            mCyl.SetAtMtrl(dCcD_MTRL_NONE);
            if (!mSwType) {
                fopAcM_offSwitch(this, fopAcM_GetParam(this) & 0xff);
            } else {
                fopAcM_onSwitch(this, fopAcM_GetParam(this) & 0xff);
            }
            mDoAud_seStart(Z2SE_OBJ_FIRE_OFF, &mTorchPos, 0,
                           dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
            cutLight();
        }
        cCcD_Obj* obj = mCyl.GetTgHitObj();
        if (obj != NULL) {
            bool bvar1 = true;
            if (fopAcM_GetName(obj->GetAc()) == PROC_ALINK) {
                if (mCyl.GetTgHitGObj()->ChkAtType(AT_TYPE_NORMAL_SWORD) && mTgHit) {
                    bvar1 = false;
                }
            }
            if (bvar1) {
                mSound.startCollisionSE(mCyl.GetTgHitObjHitSeID(1), 5, NULL);
                mTgHit = true;
            }
        }
    } else {
        mTgHit = false;
    }

    mSound.framework(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    mCyl.SetR(25.0f);
    mCyl.SetH(130.0f);
    mCyl.SetC(current.pos);
    dComIfG_Ccsp()->Set(&mCyl);
    pointLightProc();
    return true;
}

/* 80C567EC-80C56890 000BCC 00A4+00 1/1 0/0 0/0 .text            Draw__12daLv1Cdl00_cFv */
int daLv1Cdl00_c::Draw() {
    g_env_light.settingTevStruct(0x40, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return true;
}

/* 80C56890-80C568F0 000C70 0060+00 1/1 0/0 0/0 .text            Delete__12daLv1Cdl00_cFv */
int daLv1Cdl00_c::Delete() {
    mSound.deleteObject();
    dComIfG_resDelete(&mPhase, "lv1cdl00");
    if (mLightType == 1 || mLightType == 2) {
        dKy_plight_cut(&mLight);
    }
    return true;
}

/* 80C568F0-80C56910 000CD0 0020+00 1/0 0/0 0/0 .text            daLv1Cdl00_Draw__FP12daLv1Cdl00_c
 */
static int daLv1Cdl00_Draw(daLv1Cdl00_c* i_this) {
    return i_this->Draw();
}

/* 80C56910-80C56930 000CF0 0020+00 1/0 0/0 0/0 .text daLv1Cdl00_Execute__FP12daLv1Cdl00_c */
static int daLv1Cdl00_Execute(daLv1Cdl00_c* i_this) {
    return i_this->Execute();
}

/* 80C56930-80C56950 000D10 0020+00 1/0 0/0 0/0 .text            daLv1Cdl00_Delete__FP12daLv1Cdl00_c
 */
static int daLv1Cdl00_Delete(daLv1Cdl00_c* i_this) {
    return i_this->Delete();
}

/* 80C56950-80C56970 000D30 0020+00 1/0 0/0 0/0 .text            daLv1Cdl00_Create__FP10fopAc_ac_c
 */
static cPhs__Step daLv1Cdl00_Create(fopAc_ac_c* i_this) {
    return static_cast<daLv1Cdl00_c*>(i_this)->create();
}

/* 80C56B04-80C56B24 -00001 0020+00 1/0 0/0 0/0 .data            l_daLv1Cdl00_Method */
static actor_method_class l_daLv1Cdl00_Method = {
    (process_method_func)daLv1Cdl00_Create,
    (process_method_func)daLv1Cdl00_Delete,
    (process_method_func)daLv1Cdl00_Execute,
    (process_method_func)NULL,
    (process_method_func)daLv1Cdl00_Draw,
};

/* 80C56B24-80C56B54 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv1Cdl00 */
extern actor_process_profile_definition g_profile_Obj_Lv1Cdl00 = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_Obj_Lv1Cdl00,
    &g_fpcLf_Method.base,
    sizeof(daLv1Cdl00_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x1EE,
    &l_daLv1Cdl00_Method,
    0x60000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
