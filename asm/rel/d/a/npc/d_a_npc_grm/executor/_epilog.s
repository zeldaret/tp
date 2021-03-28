lbl_809D3FAC:
/* 809D3FAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D3FB0  7C 08 02 A6 */	mflr r0
/* 809D3FB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D3FB8  4B 88 F0 D4 */	b ModuleEpilog
/* 809D3FBC  3C 60 80 9D */	lis r3, __destroy_global_chain_reference@ha
/* 809D3FC0  38 63 6D 64 */	addi r3, r3, __destroy_global_chain_reference@l
/* 809D3FC4  4B 88 F1 CC */	b ModuleDestructorsX
/* 809D3FC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D3FCC  7C 08 03 A6 */	mtlr r0
/* 809D3FD0  38 21 00 10 */	addi r1, r1, 0x10
/* 809D3FD4  4E 80 00 20 */	blr 
