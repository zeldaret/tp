lbl_809E8378:
/* 809E8378  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E837C  7C 08 02 A6 */	mflr r0
/* 809E8380  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E8384  4B 87 AD 0C */	b ModuleUnresolved
/* 809E8388  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E838C  7C 08 03 A6 */	mtlr r0
/* 809E8390  38 21 00 10 */	addi r1, r1, 0x10
/* 809E8394  4E 80 00 20 */	blr 
