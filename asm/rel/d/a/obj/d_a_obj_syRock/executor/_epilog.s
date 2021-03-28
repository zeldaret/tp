lbl_80D021EC:
/* 80D021EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D021F0  7C 08 02 A6 */	mflr r0
/* 80D021F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D021F8  4B 56 0E 94 */	b ModuleEpilog
/* 80D021FC  3C 60 80 D0 */	lis r3, __destroy_global_chain_reference@ha
/* 80D02200  38 63 3F 84 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80D02204  4B 56 0F 8C */	b ModuleDestructorsX
/* 80D02208  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0220C  7C 08 03 A6 */	mtlr r0
/* 80D02210  38 21 00 10 */	addi r1, r1, 0x10
/* 80D02214  4E 80 00 20 */	blr 
