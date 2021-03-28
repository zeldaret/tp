lbl_80CCCF6C:
/* 80CCCF6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCCF70  7C 08 02 A6 */	mflr r0
/* 80CCCF74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCCF78  4B 59 61 14 */	b ModuleEpilog
/* 80CCCF7C  3C 60 80 CD */	lis r3, __destroy_global_chain_reference@ha
/* 80CCCF80  38 63 D9 FC */	addi r3, r3, __destroy_global_chain_reference@l
/* 80CCCF84  4B 59 62 0C */	b ModuleDestructorsX
/* 80CCCF88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCCF8C  7C 08 03 A6 */	mtlr r0
/* 80CCCF90  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCCF94  4E 80 00 20 */	blr 
