#ifndef FUNCTIONVALUE_H
#define FUNCTIONVALUE_H

#include "JSystem/JGadget/search.h"
#include "JSystem/JGadget/vector.h"
#include "global.h"

extern u8 lit_652[];

namespace JStudio {

typedef f64 (*ExtrapolateParameter)(f64, f64);

class TFunctionValue;
class TFunctionValueAttributeSet;

class TFunctionValueAttribute_refer;
class TFunctionValueAttribute_range;
class TFunctionValueAttribute_interpolate;

class TFunctionValue {
public:
    enum TEProgress { PROG_INIT };
    enum TEAdjust { ADJ_INIT };
    enum TEOutside { OUT_INIT };
    enum TEInterpolate {};

    /* 80281690 */ TFunctionValue();
    /* 802816A0 */ virtual ~TFunctionValue() = 0;

    virtual u32 getType() const = 0;
    virtual TFunctionValueAttributeSet getAttributeSet() = 0;
    virtual void initialize() = 0;
    virtual void prepare() = 0;
    virtual f64 getValue(f64 arg1) = 0;

    /* 80281648 */ static ExtrapolateParameter toFunction_outside(int);

    static ExtrapolateParameter toFunction(TFunctionValue::TEOutside outside) {
        return toFunction_outside(outside);
    }
};

class TFunctionValueAttributeSet_const {
public:
    TFunctionValueAttributeSet_const(TFunctionValueAttribute_refer* refer,
                                     TFunctionValueAttribute_range* range,
                                     TFunctionValueAttribute_interpolate* interp)
        : refer_(refer), range_(range), interp_(interp) {}

    TFunctionValueAttribute_refer* refer_get() const { return refer_; }
    TFunctionValueAttribute_range* range_get() const { return range_; }
    TFunctionValueAttribute_interpolate* interpolate_get() const { return interp_; }

private:
    /* 0x00 */ TFunctionValueAttribute_refer* refer_;
    /* 0x04 */ TFunctionValueAttribute_range* range_;
    /* 0x08 */ TFunctionValueAttribute_interpolate* interp_;
};

class TFunctionValueAttributeSet : public TFunctionValueAttributeSet_const {
public:
    TFunctionValueAttributeSet(TFunctionValueAttribute_refer* refer,
                               TFunctionValueAttribute_range* range,
                               TFunctionValueAttribute_interpolate* interp)
        : TFunctionValueAttributeSet_const(refer, range, interp) {}

    TFunctionValueAttribute_refer* refer_get() const {
        return static_cast<const TFunctionValueAttributeSet_const*>(this)->refer_get();
    }
    TFunctionValueAttribute_range* range_get() const {
        return static_cast<const TFunctionValueAttributeSet_const*>(this)->range_get();
    }
    TFunctionValueAttribute_interpolate* interpolate_get() const {
        return static_cast<const TFunctionValueAttributeSet_const*>(this)->interpolate_get();
    }
};

class TFunctionValueAttribute_refer : public JGadget::TVector_pointer<TFunctionValue*> {
public:
    // TFunctionValueAttribute_refer() :
    // JGadget::TVector_pointer<TFunctionValue*>(JGadget::TAllocator<void*>()) {}
    ~TFunctionValueAttribute_refer() {}

    /* 802816E8 */ void refer_initialize();

    const TFunctionValueAttribute_refer* refer_getContainer() const { return this; }
    JGadget::TVector_pointer<TFunctionValue*>& refer_referContainer() { return *this; }
    bool refer_isReferring(const TFunctionValue* p) const { return false; }  // todo
};

class TFunctionValueAttribute_range {
public:
    /* 80281D18 */ TFunctionValueAttribute_range();

    /* 80281918 */ void range_initialize();
    /* 8028194C */ void range_prepare();
    /* 802819F4 */ void range_set(f64, f64);
    /* 80281A08 */ f64 range_getParameter(f64, f64, f64) const;

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
        if (temp < *(f64*)&lit_652) {
            result = TFunctionValue::toFunction(mBegin)(temp, fDifference_);
        } else if (temp >= fDifference_) {
            result = TFunctionValue::toFunction(mEnd)(temp, fDifference_);
        }
        return result + fBegin_;
    }
    f64 range_getParameter_progress(f64 arg1) const { return _20 + _28 * (arg1 - _20); }

private:
    /* 0x00 */ f64 fBegin_;
    /* 0x08 */ f64 fEnd_;
    /* 0x10 */ f64 fDifference_;
    /* 0x18 */ s8 mProgress;
    /* 0x19 */ s8 mAdjust;
    /* 0x1A */ s8 _1a[2];
    /* 0x1C */ u32 _1c;
    /* 0x20 */ f64 _20;
    /* 0x28 */ f64 _28;
    /* 0x30 */ TFunctionValue::TEOutside mBegin;
    /* 0x34 */ TFunctionValue::TEOutside mEnd;
};

class TFunctionValueAttribute_interpolate {
public:
    TFunctionValueAttribute_interpolate() : interpolate_(0) {}

    void interpolate_initialize() { interpolate_ = 0; }
    void interpolate_prepare() {}
    u32 interpolate_get() const { return interpolate_; }
    void interpolate_set(TFunctionValue::TEInterpolate interpolate) { interpolate_ = interpolate; }

private:
    /* 0x0 */ u32 interpolate_;
};

class TFunctionValue_constant : public TFunctionValue {
public:
    /* 8028236C */ TFunctionValue_constant();
    /* 80283D44 */ virtual ~TFunctionValue_constant() {}

    /* 802823B4 */ virtual u32 getType() const;
    /* 802823BC */ virtual TFunctionValueAttributeSet getAttributeSet();
    /* 802823D0 */ virtual void initialize();
    /* 802823E0 */ virtual void prepare();
    /* 802823E4 */ virtual f64 getValue(f64);

    void data_set(f64 value) { fValue_ = value; }

private:
    f64 fValue_;
};

class TFunctionValue_composite : public TFunctionValue, public TFunctionValueAttribute_refer {
public:
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
    typedef f64 (*UnkFunc)(f64, const TFunctionValueAttribute_refer*,
                           const TFunctionValue_composite::TData*);
    typedef f64 (*CompositeFunc)(const JGadget::TVector_pointer<TFunctionValue>&,
                                 const TFunctionValue_composite::TData&, f64);

    /* 80281D5C */ TFunctionValue_composite();
    /* 80283DA4 */ virtual ~TFunctionValue_composite() {}

    /* 80281DB8 */ virtual u32 getType() const;
    /* 80281DC0 */ virtual TFunctionValueAttributeSet getAttributeSet();
    /* 80281DE0 */ virtual void initialize();
    /* 80281E24 */ virtual void prepare();
    /* 80281E28 */ virtual f64 getValue(f64);
    /* 80281E5C */ void composite_raw(TVector_pointer<TFunctionValue*> const&, TData const&, f64);
    /* 80281EC8 */ void composite_index(TVector_pointer<TFunctionValue*> const&, TData const&, f64);
    /* 8028202C */ void composite_parameter(TVector_pointer<TFunctionValue*> const&, TData const&,
                                            f64);
    /* 80282094 */ void composite_add(TVector_pointer<JStudio::TFunctionValue*> const&,
                                      TData const&, f64);
    /* 80282118 */ void composite_subtract(TVector_pointer<TFunctionValue*> const&, TData const&,
                                           f64);
    /* 80282200 */ void composite_multiply(TVector_pointer<TFunctionValue*> const&, TData const&,
                                           f64);
    /* 80282284 */ void composite_divide(TVector_pointer<TFunctionValue*> const&, TData const&,
                                         f64);

    void data_set(CompositeFunc fn, const TData& dat) {
        pfn_ = (UnkFunc)fn;
        data_setData(dat);
    }
    const TData* data_getData() const { return &data; }
    void data_setData(const TData& dat) { data = dat; }

// private:
    UnkFunc pfn_;
    TData data;
};

class TFunctionValue_transition : TFunctionValue,
                                  TFunctionValueAttribute_range,
                                  TFunctionValueAttribute_interpolate {
public:
    /* 802823EC */ TFunctionValue_transition();
    /* 80283CE4 */ virtual ~TFunctionValue_transition() {}

    /* 8028244C */ virtual u32 getType() const;
    /* 80282454 */ virtual TFunctionValueAttributeSet getAttributeSet();
    /* 80282484 */ virtual void initialize();
    /* 802824D0 */ virtual void prepare();
    /* 802824F4 */ virtual f64 getValue(f64);

    void data_set(f64 a1, f64 a2) {
        _48 = a1;
        _50 = a2;
    }

private:
    /* 0x48 */ f64 _48;
    /* 0x50 */ f64 _50;
};

class TFunctionValue_list : TFunctionValue,
                            TFunctionValueAttribute_range,
                            TFunctionValueAttribute_interpolate {
public:
    struct TIndexData_ {
        f64 _0;
        f64 _8;
        u32 _10;
    };
    typedef f64 (*update_INTERPOLATE)(const TFunctionValue_list&, const TIndexData_&);

    /* 802826BC */ TFunctionValue_list();
    virtual ~TFunctionValue_list() {}

    /* 80282720 */ virtual u32 getType() const;
    /* 80282728 */ virtual TFunctionValueAttributeSet getAttributeSet();
    /* 80282758 */ virtual void initialize();
    /* 802827A8 */ virtual void prepare();
    /* 80282858 */ virtual f64 getValue(f64);

    void data_set(const f32* pf, u32 u) {
        ASSERT((pf != NULL) || (u == 0));
        _44 = pf;
        _48 = u;
    }

    void data_setInterval(f64 f) {
        ASSERT(f > TValue(0));
        _50 = f;
    }

    /* 80282C10 */ static f64
    update_INTERPOLATE_NONE_(JStudio::TFunctionValue_list const&,
                             JStudio::TFunctionValue_list::TIndexData_ const&);
    /* 80282C24 */ static f64
    update_INTERPOLATE_LINEAR_(JStudio::TFunctionValue_list const&,
                               JStudio::TFunctionValue_list::TIndexData_ const&);
    /* 80282C58 */ static f64
    update_INTERPOLATE_PLATEAU_(JStudio::TFunctionValue_list const&,
                                JStudio::TFunctionValue_list::TIndexData_ const&);
    /* 80282CA8 */ static f64
    update_INTERPOLATE_BSPLINE_dataMore3_(JStudio::TFunctionValue_list const&,
                                          JStudio::TFunctionValue_list::TIndexData_ const&);

private:
    /* 0x44 */ const f32* _44;
    /* 0x48 */ u32 _48;
    /* 0x50 */ f64 _50;
    /* 0x58 */ update_INTERPOLATE _58;
};

class TFunctionValue_list_parameter : TFunctionValue,
                                      TFunctionValueAttribute_range,
                                      TFunctionValueAttribute_interpolate {
public:
    struct TIterator_data_ {
        TIterator_data_(const f32* value) : value_(value) {}
        TIterator_data_(const TIterator_data_& other) : value_(other.value_) {}

        void operator=(const TIterator_data_& rhs) { value_ = rhs.value_; }

        const f32* get() const { return value_; }
        void set(const f32* value) { value_ = value; }

        const f32* value_;
    };
    typedef f64 (*update_INTERPOLATE)(const TFunctionValue_list_parameter&, f64);

    /* 80282D34 */ TFunctionValue_list_parameter();
    /* 80283C24 */ virtual ~TFunctionValue_list_parameter() {}

    /* 80282DA0 */ virtual u32 getType() const;
    /* 80282DA8 */ virtual TFunctionValueAttributeSet getAttributeSet();
    /* 80282DD8 */ void data_set(f32 const*, u32);
    /* 80282E08 */ virtual void initialize();
    /* 80282E60 */ virtual void prepare();
    /* 80282F10 */ virtual f64 getValue(f64);

    /* 80282FE8 */ static f64
    update_INTERPOLATE_NONE_(JStudio::TFunctionValue_list_parameter const&, f64);
    /* 80282FF4 */ static f64
    update_INTERPOLATE_LINEAR_(JStudio::TFunctionValue_list_parameter const&, f64);
    /* 80283024 */ static f64
    update_INTERPOLATE_PLATEAU_(JStudio::TFunctionValue_list_parameter const&, f64);
    /* 80283060 */ static f64
    update_INTERPOLATE_BSPLINE_dataMore3_(JStudio::TFunctionValue_list_parameter const&, f64);

private:
    /* 0x44 */ const f32* _44;
    /* 0x48 */ u32 _48;
    /* 0x4c */ TIterator_data_ dat1;
    /* 0x50 */ TIterator_data_ dat2;
    /* 0x54 */ TIterator_data_ dat3;
    /* 0x58 */ update_INTERPOLATE _58;
};

class TFunctionValue_hermite : TFunctionValue, TFunctionValueAttribute_range {
public:
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

    /* 802832C4 */ TFunctionValue_hermite();
    /* 80283BC4 */ virtual ~TFunctionValue_hermite() {}

    /* 80283344 */ virtual u32 getType() const;
    /* 8028334C */ virtual TFunctionValueAttributeSet getAttributeSet();
    /* 8028336C */ void data_set(f32 const*, u32, u32);
    /* 802833BC */ virtual void initialize();
    /* 80283428 */ virtual void prepare();
    /* 8028344C */ virtual f64 getValue(f64);

    u32 data_getSize() const { return uSize_; }

private:
    /* 0x40 */ const f32* pf_;
    /* 0x44 */ u32 u_;
    /* 0x48 */ u32 uSize_;
    /* 0x4c */ TIterator_data_ dat1;
    /* 0x50 */ TIterator_data_ dat2;
    /* 0x54 */ TIterator_data_ dat3;
};

}  // namespace JStudio

#endif /* FUNCTIONVALUE_H */
