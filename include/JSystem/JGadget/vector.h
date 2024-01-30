#ifndef VECTOR_H
#define VECTOR_H


extern u8 data_804511E0;
extern u8 lit_569[];

namespace JGadget {

namespace vector {

u32 extend_default(u32 arg1, u32 arg2, u32 arg3);

typedef u32 (*ExtendFunc)(u32, u32, u32);

}  // namespace vector

template <typename T>
struct TAllocator {
    static TAllocator get() {}
    inline TAllocator() { _0 = lit_569[0]; }
    /* 0x0 */ u8 _0;
    /* 0x4 */ u32 _4;
    /* 0x8 */ u32 _8;
    /* 0xc */ u32 _c;
};

template <typename T, template <class> class Allocator>
struct TVector {
    TVector(Allocator<T> alloc) {
        _0 = NULL;
        pBegin_ = _0;
        _c = NULL;
        extend = vector::extend_default;
    }

    inline u32 size() const {
        if (pBegin_ == NULL) {
            return 0;
        }

        return ((int)pEnd_ - (int)pBegin_) / 4;
    }

    void **const begin() const { return pBegin_; }
    void **const end() const { return pEnd_; }
    void** begin() { return pBegin_; }
    void** end() { return pEnd_; }
    // void erase(void** arg1, void** arg2) {}

    void** _0;
    void** pBegin_;
    void** pEnd_;
    u32 _c;
    vector::ExtendFunc extend;
};

struct TVector_pointer_void : TVector<void*, TAllocator> {
    /* 802DCCD0 */ TVector_pointer_void(JGadget::TAllocator<void*> const&);
    /* 802DCCFC */ ~TVector_pointer_void();
    /* 802DCDC4 */ void erase(void**, void**);
    void insert(void**, void* const&);

    void clear() { erase(begin(), end()); }
    void push_back(const void*& ref) { insert(end(), (void* const&)ref); }
};

template <typename T>
struct TVector_pointer : TVector_pointer_void {
    TVector_pointer(const TAllocator<void*>& allocator) : TVector_pointer_void(allocator) {}
    ~TVector_pointer() {}

    const T* begin() const { return (const T*)TVector_pointer_void::begin(); }
    T* begin() { return (T*)TVector_pointer_void::begin(); }

    const T* end() const { return (const T*)TVector_pointer_void::end(); }
    T* end() { return (T*)TVector_pointer_void::end(); }

    void push_back(const T& ref) {
        static_cast<TVector_pointer_void*>(this)->push_back((const void*&)ref);
    }
};

}  // namespace JGadget

#endif /* VECTOR_H */