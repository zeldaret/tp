lbl_8061DC98:
/* 8061DC98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061DC9C  7C 08 02 A6 */	mflr r0
/* 8061DCA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061DCA4  4B C4 53 EC */	b ModuleUnresolved
/* 8061DCA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061DCAC  7C 08 03 A6 */	mtlr r0
/* 8061DCB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8061DCB4  4E 80 00 20 */	blr 
