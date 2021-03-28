lbl_80C90AAC:
/* 80C90AAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C90AB0  7C 08 02 A6 */	mflr r0
/* 80C90AB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C90AB8  4B 5D 25 D4 */	b ModuleEpilog
/* 80C90ABC  3C 60 80 C9 */	lis r3, data_80C9193C@ha
/* 80C90AC0  38 63 19 3C */	addi r3, r3, data_80C9193C@l
/* 80C90AC4  4B 5D 26 CC */	b ModuleDestructorsX
/* 80C90AC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C90ACC  7C 08 03 A6 */	mtlr r0
/* 80C90AD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C90AD4  4E 80 00 20 */	blr 
