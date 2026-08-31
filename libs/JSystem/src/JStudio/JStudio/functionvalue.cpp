#include "JSystem/JSystem.h" // IWYU pragma: keep

#include "JSystem/JStudio/JStudio/functionvalue.h"
#include "JSystem/JGadget/search.h"
#include "JSystem/JUtility/JUTException.h"
#include "JSystem/JUtility/JUTAssert.h"
#include "JSystem/JGadget/linklist.h"
#include <cmath>
#include <cstdlib>
#include <limits>

namespace JStudio {

#if DEBUG
static void dummy_string1() {
    OSReport("(undefined)");
    OSReport("composite");
    OSReport("constant");
    OSReport("transition");
    OSReport("list_parameter");
    OSReport("backward");
    OSReport("backward_begin");
    OSReport("backward_end");
    OSReport("backward_center");
}
#endif

namespace {

const ExtrapolateParameter gapfnExtrapolateParameter_[4] = {
    functionvalue::extrapolateParameter_raw,
    functionvalue::extrapolateParameter_repeat,
    functionvalue::extrapolateParameter_turn,
    functionvalue::extrapolateParameter_clamp,
};

}  // namespace

ExtrapolateParameter TFunctionValue::toFunction_outside(int idx) {
    ExtrapolateParameter fallback = NULL;
    ExtrapolateParameter result;

    result = JGadget::toValueFromIndex<ExtrapolateParameter>(idx, gapfnExtrapolateParameter_, 4,
                                                             fallback);

    if (result == NULL) {
        JGADGET_WARNMSG1(112, "unknown outside : ", idx);

        return gapfnExtrapolateParameter_[0];
    }

    return result;
}

TFunctionValue::TFunctionValue() {}
TFunctionValue::~TFunctionValue() {}

void TFunctionValueAttribute_refer::refer_initialize() {
    mVector.clear();
}

bool TFunctionValueAttribute_refer::refer_isReferring(const TFunctionValue* p) const {
    JUT_ASSERT(144, p!=NULL);
    return false;
}

static f64 dummy_literal1() {
    return 0.0;
}

namespace functionvalue {

f64 interpolateValue_hermite(f64 c0, f64 c1, f64 x, f64 c2, f64 x2, f64 c3, f64 x3) {
    f64 a;
    f64 b;
    f64 c;
    f64 d;

    a = c0 - c1;
    f64 f27 = 1.0 / (x2 - c1);
    b = a * f27;               // (a - b) * 1.0 / (c - d)
    f64 f26 = b * b;
    c = b - 1.0;                             // 1.0
    d = (3.0 + -2.0 * b) * (f26);  // 3.0 - 2.0 * b
    f64 f25 = (1.0 - d);
    f64 cca = (c * c * a);
    f64 cab = (c * a * b);
    return (f25 * x + (d * c3)) + cca * c2 + cab * x3;
}


f64 interpolateValue_BSpline_uniform(f64 interpolationFactor, f64 point2, f64 point3, f64 point4, f64 point5) {
    f64 inverseInterpolationFactor = (1.0 - interpolationFactor);
    f64 inverseInterpolationFactorSquared = inverseInterpolationFactor * inverseInterpolationFactor;
    f64 inverseInterpolationFactorCubed = inverseInterpolationFactorSquared * inverseInterpolationFactor;

    f64 interpolationFactorSquared = interpolationFactor * interpolationFactor;
    f64 interpolationFactorCubed = interpolationFactorSquared * interpolationFactor;

    f64 coefficient1 = inverseInterpolationFactorCubed;

    f64 blendFactorForPoint3 = (1.0 / 2.0) * interpolationFactorCubed - interpolationFactorSquared + (2.0 / 3.0);

    f64 blendFactorForPoint4 =
        (1.0 / 2.0) * (interpolationFactor + interpolationFactorSquared - interpolationFactorCubed) + (1.0 / 6.0);

    f64 coefficient2 = interpolationFactorCubed;

    return ((coefficient1 * point2) + (coefficient2 * point5)) * (1.0 / 6.0) + (blendFactorForPoint3 * point3) +
           (blendFactorForPoint4 * point4);
}

f64 interpolateValue_BSpline_nonuniform(f64 interpolationFactor, const f64* controlPoints, const f64* knotVector) {
    f64 knot0              = knotVector[0];
    f64 knot1              = knotVector[1];
    f64 knot2              = knotVector[2];
    f64 knot3              = knotVector[3];
    f64 knot4              = knotVector[4];
    f64 knot5              = knotVector[5];
    f64 diff0              = interpolationFactor - knot0;
    f64 diff1              = interpolationFactor - knot1;
    f64 diff2              = interpolationFactor - knot2;
    f64 diff3              = knot3 - interpolationFactor;
    f64 diff4              = knot4 - interpolationFactor;
    f64 diff5              = knot5 - interpolationFactor;
    f64 inverseDeltaKnot32 = 1 / (knot3 - knot2);
    f64 blendFactor3       = (diff3 * inverseDeltaKnot32) / (knot3 - knot1);
    f64 blendFactor2       = (diff2 * inverseDeltaKnot32) / (knot4 - knot2);
    f64 blendFactor1       = (diff3 * blendFactor3) / (knot3 - knot0);
    f64 blendFactor4       = ((diff1 * blendFactor3) + (diff4 * blendFactor2)) / (knot4 - knot1);
    f64 blendFactor5       = (diff2 * blendFactor2) / (knot5 - knot2);
    f64 term1              = diff3 * blendFactor1;
    f64 term2              = (diff0 * blendFactor1) + (diff4 * blendFactor4);
    f64 term3              = (diff1 * blendFactor4) + (diff5 * blendFactor5);
    f64 term4              = diff2 * blendFactor5;

    return (term1 * controlPoints[0]) + (term2 * controlPoints[1]) + (term3 * controlPoints[2]) + (term4 * controlPoints[3]);
}

inline f64 interpolateValue_linear(f64 a1, f64 a2, f64 a3, f64 a4, f64 a5) {
    return a3 + ((a5 - a3) * (a1 - a2)) / (a4 - a2);
}

inline f64 interpolateValue_linear_1(f64 a1, f64 a2, f64 a3, f64 a4) {
    return a3 + (a4 - a3) * (a1 - a2);
}

inline f64 interpolateValue_plateau(f64 a1, f64 a2, f64 a3, f64 a4, f64 a5) {
    return interpolateValue_hermite(a1, a2, a3, 0.0, a4, a5, 0.0);
}

f64 extrapolateParameter_turn(f64 param_0, f64 param_1) {
    f64 dVar2 = 2.0 * param_1;
    f64 dVar1 = extrapolateParameter_repeat(param_0, dVar2);
    if (dVar1 >= param_1) {
        dVar1 = dVar2 - dVar1;
    }
    return dVar1;
}

}  // namespace functionvalue

#if PLATFORM_WII || PLATFORM_SHIELD
#define NUMERIC_LIMIT double
#else
#define NUMERIC_LIMIT float
#endif

void TFunctionValueAttribute_range::range_initialize() {
    fBegin_ = std::numeric_limits<NUMERIC_LIMIT>::signaling_NaN();
    fEnd_ = fBegin_;
    fDifference_ = fBegin_;

    range_setProgress(TFunctionValue::PROG_INIT);
    range_setAdjust(TFunctionValue::ADJ_INIT);
    range_setOutside(TFunctionValue::OUT_INIT);
}

void TFunctionValueAttribute_range::range_prepare() {
    TFunctionValue::TEProgress progress = range_getProgress();

    switch (progress) {
    case 0:
    progress_0:
        _20 = 0.0;
        _28 = 1.0;
        break;
    case 1:
        _20 = 0.0;
        _28 = -1.0;
        break;
    case 2:
        _20 = fBegin_;
        _28 = -1.0;
        break;
    case 3:
        _20 = fEnd_;
        _28 = -1.0;
        break;
    case 4:
        _20 = 0.5 * (fBegin_ + fEnd_);
        _28 = -1.0;
        break;
    default:
        JGADGET_WARNMSG1(447, "unknown progress : ", progress);
        goto progress_0;
    }
}

void TFunctionValueAttribute_range::range_set(f64 begin, f64 end) {
    fBegin_ = begin;
    fEnd_ = end;
    fDifference_ = end - begin;

    JUT_ASSERT(458, fDifference_>=TValue(0));
}

f64 TFunctionValueAttribute_range::range_getParameter(f64 arg1, f64 arg2, f64 arg3) const {
    arg1 = range_getParameter_progress(arg1);
    TFunctionValue::TEAdjust adjust = range_getAdjust();

    switch (adjust) {
    adjust_0:
    case 0:
        return range_getParameter_outside(arg1);
    case 1:
        return range_getParameter_outside(arg1 + fBegin_);
    case 2:
        return range_getParameter_outside(arg1 + fEnd_);
    case 3:
        return range_getParameter_outside(arg1 + 0.5 * (fBegin_ + fEnd_));
    case 4:
        arg1 = range_getParameter_outside(arg1);
        return arg2 + ((arg1 - fBegin_) * (arg3 - arg2)) / fDifference_;
    default:
        JGADGET_WARNMSG1(498, "unknown adjust : ", adjust);
        goto adjust_0;

    }
}


TFunctionValueAttribute_range::TFunctionValueAttribute_range()
    : fBegin_(std::numeric_limits<NUMERIC_LIMIT>::signaling_NaN()), fEnd_(fBegin_), fDifference_(fBegin_),
      mProgress(TFunctionValue::PROG_INIT), mAdjust(TFunctionValue::ADJ_INIT), _20(fBegin_),
      _28(fBegin_), mBegin(TFunctionValue::OUT_INIT), mEnd(TFunctionValue::OUT_INIT) {}

TFunctionValue_composite::TFunctionValue_composite() : pfn_(NULL), data((void*)NULL) {
}

u32 TFunctionValue_composite::getType() const {
    return 1;
}

TFunctionValueAttributeSet TFunctionValue_composite::getAttributeSet() {
    return TFunctionValueAttributeSet(this, NULL, NULL);
}

void TFunctionValue_composite::initialize() {
    refer_initialize();
    pfn_ = NULL;
    data = TData((void*)NULL);
}

void TFunctionValue_composite::prepare() {
    refer_prepare();
}

f64 TFunctionValue_composite::getValue(f64 arg1) {
    const TFunctionValueAttribute_refer* container = refer_getContainer();
    JUT_ASSERT(564, !refer_isReferring(this));
    JUT_ASSERT(565, pfn_!=NULL);

    return pfn_(container->mVector, *data_getData(), arg1);
}

f64 TFunctionValue_composite::composite_raw(JGadget::TVector_pointer<TFunctionValue*> const& param_1,
                                                 TData const& param_2, f64 param_3) {
    uint index = param_2.get_unsignedInteger();
    if (index >= param_1.size()) {
        return 0.0;
    }
    TFunctionValue** sp18 = (TFunctionValue**)param_1.begin();
    std::advance(sp18, index);
    TFunctionValue* p = *sp18;
    JUT_ASSERT(583, p!=NULL);
    return p->getValue(param_3);
}


f64 TFunctionValue_composite::composite_index(JGadget::TVector_pointer<TFunctionValue*> const& param_1,
                                              TData const& param_2, f64 param_3) {
    s32 nSize = param_1.size();
    if (nSize <= 1) {
        return 0.0;
    }
    TFunctionValue** local_148 = (TFunctionValue**)param_1.begin();
    TFunctionValue* pFront = *local_148;
    JUT_ASSERT(599, pFront!=NULL);
    int nIndex = floor(pFront->getValue(param_3));
    int outside = param_2.get_outside();
    switch (outside) {
    case 0:
    case 3:
    outside_0:
        if (nIndex < 0) {
            nIndex = 0;
        } else if (nIndex >= nSize - 1) {
            nIndex = nSize - 2;
        }
        break;
    case 1: {
#ifdef __MWERKS__
        div_t dt = div(nIndex, nSize - 1);
#else
        div_t dt = div((int)nIndex, (int)nSize - 1);
#endif
        nIndex = dt.rem;
        if (nIndex < 0) {
            nIndex = nSize + nIndex;
            nIndex--;
        }
        break;
    }
    case 2:
        if (nSize - 1 == 1) {
            nIndex = 0;
        } else {
            u32 uVar3 = (u32)(nSize - 2) * 2;
#ifdef __MWERKS__
            div_t dt2 = div(nIndex, uVar3);
#else
            div_t dt2 = div((int)nIndex, (int)uVar3);
#endif
            nIndex = dt2.rem;
            if (nIndex < 0) {
                nIndex += uVar3;
            }
            if (nIndex >= nSize - 1) {
                nIndex = uVar3 - nIndex;
            }
        }
        break;
    default:
        JGADGET_WARNMSG1(638, "unknown outside : ", outside);
        goto outside_0;
    }

    JUT_ASSERT(641, nIndex<nSize)
#ifdef __MWERKS__
    std::advance(local_148, nIndex + 1);
#else
    std::advance(local_148, nIndex + 1);
#endif
    TFunctionValue* p = *local_148;
    JUT_ASSERT(644, p!=NULL)
    return p->getValue(param_3);
}

f64 TFunctionValue_composite::composite_parameter(JGadget::TVector_pointer<TFunctionValue*> const& param_1,
                                              TData const& param_2, f64 param_3) {
    f64 dVar4 = param_3 - param_2.get_value();
    JGadget::TContainerEnumerator_const<JGadget::TVector_pointer<TFunctionValue*> > aTStack_18(param_1);
    while (aTStack_18) {
        TFunctionValue* p = **aTStack_18;
        JUT_ASSERT(658, p!=NULL);
        dVar4 = p->getValue(dVar4);
    }
    return dVar4;
}

f64 TFunctionValue_composite::composite_add(JGadget::TVector_pointer<TFunctionValue*> const& param_1,
                                                 TData const& param_2, f64 param_3) {
    f64 dVar4 = param_2.get_value();
    JGadget::TContainerEnumerator_const<JGadget::TVector_pointer<TFunctionValue*> > aTStack_18(param_1);
    while (aTStack_18) {
        TFunctionValue* p = **aTStack_18;
        JUT_ASSERT(673, p!=NULL);
        dVar4 += p->getValue(param_3);
    }
    return dVar4;
}

f64 TFunctionValue_composite::composite_subtract(JGadget::TVector_pointer<TFunctionValue*> const& param_1,
                                                 TData const& param_2, f64 param_3) {
    if (param_1.size() == 0) {
        return 0.0;
    }
    JGadget::TContainerEnumerator_const<JGadget::TVector_pointer<TFunctionValue*> > aTStack_18(param_1);
    TFunctionValue* pFront = **aTStack_18;
    JUT_ASSERT(688, pFront!=NULL);
    f64 dVar4 = pFront->getValue(param_3);
    while (aTStack_18) {
        TFunctionValue* p = **aTStack_18;
        JUT_ASSERT(693, p!=NULL);
        dVar4 -= p->getValue(param_3);
    }
    dVar4 -= param_2.get_value();
    return dVar4;
}


f64 TFunctionValue_composite::composite_multiply(JGadget::TVector_pointer<TFunctionValue*> const& param_1,
                                                 TData const& param_2, f64 param_3) {
    f64 dVar4 = param_2.get_value();
    JGadget::TContainerEnumerator_const<JGadget::TVector_pointer<TFunctionValue*> > aTStack_18(param_1);
    while (aTStack_18) {
        TFunctionValue* p = **aTStack_18;
        JUT_ASSERT(709, p!=NULL);
        dVar4 *= p->getValue(param_3);
    }
    return dVar4;
}

f64 TFunctionValue_composite::composite_divide(JGadget::TVector_pointer<TFunctionValue*> const& param_1,
                                                 TData const& param_2, f64 param_3) {
    if (param_1.size() == 0) {
        return 0.0;
    }
    JGadget::TContainerEnumerator_const<JGadget::TVector_pointer<TFunctionValue*> > aTStack_18(param_1);
    TFunctionValue* pFront = **aTStack_18;
    JUT_ASSERT(724, pFront!=NULL);
    TValue f31 = pFront->getValue(param_3);
    while (aTStack_18) {
        TFunctionValue* p = **aTStack_18;
        JUT_ASSERT(729, p!=NULL);
        TValue fData = p->getValue(param_3);
        JGADGET_ASSERTWARN(731, fData!=TValue(0));
        f31 /= fData;
    }
    TValue fData = param_2.get_value();
    JGADGET_ASSERTWARN(735, fData!=TValue(0));
    f31 /= fData;
    return f31;
}

TFunctionValue_constant::TFunctionValue_constant() : fValue_(std::numeric_limits<NUMERIC_LIMIT>::signaling_NaN()) {}

u32 TFunctionValue_constant::getType() const {
    return 2;
}

TFunctionValueAttributeSet TFunctionValue_constant::getAttributeSet() {
    return TFunctionValueAttributeSet(NULL, NULL, NULL);
}

void TFunctionValue_constant::initialize() {
    fValue_ = std::numeric_limits<NUMERIC_LIMIT>::signaling_NaN();
}

void TFunctionValue_constant::prepare() {
    /* empty function */
}

f64 TFunctionValue_constant::getValue(f64 arg1) {
    return fValue_;
}

TFunctionValue_transition::TFunctionValue_transition() : _48(std::numeric_limits<NUMERIC_LIMIT>::signaling_NaN()), _50(_48) {}

u32 TFunctionValue_transition::getType() const {
    return 3;
}

TFunctionValueAttributeSet TFunctionValue_transition::getAttributeSet() {
    return TFunctionValueAttributeSet(NULL, this, this);
}

void TFunctionValue_transition::initialize() {
    range_initialize();
    interpolate_initialize();

    _48 = std::numeric_limits<NUMERIC_LIMIT>::signaling_NaN();
    _50 = _48;
}

void TFunctionValue_transition::prepare() {
    range_prepare();
    interpolate_prepare();
}

f64 TFunctionValue_transition::getValue(f64 param_1) {
    param_1 = range_getParameter_progress(param_1);
    param_1 = range_getParameter_outside(param_1);
    TEAdjust adjust = range_getAdjust();
    switch (adjust) {
    case TFunctionValue::ADJ_INIT:
    case TFunctionValue::ADJ_UNK1:
    adjust_0:
        return param_1 < range_getBegin() ? _48 : _50;
    case TFunctionValue::ADJ_UNK2:
        return param_1 < range_getEnd() ? _48 : _50;
    case TFunctionValue::ADJ_UNK3:
        ADJ_UNK3_label:
        return (param_1 < 0.5 * (range_getBegin() + range_getEnd())) ? _48 : _50;
    case TFunctionValue::ADJ_UNK4:
        if (param_1 < range_getBegin()) {
            return _48;
        }
        if (param_1 >= range_getEnd()) {
            return _50;
        }
        int r28 = interpolate_get();
        switch (r28) {
        case 0:
            goto ADJ_UNK3_label;
        case 1:
        case 3:
            return _48 + ((param_1 - range_getBegin()) * data_getDifference()) / range_getDifference();
        case 2:
            return functionvalue::interpolateValue_plateau(param_1, range_getBegin(), _48, range_getEnd(), _50);
        default:
            JGADGET_WARNMSG1(881, "unknown interpolation : ", r28);
            goto ADJ_UNK3_label;
        }
    default:
        JGADGET_WARNMSG1(888, "unknown adjustment : ", adjust);
        goto adjust_0;
    }
}

TFunctionValue_list::TFunctionValue_list() : _44(NULL), uData_(0), _50(std::numeric_limits<NUMERIC_LIMIT>::signaling_NaN()), pfnUpdate_(NULL) {}

u32 TFunctionValue_list::getType() const {
    return 4;
}

TFunctionValueAttributeSet TFunctionValue_list::getAttributeSet() {
    return TFunctionValueAttributeSet(NULL, this, this);
}

void TFunctionValue_list::initialize() {
    range_initialize();
    interpolate_initialize();

    _44 = NULL;
    u32 r30 = 0;
    uData_ = r30;
    _50 = std::numeric_limits<NUMERIC_LIMIT>::signaling_NaN();
    pfnUpdate_ = NULL;
}

void TFunctionValue_list::prepare() {
    range_prepare();
    interpolate_prepare();

    int interp = interpolate_get();

    switch (interp) {
    case 0:
    interp_0:
        pfnUpdate_ = update_INTERPOLATE_NONE_;
        break;
    case 1:
        pfnUpdate_ = update_INTERPOLATE_LINEAR_;
        break;
    case 2:
        pfnUpdate_ = update_INTERPOLATE_PLATEAU_;
        break;
    case 3:
        pfnUpdate_ = update_INTERPOLATE_BSPLINE_dataMore3_;
        if (uData_ == 2)
            pfnUpdate_ = update_INTERPOLATE_LINEAR_;
        break;
    default:
        JGADGET_WARNMSG1(1006, "unknown interpolation : ", interp);
        goto interp_0;
    }
}

f64 TFunctionValue_list::getValue(f64 param_1) {
    param_1 = range_getParameter_progress(param_1);
    u32 iVar7 = uData_ - 1;
    TFunctionValue::TEAdjust r28 = range_getAdjust();
    f64 dVar12 = iVar7;
    TIndexData_ local_178;
    switch (r28) {
    case 0:
        r28_0:
        param_1 = range_getParameter_outside(param_1);
        local_178._0 = param_1 / _50;
        break;
    case 1:
        param_1 = range_getParameter_outside(param_1 + range_getBegin());
        local_178._0 = param_1 / _50;
        break;
    case 2:
        param_1 = range_getParameter_outside(param_1 + range_getEnd());
        local_178._0 = param_1 / _50;
        break;
    case 3:
        param_1 = range_getParameter_outside(param_1 + 0.5 * (range_getBegin() + range_getEnd()));
        local_178._0 = param_1 / _50;
        break;
    case 4:
        param_1 = range_getParameter_outside(param_1);
        local_178._0 = (dVar12 * (param_1 - range_getBegin())) / range_getDifference();
        break;
    default:
        JGADGET_WARNMSG1(1051, "unknown adjustment : ", r28);
        goto r28_0;
    }

    if (local_178._0 < 0.0) {
        return _44[0];
    }
    if (local_178._0 >= dVar12) {
        return _44[iVar7];
    }
    local_178._8 = floor(local_178._0);
    local_178._10 = local_178._8;
    JUT_ASSERT(1063, pfnUpdate_!=NULL);
    return pfnUpdate_(*this, local_178);
}


f64 TFunctionValue_list::update_INTERPOLATE_NONE_(const TFunctionValue_list& rThis,
                                                  const TIndexData_& data) {
    const f32* r31 = rThis._44;
    return r31[data._10];
}

f64 TFunctionValue_list::update_INTERPOLATE_LINEAR_(const TFunctionValue_list& rThis,
                                                    const TIndexData_& data) {
     const f32* r30 = rThis._44;
    return functionvalue::interpolateValue_linear_1(data._0, data._8, r30[data._10],
                                                    r30[data._10 + 1]);
}

f64 TFunctionValue_list::update_INTERPOLATE_PLATEAU_(const TFunctionValue_list& rThis,
                                                     const TIndexData_& data) {
    const f32* arr = rThis._44;

    return functionvalue::interpolateValue_plateau(data._0, data._8, arr[data._10],
                                                   1.0 + data._8, arr[data._10 + 1]);
}


f64 TFunctionValue_list::update_INTERPOLATE_BSPLINE_dataMore3_(
    TFunctionValue_list const& rThis, TFunctionValue_list::TIndexData_ const& param_2) {
    const f32* r30 = rThis._44;
    f64 dVar11 = r30[param_2._10];
    f64 dVar10 = r30[param_2._10 + 1];
    f64 dVar9;
    f64 dVar8;
    if (param_2._10 == 0) {
        JUT_ASSERT(1119, rThis.uData_>=3);
        dVar9 = 2.0 * dVar11 - dVar10;
        dVar8 = r30[param_2._10 + 2];
    } else {
        if (param_2._10 == rThis.uData_ - 2) {
            JUT_ASSERT(1125, rThis.uData_>=3);
            dVar9 = r30[param_2._10 - 1];
            dVar8 = 2.0 * dVar10 - dVar11;
        } else {
            JUT_ASSERT(1131, rThis.uData_>=4);
            dVar9 = r30[param_2._10 - 1];
            dVar8 = r30[param_2._10 + 2];
        }
    }

    f64 f27 = param_2._0 - param_2._8;
    return functionvalue::interpolateValue_BSpline_uniform(f27, dVar9, dVar11, dVar10, dVar8);
}


TFunctionValue_list_parameter::TFunctionValue_list_parameter()
    : pfData_(NULL), uData_(0), dat1(*this, NULL), dat2(dat1), dat3(dat1), pfnUpdate_(NULL) {}

u32 TFunctionValue_list_parameter::getType() const {
    return 5;
}

TFunctionValueAttributeSet TFunctionValue_list_parameter::getAttributeSet() {
    return TFunctionValueAttributeSet(NULL, this, this);
}

void TFunctionValue_list_parameter::data_set(const f32* pf, u32 u) {
    JUT_ASSERT(1277, (pf!=NULL)||(u==0));

    pfData_ = pf;
    uData_ = u;

    dat1.set(pfData_);
    dat2.set(&pfData_[uData_ * 2]);
    dat3 = dat1;
#if DEBUG
    pfnUpdate_ = NULL;
#endif
}

void TFunctionValue_list_parameter::initialize() {
    range_initialize();
    interpolate_initialize();

    pfData_ = NULL;
    uData_ = 0;

    dat1 = TIterator_data_(*this, NULL);
    dat2 = dat1;
    dat3 = dat1;
    pfnUpdate_ = NULL;
}

void TFunctionValue_list_parameter::prepare() {
    range_prepare();
    interpolate_prepare();

    int interp = interpolate_get();
    switch (interp) {
    case 0:
        interpolate_none:
        pfnUpdate_ = update_INTERPOLATE_NONE_;
        break;
    case 1:
        pfnUpdate_ = update_INTERPOLATE_LINEAR_;
        break;
    case 2:
        pfnUpdate_ = update_INTERPOLATE_PLATEAU_;
        break;
    case 3:
        pfnUpdate_ = update_INTERPOLATE_BSPLINE_dataMore3_;
        if (uData_ != 2)
            return;
        pfnUpdate_ = update_INTERPOLATE_LINEAR_;
        break;
    default:
        JGADGET_WARNMSG1(1383, "unknown interpolation : ", interp);
        goto interpolate_none;
    }
}

f64 TFunctionValue_list_parameter::getValue(f64 param_0) {
    param_0 = range_getParameter(param_0, data_getValue_front(), data_getValue_back());
    JUT_ASSERT(1395, pfData_!=NULL)

    dat3 = JGadget::findUpperBound_binary_current(dat1, dat2, dat3, param_0);
    if (dat3 == dat1) {
        return dat3.get()[1];
    }
    if (dat3 == dat2) {
        --dat3;
        return dat3.get()[1];
    } 

    const f32* pf = dat3.get();
    JUT_ASSERT(1411, (pfData_<=pf-suData_size)&&(pf<pfData_+suData_size*uData_));
    JUT_ASSERT(1412, pfnUpdate_!=NULL);
    return pfnUpdate_(*this, param_0);
}

f64 TFunctionValue_list_parameter::update_INTERPOLATE_NONE_(
    const TFunctionValue_list_parameter& rThis, f64 d) {
    const f32* a = rThis.dat3.get();
    return a[-1];
}

f64 TFunctionValue_list_parameter::update_INTERPOLATE_LINEAR_(
    const TFunctionValue_list_parameter& rThis, f64 d) {
    const f32* a = rThis.dat3.get();
    return functionvalue::interpolateValue_linear(d, a[-2], a[-1], a[0], a[1]);
}

f64 TFunctionValue_list_parameter::update_INTERPOLATE_PLATEAU_(
    const TFunctionValue_list_parameter& rThis, f64 d) {
    const f32* a = rThis.dat3.get();
    return functionvalue::interpolateValue_plateau(d, a[-2], a[-1], a[0], a[1]);
}


f64 TFunctionValue_list_parameter::update_INTERPOLATE_BSPLINE_dataMore3_(
    TFunctionValue_list_parameter const& rThis, f64 param_2) {
    JUT_ASSERT(1457, rThis.uData_>=3)
    const f32* pfVar2 = rThis.dat3.get();
    f64 local_68[4];
    f64 local_48[6];
    local_68[1] = pfVar2[-1];
    local_68[2] = pfVar2[1];
    local_48[2] = pfVar2[-2];
    local_48[3] = pfVar2[0];
    s32 iVar5 = ((intptr_t)pfVar2 - (intptr_t)rThis.dat1.get()) / 4;
    s32 iVar3 = ((intptr_t)rThis.dat2.get() - (intptr_t)pfVar2) / 4;
    switch(iVar5) {
    case 2:
        local_68[0] = 2.0 * local_68[1] - local_68[2];
        local_68[3] = pfVar2[3];
        local_48[4] = pfVar2[2];
        local_48[1] = 2.0 * local_48[2] - local_48[3];
        local_48[0] = 2.0 * local_48[2] - local_48[4];
        switch (iVar3) {
        case 2:
            JUT_ASSERT(1481, false);
        case 4:
            local_48[5] = 2.0 * local_48[4] - local_48[3];
            break;
        default:
            local_48[5] = pfVar2[4];
            break;
        }
        break;
    case 4:
        local_68[0] = pfVar2[-3];
        local_48[1] = pfVar2[-4];
        local_48[0] = 2.0 * local_48[1] - local_48[2];
        switch (iVar3)
        {
        case 2:
            local_68[3] = 2.0 * local_68[2] - local_68[1];
            local_48[4] = 2.0 * local_48[3] - local_48[2];
            local_48[5] = 2.0 * local_48[3] - local_48[1];
            break;
        case 4:
            local_68[3] = pfVar2[3];
            local_48[4] = pfVar2[2];
            local_48[5] = 2.0 * local_48[4] - local_48[3];
            break;
        default:
            local_68[3] = pfVar2[3];
            local_48[4] = pfVar2[2];
            local_48[5] = pfVar2[4];
        }
        break;
    default:
        local_68[0] = pfVar2[-3];
        local_48[1] = pfVar2[-4];
        local_48[0] = pfVar2[-6];
        switch (iVar3) {
        case 2:
            local_68[3] = 2.0 * local_68[2] - local_68[1];
            local_48[4] = 2.0 * local_48[3] - local_48[2];
            local_48[5] = 2.0 * local_48[3] - local_48[1];
            break;
        case 4:
            local_68[3] = pfVar2[3];
            local_48[4] = pfVar2[2];
            local_48[5] = 2.0 * local_48[4] - local_48[3];
            break;
        default:
            local_68[3] = pfVar2[3];
            local_48[4] = pfVar2[2];
            local_48[5] = pfVar2[4];
            break;
        }
        break;
    }
    return functionvalue::interpolateValue_BSpline_nonuniform(param_2, local_68, local_48);
}


TFunctionValue_hermite::TFunctionValue_hermite()
    : pfData_(NULL), u_(0), uSize_(0), dat1(*this, NULL), dat2(dat1), dat3(dat1) {}

u32 JStudio::TFunctionValue_hermite::getType() const {
    return 6;
}

TFunctionValueAttributeSet TFunctionValue_hermite::getAttributeSet() {
    return TFunctionValueAttributeSet(NULL, this, NULL);
}

void TFunctionValue_hermite::data_set(const f32* pf, u32 u, u32 uSize) {
    JUT_ASSERT(1676, (pf!=NULL)||(u==0));
    JUT_ASSERT(1677, (uSize==3)||(uSize==4));

    pfData_ = pf;
    u_ = u;
    uSize_ = uSize;

    dat1.set(pfData_, uSize_);
    dat2.set(&pfData_[u_ * uSize_], uSize_);
    dat3 = dat1;
}

void TFunctionValue_hermite::initialize() {
    range_initialize();

    pfData_ = NULL;
    u_ = 0;
    uSize_ = 0;

    dat1 = TIterator_data_(*this, NULL);
    dat2 = dat1;
    dat3 = dat1;
}

void TFunctionValue_hermite::prepare() {
    range_prepare();
}

f64 TFunctionValue_hermite::getValue(f64 param_0) {
    param_0 = range_getParameter(param_0, data_getValue_front(), data_getValue_back());
    JUT_ASSERT(1716, pfData_!=NULL)
    
    dat3 = JGadget::findUpperBound_binary_current(dat1, dat2, dat3, param_0);
    
    if (dat3 == dat1) {
        return dat3.get()[1];
    }
    if (dat3 == dat2) {
        --dat3;
        return dat3.get()[1];
    }

    const f32* pfVar5 = dat3.get();
    const f32* pfVar7 = pfVar5 - uSize_;
    return functionvalue::interpolateValue_hermite(
        param_0, pfVar7[0], pfVar7[1],
        pfVar7[uSize_ - 1], pfVar5[0],
        pfVar5[1], pfVar5[2]);
}

}  // namespace JStudio
