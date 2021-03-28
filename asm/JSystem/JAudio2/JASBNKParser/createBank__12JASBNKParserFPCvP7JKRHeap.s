lbl_80299538:
/* 80299538  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029953C  7C 08 02 A6 */	mflr r0
/* 80299540  90 01 00 14 */	stw r0, 0x14(r1)
/* 80299544  48 00 00 15 */	bl createBasicBank__12JASBNKParserFPCvP7JKRHeap
/* 80299548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029954C  7C 08 03 A6 */	mtlr r0
/* 80299550  38 21 00 10 */	addi r1, r1, 0x10
/* 80299554  4E 80 00 20 */	blr 
