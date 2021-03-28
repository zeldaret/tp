lbl_80BE9CB8:
/* 80BE9CB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE9CBC  7C 08 02 A6 */	mflr r0
/* 80BE9CC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE9CC4  48 00 03 71 */	bl CreateHeap__15daObjFPillar2_cFv
/* 80BE9CC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE9CCC  7C 08 03 A6 */	mtlr r0
/* 80BE9CD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE9CD4  4E 80 00 20 */	blr 
