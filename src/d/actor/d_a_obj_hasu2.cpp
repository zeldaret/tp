/**
 * @file d_a_obj_hasu2.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_hasu2.h"

//
// Declarations:
//

/* 80C18298-80C182DC 000078 0044+00 1/1 0/0 0/0 .text
 * rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c              */
static void rideCallBack(dBgW* param_0, fopAc_ac_c* param_1, fopAc_ac_c* param_2) {
    (void)param_0;
    if (fopAcM_GetName(param_2) == PROC_ALINK) {
        nObjMHasu::daObjMHasu_c* hasu = (nObjMHasu::daObjMHasu_c*)(param_1);
        hasu->setRideFlag(true);
        hasu->setHasuCount(param_2->speedF);
    }
}

/* ############################################################################################## */
const int l_dzbidx = {7};
const int l_bmdidx = {4};

/* 80C18A58-80C18A70 000000 0018+00 4/4 0/0 0/0 .rodata          l_cull_box */
static const cull_box l_cull_box = {
    {-123.0f, -175.0f, -142.0f},
    {133.0f, 29.0f, 127.0f}
};

/* 80C18AA8-80C18AAC -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "M_Hasu";

/* 80C182DC-80C18340 0000BC 0064+00 1/1 0/0 0/0 .text            __ct__Q29nObjMHasu12daObjMHasu_cFv
 */
nObjMHasu::daObjMHasu_c::daObjMHasu_c() :
    mConst1(25.5f),
    mConst2(6.5f),
    mConst3(5.5f)
{
}

/* 80C18340-80C183D0 000120 0090+00 1/1 0/0 0/0 .text create1st__Q29nObjMHasu12daObjMHasu_cFv */
int nObjMHasu::daObjMHasu_c::create1st() {
    cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(this, l_arcName);
    if (phase == cPhs_COMPLEATE_e)
    {
        setMtx();
        phase = (cPhs__Step)MoveBGCreate(l_arcName, l_dzbidx, dBgS_MoveBGProc_TypicalRotY, 0x1450, &mMtx);
        if (phase == cPhs_ERROR_e)
        {
            return phase;
        }
    }
    return phase;
}

/* 80C183D0-80C18440 0001B0 0070+00 2/2 0/0 0/0 .text setMtx__Q29nObjMHasu12daObjMHasu_cFv */
void nObjMHasu::daObjMHasu_c::setMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(current.angle.y);
    MTXCopy(mDoMtx_stack_c::get(), mMtx2);
    MTXCopy(mDoMtx_stack_c::get(), mMtx);
}

/* 80C18440-80C184B0 000220 0070+00 1/0 0/0 0/0 .text CreateHeap__Q29nObjMHasu12daObjMHasu_cFv */
int nObjMHasu::daObjMHasu_c::CreateHeap() {
    J3DModelData* model_data = (J3DModelData*)dComIfG_getObjectRes(l_arcName, l_bmdidx);
    JUT_ASSERT(193, model_data != NULL);
    mModel = mDoExt_J3DModel__create(model_data, 0x80000, 0x11000084);
    if (mModel == NULL)
    {
        return FALSE;
    }
    return TRUE;
}

/* 80C184B0-80C185A4 000290 00F4+00 1/0 0/0 0/0 .text Create__Q29nObjMHasu12daObjMHasu_cFv */
int nObjMHasu::daObjMHasu_c::Create() {
    mModel->setBaseTRMtx(mMtx2);
    fopAcM_SetMtx(this, mMtx2);
    fopAcM_setCullSizeBox(this, l_cull_box.min.x, l_cull_box.min.y, l_cull_box.min.z,
                          l_cull_box.max.x, l_cull_box.max.y, l_cull_box.max.z);
    mpBgW->SetRideCallback(rideCallBack);
    mRideFlag = false;
    if (cM_rnd() > 0.5f) {
        unk62C = mConst2;
    } else {
        unk62C = -mConst2;
    }
    mPos = current.pos;
    mStep = 0.35f + cM_rndF(0.2f);
    mTimer = 0;
    return 1;
}

/* 80C185A4-80C18600 000384 005C+00 1/0 0/0 0/0 .text
 * Execute__Q29nObjMHasu12daObjMHasu_cFPPA3_A4_f                */
int nObjMHasu::daObjMHasu_c::Execute(Mtx** i_pMtx) {
    setMtx();
    mModel->setBaseTRMtx(mMtx2);
    *i_pMtx = &mMtx;
    upDownHasu();
    return 1;
}

/* 80C18600-80C186A4 0003E0 00A4+00 1/0 0/0 0/0 .text            Draw__Q29nObjMHasu12daObjMHasu_cFv
 */
int nObjMHasu::daObjMHasu_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mModel);
    dComIfGd_setList();
    return 1;
}

/* 80C186A4-80C186E0 000484 003C+00 1/0 0/0 0/0 .text Delete__Q29nObjMHasu12daObjMHasu_cFv */
int nObjMHasu::daObjMHasu_c::Delete() {
    dComIfG_resDelete(this, l_arcName);
    return 1;
}

/* 80C186E0-80C18888 0004C0 01A8+00 1/1 0/0 0/0 .text upDownHasu__Q29nObjMHasu12daObjMHasu_cFv */
void nObjMHasu::daObjMHasu_c::upDownHasu() {
    { // nested scope from debug
        f32 step;
        f32 target;
        if (mRideFlag) {
            target = unk62C + (mPos.y - mConst1);
            if (current.pos.y > (mPos.y - mConst1) + mConst2 + mConst2) {
                step = mStep + mConst3;
            } else if (mTimer) {
                step = 6.0f * mStep;
                target += unk62C;
            } else {
                step = mStep / 2.0f;
            }
            if (mTimer) {
                --mTimer;
            }
        } else {
            target = mPos.y + unk62C;
            step = mStep;
        }
        if (step > mStep) {
            u32 x = fabsf(current.pos.y - mPos.y);
            Z2GetAudioMgr()->seStartLevel(Z2SE_OBJ_HASU_WTR, &current.pos, x, 0, 1.0f, 1.0f, -1.0f,
                                          -1.0f, 0);
        }
        if (cLib_addCalc(&current.pos.y, target, 0.35f, step, step) == 0.0f) {
            unk62C *= -1.0f;
        }
    }
    unk60c_1 = mRideFlag;
    mRideFlag = 0;
}

/* 80C18888-80C188A0 000668 0018+00 1/1 0/0 0/0 .text updateCount__Q29nObjMHasu12daObjMHasu_cFUc
 */
void nObjMHasu::daObjMHasu_c::updateCount(u8 i_count) {
    if (mTimer < i_count) {
        mTimer = i_count;
    }
}

/* 80C188A0-80C18920 000680 0080+00 1/1 0/0 0/0 .text setHasuCount__Q29nObjMHasu12daObjMHasu_cFf
 */
void nObjMHasu::daObjMHasu_c::setHasuCount(f32 i_count) {
    if (!unk60c_1) {
        mTimer = 45;
    } else if (i_count > 1.5f) {
        if (i_count < 6.5f) {
            updateCount(25);
        } else if (i_count < 10.0f) {
            updateCount(40);
        } else {
            updateCount(60);
        }
    }
}

/* 80C18920-80C18974 000700 0054+00 1/0 0/0 0/0 .text
 * daObjMHasu_create1st__FPQ29nObjMHasu12daObjMHasu_c           */
static int daObjMHasu_create1st(nObjMHasu::daObjMHasu_c* i_this) {
    fopAcM_ct(i_this, nObjMHasu::daObjMHasu_c);
    return i_this->create1st();
}

/* 80C18974-80C18994 000754 0020+00 1/0 0/0 0/0 .text
 * daObjMHasu_MoveBGDelete__FPQ29nObjMHasu12daObjMHasu_c        */
static int daObjMHasu_MoveBGDelete(nObjMHasu::daObjMHasu_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C18994-80C189B4 000774 0020+00 1/0 0/0 0/0 .text
 * daObjMHasu_MoveBGExecute__FPQ29nObjMHasu12daObjMHasu_c       */
static int daObjMHasu_MoveBGExecute(nObjMHasu::daObjMHasu_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C189B4-80C189E0 000794 002C+00 1/0 0/0 0/0 .text
 * daObjMHasu_MoveBGDraw__FPQ29nObjMHasu12daObjMHasu_c          */
static int daObjMHasu_MoveBGDraw(nObjMHasu::daObjMHasu_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C18AAC-80C18ACC -00001 0020+00 1/0 0/0 0/0 .data            daObjMHasu_METHODS */
actor_method_class daObjMHasu_METHODS = {
    (process_method_func)&daObjMHasu_create1st,
    (process_method_func)&daObjMHasu_MoveBGDelete,
    (process_method_func)&daObjMHasu_MoveBGExecute,
    0,
    (process_method_func)&daObjMHasu_MoveBGDraw,
};

/* 80C18ACC-80C18AFC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_MHasu */
extern actor_process_profile_definition g_profile_Obj_MHasu = {
  fpcLy_CURRENT_e,                   // mLayerID
  3,                                 // mListID
  fpcPi_CURRENT_e,                   // mListPrio
  PROC_Obj_MHasu,                    // mProcName
  &g_fpcLf_Method.base,             // sub_method
  sizeof(nObjMHasu::daObjMHasu_c),   // mSize
  0,                                 // mSizeOther
  0,                                 // mParameters
  &g_fopAc_Method.base,              // sub_method
  666,                               // mPriority
  &daObjMHasu_METHODS,               // sub_method
  0x00040100,                        // mStatus
  fopAc_ACTOR_e,                     // mActorType
  fopAc_CULLBOX_CUSTOM_e,            // cullType
};
