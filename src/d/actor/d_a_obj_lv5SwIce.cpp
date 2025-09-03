/**
 * @file d_a_obj_lv5SwIce.cpp
 * Snowpeak Ruins Ice Switch
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv5SwIce.h"
#include "d/d_com_inf_game.h"
#include "d/d_s_play.h"

/* 80C6C94C-80C6C97C 0000EC 0030+00 1/1 0/0 0/0 .text            __ct__16daLv5SwIce_HIO_cFv */
daLv5SwIce_HIO_c::daLv5SwIce_HIO_c() {
    hitcount = 3;
}

/* 80C6CA20-80C6CAA8 0001C0 0088+00 2/2 0/0 0/0 .text            setBaseMtx__12daLv5SwIce_cFv */
void daLv5SwIce_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);

    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80C6CAA8-80C6CB14 000248 006C+00 1/0 0/0 0/0 .text            CreateHeap__12daLv5SwIce_cFv */
int daLv5SwIce_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("L5SwIce", 4);
    JUT_ASSERT(0, modelData != 0);

    mpModel = mDoExt_J3DModel__create(modelData, 0, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    return 1;
}

/* 80C6CB14-80C6CCE4 0002B4 01D0+00 1/1 0/0 0/0 .text            create__12daLv5SwIce_cFv */
int daLv5SwIce_c::create() {
    fopAcM_SetupActor(this, daLv5SwIce_c);

    mSwBit1 = getSwBit1();
    if (mSwBit1 != 0xFF && fopAcM_isSwitch(this, mSwBit1)) {
        return cPhs_ERROR_e;
    }

    int phase = dComIfG_resLoad(&mPhase, "L5SwIce");
    if (phase == cPhs_COMPLEATE_e) {
        if (MoveBGCreate("L5SwIce", 7, dBgS_MoveBGProc_Typical, 0x14B0, NULL) == cPhs_ERROR_e) {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());
        mCcStts.Init(0xFF, 0xFF, this);
        mCcCyl.Set(mCcDCyl);
        mCcCyl.SetStts(&mCcStts);

        init_modeWait();
        setBaseMtx();
    }

    return phase;
}

/* 80C6CDD0-80C6CE28 000570 0058+00 1/0 0/0 0/0 .text            Execute__12daLv5SwIce_cFPPA3_A4_f
 */
int daLv5SwIce_c::Execute(Mtx** param_0) {
    procMain();
    *param_0 = &mpModel->getBaseTRMtx();
    setBaseMtx();
    mCcStts.Move();
    return 1;
}

/* 80C6D6D4-80C6D6DC 000014 0008+00 2/2 0/0 0/0 .bss             l_HIO */
static daLv5SwIce_HIO_c l_HIO;

/* 80C6D508-80C6D538 000000 0030+00 3/3 0/0 0/0 .rodata          mCcDObjInfo__12daLv5SwIce_c */
const dCcD_SrcGObjInf daLv5SwIce_c::mCcDObjInfo = {
    {0, {{0x100, 1, 0}, {0x400000, 0x11}, {0}}},
    {dCcD_SE_SWORD, 0, 0, 2, 1},
    {dCcD_SE_STONE, 0, 0, 0, 0x6},
    {0},
};

/* 80C6D580-80C6D5C4 000020 0044+00 2/2 0/0 0/0 .data            mCcDCyl__12daLv5SwIce_c */
dCcD_SrcCyl daLv5SwIce_c::mCcDCyl = {
    daLv5SwIce_c::mCcDObjInfo,
    {
        {0.0f, 0.0f, 0.0f},  // mCenter
        0.0f,                // mRadius
        0.0f                 // mHeight
    }  // mCyl
};

/* 80C6CE28-80C6CEB4 0005C8 008C+00 1/1 0/0 0/0 .text            procMain__12daLv5SwIce_cFv */
void daLv5SwIce_c::procMain() {
    typedef void (daLv5SwIce_c::*procFunc)();
    static procFunc mode_proc[] = {
        &daLv5SwIce_c::modeWait,
        &daLv5SwIce_c::modeBreak,
    };

    (this->*mode_proc[mMode])();
}

/* 80C6CEB4-80C6CED0 000654 001C+00 1/1 0/0 0/0 .text            init_modeWait__12daLv5SwIce_cFv */
void daLv5SwIce_c::init_modeWait() {
    mHitcount = l_HIO.hitcount;
    mMode = MODE_WAIT;
}

/* 80C6CED0-80C6D0F4 000670 0224+00 1/0 0/0 0/0 .text            modeWait__12daLv5SwIce_cFv */
void daLv5SwIce_c::modeWait() {
    if (mCcCyl.ChkTgHit()) {
        dCcD_GObjInf* hit_obj = mCcCyl.GetTgHitGObj();

        if (hit_obj->GetAtType() & AT_TYPE_IRON_BALL) {
            if (hit_obj->GetAtAtp() == 100 || hit_obj->GetAtAtp() == 3) {
                init_modeBreak();
            } else if (hit_obj->GetAtAtp() == 2) {
                cXyz ptcl_scale(1.0f, 1.0f, 1.0f);
                mEmitter1ID[0] =
                    dComIfGp_particle_set(mEmitter1ID[0], 0x8678, &current.pos, &shape_angle,
                                          &ptcl_scale, 0xFF, 0, -1, NULL, NULL, NULL);

                mDoAud_seStart(Z2SE_OBJ_ICE_KEZURU, &current.pos, 0,
                               dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

                mHitcount--;
                if (mHitcount == 0) {
                    init_modeBreak();
                }
            }
        }
    }

    mCcCyl.SetR(oREG_F(0) + 120.0f);
    mCcCyl.SetH(oREG_F(1) + 220.0f);
    mCcCyl.SetC(current.pos);
    dComIfG_Ccsp()->Set(&mCcCyl);

    cXyz ptcl_scale(0.6f, 0.6f, 0.6f);
    for (int i = 0; i < 2; i++) {
        static const u16 l_eff_r[] = {0x8AE1, 0x8AE2};
        mEmitter0ID[i] =
            dComIfGp_particle_set(mEmitter0ID[i], l_eff_r[i], &current.pos, NULL, &ptcl_scale);
    }
}

/* 80C6D0F4-80C6D144 000894 0050+00 1/1 0/0 0/0 .text            init_modeBreak__12daLv5SwIce_cFv */
void daLv5SwIce_c::init_modeBreak() {
    if (mSwBit1 != 0xFF) {
        fopAcM_onSwitch(this, mSwBit1);
    }

    mMode = MODE_BREAK;
}

/* 80C6D144-80C6D260 0008E4 011C+00 1/0 0/0 0/0 .text            modeBreak__12daLv5SwIce_cFv */
void daLv5SwIce_c::modeBreak() {
    cXyz ptcl_scale(0.75f, 0.75f, 0.75f);
    for (int i = 0; i < 2; i++) {
        static const u16 l_eff_break[] = {0x8ADF, 0x8AE0};
        mEmitter1ID[i] =
            dComIfGp_particle_set(mEmitter1ID[i], l_eff_break[i], &current.pos, NULL, &ptcl_scale);
    }

    mDoAud_seStart(Z2SE_OBJ_ICE_BREAK, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    fopAcM_delete(this);
}

/* 80C6D260-80C6D314 000A00 00B4+00 1/0 0/0 0/0 .text            Draw__12daLv5SwIce_cFv */
int daLv5SwIce_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    fopAcM_setEffectMtx(this, mpModel->getModelData());

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80C6D314-80C6D344 000AB4 0030+00 1/0 0/0 0/0 .text            Delete__12daLv5SwIce_cFv */
int daLv5SwIce_c::Delete() {
    dComIfG_resDelete(&mPhase, "L5SwIce");
    return 1;
}

/* 80C6D344-80C6D370 000AE4 002C+00 1/0 0/0 0/0 .text            daLv5SwIce_Draw__FP12daLv5SwIce_c
 */
static int daLv5SwIce_Draw(daLv5SwIce_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C6D370-80C6D390 000B10 0020+00 1/0 0/0 0/0 .text daLv5SwIce_Execute__FP12daLv5SwIce_c */
static int daLv5SwIce_Execute(daLv5SwIce_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C6D390-80C6D3B0 000B30 0020+00 1/0 0/0 0/0 .text            daLv5SwIce_Delete__FP12daLv5SwIce_c
 */
static int daLv5SwIce_Delete(daLv5SwIce_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C6D3B0-80C6D3D0 000B50 0020+00 1/0 0/0 0/0 .text            daLv5SwIce_Create__FP10fopAc_ac_c
 */
static int daLv5SwIce_Create(fopAc_ac_c* i_this) {
    return ((daLv5SwIce_c*)i_this)->create();
}

/* 80C6D5F4-80C6D614 -00001 0020+00 1/0 0/0 0/0 .data            l_daLv5SwIce_Method */
static actor_method_class l_daLv5SwIce_Method = {
    (process_method_func)daLv5SwIce_Create,  (process_method_func)daLv5SwIce_Delete,
    (process_method_func)daLv5SwIce_Execute, (process_method_func)NULL,
    (process_method_func)daLv5SwIce_Draw,
};

/* 80C6D614-80C6D644 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv5SwIce */
extern actor_process_profile_definition g_profile_Obj_Lv5SwIce = {
    fpcLy_CURRENT_e,         // mLayerID
    3,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_Lv5SwIce,       // mProcName
    &g_fpcLf_Method.base,   // sub_method
    sizeof(daLv5SwIce_c),    // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    537,                     // mPriority
    &l_daLv5SwIce_Method,    // sub_method
    0x00040100,              // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
