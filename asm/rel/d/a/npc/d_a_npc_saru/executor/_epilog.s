lbl_80AC036C:
/* 80AC036C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC0370  7C 08 02 A6 */	mflr r0
/* 80AC0374  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC0378  4B 7A 2D 14 */	b ModuleEpilog
/* 80AC037C  3C 60 80 AC */	lis r3, __destroy_global_chain_reference@ha
/* 80AC0380  38 63 44 EC */	addi r3, r3, __destroy_global_chain_reference@l
/* 80AC0384  4B 7A 2E 0C */	b ModuleDestructorsX
/* 80AC0388  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC038C  7C 08 03 A6 */	mtlr r0
/* 80AC0390  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC0394  4E 80 00 20 */	blr 
