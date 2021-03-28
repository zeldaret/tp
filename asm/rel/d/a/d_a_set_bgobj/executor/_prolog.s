lbl_80485D00:
/* 80485D00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80485D04  7C 08 02 A6 */	mflr r0
/* 80485D08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80485D0C  3C 60 80 48 */	lis r3, data_80485EF8@ha
/* 80485D10  38 63 5E F8 */	addi r3, r3, data_80485EF8@l
/* 80485D14  4B DD D4 38 */	b ModuleConstructorsX
/* 80485D18  4B DD D3 70 */	b ModuleProlog
/* 80485D1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80485D20  7C 08 03 A6 */	mtlr r0
/* 80485D24  38 21 00 10 */	addi r1, r1, 0x10
/* 80485D28  4E 80 00 20 */	blr 
