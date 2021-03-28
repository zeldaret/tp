lbl_80B49B2C:
/* 80B49B2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B49B30  7C 08 02 A6 */	mflr r0
/* 80B49B34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B49B38  4B 71 95 54 */	b ModuleEpilog
/* 80B49B3C  3C 60 80 B5 */	lis r3, __destroy_global_chain_reference@ha
/* 80B49B40  38 63 CD 98 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80B49B44  4B 71 96 4C */	b ModuleDestructorsX
/* 80B49B48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B49B4C  7C 08 03 A6 */	mtlr r0
/* 80B49B50  38 21 00 10 */	addi r1, r1, 0x10
/* 80B49B54  4E 80 00 20 */	blr 
