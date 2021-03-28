lbl_806B92CC:
/* 806B92CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B92D0  7C 08 02 A6 */	mflr r0
/* 806B92D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B92D8  4B BA 9D B4 */	b ModuleEpilog
/* 806B92DC  3C 60 80 6C */	lis r3, __destroy_global_chain_reference@ha
/* 806B92E0  38 63 B6 C4 */	addi r3, r3, __destroy_global_chain_reference@l
/* 806B92E4  4B BA 9E AC */	b ModuleDestructorsX
/* 806B92E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B92EC  7C 08 03 A6 */	mtlr r0
/* 806B92F0  38 21 00 10 */	addi r1, r1, 0x10
/* 806B92F4  4E 80 00 20 */	blr 
