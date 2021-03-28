lbl_806D7FF8:
/* 806D7FF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D7FFC  7C 08 02 A6 */	mflr r0
/* 806D8000  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D8004  4B B8 B0 8C */	b ModuleUnresolved
/* 806D8008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D800C  7C 08 03 A6 */	mtlr r0
/* 806D8010  38 21 00 10 */	addi r1, r1, 0x10
/* 806D8014  4E 80 00 20 */	blr 
