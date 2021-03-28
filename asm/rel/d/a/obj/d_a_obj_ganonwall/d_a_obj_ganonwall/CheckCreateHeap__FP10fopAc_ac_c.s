lbl_80BF4CF8:
/* 80BF4CF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF4CFC  7C 08 02 A6 */	mflr r0
/* 80BF4D00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF4D04  48 00 01 89 */	bl CreateHeap__12daObjGWall_cFv
/* 80BF4D08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF4D0C  7C 08 03 A6 */	mtlr r0
/* 80BF4D10  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF4D14  4E 80 00 20 */	blr 
