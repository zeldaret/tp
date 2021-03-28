lbl_80482C8C:
/* 80482C8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80482C90  7C 08 02 A6 */	mflr r0
/* 80482C94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80482C98  4B DE 03 F4 */	b ModuleEpilog
/* 80482C9C  3C 60 80 48 */	lis r3, __destroy_global_chain_reference@ha
/* 80482CA0  38 63 4D 04 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80482CA4  4B DE 04 EC */	b ModuleDestructorsX
/* 80482CA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80482CAC  7C 08 03 A6 */	mtlr r0
/* 80482CB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80482CB4  4E 80 00 20 */	blr 
