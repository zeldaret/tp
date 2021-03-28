lbl_80C79DB8:
/* 80C79DB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C79DBC  7C 08 02 A6 */	mflr r0
/* 80C79DC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C79DC4  4B 5E 92 CC */	b ModuleUnresolved
/* 80C79DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C79DCC  7C 08 03 A6 */	mtlr r0
/* 80C79DD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C79DD4  4E 80 00 20 */	blr 
