lbl_80B25978:
/* 80B25978  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2597C  7C 08 02 A6 */	mflr r0
/* 80B25980  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B25984  4B 73 D7 0C */	b ModuleUnresolved
/* 80B25988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2598C  7C 08 03 A6 */	mtlr r0
/* 80B25990  38 21 00 10 */	addi r1, r1, 0x10
/* 80B25994  4E 80 00 20 */	blr 
