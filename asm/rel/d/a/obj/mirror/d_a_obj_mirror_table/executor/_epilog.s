lbl_80C998CC:
/* 80C998CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C998D0  7C 08 02 A6 */	mflr r0
/* 80C998D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C998D8  4B 5C 97 B4 */	b ModuleEpilog
/* 80C998DC  3C 60 80 CA */	lis r3, data_80C9B240@ha
/* 80C998E0  38 63 B2 40 */	addi r3, r3, data_80C9B240@l
/* 80C998E4  4B 5C 98 AC */	b ModuleDestructorsX
/* 80C998E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C998EC  7C 08 03 A6 */	mtlr r0
/* 80C998F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C998F4  4E 80 00 20 */	blr 
