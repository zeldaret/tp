lbl_80BA1438:
/* 80BA1438  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA143C  7C 08 02 A6 */	mflr r0
/* 80BA1440  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA1444  4B 6C 1C 4C */	b ModuleUnresolved
/* 80BA1448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA144C  7C 08 03 A6 */	mtlr r0
/* 80BA1450  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA1454  4E 80 00 20 */	blr 
