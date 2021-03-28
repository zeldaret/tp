lbl_80D6105C:
/* 80D6105C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D61060  7C 08 02 A6 */	mflr r0
/* 80D61064  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D61068  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D6106C  7C 7F 1B 78 */	mr r31, r3
/* 80D61070  3C 80 80 D6 */	lis r4, lit_3684@ha
/* 80D61074  38 84 11 D0 */	addi r4, r4, lit_3684@l
/* 80D61078  C0 24 00 08 */	lfs f1, 8(r4)
/* 80D6107C  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 80D61080  FC 60 08 90 */	fmr f3, f1
/* 80D61084  C0 84 00 10 */	lfs f4, 0x10(r4)
/* 80D61088  C0 A4 00 14 */	lfs f5, 0x14(r4)
/* 80D6108C  FC C0 20 90 */	fmr f6, f4
/* 80D61090  4B 2B 94 B8 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80D61094  38 00 00 00 */	li r0, 0
/* 80D61098  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80D6109C  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80D610A0  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80D610A4  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 80D610A8  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 80D610AC  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80D610B0  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80D610B4  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80D610B8  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80D610BC  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80D610C0  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80D610C4  38 00 FF FF */	li r0, -1
/* 80D610C8  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 80D610CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D610D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D610D4  7C 08 03 A6 */	mtlr r0
/* 80D610D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D610DC  4E 80 00 20 */	blr 
