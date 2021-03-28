lbl_80D5B8F8:
/* 80D5B8F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5B8FC  7C 08 02 A6 */	mflr r0
/* 80D5B900  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5B904  4B 50 77 8C */	b ModuleUnresolved
/* 80D5B908  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5B90C  7C 08 03 A6 */	mtlr r0
/* 80D5B910  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5B914  4E 80 00 20 */	blr 
