lbl_80C2B88C:
/* 80C2B88C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C2B890  7C 08 02 A6 */	mflr r0
/* 80C2B894  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C2B898  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C2B89C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C2B8A0  7C 7E 1B 78 */	mr r30, r3
/* 80C2B8A4  3C 60 80 C3 */	lis r3, lit_3775@ha
/* 80C2B8A8  3B E3 E1 10 */	addi r31, r3, lit_3775@l
/* 80C2B8AC  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80C2B8B0  C0 1E 05 30 */	lfs f0, 0x530(r30)
/* 80C2B8B4  EC 01 00 2A */	fadds f0, f1, f0
/* 80C2B8B8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80C2B8BC  C0 5E 05 2C */	lfs f2, 0x52c(r30)
/* 80C2B8C0  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80C2B8C4  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80C2B8C8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C2B8CC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80C2B8D0  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80C2B8D4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C2B8D8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C2B8DC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C2B8E0  38 7E 07 2A */	addi r3, r30, 0x72a
/* 80C2B8E4  4B 3E 16 28 */	b ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80C2B8E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C2B8EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C2B8F0  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80C2B8F4  4B 3E 0B 40 */	b mDoMtx_YrotM__FPA4_fs
/* 80C2B8F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C2B8FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C2B900  38 81 00 14 */	addi r4, r1, 0x14
/* 80C2B904  38 A1 00 08 */	addi r5, r1, 8
/* 80C2B908  4B 71 B4 64 */	b PSMTXMultVec
/* 80C2B90C  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80C2B910  C0 01 00 08 */	lfs f0, 8(r1)
/* 80C2B914  EC 01 00 2A */	fadds f0, f1, f0
/* 80C2B918  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80C2B91C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80C2B920  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C2B924  EC 01 00 2A */	fadds f0, f1, f0
/* 80C2B928  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C2B92C  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80C2B930  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C2B934  EC 01 00 2A */	fadds f0, f1, f0
/* 80C2B938  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80C2B93C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80C2B940  C0 3E 07 18 */	lfs f1, 0x718(r30)
/* 80C2B944  C0 5F 00 88 */	lfs f2, 0x88(r31)
/* 80C2B948  C0 7F 00 8C */	lfs f3, 0x8c(r31)
/* 80C2B94C  4B 64 40 F0 */	b cLib_addCalc2__FPffff
/* 80C2B950  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 80C2B954  C0 3E 07 1C */	lfs f1, 0x71c(r30)
/* 80C2B958  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 80C2B95C  C0 7F 00 94 */	lfs f3, 0x94(r31)
/* 80C2B960  4B 64 40 DC */	b cLib_addCalc2__FPffff
/* 80C2B964  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80C2B968  A8 9E 07 20 */	lha r4, 0x720(r30)
/* 80C2B96C  38 A0 00 10 */	li r5, 0x10
/* 80C2B970  38 C0 01 00 */	li r6, 0x100
/* 80C2B974  4B 64 4C 94 */	b cLib_addCalcAngleS2__FPssss
/* 80C2B978  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80C2B97C  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80C2B980  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C2B984  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C2B988  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C2B98C  7C 08 03 A6 */	mtlr r0
/* 80C2B990  38 21 00 30 */	addi r1, r1, 0x30
/* 80C2B994  4E 80 00 20 */	blr 
