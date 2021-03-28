lbl_80D1F00C:
/* 80D1F00C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1F010  7C 08 02 A6 */	mflr r0
/* 80D1F014  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1F018  4B 54 40 74 */	b ModuleEpilog
/* 80D1F01C  3C 60 80 D2 */	lis r3, __destroy_global_chain_reference@ha
/* 80D1F020  38 63 F8 BC */	addi r3, r3, __destroy_global_chain_reference@l
/* 80D1F024  4B 54 41 6C */	b ModuleDestructorsX
/* 80D1F028  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1F02C  7C 08 03 A6 */	mtlr r0
/* 80D1F030  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1F034  4E 80 00 20 */	blr 
