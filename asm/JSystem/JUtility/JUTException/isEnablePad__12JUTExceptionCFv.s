lbl_802E2F18:
/* 802E2F18  80 83 00 84 */	lwz r4, 0x84(r3)
/* 802E2F1C  3C 04 00 01 */	addis r0, r4, 1
/* 802E2F20  28 00 FF FF */	cmplwi r0, 0xffff
/* 802E2F24  40 82 00 0C */	bne lbl_802E2F30
/* 802E2F28  38 60 00 01 */	li r3, 1
/* 802E2F2C  4E 80 00 20 */	blr 
lbl_802E2F30:
/* 802E2F30  80 03 00 88 */	lwz r0, 0x88(r3)
/* 802E2F34  2C 00 00 00 */	cmpwi r0, 0
/* 802E2F38  41 80 00 0C */	blt lbl_802E2F44
/* 802E2F3C  38 60 00 01 */	li r3, 1
/* 802E2F40  4E 80 00 20 */	blr 
lbl_802E2F44:
/* 802E2F44  30 04 FF FF */	addic r0, r4, -1
/* 802E2F48  7C 00 21 10 */	subfe r0, r0, r4
/* 802E2F4C  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 802E2F50  4E 80 00 20 */	blr 
