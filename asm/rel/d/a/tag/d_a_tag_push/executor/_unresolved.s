lbl_80490298:
/* 80490298  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049029C  7C 08 02 A6 */	mflr r0
/* 804902A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804902A4  4B DD 2D EC */	b ModuleUnresolved
/* 804902A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804902AC  7C 08 03 A6 */	mtlr r0
/* 804902B0  38 21 00 10 */	addi r1, r1, 0x10
/* 804902B4  4E 80 00 20 */	blr 
