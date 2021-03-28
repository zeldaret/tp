lbl_80C31A2C:
/* 80C31A2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C31A30  7C 08 02 A6 */	mflr r0
/* 80C31A34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C31A38  4B 63 16 54 */	b ModuleEpilog
/* 80C31A3C  3C 60 80 C3 */	lis r3, __destroy_global_chain_reference@ha
/* 80C31A40  38 63 3C 74 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C31A44  4B 63 17 4C */	b ModuleDestructorsX
/* 80C31A48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C31A4C  7C 08 03 A6 */	mtlr r0
/* 80C31A50  38 21 00 10 */	addi r1, r1, 0x10
/* 80C31A54  4E 80 00 20 */	blr 
