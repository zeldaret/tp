lbl_80D60914:
/* 80D60914  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D60918  7C 08 02 A6 */	mflr r0
/* 80D6091C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D60920  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D60924  7C 7F 1B 78 */	mr r31, r3
/* 80D60928  3C 80 80 D6 */	lis r4, lit_3663@ha
/* 80D6092C  38 84 0A 80 */	addi r4, r4, lit_3663@l
/* 80D60930  C0 24 00 00 */	lfs f1, 0(r4)
/* 80D60934  C0 44 00 04 */	lfs f2, 4(r4)
/* 80D60938  FC 60 08 90 */	fmr f3, f1
/* 80D6093C  C0 84 00 08 */	lfs f4, 8(r4)
/* 80D60940  C0 A4 00 0C */	lfs f5, 0xc(r4)
/* 80D60944  FC C0 20 90 */	fmr f6, f4
/* 80D60948  4B 2B 9C 00 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80D6094C  38 00 00 00 */	li r0, 0
/* 80D60950  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80D60954  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80D60958  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80D6095C  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 80D60960  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 80D60964  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80D60968  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80D6096C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80D60970  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80D60974  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80D60978  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80D6097C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D60980  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D60984  7C 08 03 A6 */	mtlr r0
/* 80D60988  38 21 00 10 */	addi r1, r1, 0x10
/* 80D6098C  4E 80 00 20 */	blr 
