lbl_80BA562C:
/* 80BA562C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA5630  7C 08 02 A6 */	mflr r0
/* 80BA5634  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA5638  4B 6B DA 54 */	b ModuleEpilog
/* 80BA563C  3C 60 80 BA */	lis r3, __destroy_global_chain_reference@ha
/* 80BA5640  38 63 6C 04 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80BA5644  4B 6B DB 4C */	b ModuleDestructorsX
/* 80BA5648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA564C  7C 08 03 A6 */	mtlr r0
/* 80BA5650  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA5654  4E 80 00 20 */	blr 
