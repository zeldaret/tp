lbl_80D6428C:
/* 80D6428C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D64290  7C 08 02 A6 */	mflr r0
/* 80D64294  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D64298  4B 4F ED F4 */	b ModuleEpilog
/* 80D6429C  3C 60 80 D6 */	lis r3, data_80D644D4@ha
/* 80D642A0  38 63 44 D4 */	addi r3, r3, data_80D644D4@l
/* 80D642A4  4B 4F EE EC */	b ModuleDestructorsX
/* 80D642A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D642AC  7C 08 03 A6 */	mtlr r0
/* 80D642B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D642B4  4E 80 00 20 */	blr 
