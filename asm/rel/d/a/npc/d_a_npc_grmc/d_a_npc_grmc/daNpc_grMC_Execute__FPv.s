lbl_809D8DCC:
/* 809D8DCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D8DD0  7C 08 02 A6 */	mflr r0
/* 809D8DD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D8DD8  4B FF EC 19 */	bl Execute__12daNpc_grMC_cFv
/* 809D8DDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D8DE0  7C 08 03 A6 */	mtlr r0
/* 809D8DE4  38 21 00 10 */	addi r1, r1, 0x10
/* 809D8DE8  4E 80 00 20 */	blr 
