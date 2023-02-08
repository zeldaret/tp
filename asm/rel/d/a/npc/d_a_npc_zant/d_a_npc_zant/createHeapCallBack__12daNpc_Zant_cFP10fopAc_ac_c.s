lbl_80B6C7E8:
/* 80B6C7E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6C7EC  7C 08 02 A6 */	mflr r0
/* 80B6C7F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6C7F4  4B FF FD 81 */	bl CreateHeap__12daNpc_Zant_cFv
/* 80B6C7F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6C7FC  7C 08 03 A6 */	mtlr r0
/* 80B6C800  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6C804  4E 80 00 20 */	blr 
