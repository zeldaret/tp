lbl_807BA4AC:
/* 807BA4AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BA4B0  7C 08 02 A6 */	mflr r0
/* 807BA4B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BA4B8  4B AA 8B D4 */	b ModuleEpilog
/* 807BA4BC  3C 60 80 7C */	lis r3, __destroy_global_chain_reference@ha
/* 807BA4C0  38 63 BD 9C */	addi r3, r3, __destroy_global_chain_reference@l
/* 807BA4C4  4B AA 8C CC */	b ModuleDestructorsX
/* 807BA4C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BA4CC  7C 08 03 A6 */	mtlr r0
/* 807BA4D0  38 21 00 10 */	addi r1, r1, 0x10
/* 807BA4D4  4E 80 00 20 */	blr 
