lbl_80C282AC:
/* 80C282AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C282B0  7C 08 02 A6 */	mflr r0
/* 80C282B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C282B8  4B 63 AD D4 */	b ModuleEpilog
/* 80C282BC  3C 60 80 C3 */	lis r3, __destroy_global_chain_reference@ha
/* 80C282C0  38 63 92 2C */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C282C4  4B 63 AE CC */	b ModuleDestructorsX
/* 80C282C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C282CC  7C 08 03 A6 */	mtlr r0
/* 80C282D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C282D4  4E 80 00 20 */	blr 
