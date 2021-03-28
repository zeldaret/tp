lbl_80D2BACC:
/* 80D2BACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2BAD0  7C 08 02 A6 */	mflr r0
/* 80D2BAD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2BAD8  4B 53 75 B4 */	b ModuleEpilog
/* 80D2BADC  3C 60 80 D3 */	lis r3, __destroy_global_chain_reference@ha
/* 80D2BAE0  38 63 C4 60 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80D2BAE4  4B 53 76 AC */	b ModuleDestructorsX
/* 80D2BAE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2BAEC  7C 08 03 A6 */	mtlr r0
/* 80D2BAF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2BAF4  4E 80 00 20 */	blr 
