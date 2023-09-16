//
// d_a_obj_swspinner.cpp
// Object - swspinner
//

#include "rel/d/a/obj/d_a_obj_swspinner/d_a_obj_swspinner.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "d/com/d_com_inf_game.h"
#include "d/d_procname.h"

/* ############################################################################################## */
/* 80CFFF78-80D00174 000078 01FC+00 1/1 0/0 0/0 .text            search_spinner_sub__FPvPv */
static void* search_spinner_sub(void* param_0, void* param_1) {
    daSpinner_c* spinner = (daSpinner_c*)param_0;
    daObjSwSpinner_c* swspinner = (daObjSwSpinner_c*)param_1;

    if (spinner != NULL && fopAc_IsActor(spinner) && fpcM_GetProfName(spinner) == PROC_SPINNER) {
        if (spinner->current.pos.absXZ(swspinner->current.pos) < 100.0f) {
            if (swspinner->field_0x5e8 == NULL) {
                swspinner->field_0x5e8 = 1;
            }
            spinner->setSpinnerTag(swspinner->mAttentionInfo.mPosition);
            return spinner;
        }
        if (swspinner->field_0x5e8 != NULL) {
            spinner->offSpinnerTag();
            swspinner->field_0x5e8 = NULL;
        }
    }

    return NULL;
}

/* 80D00174-80D001CC 000274 0058+00 1/1 0/0 0/0 .text            initBaseMtx__16daObjSwSpinner_cFv
 */
void daObjSwSpinner_c::initBaseMtx() {
    mpModel1->setBaseScale(mScale);
    mpModel2->setBaseScale(mScale);
    setBaseMtx();
}

/* 80D001CC-80D00284 0002CC 00B8+00 2/2 0/0 0/0 .text            setBaseMtx__16daObjSwSpinner_cFv */
void daObjSwSpinner_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);

    mpModel1->i_setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), mMtx);

    MTXTrans(mDoMtx_stack_c::now, current.pos.x, current.pos.y + field_0x5e4, current.pos.z);
    mDoMtx_stack_c::YrotM(orig.angle.y);

    mpModel2->i_setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

/* ############################################################################################## */
/* 80D00284-80D0035C 000384 00D8+00 1/0 0/0 0/0 .text            Create__16daObjSwSpinner_cFv */
int daObjSwSpinner_c::Create() {
    if (i_fopAcM_isSwitch(this, getSwBit2())) {
        field_0x5e4 = 50.0f;
        field_0x5ea = 0;
    } else {
        field_0x5e4 = 30.0f;
        field_0x5ea = 1;
    }
    mAttentionInfo.mPosition.y -= 100.0f;

    initBaseMtx();
    fopAcM_SetMtx(this, mpModel1->getBaseTRMtx());
    fopAcM_setCullSizeBox2(this, mpModel1->getModelData());

    dComIfG_Bgsp().Regist(mpBgW2, this);
    mpBgW2->Move();

    return 1;
}

/* ############################################################################################## */
/* 80D00AE0-80D00AE4 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "P_Sswitch";

/* 80D0035C-80D00498 00045C 013C+00 1/0 0/0 0/0 .text            CreateHeap__16daObjSwSpinner_cFv */
int daObjSwSpinner_c::CreateHeap() {
    mpModel1 = mDoExt_J3DModel__create((J3DModelData*)dComIfG_getObjectRes(l_arcName, 4), 0x80000,
                                       0x11000084);
    if (mpModel1 == NULL) {
        return 0;
    }

    mpModel2 = mDoExt_J3DModel__create((J3DModelData*)dComIfG_getObjectRes(l_arcName, 5), 0x80000,
                                       0x11000084);
    if (mpModel2 == NULL) {
        return 0;
    }

    mpBgW2 = new dBgW();
    if (mpBgW2 == NULL || mpBgW2->Set((cBgD_t*)dComIfG_getObjectRes(l_arcName, 8), 1, &mMtx)) {
        mpBgW2 = NULL;
        return 0;
    }

    return 1;
}

/* 80D00498-80D00518 000598 0080+00 1/1 0/0 0/0 .text            create1st__16daObjSwSpinner_cFv */
int daObjSwSpinner_c::create1st() {
    int phase = dComIfG_resLoad(&mPhase, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        phase = MoveBGCreate(l_arcName, 9, NULL, 0x2200, NULL);
        if (phase == cPhs_ERROR_e) {
            return phase;
        }
    }
    return phase;
}

/* ############################################################################################## */
/* 80D00518-80D00890 000618 0378+00 1/0 0/0 0/0 .text Execute__16daObjSwSpinner_cFPPA3_A4_f */
int daObjSwSpinner_c::Execute(Mtx** param_0) {
    daSpinner_c* spinner = NULL;
    mShapeAngleY = shape_angle.y;

    if (field_0x5ea != NULL) {
        spinner = (daSpinner_c*)fopAcM_Search((fopAcIt_JudgeFunc)search_spinner_sub, this);
        if (spinner != NULL) {
            if ((field_0x5e8 != NULL && spinner->checkSpinnerTagInto()) ||
                spinner->checkSpinnerTagIntoIncRot()) {
                shape_angle.y = spinner->getAngleY();
            }
        } else {
            field_0x5e8 = NULL;
        }
    }

    mRotSpeedY = cLib_distanceAngleS(shape_angle.y, mShapeAngleY);
    if (mRotSpeedY == 0) {
        mCount = 0;
    } else {
        mCount += 1;
    }

    if (i_fopAcM_isSwitch(this, getSwBit2())) {
        if (cLib_addCalc(&field_0x5e4, 50.0f, 0.1f, 10.0f, 2.0f) == 0.0f && field_0x5ea != NULL) {
            if (field_0x5e8 != NULL) {
                spinner->offSpinnerTag();
                field_0x5e8 = NULL;
            }
            shape_angle.y = orig.angle.y;
            field_0x5ea = NULL;
        }
        if (field_0x5eb == NULL) {
            fopAcM_seStart(this, Z2SE_OBJ_SPNR_SW_CL, 0);
        }
    } else if (field_0x5e8 != NULL) {
        if (mCount > 200) {
            if (mRotSpeedY > 3000) {
                i_fopAcM_onSwitch(this, getSwBit());
            } else {
                i_fopAcM_offSwitch(this, getSwBit());
            }
        }
    } else {
        dComIfGs_offSwitch(getSwBit() & 0XFF, fopAcM_GetHomeRoomNo(this));
    }
    if (field_0x5e8 != NULL && field_0x5e9 == NULL) {
        fopAcM_seStart(this, Z2SE_OBJ_SPNR_SW_FIT, 0);
    }
    if (mRotSpeedY != 0) {
        fopAcM_seStartLevel(this, Z2SE_OBJ_SPNR_SW_RL, mRotSpeedY);
    }

    *param_0 = &mBgMtx;
    setBaseMtx();
    mpBgW2->Move();
    mAttentionInfo.mPosition = current.pos;
    mAttentionInfo.mPosition.y -= 100.0f;
    field_0x5eb = i_fopAcM_isSwitch(this, getSwBit2()) ? 1 : 0;
    field_0x5e9 = field_0x5e8;

    return 1;
}

/* 80D00890-80D00954 000990 00C4+00 1/0 0/0 0/0 .text            Draw__16daObjSwSpinner_cFv */
int daObjSwSpinner_c::Draw() {
    g_env_light.settingTevStruct(16, &current.pos, &mTevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel1, &mTevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel2, &mTevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel1);
    mDoExt_modelUpdateDL(mpModel2);
    dComIfGd_setList();

    return 1;
}

/* 80D00954-80D009C0 000A54 006C+00 1/0 0/0 0/0 .text            Delete__16daObjSwSpinner_cFv */
int daObjSwSpinner_c::Delete() {
    if (mpBgW2 != NULL && mpBgW2->ChkUsed()) {
        dComIfG_Bgsp().Release(mpBgW2);
    }
    dComIfG_resDelete(&mPhase, l_arcName);
    return 1;
}

/* ############################################################################################## */
/* 80D009C0-80D00A20 000AC0 0060+00 1/0 0/0 0/0 .text
 * daObjSwSpinner_create1st__FP16daObjSwSpinner_c               */
static int daObjSwSpinner_create1st(daObjSwSpinner_c* i_this) {
    fopAcM_SetupActor(i_this, daObjSwSpinner_c);
    return i_this->create1st();
}

/* 80D00A20-80D00A40 000B20 0020+00 1/0 0/0 0/0 .text
 * daObjSwSpinner_MoveBGDelete__FP16daObjSwSpinner_c            */
static int daObjSwSpinner_MoveBGDelete(daObjSwSpinner_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80D00A40-80D00A60 000B40 0020+00 1/0 0/0 0/0 .text
 * daObjSwSpinner_MoveBGExecute__FP16daObjSwSpinner_c           */
static int daObjSwSpinner_MoveBGExecute(daObjSwSpinner_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80D00A60-80D00A8C 000B60 002C+00 1/0 0/0 0/0 .text
 * daObjSwSpinner_MoveBGDraw__FP16daObjSwSpinner_c              */
static int daObjSwSpinner_MoveBGDraw(daObjSwSpinner_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80D00AE4-80D00B04 -00001 0020+00 1/0 0/0 0/0 .data            daObjSwSpinner_METHODS */
static actor_method_class daObjSwSpinner_METHODS = {
    (process_method_func)daObjSwSpinner_create1st,
    (process_method_func)daObjSwSpinner_MoveBGDelete,
    (process_method_func)daObjSwSpinner_MoveBGExecute,
    (process_method_func)NULL,
    (process_method_func)daObjSwSpinner_MoveBGDraw,
};

/* 80D00B04-80D00B34 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_SwSpinner */
extern actor_process_profile_definition g_profile_Obj_SwSpinner = {
    -3,                        // mLayerID
    3,                         // mListID
    -3,                        // mListPrio
    PROC_Obj_SwSpinner,        // mProcName
    &g_fpcLf_Method.mBase,     // mSubMtd
    sizeof(daObjSwSpinner_c),  // mSize
    0,                         // mSizeOther
    0,                         // mParameters
    &g_fopAc_Method.base,      // mSubMtd
    0x022F,                    // mPriority
    &daObjSwSpinner_METHODS,   // mSubMtd
    0x00040100,                // mStatus
    0,                         // mActorType
    14,                        // mCullType
};

/* 80D00AD4-80D00AD4 000040 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
