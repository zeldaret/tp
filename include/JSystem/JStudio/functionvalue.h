#ifndef JSTUDIO_FUNCTIONVALUE_H
#define JSTUDIO_FUNCTIONVALUE_H

#include "JSystem/JGadget/search.h"
#include "JSystem/JGadget/vector.h"
#include "global.h"

typedef f64 (*DoubleFunc)(f64, f64);  // gapfnExtrapolateParameter_

extern "C" {
extern void toFunction_outside__Q27JStudio14TFunctionValueFi();
extern void JGadget_NS_TVector_pointer_void();
extern void __ct__Q27JStudio14TFunctionValueFv();
extern void func_80365078();
extern void func_8036C0FC();
extern void interpolateValue_hermite__Q27JStudio13functionvalueFddddddd();
extern void interpolateValue_BSpline_uniform__Q27JStudio13functionvalueFddddd();
extern void JGadget_NS_findUpperBound_binary_current();
extern void range_getParameter__Q27JStudio29TFunctionValueAttribute_rangeCFddd();
extern void interpolateValue_BSpline_nonuniform__Q27JStudio13functionvalueFdPCdPCd();
extern void JGadget_NS_findUpperBound_binary_current_X2_();
extern f64 func_8036C760(f64 a1, f64 a2);
}

extern DoubleFunc lbl_8039A9F0[];
extern f64 lbl_80455408;
extern f64 lbl_80455410;
extern f64 lbl_80455418;
extern f64 lbl_80455420;
extern f64 lbl_80455428;
extern f64 lbl_80455430;
extern f64 lbl_80455400;
extern f64 lbl_80455440;
extern f64 lbl_80455428;
extern u8 lbl_803C4980;
extern f64 lbl_80455448;
extern f64 lbl_80455438;

namespace JStudio {

struct TFunctionValue;
struct TFunctionValueAttributeSet;

struct TFunctionValueAttribute_refer;
struct TFunctionValueAttribute_range;
struct TFunctionValueAttribute_interpolate;

/*      Function Value Base        */

struct TFunctionValue {
    typedef enum TEProgress { PROG_INIT = 0 };
    typedef enum TEAdjust { ADJ_INIT = 0 };
    typedef enum TEOutside { OUT_INIT = 0 };

    TFunctionValue();
    virtual ~TFunctionValue();

    // virtuals
    virtual u32 getType() const = 0;
    virtual TFunctionValueAttributeSet getAttributeSet() = 0;
    virtual void initialize() = 0;
    virtual void prepare() = 0;
    virtual f64 getValue(f64 arg1) = 0;

    // inlines
    static DoubleFunc toFunction(TFunctionValue::TEOutside outside) {
        return toFunction_outside(outside);
    }

    // member functions
    static DoubleFunc toFunction_outside(int arg1);
};

/*      Attribute Sets        */

struct TFunctionValueAttributeSet_const {
    TFunctionValueAttributeSet_const(TFunctionValueAttribute_refer* refer,
                                     TFunctionValueAttribute_range* range,
                                     TFunctionValueAttribute_interpolate* interp)
        : refer_(refer), range_(range), interp_(interp) {}

    /* 0x00 */ TFunctionValueAttribute_refer* refer_;
    /* 0x04 */ TFunctionValueAttribute_range* range_;
    /* 0x08 */ TFunctionValueAttribute_interpolate* interp_;
};

struct TFunctionValueAttributeSet : TFunctionValueAttributeSet_const {
    TFunctionValueAttributeSet(TFunctionValueAttribute_refer* refer,
                               TFunctionValueAttribute_range* range,
                               TFunctionValueAttribute_interpolate* interp)
        : TFunctionValueAttributeSet_const(refer, range, interp) {}
};

/*      Attributes        */

struct TFunctionValueAttribute_range {
    TFunctionValueAttribute_range();

    // inlines
    TFunctionValue::TEProgress range_getProgress() const {
        return (TFunctionValue::TEProgress)mProgress;
    }
    void range_setProgress(TFunctionValue::TEProgress progress) { mProgress = progress; }
    TFunctionValue::TEAdjust range_getAdjust() const { return (TFunctionValue::TEAdjust)mAdjust; }
    void range_setAdjust(TFunctionValue::TEAdjust adjust) { mAdjust = adjust; }
    void range_setOutside(TFunctionValue::TEOutside outside) { range_setOutside(outside, outside); }
    void range_setOutside(TFunctionValue::TEOutside begin, TFunctionValue::TEOutside end) {
        range_setOutside_begin(begin);
        range_setOutside_end(end);
    }
    void range_setOutside_begin(TFunctionValue::TEOutside begin) { mBegin = begin; }
    void range_setOutside_end(TFunctionValue::TEOutside end) { mEnd = end; }
    f64 range_getParameter_outside(f64 arg1) const {
        f64 temp = arg1 - fBegin_;
        f64 result = temp;

        if (temp >= lbl_80455400) {
            if (temp >= fDifference_) {
                result = TFunctionValue::toFunction(mEnd)(temp, fDifference_);
            }
        } else {
            result = TFunctionValue::toFunction(mBegin)(temp, fDifference_);
        }
        return result + fBegin_;
    }
    f64 range_getParameter_progress(f64 arg1) const { return _20 + _28 * (arg1 - _20); }

    // member functions
    void range_initialize();
    void range_prepare();
    void range_set(f64 arg1, f64 arg2);
    f64 range_getParameter(f64 arg1, f64 arg2, f64 arg3) const;

private:
    /* -0x00 */ f64 fBegin_;
    /* -0x08 */ f64 fEnd_;
    /* -0x10 */ f64 fDifference_;
    /* -0x18 */ s8 mProgress;
    /* -0x19 */ s8 mAdjust;
    /* -0x1a */ s8 _1a[2];
    /* -0x1c */ u32 _1c;
    /* -0x20 */ f64 _20;
    /* -0x28 */ f64 _28;
    /* -0x30 */ TFunctionValue::TEOutside mBegin;
    /* -0x34 */ TFunctionValue::TEOutside mEnd;
};

struct TFunctionValueAttribute_refer : JGadget::TVector_pointer<TFunctionValue*> {
    // TFunctionValueAttribute_refer() :
    // JGadget::TVector_pointer<TFunctionValue*>(JGadget::TAllocator<void*>()) {}

    // inlines
    const TFunctionValueAttribute_refer* refer_getContainer() const { return this; }
    bool refer_isReferring(const TFunctionValue* p) const { return false; }  // todo

    // member functions
    void refer_initialize();
};

struct TFunctionValueAttribute_interpolate {
    TFunctionValueAttribute_interpolate() : _40(0) {}

    void interpolate_initialize() { _40 = 0; }
    void interpolate_prepare() {}
    u32 interpolate_get() const { return _40; }

    /* 0x40 */ u32 _40;
};

/*      Function Value Formats        */

struct TFunctionValue_composite : TFunctionValue, TFunctionValueAttribute_refer {
    struct TData;
    typedef f64 (*UnkFunc)(f64, const TFunctionValueAttribute_refer*,
                           const TFunctionValue_composite::TData*);

    struct TData {
        TData(void* data) : u32data((u32)data) {}
        TData(const void* data) : rawData(data) {}
        TData(u32 data) : u32data(data) {}
        TData(f32 data) : f32data(data) {}

        inline void operator=(const TData& rhs) { f32data = rhs.f32data; }

        union {
            const void* rawData;
            u32 u32data;
            f64 f32data;
        };
    };

    TFunctionValue_composite();  // : _18(0), data((void*)NULL) {}

    // virtuals
    virtual u32 getType() const;
    virtual TFunctionValueAttributeSet getAttributeSet();
    virtual void initialize();
    virtual void prepare();
    virtual f64 getValue(f64 arg1);

    // inlines
    const TData* data_getData() const { return &data; }

    // member functions
    f64 composite_raw(const JGadget::TVector_pointer<TFunctionValue*>& pv, const TData& data,
                      f64 d);
    f64 composite_index(const JGadget::TVector_pointer<TFunctionValue*>& pv, const TData& data,
                        f64 d);
    f64 composite_parameter(const JGadget::TVector_pointer<TFunctionValue*>& pv, const TData& data,
                            f64 d);
    f64 composite_add(const JGadget::TVector_pointer<TFunctionValue*>& pv, const TData& data,
                      f64 d);
    f64 composite_subtract(const JGadget::TVector_pointer<TFunctionValue*>& pv, const TData& data,
                           f64 d);
    f64 composite_multiply(const JGadget::TVector_pointer<TFunctionValue*>& pv, const TData& data,
                           f64 d);
    f64 composite_divide(const JGadget::TVector_pointer<TFunctionValue*>& pv, const TData& data,
                         f64 d);

    UnkFunc pfn_;
    TData data;
};

struct TFunctionValue_constant : TFunctionValue {
    TFunctionValue_constant();

    // virtuals
    virtual u32 getType() const;
    virtual TFunctionValueAttributeSet getAttributeSet();
    virtual void initialize();
    virtual void prepare();
    virtual f64 getValue(f64 arg1);

    // inlines
    void data_set(f64 value) { _0 = value; }

    /* 0x00 */ f64 _0;
};

struct TFunctionValue_transition : TFunctionValue,
                                   TFunctionValueAttribute_range,
                                   TFunctionValueAttribute_interpolate {
    TFunctionValue_transition();

    // virtuals
    u32 getType() const;
    TFunctionValueAttributeSet getAttributeSet();
    void initialize();
    void prepare();
    f64 getValue(f64 arg1);

    void data_set(f64 a1, f64 a2) {
        _48 = a1;
        _50 = a2;
    }

    /* 0x48 */ f64 _48;
    /* 0x50 */ f64 _50;
};

struct TFunctionValue_list : TFunctionValue,
                             TFunctionValueAttribute_range,
                             TFunctionValueAttribute_interpolate {
    struct TIndexData_ {
        f64 _0;
        f64 _8;
        u32 _10;
    };
    typedef f64 (*update_INTERPOLATE)(const TFunctionValue_list&, const TIndexData_&);

    TFunctionValue_list();

    // virtuals
    virtual u32 getType() const;
    virtual TFunctionValueAttributeSet getAttributeSet();
    virtual void initialize();
    virtual void prepare();
    virtual f64 getValue(f64 arg1);

    void data_set(const f32* pf, u32 u) {
        JUT_ASSERT((pf != NULL) || (u == 0));
        _44 = pf;
        _48 = u;
    }

    void data_setInterval(f64 f) {
        JUT_ASSERT(f > TValue(0));
        _50 = f;
    }

    static f64 update_INTERPOLATE_NONE_(const TFunctionValue_list& rThis, const TIndexData_& data);
    static f64 update_INTERPOLATE_LINEAR_(const TFunctionValue_list& rThis,
                                          const TIndexData_& data);
    static f64 update_INTERPOLATE_PLATEAU_(const TFunctionValue_list& rThis,
                                           const TIndexData_& data);
    static f64 update_INTERPOLATE_BSPLINE_dataMore3_(const TFunctionValue_list& rThis,
                                                     const TIndexData_& data);

    /* 0x44 */ const f32* _44;
    /* 0x48 */ u32 _48;
    /* 0x50 */ f64 _50;
    /* 0x58 */ update_INTERPOLATE _58;
};

struct TFunctionValue_list_parameter : TFunctionValue,
                                       TFunctionValueAttribute_range,
                                       TFunctionValueAttribute_interpolate {
    struct TIterator_data_ {
        TIterator_data_(const f32* value) : value_(value) {}
        TIterator_data_(const TIterator_data_& other) : value_(other.value_) {}

        void operator=(const TIterator_data_& rhs) { value_ = rhs.value_; }

        const f32* get() const { return value_; }
        void set(const f32* value) { value_ = value; }

        const f32* value_;
    };
    typedef f64 (*update_INTERPOLATE)(const TFunctionValue_list_parameter&, f64);

    TFunctionValue_list_parameter();

    // virtuals
    virtual u32 getType() const;
    virtual TFunctionValueAttributeSet getAttributeSet();
    virtual void initialize();
    virtual void prepare();
    virtual f64 getValue(f64 arg1);

    // member functions
    void data_set(const f32* pf, u32 u);

    static f64 update_INTERPOLATE_NONE_(const TFunctionValue_list_parameter& rThis, f64 d);
    static f64 update_INTERPOLATE_LINEAR_(const TFunctionValue_list_parameter& rThis, f64 d);
    static f64 update_INTERPOLATE_PLATEAU_(const TFunctionValue_list_parameter& rThis, f64 d);
    static f64 update_INTERPOLATE_BSPLINE_dataMore3_(const TFunctionValue_list_parameter& rThis,
                                                     f64 d);

    /* 0x44 */ const f32* _44;
    /* 0x48 */ u32 _48;
    /* 0x4c */ TIterator_data_ dat1;
    /* 0x50 */ TIterator_data_ dat2;
    /* 0x54 */ TIterator_data_ dat3;
    /* 0x58 */ update_INTERPOLATE _58;
};

struct TFunctionValue_hermite : TFunctionValue, TFunctionValueAttribute_range {
    struct TIterator_data_ {
        TIterator_data_(const TFunctionValue_hermite& rParent, const f32* value) {
            value_ = value;
            size_ = rParent.data_getSize();
        }
        TIterator_data_(const TIterator_data_& other) {
            value_ = other.value_;
            size_ = other.size_;
        }

        void set(const f32* value, u32 size) {
            value_ = value;
            size_ = size;
        }

        void operator=(const TIterator_data_& rhs) {
            value_ = rhs.value_;
            size_ = rhs.size_;
        }

        /* 0x00 */ const f32* value_;
        /* 0x04 */ u32 size_;
    };

    TFunctionValue_hermite();

    // virtuals
    virtual u32 getType() const;
    virtual TFunctionValueAttributeSet getAttributeSet();
    virtual void initialize();
    virtual void prepare();
    virtual f64 getValue(f64 arg1);

    // inlines
    u32 data_getSize() const { return uSize_; }

    // member functions
    void data_set(const f32* pf, u32 u, u32 uSize);

    /* 0x40 */ const f32* pf_;
    /* 0x44 */ u32 u_;
    /* 0x48 */ u32 uSize_;
    /* 0x4c */ TIterator_data_ dat1;
    /* 0x50 */ TIterator_data_ dat2;
    /* 0x54 */ TIterator_data_ dat3;
};

}  // namespace JStudio

#endif  // JSTUDIO_FUNCTIONVALUE_H
