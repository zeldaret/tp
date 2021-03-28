lbl_80D00BB8:
/* 80D00BB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D00BBC  7C 08 02 A6 */	mflr r0
/* 80D00BC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D00BC4  4B 56 24 CC */	b ModuleUnresolved
/* 80D00BC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D00BCC  7C 08 03 A6 */	mtlr r0
/* 80D00BD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D00BD4  4E 80 00 20 */	blr 
