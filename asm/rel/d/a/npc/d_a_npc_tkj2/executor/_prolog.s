lbl_80B10D00:
/* 80B10D00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B10D04  7C 08 02 A6 */	mflr r0
/* 80B10D08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B10D0C  3C 60 80 B1 */	lis r3, data_80B142C8@ha
/* 80B10D10  38 63 42 C8 */	addi r3, r3, data_80B142C8@l
/* 80B10D14  4B 75 24 38 */	b ModuleConstructorsX
/* 80B10D18  4B 75 23 70 */	b ModuleProlog
/* 80B10D1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B10D20  7C 08 03 A6 */	mtlr r0
/* 80B10D24  38 21 00 10 */	addi r1, r1, 0x10
/* 80B10D28  4E 80 00 20 */	blr 
