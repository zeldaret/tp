lbl_809E4038:
/* 809E4038  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E403C  7C 08 02 A6 */	mflr r0
/* 809E4040  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E4044  4B 87 F0 4C */	b ModuleUnresolved
/* 809E4048  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E404C  7C 08 03 A6 */	mtlr r0
/* 809E4050  38 21 00 10 */	addi r1, r1, 0x10
/* 809E4054  4E 80 00 20 */	blr 
