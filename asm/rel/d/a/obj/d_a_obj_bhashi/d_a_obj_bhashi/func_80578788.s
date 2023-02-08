lbl_80578788:
/* 80578788  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057878C  7C 08 02 A6 */	mflr r0
/* 80578790  90 01 00 14 */	stw r0, 0x14(r1)
/* 80578794  3C 80 80 58 */	lis r4, ccCylSrc@ha /* 0x80578A88@ha */
/* 80578798  38 84 8A 88 */	addi r4, r4, ccCylSrc@l /* 0x80578A88@l */
/* 8057879C  C0 24 01 14 */	lfs f1, 0x114(r4)
/* 805787A0  C0 44 01 08 */	lfs f2, 0x108(r4)
/* 805787A4  FC 60 08 90 */	fmr f3, f1
/* 805787A8  C0 84 00 E8 */	lfs f4, 0xe8(r4)
/* 805787AC  C0 A4 01 0C */	lfs f5, 0x10c(r4)
/* 805787B0  FC C0 20 90 */	fmr f6, f4
/* 805787B4  4B AA 1D 95 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 805787B8  38 60 00 04 */	li r3, 4
/* 805787BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805787C0  7C 08 03 A6 */	mtlr r0
/* 805787C4  38 21 00 10 */	addi r1, r1, 0x10
/* 805787C8  4E 80 00 20 */	blr 
