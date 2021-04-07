lbl_804BD098:
/* 804BD098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BD09C  7C 08 02 A6 */	mflr r0
/* 804BD0A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BD0A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804BD0A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 804BD0AC  41 82 00 10 */	beq lbl_804BD0BC
/* 804BD0B0  7C 80 07 35 */	extsh. r0, r4
/* 804BD0B4  40 81 00 08 */	ble lbl_804BD0BC
/* 804BD0B8  4B E1 1C 85 */	bl __dl__FPv
lbl_804BD0BC:
/* 804BD0BC  7F E3 FB 78 */	mr r3, r31
/* 804BD0C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804BD0C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BD0C8  7C 08 03 A6 */	mtlr r0
/* 804BD0CC  38 21 00 10 */	addi r1, r1, 0x10
/* 804BD0D0  4E 80 00 20 */	blr 
