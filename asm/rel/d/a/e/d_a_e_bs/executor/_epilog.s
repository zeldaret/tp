lbl_8068E06C:
/* 8068E06C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068E070  7C 08 02 A6 */	mflr r0
/* 8068E074  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068E078  4B BD 50 14 */	b ModuleEpilog
/* 8068E07C  3C 60 80 69 */	lis r3, __destroy_global_chain_reference@ha
/* 8068E080  38 63 0D CC */	addi r3, r3, __destroy_global_chain_reference@l
/* 8068E084  4B BD 51 0C */	b ModuleDestructorsX
/* 8068E088  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8068E08C  7C 08 03 A6 */	mtlr r0
/* 8068E090  38 21 00 10 */	addi r1, r1, 0x10
/* 8068E094  4E 80 00 20 */	blr 
