lbl_8062CD58:
/* 8062CD58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062CD5C  7C 08 02 A6 */	mflr r0
/* 8062CD60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062CD64  4B FF FB 05 */	bl CreateHeap__8daB_TN_cFv
/* 8062CD68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062CD6C  7C 08 03 A6 */	mtlr r0
/* 8062CD70  38 21 00 10 */	addi r1, r1, 0x10
/* 8062CD74  4E 80 00 20 */	blr 
