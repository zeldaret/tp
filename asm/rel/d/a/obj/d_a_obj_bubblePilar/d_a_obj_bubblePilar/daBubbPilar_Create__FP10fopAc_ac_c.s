lbl_80BC3F28:
/* 80BC3F28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC3F2C  7C 08 02 A6 */	mflr r0
/* 80BC3F30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC3F34  4B FF F6 9D */	bl create__13daBubbPilar_cFv
/* 80BC3F38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC3F3C  7C 08 03 A6 */	mtlr r0
/* 80BC3F40  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC3F44  4E 80 00 20 */	blr 
