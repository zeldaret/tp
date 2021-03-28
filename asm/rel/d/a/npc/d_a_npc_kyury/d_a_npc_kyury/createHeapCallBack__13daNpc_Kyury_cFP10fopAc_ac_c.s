lbl_80A60A90:
/* 80A60A90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A60A94  7C 08 02 A6 */	mflr r0
/* 80A60A98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A60A9C  4B FF FA 49 */	bl CreateHeap__13daNpc_Kyury_cFv
/* 80A60AA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A60AA4  7C 08 03 A6 */	mtlr r0
/* 80A60AA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A60AAC  4E 80 00 20 */	blr 
