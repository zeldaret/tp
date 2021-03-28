lbl_80B68E6C:
/* 80B68E6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B68E70  7C 08 02 A6 */	mflr r0
/* 80B68E74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B68E78  4B 6F A2 14 */	b ModuleEpilog
/* 80B68E7C  3C 60 80 B7 */	lis r3, __destroy_global_chain_reference@ha
/* 80B68E80  38 63 BC B8 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80B68E84  4B 6F A3 0C */	b ModuleDestructorsX
/* 80B68E88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B68E8C  7C 08 03 A6 */	mtlr r0
/* 80B68E90  38 21 00 10 */	addi r1, r1, 0x10
/* 80B68E94  4E 80 00 20 */	blr 
