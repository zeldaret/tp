lbl_80A6426C:
/* 80A6426C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A64270  7C 08 02 A6 */	mflr r0
/* 80A64274  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A64278  4B 7F EE 14 */	b ModuleEpilog
/* 80A6427C  3C 60 80 A7 */	lis r3, __destroy_global_chain_reference@ha
/* 80A64280  38 63 8E 98 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80A64284  4B 7F EF 0C */	b ModuleDestructorsX
/* 80A64288  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6428C  7C 08 03 A6 */	mtlr r0
/* 80A64290  38 21 00 10 */	addi r1, r1, 0x10
/* 80A64294  4E 80 00 20 */	blr 
