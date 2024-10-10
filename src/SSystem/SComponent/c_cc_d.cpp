/**
 * c_cc_d.cpp
 *
 */

#include "SSystem/SComponent/c_cc_d.h"
#include "JSystem/JUtility/JUTAssert.h"

#define CHECK_FLOAT_CLASS(line, x) JUT_ASSERT(line, !(((sizeof(x) == sizeof(float)) ? __fpclassifyf((float)(x)) : __fpclassifyd((double)(x)) ) == 1));
#define CHECK_FLOAT_RANGE(line, x) JUT_ASSERT(line, -1.0e32f < x && x < 1.0e32f);

/* 80430CB4-80430CC0 05D9D4 000C+00 1/1 2/2 0/0 .bss             m_virtual_center__14cCcD_ShapeAttr
 */
cXyz cCcD_ShapeAttr::m_virtual_center = cXyz::Zero;

/* 80263358-80263368 25DC98 0010+00 2/2 1/1 0/0 .text            Set__15cCcD_DivideInfoFUlUlUl */
void cCcD_DivideInfo::Set(u32 xDivInfo, u32 yDivInfo, u32 zDivInfo) {
    mXDivInfo = xDivInfo;
    mYDivInfo = yDivInfo;
    mZDivInfo = zDivInfo;
}

/* 80263368-802633A8 25DCA8 0040+00 0/0 5/5 0/0 .text Chk__15cCcD_DivideInfoCFRC15cCcD_DivideInfo
 */
bool cCcD_DivideInfo::Chk(const cCcD_DivideInfo& other) const {
    if ((mXDivInfo & other.mXDivInfo) == 0 || (mZDivInfo & other.mZDivInfo) == 0 ||
        (mYDivInfo & other.mYDivInfo) == 0)
    {
        return false;
    } else {
        return true;
    }
}

/* 802633A8-802634D4 25DCE8 012C+00 0/0 2/2 0/0 .text SetArea__15cCcD_DivideAreaFRC8cM3dGAab */
void cCcD_DivideArea::SetArea(const cM3dGAab& aab) {
    Set(aab.GetMinP(), aab.GetMaxP());

    mScaledXDiff = 1.0f / 32.0f * (GetMaxP()->x - GetMinP()->x);
    mXDiffIsZero = cM3d_IsZero(mScaledXDiff);
    if (!mXDiffIsZero) {
        mInvScaledXDiff = 1.0f / mScaledXDiff;
    }

    mScaledYDiff = 1.0f / 32.0f * (GetMaxP()->y - GetMinP()->y);
    mYDiffIsZero = cM3d_IsZero(mScaledYDiff);
    if (!mYDiffIsZero) {
        mInvScaledYDiff = 1.0f / mScaledYDiff;
    }

    mScaledZDiff = 1.0f / 32.0f * (GetMaxP()->z - GetMinP()->z);
    mZDiffIsZero = cM3d_IsZero(mScaledZDiff);
    if (!mZDiffIsZero) {
        mInvScaledZDiff = 1.0f / mScaledZDiff;
    }
}

/* 8039A7E8-8039A868 026E48 0080+00 2/2 0/0 0/0 .rodata          l_base */
static const u32 l_base[32] = {
    0x00000001, 0x00000003, 0x00000007, 0x0000000F, 0x0000001F, 0x0000003F, 0x0000007F, 0x000000FF,
    0x000001FF, 0x000003FF, 0x000007FF, 0x00000FFF, 0x00001FFF, 0x00003FFF, 0x00007FFF, 0x0000FFFF,
    0x0001FFFF, 0x0003FFFF, 0x0007FFFF, 0x000FFFFF, 0x001FFFFF, 0x003FFFFF, 0x007FFFFF, 0x00FFFFFF,
    0x01FFFFFF, 0x03FFFFFF, 0x07FFFFFF, 0x0FFFFFFF, 0x1FFFFFFF, 0x3FFFFFFF, 0x7FFFFFFF, 0xFFFFFFFF,
};

/* 802634D4-802636A0 25DE14 01CC+00 0/0 2/2 0/0 .text
 * CalcDivideInfo__15cCcD_DivideAreaFP15cCcD_DivideInfoRC8cM3dGAabUl */
void cCcD_DivideArea::CalcDivideInfo(cCcD_DivideInfo* pDivideInfo, const cM3dGAab& aab,
                                     u32 param_2) {
    if (param_2 != 0) {
        pDivideInfo->Set(0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF);
    } else {
        u32 xDivInfo, yDivInfo, zDivInfo;
        if (!mXDiffIsZero) {
            s32 var1 = mInvScaledXDiff * (aab.GetMinP()->x - GetMinP()->x);
            s32 var3 = mInvScaledXDiff * (aab.GetMaxP()->x - GetMinP()->x);
            if (31 < var3) {
                var3 = 31;
            }

            xDivInfo = l_base[var3];
            if (0 < var1) {
                var1--;
                xDivInfo &= ~l_base[var1];
            }
        } else {
            xDivInfo = 0xFFFFFFFF;
        }

        if (!mYDiffIsZero) {
            s32 var1 = mInvScaledYDiff * (aab.GetMinP()->y - GetMinP()->y);
            s32 var3 = mInvScaledYDiff * (aab.GetMaxP()->y - GetMinP()->y);
            if (31 < var3) {
                var3 = 31;
            }

            yDivInfo = l_base[var3];
            if (0 < var1) {
                var1--;
                yDivInfo &= ~l_base[var1];
            }
        } else {
            yDivInfo = 0xFFFFFFFF;
        }

        if (!mZDiffIsZero) {
            s32 var1 = mInvScaledZDiff * (aab.GetMinP()->z - GetMinP()->z);
            s32 var3 = mInvScaledZDiff * (aab.GetMaxP()->z - GetMinP()->z);
            if (31 < var3) {
                var3 = 31;
            }

            zDivInfo = l_base[var3];
            if (0 < var1) {
                var1--;
                zDivInfo &= ~l_base[var1];
            }
        } else {
            zDivInfo = 0xFFFFFFFF;
        }

        pDivideInfo->Set(xDivInfo, yDivInfo, zDivInfo);
    }
}

/* 802636A0-80263894 25DFE0 01F4+00 0/0 3/3 0/0 .text
 * CalcDivideInfoOverArea__15cCcD_DivideAreaFP15cCcD_DivideInfoRC8cM3dGAab */
void cCcD_DivideArea::CalcDivideInfoOverArea(cCcD_DivideInfo* pDivideInfo, const cM3dGAab& aab) {
    u32 xDivInfo, yDivInfo, zDivInfo;
    if (!mXDiffIsZero) {
        s32 var1 = mInvScaledXDiff * (aab.GetMinP()->x - GetMinP()->x);
        s32 var3 = mInvScaledXDiff * (aab.GetMaxP()->x - GetMinP()->x);
        if (var3 < 0 || 31 < var1) {
            xDivInfo = 0;
        } else {
            if (31 < var3) {
                var3 = 31;
            }
            xDivInfo = l_base[var3];
            if (0 < var1) {
                var1--;
                xDivInfo &= ~l_base[var1];
            }
        }
    } else {
        xDivInfo = 0xFFFFFFFF;
    }

    if (!mYDiffIsZero) {
        s32 var1 = mInvScaledYDiff * (aab.GetMinP()->y - GetMinP()->y);
        s32 var3 = mInvScaledYDiff * (aab.GetMaxP()->y - GetMinP()->y);
        if (var3 < 0 || 31 < var1) {
            yDivInfo = 0;
        } else {
            if (31 < var3) {
                var3 = 31;
            }
            yDivInfo = l_base[var3];
            if (0 < var1) {
                var1--;
                yDivInfo &= ~l_base[var1];
            }
        }
    } else {
        yDivInfo = 0xFFFFFFFF;
    }

    if (!mZDiffIsZero) {
        s32 var1 = mInvScaledZDiff * (aab.GetMinP()->z - GetMinP()->z);
        s32 var3 = mInvScaledZDiff * (aab.GetMaxP()->z - GetMinP()->z);
        if (var3 < 0 || 31 < var1) {
            zDivInfo = 0;
        } else {
            if (31 < var3) {
                var3 = 31;
            }
            zDivInfo = l_base[var3];
            if (0 < var1) {
                var1--;
                zDivInfo &= ~l_base[var1];
            }
        }
    } else {
        zDivInfo = 0xFFFFFFFF;
    }

    pDivideInfo->Set(xDivInfo, yDivInfo, zDivInfo);
}

/* 80263894-8026389C 25E1D4 0008+00 1/0 1/0 0/0 .text            GetGStts__9cCcD_SttsCFv */
const cCcD_GStts* cCcD_Stts::GetGStts() const {
    return NULL;
}

/* 8026389C-802638A4 25E1DC 0008+00 1/0 0/0 0/0 .text            GetGStts__9cCcD_SttsFv */
cCcD_GStts* cCcD_Stts::GetGStts() {
    return NULL;
}

/* 802638A4-80263904 25E1E4 0060+00 0/0 1/1 0/0 .text            Init__9cCcD_SttsFiiPvUi */
void cCcD_Stts::Init(int weight, int param_1, void* pactor, fpc_ProcID apid) {
    Ct();
    m_weight = weight;
    field_0x15 = param_1;
    mp_actor = static_cast<fopAc_ac_c*>(pactor);
    m_apid = apid;
}

/* 80263904-80263934 25E244 0030+00 1/0 1/1 0/0 .text            Ct__9cCcD_SttsFv */
void cCcD_Stts::Ct() {
    m_cc_move.x = 0.0f;
    m_cc_move.y = 0.0f;
    m_cc_move.z = 0.0f;
    mp_actor = NULL;
    m_apid = fpcM_ERROR_PROCESS_ID_e;
    m_weight = 0;
    field_0x15 = 0;
    m_dmg = 0;
}

/* 80263934-8026395C 25E274 0028+00 0/0 3/3 0/0 .text            PlusCcMove__9cCcD_SttsFfff */
void cCcD_Stts::PlusCcMove(f32 x, f32 y, f32 z) {
    m_cc_move.x += x;
    m_cc_move.y += y;
    m_cc_move.z += z;

    CHECK_FLOAT_CLASS(422, m_cc_move.x);
    CHECK_FLOAT_CLASS(423, m_cc_move.y);
    CHECK_FLOAT_CLASS(424, m_cc_move.z);

    CHECK_FLOAT_RANGE(426, m_cc_move.x);
    CHECK_FLOAT_RANGE(427, m_cc_move.y);
    CHECK_FLOAT_RANGE(428, m_cc_move.z);
}

/* 8026395C-80263970 25E29C 0014+00 0/0 10/10 23/23 .text            ClrCcMove__9cCcD_SttsFv */
void cCcD_Stts::ClrCcMove() {
    m_cc_move.z = 0.0f;
    m_cc_move.y = 0.0f;
    m_cc_move.x = 0.0f;
}

/* 80263970-80263984 25E2B0 0014+00 0/0 2/2 0/0 .text            PlusDmg__9cCcD_SttsFi */
void cCcD_Stts::PlusDmg(int dmg) {
    if (m_dmg >= dmg) {
        return;
    }
    m_dmg = dmg;
}

/* 80263984-802639B0 25E2C4 002C+00 0/0 1/1 0/0 .text            GetWeightF__9cCcD_SttsCFv */
f32 cCcD_Stts::GetWeightF() const {
    return (s32)m_weight;
}

/* 802639B0-802639C4 25E2F0 0014+00 0/0 1/1 0/0 .text            ct__18cCcD_ObjCommonBaseFv */
void cCcD_ObjCommonBase::ct() {
    mSPrm = 0;
    mRPrm = 0;
    mHitObj = NULL;
}

/* 802639C4-80263A10 25E304 004C+00 1/1 0/0 0/0 .text Set__14cCcD_ObjHitInfFRC17cCcD_SrcObjHitInf
 */
void cCcD_ObjHitInf::Set(const cCcD_SrcObjHitInf& src) {
    mObjAt.Set(src.mObjAt);
    mObjTg.Set(src.mObjTg);
    mObjCo.Set(src.mObjCo);
}

/* 80263A10-80263A1C 25E350 000C+00 0/0 1/1 0/0 .text            ct__8cCcD_ObjFv */
void cCcD_Obj::ct() {
    mFlags = 0;
}

/* 80263A1C-80263A48 25E35C 002C+00 0/0 1/1 0/0 .text            Set__8cCcD_ObjFRC11cCcD_SrcObj */
void cCcD_Obj::Set(const cCcD_SrcObj& src) {
    mFlags = src.mFlags;
    cCcD_ObjHitInf::Set(src.mSrcObjHitInf);
}

/* 80263A48-80263A64 25E388 001C+00 0/0 9/9 87/87 .text            GetAc__8cCcD_ObjFv */
fopAc_ac_c* cCcD_Obj::GetAc() {
    if (mStts == NULL) {
        return NULL;
    } else {
        return mStts->GetAc();
    }
}

/* 80263A64-80263A88 25E3A4 0024+00 3/0 2/0 0/0 .text
 * getShapeAccess__14cCcD_ShapeAttrCFPQ214cCcD_ShapeAttr5Shape  */
void cCcD_ShapeAttr::getShapeAccess(cCcD_ShapeAttr::Shape* pshape) const {
    pshape->_0 = 2;
    pshape->_14 = 0.0f;
    pshape->_10 = 0.0f;
    pshape->_C = 0.0f;
    pshape->_8 = 0.0f;
    pshape->_4 = 0.0f;
}

/* 80263A88-80263B58 25E3C8 00D0+00 1/0 1/0 0/0 .text
 * CrossAtTg__12cCcD_TriAttrCFRC12cCcD_CpsAttrP4cXyz            */
bool cCcD_TriAttr::CrossAtTg(const cCcD_CpsAttr& cpsAttr, cXyz* pxyz) const {
    if (cM3dGTri::Cross(cpsAttr, pxyz)) {
        return true;
    } else {
        return false;
    }
}

/* 80263B58-80263B90 25E498 0038+00 1/0 1/0 0/0 .text
 * CrossAtTg__12cCcD_TriAttrCFRC12cCcD_CylAttrP4cXyz            */
bool cCcD_TriAttr::CrossAtTg(const cCcD_CylAttr& cylAttr, cXyz* pxyz) const {
    if (cM3dGTri::Cross(cylAttr, pxyz)) {
        return true;
    } else {
        return false;
    }
}

/* 80263B90-80263BCC 25E4D0 003C+00 1/0 1/0 0/0 .text
 * CrossAtTg__12cCcD_TriAttrCFRC12cCcD_SphAttrP4cXyz            */
bool cCcD_TriAttr::CrossAtTg(const cCcD_SphAttr& sphAttr, cXyz* pxyz) const {
    if (cM3dGTri::Cross(sphAttr, pxyz)) {
        return true;
    } else {
        return false;
    }
}

/* 80263BCC-80263C04 25E50C 0038+00 1/0 1/0 0/0 .text
 * CrossAtTg__12cCcD_TriAttrCFRC12cCcD_TriAttrP4cXyz            */
bool cCcD_TriAttr::CrossAtTg(const cCcD_TriAttr& other, cXyz* pxyz) const {
    if (cM3dGTri::Cross(other, pxyz)) {
        return true;
    } else {
        return false;
    }
}

/* 80263C04-80263C9C 25E544 0098+00 1/0 1/0 0/0 .text            CalcAabBox__12cCcD_TriAttrFv */
void cCcD_TriAttr::CalcAabBox() {
    mAab.ClearForMinMax();
    mAab.SetMinMax(mA);
    mAab.SetMinMax(mB);
    mAab.SetMinMax(mC);
}

/* 80263C9C-80263D38 25E5DC 009C+00 1/0 1/0 0/0 .text GetNVec__12cCcD_TriAttrCFRC4cXyzP4cXyz */
bool cCcD_TriAttr::GetNVec(const cXyz& param_0, cXyz* pOut) const {
    if (getPlaneFunc(&param_0) >= 0.0f) {
        *pOut = mNormal;
    } else {
        *pOut = mNormal;
        VECScale(pOut, pOut, -1.0f);
    }
    return true;
}

/* 80263D38-80263D7C 25E678 0044+00 1/0 1/0 0/0 .text
 * CrossAtTg__12cCcD_CpsAttrCFRC12cCcD_CpsAttrP4cXyz            */
bool cCcD_CpsAttr::CrossAtTg(const cCcD_CpsAttr& other, cXyz* pxyz) const {
    if (cM3dGCps::Cross(&other, pxyz)) {
        return true;
    } else {
        return false;
    }
}

/* 80263D7C-80263DC0 25E6BC 0044+00 1/0 1/0 0/0 .text
 * CrossAtTg__12cCcD_CpsAttrCFRC12cCcD_CylAttrP4cXyz            */
bool cCcD_CpsAttr::CrossAtTg(const cCcD_CylAttr& cylAttr, cXyz* pxyz) const {
    if (cM3dGCps::Cross(&cylAttr, pxyz)) {
        return true;
    } else {
        return false;
    }
}

/* 80263DC0-80263E04 25E700 0044+00 1/0 1/0 0/0 .text
 * CrossAtTg__12cCcD_CpsAttrCFRC12cCcD_SphAttrP4cXyz            */
bool cCcD_CpsAttr::CrossAtTg(const cCcD_SphAttr& sphAttr, cXyz* pxyz) const {
    if (cM3dGCps::Cross(&sphAttr, pxyz)) {
        return true;
    } else {
        return false;
    }
}

/* 80263E04-80263ED4 25E744 00D0+00 1/0 1/0 0/0 .text
 * CrossAtTg__12cCcD_CpsAttrCFRC12cCcD_TriAttrP4cXyz            */
bool cCcD_CpsAttr::CrossAtTg(const cCcD_TriAttr& triAttr, cXyz* pxyz) const {
    if (triAttr.cM3dGTri::Cross(*this, pxyz)) {
        return true;
    } else {
        return false;
    }
}

/* 80263ED4-80263F24 25E814 0050+00 1/0 1/0 0/0 .text CrossCo__12cCcD_CpsAttrCFRC12cCcD_CpsAttrPf
 */
bool cCcD_CpsAttr::CrossCo(const cCcD_CpsAttr& other, f32* param_1) const {
    *param_1 = 0.0f;
    cXyz xyz;
    if (cM3dGCps::Cross(&other, &xyz)) {
        return true;
    } else {
        return false;
    }
}

/* 80263F24-80263F74 25E864 0050+00 1/0 1/0 0/0 .text CrossCo__12cCcD_CpsAttrCFRC12cCcD_CylAttrPf
 */
bool cCcD_CpsAttr::CrossCo(const cCcD_CylAttr& cylAttr, f32* param_1) const {
    *param_1 = 0.0f;
    cXyz xyz;
    if (cM3dGCps::Cross(&cylAttr, &xyz)) {
        return true;
    } else {
        return false;
    }
}

/* 80263F74-80263FC4 25E8B4 0050+00 1/0 1/0 0/0 .text CrossCo__12cCcD_CpsAttrCFRC12cCcD_SphAttrPf
 */
bool cCcD_CpsAttr::CrossCo(const cCcD_SphAttr& sphAttr, f32* param_1) const {
    *param_1 = 0.0f;
    cXyz xyz;
    if (cM3dGCps::Cross(&sphAttr, &xyz)) {
        return true;
    } else {
        return false;
    }
}

/* 80263FC4-80264014 25E904 0050+00 1/0 2/1 0/0 .text            CalcAabBox__12cCcD_CpsAttrFv */
void cCcD_CpsAttr::CalcAabBox() {
    mAab.ClearForMinMax();
    mAab.SetMinMax(mStart);
    mAab.SetMinMax(mEnd);
    mAab.PlusR(mRadius);
}

/* 80264014-8026417C 25E954 0168+00 1/0 1/0 0/0 .text GetNVec__12cCcD_CpsAttrCFRC4cXyzP4cXyz */
bool cCcD_CpsAttr::GetNVec(const cXyz& param_0, cXyz* param_1) const {
    Vec diff;
    const cXyz& endP = GetEndP();
    VECSubtract(&endP, &mStart, &diff);

    f32 diffLen = VECDotProduct(&diff, &diff);
    if (cM3d_IsZero(diffLen)) {
        return false;
    } else {
        Vec vec1, vec2;
        VECSubtract(&param_0, &mStart, &vec1);
        f32 vec1Len = VECDotProduct(&vec1, &diff) / diffLen;
        if (vec1Len < 0.0f) {
            vec2 = mStart;
        } else {
            if (vec1Len > 1.0f) {
                vec2 = endP;
            } else {
                VECScale(&diff, &diff, vec1Len);
                VECAdd(&diff, &mStart, &vec2);
            }
        }

        VECSubtract(&param_0, &vec2, param_1);
        if (cM3d_IsZero(VECMag(param_1))) {
            param_1->set(0.0f, 0.0f, 0.0f);
            return false;
        } else {
            VECNormalize(param_1, param_1);
            return true;
        }
    }
}

/* 8026417C-802641C8 25EABC 004C+00 1/0 1/0 0/0 .text
 * CrossAtTg__12cCcD_CylAttrCFRC12cCcD_CpsAttrP4cXyz            */
bool cCcD_CylAttr::CrossAtTg(const cCcD_CpsAttr& cpsAttr, cXyz* pxyz) const {
    if (cM3dGCyl::Cross(&cpsAttr, pxyz)) {
        return true;
    } else {
        return false;
    }
}

/* 802641C8-8026420C 25EB08 0044+00 1/0 1/0 0/0 .text
 * CrossAtTg__12cCcD_CylAttrCFRC12cCcD_CylAttrP4cXyz            */
bool cCcD_CylAttr::CrossAtTg(const cCcD_CylAttr& other, cXyz* pxyz) const {
    if (cross(&other, pxyz)) {
        return true;
    } else {
        return false;
    }
}

/* 8026420C-80264250 25EB4C 0044+00 1/0 1/0 0/0 .text
 * CrossAtTg__12cCcD_CylAttrCFRC12cCcD_SphAttrP4cXyz            */
bool cCcD_CylAttr::CrossAtTg(const cCcD_SphAttr& sphAttr, cXyz* pxyz) const {
    if (cross(&sphAttr, pxyz)) {
        return true;
    } else {
        return false;
    }
}

/* 80264250-80264288 25EB90 0038+00 1/0 1/0 0/0 .text
 * CrossAtTg__12cCcD_CylAttrCFRC12cCcD_TriAttrP4cXyz            */
bool cCcD_CylAttr::CrossAtTg(const cCcD_TriAttr& triAttr, cXyz* pxyz) const {
    if (cM3dGCyl::Cross(triAttr, pxyz)) {
        return true;
    } else {
        return false;
    }
}

/* 80264288-802642CC 25EBC8 0044+00 1/0 1/0 0/0 .text CrossCo__12cCcD_CylAttrCFRC12cCcD_CylAttrPf
 */
bool cCcD_CylAttr::CrossCo(const cCcD_CylAttr& other, f32* f) const {
    if (cM3dGCyl::Cross(&other, f)) {
        return true;
    } else {
        return false;
    }
}

/* 802642CC-80264310 25EC0C 0044+00 1/0 1/0 0/0 .text CrossCo__12cCcD_CylAttrCFRC12cCcD_SphAttrPf
 */
bool cCcD_CylAttr::CrossCo(const cCcD_SphAttr& sphAttr, f32* f) const {
    if (cM3dGCyl::Cross(&sphAttr, f)) {
        return true;
    } else {
        return false;
    }
}

/* 80264310-80264368 25EC50 0058+00 1/0 1/0 0/0 .text CrossCo__12cCcD_CylAttrCFRC12cCcD_CpsAttrPf
 */
bool cCcD_CylAttr::CrossCo(const cCcD_CpsAttr& cpsAttr, f32* f) const {
    *f = 0.0f;
    cXyz xyz;
    if (cM3dGCyl::Cross(&cpsAttr, &xyz)) {
        return true;
    } else {
        return false;
    }
}

/* 80264368-802643D0 25ECA8 0068+00 1/0 1/0 0/0 .text            CalcAabBox__12cCcD_CylAttrFv */
void cCcD_CylAttr::CalcAabBox() {
    cXyz min;
    cXyz max;
    min.x = GetCP()->x - GetR();
    min.y = GetCP()->y;
    min.z = GetCP()->z - GetR();
    max.x = GetCP()->x + GetR();
    max.y = GetCP()->y + GetH();
    max.z = GetCP()->z + GetR();
    mAab.Set(&min, &max);
}

/* 802643D0-802644B8 25ED10 00E8+00 1/0 1/0 0/0 .text GetNVec__12cCcD_CylAttrCFRC4cXyzP4cXyz */
bool cCcD_CylAttr::GetNVec(const cXyz& param_0, cXyz* param_1) const {
    Vec vec;
    if (GetCP()->y > param_0.y) {
        vec = mCenter;
    } else {
        if (GetCP()->y + GetH() < param_0.y) {
            vec.x = GetCP()->x;
            vec.y = GetCP()->y;
            vec.z = GetCP()->z;
            vec.y = GetCP()->y + GetH();
        } else {
            vec = mCenter;
            vec.y = param_0.y;
        }
    }

    VECSubtract(&param_0, &vec, param_1);
    if (cM3d_IsZero(VECMag(param_1))) {
        param_1->set(0.0f, 0.0f, 0.0f);
        return false;
    } else {
        VECNormalize(param_1, param_1);
        return true;
    }
    return false;
}

/* 802644B8-802644EC 25EDF8 0034+00 1/0 1/0 0/0 .text
 * getShapeAccess__12cCcD_CylAttrCFPQ214cCcD_ShapeAttr5Shape    */
void cCcD_CylAttr::getShapeAccess(cCcD_ShapeAttr::Shape* pshape) const {
    pshape->_0 = 1;
    pshape->_4 = mCenter.x;
    pshape->_8 = mCenter.y;
    pshape->_C = mCenter.z;
    pshape->_10 = mRadius;
    pshape->_14 = mHeight;
}

inline bool inlineCross(const cM3dGSph& sph, const cM3dGCps* pcps, cXyz* pxyz) {
    return cM3d_Cross_CpsSph(*pcps, sph, pxyz);
}

/* 802644EC-80264538 25EE2C 004C+00 1/0 1/0 0/0 .text
 * CrossAtTg__12cCcD_SphAttrCFRC12cCcD_CpsAttrP4cXyz            */
bool cCcD_SphAttr::CrossAtTg(const cCcD_CpsAttr& cpsAttr, cXyz* pxyz) const {
    if (inlineCross(*this, &cpsAttr, pxyz)) {
        return true;
    } else {
        return false;
    }
}

/* 80264538-8026457C 25EE78 0044+00 1/0 1/0 0/0 .text
 * CrossAtTg__12cCcD_SphAttrCFRC12cCcD_CylAttrP4cXyz            */
bool cCcD_SphAttr::CrossAtTg(const cCcD_CylAttr& cylAttr, cXyz* pxyz) const {
    if (cross(&cylAttr, pxyz)) {
        return true;
    } else {
        return false;
    }
}

/* 8026457C-802645C0 25EEBC 0044+00 1/0 1/0 0/0 .text
 * CrossAtTg__12cCcD_SphAttrCFRC12cCcD_SphAttrP4cXyz            */
bool cCcD_SphAttr::CrossAtTg(const cCcD_SphAttr& sphAttr, cXyz* pxyz) const {
    if (cross(&sphAttr, pxyz)) {
        return true;
    } else {
        return false;
    }
}

/* 802645C0-802645F8 25EF00 0038+00 1/0 1/0 0/0 .text
 * CrossAtTg__12cCcD_SphAttrCFRC12cCcD_TriAttrP4cXyz            */
bool cCcD_SphAttr::CrossAtTg(const cCcD_TriAttr& triAttr, cXyz* pxyz) const {
    if (triAttr.cM3dGTri::Cross(*this, pxyz)) {
        return true;
    } else {
        return false;
    }
}

/* 802645F8-80264644 25EF38 004C+00 1/0 1/0 0/0 .text CrossCo__12cCcD_SphAttrCFRC12cCcD_CylAttrPf
 */
bool cCcD_SphAttr::CrossCo(const cCcD_CylAttr& cylAttr, f32* f) const {
    if (cM3dGSph::Cross(&cylAttr, f)) {
        return true;
    } else {
        return false;
    }
}

/* 80264644-80264688 25EF84 0044+00 1/0 1/0 0/0 .text CrossCo__12cCcD_SphAttrCFRC12cCcD_SphAttrPf
 */
bool cCcD_SphAttr::CrossCo(const cCcD_SphAttr& sphAttr, f32* f) const {
    if (cM3dGSph::Cross(&sphAttr, f)) {
        return true;
    } else {
        return false;
    }
}

/* 80264688-802646E0 25EFC8 0058+00 1/0 1/0 0/0 .text CrossCo__12cCcD_SphAttrCFRC12cCcD_CpsAttrPf
 */
bool cCcD_SphAttr::CrossCo(const cCcD_CpsAttr& cpsAttr, f32* f) const {
    *f = 0.0f;
    cXyz xyz;
    if (cM3dGSph::Cross(&cpsAttr, &xyz)) {
        return true;
    } else {
        return false;
    }
}

/* 802646E0-8026476C 25F020 008C+00 1/0 2/1 0/0 .text            CalcAabBox__12cCcD_SphAttrFv */
void cCcD_SphAttr::CalcAabBox() {
    cXyz min;
    cXyz max;

    min = max = *GetCP();

    min.x -= GetR();
    min.y -= GetR();
    min.z -= GetR();

    max.x += GetR();
    max.y += GetR();
    max.z += GetR();

    mAab.Set(&min, &max);
}

/* 8026476C-80264808 25F0AC 009C+00 1/0 1/0 0/0 .text GetNVec__12cCcD_SphAttrCFRC4cXyzP4cXyz */
bool cCcD_SphAttr::GetNVec(const cXyz& param_0, cXyz* param_1) const {
    param_1->x = param_0.x - mCenter.x;
    param_1->y = param_0.y - mCenter.y;
    param_1->z = param_0.z - mCenter.z;

    if (cM3d_IsZero(VECMag(param_1))) {
        param_1->x = 0.0f;
        param_1->y = 0.0f;
        param_1->z = 0.0f;
        return false;
    } else {
        VECNormalize(param_1, param_1);
        return true;
    }
}

/* 80264808-8026483C 25F148 0034+00 1/0 1/0 0/0 .text
 * getShapeAccess__12cCcD_SphAttrCFPQ214cCcD_ShapeAttr5Shape    */
void cCcD_SphAttr::getShapeAccess(cCcD_ShapeAttr::Shape* pshape) const {
    pshape->_0 = 0;
    pshape->_4 = mCenter.x;
    pshape->_8 = mCenter.y;
    pshape->_C = mCenter.z;
    pshape->_10 = mRadius;
    pshape->_14 = 0.0f;
}

/* 8026483C-8026484C 25F17C 0010+00 0/0 1/1 0/0 .text            SetHit__10cCcD_ObjAtFP8cCcD_Obj */
void cCcD_ObjAt::SetHit(cCcD_Obj* pObj) {
    mRPrm = 1;
    mHitObj = pObj;
}

/* 8026484C-80264868 25F18C 001C+00 1/1 0/0 0/0 .text            Set__10cCcD_ObjAtFRC13cCcD_SrcObjAt
 */
void cCcD_ObjAt::Set(const cCcD_SrcObjAt& src) {
    cCcD_ObjCommonBase::Set(src.mBase);
    mType = src.mType;
    mAtp = src.mAtp;
}

/* 80264868-80264880 25F1A8 0018+00 0/0 2/2 0/0 .text            ClrHit__10cCcD_ObjAtFv */
void cCcD_ObjAt::ClrHit() {
    mRPrm &= ~1;
    mHitObj = NULL;
}

/* 80264880-80264894 25F1C0 0014+00 1/1 0/0 0/0 .text            Set__10cCcD_ObjTgFRC13cCcD_SrcObjTg
 */
void cCcD_ObjTg::Set(const cCcD_SrcObjTg& src) {
    cCcD_ObjCommonBase::Set(src.mBase);
    mType = src.mType;
}

/* 80264894-802648B0 25F1D4 001C+00 0/0 0/0 2/2 .text            SetGrp__10cCcD_ObjTgFUl */
void cCcD_ObjTg::SetGrp(u32 grp) {
    mSPrm &= ~0x1E;
    mSPrm |= grp;
}

/* 802648B0-802648C8 25F1F0 0018+00 0/0 2/2 0/0 .text            ClrHit__10cCcD_ObjTgFv */
void cCcD_ObjTg::ClrHit() {
    mRPrm &= ~1;
    mHitObj = NULL;
}

/* 802648C8-802648D8 25F208 0010+00 0/0 1/1 0/0 .text            SetHit__10cCcD_ObjTgFP8cCcD_Obj */
void cCcD_ObjTg::SetHit(cCcD_Obj* pObj) {
    mRPrm = 1;
    mHitObj = pObj;
}

/* 802648D8-802648E8 25F218 0010+00 0/0 1/1 0/0 .text            SetHit__10cCcD_ObjCoFP8cCcD_Obj */
void cCcD_ObjCo::SetHit(cCcD_Obj* pObj) {
    mRPrm = 1;
    mHitObj = pObj;
}

/* 802648E8-80264900 25F228 0018+00 0/0 2/2 0/0 .text            ClrHit__10cCcD_ObjCoFv */
void cCcD_ObjCo::ClrHit() {
    mRPrm &= ~1;
    mHitObj = NULL;
}

/* 80264900-8026491C 25F240 001C+00 0/0 1/1 1/1 .text            SetIGrp__10cCcD_ObjCoFUl */
void cCcD_ObjCo::SetIGrp(u32 grp) {
    mSPrm &= ~0xE;
    mSPrm |= grp;
}

/* 8026491C-80264938 25F25C 001C+00 0/0 1/1 7/7 .text            SetVsGrp__10cCcD_ObjCoFUl */
void cCcD_ObjCo::SetVsGrp(u32 grp) {
    mSPrm &= ~0x70;
    mSPrm |= grp;
}