lbl_80B2F1CC:
/* 80B2F1CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2F1D0  7C 08 02 A6 */	mflr r0
/* 80B2F1D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2F1D8  4B 73 3E B4 */	b ModuleEpilog
/* 80B2F1DC  3C 60 80 B4 */	lis r3, __destroy_global_chain_reference@ha
/* 80B2F1E0  38 63 16 D0 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80B2F1E4  4B 73 3F AC */	b ModuleDestructorsX
/* 80B2F1E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2F1EC  7C 08 03 A6 */	mtlr r0
/* 80B2F1F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2F1F4  4E 80 00 20 */	blr 
