lbl_80C3F34C:
/* 80C3F34C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3F350  7C 08 02 A6 */	mflr r0
/* 80C3F354  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3F358  4B 62 3D 34 */	b ModuleEpilog
/* 80C3F35C  3C 60 80 C4 */	lis r3, __destroy_global_chain_reference@ha
/* 80C3F360  38 63 0F E0 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C3F364  4B 62 3E 2C */	b ModuleDestructorsX
/* 80C3F368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3F36C  7C 08 03 A6 */	mtlr r0
/* 80C3F370  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3F374  4E 80 00 20 */	blr 
