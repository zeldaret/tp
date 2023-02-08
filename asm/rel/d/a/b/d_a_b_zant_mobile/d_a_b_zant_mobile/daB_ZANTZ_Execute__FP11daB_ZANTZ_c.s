lbl_80651CF4:
/* 80651CF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80651CF8  7C 08 02 A6 */	mflr r0
/* 80651CFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80651D00  4B FF FF 21 */	bl execute__11daB_ZANTZ_cFv
/* 80651D04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80651D08  7C 08 03 A6 */	mtlr r0
/* 80651D0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80651D10  4E 80 00 20 */	blr 
