lbl_80C73E4C:
/* 80C73E4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C73E50  7C 08 02 A6 */	mflr r0
/* 80C73E54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C73E58  4B 5E F2 34 */	b ModuleEpilog
/* 80C73E5C  3C 60 80 C7 */	lis r3, __destroy_global_chain_reference@ha
/* 80C73E60  38 63 55 18 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C73E64  4B 5E F3 2C */	b ModuleDestructorsX
/* 80C73E68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C73E6C  7C 08 03 A6 */	mtlr r0
/* 80C73E70  38 21 00 10 */	addi r1, r1, 0x10
/* 80C73E74  4E 80 00 20 */	blr 
