lbl_80BE756C:
/* 80BE756C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE7570  7C 08 02 A6 */	mflr r0
/* 80BE7574  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE7578  4B 67 BB 14 */	b ModuleEpilog
/* 80BE757C  3C 60 80 BE */	lis r3, __destroy_global_chain_reference@ha
/* 80BE7580  38 63 7F F8 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80BE7584  4B 67 BC 0C */	b ModuleDestructorsX
/* 80BE7588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE758C  7C 08 03 A6 */	mtlr r0
/* 80BE7590  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE7594  4E 80 00 20 */	blr 
