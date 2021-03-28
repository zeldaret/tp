lbl_80AEF4F8:
/* 80AEF4F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEF4FC  7C 08 02 A6 */	mflr r0
/* 80AEF500  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEF504  4B 77 3B 8C */	b ModuleUnresolved
/* 80AEF508  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEF50C  7C 08 03 A6 */	mtlr r0
/* 80AEF510  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEF514  4E 80 00 20 */	blr 
