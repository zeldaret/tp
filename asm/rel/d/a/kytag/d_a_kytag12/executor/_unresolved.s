lbl_8085BB18:
/* 8085BB18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8085BB1C  7C 08 02 A6 */	mflr r0
/* 8085BB20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8085BB24  4B A0 75 6C */	b ModuleUnresolved
/* 8085BB28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8085BB2C  7C 08 03 A6 */	mtlr r0
/* 8085BB30  38 21 00 10 */	addi r1, r1, 0x10
/* 8085BB34  4E 80 00 20 */	blr 
