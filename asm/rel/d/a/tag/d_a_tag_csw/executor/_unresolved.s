lbl_80D56BB8:
/* 80D56BB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D56BBC  7C 08 02 A6 */	mflr r0
/* 80D56BC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D56BC4  4B 50 C4 CC */	b ModuleUnresolved
/* 80D56BC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D56BCC  7C 08 03 A6 */	mtlr r0
/* 80D56BD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D56BD4  4E 80 00 20 */	blr 
