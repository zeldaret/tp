lbl_80C7332C:
/* 80C7332C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C73330  7C 08 02 A6 */	mflr r0
/* 80C73334  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C73338  4B 5E FD 54 */	b ModuleEpilog
/* 80C7333C  3C 60 80 C7 */	lis r3, __destroy_global_chain_reference@ha
/* 80C73340  38 63 3C B0 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C73344  4B 5E FE 4C */	b ModuleDestructorsX
/* 80C73348  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7334C  7C 08 03 A6 */	mtlr r0
/* 80C73350  38 21 00 10 */	addi r1, r1, 0x10
/* 80C73354  4E 80 00 20 */	blr 
