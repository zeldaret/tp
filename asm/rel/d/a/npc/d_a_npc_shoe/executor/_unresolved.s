lbl_80AE78B8:
/* 80AE78B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE78BC  7C 08 02 A6 */	mflr r0
/* 80AE78C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE78C4  4B 77 B7 CC */	b ModuleUnresolved
/* 80AE78C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE78CC  7C 08 03 A6 */	mtlr r0
/* 80AE78D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE78D4  4E 80 00 20 */	blr 
