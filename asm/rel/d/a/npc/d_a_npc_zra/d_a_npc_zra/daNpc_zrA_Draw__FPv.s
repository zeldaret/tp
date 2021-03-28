lbl_80B7ED98:
/* 80B7ED98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7ED9C  7C 08 02 A6 */	mflr r0
/* 80B7EDA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7EDA4  4B FF B7 CD */	bl Draw__11daNpc_zrA_cFv
/* 80B7EDA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7EDAC  7C 08 03 A6 */	mtlr r0
/* 80B7EDB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B7EDB4  4E 80 00 20 */	blr 
