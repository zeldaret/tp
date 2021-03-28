lbl_80D0870C:
/* 80D0870C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D08710  7C 08 02 A6 */	mflr r0
/* 80D08714  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D08718  4B 55 A9 74 */	b ModuleEpilog
/* 80D0871C  3C 60 80 D1 */	lis r3, __destroy_global_chain_reference@ha
/* 80D08720  38 63 B8 E4 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80D08724  4B 55 AA 6C */	b ModuleDestructorsX
/* 80D08728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0872C  7C 08 03 A6 */	mtlr r0
/* 80D08730  38 21 00 10 */	addi r1, r1, 0x10
/* 80D08734  4E 80 00 20 */	blr 
