lbl_80C91B0C:
/* 80C91B0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C91B10  7C 08 02 A6 */	mflr r0
/* 80C91B14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C91B18  4B 5D 15 74 */	b ModuleEpilog
/* 80C91B1C  3C 60 80 C9 */	lis r3, data_80C92C4C@ha
/* 80C91B20  38 63 2C 4C */	addi r3, r3, data_80C92C4C@l
/* 80C91B24  4B 5D 16 6C */	b ModuleDestructorsX
/* 80C91B28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C91B2C  7C 08 03 A6 */	mtlr r0
/* 80C91B30  38 21 00 10 */	addi r1, r1, 0x10
/* 80C91B34  4E 80 00 20 */	blr 
