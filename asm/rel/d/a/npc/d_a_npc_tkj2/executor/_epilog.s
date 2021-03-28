lbl_80B10D2C:
/* 80B10D2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B10D30  7C 08 02 A6 */	mflr r0
/* 80B10D34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B10D38  4B 75 23 54 */	b ModuleEpilog
/* 80B10D3C  3C 60 80 B1 */	lis r3, __destroy_global_chain_reference@ha
/* 80B10D40  38 63 42 D0 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80B10D44  4B 75 24 4C */	b ModuleDestructorsX
/* 80B10D48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B10D4C  7C 08 03 A6 */	mtlr r0
/* 80B10D50  38 21 00 10 */	addi r1, r1, 0x10
/* 80B10D54  4E 80 00 20 */	blr 
