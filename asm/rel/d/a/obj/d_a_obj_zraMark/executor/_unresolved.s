lbl_80D42638:
/* 80D42638  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4263C  7C 08 02 A6 */	mflr r0
/* 80D42640  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D42644  4B 52 0A 4C */	b ModuleUnresolved
/* 80D42648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4264C  7C 08 03 A6 */	mtlr r0
/* 80D42650  38 21 00 10 */	addi r1, r1, 0x10
/* 80D42654  4E 80 00 20 */	blr 
