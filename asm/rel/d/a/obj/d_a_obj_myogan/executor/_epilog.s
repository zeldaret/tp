lbl_80C9EAEC:
/* 80C9EAEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9EAF0  7C 08 02 A6 */	mflr r0
/* 80C9EAF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9EAF8  4B 5C 45 94 */	b ModuleEpilog
/* 80C9EAFC  3C 60 80 CA */	lis r3, __destroy_global_chain_reference@ha
/* 80C9EB00  38 63 F2 7C */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C9EB04  4B 5C 46 8C */	b ModuleDestructorsX
/* 80C9EB08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9EB0C  7C 08 03 A6 */	mtlr r0
/* 80C9EB10  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9EB14  4E 80 00 20 */	blr 
