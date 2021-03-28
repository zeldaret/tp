lbl_805A2938:
/* 805A2938  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A293C  7C 08 02 A6 */	mflr r0
/* 805A2940  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A2944  4B CC 07 4C */	b ModuleUnresolved
/* 805A2948  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A294C  7C 08 03 A6 */	mtlr r0
/* 805A2950  38 21 00 10 */	addi r1, r1, 0x10
/* 805A2954  4E 80 00 20 */	blr 
