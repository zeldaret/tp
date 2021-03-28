lbl_80A609DC:
/* 80A609DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A609E0  7C 08 02 A6 */	mflr r0
/* 80A609E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A609E8  4B 6E 7B 44 */	b execute__8daNpcT_cFv
/* 80A609EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A609F0  7C 08 03 A6 */	mtlr r0
/* 80A609F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A609F8  4E 80 00 20 */	blr 
