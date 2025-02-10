#ifndef JMATH_H
#define JMATH_H

#include "dolphin/mtx.h"
#include "math.h"

void JMAMTXApplyScale(const Mtx, Mtx, f32, f32, f32);
void JMAEulerToQuat(s16 param_0, s16 param_1, s16 param_2, Quaternion* param_3);
void JMAQuatLerp(const Quaternion*, const Quaternion*, f32, Quaternion*);
void JMAFastVECNormalize(register const Vec* src, register Vec* dst);
void JMAVECScaleAdd(register const Vec* vec1, register const Vec* vec2, register Vec* dst,
                    register f32 scale);

inline int JMAAbs(int value) {
    return (value >> 0x1f ^ value) - (value >> 0x1f);
}

inline f32 JMAFastReciprocal(f32 value) {
    return __fres(value);
}

inline float __frsqrtes(register double f) {
    register float out;
    // clang-format off
#ifdef __MWERKS__
    asm {
        frsqrte out, f
    }
#endif
    // clang-format on
    return out;
}

inline f32 JMAFastSqrt(register f32 input) {
    if (input > 0.0f) {
        register f32 out;
#ifdef __MWERKS__
        asm {
            frsqrte out, input
        }
#endif
        return out * input;
    } else {
        return input;
    }
}

inline f32 JMAHermiteInterpolation(register f32 p1, register f32 p2, register f32 p3,
                                   register f32 p4, register f32 p5, register f32 p6,
                                   register f32 p7) {
    register f32 ff25;
    register f32 ff31;
    register f32 ff30;
    register f32 ff29;
    register f32 ff28;
    register f32 ff27;
    register f32 ff26;
    // clang-format off
#ifdef __MWERKS__
    asm {
        fsubs   ff31, p1, p2
        fsubs   ff30, p5, p2
        fdivs   ff29, ff31, ff30
        fmuls   ff28,ff29,ff29
        fadds   ff25,ff29,ff29
        fsubs   ff27,ff28,ff29
        fsubs   ff30, p3, p6
        fmsubs  ff26,ff25,ff27,ff28
        fmadds  ff25,p4,ff27,p4
        fmadds  ff26,ff26,ff30,p3
        fmadds  ff25,p7,ff27,ff25
        fmsubs  ff25,ff29,p4,ff25
        fnmsubs ff25,ff31,ff25,ff26

    }
#endif
    // clang-format on
    return ff25;
}

namespace JMath {

inline f32 fastReciprocal(f32 value) {
    return JMAFastReciprocal(value);
}

inline void gekko_ps_copy3(register void* dst, register const void* src) {
    register f32 src0;
    register f32 src1;
#ifdef __MWERKS__
    asm {
        psq_l src0, 0(src), 0, 0
        lfs src1, 8(src)
        psq_st src0, 0(dst), 0, 0
        stfs src1, 8(dst)
    };
#endif
}

inline void gekko_ps_copy6(register void* dst, register const void* src) {
    register f32 src0;
    register f32 src1;
    register f32 src2;
#ifdef __MWERKS__
    asm {
        psq_l src0, 0(src), 0, 0
        psq_l src1, 8(src), 0, 0
        psq_l src2, 16(src), 0, 0
        psq_st src0, 0(dst), 0, 0
        psq_st src1, 8(dst), 0, 0
        psq_st src2, 16(dst), 0, 0
    };
#endif
}

inline void gekko_ps_copy12(register void* dst, register const void* src) {
    register f32 src0;
    register f32 src1;
    register f32 src2;
    register f32 src3;
    register f32 src4;
    register f32 src5;
#ifdef __MWERKS__
    asm {
        psq_l src0, 0(src), 0, 0
        psq_l src1, 8(src), 0, 0
        psq_l src2, 16(src), 0, 0
        psq_l src3, 24(src), 0, 0
        psq_l src4, 32(src), 0, 0
        psq_l src5, 40(src), 0, 0
        psq_st src0, 0(dst), 0, 0
        psq_st src1, 8(dst), 0, 0
        psq_st src2, 16(dst), 0, 0
        psq_st src3, 24(dst), 0, 0
        psq_st src4, 32(dst), 0, 0
        psq_st src5, 40(dst), 0, 0
    };
#endif
}

inline void gekko_ps_copy16(register void* dst, register const void* src) {
    register f32 src0;
    register f32 src1;
    register f32 src2;
    register f32 src3;
    register f32 src4;
    register f32 src5;
    register f32 src6;
    register f32 src7;
#ifdef __MWERKS__
    asm {
        psq_l src0, 0(src), 0, 0
        psq_l src1, 8(src), 0, 0
        psq_l src2, 16(src), 0, 0
        psq_l src3, 24(src), 0, 0
        psq_l src4, 32(src), 0, 0
        psq_l src5, 40(src), 0, 0
        psq_l src6, 48(src), 0, 0
        psq_l src7, 56(src), 0, 0
        psq_st src0, 0(dst), 0, 0
        psq_st src1, 8(dst), 0, 0
        psq_st src2, 16(dst), 0, 0
        psq_st src3, 24(dst), 0, 0
        psq_st src4, 32(dst), 0, 0
        psq_st src5, 40(dst), 0, 0
        psq_st src6, 48(dst), 0, 0
        psq_st src7, 56(dst), 0, 0
    };
#endif
}

};  // namespace JMath

namespace JMathInlineVEC {
    inline void C_VECAdd(register const Vec* a, register const Vec* b, register Vec* ab) {
        register f32 axy;
        register f32 bxy;
        register f32 az;
        register f32 sumz;
        register f32 bz;
    #ifdef __MWERKS__
        asm {
            psq_l axy, 0(a), 0, 0
            psq_l bxy, 0(b), 0, 0
            ps_add bxy, axy, bxy
            psq_st bxy, 0(ab), 0, 0
            psq_l az, 8(a), 1, 0
            psq_l bz, 8(b), 1, 0
            ps_add sumz, az, bz
            psq_st sumz, 8(ab), 1, 0
        }
    #endif
    }

    inline void C_VECSubtract(register const Vec* a, register const Vec* b, register Vec* ab) {
        register f32 axy;
        register f32 bxy;
        register f32 az;
        register f32 subz;
        register f32 bz;
    #ifdef __MWERKS__
        asm {
            psq_l axy, 0(a), 0, 0
            psq_l bxy, 0(b), 0, 0
            ps_sub bxy, axy, bxy
            psq_st bxy, 0(ab), 0, 0
            psq_l az, 8(a), 1, 0
            psq_l bz, 8(b), 1, 0
            ps_sub subz, az, bz
            psq_st subz, 8(ab), 1, 0
        }
    #endif
    }

    inline f32 C_VECSquareMag(const Vec* v) {
        register f32 x_y;
        register f32 z;
        register f32 res;
        register const f32* src = &v->x;
    #ifdef __MWERKS__
        asm {
            psq_l   x_y, 0(src), 0, 0
            ps_mul  x_y, x_y, x_y
            lfs     z,   8(src)
            ps_madd res, z, z, x_y
            ps_sum0 res, res, x_y, x_y
        }
    #endif
        return res;
    }
};

#endif /* JMATH_H */
