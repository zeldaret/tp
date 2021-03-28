lbl_809CFC98:
/* 809CFC98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CFC9C  7C 08 02 A6 */	mflr r0
/* 809CFCA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CFCA4  4B 89 33 EC */	b ModuleUnresolved
/* 809CFCA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CFCAC  7C 08 03 A6 */	mtlr r0
/* 809CFCB0  38 21 00 10 */	addi r1, r1, 0x10
/* 809CFCB4  4E 80 00 20 */	blr 
