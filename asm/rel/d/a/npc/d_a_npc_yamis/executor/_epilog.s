lbl_80B464AC:
/* 80B464AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B464B0  7C 08 02 A6 */	mflr r0
/* 80B464B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B464B8  4B 71 CB D4 */	b ModuleEpilog
/* 80B464BC  3C 60 80 B5 */	lis r3, __destroy_global_chain_reference@ha
/* 80B464C0  38 63 96 A4 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80B464C4  4B 71 CC CC */	b ModuleDestructorsX
/* 80B464C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B464CC  7C 08 03 A6 */	mtlr r0
/* 80B464D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B464D4  4E 80 00 20 */	blr 
