lbl_806D11D8:
/* 806D11D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D11DC  7C 08 02 A6 */	mflr r0
/* 806D11E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D11E4  4B B9 1E AC */	b ModuleUnresolved
/* 806D11E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D11EC  7C 08 03 A6 */	mtlr r0
/* 806D11F0  38 21 00 10 */	addi r1, r1, 0x10
/* 806D11F4  4E 80 00 20 */	blr 
