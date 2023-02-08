lbl_809B3074:
/* 809B3074  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B3078  7C 08 02 A6 */	mflr r0
/* 809B307C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B3080  4B FF F6 69 */	bl CreateHeap__13daNpc_Fairy_cFv
/* 809B3084  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B3088  7C 08 03 A6 */	mtlr r0
/* 809B308C  38 21 00 10 */	addi r1, r1, 0x10
/* 809B3090  4E 80 00 20 */	blr 
