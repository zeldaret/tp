lbl_80C5F56C:
/* 80C5F56C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5F570  7C 08 02 A6 */	mflr r0
/* 80C5F574  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5F578  4B 60 3B 14 */	b ModuleEpilog
/* 80C5F57C  3C 60 80 C6 */	lis r3, __destroy_global_chain_reference@ha
/* 80C5F580  38 63 FA 30 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C5F584  4B 60 3C 0C */	b ModuleDestructorsX
/* 80C5F588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5F58C  7C 08 03 A6 */	mtlr r0
/* 80C5F590  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5F594  4E 80 00 20 */	blr 
