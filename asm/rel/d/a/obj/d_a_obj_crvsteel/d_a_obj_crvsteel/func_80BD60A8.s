lbl_80BD60A8:
/* 80BD60A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD60AC  7C 08 02 A6 */	mflr r0
/* 80BD60B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD60B4  3C 80 80 BD */	lis r4, lit_3789@ha /* 0x80BD6208@ha */
/* 80BD60B8  38 84 62 08 */	addi r4, r4, lit_3789@l /* 0x80BD6208@l */
/* 80BD60BC  C0 24 00 24 */	lfs f1, 0x24(r4)
/* 80BD60C0  C0 44 00 28 */	lfs f2, 0x28(r4)
/* 80BD60C4  FC 60 08 90 */	fmr f3, f1
/* 80BD60C8  C0 84 00 2C */	lfs f4, 0x2c(r4)
/* 80BD60CC  C0 A4 00 30 */	lfs f5, 0x30(r4)
/* 80BD60D0  FC C0 20 90 */	fmr f6, f4
/* 80BD60D4  4B 44 44 75 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80BD60D8  38 60 00 04 */	li r3, 4
/* 80BD60DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD60E0  7C 08 03 A6 */	mtlr r0
/* 80BD60E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD60E8  4E 80 00 20 */	blr 
