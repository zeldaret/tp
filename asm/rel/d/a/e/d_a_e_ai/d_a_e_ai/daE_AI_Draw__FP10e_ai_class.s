lbl_8067B688:
/* 8067B688  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8067B68C  7C 08 02 A6 */	mflr r0
/* 8067B690  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067B694  4B FF DD 69 */	bl Draw__10e_ai_classFv
/* 8067B698  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8067B69C  7C 08 03 A6 */	mtlr r0
/* 8067B6A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8067B6A4  4E 80 00 20 */	blr 
