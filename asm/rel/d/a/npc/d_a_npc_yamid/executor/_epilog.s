lbl_80B42E8C:
/* 80B42E8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B42E90  7C 08 02 A6 */	mflr r0
/* 80B42E94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B42E98  4B 72 01 F4 */	b ModuleEpilog
/* 80B42E9C  3C 60 80 B4 */	lis r3, __destroy_global_chain_reference@ha
/* 80B42EA0  38 63 60 40 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80B42EA4  4B 72 02 EC */	b ModuleDestructorsX
/* 80B42EA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B42EAC  7C 08 03 A6 */	mtlr r0
/* 80B42EB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B42EB4  4E 80 00 20 */	blr 
