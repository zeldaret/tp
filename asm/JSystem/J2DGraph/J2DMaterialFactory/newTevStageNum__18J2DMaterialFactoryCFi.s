lbl_802F3B54:
/* 802F3B54  80 C3 00 04 */	lwz r6, 4(r3)
/* 802F3B58  80 A3 00 08 */	lwz r5, 8(r3)
/* 802F3B5C  54 80 08 3C */	slwi r0, r4, 1
/* 802F3B60  7C 05 02 2E */	lhzx r0, r5, r0
/* 802F3B64  1C 00 00 E8 */	mulli r0, r0, 0xe8
/* 802F3B68  7C 86 02 14 */	add r4, r6, r0
/* 802F3B6C  88 04 00 04 */	lbz r0, 4(r4)
/* 802F3B70  28 00 00 FF */	cmplwi r0, 0xff
/* 802F3B74  41 82 00 10 */	beq lbl_802F3B84
/* 802F3B78  80 63 00 40 */	lwz r3, 0x40(r3)
/* 802F3B7C  7C 63 00 AE */	lbzx r3, r3, r0
/* 802F3B80  4E 80 00 20 */	blr 
lbl_802F3B84:
/* 802F3B84  38 60 00 FF */	li r3, 0xff
/* 802F3B88  4E 80 00 20 */	blr 
