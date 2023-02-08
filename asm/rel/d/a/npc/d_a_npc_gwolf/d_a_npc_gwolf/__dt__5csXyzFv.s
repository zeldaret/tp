lbl_809F7D04:
/* 809F7D04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F7D08  7C 08 02 A6 */	mflr r0
/* 809F7D0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F7D10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F7D14  7C 7F 1B 79 */	or. r31, r3, r3
/* 809F7D18  41 82 00 10 */	beq lbl_809F7D28
/* 809F7D1C  7C 80 07 35 */	extsh. r0, r4
/* 809F7D20  40 81 00 08 */	ble lbl_809F7D28
/* 809F7D24  4B 8D 70 19 */	bl __dl__FPv
lbl_809F7D28:
/* 809F7D28  7F E3 FB 78 */	mr r3, r31
/* 809F7D2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F7D30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F7D34  7C 08 03 A6 */	mtlr r0
/* 809F7D38  38 21 00 10 */	addi r1, r1, 0x10
/* 809F7D3C  4E 80 00 20 */	blr 
