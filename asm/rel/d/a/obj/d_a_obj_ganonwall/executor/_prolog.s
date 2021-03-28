lbl_80BF4C80:
/* 80BF4C80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF4C84  7C 08 02 A6 */	mflr r0
/* 80BF4C88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF4C8C  3C 60 80 BF */	lis r3, data_80BF55E4@ha
/* 80BF4C90  38 63 55 E4 */	addi r3, r3, data_80BF55E4@l
/* 80BF4C94  4B 66 E4 B8 */	b ModuleConstructorsX
/* 80BF4C98  4B 66 E3 F0 */	b ModuleProlog
/* 80BF4C9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF4CA0  7C 08 03 A6 */	mtlr r0
/* 80BF4CA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF4CA8  4E 80 00 20 */	blr 
