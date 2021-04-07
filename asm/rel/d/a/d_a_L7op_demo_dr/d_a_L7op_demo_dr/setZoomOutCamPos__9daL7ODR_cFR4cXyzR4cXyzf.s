lbl_805ABC2C:
/* 805ABC2C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805ABC30  7C 08 02 A6 */	mflr r0
/* 805ABC34  90 01 00 34 */	stw r0, 0x34(r1)
/* 805ABC38  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 805ABC3C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 805ABC40  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805ABC44  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805ABC48  7C 9E 23 78 */	mr r30, r4
/* 805ABC4C  7C BF 2B 78 */	mr r31, r5
/* 805ABC50  FF E0 08 90 */	fmr f31, f1
/* 805ABC54  7F E3 FB 78 */	mr r3, r31
/* 805ABC58  4B CC 50 1D */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 805ABC5C  7C 03 00 D0 */	neg r0, r3
/* 805ABC60  B0 01 00 08 */	sth r0, 8(r1)
/* 805ABC64  7F E3 FB 78 */	mr r3, r31
/* 805ABC68  7F C4 F3 78 */	mr r4, r30
/* 805ABC6C  4B CC 4F 99 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 805ABC70  B0 61 00 0A */	sth r3, 0xa(r1)
/* 805ABC74  38 00 00 00 */	li r0, 0
/* 805ABC78  B0 01 00 0C */	sth r0, 0xc(r1)
/* 805ABC7C  7F E3 FB 78 */	mr r3, r31
/* 805ABC80  4B A6 10 E5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 805ABC84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805ABC88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805ABC8C  A8 81 00 0A */	lha r4, 0xa(r1)
/* 805ABC90  4B A6 07 A5 */	bl mDoMtx_YrotM__FPA4_fs
/* 805ABC94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805ABC98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805ABC9C  A8 81 00 08 */	lha r4, 8(r1)
/* 805ABCA0  4B A6 06 FD */	bl mDoMtx_XrotM__FPA4_fs
/* 805ABCA4  3C 60 80 5B */	lis r3, lit_3852@ha /* 0x805ADF58@ha */
/* 805ABCA8  C0 23 DF 58 */	lfs f1, lit_3852@l(r3)  /* 0x805ADF58@l */
/* 805ABCAC  FC 40 08 90 */	fmr f2, f1
/* 805ABCB0  FC 60 F8 90 */	fmr f3, f31
/* 805ABCB4  4B A6 10 E9 */	bl transM__14mDoMtx_stack_cFfff
/* 805ABCB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805ABCBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805ABCC0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 805ABCC4  D0 1E 00 00 */	stfs f0, 0(r30)
/* 805ABCC8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805ABCCC  D0 1E 00 04 */	stfs f0, 4(r30)
/* 805ABCD0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805ABCD4  D0 1E 00 08 */	stfs f0, 8(r30)
/* 805ABCD8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 805ABCDC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 805ABCE0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805ABCE4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805ABCE8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805ABCEC  7C 08 03 A6 */	mtlr r0
/* 805ABCF0  38 21 00 30 */	addi r1, r1, 0x30
/* 805ABCF4  4E 80 00 20 */	blr 
