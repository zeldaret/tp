lbl_8095EB94:
/* 8095EB94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8095EB98  7C 08 02 A6 */	mflr r0
/* 8095EB9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8095EBA0  4B FF F9 01 */	bl CreateHeap__11daNpcAshB_cFv
/* 8095EBA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8095EBA8  7C 08 03 A6 */	mtlr r0
/* 8095EBAC  38 21 00 10 */	addi r1, r1, 0x10
/* 8095EBB0  4E 80 00 20 */	blr 
