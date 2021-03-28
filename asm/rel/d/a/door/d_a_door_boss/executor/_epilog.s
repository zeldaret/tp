lbl_8066F3CC:
/* 8066F3CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8066F3D0  7C 08 02 A6 */	mflr r0
/* 8066F3D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8066F3D8  4B BF 3C B4 */	b ModuleEpilog
/* 8066F3DC  3C 60 80 67 */	lis r3, data_80670910@ha
/* 8066F3E0  38 63 09 10 */	addi r3, r3, data_80670910@l
/* 8066F3E4  4B BF 3D AC */	b ModuleDestructorsX
/* 8066F3E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8066F3EC  7C 08 03 A6 */	mtlr r0
/* 8066F3F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8066F3F4  4E 80 00 20 */	blr 
