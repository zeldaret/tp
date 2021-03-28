lbl_80C3D54C:
/* 80C3D54C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3D550  7C 08 02 A6 */	mflr r0
/* 80C3D554  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3D558  4B 62 5B 34 */	b ModuleEpilog
/* 80C3D55C  3C 60 80 C4 */	lis r3, __destroy_global_chain_reference@ha
/* 80C3D560  38 63 F0 4C */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C3D564  4B 62 5C 2C */	b ModuleDestructorsX
/* 80C3D568  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3D56C  7C 08 03 A6 */	mtlr r0
/* 80C3D570  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3D574  4E 80 00 20 */	blr 
