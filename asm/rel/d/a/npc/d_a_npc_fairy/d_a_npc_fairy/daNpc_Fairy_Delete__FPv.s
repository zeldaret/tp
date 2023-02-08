lbl_809B7EF4:
/* 809B7EF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B7EF8  7C 08 02 A6 */	mflr r0
/* 809B7EFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B7F00  4B FF AF FD */	bl Delete__13daNpc_Fairy_cFv
/* 809B7F04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B7F08  7C 08 03 A6 */	mtlr r0
/* 809B7F0C  38 21 00 10 */	addi r1, r1, 0x10
/* 809B7F10  4E 80 00 20 */	blr 
