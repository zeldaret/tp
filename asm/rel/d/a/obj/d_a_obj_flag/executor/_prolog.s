lbl_80BEB700:
/* 80BEB700  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEB704  7C 08 02 A6 */	mflr r0
/* 80BEB708  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEB70C  3C 60 80 BF */	lis r3, data_80BEC4E4@ha
/* 80BEB710  38 63 C4 E4 */	addi r3, r3, data_80BEC4E4@l
/* 80BEB714  4B 67 7A 38 */	b ModuleConstructorsX
/* 80BEB718  4B 67 79 70 */	b ModuleProlog
/* 80BEB71C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEB720  7C 08 03 A6 */	mtlr r0
/* 80BEB724  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEB728  4E 80 00 20 */	blr 
