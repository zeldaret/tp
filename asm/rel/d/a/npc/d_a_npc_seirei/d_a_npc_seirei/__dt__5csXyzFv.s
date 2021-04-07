lbl_80AD72F0:
/* 80AD72F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD72F4  7C 08 02 A6 */	mflr r0
/* 80AD72F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD72FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD7300  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AD7304  41 82 00 10 */	beq lbl_80AD7314
/* 80AD7308  7C 80 07 35 */	extsh. r0, r4
/* 80AD730C  40 81 00 08 */	ble lbl_80AD7314
/* 80AD7310  4B 7F 7A 2D */	bl __dl__FPv
lbl_80AD7314:
/* 80AD7314  7F E3 FB 78 */	mr r3, r31
/* 80AD7318  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD731C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD7320  7C 08 03 A6 */	mtlr r0
/* 80AD7324  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD7328  4E 80 00 20 */	blr 
