/**
 * @file d_a_obj_wchain.cpp
 * 
*/

#include "d/actor/d_a_obj_wchain.h"
#include "d/d_com_inf_game.h"
#include "d/actor/d_a_player.h"
#include "d/d_procname.h"
#include "SSystem/SComponent/c_math.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "JSystem/J3DGraphBase/J3DDrawBuffer.h"

/* 80D31924-80D3192C 000000 0007+01 8/8 0/0 0/0 .rodata          l_arcName */
static char const l_arcName[7] = "Wchain";

/* 80D2FEF8-80D2FF9C 000078 00A4+00 1/1 0/0 0/0 .text            createHeap__13daObjWchain_cFv */
int daObjWchain_c::createHeap() {
    J3DModelData* handle_model_data = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 4);
    mpHandleModel = mDoExt_J3DModel__create(handle_model_data, 0x80000, 0x11000084);
    if (mpHandleModel == NULL) {
        return 0;
    }
    mpChainModelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 3);
    mShape.setUserArea((u32)this);
    return 1;
}

/* 80D2FF9C-80D2FFBC 00011C 0020+00 1/1 0/0 0/0 .text daObjWchain_createHeap__FP10fopAc_ac_c */
static int daObjWchain_createHeap(fopAc_ac_c* i_this) {
    return static_cast<daObjWchain_c*>(i_this)->createHeap();
}

/* 80D2FFBC-80D30394 00013C 03D8+00 1/1 0/0 0/0 .text            create__13daObjWchain_cFv */
cPhs__Step daObjWchain_c::create() {
    fopAcM_SetupActor(this, daObjWchain_c);
    mSw = fopAcM_GetParam(this) & 0xff;
    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&mPhaseReq, l_arcName);
    if (step == cPhs_COMPLEATE_e) {
        mRepeatable = (fopAcM_GetParam(this) >> 8) & 0xf;
        if (mRepeatable == 0xf) {
            mRepeatable = 0;
        }
        if (!fopAcM_entrySolidHeap(this, daObjWchain_createHeap, 0x820)) {
            return cPhs_ERROR_e;
        }
        tevStr.room_no = dStage_roomControl_c::mStayNo;
        attention_info.position = current.pos;
        eyePos = attention_info.position;
        attention_info.distances[fopAc_attn_LOCK_e] = 0x1c;
        fopAcM_SetMtx(this, mpHandleModel->getBaseTRMtx());
        fopAcM_SetMin(this, -200.0f, -45.0f, -200.0f);
        fopAcM_SetMax(this, 200.0f, 800.0f, 200.0f);
        mTopPos = current.pos;
        current.pos.y += 53.75f;
        mRoofPos.set(current.pos.x, current.pos.y + 280.0f - 100.0f, current.pos.z);
        mRealRoofY = mRoofPos.y + 250.0f;
        mInitOutLength = mRoofPos.y - home.pos.y;
        if (!mRepeatable && fopAcM_isSwitch(this, mSw)) {
            current.pos.y -= 100.0f;
            mEnd = true;
            mPullLength = 100.0f;
            field_0x7a8 = 600.0f;
        } else {
            mPullLength = 0.0f;
        }
        shape_angle.x = 0x4000;
        gravity = -7.0f;
        cXyz* chain_pos = &mChainPos[0xf];
        cXyz* chain_speed = &mChainSpeed[0xf];
        csXyz* chain_angle = &mChainAngle[0xf];
        s16 ang_z = cM_rndFX(2048.0f) + 16384.0f;
        f32 pos_y = current.pos.y;
        for (int i = 0xf; i >= 0; chain_pos--, chain_speed--, chain_angle--, i--) {
            chain_pos->set(current.pos.x, pos_y, current.pos.z);
            *chain_speed = cXyz::Zero;
            chain_angle->set(0x4000, shape_angle.y, ang_z);
            ang_z += cM_rndFX(2048.0f) + 16384.0f;
            pos_y += 17.5f;
        }
        speed = cXyz::Zero;
        setMatrix();
    }
    return step;
}

/* 80D30414-80D30434 000594 0020+00 1/0 0/0 0/0 .text            daObjWchain_Create__FP10fopAc_ac_c
 */
static cPhs__Step daObjWchain_Create(fopAc_ac_c* i_this) {
    return static_cast<daObjWchain_c*>(i_this)->create();
}

/* 80D30434-80D3050C 0005B4 00D8+00 1/1 0/0 0/0 .text            __dt__13daObjWchain_cFv */
daObjWchain_c::~daObjWchain_c() {
    dComIfG_resDelete(&mPhaseReq, l_arcName);
}

/* 80D3050C-80D30534 00068C 0028+00 1/0 0/0 0/0 .text daObjWchain_Delete__FP13daObjWchain_c */
static int daObjWchain_Delete(daObjWchain_c* i_this) {
    i_this->~daObjWchain_c();
    return 1;
}

/* 80D30534-80D305E4 0006B4 00B0+00 2/2 0/0 0/0 .text            setMatrix__13daObjWchain_cFv */
void daObjWchain_c::setMatrix() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZrotM(mHandleRotation);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mDoMtx_stack_c::transM(0.0f, 0.0f, 8.75f);
    mpHandleModel->setBaseTRMtx(mDoMtx_stack_c::get());
    static Vec const eyeOffset = {0.0f, 0.0f, 53.75f};
    mDoMtx_stack_c::multVec(&eyeOffset, &eyePos);
}

/* 80D305E4-80D3080C 000764 0228+00 1/1 0/0 0/0 .text getChainAngleZ__13daObjWchain_cFP4cXyzi */
s16 daObjWchain_c::getChainAngleZ(cXyz* param_0, int param_1) {
    cXyz vec(param_0->x, 0.0f, param_0->z);
    f32 len = vec.abs();
    if (param_1 > 0x5000) {
        return -len * (cM_rndF(0.5f) + 0.5f) * 512.0f;
    } else if (param_1 < 0x3000) {
        return len * (cM_rndF(0.5f) + 0.5f) * 512.0f;
    } else if (cM_rnd() < 0.5f) {
        return -len * (cM_rndF(0.5f) + 0.5f) * 512.0f;
    } else {
        return len * (cM_rndF(0.5f) + 0.5f) * 512.0f;
    }
}

/* 80D3080C-80D310AC 00098C 08A0+00 1/1 0/0 0/0 .text            setChainPos__13daObjWchain_cFv */
// NONMATCHING regalloc, instruction ordering
void daObjWchain_c::setChainPos() {
    cXyz prev_pos, vec1;
    if (mRide) {
        shape_angle.y = daPy_getLinkPlayerActorClass()->shape_angle.y;
        shape_angle.z = 0;
        prev_pos = mTopPos;
        mTopPos = daPy_getLinkPlayerActorClass()->current.pos;
        speed = (mTopPos - prev_pos) * 0.75f;
        vec1 = mTopPos - mRoofPos;
        mDoMtx_stack_c::YrotS(-shape_angle.y);
        mDoMtx_stack_c::multVec(&vec1, &vec1);
        shape_angle.x = cM_atan2s(-vec1.z, -vec1.y) + 0x4000;
        mHandleRotation = cM_atan2s(vec1.x, JMAFastSqrt(vec1.y * vec1.y + vec1.z * vec1.z));
        mDoMtx_stack_c::transS(mTopPos.x, mTopPos.y, mTopPos.z);
        mDoMtx_stack_c::ZrotM(mHandleRotation);
        mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
        static Vec const currentOffset = {0.0f, 0.0f, -53.75f};
        mDoMtx_stack_c::multVec(&currentOffset, &current.pos);
        cXyz* chain_pos = &mChainPos[0xf];
        csXyz* chain_angle = &mChainAngle[0xf];
        cXyz* chain_speed = &mChainSpeed[0xf];
        s16* chain_rotation = &mChainRotation[0xf];
        prev_pos = current.pos;
        int svar7 = shape_angle.z;
        for (int i = 0xf; i >= 0; i--, chain_pos--, chain_angle--, chain_speed--, chain_rotation--) {
            chain_angle->z += getChainAngleZ(chain_speed, abs((s16)(chain_angle->z - svar7)));
            *chain_speed = (prev_pos - *chain_pos) * 0.75;
            *chain_pos = prev_pos;
            chain_angle->x = shape_angle.x;
            *chain_rotation = mHandleRotation;
            mDoMtx_stack_c::transS(prev_pos.x, prev_pos.y, prev_pos.z);
            mDoMtx_stack_c::ZrotM(*chain_rotation);
            mDoMtx_stack_c::ZXYrotM(chain_angle->x, shape_angle.y, chain_angle->z);
            static Vec const chainOffset = {0.0f, 0.0f, -17.5f};
            mDoMtx_stack_c::multVec(&chainOffset, &prev_pos);
            svar7 = chain_angle->z;
        }
    } else {
        if (mReset) {
            if (cLib_chaseF(&mPullLength, 0.0f, 1.0f)) {
                mReset = false;
                mEnd = false;
            }
        } else if (mRepeatable || !fopAcM_isSwitch(this, mSw)) {
            cLib_chaseF(&mPullLength, 0.0f, 5.0f);
        } else {
            mPullLength = 100.0f;
            mEnd = true;
            if (!mRepeatable) {
                cLib_chaseF(&field_0x7a8, 600.0f, 30.0f);
            }
        }
        f32 fvar2 = mInitOutLength + mPullLength - 53.75f;
        int local_68 = fvar2 * (1.0f / 17.5f);
        int ivar5 = local_68 <= 0xf ? local_68 + 1 : 0x10;
        int chain_no = 0x10 - ivar5;
        cXyz* chain_pos = &mChainPos[chain_no];
        csXyz* chain_angle = &mChainAngle[chain_no];
        s16* chain_rotation = &mChainRotation[chain_no];
        chain_pos->set(
            mRoofPos.x,
            field_0x7a8 + (mRoofPos.y - (17.5f - (ivar5 * 17.5f - fvar2))),
            mRoofPos.z
        );
        chain_angle->x = 0x4000;
        *chain_rotation = 0;
        chain_pos = mChainPos + 1 + chain_no;
        chain_angle++;
        cXyz* chain_speed = mChainSpeed + 1 + chain_no;
        chain_rotation++;
        mDoMtx_stack_c::YrotS(-shape_angle.y);
        f32 prob = 0.2f;
        cXyz local_90;
        if (!mEnd && cM_rnd() < prob) {
            f32 ang = cM_rnd() * 6.283185f;
            local_90.set(cM_fsin(ang), 0.0f, cM_fcos(ang));
        } else {
            local_90 = cXyz::Zero;
        }
        for (int i = chain_no + 1; i < 0x10; i++, chain_pos++, chain_angle++, chain_speed++, chain_rotation++) {
            prev_pos = *chain_pos;
            vec1 = *chain_pos - chain_pos[-1];
            if (chain_speed->abs2XZ() < 0.04f && cM_rnd() < prob) {
                vec1 += local_90;
                prob *= 0.5f;
            }
            vec1.y += gravity;
            vec1 += *chain_speed;
            chain_angle->z += getChainAngleZ(chain_speed, abs((s16)(chain_angle->z - chain_angle[-1].z)));
            vec1.normalizeZP();
            *chain_pos = chain_pos[-1] + vec1 * 17.5f;
            *chain_speed = (*chain_pos - prev_pos) * 0.75f;
            mDoMtx_stack_c::multVec(&vec1, &vec1);
            chain_angle->x = cM_atan2s(-vec1.z, -vec1.y) + 0x4000;
            *chain_rotation = cM_atan2s(vec1.x, JMAFastSqrt(vec1.y * vec1.y + vec1.z * vec1.z));
        }
        current.pos = mChainPos[0xf];
        shape_angle.z += getChainAngleZ(&speed, abs((s16)(shape_angle.z - mChainAngle[0xf].z)));
        prev_pos = mTopPos;
        vec1 = mTopPos - current.pos;
        vec1.y += gravity;
        vec1 += speed;
        vec1.normalizeZP();
        mTopPos = current.pos + vec1 * 53.75f;
        speed = (mTopPos - prev_pos) * 0.75f;
        mDoMtx_stack_c::multVec(&vec1, &vec1);
        shape_angle.x = cM_atan2s(-vec1.z, -vec1.y) + 0x4000;
        mHandleRotation = cM_atan2s(vec1.x, JMAFastSqrt(vec1.y * vec1.y + vec1.z * vec1.z));
    }
}

/* 80D310AC-80D313F8 00122C 034C+00 1/1 0/0 0/0 .text            execute__13daObjWchain_cFv */
int daObjWchain_c::execute() {
    if (!mRidePrev && mRide) {
        fopAcM_seStartCurrent(this, Z2SE_OBJ_GNAW_CHAIN_SW, 0);
    } else if (mRidePrev && !mRide) {
        fopAcM_seStartCurrent(this, Z2SE_OBJ_GNAW_CHAIN_SW, 0);
    }

    if (!mRide) {
        mDown = false;
    }

    if (fopAcM_rc_c::roofCheck(&home.pos)) {
        mRealRoofY = fopAcM_rc_c::getRoofY();
        if (mRoofPos.y > mRealRoofY) {
            mRoofPos.y = mRealRoofY;
            mInitOutLength = mRoofPos.y - home.pos.y;
        }
        mRealRoofY += 250.0f;
    }

    setChainPos();
    
    if (daPy_py_c::checkNowWolf() && !mRide && mPullLength < 0.1f) {
        attention_info.flags |= 1;
    } else {
        attention_info.flags &= ~1;
    }
    attention_info.position = current.pos;
    attention_info.position.y += 150.0f;
    
    setMatrix();
    
    if (mNowSwitch) {
        fopAcM_seStartCurrent(this, Z2SE_OBJ_STOP_CHAIN_SW, 0);
        mNowSwitch = false;
        if (mRepeatable) {
            mReset = true;
            if (fopAcM_isSwitch(this, mSw)) {
                fopAcM_offSwitch(this, mSw);
            } else {
                fopAcM_onSwitch(this, mSw);
            }
        } else {
            fopAcM_onSwitch(this, mSw);
        }
        field_0x77e = 20;
    } else if (mRide && !mDown) {
        fopAcM_seStartCurrentLevel(this, Z2SE_OBJ_PULLDOWN_CHAIN_SW, 0);
    }

    mRidePrev = mRide;
    return 1;
}


/* 80D313F8-80D31418 001578 0020+00 1/0 0/0 0/0 .text daObjWchain_Execute__FP13daObjWchain_c */
static int daObjWchain_Execute(daObjWchain_c* i_this) {
    return i_this->execute();
}

/* 80D31418-80D31810 001598 03F8+00 1/0 0/0 0/0 .text            draw__19daObjWchain_shape_cFv */
void daObjWchain_shape_c::draw() {
    daObjWchain_c* chain = (daObjWchain_c*)getUserArea();
    cXyz* pos = chain->getChainPos();
    csXyz* angle = chain->getChainAngle();
    s16* rotation = chain->getChainAngleZ();
    J3DModelData* model_data = chain->getChainModelData();
    J3DMaterial* material = model_data->getMaterialNodePointer(0);
    dKy_tevstr_c& tevstr = chain->tevStr;
    j3dSys.setVtxPos(model_data->getVtxPosArray());
    j3dSys.setVtxNrm(model_data->getVtxNrmArray());
    j3dSys.setVtxCol(model_data->getVtxColorArray(0));
    J3DShape::resetVcdVatCache();
    material->loadSharedDL();
    material->getShape()->loadPreDrawSetting();
    GXColor amb_color;
    amb_color.r = tevstr.AmbCol.r;
    amb_color.g = tevstr.AmbCol.g;
    amb_color.b = tevstr.AmbCol.b;
    amb_color.a = tevstr.AmbCol.a;
    GXSetChanAmbColor(GX_COLOR0A0, amb_color);
    GXSetChanMatColor(GX_COLOR0A0, g_whiteColor);
    dKy_setLight_again();
    dKy_GxFog_tevstr_set(&tevstr);
    GXLoadLightObjImm(&tevstr.mLightObj.mLightObj, GX_LIGHT0);
    for (int i = 0; i < 0x10; pos++, angle++, rotation++, i++) {
        mDoMtx_stack_c::copy(j3dSys.getViewMtx());
        mDoMtx_stack_c::transM(*pos);
        mDoMtx_stack_c::ZrotM(*rotation);
        mDoMtx_stack_c::ZXYrotM(angle->x, chain->shape_angle.y, angle->z);
        mDoMtx_stack_c::transM(0.0f, 0.0f, -8.75f);
        GXLoadPosMtxImm(mDoMtx_stack_c::get(), 0);
        GXLoadNrmMtxImm(mDoMtx_stack_c::get(), 0);
        material->getShape()->simpleDrawCache();
    }
    cXyz roof_pos(chain->getRoofPos().x, chain->getRealRoofY(), chain->getRoofPos().z);
    cXyz delta = roof_pos - *chain->getChainPos();
    f32 len = delta.abs();
    if (len > 17.5f) {
        cXyz pos = *chain->getChainPos();
        csXyz angle(
            delta.atan2sY_XZ(),
            chain->getChainAngle()->y,
            chain->getChainAngle()->z + 0x3000
        );
        delta *= (17.5f / len);
        for (; len > 17.5f; len -= 17.5f, pos += delta, angle.z += 0x3000) {
            mDoMtx_stack_c::copy(j3dSys.getViewMtx());
            mDoMtx_stack_c::transM(pos);
            mDoMtx_stack_c::ZXYrotM(angle);
            mDoMtx_stack_c::transM(0.0f, 0.0f, 8.75f);
            GXLoadPosMtxImm(mDoMtx_stack_c::get(), 0);
            GXLoadNrmMtxImm(mDoMtx_stack_c::get(), 0);
            material->getShape()->simpleDrawCache();
        }
    }
}


/* 80D31810-80D318A0 001990 0090+00 1/1 0/0 0/0 .text            draw__13daObjWchain_cFv */
int daObjWchain_c::draw() {
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpHandleModel, &tevStr);
    mDoExt_modelUpdateDL(mpHandleModel);
    g_env_light.setLightTevColorType_MAJI(mpChainModelData, &tevStr);
    dComIfGd_getOpaList()->entryImm(&mShape, 0);
    return 1;
}

/* 80D318A0-80D318C0 001A20 0020+00 1/0 0/0 0/0 .text            daObjWchain_Draw__FP13daObjWchain_c
 */
static int daObjWchain_Draw(daObjWchain_c* i_this) {
    return i_this->draw();
}

/* 80D319E4-80D31A04 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjWchain_Method */
static actor_method_class l_daObjWchain_Method = {
    (process_method_func)daObjWchain_Create,
    (process_method_func)daObjWchain_Delete,
    (process_method_func)daObjWchain_Execute,
    NULL,
    (process_method_func)daObjWchain_Draw,
};

/* 80D31A04-80D31A34 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Wchain */
extern actor_process_profile_definition g_profile_Obj_Wchain = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Wchain,        // mProcName
  &g_fpcLf_Method.base,  // sub_method
  0x000007BC,             // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  247,                    // mPriority
  &l_daObjWchain_Method,  // sub_method
  0x00060100,             // mStatus
  fopAc_ENV_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
