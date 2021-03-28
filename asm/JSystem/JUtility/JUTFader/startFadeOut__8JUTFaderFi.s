lbl_802E579C:
/* 802E579C  80 03 00 04 */	lwz r0, 4(r3)
/* 802E57A0  20 00 00 01 */	subfic r0, r0, 1
/* 802E57A4  7C 00 00 34 */	cntlzw r0, r0
/* 802E57A8  54 05 D9 7E */	srwi r5, r0, 5
/* 802E57AC  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 802E57B0  41 82 00 18 */	beq lbl_802E57C8
/* 802E57B4  38 00 00 03 */	li r0, 3
/* 802E57B8  90 03 00 04 */	stw r0, 4(r3)
/* 802E57BC  38 00 00 00 */	li r0, 0
/* 802E57C0  B0 03 00 0A */	sth r0, 0xa(r3)
/* 802E57C4  B0 83 00 08 */	sth r4, 8(r3)
lbl_802E57C8:
/* 802E57C8  7C A3 2B 78 */	mr r3, r5
/* 802E57CC  4E 80 00 20 */	blr 
