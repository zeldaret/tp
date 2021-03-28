lbl_80BD3F9C:
/* 80BD3F9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD3FA0  7C 08 02 A6 */	mflr r0
/* 80BD3FA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD3FA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD3FAC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BD3FB0  41 82 00 10 */	beq lbl_80BD3FC0
/* 80BD3FB4  7C 80 07 35 */	extsh. r0, r4
/* 80BD3FB8  40 81 00 08 */	ble lbl_80BD3FC0
/* 80BD3FBC  4B 6F AD 80 */	b __dl__FPv
lbl_80BD3FC0:
/* 80BD3FC0  7F E3 FB 78 */	mr r3, r31
/* 80BD3FC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD3FC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD3FCC  7C 08 03 A6 */	mtlr r0
/* 80BD3FD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD3FD4  4E 80 00 20 */	blr 
