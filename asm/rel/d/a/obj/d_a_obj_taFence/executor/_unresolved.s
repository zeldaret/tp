lbl_80D04DD8:
/* 80D04DD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D04DDC  7C 08 02 A6 */	mflr r0
/* 80D04DE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D04DE4  4B 55 E2 AC */	b ModuleUnresolved
/* 80D04DE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D04DEC  7C 08 03 A6 */	mtlr r0
/* 80D04DF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D04DF4  4E 80 00 20 */	blr 
