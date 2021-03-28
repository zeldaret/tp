lbl_80CE80AC:
/* 80CE80AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE80B0  7C 08 02 A6 */	mflr r0
/* 80CE80B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE80B8  4B 57 AF D4 */	b ModuleEpilog
/* 80CE80BC  3C 60 80 CF */	lis r3, __destroy_global_chain_reference@ha
/* 80CE80C0  38 63 8D B0 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80CE80C4  4B 57 B0 CC */	b ModuleDestructorsX
/* 80CE80C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE80CC  7C 08 03 A6 */	mtlr r0
/* 80CE80D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE80D4  4E 80 00 20 */	blr 
