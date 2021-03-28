lbl_802F36CC:
/* 802F36CC  80 C3 00 04 */	lwz r6, 4(r3)
/* 802F36D0  80 A3 00 08 */	lwz r5, 8(r3)
/* 802F36D4  54 80 08 3C */	slwi r0, r4, 1
/* 802F36D8  7C 05 02 2E */	lhzx r0, r5, r0
/* 802F36DC  1C 00 00 E8 */	mulli r0, r0, 0xe8
/* 802F36E0  7C 86 02 14 */	add r4, r6, r0
/* 802F36E4  88 04 00 02 */	lbz r0, 2(r4)
/* 802F36E8  28 00 00 FF */	cmplwi r0, 0xff
/* 802F36EC  41 82 00 10 */	beq lbl_802F36FC
/* 802F36F0  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802F36F4  7C 63 00 AE */	lbzx r3, r3, r0
/* 802F36F8  4E 80 00 20 */	blr 
lbl_802F36FC:
/* 802F36FC  38 60 00 00 */	li r3, 0
/* 802F3700  4E 80 00 20 */	blr 
