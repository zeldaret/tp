lbl_80C110AC:
/* 80C110AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C110B0  7C 08 02 A6 */	mflr r0
/* 80C110B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C110B8  4B 65 1F D4 */	b ModuleEpilog
/* 80C110BC  3C 60 80 C1 */	lis r3, data_80C123B8@ha
/* 80C110C0  38 63 23 B8 */	addi r3, r3, data_80C123B8@l
/* 80C110C4  4B 65 20 CC */	b ModuleDestructorsX
/* 80C110C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C110CC  7C 08 03 A6 */	mtlr r0
/* 80C110D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C110D4  4E 80 00 20 */	blr 
