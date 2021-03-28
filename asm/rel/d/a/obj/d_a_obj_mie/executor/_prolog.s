lbl_80C93EE0:
/* 80C93EE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C93EE4  7C 08 02 A6 */	mflr r0
/* 80C93EE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C93EEC  3C 60 80 C9 */	lis r3, data_80C95A98@ha
/* 80C93EF0  38 63 5A 98 */	addi r3, r3, data_80C95A98@l
/* 80C93EF4  4B 5C F2 58 */	b ModuleConstructorsX
/* 80C93EF8  4B 5C F1 90 */	b ModuleProlog
/* 80C93EFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C93F00  7C 08 03 A6 */	mtlr r0
/* 80C93F04  38 21 00 10 */	addi r1, r1, 0x10
/* 80C93F08  4E 80 00 20 */	blr 
