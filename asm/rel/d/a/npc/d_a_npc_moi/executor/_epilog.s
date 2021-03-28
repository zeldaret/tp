lbl_80A73E8C:
/* 80A73E8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A73E90  7C 08 02 A6 */	mflr r0
/* 80A73E94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A73E98  4B 7E F1 F4 */	b ModuleEpilog
/* 80A73E9C  3C 60 80 A8 */	lis r3, __destroy_global_chain_reference@ha
/* 80A73EA0  38 63 AE E4 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80A73EA4  4B 7E F2 EC */	b ModuleDestructorsX
/* 80A73EA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A73EAC  7C 08 03 A6 */	mtlr r0
/* 80A73EB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A73EB4  4E 80 00 20 */	blr 
