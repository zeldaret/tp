lbl_80576A0C:
/* 80576A0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80576A10  7C 08 02 A6 */	mflr r0
/* 80576A14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80576A18  4B CE C6 74 */	b ModuleEpilog
/* 80576A1C  3C 60 80 58 */	lis r3, data_80578A84@ha
/* 80576A20  38 63 8A 84 */	addi r3, r3, data_80578A84@l
/* 80576A24  4B CE C7 6C */	b ModuleDestructorsX
/* 80576A28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80576A2C  7C 08 03 A6 */	mtlr r0
/* 80576A30  38 21 00 10 */	addi r1, r1, 0x10
/* 80576A34  4E 80 00 20 */	blr 
