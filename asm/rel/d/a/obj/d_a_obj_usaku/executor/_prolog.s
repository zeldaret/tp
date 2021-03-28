lbl_80D20EE0:
/* 80D20EE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D20EE4  7C 08 02 A6 */	mflr r0
/* 80D20EE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D20EEC  3C 60 80 D2 */	lis r3, data_80D212D4@ha
/* 80D20EF0  38 63 12 D4 */	addi r3, r3, data_80D212D4@l
/* 80D20EF4  4B 54 22 58 */	b ModuleConstructorsX
/* 80D20EF8  4B 54 21 90 */	b ModuleProlog
/* 80D20EFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D20F00  7C 08 03 A6 */	mtlr r0
/* 80D20F04  38 21 00 10 */	addi r1, r1, 0x10
/* 80D20F08  4E 80 00 20 */	blr 
