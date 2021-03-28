lbl_80BCFFC8:
/* 80BCFFC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCFFCC  7C 08 02 A6 */	mflr r0
/* 80BCFFD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCFFD4  3C 80 80 BD */	lis r4, lit_3685@ha
/* 80BCFFD8  38 84 01 88 */	addi r4, r4, lit_3685@l
/* 80BCFFDC  C0 24 00 80 */	lfs f1, 0x80(r4)
/* 80BCFFE0  C0 44 00 74 */	lfs f2, 0x74(r4)
/* 80BCFFE4  FC 60 08 90 */	fmr f3, f1
/* 80BCFFE8  C0 84 00 3C */	lfs f4, 0x3c(r4)
/* 80BCFFEC  C0 A4 00 78 */	lfs f5, 0x78(r4)
/* 80BCFFF0  FC C0 20 90 */	fmr f6, f4
/* 80BCFFF4  4B 44 A5 54 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80BCFFF8  38 60 00 04 */	li r3, 4
/* 80BCFFFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD0000  7C 08 03 A6 */	mtlr r0
/* 80BD0004  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD0008  4E 80 00 20 */	blr 
