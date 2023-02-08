lbl_80B5F8AC:
/* 80B5F8AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5F8B0  7C 08 02 A6 */	mflr r0
/* 80B5F8B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5F8B8  4B FF FA 95 */	bl CreateHeap__11daNpc_ykW_cFv
/* 80B5F8BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5F8C0  7C 08 03 A6 */	mtlr r0
/* 80B5F8C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5F8C8  4E 80 00 20 */	blr 
