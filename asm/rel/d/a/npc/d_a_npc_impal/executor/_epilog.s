lbl_80A0792C:
/* 80A0792C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A07930  7C 08 02 A6 */	mflr r0
/* 80A07934  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A07938  4B 85 B7 54 */	b ModuleEpilog
/* 80A0793C  3C 60 80 A1 */	lis r3, __destroy_global_chain_reference@ha
/* 80A07940  38 63 C2 64 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80A07944  4B 85 B8 4C */	b ModuleDestructorsX
/* 80A07948  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0794C  7C 08 03 A6 */	mtlr r0
/* 80A07950  38 21 00 10 */	addi r1, r1, 0x10
/* 80A07954  4E 80 00 20 */	blr 
