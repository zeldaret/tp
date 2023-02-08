lbl_80237F38:
/* 80237F38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80237F3C  7C 08 02 A6 */	mflr r0
/* 80237F40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80237F44  4B FF B6 4D */	bl _execute__12dMsgObject_cFv
/* 80237F48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80237F4C  7C 08 03 A6 */	mtlr r0
/* 80237F50  38 21 00 10 */	addi r1, r1, 0x10
/* 80237F54  4E 80 00 20 */	blr 
