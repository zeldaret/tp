lbl_80BF064C:
/* 80BF064C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF0650  7C 08 02 A6 */	mflr r0
/* 80BF0654  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF0658  4B 67 2A 34 */	b ModuleEpilog
/* 80BF065C  3C 60 80 BF */	lis r3, __destroy_global_chain_reference@ha
/* 80BF0660  38 63 1D 84 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80BF0664  4B 67 2B 2C */	b ModuleDestructorsX
/* 80BF0668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF066C  7C 08 03 A6 */	mtlr r0
/* 80BF0670  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF0674  4E 80 00 20 */	blr 
