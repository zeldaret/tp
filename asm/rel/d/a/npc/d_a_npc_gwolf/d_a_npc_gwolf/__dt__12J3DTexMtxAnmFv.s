lbl_809F3B30:
/* 809F3B30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F3B34  7C 08 02 A6 */	mflr r0
/* 809F3B38  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F3B3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F3B40  7C 7F 1B 79 */	or. r31, r3, r3
/* 809F3B44  41 82 00 10 */	beq lbl_809F3B54
/* 809F3B48  7C 80 07 35 */	extsh. r0, r4
/* 809F3B4C  40 81 00 08 */	ble lbl_809F3B54
/* 809F3B50  4B 8D B1 EC */	b __dl__FPv
lbl_809F3B54:
/* 809F3B54  7F E3 FB 78 */	mr r3, r31
/* 809F3B58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F3B5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F3B60  7C 08 03 A6 */	mtlr r0
/* 809F3B64  38 21 00 10 */	addi r1, r1, 0x10
/* 809F3B68  4E 80 00 20 */	blr 
