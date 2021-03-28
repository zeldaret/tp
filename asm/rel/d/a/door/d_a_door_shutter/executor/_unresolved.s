lbl_80460B18:
/* 80460B18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80460B1C  7C 08 02 A6 */	mflr r0
/* 80460B20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80460B24  4B E0 25 6C */	b ModuleUnresolved
/* 80460B28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80460B2C  7C 08 03 A6 */	mtlr r0
/* 80460B30  38 21 00 10 */	addi r1, r1, 0x10
/* 80460B34  4E 80 00 20 */	blr 
