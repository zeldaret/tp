/**
 * @file d_a_obj_gomikabe.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_gomikabe.h"
#include "SSystem/SComponent/c_lib.h"
#include "d/d_bg_w.h"
#include "d/d_cc_d.h"
#include "d/d_com_inf_game.h"
#include "m_Do/m_Do_lib.h"

/* 80BFFD30-80BFFD34 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "GomiKabe";

/* 80BFE22C-80BFE244 0000EC 0018+00 1/1 0/0 0/0 .text            __ct__19daObjGOMIKABE_HIO_cFv */
daObjGOMIKABE_HIO_c::daObjGOMIKABE_HIO_c() {
    mId = -1;
}

#ifdef DEBUG
void daObjGOMIKABE_HIO_c::genMessage(JORMContext* ctx) {
    // Zora Rock
    ctx->genLabel("ゾーラ岩", 0x80000001, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
}
#endif

/* 80BFE244-80BFE2CC 000104 0088+00 1/1 0/0 0/0 .text            initCcCylinder__15daObjGOMIKABE_cFv
 */
void daObjGOMIKABE_c::initCcCylinder() {
    const static dCcD_SrcSph ccSphSrc = {
        {
            {0x0, {{0x0, 0x0, 0x0}, {0x2020, 0x11}, 0x78}},  // mObj
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},              // mGObjAt
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},              // mGObjTg
            {0x0},                                           // mGObjCo
        },                                                   // mObjInf
        {
            {{0.0f, 0.0f, 0.0f}, 200.0f}  // mSph
        }  // mSphAttr
    };

    mStts.Init(0xff, 0xff, this);
    for (int i = 0; i < 3; i++) {
        mSphs[i].Set(ccSphSrc);
        mSphs[i].SetStts(&mStts);
        mSphs[i].SetC(current.pos);
    }
}

/* 80BFE2CC-80BFE3FC 00018C 0130+00 1/1 0/0 0/0 .text            SetCcCyl__15daObjGOMIKABE_cFv */
void daObjGOMIKABE_c::SetCcCyl() {
    cXyz offset(-200.0f, 0.0f, 0.0f);
    cXyz sphCenter(0.0f, 0.0f, 0.0f);
    for (int i = 0; i < 3; i++) {
        offset.set(i * 200.0f  + -200.0f, 0.0f, 0.0f);
        cLib_offsetPos(&sphCenter, &current.pos, shape_angle.y, &offset);
        mSphs[i].SetC(sphCenter);
        mSphs[i].SetR(200.0f);
        dComIfG_Ccsp()->Set(&mSphs[i]);
    }
}

/* 80BFE438-80BFE458 0002F8 0020+00 1/0 0/0 0/0 .text daObjGOMIKABE_Create__FP10fopAc_ac_c */
static int daObjGOMIKABE_Create(fopAc_ac_c* i_this) {
    return ((daObjGOMIKABE_c*)i_this)->create();
}

/* 80BFE458-80BFE47C 000318 0024+00 1/0 0/0 0/0 .text daObjGOMIKABE_Delete__FP15daObjGOMIKABE_c */
static int daObjGOMIKABE_Delete(daObjGOMIKABE_c* i_this) {
    i_this->MoveBGDelete();
    return 1;
}

/* 80BFE47C-80BFE4C4 00033C 0048+00 1/1 0/0 0/0 .text            WaitAction__15daObjGOMIKABE_cFv */
void daObjGOMIKABE_c::WaitAction() {
    cXyz cStack_28(current.pos.x, current.pos.y + 300.0f, current.pos.z);
    f32 height = current.pos.y;
    if (fopAcM_wt_c::waterCheck(&cStack_28)) {
        height = fopAcM_wt_c::getWaterY();
    }
}

/* 80BFE4C4-80BFE52C 000384 0068+00 1/1 0/0 0/0 .text            BreakChk__15daObjGOMIKABE_cFv */
void daObjGOMIKABE_c::BreakChk() {
    for (int i = 0; i < 3; i++) {
        if (mSphs[i].ChkTgHit()) {
            BreakSet();
            break;
        }
    }
}

/* 80BFE52C-80BFEA24 0003EC 04F8+00 1/1 0/0 1/1 .text            BreakSet__15daObjGOMIKABE_cFv */
void daObjGOMIKABE_c::BreakSet() {
    cXyz local_78(0.0f, 0.0f, 0.0f);
    cXyz cStack_84;
    int local_98 = 2;
    int i = 0;
    for (; i < local_98; i++) {
        cStack_84.set((50 / local_98) * i + 50.0f, 50.0f, 0.0f);
        mBreakSpeeds[i].set(cM_rndF(10.0f), cM_rndF(15.0f) + 15.0f, cM_rndF(15.0f) + 15.0f);
        mDoMtx_stack_c::YrotS(shape_angle.y);
        mDoMtx_stack_c::multVec(&mBreakSpeeds[i], &mBreakSpeeds[i]);
        mDoMtx_stack_c::multVec(&cStack_84, &local_78);
        mBreakRotationSpeeds[i].set(cM_rndFX(1000.0f), cM_rndFX(1000.0f), cM_rndFX(1000.0f));
        mBreakPositions[i].set(current.pos.x + local_78.x, current.pos.y + local_78.y,
                           current.pos.z + local_78.z);
        mBreakAngles[i] =  csXyz(cM_rndFX(32000.0f), 0, 0);
    }

    for (int i = local_98; i < 4; i++) {
        local_78.set(-50.0f - (50 / local_98) * i, 50.0f, 0.0f);
        mBreakSpeeds[i].set(-cM_rndF(10.0f), cM_rndF(15.0f) + 15.0f, cM_rndF(15.0f) + 15.0f);
        mDoMtx_stack_c::YrotS(shape_angle.y);
        mDoMtx_stack_c::multVec(&mBreakSpeeds[i], &mBreakSpeeds[i]);
        mDoMtx_stack_c::multVec(&local_78, &local_78);
        mBreakRotationSpeeds[i].set(cM_rndFX(1000.0f), cM_rndFX(1000.0f), cM_rndFX(1000.0f));
        mBreakPositions[i].set(current.pos.x + local_78.x, current.pos.y + local_78.y,
                           current.pos.z + local_78.z);
        mBreakAngles[i] =  csXyz(cM_rndFX(32000.0f), 0, 0);
    }

    for (i = 0; i < 4; i++) {
        mBreakOldPositions[i] = mBreakPositions[i];
        mAcchs[i].Set(&mBreakPositions[i], &mBreakOldPositions[i], this, 1, &mAcchCirs[i], &mBreakSpeeds[i],
                      NULL, NULL);
        mAcchs[i].CrrPos(dComIfG_Bgsp());
        mStreamScales[i] = cM_rndF(10.0f) + 5.0f;
    }
    field_0x5a2++;
    mAction++;
    Z2GetAudioMgr()->seStart(Z2SE_OBJ_G_KABE_BRK, &current.pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
    fopAcM_OffStatus(this, fopAcM_STATUS_UNK_0x100);
    if (mpBgW != NULL && mpBgW->ChkUsed()) {
        dComIfG_Bgsp().Release(mpBgW);
    }
}

/* 80BFEA60-80BFEB90 000920 0130+00 1/1 0/0 0/0 .text
 * getWaterStream__15daObjGOMIKABE_cFR4cXyzR4cXyzf              */
void daObjGOMIKABE_c::getWaterStream(cXyz& param_1, cXyz& param_2, f32 i_scale) {
    mGndChk.SetPos(&param_1);
    cXyz local_48;
    int local_58 = 0;
    s32 res = fopAcM_getWaterStream(&param_1, mGndChk, &local_48, &local_58, 0);
    cXyz local_54(local_58 * local_48.x, local_58 * local_48.y, local_58 * local_48.z);
    
    if (res != 0) {
        cLib_addCalc2(&param_2.x, local_54.x * 0.7f, 0.5f, i_scale);
        cLib_addCalc2(&param_2.z, local_54.z * 0.7f, 0.5f, i_scale);
        param_2.y = local_54.y;
    }
}

static f64 dummyLiteral1() { return 0.5; }
static f64 dummyLiteral2() { return 3.0; }
static f64 dummyLiteral3() { return 0.0; }
static f32 dummyLiteral4() { return 2.0f; }
static f32 dummyLiteral5() { return 3000.0f; }

/* 80BFEB90-80BFED54 000A50 01C4+00 1/1 0/0 0/0 .text            SpeedSet__15daObjGOMIKABE_cFv */
void daObjGOMIKABE_c::SpeedSet() {
    cXyz acStack_28;
    cXyz cStack_34;

    for (int i = 0; i < 4; i++) {
        cXyz cStack_34 = mBreakPositions[i];
        acStack_28.set(mBreakPositions[i].x, mBreakPositions[i].y + 300.0f, mBreakPositions[i].z);
        if (fopAcM_wt_c::waterCheck(&acStack_28)) {
            if (mBreakPositions[i].y <= fopAcM_wt_c::getWaterY() - 100.0f) {
                mBreakPositions[i].y = fopAcM_wt_c::getWaterY() - 100.0f;
                gravity = 0;
                getWaterStream(mBreakPositions[i], mBreakSpeeds[i], mStreamScales[i]);
                field_0x6d0[i] = 1;
            } else if (field_0x6d0[i] == 0) {
                mBreakSpeeds[i].y += gravity;
                mBreakPositions[i].y += mBreakSpeeds[i].y;
            } else {
                mBreakPositions[i].y = fopAcM_wt_c::getWaterY() - 100.0f;
                gravity = 0.0f;
                getWaterStream(mBreakPositions[i], mBreakSpeeds[i], mStreamScales[i]);
                field_0x6d0[i] = 1;
            }
        } else {
            mBreakSpeeds[i].y += gravity;
            mBreakPositions[i].y += mBreakSpeeds[i].y;
        }
        mBreakPositions[i].x += mBreakSpeeds[i].x;
        mBreakPositions[i].z += mBreakSpeeds[i].z;
        mBreakAngles[i] += mBreakRotationSpeeds[i];
    }
}

/* 80BFED54-80BFED74 000C14 0020+00 1/1 0/0 0/0 .text            BreakAction__15daObjGOMIKABE_cFv */
void daObjGOMIKABE_c::BreakAction() {
    SpeedSet();
}

/* 80BFED74-80BFEE24 000C34 00B0+00 1/1 0/0 0/0 .text            CheckCull__15daObjGOMIKABE_cFv */
void daObjGOMIKABE_c::CheckCull() {
    if (fopAcM_searchPlayerDistance(this) > 7000.0f) {
        int notInViewNum = 0;
        for (int i = 0; i < 4; i++) {
            if (!checkViewArea(mBreakPositions[i])) {
                notInViewNum++;
                if (notInViewNum >= 4) {
                    fopAcM_delete(this);
                }
            }
        }
    }
}

/* 80BFEE24-80BFEEA8 000CE4 0084+00 1/1 0/0 0/0 .text checkViewArea__15daObjGOMIKABE_cF4cXyz */
bool daObjGOMIKABE_c::checkViewArea(cXyz param_1) {
    Vec local_24;
    mDoLib_project(&param_1, &local_24);
    bool rv = false;
    if (local_24.x >= 0.0f && local_24.x <= FB_WIDTH && local_24.y >= 0.0f && local_24.y <= FB_HEIGHT) {
        rv = true;
    }

    return rv;
}

/* 80BFEEA8-80BFEF20 000D68 0078+00 1/1 0/0 0/0 .text            Action__15daObjGOMIKABE_cFv */
void daObjGOMIKABE_c::Action() {
    switch (mAction) {
    case ACTION_WAIT:
        WaitAction();
        BreakChk();
        SetCcCyl();
        setBaseMtx();
        break;
    case ACTION_BREAK:
        BreakAction();
        setBaseMtx2();
        CheckCull();
        break;
    }
}

/* 80BFEF20-80BFEF84 000DE0 0064+00 1/1 0/0 0/0 .text            setBaseMtx__15daObjGOMIKABE_cFv */
void daObjGOMIKABE_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::scaleM(mBaseScale);
    mModel->setBaseTRMtx(mDoMtx_stack_c::get());
    cMtx_copy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80BFEF84-80BFF018 000E44 0094+00 2/2 0/0 0/0 .text            setBaseMtx2__15daObjGOMIKABE_cFv */
void daObjGOMIKABE_c::setBaseMtx2() {
    for (int i = 0; i < 4; i++) {
        mDoMtx_stack_c::transS(mBreakPositions[i]);
        mDoMtx_stack_c::ZXYrotM(mBreakAngles[i]);
        mDoMtx_stack_c::scaleM(mBaseScale);
        mBreakModels[i]->setBaseTRMtx(mDoMtx_stack_c::get());
    }
}

/* 80BFF018-80BFF044 000ED8 002C+00 1/0 0/0 0/0 .text daObjGOMIKABE_Draw__FP15daObjGOMIKABE_c */
static int daObjGOMIKABE_Draw(daObjGOMIKABE_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80BFF044-80BFF064 000F04 0020+00 2/1 0/0 0/0 .text daObjGOMIKABE_Execute__FP15daObjGOMIKABE_c
 */
static int daObjGOMIKABE_Execute(daObjGOMIKABE_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80BFF064-80BFF164 000F24 0100+00 1/0 0/0 0/0 .text            CreateHeap__15daObjGOMIKABE_cFv */
int daObjGOMIKABE_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, "M_Gomikabe.bmd");
    JUT_ASSERT(250, modelData != NULL);
    mModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mModel == NULL) {
        return 0;
    }

    modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, "M_Gomikabe_Hahen.bmd");
    JUT_ASSERT(259, modelData != NULL);

    for (int i = 0; i < 4; i++) {
        mBreakModels[i] = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
        if (mBreakModels[i] == NULL) {
            return 0;
        }
    }

    return 1;
}

/* 80BFFE08-80BFFE0C 000008 0004+00 2/2 0/0 0/0 .bss             None */
static bool l_HIOInit;

/* 80BFFE18-80BFFE20 000018 0008+00 2/2 0/0 0/0 .bss             l_HIO */
static daObjGOMIKABE_HIO_c l_HIO;

/* 80BFF164-80BFF5B4 001024 0450+00 1/1 0/0 0/0 .text            create__15daObjGOMIKABE_cFv */
int daObjGOMIKABE_c::create() {
    fopAcM_ct(this, daObjGOMIKABE_c);

    int rv = dComIfG_resLoad(&mPhase, l_arcName);
    if (rv == cPhs_COMPLEATE_e) {
        s32 dzb_id = dComIfG_getObjctResName2Index(l_arcName, "M_Gomikabe.dzb");
        if (dzb_id == -1) {
            // "dzb data not found!<%s>"
            OS_REPORT("dzbデータが見つかりませんでした!<%s>\n\n", l_arcName);
            JUT_ASSERT(969, dzb_id != -1);
        }
        mSwBit = (fopAcM_GetParam(this) & 0xff0000) >> 16;
        if (mSwBit != 0xff) {
            if (dComIfGs_isSwitch(mSwBit, fopAcM_GetRoomNo(this))) {
                return cPhs_ERROR_e;
            }
        }

        rv = MoveBGCreate(l_arcName, dzb_id, dBgS_MoveBGProc_TypicalRotY, 0x2c40, NULL);
        if (rv == cPhs_ERROR_e) {
            return rv;
        }

        mDoExt_setupStageTexture(mModel->getModelData());

        if (fopAcM_GetParam(this) != 0xffffffff) {
            mBaseScale.x = (fopAcM_GetParam(this) & 0xff) * 0.05f + 1.0f;
            mBaseScale.z = (fopAcM_GetParam(this) & 0xff) * 0.05f + 1.0f;
            mBaseScale.y = ((fopAcM_GetParam(this) & 0xff00) >> 8) * 0.05f + 1.0f;
        } else {
            mBaseScale.set(1.0f, 1.0f, 1.0f);
        }

        if (!l_HIOInit) {
            l_HIOInit = true;
            mIsHIOOwner = 1;
            // Garbage Wall
            l_HIO.mId = mDoHIO_CREATE_CHILD("ごみ壁", &l_HIO);
        }

        fopAcM_SetMtx(this, mModel->getBaseTRMtx());
        cXyz cStack_50(current.pos.x, current.pos.y + 1000.0f, current.pos.z);
        for (int i = 0; i < 4; i++) {
            mAcchCirs[i].SetWall(30.0f, 100.0f);
            mAcchs[i].Set(&mBreakPositions[i], &mBreakOldPositions[i], this, 1, &mAcchCirs[i], &mBreakSpeeds[i],
                          NULL, NULL);
        }
        initCcCylinder();
        fopAcM_setCullSizeBox(this, -1000.0f, -500.0f, -1000.0f, 1000.0f, 1000.0f, 1000.0f);
        daObjGOMIKABE_Execute(this);
        setBaseMtx2();
    }
    return rv;
}

/* 80BFF8D0-80BFF8D8 001790 0008+00 1/0 0/0 0/0 .text daObjGOMIKABE_IsDelete__FP15daObjGOMIKABE_c
 */
static int daObjGOMIKABE_IsDelete(daObjGOMIKABE_c* i_this) {
    return 1;
}

/* 80BFF8D8-80BFF938 001798 0060+00 1/0 0/0 0/0 .text            Create__15daObjGOMIKABE_cFv */
int daObjGOMIKABE_c::Create() {
    fopAcM_setCullSizeBox(this, mBaseScale.x * -1000.0f, mBaseScale.y * -500.0f,
                          mBaseScale.z * -1000.0f, mBaseScale.x * 1000.0f, mBaseScale.y * 500.0f,
                          mBaseScale.z * 1000.0f);
    return cPhs_COMPLEATE_e;
}

/* 80BFF938-80BFFA00 0017F8 00C8+00 1/0 0/0 0/0 .text Execute__15daObjGOMIKABE_cFPPA3_A4_f */
int daObjGOMIKABE_c::Execute(Mtx** i_mtx) {
    for (int i = 0; i < 4; i++) {
        mBreakOldPositions[i] = mBreakPositions[i];
    }

    gravity = -5.0f;
    Action();
    if (mAction == ACTION_WAIT) {
        *i_mtx = &mBgMtx;
    } else {
        for (int i = 0; i < 4; i++) {
            mAcchs[i].CrrPos(dComIfG_Bgsp());
        }
    }
    return 1;
}

/* 80BFFA00-80BFFB1C 0018C0 011C+00 1/0 0/0 0/0 .text            Draw__15daObjGOMIKABE_cFv */
int daObjGOMIKABE_c::Draw() {
    if (mAction == ACTION_WAIT) {
        g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
        g_env_light.setLightTevColorType_MAJI(mModel, &tevStr);
        dComIfGd_setListBG();
        mDoExt_modelUpdateDL(mModel);
    } else {
        for (int i = 0; i < 4; i++) {
            g_env_light.settingTevStruct(0x10, &mBreakPositions[i], &tevStr);
            g_env_light.setLightTevColorType_MAJI(mBreakModels[i], &tevStr);
            dComIfGd_setListBG();
            mDoExt_modelUpdateDL(mBreakModels[i]);
        }
    }
    return 1;
}

/* 80BFFB1C-80BFFB74 0019DC 0058+00 1/0 0/0 0/0 .text            Delete__15daObjGOMIKABE_cFv */
int daObjGOMIKABE_c::Delete() {
    dComIfG_resDelete(&mPhase, l_arcName);
    if (mIsHIOOwner) {
        l_HIOInit = false;
        mDoHIO_DELETE_CHILD(l_HIO.mId);
    }
    return 1;
}

/* 80BFFD34-80BFFD54 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjGOMIKABE_Method */
static actor_method_class l_daObjGOMIKABE_Method = {
    (process_method_func)daObjGOMIKABE_Create,
    (process_method_func)daObjGOMIKABE_Delete,
    (process_method_func)daObjGOMIKABE_Execute,
    (process_method_func)daObjGOMIKABE_IsDelete,
    (process_method_func)daObjGOMIKABE_Draw,
};

/* 80BFFD54-80BFFD84 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_GOMIKABE */
extern actor_process_profile_definition g_profile_Obj_GOMIKABE = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_Obj_GOMIKABE,       // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daObjGOMIKABE_c), // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  519,                     // mPriority
  &l_daObjGOMIKABE_Method, // sub_method
  0x00040100,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};
