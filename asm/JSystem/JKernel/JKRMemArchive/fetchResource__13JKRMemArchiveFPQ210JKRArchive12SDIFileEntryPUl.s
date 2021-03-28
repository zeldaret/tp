lbl_802D6DDC:
/* 802D6DDC  80 04 00 10 */	lwz r0, 0x10(r4)
/* 802D6DE0  28 00 00 00 */	cmplwi r0, 0
/* 802D6DE4  40 82 00 14 */	bne lbl_802D6DF8
/* 802D6DE8  80 63 00 68 */	lwz r3, 0x68(r3)
/* 802D6DEC  80 04 00 08 */	lwz r0, 8(r4)
/* 802D6DF0  7C 03 02 14 */	add r0, r3, r0
/* 802D6DF4  90 04 00 10 */	stw r0, 0x10(r4)
lbl_802D6DF8:
/* 802D6DF8  28 05 00 00 */	cmplwi r5, 0
/* 802D6DFC  41 82 00 0C */	beq lbl_802D6E08
/* 802D6E00  80 04 00 0C */	lwz r0, 0xc(r4)
/* 802D6E04  90 05 00 00 */	stw r0, 0(r5)
lbl_802D6E08:
/* 802D6E08  80 64 00 10 */	lwz r3, 0x10(r4)
/* 802D6E0C  4E 80 00 20 */	blr 
