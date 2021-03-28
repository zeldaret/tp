lbl_80C9B34C:
/* 80C9B34C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9B350  7C 08 02 A6 */	mflr r0
/* 80C9B354  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9B358  4B 5C 7D 34 */	b ModuleEpilog
/* 80C9B35C  3C 60 80 CA */	lis r3, __destroy_global_chain_reference@ha
/* 80C9B360  38 63 CD 40 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C9B364  4B 5C 7E 2C */	b ModuleDestructorsX
/* 80C9B368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9B36C  7C 08 03 A6 */	mtlr r0
/* 80C9B370  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9B374  4E 80 00 20 */	blr 
