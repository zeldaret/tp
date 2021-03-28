lbl_809F3A1C:
/* 809F3A1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F3A20  7C 08 02 A6 */	mflr r0
/* 809F3A24  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F3A28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F3A2C  7C 7F 1B 79 */	or. r31, r3, r3
/* 809F3A30  41 82 00 10 */	beq lbl_809F3A40
/* 809F3A34  7C 80 07 35 */	extsh. r0, r4
/* 809F3A38  40 81 00 08 */	ble lbl_809F3A40
/* 809F3A3C  4B 8D B3 00 */	b __dl__FPv
lbl_809F3A40:
/* 809F3A40  7F E3 FB 78 */	mr r3, r31
/* 809F3A44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F3A48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F3A4C  7C 08 03 A6 */	mtlr r0
/* 809F3A50  38 21 00 10 */	addi r1, r1, 0x10
/* 809F3A54  4E 80 00 20 */	blr 
