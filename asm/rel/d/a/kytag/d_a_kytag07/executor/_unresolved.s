lbl_8085A258:
/* 8085A258  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8085A25C  7C 08 02 A6 */	mflr r0
/* 8085A260  90 01 00 14 */	stw r0, 0x14(r1)
/* 8085A264  4B A0 8E 2C */	b ModuleUnresolved
/* 8085A268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8085A26C  7C 08 03 A6 */	mtlr r0
/* 8085A270  38 21 00 10 */	addi r1, r1, 0x10
/* 8085A274  4E 80 00 20 */	blr 
