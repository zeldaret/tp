lbl_80AB2D00:
/* 80AB2D00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB2D04  7C 08 02 A6 */	mflr r0
/* 80AB2D08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB2D0C  3C 60 80 AB */	lis r3, data_80AB57F4@ha
/* 80AB2D10  38 63 57 F4 */	addi r3, r3, data_80AB57F4@l
/* 80AB2D14  4B 7B 04 38 */	b ModuleConstructorsX
/* 80AB2D18  4B 7B 03 70 */	b ModuleProlog
/* 80AB2D1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB2D20  7C 08 03 A6 */	mtlr r0
/* 80AB2D24  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB2D28  4E 80 00 20 */	blr 
