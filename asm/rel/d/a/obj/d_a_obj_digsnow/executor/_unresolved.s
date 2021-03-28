lbl_80BDCC38:
/* 80BDCC38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDCC3C  7C 08 02 A6 */	mflr r0
/* 80BDCC40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDCC44  4B 68 64 4C */	b ModuleUnresolved
/* 80BDCC48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDCC4C  7C 08 03 A6 */	mtlr r0
/* 80BDCC50  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDCC54  4E 80 00 20 */	blr 
