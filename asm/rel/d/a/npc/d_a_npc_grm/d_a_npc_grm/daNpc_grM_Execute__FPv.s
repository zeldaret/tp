lbl_809D5D90:
/* 809D5D90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D5D94  7C 08 02 A6 */	mflr r0
/* 809D5D98  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D5D9C  4B FF E8 5D */	bl Execute__11daNpc_grM_cFv
/* 809D5DA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D5DA4  7C 08 03 A6 */	mtlr r0
/* 809D5DA8  38 21 00 10 */	addi r1, r1, 0x10
/* 809D5DAC  4E 80 00 20 */	blr 
