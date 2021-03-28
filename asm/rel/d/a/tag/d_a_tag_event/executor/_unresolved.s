lbl_8048AD18:
/* 8048AD18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048AD1C  7C 08 02 A6 */	mflr r0
/* 8048AD20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048AD24  4B DD 83 6C */	b ModuleUnresolved
/* 8048AD28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048AD2C  7C 08 03 A6 */	mtlr r0
/* 8048AD30  38 21 00 10 */	addi r1, r1, 0x10
/* 8048AD34  4E 80 00 20 */	blr 
