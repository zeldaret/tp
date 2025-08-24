/**
 * @file d_a_obj_riverrock.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_riverrock.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_cc_d.h"
#include "d/d_com_inf_game.h"

/* 80CBDB40-80CBDB44 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "RiverRock";

/* 80CBC6CC-80CBC6F4 0000EC 0028+00 1/1 0/0 0/0 .text            __ct__20daObjRIVERROCK_HIO_cFv */
daObjRIVERROCK_HIO_c::daObjRIVERROCK_HIO_c() {
    field_0x4 = -1;
    field_0x8 = 0.0f;
    field_0xc = 0.0f;
}

/* 80CBC6F4-80CBC754 000114 0060+00 1/1 0/0 0/0 .text initCcCylinder__16daObjRIVERROCK_cFv */
void daObjRIVERROCK_c::initCcCylinder() {
    const static dCcD_SrcCyl ccCylSrc = {
        {
            {0x0, {{0x0, 0x0, 0x0}, {0x20, 0x11}, 0x79}}, // mObj
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x1}, // mGObjTg
            {0x0}, // mGObjCo
        }, // mObjInf
        {
            {0.0f, -500.0f, 0.0f}, // mCenter
            1000.0f, // mRadius
            1000.0f // mHeight
        } // mCyl
    };

    mStts.Init(0xff, 0xff, this);
    mCyl.Set(ccCylSrc);
    mCyl.SetStts(&mStts);
    mCyl.SetC(current.pos);
}

/* 80CBC754-80CBC7B4 000174 0060+00 1/1 0/0 0/0 .text            SetCcCyl__16daObjRIVERROCK_cFv */
void daObjRIVERROCK_c::SetCcCyl() {
    mCyl.SetC(current.pos);
    mCyl.SetR(field_0x5c4.x * 1000.0f);
    dComIfG_Ccsp()->Set(&mCyl);
}

/* 80CBC7B4-80CBC7D4 0001D4 0020+00 1/0 0/0 0/0 .text daObjRIVERROCK_Create__FP10fopAc_ac_c */
static int daObjRIVERROCK_Create(fopAc_ac_c* i_this) {
    return static_cast<daObjRIVERROCK_c*>(i_this)->create();
}

/* 80CBC7D4-80CBC7F8 0001F4 0024+00 1/0 0/0 0/0 .text daObjRIVERROCK_Delete__FP16daObjRIVERROCK_c
 */
static int daObjRIVERROCK_Delete(daObjRIVERROCK_c* i_this) {
    i_this->MoveBGDelete();
    return 1;
}

/* 80CBC7F8-80CBC8BC 000218 00C4+00 1/1 0/0 0/0 .text BreakWaitAction__16daObjRIVERROCK_cFv */
void daObjRIVERROCK_c::BreakWaitAction() {
    shape_angle.x = field_0x5b4 * cM_ssin(field_0x5aa);
    cLib_addCalcAngleS(&field_0x5b0, 0x10, 0x100, 0x50, 0);
    field_0x5aa += field_0x5b0;
    if (cLib_chaseAngleS(&field_0x5b4, 0, 0x15) != 0) {
        mBreakSubAction = BREAK_MOVE;
        field_0x5aa = 0;
    }
}

/* 80CBC8BC-80CBCC3C 0002DC 0380+00 1/1 0/0 0/0 .text            CheckBG__16daObjRIVERROCK_cFv */
void daObjRIVERROCK_c::CheckBG() {
    mSoundObj.startLevelSound(Z2SE_OBJ_RG_ROCKPOLE_FALL, 0, -1);
    cXyz particlePos(0.0f, 5650.0f * field_0x5c4.y, field_0x5c4.z * 700.0f);
    cXyz cStack_bc(0.0f, 2850.0f * field_0x5c4.y, field_0x5c4.z * 700.0f);
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::transM(0.0f, 0.0f, field_0x5c4.z * 300.0f);
    mDoMtx_stack_c::ZXYrotM(field_0x5e8);
    mDoMtx_stack_c::transM(0.0f, 0.0f, field_0x5c4.z * -300.0f);
    mDoMtx_stack_c::multVec(&particlePos, &particlePos);
    mDoMtx_stack_c::multVec(&cStack_bc, &cStack_bc);
    mSoundObj.init(&cStack_bc, 2);
    dBgS_LinChk adStack_a0;
    adStack_a0.Set(&field_0x5d0, &particlePos, NULL);
    if (dComIfG_Bgsp().LineCross(&adStack_a0)) {
        if (dComIfG_Bgsp().GetSpecialCode(adStack_a0) == 1) {
            eyePos = adStack_a0.GetCross();
            fopAcM_seStart(this, Z2SE_OBJ_RG_ROCKPOLE_LAND, 0);
            if (field_0x5a8 != 0xff) {
                if (!dComIfGs_isSwitch(field_0x5a8, fopAcM_GetRoomNo(this))) {
                    dComIfGp_getVibration().StartShock(8, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
                }
            }
            mBreakSubAction = BREAK_BROKEN;
            cXyz particleScale(field_0x5c4.x, field_0x5c4.y, field_0x5c4.z);
            dComIfGp_particle_set(0x8706, &particlePos, &tevStr, &shape_angle, &particleScale);
            dComIfGp_particle_set(0x8707, &particlePos, &tevStr, &shape_angle, &particleScale);
            field_0x5b0 = field_0x5aa * 3.0f;
            field_0x5b8 = field_0x5e8.x;
            field_0x5b4 = 1024;
        }
    }
    if (field_0x5e8.x > 0x6000) {
        mBreakSubAction = BREAK_BROKEN;
    }
    field_0x5dc = field_0x5d0;
    field_0x5d0 = particlePos;
}

/* 80CBDBE8-80CBDBEC 000008 0004+00 2/2 0/0 0/0 .bss             None */
static bool mHIOInitialized;

/* 80CBDBF8-80CBDC08 000018 0010+00 4/4 0/0 0/0 .bss             l_HIO */
static daObjRIVERROCK_HIO_c l_HIO;

/* 80CBCC3C-80CBCCC0 00065C 0084+00 1/1 0/0 0/0 .text BreakMoveAction__16daObjRIVERROCK_cFv */
void daObjRIVERROCK_c::BreakMoveAction() {
    cLib_addCalcAngleS(&field_0x5aa, 0x1500, l_HIO.field_0x8 + 3628.0f, 0x1500, 0);
    field_0x5e8.x += field_0x5aa;
    field_0x5b6 += 0x50;
    CheckBG();
}

/* 80CBCCC0-80CBCD94 0006E0 00D4+00 1/1 0/0 0/0 .text            BrokenAction__16daObjRIVERROCK_cFv
 */
void daObjRIVERROCK_c::BrokenAction() {
    s16 sVar1 = field_0x5b4 * cM_ssin(field_0x5aa);
    if (sVar1 > 0) {
        sVar1 = -sVar1;
    }
    field_0x5e8.x = field_0x5b8 + sVar1;
    cLib_addCalcAngleS(&field_0x5b0, 0x300, 0x800, 0x100, 0);
    field_0x5aa += field_0x5b0;
    if (cLib_chaseAngleS(&field_0x5b4, 0, 0x20) != 0) {
        mBreakSubAction = BREAK_3;
    }
}

/* 80CBCD94-80CBCDE8 0007B4 0054+00 1/1 0/0 0/0 .text            BreakAction__16daObjRIVERROCK_cFv
 */
void daObjRIVERROCK_c::BreakAction() {
    switch (mBreakSubAction) {
    case BREAK_WAIT:
        BreakWaitAction();
        break;
    case BREAK_MOVE:
        BreakMoveAction();
        break;
    case BREAK_BROKEN:
        BrokenAction();
        break;
    case BREAK_3:
    default:
        break;
    }
}

/* 80CBCDE8-80CBCE2C 000808 0044+00 1/1 0/0 0/0 .text            Action__16daObjRIVERROCK_cFv */
void daObjRIVERROCK_c::Action() {
    switch (mAction) {
    case ACTION_WAIT:
        WaitAction();
        break;
    case ACTION_BREAK:
        BreakAction();
        break;
    }
}

/* 80CBCE2C-80CBD1C4 00084C 0398+00 3/3 0/0 0/0 .text            BreakSet__16daObjRIVERROCK_cFv */
void daObjRIVERROCK_c::BreakSet() {
    eyePos = current.pos;
    fopAcM_seStart(this, Z2SE_OBJ_RG_ROCK_BREAK, 0);
    cXyz acStack_30(0.0f, 0.0f, 1.0f);
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::transM(0.0f, 0.0f, field_0x5c4.z * 200.0f);
    mDoMtx_stack_c::multVec(&acStack_30, &acStack_30);
    cXyz cStack_3c(field_0x5c4.x, field_0x5c4.y, field_0x5c4.z);
    dComIfGp_particle_set(0x86ff, &acStack_30, &tevStr, &shape_angle, &cStack_3c);
    dComIfGp_particle_set(0x8700, &acStack_30, &tevStr, &shape_angle, &cStack_3c);
    dComIfGp_particle_set(0x8701, &acStack_30, &tevStr, &shape_angle, &cStack_3c);
    dComIfGp_particle_set(0x8702, &acStack_30, &tevStr, &shape_angle, &cStack_3c);
    dComIfGp_particle_set(0x8703, &acStack_30, &tevStr, &shape_angle, &cStack_3c);
    dComIfGp_particle_set(0x8704, &acStack_30, &tevStr, &shape_angle, &cStack_3c);
    dComIfGp_particle_set(0x8705, &acStack_30, &tevStr, &shape_angle, &cStack_3c);
    if (field_0x5a8 != 0xff) {
        if (!dComIfGs_isSwitch(field_0x5a8, fopAcM_GetRoomNo(this))) {
            dComIfGp_getVibration().StartShock(8, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
        }
    }
    field_0x5b0 = l_HIO.field_0xc + 280.0f;
    field_0x5b4 = 0x400;
    mAction = ACTION_BREAK;
    mBreakSubAction = BREAK_WAIT;
}

/* 80CBD1C4-80CBD204 000BE4 0040+00 1/1 0/0 0/0 .text            WaitAction__16daObjRIVERROCK_cFv */
void daObjRIVERROCK_c::WaitAction() {
    if (mCyl.ChkTgHit()) {
        BreakSet();
    }
}

/* 80CBD204-80CBD2FC 000C24 00F8+00 1/1 0/0 0/0 .text            setBaseMtx__16daObjRIVERROCK_cFv */
void daObjRIVERROCK_c::setBaseMtx() {
    if (mBreakSubAction == BREAK_MOVE || mBreakSubAction == BREAK_BROKEN ||
        mBreakSubAction == BREAK_3)
    {
        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::ZXYrotM(shape_angle);
        mDoMtx_stack_c::transM(0.0f, 0.0f, 150.0f * field_0x5c4.z);
        mDoMtx_stack_c::ZXYrotM(field_0x5e8);
        mDoMtx_stack_c::transM(0.0, 0.0, -150.0f * field_0x5c4.z);
        mDoMtx_stack_c::scaleM(field_0x5c4);
        mModel->setBaseTRMtx(mDoMtx_stack_c::get());
    } else {
        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::ZXYrotM(shape_angle);
        mDoMtx_stack_c::scaleM(field_0x5c4);
        mModel->setBaseTRMtx(mDoMtx_stack_c::get());
    }
    cMtx_copy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80CBD2FC-80CBD328 000D1C 002C+00 1/0 0/0 0/0 .text daObjRIVERROCK_Draw__FP16daObjRIVERROCK_c */
static int daObjRIVERROCK_Draw(daObjRIVERROCK_c* i_this) {
    return i_this->Draw();
}

/* 80CBD328-80CBD348 000D48 0020+00 2/1 0/0 0/0 .text daObjRIVERROCK_Execute__FP16daObjRIVERROCK_c
 */
static int daObjRIVERROCK_Execute(daObjRIVERROCK_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80CBD348-80CBD3C0 000D68 0078+00 1/0 0/0 0/0 .text            CreateHeap__16daObjRIVERROCK_cFv */
int daObjRIVERROCK_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*) dComIfG_getObjectRes(l_arcName, "M_RiverRock.bmd");
    JUT_ASSERT(242, modelData != 0);
    mModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    return mModel != NULL ? TRUE : FALSE;
}

/* 80CBD3C0-80CBD71C 000DE0 035C+00 1/1 0/0 0/0 .text            create__16daObjRIVERROCK_cFv */
int daObjRIVERROCK_c::create() {
    fopAcM_SetupActor(this, daObjRIVERROCK_c);
    int rv = dComIfG_resLoad(&mPhase, l_arcName);
    if (rv == cPhs_COMPLEATE_e) {
        gravity = -9.0f;
        int dzb_id = dComIfG_getObjctResName2Index(l_arcName, "M_RiverRock.dzb");
        JUT_ASSERT(856, dzb_id != -1);
        field_0x5a8 = (fopAcM_GetParam(this) >> 16) & 0xff;
        rv = MoveBGCreate(l_arcName,
                                            dzb_id, dBgS_MoveBGProc_TypicalRotY, 0x1bf0, NULL);
        if (rv == cPhs_ERROR_e) {
            return rv;
        }
        mDoExt_setupStageTexture(mModel->getModelData());
        if (fopAcM_GetParam(this) != -1) {
            field_0x5c4.x = (fopAcM_GetParam(this) & 0xff) * 0.05f + 0.5f;
            field_0x5c4.z = (fopAcM_GetParam(this) & 0xff) * 0.05f + 0.5f;
            field_0x5c4.y = ((fopAcM_GetParam(this) >> 8) & 0xff) * 0.05f + 0.5f;
        } else {
            field_0x5c4.set(1.0f, 1.0f, 1.0f);
        }
        if (!mHIOInitialized) {
            mHIOInitialized = true;
            mHIONeedDelete = true;
            l_HIO.field_0x4 = -1;
        }
        fopAcM_SetMtx(this, mModel->getBaseTRMtx());
        cXyz cStack_3c(current.pos.x, current.pos.y + 1000.0f, current.pos.z);
        cXyz cStack_48(current.pos.x, current.pos.y + field_0x5c4.y * 2800.0f, current.pos.z);
        mSoundObj.init(&cStack_48, 2);
        field_0x5d0.set(current.pos.x, current.pos.y + 6000.0f, current.pos.z);
        initCcCylinder();
        if (field_0x5a8 != 0xff && dComIfGs_isSwitch(field_0x5a8, fopAcM_GetRoomNo(this))) {
            BreakSet();
        } else {
            mAction = ACTION_WAIT;
        }
        fopAcM_setCullSizeBox(this, -6000.0f, -500.0f, -6000.0f, 6000.0f, 6000.0f, 6000.0f);
        daObjRIVERROCK_Execute(this);
    }
    return rv;
}

/* 80CBD7AC-80CBD7B4 0011CC 0008+00 1/0 0/0 0/0 .text
 * daObjRIVERROCK_IsDelete__FP16daObjRIVERROCK_c                */
static int daObjRIVERROCK_IsDelete(daObjRIVERROCK_c* i_this) {
    return 1;
}

/* 80CBD7B4-80CBD814 0011D4 0060+00 1/0 0/0 0/0 .text            Create__16daObjRIVERROCK_cFv */
int daObjRIVERROCK_c::Create() {
    fopAcM_setCullSizeBox(this, field_0x5c4.x * -1000.0f, field_0x5c4.y * -500.0f,
                          field_0x5c4.z * -1000.0f, field_0x5c4.x * 1000.0f, field_0x5c4.y * 500.0f,
                          field_0x5c4.z * 1000.0f);
    return cPhs_COMPLEATE_e;
}

/* 80CBD814-80CBD8E0 001234 00CC+00 1/0 0/0 0/0 .text Execute__16daObjRIVERROCK_cFPPA3_A4_f */
int daObjRIVERROCK_c::Execute(Mtx** ppMtx) {
    Action();
    field_0x5a9 = fopAcM_GetParam(this) >> 24;
    if (field_0x5a9 != 0xff) {
        if (dComIfGs_isSwitch(field_0x5a9, fopAcM_GetRoomNo(this)) && !field_0x5ee) {
            field_0x5ee = true;
            BreakSet();
        }
    }
    *ppMtx = &mBgMtx;
    SetCcCyl();
    setBaseMtx();
    mSoundObj.framework(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    return 1;
}

/* 80CBD8E0-80CBD964 001300 0084+00 1/0 0/0 0/0 .text            Draw__16daObjRIVERROCK_cFv */
int daObjRIVERROCK_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mModel);
    return 1;
}

/* 80CBD964-80CBD9C4 001384 0060+00 1/0 0/0 0/0 .text            Delete__16daObjRIVERROCK_cFv */
int daObjRIVERROCK_c::Delete() {
    dComIfG_resDelete(&mPhase, l_arcName);
    if (mHIONeedDelete) {
        mHIOInitialized = false;
    }
    mSoundObj.deleteObject();
    return 1;
}

// /* 80CBD9C4-80CBDA0C 0013E4 0048+00 2/1 0/0 0/0 .text            __dt__20daObjRIVERROCK_HIO_cFv */
// daObjRIVERROCK_HIO_c::~daObjRIVERROCK_HIO_c() {
// }

/* 80CBDB44-80CBDB64 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjRIVERROCK_Method */
static actor_method_class l_daObjRIVERROCK_Method = {
    (process_method_func)daObjRIVERROCK_Create,
    (process_method_func)daObjRIVERROCK_Delete,
    (process_method_func)daObjRIVERROCK_Execute,
    (process_method_func)daObjRIVERROCK_IsDelete,
    (process_method_func)daObjRIVERROCK_Draw,
};

/* 80CBDB64-80CBDB94 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_RIVERROCK */
extern actor_process_profile_definition g_profile_Obj_RIVERROCK = {
  fpcLy_CURRENT_e,          // mLayerID
  3,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_Obj_RIVERROCK,       // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daObjRIVERROCK_c), // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  472,                      // mPriority
  &l_daObjRIVERROCK_Method, // sub_method
  0x00040100,               // mStatus
  fopAc_ACTOR_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 80CBDB14-80CBDB14 0000B8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
