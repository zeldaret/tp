lbl_80A15034:
/* 80A15034  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A15038  7C 08 02 A6 */	mflr r0
/* 80A1503C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A15040  4B FF FA E1 */	bl CreateHeap__13daNpc_Jagar_cFv
/* 80A15044  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A15048  7C 08 03 A6 */	mtlr r0
/* 80A1504C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A15050  4E 80 00 20 */	blr 
