lbl_80C39B78:
/* 80C39B78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C39B7C  7C 08 02 A6 */	mflr r0
/* 80C39B80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C39B84  48 00 00 15 */	bl CreateHeap__10daObjKAT_cFv
/* 80C39B88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C39B8C  7C 08 03 A6 */	mtlr r0
/* 80C39B90  38 21 00 10 */	addi r1, r1, 0x10
/* 80C39B94  4E 80 00 20 */	blr 
