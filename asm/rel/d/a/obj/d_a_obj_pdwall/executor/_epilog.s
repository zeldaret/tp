lbl_80CAC7AC:
/* 80CAC7AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAC7B0  7C 08 02 A6 */	mflr r0
/* 80CAC7B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAC7B8  4B 5B 68 D4 */	b ModuleEpilog
/* 80CAC7BC  3C 60 80 CB */	lis r3, data_80CAD1B4@ha
/* 80CAC7C0  38 63 D1 B4 */	addi r3, r3, data_80CAD1B4@l
/* 80CAC7C4  4B 5B 69 CC */	b ModuleDestructorsX
/* 80CAC7C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAC7CC  7C 08 03 A6 */	mtlr r0
/* 80CAC7D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAC7D4  4E 80 00 20 */	blr 
