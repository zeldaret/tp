lbl_80C853AC:
/* 80C853AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C853B0  7C 08 02 A6 */	mflr r0
/* 80C853B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C853B8  4B 5D DC D4 */	b ModuleEpilog
/* 80C853BC  3C 60 80 C8 */	lis r3, __destroy_global_chain_reference@ha
/* 80C853C0  38 63 61 24 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C853C4  4B 5D DD CC */	b ModuleDestructorsX
/* 80C853C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C853CC  7C 08 03 A6 */	mtlr r0
/* 80C853D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C853D4  4E 80 00 20 */	blr 
