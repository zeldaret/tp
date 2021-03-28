lbl_80D5DA0C:
/* 80D5DA0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5DA10  7C 08 02 A6 */	mflr r0
/* 80D5DA14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5DA18  4B 50 56 74 */	b ModuleEpilog
/* 80D5DA1C  3C 60 80 D6 */	lis r3, __destroy_global_chain_reference@ha
/* 80D5DA20  38 63 DD 50 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80D5DA24  4B 50 57 6C */	b ModuleDestructorsX
/* 80D5DA28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5DA2C  7C 08 03 A6 */	mtlr r0
/* 80D5DA30  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5DA34  4E 80 00 20 */	blr 
