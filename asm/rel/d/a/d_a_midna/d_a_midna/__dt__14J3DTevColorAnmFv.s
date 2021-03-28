lbl_804BD0EC:
/* 804BD0EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BD0F0  7C 08 02 A6 */	mflr r0
/* 804BD0F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BD0F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804BD0FC  7C 7F 1B 79 */	or. r31, r3, r3
/* 804BD100  41 82 00 10 */	beq lbl_804BD110
/* 804BD104  7C 80 07 35 */	extsh. r0, r4
/* 804BD108  40 81 00 08 */	ble lbl_804BD110
/* 804BD10C  4B E1 1C 30 */	b __dl__FPv
lbl_804BD110:
/* 804BD110  7F E3 FB 78 */	mr r3, r31
/* 804BD114  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804BD118  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BD11C  7C 08 03 A6 */	mtlr r0
/* 804BD120  38 21 00 10 */	addi r1, r1, 0x10
/* 804BD124  4E 80 00 20 */	blr 
