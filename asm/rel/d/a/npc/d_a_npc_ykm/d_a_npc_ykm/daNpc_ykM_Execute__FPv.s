lbl_80B5C104:
/* 80B5C104  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5C108  7C 08 02 A6 */	mflr r0
/* 80B5C10C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5C110  4B FF 7F E1 */	bl Execute__11daNpc_ykM_cFv
/* 80B5C114  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5C118  7C 08 03 A6 */	mtlr r0
/* 80B5C11C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5C120  4E 80 00 20 */	blr 
