lbl_80C35BE4:
/* 80C35BE4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C35BE8  7C 08 02 A6 */	mflr r0
/* 80C35BEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C35BF0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C35BF4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C35BF8  7C 7E 1B 78 */	mr r30, r3
/* 80C35BFC  3C 60 80 C4 */	lis r3, lit_3775@ha
/* 80C35C00  3B E3 84 08 */	addi r31, r3, lit_3775@l
/* 80C35C04  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80C35C08  C0 1E 05 30 */	lfs f0, 0x530(r30)
/* 80C35C0C  EC 01 00 2A */	fadds f0, f1, f0
/* 80C35C10  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80C35C14  C0 5E 05 2C */	lfs f2, 0x52c(r30)
/* 80C35C18  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80C35C1C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C35C20  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C35C24  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80C35C28  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80C35C2C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C35C30  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C35C34  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C35C38  38 7E 09 9A */	addi r3, r30, 0x99a
/* 80C35C3C  4B 3D 72 D0 */	b ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80C35C40  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C35C44  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C35C48  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80C35C4C  4B 3D 67 E8 */	b mDoMtx_YrotM__FPA4_fs
/* 80C35C50  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C35C54  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C35C58  38 81 00 14 */	addi r4, r1, 0x14
/* 80C35C5C  38 A1 00 08 */	addi r5, r1, 8
/* 80C35C60  4B 71 11 0C */	b PSMTXMultVec
/* 80C35C64  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80C35C68  C0 01 00 08 */	lfs f0, 8(r1)
/* 80C35C6C  EC 01 00 2A */	fadds f0, f1, f0
/* 80C35C70  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80C35C74  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80C35C78  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C35C7C  EC 01 00 2A */	fadds f0, f1, f0
/* 80C35C80  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C35C84  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80C35C88  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C35C8C  EC 01 00 2A */	fadds f0, f1, f0
/* 80C35C90  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80C35C94  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80C35C98  C0 3E 09 88 */	lfs f1, 0x988(r30)
/* 80C35C9C  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 80C35CA0  C0 7F 00 84 */	lfs f3, 0x84(r31)
/* 80C35CA4  4B 63 9D 98 */	b cLib_addCalc2__FPffff
/* 80C35CA8  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 80C35CAC  C0 3E 09 8C */	lfs f1, 0x98c(r30)
/* 80C35CB0  C0 5F 00 88 */	lfs f2, 0x88(r31)
/* 80C35CB4  C0 7F 00 8C */	lfs f3, 0x8c(r31)
/* 80C35CB8  4B 63 9D 84 */	b cLib_addCalc2__FPffff
/* 80C35CBC  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80C35CC0  A8 9E 09 90 */	lha r4, 0x990(r30)
/* 80C35CC4  38 A0 00 10 */	li r5, 0x10
/* 80C35CC8  38 C0 01 00 */	li r6, 0x100
/* 80C35CCC  4B 63 A9 3C */	b cLib_addCalcAngleS2__FPssss
/* 80C35CD0  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80C35CD4  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80C35CD8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C35CDC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C35CE0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C35CE4  7C 08 03 A6 */	mtlr r0
/* 80C35CE8  38 21 00 30 */	addi r1, r1, 0x30
/* 80C35CEC  4E 80 00 20 */	blr 
