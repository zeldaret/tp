/**
 * mtxvec.c
 * Description:
 */

#include "dolphin/mtx.h"

/* 80346D6C-80346DC0 3416AC 0054+00 0/0 158/158 826/826 .text            PSMTXMultVec */
asm void PSMTXMultVec(const register Mtx m, const register Vec* in, register Vec* out) {
#ifdef __MWERKS__  // clang-format off
	nofralloc;
	psq_l fp0, 0(in), 0, 0;
	psq_l fp2, 0(m), 0, 0;
	psq_l fp1, 8(in), 1, 0;
	ps_mul fp4, fp2, fp0;
	psq_l fp3, 8(m), 0, 0;
	ps_madd fp5, fp3, fp1, fp4;
	psq_l fp8, 16(m), 0, 0;
	ps_sum0 fp6, fp5, fp6, fp5;
	psq_l fp9, 24(m), 0, 0;
	ps_mul fp10, fp8, fp0;
	psq_st fp6, 0(out), 1, 0;
	ps_madd fp11, fp9, fp1, fp10;
	psq_l fp2, 32(m), 0, 0;
	ps_sum0 fp12, fp11, fp12, fp11;
	psq_l fp3, 40(m), 0, 0;
	ps_mul fp4, fp2, fp0;
	psq_st fp12, 4(out), 1, 0;
	ps_madd fp5, fp3, fp1, fp4;
	ps_sum0 fp6, fp5, fp6, fp5;
	psq_st fp6, 8(out), 1, 0;
	blr
#endif  // clang-format on
}

/* 80346DC0-80346E4C 341700 008C+00 0/0 2/2 3/3 .text            PSMTXMultVecArray */
asm void PSMTXMultVecArray(register const Mtx m, register const Vec* srcBase, register Vec* dstBase,
                           register u32 count) {
#ifdef __MWERKS__  // clang-format off
    nofralloc

    psq_l f13, 0(m), 0, 0
    psq_l f12, 16(m), 0, 0
    addi count, count, -1
    psq_l f11, 8(m), 0, 0
    ps_merge00 f0, f13, f12
    addi dstBase, dstBase, -4
    psq_l f10, 24(m), 0, 0
    ps_merge11 f1, f13, f12
    mtctr count
    psq_l f4, 32(m), 0, 0
    ps_merge00 f2, f11, f10
    psq_l f5, 40(m), 0, 0
    ps_merge11 f3, f11, f10
    psq_l f6, 0(srcBase), 0, 0
    psq_lu f7, 8(srcBase), 1, 0
    ps_madds0 f8, f0, f6, f3
    ps_mul f9, f4, f6
    ps_madds1 f8, f1, f6, f8
    ps_madd f10, f5, f7, f9

lbl_80346E0C:
    psq_lu f6, 4(srcBase), 0, 0
    ps_madds0 f12, f2, f7, f8
    psq_lu f7, 8(srcBase), 1, 0
    ps_sum0 f13, f10, f9, f10
    ps_madds0 f8, f0, f6, f3
    ps_mul f9, f4, f6
    psq_stu f12, 4(dstBase), 0, 0
    ps_madds1 f8, f1, f6, f8
    psq_stu f13, 8(dstBase), 1, 0
    ps_madd f10, f5, f7, f9
    bdnz lbl_80346E0C

    ps_madds0 f12, f2, f7, f8
    ps_sum0 f13, f10, f9, f10
    psq_stu f12, 4(dstBase), 0, 0
    psq_stu f13, 8(dstBase), 1, 0
    blr
#endif  // clang-format on
}

/* 80346E4C-80346EA0 34178C 0054+00 0/0 47/47 9/9 .text            PSMTXMultVecSR */
asm void PSMTXMultVecSR(const register Mtx mtx, const register Vec* in, register Vec* out) {
#ifdef __MWERKS__  // clang-format off
	nofralloc;
	psq_l fp0, 0(mtx), 0, 0;
	psq_l fp6, 0(in), 0, 0;
	psq_l fp2, 0x10(mtx), 0, 0;
	ps_mul fp8, fp0, fp6;
	psq_l fp4, 0x20(mtx), 0, 0;
	ps_mul fp10, fp2, fp6;
	psq_l fp7, 8(in), 1, 0;
	ps_mul fp12, fp4, fp6;
	psq_l fp3, 0x18(mtx), 0, 0;
	ps_sum0 fp8, fp8, fp8, fp8;
	psq_l fp5, 0x28(mtx), 0, 0;
	ps_sum0 fp10, fp10, fp10, fp10;
	psq_l fp1, 8(mtx), 0, 0;
	ps_sum0 fp12, fp12, fp12, fp12;
	ps_madd fp9, fp1, fp7, fp8;
	psq_st fp9, 0(out), 1, 0;
	ps_madd fp11, fp3, fp7, fp10;
	psq_st fp11, 4(out), 1, 0;
	ps_madd fp13, fp5, fp7, fp12;
	psq_st fp13, 8(out), 1, 0;
	blr
#endif  // clang-format on
}

/* 80346EA0-80346F28 3417E0 0088+00 0/0 2/2 0/0 .text            PSMTXMultVecArraySR */
asm void PSMTXMultVecArraySR(register const Mtx m, register const Vec* srcBase,
                             register Vec* dstBase, register u32 count) {
#ifdef __MWERKS__  // clang-format off
    nofralloc

    psq_l f13, 0(m), 0, 0
    psq_l f12, 16(m), 0, 0
    addi count, count, -1
    psq_l f11, 8(m), 1, 0
    ps_merge00 f0, f13, f12
    addi dstBase, dstBase, -4
    psq_l f10, 24(m), 1, 0
    ps_merge11 f1, f13, f12
    mtctr count
    psq_l f3, 32(m), 0, 0
    ps_merge00 f2, f11, f10
    psq_l f4, 40(m), 1, 0
    psq_l f6, 0(srcBase), 0, 0
    psq_lu f7, 8(srcBase), 1, 0
    ps_muls0 f8, f0, f6
    ps_mul f9, f3, f6
    ps_madds1 f8, f1, f6, f8
    ps_madd f10, f4, f7, f9

lbl_80346EE8:
    psq_lu f6, 4(srcBase), 0, 0
    ps_madds0 f12, f2, f7, f8
    psq_lu f7, 8(srcBase), 1, 0
    ps_sum0 f13, f10, f9, f9
    ps_muls0 f8, f0, f6
    ps_mul f9, f3, f6
    psq_stu f12, 4(dstBase), 0, 0
    ps_madds1 f8, f1, f6, f8
    psq_stu f13, 8(dstBase), 1, 0
    ps_madd f10, f4, f7, f9
    bdnz lbl_80346EE8

    ps_madds0 f12, f2, f7, f8
    ps_sum0 f13, f10, f9, f9
    psq_stu f12, 4(dstBase), 0, 0
    psq_stu f13, 8(dstBase), 1, 0
    blr
#endif  // clang-format on
}