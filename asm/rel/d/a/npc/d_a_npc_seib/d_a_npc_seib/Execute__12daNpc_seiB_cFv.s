lbl_80AC5554:
/* 80AC5554  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC5558  7C 08 02 A6 */	mflr r0
/* 80AC555C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC5560  4B 68 2F CD */	bl execute__8daNpcT_cFv
/* 80AC5564  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC5568  7C 08 03 A6 */	mtlr r0
/* 80AC556C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC5570  4E 80 00 20 */	blr 
