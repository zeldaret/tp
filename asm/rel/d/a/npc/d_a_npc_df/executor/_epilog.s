lbl_809A52CC:
/* 809A52CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A52D0  7C 08 02 A6 */	mflr r0
/* 809A52D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A52D8  4B 8B DD B4 */	b ModuleEpilog
/* 809A52DC  3C 60 80 9A */	lis r3, __destroy_global_chain_reference@ha
/* 809A52E0  38 63 68 98 */	addi r3, r3, __destroy_global_chain_reference@l
/* 809A52E4  4B 8B DE AC */	b ModuleDestructorsX
/* 809A52E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A52EC  7C 08 03 A6 */	mtlr r0
/* 809A52F0  38 21 00 10 */	addi r1, r1, 0x10
/* 809A52F4  4E 80 00 20 */	blr 
