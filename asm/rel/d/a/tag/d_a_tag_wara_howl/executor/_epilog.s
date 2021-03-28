lbl_80D63EEC:
/* 80D63EEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D63EF0  7C 08 02 A6 */	mflr r0
/* 80D63EF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D63EF8  4B 4F F1 94 */	b ModuleEpilog
/* 80D63EFC  3C 60 80 D6 */	lis r3, data_80D641FC@ha
/* 80D63F00  38 63 41 FC */	addi r3, r3, data_80D641FC@l
/* 80D63F04  4B 4F F2 8C */	b ModuleDestructorsX
/* 80D63F08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D63F0C  7C 08 03 A6 */	mtlr r0
/* 80D63F10  38 21 00 10 */	addi r1, r1, 0x10
/* 80D63F14  4E 80 00 20 */	blr 
