lbl_80A6B6E4:
/* 80A6B6E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6B6E8  7C 08 02 A6 */	mflr r0
/* 80A6B6EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6B6F0  4B FF F8 B9 */	bl CreateHeap__11daNpc_Lud_cFv
/* 80A6B6F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6B6F8  7C 08 03 A6 */	mtlr r0
/* 80A6B6FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6B700  4E 80 00 20 */	blr 
