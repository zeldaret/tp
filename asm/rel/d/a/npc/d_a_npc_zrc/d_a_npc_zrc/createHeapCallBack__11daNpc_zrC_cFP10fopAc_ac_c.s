lbl_80B8EB48:
/* 80B8EB48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B8EB4C  7C 08 02 A6 */	mflr r0
/* 80B8EB50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B8EB54  4B FF F7 E5 */	bl CreateHeap__11daNpc_zrC_cFv
/* 80B8EB58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B8EB5C  7C 08 03 A6 */	mtlr r0
/* 80B8EB60  38 21 00 10 */	addi r1, r1, 0x10
/* 80B8EB64  4E 80 00 20 */	blr 
