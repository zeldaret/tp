lbl_80D56738:
/* 80D56738  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5673C  7C 08 02 A6 */	mflr r0
/* 80D56740  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D56744  4B 50 C9 4C */	b ModuleUnresolved
/* 80D56748  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5674C  7C 08 03 A6 */	mtlr r0
/* 80D56750  38 21 00 10 */	addi r1, r1, 0x10
/* 80D56754  4E 80 00 20 */	blr 
