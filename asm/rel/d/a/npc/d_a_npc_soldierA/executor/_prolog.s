lbl_80AEF4A0:
/* 80AEF4A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEF4A4  7C 08 02 A6 */	mflr r0
/* 80AEF4A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEF4AC  3C 60 80 AF */	lis r3, data_80AF26D4@ha
/* 80AEF4B0  38 63 26 D4 */	addi r3, r3, data_80AF26D4@l
/* 80AEF4B4  4B 77 3C 98 */	b ModuleConstructorsX
/* 80AEF4B8  4B 77 3B D0 */	b ModuleProlog
/* 80AEF4BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEF4C0  7C 08 03 A6 */	mtlr r0
/* 80AEF4C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEF4C8  4E 80 00 20 */	blr 
