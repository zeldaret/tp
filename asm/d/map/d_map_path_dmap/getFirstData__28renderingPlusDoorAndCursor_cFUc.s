lbl_80040A94:
/* 80040A94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80040A98  7C 08 02 A6 */	mflr r0
/* 80040A9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80040AA0  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 80040AA4  48 05 B8 BD */	bl getFirstData__7dTres_cFUc
/* 80040AA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80040AAC  7C 08 03 A6 */	mtlr r0
/* 80040AB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80040AB4  4E 80 00 20 */	blr 
