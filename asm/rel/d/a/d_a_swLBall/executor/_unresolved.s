lbl_80D4EAD8:
/* 80D4EAD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4EADC  7C 08 02 A6 */	mflr r0
/* 80D4EAE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4EAE4  4B 51 45 AC */	b ModuleUnresolved
/* 80D4EAE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4EAEC  7C 08 03 A6 */	mtlr r0
/* 80D4EAF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4EAF4  4E 80 00 20 */	blr 
