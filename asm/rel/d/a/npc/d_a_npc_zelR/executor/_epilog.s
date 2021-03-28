lbl_80B6ED6C:
/* 80B6ED6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6ED70  7C 08 02 A6 */	mflr r0
/* 80B6ED74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6ED78  4B 6F 43 14 */	b ModuleEpilog
/* 80B6ED7C  3C 60 80 B7 */	lis r3, __destroy_global_chain_reference@ha
/* 80B6ED80  38 63 1A D4 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80B6ED84  4B 6F 44 0C */	b ModuleDestructorsX
/* 80B6ED88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6ED8C  7C 08 03 A6 */	mtlr r0
/* 80B6ED90  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6ED94  4E 80 00 20 */	blr 
