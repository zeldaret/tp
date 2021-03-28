lbl_80D39DEC:
/* 80D39DEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D39DF0  7C 08 02 A6 */	mflr r0
/* 80D39DF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D39DF8  4B 52 92 94 */	b ModuleEpilog
/* 80D39DFC  3C 60 80 D4 */	lis r3, data_80D3B634@ha
/* 80D39E00  38 63 B6 34 */	addi r3, r3, data_80D3B634@l
/* 80D39E04  4B 52 93 8C */	b ModuleDestructorsX
/* 80D39E08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D39E0C  7C 08 03 A6 */	mtlr r0
/* 80D39E10  38 21 00 10 */	addi r1, r1, 0x10
/* 80D39E14  4E 80 00 20 */	blr 
