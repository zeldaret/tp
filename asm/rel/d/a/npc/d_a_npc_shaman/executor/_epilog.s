lbl_80AE2D0C:
/* 80AE2D0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE2D10  7C 08 02 A6 */	mflr r0
/* 80AE2D14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE2D18  4B 78 03 74 */	b ModuleEpilog
/* 80AE2D1C  3C 60 80 AE */	lis r3, __destroy_global_chain_reference@ha
/* 80AE2D20  38 63 6B BC */	addi r3, r3, __destroy_global_chain_reference@l
/* 80AE2D24  4B 78 04 6C */	b ModuleDestructorsX
/* 80AE2D28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE2D2C  7C 08 03 A6 */	mtlr r0
/* 80AE2D30  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE2D34  4E 80 00 20 */	blr 
