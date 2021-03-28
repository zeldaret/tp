lbl_80BA6A30:
/* 80BA6A30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA6A34  7C 08 02 A6 */	mflr r0
/* 80BA6A38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA6A3C  4B FF F6 65 */	bl Delete__16daObj_AutoMata_cFv
/* 80BA6A40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA6A44  7C 08 03 A6 */	mtlr r0
/* 80BA6A48  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA6A4C  4E 80 00 20 */	blr 
