lbl_80854A2C:
/* 80854A2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80854A30  7C 08 02 A6 */	mflr r0
/* 80854A34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80854A38  4B FF FA A1 */	bl create__8daKago_cFv
/* 80854A3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80854A40  7C 08 03 A6 */	mtlr r0
/* 80854A44  38 21 00 10 */	addi r1, r1, 0x10
/* 80854A48  4E 80 00 20 */	blr 
