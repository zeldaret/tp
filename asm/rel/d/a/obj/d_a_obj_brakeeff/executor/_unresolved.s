lbl_8046DC98:
/* 8046DC98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046DC9C  7C 08 02 A6 */	mflr r0
/* 8046DCA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046DCA4  4B DF 53 EC */	b ModuleUnresolved
/* 8046DCA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046DCAC  7C 08 03 A6 */	mtlr r0
/* 8046DCB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8046DCB4  4E 80 00 20 */	blr 
