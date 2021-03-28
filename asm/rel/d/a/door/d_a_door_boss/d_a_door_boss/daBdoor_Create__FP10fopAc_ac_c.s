lbl_806708DC:
/* 806708DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806708E0  7C 08 02 A6 */	mflr r0
/* 806708E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806708E8  4B FF EF FD */	bl create__9daBdoor_cFv
/* 806708EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806708F0  7C 08 03 A6 */	mtlr r0
/* 806708F4  38 21 00 10 */	addi r1, r1, 0x10
/* 806708F8  4E 80 00 20 */	blr 
