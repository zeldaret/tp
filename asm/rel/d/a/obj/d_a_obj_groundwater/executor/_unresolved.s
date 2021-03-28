lbl_80C13418:
/* 80C13418  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1341C  7C 08 02 A6 */	mflr r0
/* 80C13420  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C13424  4B 64 FC 6C */	b ModuleUnresolved
/* 80C13428  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1342C  7C 08 03 A6 */	mtlr r0
/* 80C13430  38 21 00 10 */	addi r1, r1, 0x10
/* 80C13434  4E 80 00 20 */	blr 
