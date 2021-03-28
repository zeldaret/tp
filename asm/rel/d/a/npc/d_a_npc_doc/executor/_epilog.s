lbl_809A6BCC:
/* 809A6BCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A6BD0  7C 08 02 A6 */	mflr r0
/* 809A6BD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A6BD8  4B 8B C4 B4 */	b ModuleEpilog
/* 809A6BDC  3C 60 80 9B */	lis r3, __destroy_global_chain_reference@ha
/* 809A6BE0  38 63 A3 10 */	addi r3, r3, __destroy_global_chain_reference@l
/* 809A6BE4  4B 8B C5 AC */	b ModuleDestructorsX
/* 809A6BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A6BEC  7C 08 03 A6 */	mtlr r0
/* 809A6BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 809A6BF4  4E 80 00 20 */	blr 
