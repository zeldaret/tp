lbl_802AB93C:
/* 802AB93C  88 83 03 CC */	lbz r4, 0x3cc(r3)
/* 802AB940  38 04 00 01 */	addi r0, r4, 1
/* 802AB944  98 03 03 CC */	stb r0, 0x3cc(r3)
/* 802AB948  88 03 03 CC */	lbz r0, 0x3cc(r3)
/* 802AB94C  28 00 00 64 */	cmplwi r0, 0x64
/* 802AB950  4C 81 00 20 */	blelr 
/* 802AB954  38 00 00 64 */	li r0, 0x64
/* 802AB958  98 03 03 CC */	stb r0, 0x3cc(r3)
/* 802AB95C  4E 80 00 20 */	blr 
