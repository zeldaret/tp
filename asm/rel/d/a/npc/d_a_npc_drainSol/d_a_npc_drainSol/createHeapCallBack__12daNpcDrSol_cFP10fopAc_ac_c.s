lbl_809AE69C:
/* 809AE69C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AE6A0  7C 08 02 A6 */	mflr r0
/* 809AE6A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AE6A8  4B FF FC AD */	bl CreateHeap__12daNpcDrSol_cFv
/* 809AE6AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AE6B0  7C 08 03 A6 */	mtlr r0
/* 809AE6B4  38 21 00 10 */	addi r1, r1, 0x10
/* 809AE6B8  4E 80 00 20 */	blr 
