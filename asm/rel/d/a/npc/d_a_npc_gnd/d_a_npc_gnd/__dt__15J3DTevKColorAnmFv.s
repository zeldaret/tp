lbl_809BBC70:
/* 809BBC70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BBC74  7C 08 02 A6 */	mflr r0
/* 809BBC78  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BBC7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BBC80  7C 7F 1B 79 */	or. r31, r3, r3
/* 809BBC84  41 82 00 10 */	beq lbl_809BBC94
/* 809BBC88  7C 80 07 35 */	extsh. r0, r4
/* 809BBC8C  40 81 00 08 */	ble lbl_809BBC94
/* 809BBC90  4B 91 30 AD */	bl __dl__FPv
lbl_809BBC94:
/* 809BBC94  7F E3 FB 78 */	mr r3, r31
/* 809BBC98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BBC9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BBCA0  7C 08 03 A6 */	mtlr r0
/* 809BBCA4  38 21 00 10 */	addi r1, r1, 0x10
/* 809BBCA8  4E 80 00 20 */	blr 
