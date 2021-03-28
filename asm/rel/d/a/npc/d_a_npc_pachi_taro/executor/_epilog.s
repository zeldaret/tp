lbl_80A9C1CC:
/* 80A9C1CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9C1D0  7C 08 02 A6 */	mflr r0
/* 80A9C1D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9C1D8  4B 7C 6E B4 */	b ModuleEpilog
/* 80A9C1DC  3C 60 80 AA */	lis r3, __destroy_global_chain_reference@ha
/* 80A9C1E0  38 63 15 F8 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80A9C1E4  4B 7C 6F AC */	b ModuleDestructorsX
/* 80A9C1E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9C1EC  7C 08 03 A6 */	mtlr r0
/* 80A9C1F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9C1F4  4E 80 00 20 */	blr 
