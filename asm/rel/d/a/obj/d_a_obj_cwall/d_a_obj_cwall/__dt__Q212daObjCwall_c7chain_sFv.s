lbl_80BD6E94:
/* 80BD6E94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD6E98  7C 08 02 A6 */	mflr r0
/* 80BD6E9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD6EA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD6EA4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BD6EA8  41 82 00 10 */	beq lbl_80BD6EB8
/* 80BD6EAC  7C 80 07 35 */	extsh. r0, r4
/* 80BD6EB0  40 81 00 08 */	ble lbl_80BD6EB8
/* 80BD6EB4  4B 6F 7E 88 */	b __dl__FPv
lbl_80BD6EB8:
/* 80BD6EB8  7F E3 FB 78 */	mr r3, r31
/* 80BD6EBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD6EC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD6EC4  7C 08 03 A6 */	mtlr r0
/* 80BD6EC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD6ECC  4E 80 00 20 */	blr 
