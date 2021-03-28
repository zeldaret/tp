lbl_80499BAC:
/* 80499BAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80499BB0  7C 08 02 A6 */	mflr r0
/* 80499BB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80499BB8  4B DC 94 D4 */	b ModuleEpilog
/* 80499BBC  3C 60 80 4A */	lis r3, __destroy_global_chain_reference@ha
/* 80499BC0  38 63 DC 78 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80499BC4  4B DC 95 CC */	b ModuleDestructorsX
/* 80499BC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80499BCC  7C 08 03 A6 */	mtlr r0
/* 80499BD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80499BD4  4E 80 00 20 */	blr 
