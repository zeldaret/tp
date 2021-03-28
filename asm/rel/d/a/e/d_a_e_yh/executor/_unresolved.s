lbl_807FD438:
/* 807FD438  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807FD43C  7C 08 02 A6 */	mflr r0
/* 807FD440  90 01 00 14 */	stw r0, 0x14(r1)
/* 807FD444  4B A6 5C 4C */	b ModuleUnresolved
/* 807FD448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807FD44C  7C 08 03 A6 */	mtlr r0
/* 807FD450  38 21 00 10 */	addi r1, r1, 0x10
/* 807FD454  4E 80 00 20 */	blr 
