lbl_802DEA1C:
/* 802DEA1C  90 83 00 04 */	stw r4, 4(r3)
/* 802DEA20  28 04 00 00 */	cmplwi r4, 0
/* 802DEA24  41 82 00 24 */	beq lbl_802DEA48
/* 802DEA28  A0 04 00 00 */	lhz r0, 0(r4)
/* 802DEA2C  B0 03 00 0C */	sth r0, 0xc(r3)
/* 802DEA30  A0 03 00 0C */	lhz r0, 0xc(r3)
/* 802DEA34  54 05 10 3A */	slwi r5, r0, 2
/* 802DEA38  38 05 00 04 */	addi r0, r5, 4
/* 802DEA3C  7C 04 02 14 */	add r0, r4, r0
/* 802DEA40  90 03 00 08 */	stw r0, 8(r3)
/* 802DEA44  4E 80 00 20 */	blr 
lbl_802DEA48:
/* 802DEA48  38 00 00 00 */	li r0, 0
/* 802DEA4C  B0 03 00 0C */	sth r0, 0xc(r3)
/* 802DEA50  90 03 00 08 */	stw r0, 8(r3)
/* 802DEA54  4E 80 00 20 */	blr 
