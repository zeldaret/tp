lbl_80BEC60C:
/* 80BEC60C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEC610  7C 08 02 A6 */	mflr r0
/* 80BEC614  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEC618  4B 67 6A 74 */	b ModuleEpilog
/* 80BEC61C  3C 60 80 BF */	lis r3, data_80BEE0D8@ha
/* 80BEC620  38 63 E0 D8 */	addi r3, r3, data_80BEE0D8@l
/* 80BEC624  4B 67 6B 6C */	b ModuleDestructorsX
/* 80BEC628  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEC62C  7C 08 03 A6 */	mtlr r0
/* 80BEC630  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEC634  4E 80 00 20 */	blr 
