lbl_80C92E0C:
/* 80C92E0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C92E10  7C 08 02 A6 */	mflr r0
/* 80C92E14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C92E18  4B 5D 02 74 */	b ModuleEpilog
/* 80C92E1C  3C 60 80 C9 */	lis r3, data_80C93D84@ha
/* 80C92E20  38 63 3D 84 */	addi r3, r3, data_80C93D84@l
/* 80C92E24  4B 5D 03 6C */	b ModuleDestructorsX
/* 80C92E28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C92E2C  7C 08 03 A6 */	mtlr r0
/* 80C92E30  38 21 00 10 */	addi r1, r1, 0x10
/* 80C92E34  4E 80 00 20 */	blr 
