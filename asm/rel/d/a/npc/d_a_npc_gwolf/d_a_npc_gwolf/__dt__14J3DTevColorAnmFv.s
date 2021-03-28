lbl_809F3A70:
/* 809F3A70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F3A74  7C 08 02 A6 */	mflr r0
/* 809F3A78  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F3A7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F3A80  7C 7F 1B 79 */	or. r31, r3, r3
/* 809F3A84  41 82 00 10 */	beq lbl_809F3A94
/* 809F3A88  7C 80 07 35 */	extsh. r0, r4
/* 809F3A8C  40 81 00 08 */	ble lbl_809F3A94
/* 809F3A90  4B 8D B2 AC */	b __dl__FPv
lbl_809F3A94:
/* 809F3A94  7F E3 FB 78 */	mr r3, r31
/* 809F3A98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F3A9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F3AA0  7C 08 03 A6 */	mtlr r0
/* 809F3AA4  38 21 00 10 */	addi r1, r1, 0x10
/* 809F3AA8  4E 80 00 20 */	blr 
