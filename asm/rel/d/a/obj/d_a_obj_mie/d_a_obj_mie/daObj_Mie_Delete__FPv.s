lbl_80C95900:
/* 80C95900  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C95904  7C 08 02 A6 */	mflr r0
/* 80C95908  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9590C  4B FF ED 69 */	bl Delete__11daObj_Mie_cFv
/* 80C95910  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C95914  7C 08 03 A6 */	mtlr r0
/* 80C95918  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9591C  4E 80 00 20 */	blr 
