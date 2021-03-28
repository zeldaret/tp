lbl_80C1744C:
/* 80C1744C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C17450  7C 08 02 A6 */	mflr r0
/* 80C17454  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C17458  4B 64 BC 34 */	b ModuleEpilog
/* 80C1745C  3C 60 80 C2 */	lis r3, data_80C180B4@ha
/* 80C17460  38 63 80 B4 */	addi r3, r3, data_80C180B4@l
/* 80C17464  4B 64 BD 2C */	b ModuleDestructorsX
/* 80C17468  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1746C  7C 08 03 A6 */	mtlr r0
/* 80C17470  38 21 00 10 */	addi r1, r1, 0x10
/* 80C17474  4E 80 00 20 */	blr 
