lbl_8024CD84:
/* 8024CD84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024CD88  7C 08 02 A6 */	mflr r0
/* 8024CD8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024CD90  38 63 00 3C */	addi r3, r3, 0x3c
/* 8024CD94  48 00 0D 1D */	bl func_8024DAB0
/* 8024CD98  38 60 00 01 */	li r3, 1
/* 8024CD9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024CDA0  7C 08 03 A6 */	mtlr r0
/* 8024CDA4  38 21 00 10 */	addi r1, r1, 0x10
/* 8024CDA8  4E 80 00 20 */	blr 
