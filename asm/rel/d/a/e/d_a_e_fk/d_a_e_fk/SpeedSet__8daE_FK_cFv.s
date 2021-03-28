lbl_806B9B2C:
/* 806B9B2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B9B30  7C 08 02 A6 */	mflr r0
/* 806B9B34  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B9B38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806B9B3C  93 C1 00 08 */	stw r30, 8(r1)
/* 806B9B40  7C 7E 1B 78 */	mr r30, r3
/* 806B9B44  3C 60 80 6C */	lis r3, lit_3826@ha
/* 806B9B48  3B E3 B6 D0 */	addi r31, r3, lit_3826@l
/* 806B9B4C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 806B9B50  B0 1E 05 D2 */	sth r0, 0x5d2(r30)
/* 806B9B54  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806B9B58  C0 3E 05 CC */	lfs f1, 0x5cc(r30)
/* 806B9B5C  C0 5F 00 E0 */	lfs f2, 0xe0(r31)
/* 806B9B60  C0 7F 00 E4 */	lfs f3, 0xe4(r31)
/* 806B9B64  4B BB 5E D8 */	b cLib_addCalc2__FPffff
/* 806B9B68  38 7E 04 DE */	addi r3, r30, 0x4de
/* 806B9B6C  A8 9E 05 D0 */	lha r4, 0x5d0(r30)
/* 806B9B70  38 A0 00 02 */	li r5, 2
/* 806B9B74  38 C0 20 00 */	li r6, 0x2000
/* 806B9B78  4B BB 6A 90 */	b cLib_addCalcAngleS2__FPssss
/* 806B9B7C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 806B9B80  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 806B9B84  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806B9B88  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 806B9B8C  C0 1E 05 CC */	lfs f0, 0x5cc(r30)
/* 806B9B90  EC 01 00 24 */	fdivs f0, f1, f0
/* 806B9B94  EC 02 00 28 */	fsubs f0, f2, f0
/* 806B9B98  D0 1E 05 DC */	stfs f0, 0x5dc(r30)
/* 806B9B9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806B9BA0  83 C1 00 08 */	lwz r30, 8(r1)
/* 806B9BA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B9BA8  7C 08 03 A6 */	mtlr r0
/* 806B9BAC  38 21 00 10 */	addi r1, r1, 0x10
/* 806B9BB0  4E 80 00 20 */	blr 
