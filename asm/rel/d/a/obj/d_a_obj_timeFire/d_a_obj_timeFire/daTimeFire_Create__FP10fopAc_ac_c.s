lbl_80D0F018:
/* 80D0F018  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0F01C  7C 08 02 A6 */	mflr r0
/* 80D0F020  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0F024  4B FF F9 8D */	bl create__12daTimeFire_cFv
/* 80D0F028  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0F02C  7C 08 03 A6 */	mtlr r0
/* 80D0F030  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0F034  4E 80 00 20 */	blr 
