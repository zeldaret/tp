lbl_802DEB28:
/* 802DEB28  38 A0 00 00 */	li r5, 0
/* 802DEB2C  48 00 00 18 */	b lbl_802DEB44
lbl_802DEB30:
/* 802DEB30  88 04 00 00 */	lbz r0, 0(r4)
/* 802DEB34  7C 03 07 74 */	extsb r3, r0
/* 802DEB38  1C 05 00 03 */	mulli r0, r5, 3
/* 802DEB3C  7C A3 02 14 */	add r5, r3, r0
/* 802DEB40  38 84 00 01 */	addi r4, r4, 1
lbl_802DEB44:
/* 802DEB44  88 04 00 00 */	lbz r0, 0(r4)
/* 802DEB48  7C 00 07 75 */	extsb. r0, r0
/* 802DEB4C  40 82 FF E4 */	bne lbl_802DEB30
/* 802DEB50  54 A3 04 3E */	clrlwi r3, r5, 0x10
/* 802DEB54  4E 80 00 20 */	blr 
