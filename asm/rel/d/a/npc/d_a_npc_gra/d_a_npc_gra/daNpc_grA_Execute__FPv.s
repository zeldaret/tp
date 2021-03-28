lbl_809C9168:
/* 809C9168  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809C916C  7C 08 02 A6 */	mflr r0
/* 809C9170  90 01 00 14 */	stw r0, 0x14(r1)
/* 809C9174  4B FF 62 D9 */	bl Execute__11daNpc_grA_cFv
/* 809C9178  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809C917C  7C 08 03 A6 */	mtlr r0
/* 809C9180  38 21 00 10 */	addi r1, r1, 0x10
/* 809C9184  4E 80 00 20 */	blr 
