//
// Translation Unit: d_a_obj_lv1Candle01
//

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv1Candle01.h"
#include "d/d_com_inf_game.h"
#include "d/d_procname.h"

/* 80C579CC-80C579D4 000014 0008+00 1/1 0/0 0/0 .bss             l_HIO */
static daLv1Cdl01_HIO_c l_HIO;

/* 80C5785C-80C5788C 000000 0030+00 4/4 0/0 0/0 .rodata          mCcDObjInfo__12daLv1Cdl01_c */
dCcD_SrcGObjInf const daLv1Cdl01_c::mCcDObjInfo = {
    {
        0, {
            {0, 0, 0},
            {0xd8fbffff, 0x1f},
            {0x79}
        }
    },
    {1, 0, 0, 0, 0},
    {0xa, 0, 0, 0, 6},
    {0},
};

/* 80C578CC-80C57910 000000 0044+00 2/2 0/0 0/0 .data            mCcDCyl__12daLv1Cdl01_c */
dCcD_SrcCyl daLv1Cdl01_c::mCcDCyl = {
    daLv1Cdl01_c::mCcDObjInfo,
    { {0.0f, 0.0f, 0.0f}, 0, 0}
};

/* 80C56CAC-80C56CD8 0000EC 002C+00 1/1 0/0 0/0 .text            __ct__16daLv1Cdl01_HIO_cFv */
daLv1Cdl01_HIO_c::daLv1Cdl01_HIO_c() :
    field_0x4(60),
    field_0x5(1)
    {}

/* 80C56D20-80C56DA8 000160 0088+00 2/2 0/0 0/0 .text            setBaseMtx__12daLv1Cdl01_cFv */
void daLv1Cdl01_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(current.angle.x, current.angle.y, current.angle.z);
    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80C56DA8-80C56E14 0001E8 006C+00 1/0 0/0 0/0 .text            CreateHeap__12daLv1Cdl01_cFv */
int daLv1Cdl01_c::CreateHeap() {
    J3DModelData* bmd = (J3DModelData*)dComIfG_getObjectRes("lv1cdl01", 4);
    mpModel = mDoExt_J3DModel__create(bmd, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return false;
    }
    return true;
}

/* 80C56E14-80C57048 000254 0234+00 1/1 0/0 0/0 .text            create__12daLv1Cdl01_cFv */
cPhs__Step daLv1Cdl01_c::create() {
    fopAcM_SetupActor(this, daLv1Cdl01_c);
    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&mPhase, "lv1cdl01");
    if (step == cPhs_COMPLEATE_e) {
        if (MoveBGCreate("lv1cdl01", -1, NULL, 0x820, NULL) == cPhs_ERROR_e) {
            return cPhs_ERROR_e;
        }
        setBaseMtx();
        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());
        mLightType = fopAcM_GetParam(this) >> 8;
        if (mLightType == 0xff) {
            mLightType = 1;
        }
        mTorchPos.x = current.pos.x;
        mTorchPos.y = current.pos.y + 120.0f;
        mTorchPos.z = current.pos.z;
        lightInit();
        mIsLit = true;
        mTimer = 0;
        setLight();
        eyePos = mTorchPos;
        mStts.Init(0xff, 0xff, this);
        mCyl.Set(mCcDCyl);
        mCyl.SetStts(&mStts);
        mSound.init(&current.pos, 1);
        mTgHit = false;
    }
    return step;
}

/* 80C570D8-80C57164 000518 008C+00 1/1 0/0 0/0 .text            lightInit__12daLv1Cdl01_cFv */
void daLv1Cdl01_c::lightInit() {
    mLightPos = mTorchPos;
    mLightPos.y += 10.0f;
    if (mLightType != 0) {
        mLight.mPosition = mLightPos;
        mLight.mColor.r = 0xbc;
        mLight.mColor.g = 0x66;
        mLight.mColor.b = 0x42;
        mLight.mPow = 500.0f;
        mLight.mFluctuation = 1.0f;
    } else {
        mIntensity = 0.0f;
    }
}

/* 80C57164-80C57194 0005A4 0030+00 2/2 0/0 0/0 .text            setLight__12daLv1Cdl01_cFv */
void daLv1Cdl01_c::setLight() {
    if (mLightType != 0) {
        dKy_plight_set(&mLight);
    }
}

/* 80C57194-80C571C4 0005D4 0030+00 1/1 0/0 0/0 .text            cutLight__12daLv1Cdl01_cFv */
void daLv1Cdl01_c::cutLight() {
    if (mLightType != 0) {
        dKy_plight_cut(&mLight);
    }
}

/* 80C571C4-80C57274 000604 00B0+00 1/1 0/0 0/0 .text            pointLightProc__12daLv1Cdl01_cFv */
void daLv1Cdl01_c::pointLightProc() {
    if (mLightType == 0) {
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

/* 80C57274-80C575F4 0006B4 0380+00 1/0 0/0 0/0 .text            Execute__12daLv1Cdl01_cFPPA3_A4_f
 */
int daLv1Cdl01_c::Execute(f32 (**param_0)[3][4]) {
    *param_0 = &mpModel->getBaseTRMtx();
    if (mTimer != 0) {
        mTimer--;
        if (mTimer == 0) {
            mIsLit = true;
            setLight();
        }
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
            setLight();
            mDoAud_seStart(Z2SE_OBJ_FIRE_IGNITION, &mTorchPos, 0,
                           dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
        }
        if (gobj->GetAtType() == AT_TYPE_BOOMERANG && gobj->GetAtMtrl() == dCcD_MTRL_WIND && mIsLit == true) {
            mTimer = 30;
            mIsLit = false;
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

/* 80C575F4-80C57698 000A34 00A4+00 1/0 0/0 0/0 .text            Draw__12daLv1Cdl01_cFv */
int daLv1Cdl01_c::Draw() {
    g_env_light.settingTevStruct(0x40, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return true;
}

/* 80C57698-80C576F0 000AD8 0058+00 1/0 0/0 0/0 .text            Delete__12daLv1Cdl01_cFv */
int daLv1Cdl01_c::Delete() {
    mSound.deleteObject();
    dComIfG_resDelete(&mPhase, "lv1cdl01");
    if (mLightType != 0) {
        dKy_plight_cut(&mLight);
    }
    return true;
}

/* 80C576F0-80C5771C 000B30 002C+00 1/0 0/0 0/0 .text            daLv1Cdl01_Draw__FP12daLv1Cdl01_c
 */
static int daLv1Cdl01_Draw(daLv1Cdl01_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C5771C-80C5773C 000B5C 0020+00 1/0 0/0 0/0 .text daLv1Cdl01_Execute__FP12daLv1Cdl01_c */
static int daLv1Cdl01_Execute(daLv1Cdl01_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C5773C-80C5775C 000B7C 0020+00 1/0 0/0 0/0 .text            daLv1Cdl01_Delete__FP12daLv1Cdl01_c
 */
static int daLv1Cdl01_Delete(daLv1Cdl01_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C5775C-80C5777C 000B9C 0020+00 1/0 0/0 0/0 .text            daLv1Cdl01_Create__FP10fopAc_ac_c
 */
static cPhs__Step daLv1Cdl01_Create(fopAc_ac_c* i_this) {
    return static_cast<daLv1Cdl01_c*>(i_this)->create();
}

/* 80C57910-80C57930 -00001 0020+00 1/0 0/0 0/0 .data            l_daLv1Cdl01_Method */
static actor_method_class l_daLv1Cdl01_Method = {
    (process_method_func)daLv1Cdl01_Create,
    (process_method_func)daLv1Cdl01_Delete,
    (process_method_func)daLv1Cdl01_Execute,
    (process_method_func)NULL,
    (process_method_func)daLv1Cdl01_Draw,
};

/* 80C57930-80C57960 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv1Cdl01 */
extern actor_process_profile_definition g_profile_Obj_Lv1Cdl01 = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_Obj_Lv1Cdl01,
    &g_fpcLf_Method.base,
    sizeof(daLv1Cdl01_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x1EF,
    &l_daLv1Cdl01_Method,
    0x60000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
