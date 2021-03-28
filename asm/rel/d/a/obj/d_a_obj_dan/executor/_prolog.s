lbl_80BDA4A0:
/* 80BDA4A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDA4A4  7C 08 02 A6 */	mflr r0
/* 80BDA4A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDA4AC  3C 60 80 BE */	lis r3, data_80BDC39C@ha
/* 80BDA4B0  38 63 C3 9C */	addi r3, r3, data_80BDC39C@l
/* 80BDA4B4  4B 68 8C 98 */	b ModuleConstructorsX
/* 80BDA4B8  4B 68 8B D0 */	b ModuleProlog
/* 80BDA4BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDA4C0  7C 08 03 A6 */	mtlr r0
/* 80BDA4C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDA4C8  4E 80 00 20 */	blr 
