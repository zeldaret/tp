#ifndef JGEOMETRY_H
#define JGEOMETRY_H

#include "dolphin/mtx/vec.h"
#include "MSL_C/float.h"
#include "MSL_C/math.h"

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

    void set(s16 x_, s16 y_, s16 z_) {
        x = x_;
        y = y_;
        z = z_;
    }
};

inline void setTVec3f(const f32* vec_a, f32* vec_b) {
    const register f32* v_a = vec_a;
    register f32* v_b = vec_b;

    register f32 a_x;
    register f32 b_x;

    asm {
        psq_l a_x, 0(v_a), 0, 0
        lfs b_x, 8(v_a)
        psq_st a_x, 0(v_b), 0, 0
        stfs b_x, 8(v_b)
    };
}

// Until we figure out TVec3 ctors
inline void setTVec3f(const Vec& vec_a, Vec& vec_b) {
    setTVec3f(&vec_a.x, &vec_b.x);
}

inline float fsqrt_step(float mag) {
    f32 root = __frsqrte(mag);
    return 0.5f * root * (3.0f - mag * (root * root));
}

template <>
struct TVec3<f32> {
    f32 x;
    f32 y;
    f32 z;

    // inline TVec3(const Vec& i_vec) {
    //     setTVec3f(&i_vec.x, &x);
    // }

    // inline TVec3(const TVec3<f32>& i_vec) {
    //     setTVec3f(&i_vec.x, &x);
    // }

    // TVec3() {}

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

    inline void add(const TVec3<f32>& b) {
        C_VECAdd((Vec*)&x, (Vec*)&b.x, (Vec*)&x);
    }

    void zero() { x = y = z = 0.0f; }

    void mul(const TVec3<f32>& a, const TVec3<f32>& b) {
        register f32* dst = &x;
        const register f32* srca = &a.x;
        const register f32* srcb = &b.x;
        register f32 a_x_y;
        register f32 b_x_y;
        register f32 x_y;
        register f32 za;
        register f32 zb;
        register f32 z;
        asm {
            psq_l  a_x_y, 0(srca), 0, 0
            psq_l  b_x_y, 0(srcb), 0, 0
            ps_mul x_y, a_x_y, b_x_y
            psq_st x_y, 0(dst), 0, 0
            lfs    za,   8(srca)
            lfs    zb,   8(srcb)
            fmuls  z, za, zb
            stfs   z,   8(dst)
        };
    }

    inline TVec3<f32>& operator+=(const TVec3<f32>& b) {
        add(b);
        return *this;
    }

    // inline TVec3<f32> operator+(const TVec3<f32>& b) {
    //     TVec3<f32> res(*(Vec*)this);
    //     res += b;
    //     return res;
    // }

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

    f32 squared() const {
        return C_VECSquareMag((Vec*)&x);
    }

    void normalize() {
        f32 sq = squared();
        if (sq <= FLT_EPSILON * 32.0f) {
            return;
        }
        f32 norm;
        if (sq <= 0.0f) {
            norm = sq;
        } else {
            norm = fsqrt_step(sq);
        }
        scale(norm);
    }

    void normalize(const TVec3<f32>& other) {
        f32 sq = other.squared();
        if (sq <= FLT_EPSILON * 32.0f) {
            zero();
            return;
        }
        f32 norm;
        if (sq <= 0.0f) {
            norm = sq;
        } else {
            norm = fsqrt_step(sq);
        }
        scale(norm, other);
    }

    f32 length() const {
        return VECMag((Vec*)this);
    }

    void scale(register f32 sc) {
        register f32 z;
        register f32 x_y;
        register f32* dst = &x;
        register f32 zres;
        asm {
            psq_l    x_y, 0(dst),  0, 0
            psq_l    z,   8(dst),  1, 0
            ps_muls0 x_y,    x_y, sc
            psq_st   x_y, 0(dst),  0, 0
            ps_muls0 zres,       z, sc
            psq_st   zres,  8(dst),  1, 0
        };
    }

    void scale(register f32 sc, const TVec3<f32>& other) {
        register const f32* src = &other.x;
        register f32 z;
        register f32 x_y;
        register f32* dst = &x;
        register f32 zres;
        asm {
            psq_l    x_y, 0(src),  0, 0
            psq_l    z,   8(src),  1, 0
            ps_muls0 x_y,    x_y, sc
            psq_st   x_y, 0(dst),  0, 0
            ps_muls0 zres,       z, sc
            psq_st   zres,  8(dst),  1, 0
        };
    }

    void negateInternal(TVec3<f32>* dst) {
        register f32* rdst = &dst->x;
        const register f32* src = &x;
        register f32 x_y;
        register f32 z;
        asm {
            psq_l  x_y, 0(src), 0, 0
            ps_neg x_y, x_y
            psq_st x_y, 0(rdst), 0, 0
            lfs    z,   8(src)
            fneg   z,   z
            stfs   z,   8(rdst)
        };
    }

    void negate() {
        negateInternal(this);
    }

    void sub(const TVec3<f32>& b) {
        C_VECSubtract((Vec*)&x, (Vec*)&b.x, (Vec*)&x);
    }

    void sub(const TVec3<f32>& a, const TVec3<f32>& b) {
        C_VECSubtract((Vec*)&a.x, (Vec*)&b.x, (Vec*)&x);
    }

    bool isZero() const {
        return squared() <= 32.0f * FLT_EPSILON;
    }

    void cross(const TVec3<f32>& a, const TVec3<f32>& b) {
        VECCrossProduct(a, b, *this);
    }
    
    void setLength(f32 len) {
         f32 sq = squared();
        if (sq <= FLT_EPSILON * 32.0f) {
            return;
        }
        f32 norm;
        if (sq <= 0.0f) {
            norm = sq;
        } else {
            norm = fsqrt_step(sq);
        }
        scale(norm * len);
    }

    f32 dot(const TVec3<f32>& other) const {
        register const f32* pThis = &x;
        register const f32* pOther = &other.x;
        register f32 otherReg;
        register f32 thisyz;
        register f32 res;
        register f32 thisxy;
        asm {
            psq_l thisyz, 4(pThis), 0, 0
            psq_l otherReg, 4(pOther), 0, 0
            ps_mul thisyz, thisyz, otherReg
            psq_l thisxy, 0(pThis), 0, 0
            psq_l otherReg, 0(pOther), 0, 0
            ps_madd res, thisxy, otherReg, thisyz
            ps_sum0 res, res, thisyz, thisyz
        };
        return res;
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

    f32 dot(const TVec2<T>& other) {
        return x * other.x + y * other.y;
    }

    f32 squared() {
        return dot(*this);
    }

    f32 length() {
        f32 sqr = squared();
        if (sqr <= 0.0f) {
            return sqr;
        }
        sqr *= fsqrt_step(sqr);
        return sqr;
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

template<typename T>
struct TUtil {
    static inline T clamp(T v, T min, T max) {
        if (v < min) {
            return min;
        }
        if (v > max) {
            return max;
        }
        return v;
    }
};

// clang-format on

}  // namespace JGeometry

#endif
