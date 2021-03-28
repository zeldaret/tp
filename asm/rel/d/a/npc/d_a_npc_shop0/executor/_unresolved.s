lbl_80AEA7B8:
/* 80AEA7B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEA7BC  7C 08 02 A6 */	mflr r0
/* 80AEA7C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEA7C4  4B 77 88 CC */	b ModuleUnresolved
/* 80AEA7C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEA7CC  7C 08 03 A6 */	mtlr r0
/* 80AEA7D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEA7D4  4E 80 00 20 */	blr 
