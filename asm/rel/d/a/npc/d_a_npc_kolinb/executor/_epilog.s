lbl_80A458CC:
/* 80A458CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A458D0  7C 08 02 A6 */	mflr r0
/* 80A458D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A458D8  4B 81 D7 B4 */	b ModuleEpilog
/* 80A458DC  3C 60 80 A5 */	lis r3, __destroy_global_chain_reference@ha
/* 80A458E0  38 63 87 04 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80A458E4  4B 81 D8 AC */	b ModuleDestructorsX
/* 80A458E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A458EC  7C 08 03 A6 */	mtlr r0
/* 80A458F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A458F4  4E 80 00 20 */	blr 
