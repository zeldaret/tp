lbl_8054F2EC:
/* 8054F2EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054F2F0  7C 08 02 A6 */	mflr r0
/* 8054F2F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054F2F8  4B D1 3D 94 */	b ModuleEpilog
/* 8054F2FC  3C 60 80 55 */	lis r3, __destroy_global_chain_reference@ha
/* 8054F300  38 63 34 84 */	addi r3, r3, __destroy_global_chain_reference@l
/* 8054F304  4B D1 3E 8C */	b ModuleDestructorsX
/* 8054F308  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054F30C  7C 08 03 A6 */	mtlr r0
/* 8054F310  38 21 00 10 */	addi r1, r1, 0x10
/* 8054F314  4E 80 00 20 */	blr 
