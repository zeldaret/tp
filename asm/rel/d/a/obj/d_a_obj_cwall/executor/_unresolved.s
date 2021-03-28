lbl_80BD69B8:
/* 80BD69B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD69BC  7C 08 02 A6 */	mflr r0
/* 80BD69C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD69C4  4B 68 C6 CC */	b ModuleUnresolved
/* 80BD69C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD69CC  7C 08 03 A6 */	mtlr r0
/* 80BD69D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD69D4  4E 80 00 20 */	blr 
