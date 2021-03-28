lbl_8045E838:
/* 8045E838  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045E83C  7C 08 02 A6 */	mflr r0
/* 8045E840  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045E844  4B E0 48 4C */	b ModuleUnresolved
/* 8045E848  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045E84C  7C 08 03 A6 */	mtlr r0
/* 8045E850  38 21 00 10 */	addi r1, r1, 0x10
/* 8045E854  4E 80 00 20 */	blr 
