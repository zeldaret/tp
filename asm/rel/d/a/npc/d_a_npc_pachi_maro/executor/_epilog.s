lbl_80A97BCC:
/* 80A97BCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A97BD0  7C 08 02 A6 */	mflr r0
/* 80A97BD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A97BD8  4B 7C B4 B4 */	b ModuleEpilog
/* 80A97BDC  3C 60 80 AA */	lis r3, __destroy_global_chain_reference@ha
/* 80A97BE0  38 63 B8 80 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80A97BE4  4B 7C B5 AC */	b ModuleDestructorsX
/* 80A97BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A97BEC  7C 08 03 A6 */	mtlr r0
/* 80A97BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A97BF4  4E 80 00 20 */	blr 
