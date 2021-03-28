lbl_80C6B36C:
/* 80C6B36C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6B370  7C 08 02 A6 */	mflr r0
/* 80C6B374  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6B378  4B 5F 7D 14 */	b ModuleEpilog
/* 80C6B37C  3C 60 80 C7 */	lis r3, __destroy_global_chain_reference@ha
/* 80C6B380  38 63 C6 34 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C6B384  4B 5F 7E 0C */	b ModuleDestructorsX
/* 80C6B388  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6B38C  7C 08 03 A6 */	mtlr r0
/* 80C6B390  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6B394  4E 80 00 20 */	blr 
