lbl_8096D8A0:
/* 8096D8A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8096D8A4  7C 08 02 A6 */	mflr r0
/* 8096D8A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8096D8AC  4B FF FA E1 */	bl CreateHeap__11daNpc_Bou_cFv
/* 8096D8B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8096D8B4  7C 08 03 A6 */	mtlr r0
/* 8096D8B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8096D8BC  4E 80 00 20 */	blr 
