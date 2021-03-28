lbl_80C4AC44:
/* 80C4AC44  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C4AC48  7C 08 02 A6 */	mflr r0
/* 80C4AC4C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C4AC50  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C4AC54  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C4AC58  7C 7E 1B 78 */	mr r30, r3
/* 80C4AC5C  3C 60 80 C5 */	lis r3, lit_3775@ha
/* 80C4AC60  3B E3 D4 90 */	addi r31, r3, lit_3775@l
/* 80C4AC64  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80C4AC68  C0 1E 05 30 */	lfs f0, 0x530(r30)
/* 80C4AC6C  EC 01 00 2A */	fadds f0, f1, f0
/* 80C4AC70  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80C4AC74  C0 5E 05 2C */	lfs f2, 0x52c(r30)
/* 80C4AC78  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80C4AC7C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C4AC80  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C4AC84  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80C4AC88  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80C4AC8C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C4AC90  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C4AC94  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C4AC98  38 7E 09 9A */	addi r3, r30, 0x99a
/* 80C4AC9C  4B 3C 22 70 */	b ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80C4ACA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C4ACA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C4ACA8  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80C4ACAC  4B 3C 17 88 */	b mDoMtx_YrotM__FPA4_fs
/* 80C4ACB0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C4ACB4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C4ACB8  38 81 00 14 */	addi r4, r1, 0x14
/* 80C4ACBC  38 A1 00 08 */	addi r5, r1, 8
/* 80C4ACC0  4B 6F C0 AC */	b PSMTXMultVec
/* 80C4ACC4  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80C4ACC8  C0 01 00 08 */	lfs f0, 8(r1)
/* 80C4ACCC  EC 01 00 2A */	fadds f0, f1, f0
/* 80C4ACD0  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80C4ACD4  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80C4ACD8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C4ACDC  EC 01 00 2A */	fadds f0, f1, f0
/* 80C4ACE0  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C4ACE4  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80C4ACE8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C4ACEC  EC 01 00 2A */	fadds f0, f1, f0
/* 80C4ACF0  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80C4ACF4  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80C4ACF8  C0 3E 09 88 */	lfs f1, 0x988(r30)
/* 80C4ACFC  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 80C4AD00  C0 7F 00 84 */	lfs f3, 0x84(r31)
/* 80C4AD04  4B 62 4D 38 */	b cLib_addCalc2__FPffff
/* 80C4AD08  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 80C4AD0C  C0 3E 09 8C */	lfs f1, 0x98c(r30)
/* 80C4AD10  C0 5F 00 88 */	lfs f2, 0x88(r31)
/* 80C4AD14  C0 7F 00 8C */	lfs f3, 0x8c(r31)
/* 80C4AD18  4B 62 4D 24 */	b cLib_addCalc2__FPffff
/* 80C4AD1C  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80C4AD20  A8 9E 09 90 */	lha r4, 0x990(r30)
/* 80C4AD24  38 A0 00 10 */	li r5, 0x10
/* 80C4AD28  38 C0 01 00 */	li r6, 0x100
/* 80C4AD2C  4B 62 58 DC */	b cLib_addCalcAngleS2__FPssss
/* 80C4AD30  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80C4AD34  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80C4AD38  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C4AD3C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C4AD40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C4AD44  7C 08 03 A6 */	mtlr r0
/* 80C4AD48  38 21 00 30 */	addi r1, r1, 0x30
/* 80C4AD4C  4E 80 00 20 */	blr 
