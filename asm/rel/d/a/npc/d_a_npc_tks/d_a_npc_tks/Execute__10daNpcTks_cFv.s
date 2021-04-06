lbl_80B1540C:
/* 80B1540C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B15410  7C 08 02 A6 */	mflr r0
/* 80B15414  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B15418  4B 63 CB FD */	bl execute__8daNpcF_cFv
/* 80B1541C  38 60 00 01 */	li r3, 1
/* 80B15420  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B15424  7C 08 03 A6 */	mtlr r0
/* 80B15428  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1542C  4E 80 00 20 */	blr 
