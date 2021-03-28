lbl_8082214C:
/* 8082214C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80822150  7C 08 02 A6 */	mflr r0
/* 80822154  90 01 00 14 */	stw r0, 0x14(r1)
/* 80822158  4B A4 0F 34 */	b ModuleEpilog
/* 8082215C  3C 60 80 83 */	lis r3, __destroy_global_chain_reference@ha
/* 80822160  38 63 88 44 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80822164  4B A4 10 2C */	b ModuleDestructorsX
/* 80822168  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8082216C  7C 08 03 A6 */	mtlr r0
/* 80822170  38 21 00 10 */	addi r1, r1, 0x10
/* 80822174  4E 80 00 20 */	blr 
