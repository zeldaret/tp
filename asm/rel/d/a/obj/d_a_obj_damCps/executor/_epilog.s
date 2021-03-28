lbl_80BDA40C:
/* 80BDA40C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDA410  7C 08 02 A6 */	mflr r0
/* 80BDA414  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDA418  4B 68 8C 74 */	b ModuleEpilog
/* 80BDA41C  3C 60 80 BE */	lis r3, data_80BDA45C@ha
/* 80BDA420  38 63 A4 5C */	addi r3, r3, data_80BDA45C@l
/* 80BDA424  4B 68 8D 6C */	b ModuleDestructorsX
/* 80BDA428  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDA42C  7C 08 03 A6 */	mtlr r0
/* 80BDA430  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDA434  4E 80 00 20 */	blr 
