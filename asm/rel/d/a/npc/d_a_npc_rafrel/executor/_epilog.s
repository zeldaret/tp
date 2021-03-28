lbl_80AB956C:
/* 80AB956C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB9570  7C 08 02 A6 */	mflr r0
/* 80AB9574  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB9578  4B 7A 9B 14 */	b ModuleEpilog
/* 80AB957C  3C 60 80 AC */	lis r3, __destroy_global_chain_reference@ha
/* 80AB9580  38 63 F9 D4 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80AB9584  4B 7A 9C 0C */	b ModuleDestructorsX
/* 80AB9588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB958C  7C 08 03 A6 */	mtlr r0
/* 80AB9590  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB9594  4E 80 00 20 */	blr 
