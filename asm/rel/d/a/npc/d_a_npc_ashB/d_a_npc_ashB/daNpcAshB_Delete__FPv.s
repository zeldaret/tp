lbl_809609C8:
/* 809609C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809609CC  7C 08 02 A6 */	mflr r0
/* 809609D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809609D4  4B FF DF 41 */	bl Delete__11daNpcAshB_cFv
/* 809609D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809609DC  7C 08 03 A6 */	mtlr r0
/* 809609E0  38 21 00 10 */	addi r1, r1, 0x10
/* 809609E4  4E 80 00 20 */	blr 
