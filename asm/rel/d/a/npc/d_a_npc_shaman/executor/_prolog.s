lbl_80AE2CE0:
/* 80AE2CE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE2CE4  7C 08 02 A6 */	mflr r0
/* 80AE2CE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE2CEC  3C 60 80 AE */	lis r3, data_80AE6BB4@ha
/* 80AE2CF0  38 63 6B B4 */	addi r3, r3, data_80AE6BB4@l
/* 80AE2CF4  4B 78 04 58 */	b ModuleConstructorsX
/* 80AE2CF8  4B 78 03 90 */	b ModuleProlog
/* 80AE2CFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE2D00  7C 08 03 A6 */	mtlr r0
/* 80AE2D04  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE2D08  4E 80 00 20 */	blr 
