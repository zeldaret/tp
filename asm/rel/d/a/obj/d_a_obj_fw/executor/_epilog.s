lbl_80BF1F8C:
/* 80BF1F8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF1F90  7C 08 02 A6 */	mflr r0
/* 80BF1F94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF1F98  4B 67 10 F4 */	b ModuleEpilog
/* 80BF1F9C  3C 60 80 BF */	lis r3, __destroy_global_chain_reference@ha
/* 80BF1FA0  38 63 2B 3C */	addi r3, r3, __destroy_global_chain_reference@l
/* 80BF1FA4  4B 67 11 EC */	b ModuleDestructorsX
/* 80BF1FA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF1FAC  7C 08 03 A6 */	mtlr r0
/* 80BF1FB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF1FB4  4E 80 00 20 */	blr 
