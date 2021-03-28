lbl_80D5ACE0:
/* 80D5ACE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5ACE4  7C 08 02 A6 */	mflr r0
/* 80D5ACE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5ACEC  3C 60 80 D6 */	lis r3, data_80D5B154@ha
/* 80D5ACF0  38 63 B1 54 */	addi r3, r3, data_80D5B154@l
/* 80D5ACF4  4B 50 84 58 */	b ModuleConstructorsX
/* 80D5ACF8  4B 50 83 90 */	b ModuleProlog
/* 80D5ACFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5AD00  7C 08 03 A6 */	mtlr r0
/* 80D5AD04  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5AD08  4E 80 00 20 */	blr 
