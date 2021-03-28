lbl_804C4B68:
/* 804C4B68  38 A0 00 00 */	li r5, 0
/* 804C4B6C  80 03 08 C0 */	lwz r0, 0x8c0(r3)
/* 804C4B70  28 00 00 0B */	cmplwi r0, 0xb
/* 804C4B74  41 82 00 40 */	beq lbl_804C4BB4
/* 804C4B78  80 83 08 90 */	lwz r4, 0x890(r3)
/* 804C4B7C  54 80 02 53 */	rlwinm. r0, r4, 0, 9, 9
/* 804C4B80  40 82 00 34 */	bne lbl_804C4BB4
/* 804C4B84  80 03 08 94 */	lwz r0, 0x894(r3)
/* 804C4B88  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804C4B8C  40 82 00 28 */	bne lbl_804C4BB4
/* 804C4B90  54 80 04 A5 */	rlwinm. r0, r4, 0, 0x12, 0x12
/* 804C4B94  41 82 00 24 */	beq lbl_804C4BB8
/* 804C4B98  88 03 08 4E */	lbz r0, 0x84e(r3)
/* 804C4B9C  28 00 00 03 */	cmplwi r0, 3
/* 804C4BA0  41 82 00 18 */	beq lbl_804C4BB8
/* 804C4BA4  28 00 00 04 */	cmplwi r0, 4
/* 804C4BA8  41 82 00 10 */	beq lbl_804C4BB8
/* 804C4BAC  28 00 00 02 */	cmplwi r0, 2
/* 804C4BB0  41 82 00 08 */	beq lbl_804C4BB8
lbl_804C4BB4:
/* 804C4BB4  38 A0 00 01 */	li r5, 1
lbl_804C4BB8:
/* 804C4BB8  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 804C4BBC  4E 80 00 20 */	blr 
