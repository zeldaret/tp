lbl_80AEA78C:
/* 80AEA78C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEA790  7C 08 02 A6 */	mflr r0
/* 80AEA794  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEA798  4B 77 88 F4 */	b ModuleEpilog
/* 80AEA79C  3C 60 80 AF */	lis r3, data_80AEBBD0@ha
/* 80AEA7A0  38 63 BB D0 */	addi r3, r3, data_80AEBBD0@l
/* 80AEA7A4  4B 77 89 EC */	b ModuleDestructorsX
/* 80AEA7A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEA7AC  7C 08 03 A6 */	mtlr r0
/* 80AEA7B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEA7B4  4E 80 00 20 */	blr 
