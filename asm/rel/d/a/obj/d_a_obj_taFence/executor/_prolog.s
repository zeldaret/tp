lbl_80D04D80:
/* 80D04D80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D04D84  7C 08 02 A6 */	mflr r0
/* 80D04D88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D04D8C  3C 60 80 D0 */	lis r3, data_80D060CC@ha
/* 80D04D90  38 63 60 CC */	addi r3, r3, data_80D060CC@l
/* 80D04D94  4B 55 E3 B8 */	b ModuleConstructorsX
/* 80D04D98  4B 55 E2 F0 */	b ModuleProlog
/* 80D04D9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D04DA0  7C 08 03 A6 */	mtlr r0
/* 80D04DA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D04DA8  4E 80 00 20 */	blr 
