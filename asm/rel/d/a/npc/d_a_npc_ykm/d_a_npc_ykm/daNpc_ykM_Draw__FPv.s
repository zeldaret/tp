lbl_80B5C124:
/* 80B5C124  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5C128  7C 08 02 A6 */	mflr r0
/* 80B5C12C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5C130  4B FF 7F E1 */	bl Draw__11daNpc_ykM_cFv
/* 80B5C134  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5C138  7C 08 03 A6 */	mtlr r0
/* 80B5C13C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5C140  4E 80 00 20 */	blr 
