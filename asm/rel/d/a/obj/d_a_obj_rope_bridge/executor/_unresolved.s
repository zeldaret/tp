lbl_80595E18:
/* 80595E18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80595E1C  7C 08 02 A6 */	mflr r0
/* 80595E20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80595E24  4B CC D2 6C */	b ModuleUnresolved
/* 80595E28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80595E2C  7C 08 03 A6 */	mtlr r0
/* 80595E30  38 21 00 10 */	addi r1, r1, 0x10
/* 80595E34  4E 80 00 20 */	blr 
