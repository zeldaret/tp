lbl_809F9A90:
/* 809F9A90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F9A94  7C 08 02 A6 */	mflr r0
/* 809F9A98  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F9A9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F9AA0  7C 7F 1B 79 */	or. r31, r3, r3
/* 809F9AA4  41 82 00 10 */	beq lbl_809F9AB4
/* 809F9AA8  7C 80 07 35 */	extsh. r0, r4
/* 809F9AAC  40 81 00 08 */	ble lbl_809F9AB4
/* 809F9AB0  4B 8D 52 8D */	bl __dl__FPv
lbl_809F9AB4:
/* 809F9AB4  7F E3 FB 78 */	mr r3, r31
/* 809F9AB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F9ABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F9AC0  7C 08 03 A6 */	mtlr r0
/* 809F9AC4  38 21 00 10 */	addi r1, r1, 0x10
/* 809F9AC8  4E 80 00 20 */	blr 
