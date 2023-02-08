lbl_809E4F70:
/* 809E4F70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E4F74  7C 08 02 A6 */	mflr r0
/* 809E4F78  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E4F7C  4B FF F8 39 */	bl CreateHeap__11daNpc_grS_cFv
/* 809E4F80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E4F84  7C 08 03 A6 */	mtlr r0
/* 809E4F88  38 21 00 10 */	addi r1, r1, 0x10
/* 809E4F8C  4E 80 00 20 */	blr 
