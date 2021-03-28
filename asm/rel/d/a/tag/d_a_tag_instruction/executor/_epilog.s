lbl_80D59AAC:
/* 80D59AAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D59AB0  7C 08 02 A6 */	mflr r0
/* 80D59AB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D59AB8  4B 50 95 D4 */	b ModuleEpilog
/* 80D59ABC  3C 60 80 D6 */	lis r3, data_80D59B7C@ha
/* 80D59AC0  38 63 9B 7C */	addi r3, r3, data_80D59B7C@l
/* 80D59AC4  4B 50 96 CC */	b ModuleDestructorsX
/* 80D59AC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D59ACC  7C 08 03 A6 */	mtlr r0
/* 80D59AD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D59AD4  4E 80 00 20 */	blr 
