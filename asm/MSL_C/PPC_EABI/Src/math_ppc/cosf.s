lbl_8036CA0C:
/* 8036CA0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036CA10  7C 08 02 A6 */	mflr r0
/* 8036CA14  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036CA18  4B FF F6 11 */	bl cos
/* 8036CA1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036CA20  FC 20 08 18 */	frsp f1, f1
/* 8036CA24  7C 08 03 A6 */	mtlr r0
/* 8036CA28  38 21 00 10 */	addi r1, r1, 0x10
/* 8036CA2C  4E 80 00 20 */	blr 
