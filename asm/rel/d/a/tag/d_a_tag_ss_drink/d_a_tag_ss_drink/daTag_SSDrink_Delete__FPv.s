lbl_80D636BC:
/* 80D636BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D636C0  7C 08 02 A6 */	mflr r0
/* 80D636C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D636C8  4B FF F7 95 */	bl Delete__15daTag_SSDrink_cFv
/* 80D636CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D636D0  7C 08 03 A6 */	mtlr r0
/* 80D636D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D636D8  4E 80 00 20 */	blr 
