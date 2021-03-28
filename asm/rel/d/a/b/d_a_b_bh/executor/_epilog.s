lbl_805AE1AC:
/* 805AE1AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AE1B0  7C 08 02 A6 */	mflr r0
/* 805AE1B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AE1B8  4B CB 4E D4 */	b ModuleEpilog
/* 805AE1BC  3C 60 80 5B */	lis r3, __destroy_global_chain_reference@ha
/* 805AE1C0  38 63 31 34 */	addi r3, r3, __destroy_global_chain_reference@l
/* 805AE1C4  4B CB 4F CC */	b ModuleDestructorsX
/* 805AE1C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AE1CC  7C 08 03 A6 */	mtlr r0
/* 805AE1D0  38 21 00 10 */	addi r1, r1, 0x10
/* 805AE1D4  4E 80 00 20 */	blr 
