lbl_80B7ED58:
/* 80B7ED58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7ED5C  7C 08 02 A6 */	mflr r0
/* 80B7ED60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7ED64  4B FF B7 B9 */	bl Delete__11daNpc_zrA_cFv
/* 80B7ED68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7ED6C  7C 08 03 A6 */	mtlr r0
/* 80B7ED70  38 21 00 10 */	addi r1, r1, 0x10
/* 80B7ED74  4E 80 00 20 */	blr 
