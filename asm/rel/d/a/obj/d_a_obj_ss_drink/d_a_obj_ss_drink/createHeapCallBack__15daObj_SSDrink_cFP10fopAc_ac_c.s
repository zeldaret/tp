lbl_80CE59DC:
/* 80CE59DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE59E0  7C 08 02 A6 */	mflr r0
/* 80CE59E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE59E8  4B FF FA 05 */	bl CreateHeap__15daObj_SSDrink_cFv
/* 80CE59EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE59F0  7C 08 03 A6 */	mtlr r0
/* 80CE59F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE59F8  4E 80 00 20 */	blr 
