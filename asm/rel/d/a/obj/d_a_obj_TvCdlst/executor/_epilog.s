lbl_80B9EC0C:
/* 80B9EC0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9EC10  7C 08 02 A6 */	mflr r0
/* 80B9EC14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9EC18  4B 6C 44 74 */	b ModuleEpilog
/* 80B9EC1C  3C 60 80 BA */	lis r3, __destroy_global_chain_reference@ha
/* 80B9EC20  38 63 F8 84 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80B9EC24  4B 6C 45 6C */	b ModuleDestructorsX
/* 80B9EC28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9EC2C  7C 08 03 A6 */	mtlr r0
/* 80B9EC30  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9EC34  4E 80 00 20 */	blr 
