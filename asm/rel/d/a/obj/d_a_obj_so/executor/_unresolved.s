lbl_80CE0338:
/* 80CE0338  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE033C  7C 08 02 A6 */	mflr r0
/* 80CE0340  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE0344  4B 58 2D 4C */	b ModuleUnresolved
/* 80CE0348  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE034C  7C 08 03 A6 */	mtlr r0
/* 80CE0350  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE0354  4E 80 00 20 */	blr 
