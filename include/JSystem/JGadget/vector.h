#ifndef JGADGET_VECTOR_H
#define JGADGET_VECTOR_H

#include "global.h"

static u8 lbl_804511E8;

namespace JGadget {

namespace vector {

u32 extend_default(u32 arg1, u32 arg2, u32 arg3);

typedef u32 (*ExtendFunc)(u32, u32, u32);

}  // namespace vector

template <typename T>
struct TAllocator {
    static TAllocator get() {}
    inline TAllocator() { _0 = lbl_804511E8; }
    u8 _0;
    u8 _1[3];
    u32 _4;
    u32 _8;
    u32 _c;
};

template <typename T, template <class> class Allocator>
struct TVector {
    TVector(Allocator<T> alloc) {
        _0 = NULL;
        pBegin_ = _0;
        _c = NULL;
        extend = vector::extend_default;
    }

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
    // TVector_pointer_void(const TAllocator<void*>& allocator);

    void clear() { erase(begin(), end()); }

private:
    void erase(void** pItFirst, void** pItLast);
};

template <typename T>
struct TVector_pointer : TVector_pointer_void {
    // TVector_pointer(const TAllocator<void*>& allocator) : TVector_pointer_void(allocator) {}
};

}  // namespace JGadget

#endif  // JGADGET_VECTOR_H
