lbl_80D33FC8:
/* 80D33FC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D33FCC  7C 08 02 A6 */	mflr r0
/* 80D33FD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D33FD4  4B FF DC F1 */	bl create__11daWdStick_cFv
/* 80D33FD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D33FDC  7C 08 03 A6 */	mtlr r0
/* 80D33FE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D33FE4  4E 80 00 20 */	blr 
