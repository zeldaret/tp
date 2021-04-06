lbl_809F1D6C:
/* 809F1D6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F1D70  7C 08 02 A6 */	mflr r0
/* 809F1D74  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F1D78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F1D7C  7C 7F 1B 79 */	or. r31, r3, r3
/* 809F1D80  41 82 00 10 */	beq lbl_809F1D90
/* 809F1D84  7C 80 07 35 */	extsh. r0, r4
/* 809F1D88  40 81 00 08 */	ble lbl_809F1D90
/* 809F1D8C  4B 8D CF B1 */	bl __dl__FPv
lbl_809F1D90:
/* 809F1D90  7F E3 FB 78 */	mr r3, r31
/* 809F1D94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F1D98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F1D9C  7C 08 03 A6 */	mtlr r0
/* 809F1DA0  38 21 00 10 */	addi r1, r1, 0x10
/* 809F1DA4  4E 80 00 20 */	blr 
