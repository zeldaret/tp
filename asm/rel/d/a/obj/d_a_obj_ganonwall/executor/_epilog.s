lbl_80BF4CAC:
/* 80BF4CAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF4CB0  7C 08 02 A6 */	mflr r0
/* 80BF4CB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF4CB8  4B 66 E3 D4 */	b ModuleEpilog
/* 80BF4CBC  3C 60 80 BF */	lis r3, data_80BF55E8@ha
/* 80BF4CC0  38 63 55 E8 */	addi r3, r3, data_80BF55E8@l
/* 80BF4CC4  4B 66 E4 CC */	b ModuleDestructorsX
/* 80BF4CC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF4CCC  7C 08 03 A6 */	mtlr r0
/* 80BF4CD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF4CD4  4E 80 00 20 */	blr 
