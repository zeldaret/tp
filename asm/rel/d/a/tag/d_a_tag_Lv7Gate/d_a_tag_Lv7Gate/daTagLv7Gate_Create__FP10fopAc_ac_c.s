lbl_80D50C44:
/* 80D50C44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D50C48  7C 08 02 A6 */	mflr r0
/* 80D50C4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D50C50  48 00 00 15 */	bl create__14daTagLv7Gate_cFv
/* 80D50C54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D50C58  7C 08 03 A6 */	mtlr r0
/* 80D50C5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D50C60  4E 80 00 20 */	blr 
