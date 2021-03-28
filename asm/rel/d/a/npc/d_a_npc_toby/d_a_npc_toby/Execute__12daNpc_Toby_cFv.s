lbl_80B1EF5C:
/* 80B1EF5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1EF60  7C 08 02 A6 */	mflr r0
/* 80B1EF64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1EF68  4B 62 95 C4 */	b execute__8daNpcT_cFv
/* 80B1EF6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1EF70  7C 08 03 A6 */	mtlr r0
/* 80B1EF74  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1EF78  4E 80 00 20 */	blr 
