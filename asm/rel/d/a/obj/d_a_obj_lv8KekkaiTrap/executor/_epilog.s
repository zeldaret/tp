lbl_80C87BEC:
/* 80C87BEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C87BF0  7C 08 02 A6 */	mflr r0
/* 80C87BF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C87BF8  4B 5D B4 94 */	b ModuleEpilog
/* 80C87BFC  3C 60 80 C9 */	lis r3, __destroy_global_chain_reference@ha
/* 80C87C00  38 63 84 D8 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C87C04  4B 5D B5 8C */	b ModuleDestructorsX
/* 80C87C08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C87C0C  7C 08 03 A6 */	mtlr r0
/* 80C87C10  38 21 00 10 */	addi r1, r1, 0x10
/* 80C87C14  4E 80 00 20 */	blr 
