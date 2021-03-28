lbl_80D5FAD8:
/* 80D5FAD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5FADC  7C 08 02 A6 */	mflr r0
/* 80D5FAE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5FAE4  4B 50 35 AC */	b ModuleUnresolved
/* 80D5FAE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5FAEC  7C 08 03 A6 */	mtlr r0
/* 80D5FAF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5FAF4  4E 80 00 20 */	blr 
