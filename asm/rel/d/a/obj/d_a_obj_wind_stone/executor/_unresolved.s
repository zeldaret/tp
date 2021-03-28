lbl_80D379D8:
/* 80D379D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D379DC  7C 08 02 A6 */	mflr r0
/* 80D379E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D379E4  4B 52 B6 AC */	b ModuleUnresolved
/* 80D379E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D379EC  7C 08 03 A6 */	mtlr r0
/* 80D379F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D379F4  4E 80 00 20 */	blr 
