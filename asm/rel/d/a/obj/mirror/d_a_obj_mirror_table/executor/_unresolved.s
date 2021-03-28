lbl_80C998F8:
/* 80C998F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C998FC  7C 08 02 A6 */	mflr r0
/* 80C99900  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C99904  4B 5C 97 8C */	b ModuleUnresolved
/* 80C99908  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9990C  7C 08 03 A6 */	mtlr r0
/* 80C99910  38 21 00 10 */	addi r1, r1, 0x10
/* 80C99914  4E 80 00 20 */	blr 
