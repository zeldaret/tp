lbl_80AEBE0C:
/* 80AEBE0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEBE10  7C 08 02 A6 */	mflr r0
/* 80AEBE14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEBE18  4B 77 72 74 */	b ModuleEpilog
/* 80AEBE1C  3C 60 80 AF */	lis r3, data_80AEC914@ha
/* 80AEBE20  38 63 C9 14 */	addi r3, r3, data_80AEC914@l
/* 80AEBE24  4B 77 73 6C */	b ModuleDestructorsX
/* 80AEBE28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEBE2C  7C 08 03 A6 */	mtlr r0
/* 80AEBE30  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEBE34  4E 80 00 20 */	blr 
