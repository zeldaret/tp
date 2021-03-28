lbl_80AFD49C:
/* 80AFD49C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AFD4A0  7C 08 02 A6 */	mflr r0
/* 80AFD4A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AFD4A8  4B FF F8 F1 */	bl CreateHeap__11daNpcTheB_cFv
/* 80AFD4AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AFD4B0  7C 08 03 A6 */	mtlr r0
/* 80AFD4B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AFD4B8  4E 80 00 20 */	blr 
