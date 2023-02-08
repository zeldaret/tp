lbl_80C79868:
/* 80C79868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7986C  7C 08 02 A6 */	mflr r0
/* 80C79870  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C79874  4B FF E5 49 */	bl create__12daTogeRoll_cFv
/* 80C79878  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7987C  7C 08 03 A6 */	mtlr r0
/* 80C79880  38 21 00 10 */	addi r1, r1, 0x10
/* 80C79884  4E 80 00 20 */	blr 
