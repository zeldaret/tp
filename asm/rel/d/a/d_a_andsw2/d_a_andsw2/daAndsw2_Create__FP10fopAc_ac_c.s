lbl_804D6AA0:
/* 804D6AA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D6AA4  7C 08 02 A6 */	mflr r0
/* 804D6AA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D6AAC  4B FF F6 75 */	bl create__10daAndsw2_cFv
/* 804D6AB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D6AB4  7C 08 03 A6 */	mtlr r0
/* 804D6AB8  38 21 00 10 */	addi r1, r1, 0x10
/* 804D6ABC  4E 80 00 20 */	blr 
