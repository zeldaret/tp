lbl_8054CA1C:
/* 8054CA1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054CA20  7C 08 02 A6 */	mflr r0
/* 8054CA24  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054CA28  38 63 13 58 */	addi r3, r3, 0x1358
/* 8054CA2C  4B E1 56 1C */	b __ptmf_cmpr
/* 8054CA30  7C 60 00 34 */	cntlzw r0, r3
/* 8054CA34  54 03 D9 7E */	srwi r3, r0, 5
/* 8054CA38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054CA3C  7C 08 03 A6 */	mtlr r0
/* 8054CA40  38 21 00 10 */	addi r1, r1, 0x10
/* 8054CA44  4E 80 00 20 */	blr 
