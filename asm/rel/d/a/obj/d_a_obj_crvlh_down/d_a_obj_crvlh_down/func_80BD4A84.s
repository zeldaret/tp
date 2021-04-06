lbl_80BD4A84:
/* 80BD4A84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD4A88  7C 08 02 A6 */	mflr r0
/* 80BD4A8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD4A90  3C 80 80 BD */	lis r4, ccCylSrc@ha /* 0x80BD4D04@ha */
/* 80BD4A94  38 84 4D 04 */	addi r4, r4, ccCylSrc@l /* 0x80BD4D04@l */
/* 80BD4A98  C0 24 00 68 */	lfs f1, 0x68(r4)
/* 80BD4A9C  C0 44 00 5C */	lfs f2, 0x5c(r4)
/* 80BD4AA0  FC 60 08 90 */	fmr f3, f1
/* 80BD4AA4  C0 84 00 64 */	lfs f4, 0x64(r4)
/* 80BD4AA8  C0 A4 00 60 */	lfs f5, 0x60(r4)
/* 80BD4AAC  FC C0 20 90 */	fmr f6, f4
/* 80BD4AB0  4B 44 5A 99 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80BD4AB4  38 60 00 04 */	li r3, 4
/* 80BD4AB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD4ABC  7C 08 03 A6 */	mtlr r0
/* 80BD4AC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD4AC4  4E 80 00 20 */	blr 
