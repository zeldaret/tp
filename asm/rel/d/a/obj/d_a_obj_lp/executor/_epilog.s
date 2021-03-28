lbl_80C5414C:
/* 80C5414C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C54150  7C 08 02 A6 */	mflr r0
/* 80C54154  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C54158  4B 60 EF 34 */	b ModuleEpilog
/* 80C5415C  3C 60 80 C5 */	lis r3, data_80C55A0C@ha
/* 80C54160  38 63 5A 0C */	addi r3, r3, data_80C55A0C@l
/* 80C54164  4B 60 F0 2C */	b ModuleDestructorsX
/* 80C54168  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5416C  7C 08 03 A6 */	mtlr r0
/* 80C54170  38 21 00 10 */	addi r1, r1, 0x10
/* 80C54174  4E 80 00 20 */	blr 
