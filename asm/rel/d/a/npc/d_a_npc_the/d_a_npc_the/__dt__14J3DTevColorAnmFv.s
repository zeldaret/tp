lbl_80AF7FAC:
/* 80AF7FAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF7FB0  7C 08 02 A6 */	mflr r0
/* 80AF7FB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF7FB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF7FBC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AF7FC0  41 82 00 10 */	beq lbl_80AF7FD0
/* 80AF7FC4  7C 80 07 35 */	extsh. r0, r4
/* 80AF7FC8  40 81 00 08 */	ble lbl_80AF7FD0
/* 80AF7FCC  4B 7D 6D 71 */	bl __dl__FPv
lbl_80AF7FD0:
/* 80AF7FD0  7F E3 FB 78 */	mr r3, r31
/* 80AF7FD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF7FD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF7FDC  7C 08 03 A6 */	mtlr r0
/* 80AF7FE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF7FE4  4E 80 00 20 */	blr 
