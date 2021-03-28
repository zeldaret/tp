lbl_80C757AC:
/* 80C757AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C757B0  7C 08 02 A6 */	mflr r0
/* 80C757B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C757B8  4B 5E D8 D4 */	b ModuleEpilog
/* 80C757BC  3C 60 80 C7 */	lis r3, __destroy_global_chain_reference@ha
/* 80C757C0  38 63 66 24 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C757C4  4B 5E D9 CC */	b ModuleDestructorsX
/* 80C757C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C757CC  7C 08 03 A6 */	mtlr r0
/* 80C757D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C757D4  4E 80 00 20 */	blr 
