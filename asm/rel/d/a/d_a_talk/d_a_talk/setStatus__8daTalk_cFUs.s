lbl_80D66664:
/* 80D66664  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D66668  7C 08 02 A6 */	mflr r0
/* 80D6666C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D66670  7C 83 23 78 */	mr r3, r4
/* 80D66674  4B 4D 1B 89 */	bl setStatus__12dMsgObject_cFUs
/* 80D66678  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D6667C  7C 08 03 A6 */	mtlr r0
/* 80D66680  38 21 00 10 */	addi r1, r1, 0x10
/* 80D66684  4E 80 00 20 */	blr 
