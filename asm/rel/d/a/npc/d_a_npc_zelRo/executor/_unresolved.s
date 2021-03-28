lbl_80B71F18:
/* 80B71F18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B71F1C  7C 08 02 A6 */	mflr r0
/* 80B71F20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B71F24  4B 6F 11 6C */	b ModuleUnresolved
/* 80B71F28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B71F2C  7C 08 03 A6 */	mtlr r0
/* 80B71F30  38 21 00 10 */	addi r1, r1, 0x10
/* 80B71F34  4E 80 00 20 */	blr 
