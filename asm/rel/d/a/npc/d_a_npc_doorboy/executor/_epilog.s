lbl_809AABCC:
/* 809AABCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AABD0  7C 08 02 A6 */	mflr r0
/* 809AABD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AABD8  4B 8B 84 B4 */	b ModuleEpilog
/* 809AABDC  3C 60 80 9B */	lis r3, __destroy_global_chain_reference@ha
/* 809AABE0  38 63 D9 9C */	addi r3, r3, __destroy_global_chain_reference@l
/* 809AABE4  4B 8B 85 AC */	b ModuleDestructorsX
/* 809AABE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AABEC  7C 08 03 A6 */	mtlr r0
/* 809AABF0  38 21 00 10 */	addi r1, r1, 0x10
/* 809AABF4  4E 80 00 20 */	blr 
