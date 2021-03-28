lbl_80C753CC:
/* 80C753CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C753D0  7C 08 02 A6 */	mflr r0
/* 80C753D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C753D8  4B FF EE C5 */	bl create__13daLv6SwGate_cFv
/* 80C753DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C753E0  7C 08 03 A6 */	mtlr r0
/* 80C753E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C753E8  4E 80 00 20 */	blr 
