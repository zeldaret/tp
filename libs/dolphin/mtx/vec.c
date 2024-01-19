#include "dolphin/mtx/vec.h"
#include "math.h"

#define R_RET fp1
#define FP2 fp2
#define FP3 fp3
#define FP4 fp4
#define FP5 fp5
#define FP6 fp6
#define FP7 fp7
#define FP8 fp8
#define FP9 fp9
#define FP10 fp10
#define FP11 fp11
#define FP12 fp12
#define FP13 fp13

/* 80347090-803470B4 3419D0 0024+00 1/1 103/103 679/679 .text            PSVECAdd */
asm void PSVECAdd(const register Vec* vec1, const register Vec* vec2, register Vec* ret) {
#ifdef __MWERKS__  // clang-format off
	nofralloc;
	psq_l     FP2,  0(vec1), 0, 0;
	psq_l     FP4,  0(vec2), 0, 0;
	ps_add    FP6, FP2, FP4;
	psq_st    FP6,  0(ret), 0, 0;
	psq_l     FP3,   8(vec1), 1, 0;
	psq_l     FP5,   8(vec2), 1, 0;
	ps_add    FP7, FP3, FP5;
	psq_st    FP7,   8(ret), 1, 0;
	blr
#endif  // clang-format on
}

/* 803470B4-803470D8 3419F4 0024+00 0/0 60/60 59/59 .text            PSVECSubtract */
asm void PSVECSubtract(const register Vec* vec1, const register Vec* vec2, register Vec* ret) {
#ifdef __MWERKS__  // clang-format off
	nofralloc;
	psq_l     FP2,  0(vec1), 0, 0;
	psq_l     FP4,  0(vec2), 0, 0;
	ps_sub    FP6, FP2, FP4;
	psq_st    FP6, 0(ret), 0, 0;
	psq_l     FP3,   8(vec1), 1, 0;
	psq_l     FP5,   8(vec2), 1, 0;
	ps_sub    FP7, FP3, FP5;
	psq_st    FP7,  8(ret), 1, 0;
	blr
#endif  // clang-format on
}

/* 803470D8-803470F4 341A18 001C+00 0/0 58/58 101/101 .text            PSVECScale */
asm void PSVECScale(register const Vec* src, register Vec* dst, register f32 scale) {
#ifdef __MWERKS__  // clang-format off
	nofralloc
	psq_l        f0, 0(src), 0, 0
    psq_l        f2, 8(src), 1, 0
    ps_muls0     f0, f0, f1
    psq_st       f0, 0(dst), 0, 0
    ps_muls0     f0, f2, f1
    psq_st       f0, 8(dst), 1, 0
    blr 
#endif  // clang-format on
}

void C_VECScale(const Vec* src, Vec* dst, f32 scale) {
    f32 s;

    s = 1.0f / sqrtf(src->z * src->z + src->x * src->x + src->y * src->y);
    dst->x = src->x * s;
    dst->y = src->y * s;
    dst->z = src->z * s;
}

/* 803470F4-80347138 341A34 0044+00 2/2 16/16 0/0 .text            PSVECNormalize */
void PSVECNormalize(const register Vec* vec1, register Vec* ret) {
#ifdef __MWERKS__  // clang-format off
	register f32 half  = 0.5f;
	register f32 three = 3.0f;
	register f32 xx_zz, xx_yy;
	register f32 square_sum;
	register f32 ret_sqrt;
	register f32 n_0, n_1;
	asm {
		psq_l       FP2, 0(vec1), 0, 0;
		ps_mul      xx_yy, FP2, FP2;
		psq_l       FP3, 8(vec1), 1, 0;
		ps_madd     xx_zz, FP3, FP3, xx_yy;
		ps_sum0     square_sum, xx_zz, FP3, xx_yy;
		frsqrte     ret_sqrt, square_sum;
		fmuls       n_0, ret_sqrt, ret_sqrt;
		fmuls       n_1, ret_sqrt, half;
		fnmsubs     n_0, n_0, square_sum, three;
		fmuls       ret_sqrt, n_0, n_1;
		ps_muls0    FP2, FP2, ret_sqrt;
		psq_st      FP2, 0(ret), 0, 0;
		ps_muls0    FP3, FP3, ret_sqrt;
		psq_st      FP3, 8(ret), 1, 0;
	}
#endif  // clang-format on
}

/* 80347138-80347150 341A78 0018+00 0/0 140/140 727/727 .text            PSVECSquareMag */
asm f32 PSVECSquareMag(register const Vec* v){
#ifdef __MWERKS__  // clang-format off
	nofralloc
    psq_l      f0, 0(v), 0, 0
    ps_mul     f0, f0, f0
    lfs        f1, 8(v)
    ps_madd    f1, f1, f1, f0
    ps_sum0    f1, f1, f0, f0
    blr 
#endif  // clang-format on
}

/* 80347150-80347194 341A90 0044+00 0/0 24/24 0/0 .text            PSVECMag */
f32 PSVECMag(const register Vec* v) {
    register f32 v_xy, v_zz, square_mag;
    register f32 ret_mag, n_0, n_1;
    register f32 three, half, zero;
    half = 0.5f;
#ifdef __MWERKS__  // clang-format off
	asm {
		psq_l       v_xy, 0(v), 0, 0
		ps_mul      v_xy, v_xy, v_xy
		lfs         v_zz, 8(v)
		fsubs       zero, half, half
		ps_madd     square_mag, v_zz, v_zz, v_xy
		ps_sum0     square_mag, square_mag, v_xy, v_xy
		fcmpu       cr0, square_mag, zero
		beq-        __exit
		frsqrte     ret_mag, square_mag
	}
#endif  // clang-format on
    three = 3.0f;
#ifdef __MWERKS__  // clang-format off
	asm {
		fmuls       n_0, ret_mag, ret_mag
		fmuls       n_1, ret_mag, half
		fnmsubs     n_0, n_0, square_mag, three
		fmuls       ret_mag, n_0, n_1
		fmuls       square_mag, square_mag, ret_mag
	__exit:
	}
#endif  // clang-format on
    return square_mag;
}

/* 80347194-803471B4 341AD4 0020+00 2/2 39/39 15/15 .text            PSVECDotProduct */
asm f32 PSVECDotProduct(const register Vec* vec1, const register Vec* vec2) {
#ifdef __MWERKS__  // clang-format off
	nofralloc;
    psq_l      f2, 4(r3), 0, 0 /* qr0 */
    psq_l      f3, 4(r4), 0, 0 /* qr0 */
    ps_mul     f2, f2, f3
    psq_l      f5, 0(r3), 0, 0 /* qr0 */
    psq_l      f4, 0(r4), 0, 0 /* qr0 */
    ps_madd    f3, f5, f4, f2
    ps_sum0    f1, f3, f2, f2
    blr 
#endif  // clang-format on
}

/* 803471B4-803471F0 341AF4 003C+00 0/0 20/20 3/3 .text            PSVECCrossProduct */
asm void PSVECCrossProduct(register const Vec* a, register const Vec* b, register Vec* axb) {
#ifdef __MWERKS__  // clang-format off
	nofralloc
    psq_l          f1, 0(b), 0, 0
    lfs            f2, 8(a)
    psq_l          f0, 0(a), 0, 0
    ps_merge10     f6, f1, f1
    lfs            f3, 8(b)
    ps_mul         f4, f1, f2
    ps_muls0       f7, f1, f0
    ps_msub        f5, f0, f3, f4
    ps_msub        f8, f0, f6, f7
    ps_merge11     f9, f5, f5
    ps_merge01     f10, f5, f8
    psq_st         f9, 0(axb), 1, 0
    ps_neg         f10, f10
    psq_st         f10, 4(axb), 0, 0
    blr 
#endif  // clang-format on
}

/* 803471F0-803472C8 341B30 00D8+00 0/0 1/1 0/0 .text            C_VECHalfAngle */
void C_VECHalfAngle(const Vec* a, const Vec* b, Vec* half) {
    Vec a0;
    Vec b0;
    Vec ab;

    a0.x = -a->x;
    a0.y = -a->y;
    a0.z = -a->z;

    b0.x = -b->x;
    b0.y = -b->y;
    b0.z = -b->z;

    VECNormalize(&a0, &a0);
    VECNormalize(&b0, &b0);
    VECAdd(&a0, &b0, &ab);

    if (VECDotProduct(&ab, &ab) > 0.0f) {
        VECNormalize(&ab, half);
    } else {
        *half = ab;
    }
}

/* 803472C8-8034739C 341C08 00D4+00 0/0 1/1 11/11 .text            C_VECReflect */
void C_VECReflect(const Vec* src, const Vec* normal, Vec* dst) {
    Vec a0;
    Vec b0;
    f32 dot;

    a0.x = -src->x;
    a0.y = -src->y;
    a0.z = -src->z;

    VECNormalize(&a0, &a0);
    VECNormalize(normal, &b0);

    dot = VECDotProduct(&a0, &b0);
    dst->x = b0.x * 2.0f * dot - a0.x;
    dst->y = b0.y * 2.0f * dot - a0.y;
    dst->z = b0.z * 2.0f * dot - a0.z;

    VECNormalize(dst, dst);
}

/* 8034739C-803473C4 341CDC 0028+00 0/0 107/107 446/446 .text            PSVECSquareDistance */
asm f32 PSVECSquareDistance(register const Vec* a, register const Vec* b){
#ifdef __MWERKS__  // clang-format off
	nofralloc
    psq_l      f0, 4(a), 0, 0
    psq_l      f1, 4(b), 0, 0
    ps_sub     f2, f0, f1
    psq_l      f0, 0(a), 0, 0
    psq_l      f1, 0(b), 0, 0
    ps_mul     f2, f2, f2
    ps_sub     f0, f0, f1
    ps_madd    f1, f0, f0, f2
    ps_sum0    f1, f1, f2, f2
    blr 
#endif  // clang-format on
}

/* 803473C4-80347418 341D04 0054+00 0/0 4/4 0/0 .text            PSVECDistance */
f32 PSVECDistance(register const Vec* a, register const Vec* b) {

    register f32 half_c;
    register f32 three_c;
    register f32 dist;

#ifdef __MWERKS__  // clang-format off
	asm {
		psq_l       f0, 4(a), 0, 0 /* qr0 */
        psq_l       f1, 4(b), 0, 0 /* qr0 */
        ps_sub      f2, f0, f1
        psq_l       f0, 0(a), 0, 0 /* qr0 */
        psq_l       f1, 0(b), 0, 0 /* qr0 */
        ps_mul      f2, f2, f2
        ps_sub      f0, f0, f1    
	}

    half_c = 0.5f;

    asm {
        ps_madd     dist, f0, f0, f2
        fsubs       f0, half_c, half_c
        ps_sum0     dist, dist, f2, f2
        fcmpu       cr0, f0, dist
        beq exit
    }

    three_c = 3.0f;

    asm {
        frsqrte     f0, dist
        fmuls       f2, f0, f0
        fmuls       f0, f0, half_c
        fnmsubs     f2, f2, dist, three_c
        fmuls       f0, f2, f0
        fmuls       dist, dist, f0

        exit:
    }

    return dist;
#endif  // clang-format on
}
