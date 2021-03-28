lbl_80CD856C:
/* 80CD856C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD8570  7C 08 02 A6 */	mflr r0
/* 80CD8574  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD8578  4B 58 AB 14 */	b ModuleEpilog
/* 80CD857C  3C 60 80 CE */	lis r3, data_80CD958C@ha
/* 80CD8580  38 63 95 8C */	addi r3, r3, data_80CD958C@l
/* 80CD8584  4B 58 AC 0C */	b ModuleDestructorsX
/* 80CD8588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD858C  7C 08 03 A6 */	mtlr r0
/* 80CD8590  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD8594  4E 80 00 20 */	blr 
