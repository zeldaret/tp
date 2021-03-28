lbl_80D5D418:
/* 80D5D418  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5D41C  7C 08 02 A6 */	mflr r0
/* 80D5D420  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5D424  4B 50 5C 6C */	b ModuleUnresolved
/* 80D5D428  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5D42C  7C 08 03 A6 */	mtlr r0
/* 80D5D430  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5D434  4E 80 00 20 */	blr 
