//
// d_a_obj_lv3Candle.cpp
// Object - Level 3 Candle
//

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv3Candle.h"

#include "d/d_com_inf_game.h"

//
// Declarations:
//

static daLv3Candle_HIO_c l_HIO;

/* 80C57ACC-80C57AF0 0000EC 0024+00 1/1 0/0 0/0 .text            __ct__17daLv3Candle_HIO_cFv */
daLv3Candle_HIO_c::daLv3Candle_HIO_c() {
    field_0x04 = 0x1e;
}

/* ############################################################################################## */
/* 80C58564-80C58594 000000 0030+00 5/5 0/0 0/0 .rodata          mCcDObjInfo__13daLv3Candle_c */
dCcD_SrcGObjInf const daLv3Candle_c::mCcDObjInfo = {
    {0, {{0x200, 0, 0x13}, {0xd8fbfdff, 0x1f}, {0x79}}},
    {1, 0, 0, 0, 0},
    {0xa, 0, 0, 0, 6},
    {0},
};

dCcD_SrcSph daLv3Candle_c::mCcDSph = {daLv3Candle_c::mCcDObjInfo, {{{0.0f, 0.0f, 0.0f}, 0.0f}}};

/* 80C58630-80C58638 -00001 0008+00 3/3 0/0 0/0 .data            l_resNameIdx */
static char* l_resNameIdx[] = {"L3candl", "L3candl2"};

/* 80C57B38-80C57BC0 000158 0088+00 2/2 0/0 0/0 .text            setBaseMtx__13daLv3Candle_cFv */
void daLv3Candle_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(current.angle.x, current.angle.y, current.angle.z);
    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80C58594-80C5859C 000030 0008+00 1/1 0/0 0/0 .rodata          l_bmdIdx */
static u32 const l_bmdIdx[] = {0x03, 0x03};

/* 80C57BC0-80C57C40 0001E0 0080+00 1/1 0/0 0/0 .text            CreateHeap__13daLv3Candle_cFv */
int daLv3Candle_c::CreateHeap() {
    J3DModelData* model_data =
        (J3DModelData*)dComIfG_getObjectRes(l_resNameIdx[mType], l_bmdIdx[mType]);
    mpModel = mDoExt_J3DModel__create(model_data, 0x80000, 0x11000084);

    if (mpModel == NULL) {
        return FALSE;
    }

    return TRUE;
}

/* 80C57C40-80C57EDC 000260 029C+00 1/1 0/0 0/0 .text            create__13daLv3Candle_cFv */
cPhs__Step daLv3Candle_c::create() {
    fopAcM_SetupActor(this, daLv3Candle_c);

    mType = getType();
    if (mType == 0xff) {
        mType = 0;
    }

    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&mPhaseReq, l_resNameIdx[mType]);
    if (step == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x900)) {
            return cPhs_ERROR_e;
        } else {
            setBaseMtx();
            fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
            fopAcM_setCullSizeBox2(this, mpModel->getModelData());

            mStts.Init(0xff, 0xff, this);
            mSph.Set(mCcDSph);
            mSph.SetStts(&mStts);
            mTorchPos = current.pos;

            if (mType == 0) {
                cXyz v(0.0f, 20.0f, 125.0f);
                mDoMtx_stack_c::ZXYrotS(shape_angle.x, shape_angle.y, shape_angle.z);
                mDoMtx_stack_c::multVec(&v, &v);
                mTorchPos += v;
            } else {
                mTorchPos.y -= 200.0f;
            }

            mIsLit = getSwBit();
            if (mIsLit == 0xff) {
                mIsLit = 0;
            }

            lightInit();

            eyePos = mTorchPos;
            mSound.init(&current.pos, 1);
            mTgHit = 0;
        }
    }

    return step;
}

/* 80C57F6C-80C57F8C 00058C 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__13daLv3Candle_cFP10fopAc_ac_c            */
int daLv3Candle_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daLv3Candle_c*>(i_this)->CreateHeap();
}

/* 80C57F8C-80C58018 0005AC 008C+00 1/1 0/0 0/0 .text            lightInit__13daLv3Candle_cFv */
void daLv3Candle_c::lightInit() {
    mLightPos = mTorchPos;
    mLightPos.y += 10.0f;

    if (mIsLit) {
        mLight.mPosition = mLightPos;
        mLight.mColor.r = 188;
        mLight.mColor.g = 102;
        mLight.mColor.b = 66;
        mLight.mPow = 500.0f;
        mLight.mFluctuation = 1.0f;
        return;
    }

    mIntensity = 0.0f;
}

/* 80C58018-80C580A0 000638 0088+00 1/1 0/0 0/0 .text            pointLightProc__13daLv3Candle_cFv
 */
void daLv3Candle_c::pointLightProc() {
    if (!mIsLit) {
        GXColor color = {188, 102, 66, 255};
        cLib_addCalc(&mIntensity, 1.0f, 0.5f, 0.1f, 0.0001f);

        if (mIntensity >= 0.000001f) {
            dKy_BossLight_set(&mLightPos, &color, mIntensity, 0);
        }
    }
}

/* 80C580A0-80C582FC 0006C0 025C+00 1/1 0/0 0/0 .text            Execute__13daLv3Candle_cFv */
int daLv3Candle_c::Execute() {
    dComIfGp_particle_setSimple(0x100, &mTorchPos, 0xff, g_whiteColor, g_whiteColor, 0, 0.0f);
    dComIfGp_particle_setSimple(0x101, &mTorchPos, 0xff, g_whiteColor, g_whiteColor, 0, 0.0f);
    dComIfGp_particle_setSimple(0x103, &mTorchPos, 0xff, g_whiteColor, g_whiteColor, 0, 0.0f);

    mDoAud_seStartLevel(Z2SE_OBJ_FIRE_BURNING, &mTorchPos, 0,
                        dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

    if (mSph.ChkTgHit()) {
        cCcD_Obj* obj = mSph.GetTgHitObj();
        if (obj != NULL) {
            bool play_sound = true;
            fopAc_ac_c* actor = obj->GetAc();
            if (fopAcM_GetName(actor) == PROC_ALINK) {
                dCcD_GObjInf* gobj = mSph.GetTgHitGObj();
                if (gobj->GetAtType() & AT_TYPE_NORMAL_SWORD && mTgHit != 0) {
                    play_sound = false;
                }
            }

            if (play_sound) {
                u32 se_id = mSph.GetTgHitObjHitSeID(1);
                mSound.startCollisionSE(se_id, 9, NULL);
            }
        }
    } else {
        mTgHit = 0;
    }

    mSound.framework(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    setBaseMtx();

    cXyz pos = current.pos;
    if (mType == 0) {
        mSph.SetR(90.0f);
        pos.z += 70.0f;
    } else {
        mSph.SetR(60.0f);
        pos.y -= 200.0f;
    }

    mSph.SetC(pos);
    dComIfG_Ccsp()->Set(&mSph);

    pointLightProc();

    return TRUE;
}

/* 80C582FC-80C583A0 00091C 00A4+00 1/1 0/0 0/0 .text            Draw__13daLv3Candle_cFv */
int daLv3Candle_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();

    return TRUE;
}

/* 80C583A0-80C58404 0009C0 0064+00 1/1 0/0 0/0 .text            Delete__13daLv3Candle_cFv */
int daLv3Candle_c::Delete() {
    mSound.deleteObject();
    dComIfG_resDelete(&mPhaseReq, l_resNameIdx[mType]);

    if (mIsLit) {
        dKy_plight_cut(&mLight);
    }
    return TRUE;
}

/* 80C58404-80C58424 000A24 0020+00 1/0 0/0 0/0 .text            daLv3Candle_Draw__FP13daLv3Candle_c
 */
static int daLv3Candle_Draw(daLv3Candle_c* i_this) {
    return static_cast<daLv3Candle_c*>(i_this)->Draw();
}

/* 80C58424-80C58444 000A44 0020+00 1/0 0/0 0/0 .text daLv3Candle_Execute__FP13daLv3Candle_c */
static int daLv3Candle_Execute(daLv3Candle_c* i_this) {
    return static_cast<daLv3Candle_c*>(i_this)->Execute();
}

/* 80C58444-80C58464 000A64 0020+00 1/0 0/0 0/0 .text daLv3Candle_Delete__FP13daLv3Candle_c */
static int daLv3Candle_Delete(daLv3Candle_c* i_this) {
    return static_cast<daLv3Candle_c*>(i_this)->Delete();
}

/* 80C58464-80C58484 000A84 0020+00 1/0 0/0 0/0 .text            daLv3Candle_Create__FP10fopAc_ac_c
 */
static int daLv3Candle_Create(fopAc_ac_c* i_this) {
    return static_cast<daLv3Candle_c*>(i_this)->create();
}

/* 80C58638-80C58658 -00001 0020+00 1/0 0/0 0/0 .data            l_daLv3Candle_Method */
static actor_method_class l_daLv3Candle_Method = {
    (process_method_func)daLv3Candle_Create,  (process_method_func)daLv3Candle_Delete,
    (process_method_func)daLv3Candle_Execute, NULL,
    (process_method_func)daLv3Candle_Draw,
};

/* 80C58658-80C58688 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv3Candle */
extern actor_process_profile_definition g_profile_Obj_Lv3Candle = {
    fpcLy_CURRENT_e,         // mLayerID
    7,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_Lv3Candle,      // mProcName
    &g_fpcLf_Method.base,   // sub_method
    sizeof(daLv3Candle_c),   // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    620,                     // mPriority
    &l_daLv3Candle_Method,   // sub_method
    0x60000,                 // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
