lbl_80D1F038:
/* 80D1F038  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1F03C  7C 08 02 A6 */	mflr r0
/* 80D1F040  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1F044  4B 54 40 4C */	b ModuleUnresolved
/* 80D1F048  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1F04C  7C 08 03 A6 */	mtlr r0
/* 80D1F050  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1F054  4E 80 00 20 */	blr 
