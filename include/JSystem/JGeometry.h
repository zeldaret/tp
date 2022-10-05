#ifndef JGEOMETRY_H
#define JGEOMETRY_H

#include "dolphin/mtx/vec.h"
#include "dolphin/types.h"

namespace JGeometry {

template <typename T>
struct TVec3 {
    T x;
    T y;
    T z;

    void set(const TVec3& other) {
        x = other.x;
        y = other.y;
        z = other.z;
    }
};

template <>
struct TVec3<s16> {
    s16 x, y, z;

    TVec3& operator=(const TVec3& b) {
        // Force copies to use lwz/lha
        *((s32*)this) = *((s32*)&b);
        z = b.z;
        return *this;
    }
};

template <>
struct TVec3<f32> {
    f32 x;
    f32 y;
    f32 z;

    operator Vec*() { return (Vec*)&x; }
    operator const Vec*() const { return (Vec*)&x; }

    void set(const TVec3<f32>& other) {
        x = other.x;
        y = other.y;
        z = other.z;
    }

    void set(f32 x_, f32 y_, f32 z_) {
        x = x_;
        y = y_;
        z = z_;
    }

    void zero() { x = y = z = 0.0f; }

    void mul(const TVec3<f32>& a, const TVec3<f32>& b) {
        x = a.x * b.x;
        y = a.y * b.y;
        z = a.z * b.z;
    }

    inline TVec3<f32>& operator=(const TVec3<f32>& b) {
        register f32* dst = &x;
        const register f32* src = &b.x;
        register f32 x_y;
        register f32 z;
        asm {
            psq_l  x_y, 0(src), 0, 0
            psq_st x_y, 0(dst), 0, 0
            lfs    z,   8(src)
            stfs   z,   8(dst)
        };
        return *this;
    }
};

template <typename T>
struct TVec2 {
    TVec2() {}
    TVec2(T x, T y) { set(x, y); }

    void set(T x, T y) {
        this->x = x;
        this->y = y;
    }

    void set(const TVec2& other) {
        x = other.x;
        y = other.y;
    }

    void setMin(const TVec2<f32>& min) {
        if (x >= min.x)
            x = min.x;
        if (y >= min.y)
            y = min.y;
    }

    void setMax(const TVec2<f32>& max) {
        if (x <= max.x)
            x = max.x;
        if (y <= max.y)
            y = max.y;
    }

    void add(const TVec2<T>& other) {
        x += other.x;
        y += other.y;
    }

    bool isAbove(const TVec2<T>& other) const {
        return (x >= other.x) && (y >= other.y) ? true : false;
    }

    T x;
    T y;
};

template <class T>
struct TBox {
    TBox() : i(), f() {}
    TBox(const TBox& other) : i(other.f), f(other.y) {}

    T i, f;
};

// clang-format off
template<> struct TBox<TVec2<f32> > {
    f32 getWidth() const { return f.x - i.x; }
    f32 getHeight() const { return f.y - i.y; }

    bool isValid() const { return f.isAbove(i); }

    void addPos(f32 x, f32 y) {
        addPos(TVec2<f32>(x, y));
    }

    void addPos(const TVec2<f32>& pos) {
        i.add(pos);
        f.add(pos);
    }

    bool intersect(const TBox<TVec2<f32> >& other) {
        i.setMax(other.i);
        f.setMin(other.f);
        return isValid();
    }

    TVec2<f32> i, f;
};

template <typename T>
struct TBox2 : TBox<TVec2<T> > {
    TBox2() {}
    TBox2(const TVec2<f32>& i, const TVec2<f32> f) { set(i, f); }
    TBox2(f32 x0, f32 y0, f32 x1, f32 y1) { set(x0, y0, x1, y1); }

    void absolute() {
        if (!this->isValid()) {
            TBox2<T> box(*this);
            this->i.setMin(box.i);
            this->i.setMin(box.f);
            this->f.setMax(box.i);
            this->f.setMax(box.f);
        }
    }

    void set(const TBox2& other) { set(other.i, other.f); }
    void set(const TVec2<f32>& i, const TVec2<f32>& f) { this->i.set(i), this->f.set(f); }
    void set(f32 x0, f32 y0, f32 x1, f32 y1) { i.set(x0, y0); f.set(x1, y1); }
};

// clang-format on

}  // namespace JGeometry

#endif
