#include "JSystem/JStudio/functionvalue.h"

extern "C" {
void __cvt_fp2unsigned(void);
}

namespace JStudio {

DoubleFunc TFunctionValue::toFunction_outside(int arg1) {
    DoubleFunc fallback = NULL;
    DoubleFunc result;

    result = JGadget::toValueFromIndex<DoubleFunc>(arg1, lbl_8039A9F0, 4, fallback);

    if (result == NULL) {
        JUTWarn w;
        w << "unknown outside : " << arg1;

        return lbl_8039A9F0[0];
    }

    return result;
}

TFunctionValue::TFunctionValue() {}

TFunctionValue::~TFunctionValue() {}

void TFunctionValueAttribute_refer::refer_initialize() {
    clear();
}

namespace functionvalue {

#ifdef NONMATCHING  // impossible regalloc
f64 interpolateValue_hermite(f64 c0, f64 c1, f64 x, f64 c2, f64 x2, f64 c3, f64 x3) {
    f64 a;
    f64 d;
    f64 c;
    f64 b;

    a = c0 - c1;
    b = a * (lbl_80455408 / (x2 - c1));               // (a - b) * 1.0 / (c - d)
    c = b - lbl_80455408;                             // 1.0
    d = (lbl_80455410 + lbl_80455418 * b) * (b * b);  // 3.0 - 2.0 * b
    return (a * b * c * x3) + ((lbl_80455408 - d) * x + (d * c3)) + (a * (c * c) * c2);
}
#else
asm f64 interpolateValue_hermite(f64 c0, f64 c1, f64 x, f64 c2, f64 x2, f64 c3, f64 x3) {
    nofralloc
#include "JSystem/JStudio/asm/interpolateValue_hermite__Q27JStudio13functionvalueFddddddd.s"
}
#endif

#ifdef NONMATCHING  // really minor regalloc
f64 interpolateValue_BSpline_uniform(f64 f1, f64 f2, f64 f3, f64 f4, f64 f5) {
    // pow3(1.0 - f1)
    f64 f6 = (lbl_80455408 - f1);
    f64 temp = f6;
    temp *= f6 * f6;

    f64 f0 = f1 * f1;
    f64 f8 = f0 * f1;

    return ((lbl_80455420 * f8 - f0) + lbl_80455430) * f3 + (temp * f2 + f8 * f5) * lbl_80455428 +
           f4 * (lbl_80455428 + lbl_80455420 * ((f1 + f0) - f8));
}
#else
asm f64 interpolateValue_BSpline_uniform(f64 a1, f64 a2, f64 a3, f64 a4, f64 a5) {
    nofralloc
#include "JSystem/JStudio/asm/interpolateValue_BSpline_uniform__Q27JStudio13functionvalueFddddd.s"
}
#endif

asm f64 interpolateValue_BSpline_nonuniform(f64 a1, const f64* a2, const f64* a3) {
    nofralloc
#include "JSystem/JStudio/asm/interpolateValue_BSpline_nonuniform__Q27JStudio13functionvalueFdPCdPCd.s"
}

inline f64 interpolateValue_linear(double a1, double a2, double a3, double a4, double a5) {
    return a3 + ((a5 - a3) * (a1 - a2)) / (a4 - a2);
}

inline f64 interpolateValue_linear_1(f64 a1, f64 a2, f64 a3, f64 a4) {
    return a3 + (a4 - a3) * (a1 - a2);
}

inline f64 interpolateValue_plateau(f64 a1, f64 a2, f64 a3, f64 a4, f64 a5) {
    return interpolateValue_hermite(a1, a2, a3, *(f64*)&lbl_80455400, a4, a5, lbl_80455400);
}

}  // namespace functionvalue

void TFunctionValueAttribute_range::range_initialize() {
    fBegin_ = lbl_80450AE0[0];  // NaN
    fEnd_ = fBegin_;
    fDifference_ = fBegin_;

    range_setProgress(TFunctionValue::PROG_INIT);
    range_setAdjust(TFunctionValue::ADJ_INIT);
    range_setOutside(TFunctionValue::OUT_INIT);
}

void TFunctionValueAttribute_range::range_prepare() {
    TFunctionValue::TEProgress progress = range_getProgress();

    switch (progress) {
    default:
        JUTWarn w;
        w << "unknown progress : " << progress;
    case 0:
        _20 = lbl_80455400;  // 0.0
        _28 = lbl_80455408;  // 1.0
        break;
    case 1:
        _20 = lbl_80455400;  // 0.0
        _28 = lbl_80455440;  // -1.0
        break;
    case 2:
        _20 = fBegin_;
        _28 = lbl_80455440;  // -1.0
        break;
    case 3:
        _20 = fEnd_;
        _28 = lbl_80455440;  // -1.0
        break;
    case 4:
        _20 = lbl_80455428 * (fBegin_ + fEnd_);  // 0.5
        _28 = lbl_80455440;                      // -1.0
        break;
    }
}

void TFunctionValueAttribute_range::range_set(f64 begin, f64 end) {
    fBegin_ = begin;
    fEnd_ = end;
    fDifference_ = end - begin;

    JUT_ASSERT(fDifference_ >=
               lbl_80455400);  // 0.0 -- supposed to be "fDifference_ >= TValue(0)" (???)
}

#ifdef NONMATCHING  // control flow blocks inverted
f64 TFunctionValueAttribute_range::range_getParameter(f64 arg1, f64 arg2, f64 arg3) const {
    f64 progress = range_getParameter_progress(arg1);
    TFunctionValue::TEAdjust adjust = range_getAdjust();

    f64 result;

    switch (adjust) {
    default:
        JUTWarn w;
        w << "unknown adjust : " << adjust;
    case 0:
        result = range_getParameter_outside(progress);
        break;
    case 1:
        result = range_getParameter_outside(progress + fBegin_);
        break;
    case 2:
        result = range_getParameter_outside(progress + fEnd_);
        break;
    case 3:
        result = range_getParameter_outside(progress + lbl_80455428 * (fBegin_ + fEnd_));
        break;
    case 4:
        f64 temp = range_getParameter_outside(progress);
        result = arg2 + ((temp - fBegin_) * (arg3 - arg2)) / fDifference_;
        break;
    }
    return result;
}
#else
asm f64 TFunctionValueAttribute_range::range_getParameter(f64 arg1, f64 arg2, f64 arg3) const {
    nofralloc
#include "JSystem/JStudio/asm/range_getParameter__Q27JStudio29TFunctionValueAttribute_rangeCFddd.s"
}
#endif

TFunctionValueAttribute_range::TFunctionValueAttribute_range()
    : fBegin_(lbl_80450AE0[0]), fEnd_(fBegin_), fDifference_(fBegin_),
      mProgress(TFunctionValue::PROG_INIT), mAdjust(TFunctionValue::ADJ_INIT), _20(fBegin_),
      _28(fBegin_), mBegin(TFunctionValue::OUT_INIT), mEnd(TFunctionValue::OUT_INIT) {}

// TFunctionValue_composite::TFunctionValue_composite() : data((void*)NULL) {}
asm TFunctionValue_composite::TFunctionValue_composite()
    : data((void*)NULL){nofralloc
#include "JSystem/JGadget/asm/__ct__Q27JStudio24TFunctionValue_compositeFv.s"
      }

      u32 TFunctionValue_composite::getType() const {
    return 1;
}

TFunctionValueAttributeSet TFunctionValue_composite::getAttributeSet() {
    return TFunctionValueAttributeSet(this, NULL, NULL);
}

// TFunctionValueAttributeSet TFunctionValue_constant::getAttributeSet() {
//     return TFunctionValueAttributeSet(NULL, NULL, NULL);
// }

void TFunctionValue_composite::initialize() {
    refer_initialize();
    pfn_ = NULL;
    data = TData((void*)NULL);
}

void TFunctionValue_composite::prepare() {}

f64 TFunctionValue_composite::getValue(f64 arg1) {
    const TFunctionValueAttribute_refer* container = refer_getContainer();
    JUT_ASSERT(!refer_isReferring(this));
    JUT_ASSERT(pfn_ != NULL);

    return pfn_(arg1, container, data_getData());
}

asm f64 TFunctionValue_composite::composite_raw(const JGadget::TVector_pointer<TFunctionValue*>& pv,
                                                const TData& data, f64 d) {
    nofralloc
#include "JSystem/JStudio/asm/composite_raw__Q27JStudio24TFunctionValue_compositeFRCQ27JGadget44TVector_pointer.s"
}

asm f64
TFunctionValue_composite::composite_index(const JGadget::TVector_pointer<TFunctionValue*>& pv,
                                          const TData& data, f64 d) {
    nofralloc
#include "JSystem/JStudio/asm/composite_index__Q27JStudio24TFunctionValue_compositeFRCQ27JGadget44TVector_pointer.s"
}

asm f64
TFunctionValue_composite::composite_parameter(const JGadget::TVector_pointer<TFunctionValue*>& pv,
                                              const TData& data, f64 d) {
    nofralloc
#include "JSystem/JStudio/asm/composite_parameter__Q27JStudio24TFunctionValue_compositeFRCQ27JGadget44TVector_pointer.s"
}

asm f64 TFunctionValue_composite::composite_add(const JGadget::TVector_pointer<TFunctionValue*>& pv,
                                                const TData& data, f64 d) {
    nofralloc
#include "JSystem/JStudio/asm/composite_add__Q27JStudio24TFunctionValue_compositeFRCQ27JGadget44TVector_pointer.s"
}

asm f64
TFunctionValue_composite::composite_subtract(const JGadget::TVector_pointer<TFunctionValue*>& pv,
                                             const TData& data, f64 d) {
    nofralloc
#include "JSystem/JStudio/asm/composite_subtract__Q27JStudio24TFunctionValue_compositeFRCQ27JGadget44TVector_pointer.s"
}

asm f64
TFunctionValue_composite::composite_multiply(const JGadget::TVector_pointer<TFunctionValue*>& pv,
                                             const TData& data, f64 d) {
    nofralloc
#include "JSystem/JStudio/asm/composite_multiply__Q27JStudio24TFunctionValue_compositeFRCQ27JGadget44TVector_pointer.s"
}

asm f64
TFunctionValue_composite::composite_divide(const JGadget::TVector_pointer<TFunctionValue*>& pv,
                                           const TData& data, f64 d){nofralloc
#include "JSystem/JStudio/asm/composite_divide__Q27JStudio24TFunctionValue_compositeFRCQ27JGadget44TVector_pointer.s"
}

TFunctionValue_constant::TFunctionValue_constant()
    : _0(lbl_80450AE0[0]) {
}

u32 TFunctionValue_constant::getType() const {
    return 2;
}

TFunctionValueAttributeSet TFunctionValue_constant::getAttributeSet() {
    return TFunctionValueAttributeSet(NULL, NULL, NULL);
}

void TFunctionValue_constant::initialize() {
    _0 = lbl_80450AE0[0];
}

void TFunctionValue_constant::prepare() {}

f64 TFunctionValue_constant::getValue(f64 arg1) {
    return _0;
}

TFunctionValue_transition::TFunctionValue_transition() : _48(lbl_80450AE0[0]), _50(_48) {}

u32 TFunctionValue_transition::getType() const {
    return 3;
}

TFunctionValueAttributeSet TFunctionValue_transition::getAttributeSet() {
    return TFunctionValueAttributeSet(NULL, this, this);
}

void TFunctionValue_transition::initialize() {
    range_initialize();
    interpolate_initialize();

    _48 = lbl_80450AE0[0];
    _50 = _48;
}

void TFunctionValue_transition::prepare() {
    range_prepare();
    interpolate_prepare();
}

asm f64 TFunctionValue_transition::getValue(f64 arg1){nofralloc
#include "JSystem/JStudio/asm/getValue__Q27JStudio25TFunctionValue_transitionFd.s"
}

TFunctionValue_list::TFunctionValue_list()
    : _44(NULL), _48(0), _50(lbl_80450AE0[0]), _58(NULL) {
}

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
    _48 = 0;
    _50 = lbl_80450AE0[0];
    _58 = NULL;
}

void TFunctionValue_list::prepare() {
    range_prepare();
    interpolate_prepare();

    u32 interp = interpolate_get();

    switch (interp) {
    default:
        JUTWarn w;
        w << "unknown interpolation : " << interp;
    case 0:
        _58 = update_INTERPOLATE_NONE_;
        break;
    case 1:
        _58 = update_INTERPOLATE_LINEAR_;
        break;
    case 2:
        _58 = update_INTERPOLATE_PLATEAU_;
        break;
    case 3:
        _58 = update_INTERPOLATE_BSPLINE_dataMore3_;
        if (_48 == 2)
            _58 = update_INTERPOLATE_LINEAR_;
        break;
    }
}

asm f64 TFunctionValue_list::getValue(f64 arg1){nofralloc
#include "JSystem/JStudio/asm/getValue__Q27JStudio19TFunctionValue_listFd.s"
}

f64 TFunctionValue_list::update_INTERPOLATE_NONE_(const TFunctionValue_list& rThis,
                                                  const TIndexData_& data) {
    return rThis._44[data._10];
}

f64 TFunctionValue_list::update_INTERPOLATE_LINEAR_(const TFunctionValue_list& rThis,
                                                    const TIndexData_& data) {
    return functionvalue::interpolateValue_linear_1(data._0, data._8, rThis._44[data._10],
                                                    rThis._44[data._10 + 1]);
}

f64 TFunctionValue_list::update_INTERPOLATE_PLATEAU_(const TFunctionValue_list& rThis,
                                                     const TIndexData_& data) {
    const f32* arr = rThis._44;

    return functionvalue::interpolateValue_plateau(data._0, data._8, arr[data._10],
                                                   lbl_80455408 + data._8, arr[data._10 + 1]);
}

asm f64 TFunctionValue_list::update_INTERPOLATE_BSPLINE_dataMore3_(const TFunctionValue_list& rThis,
                                                                   const TIndexData_& data){
    nofralloc
#include "JSystem/JStudio/asm/update_INTERPOLATE_BSPLINE_dataMore3___Q27JStudio19TFunctionValue_listFRCQ27JStudio19TFunctionValue_listRCQ37JStudio19TFunctionValue_list11TIndexData_.s"
}

TFunctionValue_list_parameter::TFunctionValue_list_parameter()
    : _44(NULL), _48(0), dat1(NULL), dat2(dat1), dat3(dat1), _58(NULL) {
}

u32 TFunctionValue_list_parameter::getType() const {
    return 5;
}

TFunctionValueAttributeSet TFunctionValue_list_parameter::getAttributeSet() {
    return TFunctionValueAttributeSet(NULL, this, this);
}

void TFunctionValue_list_parameter::data_set(const f32* pf, u32 u) {
    JUT_ASSERT((pf != NULL) || (u == 0));

    _44 = pf;
    _48 = u;

    dat1.set(_44);
    dat2.set(&_44[_48 * 2]);
    dat3 = dat1;
}

void TFunctionValue_list_parameter::initialize() {
    range_initialize();
    interpolate_initialize();

    _44 = NULL;
    _48 = 0;

    TIterator_data_ iter(NULL);

    dat1 = iter;
    dat2 = dat1;
    dat3 = dat1;
    _58 = NULL;
}

void TFunctionValue_list_parameter::prepare() {
    range_prepare();
    interpolate_prepare();

    u32 interp = interpolate_get();
    switch (interp) {
    default:
        JUTWarn w;
        w << "unknown interpolation : " << interp;
    case 0:
        _58 = update_INTERPOLATE_NONE_;
        break;
    case 1:
        _58 = update_INTERPOLATE_LINEAR_;
        break;
    case 2:
        _58 = update_INTERPOLATE_PLATEAU_;
        break;
    case 3:
        _58 = update_INTERPOLATE_BSPLINE_dataMore3_;
        if (_48 != 2)
            return;
        _58 = update_INTERPOLATE_LINEAR_;
        break;
    }
}

asm f64 TFunctionValue_list_parameter::getValue(f64 arg1){nofralloc
#include "JSystem/JStudio/asm/getValue__Q27JStudio29TFunctionValue_list_parameterFd.s"
}

f64 TFunctionValue_list_parameter::update_INTERPOLATE_NONE_(
    const TFunctionValue_list_parameter& rThis, f64 d) {
    return rThis.dat3.get()[-1];
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

asm f64 TFunctionValue_list_parameter::update_INTERPOLATE_BSPLINE_dataMore3_(
    const TFunctionValue_list_parameter& rThis, f64 d){nofralloc
#include "JSystem/JStudio/asm/update_INTERPOLATE_BSPLINE_dataMore3___Q27JStudio29TFunctionValue_list_parameterFRCQ27JStudio29TFunctionValue_list_parameterd.s"
}

TFunctionValue_hermite::TFunctionValue_hermite()
    : pf_(NULL), u_(0), uSize_(0), dat1(*this, NULL), dat2(dat1), dat3(dat1) {
}

u32 TFunctionValue_hermite::getType() const {
    return 6;
}

TFunctionValueAttributeSet TFunctionValue_hermite::getAttributeSet() {
    return TFunctionValueAttributeSet(NULL, this, NULL);
}

// data_set__Q27JStudio22TFunctionValue_hermiteFPCfUlUl
void TFunctionValue_hermite::data_set(const f32* pf, u32 u, u32 uSize) {
    JUT_ASSERT((pf != NULL) || (u == 0));
    JUT_ASSERT((uSize == 3) || (uSize == 4));

    pf_ = pf;
    u_ = u;
    uSize_ = uSize;

    dat1.set(pf_, uSize_);
    dat2.set(&pf_[u_ * uSize_], uSize_);
    dat3 = dat1;
}

void TFunctionValue_hermite::initialize() {
    range_initialize();

    pf_ = NULL;
    u_ = 0;
    uSize_ = 0;

    TIterator_data_ data(*this, NULL);
    dat1 = data;
    dat2 = dat1;
    dat3 = dat1;
}

void TFunctionValue_hermite::prepare() {
    range_prepare();
}

asm f64 TFunctionValue_hermite::getValue(f64 a1) {
    nofralloc
#include "JSystem/JStudio/asm/getValue__Q27JStudio22TFunctionValue_hermiteFd.s"
}

namespace functionvalue {

f64 extrapolateParameter_raw(f64 a1, f64 a2) {
    return a1;
}

f64 extrapolateParameter_repeat(f64 a1, f64 a2) {
    f64 t = fmod(a1, a2);

    if (t < lbl_80455400)
        t += a2;

    return t;
}

f64 extrapolateParameter_clamp(f64 value, f64 max) {
    if (value <= lbl_80455400)
        return lbl_80455400;

    if (max <= value)  // obtuse..
        value = max;

    return value;
}

}  // namespace functionvalue

}  // namespace JStudio
