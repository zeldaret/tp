lbl_80D5850C:
/* 80D5850C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D58510  7C 08 02 A6 */	mflr r0
/* 80D58514  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D58518  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5851C  7C 7F 1B 78 */	mr r31, r3
/* 80D58520  4B FF F3 7D */	bl Delete__10daTagCsw_cFv
/* 80D58524  7F E3 FB 78 */	mr r3, r31
/* 80D58528  38 80 FF FF */	li r4, -1
/* 80D5852C  4B FF E6 AD */	bl __dt__10daTagCsw_cFv
/* 80D58530  38 60 00 01 */	li r3, 1
/* 80D58534  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D58538  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5853C  7C 08 03 A6 */	mtlr r0
/* 80D58540  38 21 00 10 */	addi r1, r1, 0x10
/* 80D58544  4E 80 00 20 */	blr 
