lbl_80CC0B0C:
/* 80CC0B0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC0B10  7C 08 02 A6 */	mflr r0
/* 80CC0B14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC0B18  4B 5A 25 74 */	b ModuleEpilog
/* 80CC0B1C  3C 60 80 CC */	lis r3, data_80CC13FC@ha
/* 80CC0B20  38 63 13 FC */	addi r3, r3, data_80CC13FC@l
/* 80CC0B24  4B 5A 26 6C */	b ModuleDestructorsX
/* 80CC0B28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC0B2C  7C 08 03 A6 */	mtlr r0
/* 80CC0B30  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC0B34  4E 80 00 20 */	blr 
