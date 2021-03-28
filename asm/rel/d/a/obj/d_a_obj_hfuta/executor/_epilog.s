lbl_80C1DCCC:
/* 80C1DCCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1DCD0  7C 08 02 A6 */	mflr r0
/* 80C1DCD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1DCD8  4B 64 53 B4 */	b ModuleEpilog
/* 80C1DCDC  3C 60 80 C2 */	lis r3, __destroy_global_chain_reference@ha
/* 80C1DCE0  38 63 EE 6C */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C1DCE4  4B 64 54 AC */	b ModuleDestructorsX
/* 80C1DCE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1DCEC  7C 08 03 A6 */	mtlr r0
/* 80C1DCF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1DCF4  4E 80 00 20 */	blr 
