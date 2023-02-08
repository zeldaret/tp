lbl_80B7ED78:
/* 80B7ED78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7ED7C  7C 08 02 A6 */	mflr r0
/* 80B7ED80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7ED84  4B FF B7 CD */	bl Execute__11daNpc_zrA_cFv
/* 80B7ED88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7ED8C  7C 08 03 A6 */	mtlr r0
/* 80B7ED90  38 21 00 10 */	addi r1, r1, 0x10
/* 80B7ED94  4E 80 00 20 */	blr 
