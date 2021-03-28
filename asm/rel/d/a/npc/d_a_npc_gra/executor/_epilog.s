lbl_809BE88C:
/* 809BE88C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BE890  7C 08 02 A6 */	mflr r0
/* 809BE894  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BE898  4B 8A 47 F4 */	b ModuleEpilog
/* 809BE89C  3C 60 80 9D */	lis r3, __destroy_global_chain_reference@ha
/* 809BE8A0  38 63 9D 8C */	addi r3, r3, __destroy_global_chain_reference@l
/* 809BE8A4  4B 8A 48 EC */	b ModuleDestructorsX
/* 809BE8A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BE8AC  7C 08 03 A6 */	mtlr r0
/* 809BE8B0  38 21 00 10 */	addi r1, r1, 0x10
/* 809BE8B4  4E 80 00 20 */	blr 
