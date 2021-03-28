lbl_80CF3630:
/* 80CF3630  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF3634  7C 08 02 A6 */	mflr r0
/* 80CF3638  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF363C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF3640  7C 7F 1B 78 */	mr r31, r3
/* 80CF3644  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF3648  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF364C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CF3650  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CF3654  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CF3658  4B 65 32 90 */	b PSMTXTrans
/* 80CF365C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF3660  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF3664  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80CF3668  4B 31 8D CC */	b mDoMtx_YrotM__FPA4_fs
/* 80CF366C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF3670  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF3674  80 9F 05 84 */	lwz r4, 0x584(r31)
/* 80CF3678  38 84 00 24 */	addi r4, r4, 0x24
/* 80CF367C  4B 65 2E 34 */	b PSMTXCopy
/* 80CF3680  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF3684  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF3688  7C 08 03 A6 */	mtlr r0
/* 80CF368C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF3690  4E 80 00 20 */	blr 
