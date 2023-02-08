lbl_80B69844:
/* 80B69844  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B69848  7C 08 02 A6 */	mflr r0
/* 80B6984C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B69850  4B FF FA E1 */	bl CreateHeap__12daNpc_zanB_cFv
/* 80B69854  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B69858  7C 08 03 A6 */	mtlr r0
/* 80B6985C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B69860  4E 80 00 20 */	blr 
