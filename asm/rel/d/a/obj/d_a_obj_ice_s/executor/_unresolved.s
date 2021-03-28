lbl_80C20918:
/* 80C20918  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2091C  7C 08 02 A6 */	mflr r0
/* 80C20920  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C20924  4B 64 27 6C */	b ModuleUnresolved
/* 80C20928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2092C  7C 08 03 A6 */	mtlr r0
/* 80C20930  38 21 00 10 */	addi r1, r1, 0x10
/* 80C20934  4E 80 00 20 */	blr 
