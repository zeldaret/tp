lbl_80CB19AC:
/* 80CB19AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB19B0  7C 08 02 A6 */	mflr r0
/* 80CB19B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB19B8  4B 5B 16 D4 */	b ModuleEpilog
/* 80CB19BC  3C 60 80 CB */	lis r3, __destroy_global_chain_reference@ha
/* 80CB19C0  38 63 26 AC */	addi r3, r3, __destroy_global_chain_reference@l
/* 80CB19C4  4B 5B 17 CC */	b ModuleDestructorsX
/* 80CB19C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB19CC  7C 08 03 A6 */	mtlr r0
/* 80CB19D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB19D4  4E 80 00 20 */	blr 
