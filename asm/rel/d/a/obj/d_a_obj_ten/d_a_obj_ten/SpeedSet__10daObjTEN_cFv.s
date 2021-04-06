lbl_80D09008:
/* 80D09008  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D0900C  7C 08 02 A6 */	mflr r0
/* 80D09010  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D09014  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D09018  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80D0901C  7C 7E 1B 78 */	mr r30, r3
/* 80D09020  3C 60 80 D1 */	lis r3, lit_3775@ha /* 0x80D0B8F0@ha */
/* 80D09024  3B E3 B8 F0 */	addi r31, r3, lit_3775@l /* 0x80D0B8F0@l */
/* 80D09028  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80D0902C  C0 1E 05 30 */	lfs f0, 0x530(r30)
/* 80D09030  EC 01 00 2A */	fadds f0, f1, f0
/* 80D09034  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80D09038  C0 5E 05 2C */	lfs f2, 0x52c(r30)
/* 80D0903C  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80D09040  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80D09044  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D09048  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80D0904C  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80D09050  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D09054  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D09058  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D0905C  38 7E 06 02 */	addi r3, r30, 0x602
/* 80D09060  4B 30 3E AD */	bl ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80D09064  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D09068  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D0906C  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80D09070  4B 30 33 C5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80D09074  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D09078  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D0907C  38 81 00 14 */	addi r4, r1, 0x14
/* 80D09080  38 A1 00 08 */	addi r5, r1, 8
/* 80D09084  4B 63 DC E9 */	bl PSMTXMultVec
/* 80D09088  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80D0908C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80D09090  EC 01 00 2A */	fadds f0, f1, f0
/* 80D09094  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80D09098  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80D0909C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80D090A0  EC 01 00 2A */	fadds f0, f1, f0
/* 80D090A4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80D090A8  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80D090AC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80D090B0  EC 01 00 2A */	fadds f0, f1, f0
/* 80D090B4  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80D090B8  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80D090BC  C0 3E 05 F0 */	lfs f1, 0x5f0(r30)
/* 80D090C0  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 80D090C4  C0 7F 00 84 */	lfs f3, 0x84(r31)
/* 80D090C8  4B 56 69 75 */	bl cLib_addCalc2__FPffff
/* 80D090CC  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 80D090D0  C0 3E 05 F4 */	lfs f1, 0x5f4(r30)
/* 80D090D4  C0 5F 00 88 */	lfs f2, 0x88(r31)
/* 80D090D8  C0 7F 00 8C */	lfs f3, 0x8c(r31)
/* 80D090DC  4B 56 69 61 */	bl cLib_addCalc2__FPffff
/* 80D090E0  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80D090E4  A8 9E 05 F8 */	lha r4, 0x5f8(r30)
/* 80D090E8  38 A0 00 10 */	li r5, 0x10
/* 80D090EC  38 C0 01 00 */	li r6, 0x100
/* 80D090F0  4B 56 75 19 */	bl cLib_addCalcAngleS2__FPssss
/* 80D090F4  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80D090F8  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80D090FC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D09100  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80D09104  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D09108  7C 08 03 A6 */	mtlr r0
/* 80D0910C  38 21 00 30 */	addi r1, r1, 0x30
/* 80D09110  4E 80 00 20 */	blr 
