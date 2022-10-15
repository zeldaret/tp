/**
 * mtxvec.c
 * Description:
 */

#include "dolphin/mtx/mtxvec.h"

/* 80346D6C-80346DC0 3416AC 0054+00 0/0 158/158 826/826 .text            PSMTXMultVec */
asm void PSMTXMultVec(register const Mtx m, register const Vec* src, register Vec* dst) {
    // clang-format off
    nofralloc

    psq_l f0, 0(src), 0, 0
    psq_l f2, 0(m), 0, 0
    psq_l f1, 8(src), 1, 0
    ps_mul f4, f2, f0
    psq_l f3, 8(m), 0, 0
    ps_madd f5, f3, f1, f4
    psq_l f8, 16(m), 0, 0
    ps_sum0 f6, f5, f6, f5
    psq_l f9, 24(m), 0, 0
    ps_mul f10, f8, f0
    psq_st f6, 0(dst), 1, 0
    ps_madd f11, f9, f1, f10
    psq_l f2, 32(m), 0, 0
    ps_sum0 f12, f11, f12, f11
    psq_l f3, 40(m), 0, 0
    ps_mul f4, f2, f0
    psq_st f12, 4(dst), 1, 0
    ps_madd f5, f3, f1, f4
    ps_sum0 f6, f5, f6, f5
    psq_st f6, 8(dst), 1, 0
    blr
    // clang-format on
}

/* 80346DC0-80346E4C 341700 008C+00 0/0 2/2 3/3 .text            PSMTXMultVecArray */
asm void PSMTXMultVecArray(register const Mtx m, register const Vec* srcBase, register Vec* dstBase,
                           register u32 count) {
    // clang-format off
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
    // clang-format on
}

/* 80346E4C-80346EA0 34178C 0054+00 0/0 47/47 9/9 .text            PSMTXMultVecSR */
asm void PSMTXMultVecSR(register const Mtx m, register const Vec* src, register Vec* dst) {
    // clang-format off
    nofralloc

    psq_l f0, 0(m), 0, 0
    psq_l f6, 0(src), 0, 0
    psq_l f2, 16(m), 0, 0
    ps_mul f8, f0, f6
    psq_l f4, 32(m), 0, 0
    ps_mul f10, f2, f6
    psq_l f7, 8(src), 1, 0
    ps_mul f12, f4, f6
    psq_l f3, 24(m), 0, 0
    ps_sum0 f8, f8, f8, f8
    psq_l f5, 40(m), 0, 0
    ps_sum0 f10, f10, f10, f10
    psq_l f1, 8(m), 0, 0
    ps_sum0 f12, f12, f12, f12
    ps_madd f9, f1, f7, f8
    psq_st f9, 0(dst), 1, 0
    ps_madd f11, f3, f7, f10
    psq_st f11, 4(dst), 1, 0
    ps_madd f13, f5, f7, f12
    psq_st f13, 8(dst), 1, 0
    blr
    // clang-format on
}

/* 80346EA0-80346F28 3417E0 0088+00 0/0 2/2 0/0 .text            PSMTXMultVecArraySR */
asm void PSMTXMultVecArraySR(register const Mtx m, register const Vec* srcBase,
                             register Vec* dstBase, register u32 count) {
    // clang-format off
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
    // clang-format on
}
