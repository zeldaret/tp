lbl_80D565A8:
/* 80D565A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D565AC  7C 08 02 A6 */	mflr r0
/* 80D565B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D565B4  4B FF FA B1 */	bl Execute__18daTag_BottleItem_cFv
/* 80D565B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D565BC  7C 08 03 A6 */	mtlr r0
/* 80D565C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D565C4  4E 80 00 20 */	blr 
