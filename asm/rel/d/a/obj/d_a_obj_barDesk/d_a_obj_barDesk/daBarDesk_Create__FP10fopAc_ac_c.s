lbl_80BA9A28:
/* 80BA9A28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA9A2C  7C 08 02 A6 */	mflr r0
/* 80BA9A30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA9A34  4B FF F8 C1 */	bl create__11daBarDesk_cFv
/* 80BA9A38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA9A3C  7C 08 03 A6 */	mtlr r0
/* 80BA9A40  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA9A44  4E 80 00 20 */	blr 
