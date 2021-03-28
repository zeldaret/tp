lbl_80BDD8AC:
/* 80BDD8AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDD8B0  7C 08 02 A6 */	mflr r0
/* 80BDD8B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDD8B8  4B 68 57 D4 */	b ModuleEpilog
/* 80BDD8BC  3C 60 80 BE */	lis r3, __destroy_global_chain_reference@ha
/* 80BDD8C0  38 63 F8 64 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80BDD8C4  4B 68 58 CC */	b ModuleDestructorsX
/* 80BDD8C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDD8CC  7C 08 03 A6 */	mtlr r0
/* 80BDD8D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDD8D4  4E 80 00 20 */	blr 
