lbl_8085A200:
/* 8085A200  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8085A204  7C 08 02 A6 */	mflr r0
/* 8085A208  90 01 00 14 */	stw r0, 0x14(r1)
/* 8085A20C  3C 60 80 86 */	lis r3, data_8085A47C@ha
/* 8085A210  38 63 A4 7C */	addi r3, r3, data_8085A47C@l
/* 8085A214  4B A0 8F 38 */	b ModuleConstructorsX
/* 8085A218  4B A0 8E 70 */	b ModuleProlog
/* 8085A21C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8085A220  7C 08 03 A6 */	mtlr r0
/* 8085A224  38 21 00 10 */	addi r1, r1, 0x10
/* 8085A228  4E 80 00 20 */	blr 
