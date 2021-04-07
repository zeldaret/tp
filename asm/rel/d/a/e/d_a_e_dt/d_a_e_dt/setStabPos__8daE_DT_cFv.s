lbl_806AEB48:
/* 806AEB48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806AEB4C  7C 08 02 A6 */	mflr r0
/* 806AEB50  90 01 00 24 */	stw r0, 0x24(r1)
/* 806AEB54  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806AEB58  7C 7F 1B 78 */	mr r31, r3
/* 806AEB5C  80 63 05 D0 */	lwz r3, 0x5d0(r3)
/* 806AEB60  80 63 00 04 */	lwz r3, 4(r3)
/* 806AEB64  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806AEB68  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806AEB6C  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 806AEB70  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806AEB74  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806AEB78  4B C9 79 39 */	bl PSMTXCopy
/* 806AEB7C  3C 60 80 6B */	lis r3, lit_4066@ha /* 0x806B5D20@ha */
/* 806AEB80  C0 23 5D 20 */	lfs f1, lit_4066@l(r3)  /* 0x806B5D20@l */
/* 806AEB84  3C 60 80 6B */	lis r3, lit_4071@ha /* 0x806B5D34@ha */
/* 806AEB88  C0 43 5D 34 */	lfs f2, lit_4071@l(r3)  /* 0x806B5D34@l */
/* 806AEB8C  FC 60 10 90 */	fmr f3, f2
/* 806AEB90  4B 95 E2 0D */	bl transM__14mDoMtx_stack_cFfff
/* 806AEB94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806AEB98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806AEB9C  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 806AEBA0  D0 41 00 08 */	stfs f2, 8(r1)
/* 806AEBA4  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806AEBA8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806AEBAC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806AEBB0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806AEBB4  D0 5F 05 68 */	stfs f2, 0x568(r31)
/* 806AEBB8  D0 3F 05 6C */	stfs f1, 0x56c(r31)
/* 806AEBBC  D0 1F 05 70 */	stfs f0, 0x570(r31)
/* 806AEBC0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806AEBC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806AEBC8  7C 08 03 A6 */	mtlr r0
/* 806AEBCC  38 21 00 20 */	addi r1, r1, 0x20
/* 806AEBD0  4E 80 00 20 */	blr 
