lbl_807EFE0C:
/* 807EFE0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807EFE10  7C 08 02 A6 */	mflr r0
/* 807EFE14  90 01 00 14 */	stw r0, 0x14(r1)
/* 807EFE18  4B A7 32 74 */	b ModuleEpilog
/* 807EFE1C  3C 60 80 7F */	lis r3, __destroy_global_chain_reference@ha
/* 807EFE20  38 63 28 58 */	addi r3, r3, __destroy_global_chain_reference@l
/* 807EFE24  4B A7 33 6C */	b ModuleDestructorsX
/* 807EFE28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807EFE2C  7C 08 03 A6 */	mtlr r0
/* 807EFE30  38 21 00 10 */	addi r1, r1, 0x10
/* 807EFE34  4E 80 00 20 */	blr 
