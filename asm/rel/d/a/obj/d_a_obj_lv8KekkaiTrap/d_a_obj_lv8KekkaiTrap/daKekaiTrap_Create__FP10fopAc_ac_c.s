lbl_80C88418:
/* 80C88418  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8841C  7C 08 02 A6 */	mflr r0
/* 80C88420  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C88424  4B FF FA 25 */	bl create__13daKekaiTrap_cFv
/* 80C88428  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8842C  7C 08 03 A6 */	mtlr r0
/* 80C88430  38 21 00 10 */	addi r1, r1, 0x10
/* 80C88434  4E 80 00 20 */	blr 
