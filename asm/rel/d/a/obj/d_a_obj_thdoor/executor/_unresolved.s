lbl_80D0D4D8:
/* 80D0D4D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0D4DC  7C 08 02 A6 */	mflr r0
/* 80D0D4E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0D4E4  4B 55 5B AC */	b ModuleUnresolved
/* 80D0D4E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0D4EC  7C 08 03 A6 */	mtlr r0
/* 80D0D4F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0D4F4  4E 80 00 20 */	blr 
