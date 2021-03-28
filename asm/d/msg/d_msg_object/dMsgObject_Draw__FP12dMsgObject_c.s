lbl_80237F18:
/* 80237F18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80237F1C  7C 08 02 A6 */	mflr r0
/* 80237F20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80237F24  4B FF BA 99 */	bl _draw__12dMsgObject_cFv
/* 80237F28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80237F2C  7C 08 03 A6 */	mtlr r0
/* 80237F30  38 21 00 10 */	addi r1, r1, 0x10
/* 80237F34  4E 80 00 20 */	blr 
