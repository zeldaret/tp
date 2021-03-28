lbl_8058AF18:
/* 8058AF18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058AF1C  7C 08 02 A6 */	mflr r0
/* 8058AF20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058AF24  4B CD 81 6C */	b ModuleUnresolved
/* 8058AF28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058AF2C  7C 08 03 A6 */	mtlr r0
/* 8058AF30  38 21 00 10 */	addi r1, r1, 0x10
/* 8058AF34  4E 80 00 20 */	blr 
