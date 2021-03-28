lbl_80CB0C8C:
/* 80CB0C8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB0C90  7C 08 02 A6 */	mflr r0
/* 80CB0C94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB0C98  4B 5B 23 F4 */	b ModuleEpilog
/* 80CB0C9C  3C 60 80 CB */	lis r3, __destroy_global_chain_reference@ha
/* 80CB0CA0  38 63 18 58 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80CB0CA4  4B 5B 24 EC */	b ModuleDestructorsX
/* 80CB0CA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB0CAC  7C 08 03 A6 */	mtlr r0
/* 80CB0CB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB0CB4  4E 80 00 20 */	blr 
