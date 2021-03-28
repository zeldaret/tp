lbl_80D5C080:
/* 80D5C080  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5C084  7C 08 02 A6 */	mflr r0
/* 80D5C088  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5C08C  38 80 FF FF */	li r4, -1
/* 80D5C090  4B FF FF 8D */	bl __dt__12daTagMwait_cFv
/* 80D5C094  38 60 00 01 */	li r3, 1
/* 80D5C098  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5C09C  7C 08 03 A6 */	mtlr r0
/* 80D5C0A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5C0A4  4E 80 00 20 */	blr 
