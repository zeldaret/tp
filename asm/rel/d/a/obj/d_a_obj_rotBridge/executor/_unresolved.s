lbl_80CBE8F8:
/* 80CBE8F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBE8FC  7C 08 02 A6 */	mflr r0
/* 80CBE900  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBE904  4B 5A 47 8C */	b ModuleUnresolved
/* 80CBE908  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBE90C  7C 08 03 A6 */	mtlr r0
/* 80CBE910  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBE914  4E 80 00 20 */	blr 
