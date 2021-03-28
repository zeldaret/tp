lbl_8033D554:
/* 8033D554  A0 6D 84 30 */	lhz r3, FontEncode(r13)
/* 8033D558  28 03 FF FF */	cmplwi r3, 0xffff
/* 8033D55C  4C 82 00 20 */	bnelr 
/* 8033D560  3C 60 80 00 */	lis r3, 0x8000 /* 0x800000CC@ha */
/* 8033D564  80 03 00 CC */	lwz r0, 0x00CC(r3)
/* 8033D568  2C 00 00 00 */	cmpwi r0, 0
/* 8033D56C  41 82 00 0C */	beq lbl_8033D578
/* 8033D570  41 80 00 2C */	blt lbl_8033D59C
/* 8033D574  48 00 00 28 */	b lbl_8033D59C
lbl_8033D578:
/* 8033D578  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC00206E@ha */
/* 8033D57C  A0 03 20 6E */	lhz r0, 0x206E(r3)
/* 8033D580  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8033D584  41 82 00 0C */	beq lbl_8033D590
/* 8033D588  38 00 00 01 */	li r0, 1
/* 8033D58C  48 00 00 08 */	b lbl_8033D594
lbl_8033D590:
/* 8033D590  38 00 00 00 */	li r0, 0
lbl_8033D594:
/* 8033D594  B0 0D 84 30 */	sth r0, FontEncode(r13)
/* 8033D598  48 00 00 0C */	b lbl_8033D5A4
lbl_8033D59C:
/* 8033D59C  38 00 00 00 */	li r0, 0
/* 8033D5A0  B0 0D 84 30 */	sth r0, FontEncode(r13)
lbl_8033D5A4:
/* 8033D5A4  3C 80 80 34 */	lis r4, ParseStringS@ha
/* 8033D5A8  A0 6D 84 30 */	lhz r3, FontEncode(r13)
/* 8033D5AC  38 04 D5 B8 */	addi r0, r4, ParseStringS@l
/* 8033D5B0  90 0D 90 E8 */	stw r0, ParseString(r13)
/* 8033D5B4  4E 80 00 20 */	blr 
