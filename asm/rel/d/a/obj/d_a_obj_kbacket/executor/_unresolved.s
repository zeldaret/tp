lbl_80585DB8:
/* 80585DB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80585DBC  7C 08 02 A6 */	mflr r0
/* 80585DC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80585DC4  4B CD D2 CC */	b ModuleUnresolved
/* 80585DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80585DCC  7C 08 03 A6 */	mtlr r0
/* 80585DD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80585DD4  4E 80 00 20 */	blr 
