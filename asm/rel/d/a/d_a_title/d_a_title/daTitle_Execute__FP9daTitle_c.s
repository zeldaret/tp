lbl_80D67968:
/* 80D67968  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D6796C  7C 08 02 A6 */	mflr r0
/* 80D67970  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D67974  4B FF F5 29 */	bl Execute__9daTitle_cFv
/* 80D67978  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D6797C  7C 08 03 A6 */	mtlr r0
/* 80D67980  38 21 00 10 */	addi r1, r1, 0x10
/* 80D67984  4E 80 00 20 */	blr 
