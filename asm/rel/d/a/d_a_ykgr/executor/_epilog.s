lbl_805A83CC:
/* 805A83CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A83D0  7C 08 02 A6 */	mflr r0
/* 805A83D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A83D8  4B CB AC B4 */	b ModuleEpilog
/* 805A83DC  3C 60 80 5B */	lis r3, __destroy_global_chain_reference@ha
/* 805A83E0  38 63 8F B0 */	addi r3, r3, __destroy_global_chain_reference@l
/* 805A83E4  4B CB AD AC */	b ModuleDestructorsX
/* 805A83E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A83EC  7C 08 03 A6 */	mtlr r0
/* 805A83F0  38 21 00 10 */	addi r1, r1, 0x10
/* 805A83F4  4E 80 00 20 */	blr 
