lbl_80540E78:
/* 80540E78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80540E7C  7C 08 02 A6 */	mflr r0
/* 80540E80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80540E84  4B FF F1 E9 */	bl create__19daNpc_FairySeirei_cFv
/* 80540E88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80540E8C  7C 08 03 A6 */	mtlr r0
/* 80540E90  38 21 00 10 */	addi r1, r1, 0x10
/* 80540E94  4E 80 00 20 */	blr 
