lbl_80B00374:
/* 80B00374  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B00378  7C 08 02 A6 */	mflr r0
/* 80B0037C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B00380  4B FF C7 C5 */	bl create__11daNpcTheB_cFv
/* 80B00384  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B00388  7C 08 03 A6 */	mtlr r0
/* 80B0038C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B00390  4E 80 00 20 */	blr 
