lbl_80D63C8C:
/* 80D63C8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D63C90  7C 08 02 A6 */	mflr r0
/* 80D63C94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D63C98  4B 4F F3 F4 */	b ModuleEpilog
/* 80D63C9C  3C 60 80 D6 */	lis r3, data_80D63E50@ha
/* 80D63CA0  38 63 3E 50 */	addi r3, r3, data_80D63E50@l
/* 80D63CA4  4B 4F F4 EC */	b ModuleDestructorsX
/* 80D63CA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D63CAC  7C 08 03 A6 */	mtlr r0
/* 80D63CB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D63CB4  4E 80 00 20 */	blr 
