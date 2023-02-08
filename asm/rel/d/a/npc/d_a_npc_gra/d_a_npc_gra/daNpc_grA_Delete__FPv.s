lbl_809C9148:
/* 809C9148  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809C914C  7C 08 02 A6 */	mflr r0
/* 809C9150  90 01 00 14 */	stw r0, 0x14(r1)
/* 809C9154  4B FF 62 C5 */	bl Delete__11daNpc_grA_cFv
/* 809C9158  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809C915C  7C 08 03 A6 */	mtlr r0
/* 809C9160  38 21 00 10 */	addi r1, r1, 0x10
/* 809C9164  4E 80 00 20 */	blr 
