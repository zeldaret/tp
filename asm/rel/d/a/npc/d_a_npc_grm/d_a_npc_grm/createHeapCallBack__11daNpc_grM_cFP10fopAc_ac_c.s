lbl_809D4768:
/* 809D4768  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D476C  7C 08 02 A6 */	mflr r0
/* 809D4770  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D4774  4B FF FC A9 */	bl CreateHeap__11daNpc_grM_cFv
/* 809D4778  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D477C  7C 08 03 A6 */	mtlr r0
/* 809D4780  38 21 00 10 */	addi r1, r1, 0x10
/* 809D4784  4E 80 00 20 */	blr 
