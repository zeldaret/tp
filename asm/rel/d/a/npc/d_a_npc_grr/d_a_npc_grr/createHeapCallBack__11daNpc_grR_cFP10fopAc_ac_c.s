lbl_809E0714:
/* 809E0714  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E0718  7C 08 02 A6 */	mflr r0
/* 809E071C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E0720  4B FF F8 99 */	bl CreateHeap__11daNpc_grR_cFv
/* 809E0724  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E0728  7C 08 03 A6 */	mtlr r0
/* 809E072C  38 21 00 10 */	addi r1, r1, 0x10
/* 809E0730  4E 80 00 20 */	blr 
