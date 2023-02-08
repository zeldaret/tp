lbl_809BFBC0:
/* 809BFBC0  88 03 14 74 */	lbz r0, 0x1474(r3)
/* 809BFBC4  28 00 00 03 */	cmplwi r0, 3
/* 809BFBC8  40 82 00 30 */	bne lbl_809BFBF8
/* 809BFBCC  80 84 00 B0 */	lwz r4, 0xb0(r4)
/* 809BFBD0  54 80 C6 3E */	rlwinm r0, r4, 0x18, 0x18, 0x1f
/* 809BFBD4  7C 00 07 34 */	extsh r0, r0
/* 809BFBD8  2C 00 00 05 */	cmpwi r0, 5
/* 809BFBDC  40 82 00 1C */	bne lbl_809BFBF8
/* 809BFBE0  88 63 14 CE */	lbz r3, 0x14ce(r3)
/* 809BFBE4  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 809BFBE8  7C 03 00 00 */	cmpw r3, r0
/* 809BFBEC  40 82 00 0C */	bne lbl_809BFBF8
/* 809BFBF0  38 60 00 01 */	li r3, 1
/* 809BFBF4  4E 80 00 20 */	blr 
lbl_809BFBF8:
/* 809BFBF8  38 60 00 00 */	li r3, 0
/* 809BFBFC  4E 80 00 20 */	blr 
