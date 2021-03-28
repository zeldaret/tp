lbl_809BFAF4:
/* 809BFAF4  88 A3 14 74 */	lbz r5, 0x1474(r3)
/* 809BFAF8  28 05 00 03 */	cmplwi r5, 3
/* 809BFAFC  40 82 00 18 */	bne lbl_809BFB14
/* 809BFB00  80 04 00 B0 */	lwz r0, 0xb0(r4)
/* 809BFB04  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 809BFB08  7C 00 07 34 */	extsh r0, r0
/* 809BFB0C  2C 00 00 03 */	cmpwi r0, 3
/* 809BFB10  41 82 00 20 */	beq lbl_809BFB30
lbl_809BFB14:
/* 809BFB14  28 05 00 04 */	cmplwi r5, 4
/* 809BFB18  40 82 00 34 */	bne lbl_809BFB4C
/* 809BFB1C  80 04 00 B0 */	lwz r0, 0xb0(r4)
/* 809BFB20  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 809BFB24  7C 00 07 34 */	extsh r0, r0
/* 809BFB28  2C 00 00 04 */	cmpwi r0, 4
/* 809BFB2C  40 82 00 20 */	bne lbl_809BFB4C
lbl_809BFB30:
/* 809BFB30  88 63 14 CE */	lbz r3, 0x14ce(r3)
/* 809BFB34  80 04 00 B0 */	lwz r0, 0xb0(r4)
/* 809BFB38  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 809BFB3C  7C 03 00 00 */	cmpw r3, r0
/* 809BFB40  40 82 00 0C */	bne lbl_809BFB4C
/* 809BFB44  38 60 00 01 */	li r3, 1
/* 809BFB48  4E 80 00 20 */	blr 
lbl_809BFB4C:
/* 809BFB4C  38 60 00 00 */	li r3, 0
/* 809BFB50  4E 80 00 20 */	blr 
