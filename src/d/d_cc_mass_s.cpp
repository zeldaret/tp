/**
 * d_cc_mass_s.cpp
 *
 */

#include "d/dolzel.h"

#include "d/d_cc_mass_s.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_cc_d.h"
#include "f_op/f_op_actor.h"

/* 800852E0-800852F0 07FC20 0010+00 1/1 0/0 0/0 .text
 * Set__12dCcMassS_ObjFP8cCcD_ObjUcPFP10fopAc_ac_cP4cXyzUl_v    */
void dCcMassS_Obj::Set(cCcD_Obj* p_obj, u8 priority, dCcMassS_ObjCallback callback) {
    mpObj = p_obj;
    mPriority = priority;
    mpCallback = callback;
}

/* 800852F0-80085334 07FC30 0044+00 1/1 0/0 0/0 .text            Clear__12dCcMassS_ObjFv */
void dCcMassS_Obj::Clear() {
    mpObj = NULL;
    mPriority = 5;
    mpCallback = NULL;
    mDivideInfo.Set(0, 0, 0);
}

/* 80085334-80085350 07FC74 001C+00 1/1 0/0 0/0 .text            ClearPointer__15dCcMassS_HitInfFv
 */
void dCcMassS_HitInf::ClearPointer() {
    mpArea = NULL;
    mpAtObj = NULL;
    mpCoObj = NULL;
    mCoHitLen = 0.0f;
}

/* 80085350-80085450 07FC90 0100+00 0/0 1/1 0/0 .text            __ct__12dCcMassS_MngFv */
dCcMassS_Mng::dCcMassS_Mng() {
    Ct();
}

/* 800855C8-800855E4 07FF08 001C+00 1/1 0/0 0/0 .text            __ct__12dCcMassS_ObjFv */
dCcMassS_Obj::dCcMassS_Obj() {}

/* 800855E4-80085630 07FF24 004C+00 1/1 1/1 0/0 .text            Ct__12dCcMassS_MngFv */
void dCcMassS_Mng::Ct() {
    field_0x202 = 0;
    mResultCam = 0;
    mCamTopPos.x = 0.0f;
    mCamTopPos.y = -1000000000.0f;
    mCamTopPos.z = 0.0f;

    mCamBottomPos.x = 0.0f;
    mCamBottomPos.y = -1000000000.0f;
    mCamBottomPos.z = 0.0f;

    Clear();
}

/* 80085630-80085690 07FF70 0060+00 0/0 0/0 2/2 .text            SetAttr__12dCcMassS_MngFffUcUc */
void dCcMassS_Mng::SetAttr(f32 radius, f32 height, u8 param_2, u8 param_3) {
    mCylAttr.SetR(radius);
    mCylAttr.SetH(height);
    field_0x200 = param_2;
    field_0x201 = param_3;
}

/* 80085690-800858AC 07FFD0 021C+00 0/0 1/1 1/1 .text            Prepare__12dCcMassS_MngFv */
void dCcMassS_Mng::Prepare() {
    cM3dGAab aab;
    aab.ClearForMinMax();

    for (dCcMassS_Obj* pObj = mMassObjs; pObj < mMassObjs + mMassObjCount; ++pObj) {
        cCcD_ShapeAttr* objShape = pObj->GetObj()->GetShapeAttr();
        objShape->CalcAabBox();
        aab.SetMinMax(objShape->GetWorkAab());
    }

    for (dCcMassS_Obj* pObj = mMassAreas; pObj < mMassAreas + mMassAreaCount; ++pObj) {
        cCcD_ShapeAttr* objShape = pObj->GetObj()->GetShapeAttr();
        objShape->CalcAabBox();
        aab.SetMinMax(objShape->GetWorkAab());
    }

    if (field_0x202 & 1) {
        mCpsAttr.CalcAabBox();
        aab.SetMinMax(mCpsAttr.GetWorkAab());
    }

    mDivideArea.SetArea(aab);
    for (dCcMassS_Obj* pObj = mMassObjs; pObj < mMassObjs + mMassObjCount; ++pObj) {
        cCcD_ShapeAttr* objShape = pObj->GetObj()->GetShapeAttr();
        cCcD_DivideInfo* divideInfo = &pObj->GetDivideInfo();
        mDivideArea.CalcDivideInfo(divideInfo, objShape->GetWorkAab(), 0);
    }

    for (dCcMassS_Obj* pObj = mMassAreas; pObj < mMassAreas + mMassAreaCount; ++pObj) {
        cCcD_ShapeAttr* objShape = pObj->GetObj()->GetShapeAttr();
        cCcD_DivideInfo* divideInfo = &pObj->GetDivideInfo();
        mDivideArea.CalcDivideInfo(divideInfo, objShape->GetWorkAab(), 0);
    }

    if (field_0x202 & 1) {
        mDivideArea.CalcDivideInfo(&mDivideInfo, mCpsAttr.GetWorkAab(), 0);
    }

    mCamTopPos.x = 0.0f;
    mCamTopPos.y = -1000000000.0f;
    mCamTopPos.z = 0.0f;
    mCamTopDist = 1000000000.0f;

    mCamBottomPos.x = 0.0f;
    mCamBottomPos.y = -1000000000.0f;
    mCamBottomPos.z = 0.0f;
    mCamBottomDist = 1000000000.0f;
}

/* 800858AC-80085CF0 0801EC 0444+00 0/0 0/0 2/2 .text
 * Chk__12dCcMassS_MngFP4cXyzPP10fopAc_ac_cP15dCcMassS_HitInf   */
u32 dCcMassS_Mng::Chk(cXyz* p_xyz, fopAc_ac_c** p_actor, dCcMassS_HitInf* p_hitInf) {
    cCcD_DivideInfo divideInfo;
    u32 flagsMaybe = 0;
    *p_actor = NULL;

    mCylAttr.SetC(*p_xyz);
    mCylAttr.CalcAabBox();

    mDivideArea.CalcDivideInfoOverArea(&divideInfo, mCylAttr.GetWorkAab());
    p_hitInf->ClearPointer();

    if (field_0x200 & 8) {
        for (dCcMassS_Obj* massObj = mMassAreas; massObj < mMassAreas + mMassAreaCount; ++massObj) {
            if (massObj->GetDivideInfo().Chk(divideInfo)) {
                cCcD_Obj* obj = massObj->GetObj();
                cCcD_ShapeAttr* objShape = obj->GetShapeAttr();
                f32 f;
                if (obj->ChkCoSet() && mCylAttr.CrossCo(*objShape, &f)) {
                    flagsMaybe |= 4;
                    *p_actor = obj->GetStts()->GetAc();
                    if (p_hitInf != NULL) {
                        p_hitInf->SetAreaHitObj(obj);
                    }

                    if (massObj->GetCallback() != NULL) {
                        massObj->GetCallback()(obj->GetStts()->GetAc(), p_xyz, field_0x201);
                    }
                }
            }
        }
    }

    for (dCcMassS_Obj* massObj = mMassObjs; massObj < mMassObjs + mMassObjCount; ++massObj) {
        if (massObj->GetDivideInfo().Chk(divideInfo)) {
            cCcD_Obj* obj = massObj->GetObj();
            dCcD_GObjInf* gobjInf = (dCcD_GObjInf*)obj->GetGObjInf();
            cCcD_ShapeAttr* objShape = obj->GetShapeAttr();
            cXyz unusedVec;
            if (obj->ChkAtSet() && !gobjInf->ChkAtNoMass() &&
                mCylAttr.CrossAtTg(*objShape, &unusedVec) && (field_0x200 & 1))
            {
                flagsMaybe |= 1;
                *p_actor = obj->GetStts()->GetAc();
                if (p_hitInf != NULL) {
                    p_hitInf->SetAtHitObj(obj);
                }
            }

            f32 f;
            if (obj->ChkCoSet() && mCylAttr.CrossCo(*objShape, &f) && (field_0x200 & 2)) {
                flagsMaybe |= 2;
                *p_actor = obj->GetStts()->GetAc();

                if (field_0x200 & 0x10) {
                    Vec vec;
                    VECSubtract(&(*p_actor)->current.pos, p_xyz, &vec);
                    vec.y = 0;
                    f32 vecMag = VECMag(&vec);
                    if (cM3d_IsZero(vecMag)) {
                        vec.x = 1;
                    } else {
                        VECScale(&vec, &vec, f / vecMag);
                    }
                    obj->GetStts()->PlusCcMove(vec.x, vec.y, vec.z);
                }

                if (p_hitInf != NULL) {
                    p_hitInf->SetCoHitObj(obj);
                    p_hitInf->SetCoHitLen(f);
                }
            }
        }
    }

    f32 f;
    if ((field_0x202 & 1) && mDivideInfo.Chk(divideInfo) && mCylAttr.CrossCo(mCpsAttr, &f)) {
        mResultCam |= 1;
        mResultCam |= 1 << (field_0x201 + 1);

        if ((mResultCam & 2) || (mResultCam & 8)) {
            cXyz tmpVec;
            f32 plusH = p_xyz->y + mCylAttr.GetH();
            tmpVec.x = p_xyz->x;
            tmpVec.y = plusH;
            tmpVec.z = p_xyz->z;

            if (mCamTopPos.y < (20.0f + plusH)) {
                f32 newCamTopDist = VECSquareDistance(&tmpVec, &mCpsAttr.GetStartP());
                if (mCamTopDist > newCamTopDist) {
                    mCamTopDist = newCamTopDist;
                    mCamTopPos = tmpVec;
                }
            }

            if (mCamBottomPos.y < (20.0f + plusH)) {
                f32 newCamBottomDist = VECSquareDistance(&tmpVec, &mCpsAttr.GetEndP());
                if (mCamBottomDist > newCamBottomDist) {
                    mCamBottomDist = newCamBottomDist;
                    mCamBottomPos = tmpVec;
                }
            }
        }
    }

    return flagsMaybe;
}

/* 80085CF0-80085D98 080630 00A8+00 1/1 2/2 0/0 .text            Clear__12dCcMassS_MngFv */
void dCcMassS_Mng::Clear() {
    mMassObjCount = 0;
    mMassAreaCount = 0;

    for (int i = 0; i < (s32)ARRAY_SIZE(mMassObjs); ++i) {
        mMassObjs[i].Clear();
    }

    for (int i = 0; i < (s32)ARRAY_SIZE(mMassAreas); ++i) {
        mMassAreas[i].Clear();
    }

    mCylAttr.SetR(0.0f);
    mCylAttr.SetH(0.0f);
    field_0x200 = 0;
    field_0x201 = 4;
}

/* 80085D98-80085E6C 0806D8 00D4+00 0/0 4/4 7/7 .text            Set__12dCcMassS_MngFP8cCcD_ObjUc */
void dCcMassS_Mng::Set(cCcD_Obj* p_obj, u8 priority) {
    if (mMassObjCount >= (s32)ARRAY_SIZE(mMassObjs)) {
        for (int i = 0; i < (s32)ARRAY_SIZE(mMassObjs); ++i) {
            int prevPrio = mMassObjs[i].GetPriority();
            if (prevPrio > priority || (prevPrio == priority && cM_rndF(1.0f) < 0.5f)) {
                mMassObjs[i].Set(p_obj, priority, NULL);
                break;
            }
        }
    } else {
        mMassObjs[mMassObjCount].Set(p_obj, priority, NULL);
        mMassObjCount++;
    }
}

/* 80085E6C-80085EB0 0807AC 0044+00 0/0 1/1 0/0 .text            SetCam__12dCcMassS_MngFRC8cM3dGCps
 */
void dCcMassS_Mng::SetCam(cM3dGCps const& cps) {
    mCpsAttr.SetCps(cps);
    field_0x202 |= 1;
    mResultCam = 0;
}

/* 80085EB0-80085EB8 0807F0 0008+00 0/0 1/1 0/0 .text            GetResultCam__12dCcMassS_MngCFv */
u32 dCcMassS_Mng::GetResultCam() const {
    return mResultCam;
}

/* 80085EB8-80085ED4 0807F8 001C+00 0/0 1/1 0/0 .text            GetCamTopPos__12dCcMassS_MngFP3Vec
 */
void dCcMassS_Mng::GetCamTopPos(Vec* p_out) {
    *p_out = mCamTopPos;
}
