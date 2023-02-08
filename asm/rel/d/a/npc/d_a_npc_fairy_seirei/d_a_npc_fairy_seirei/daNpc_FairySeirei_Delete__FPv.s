lbl_80540E98:
/* 80540E98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80540E9C  7C 08 02 A6 */	mflr r0
/* 80540EA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80540EA4  4B FF F3 F5 */	bl Delete__19daNpc_FairySeirei_cFv
/* 80540EA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80540EAC  7C 08 03 A6 */	mtlr r0
/* 80540EB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80540EB4  4E 80 00 20 */	blr 
