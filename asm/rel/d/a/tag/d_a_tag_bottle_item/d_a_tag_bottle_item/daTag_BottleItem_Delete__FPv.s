lbl_80D56588:
/* 80D56588  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5658C  7C 08 02 A6 */	mflr r0
/* 80D56590  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D56594  4B FF FA C9 */	bl Delete__18daTag_BottleItem_cFv
/* 80D56598  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5659C  7C 08 03 A6 */	mtlr r0
/* 80D565A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D565A4  4E 80 00 20 */	blr 
