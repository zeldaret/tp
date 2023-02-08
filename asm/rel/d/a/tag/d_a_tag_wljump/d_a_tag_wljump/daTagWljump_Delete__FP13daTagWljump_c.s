lbl_80D65068:
/* 80D65068  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D6506C  7C 08 02 A6 */	mflr r0
/* 80D65070  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D65074  38 80 FF FF */	li r4, -1
/* 80D65078  4B FF FF 8D */	bl __dt__13daTagWljump_cFv
/* 80D6507C  38 60 00 01 */	li r3, 1
/* 80D65080  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D65084  7C 08 03 A6 */	mtlr r0
/* 80D65088  38 21 00 10 */	addi r1, r1, 0x10
/* 80D6508C  4E 80 00 20 */	blr 
