lbl_802C1B7C:
/* 802C1B7C  88 03 00 A3 */	lbz r0, 0xa3(r3)
/* 802C1B80  28 00 00 00 */	cmplwi r0, 0
/* 802C1B84  4C 82 00 20 */	bnelr 
/* 802C1B88  98 83 00 A2 */	stb r4, 0xa2(r3)
/* 802C1B8C  4E 80 00 20 */	blr 
