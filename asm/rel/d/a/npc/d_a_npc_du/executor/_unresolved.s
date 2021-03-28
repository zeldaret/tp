lbl_809AFCB8:
/* 809AFCB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AFCBC  7C 08 02 A6 */	mflr r0
/* 809AFCC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AFCC4  4B 8B 33 CC */	b ModuleUnresolved
/* 809AFCC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AFCCC  7C 08 03 A6 */	mtlr r0
/* 809AFCD0  38 21 00 10 */	addi r1, r1, 0x10
/* 809AFCD4  4E 80 00 20 */	blr 
