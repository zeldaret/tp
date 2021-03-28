lbl_80C5DCEC:
/* 80C5DCEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5DCF0  7C 08 02 A6 */	mflr r0
/* 80C5DCF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5DCF8  4B 60 53 94 */	b ModuleEpilog
/* 80C5DCFC  3C 60 80 C6 */	lis r3, __destroy_global_chain_reference@ha
/* 80C5DD00  38 63 E8 D0 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C5DD04  4B 60 54 8C */	b ModuleDestructorsX
/* 80C5DD08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5DD0C  7C 08 03 A6 */	mtlr r0
/* 80C5DD10  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5DD14  4E 80 00 20 */	blr 
