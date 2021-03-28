lbl_802AB960:
/* 802AB960  88 83 03 CC */	lbz r4, 0x3cc(r3)
/* 802AB964  38 04 FF FF */	addi r0, r4, -1
/* 802AB968  98 03 03 CC */	stb r0, 0x3cc(r3)
/* 802AB96C  88 03 03 CC */	lbz r0, 0x3cc(r3)
/* 802AB970  28 00 00 64 */	cmplwi r0, 0x64
/* 802AB974  4C 81 00 20 */	blelr 
/* 802AB978  38 00 00 00 */	li r0, 0
/* 802AB97C  98 03 03 CC */	stb r0, 0x3cc(r3)
/* 802AB980  4E 80 00 20 */	blr 
