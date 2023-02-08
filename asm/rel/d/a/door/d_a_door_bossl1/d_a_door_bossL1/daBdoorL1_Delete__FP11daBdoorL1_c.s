lbl_804E499C:
/* 804E499C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E49A0  7C 08 02 A6 */	mflr r0
/* 804E49A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E49A8  4B FF FF 15 */	bl Delete__11daBdoorL1_cFv
/* 804E49AC  38 60 00 01 */	li r3, 1
/* 804E49B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E49B4  7C 08 03 A6 */	mtlr r0
/* 804E49B8  38 21 00 10 */	addi r1, r1, 0x10
/* 804E49BC  4E 80 00 20 */	blr 
