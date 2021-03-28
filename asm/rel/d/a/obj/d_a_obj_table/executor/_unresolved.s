lbl_80D06418:
/* 80D06418  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0641C  7C 08 02 A6 */	mflr r0
/* 80D06420  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D06424  4B 55 CC 6C */	b ModuleUnresolved
/* 80D06428  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0642C  7C 08 03 A6 */	mtlr r0
/* 80D06430  38 21 00 10 */	addi r1, r1, 0x10
/* 80D06434  4E 80 00 20 */	blr 
