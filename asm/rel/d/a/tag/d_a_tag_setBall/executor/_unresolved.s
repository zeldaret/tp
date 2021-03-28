lbl_80D601D8:
/* 80D601D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D601DC  7C 08 02 A6 */	mflr r0
/* 80D601E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D601E4  4B 50 2E AC */	b ModuleUnresolved
/* 80D601E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D601EC  7C 08 03 A6 */	mtlr r0
/* 80D601F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D601F4  4E 80 00 20 */	blr 
