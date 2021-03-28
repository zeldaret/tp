lbl_80D17AAC:
/* 80D17AAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D17AB0  7C 08 02 A6 */	mflr r0
/* 80D17AB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D17AB8  4B 54 B5 D4 */	b ModuleEpilog
/* 80D17ABC  3C 60 80 D2 */	lis r3, __destroy_global_chain_reference@ha
/* 80D17AC0  38 63 8E 8C */	addi r3, r3, __destroy_global_chain_reference@l
/* 80D17AC4  4B 54 B6 CC */	b ModuleDestructorsX
/* 80D17AC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D17ACC  7C 08 03 A6 */	mtlr r0
/* 80D17AD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D17AD4  4E 80 00 20 */	blr 
