lbl_80BD56EC:
/* 80BD56EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD56F0  7C 08 02 A6 */	mflr r0
/* 80BD56F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD56F8  3C 80 80 BD */	lis r4, lit_3672@ha
/* 80BD56FC  38 84 59 FC */	addi r4, r4, lit_3672@l
/* 80BD5700  C0 24 00 48 */	lfs f1, 0x48(r4)
/* 80BD5704  C0 44 00 3C */	lfs f2, 0x3c(r4)
/* 80BD5708  FC 60 08 90 */	fmr f3, f1
/* 80BD570C  C0 84 00 4C */	lfs f4, 0x4c(r4)
/* 80BD5710  C0 A4 00 40 */	lfs f5, 0x40(r4)
/* 80BD5714  FC C0 20 90 */	fmr f6, f4
/* 80BD5718  4B 44 4E 30 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80BD571C  38 60 00 04 */	li r3, 4
/* 80BD5720  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD5724  7C 08 03 A6 */	mtlr r0
/* 80BD5728  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD572C  4E 80 00 20 */	blr 
