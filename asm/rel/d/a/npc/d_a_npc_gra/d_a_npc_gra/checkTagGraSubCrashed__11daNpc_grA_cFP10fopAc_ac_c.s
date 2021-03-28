lbl_809BFDCC:
/* 809BFDCC  88 03 14 74 */	lbz r0, 0x1474(r3)
/* 809BFDD0  28 00 00 0A */	cmplwi r0, 0xa
/* 809BFDD4  40 82 00 20 */	bne lbl_809BFDF4
/* 809BFDD8  80 04 00 B0 */	lwz r0, 0xb0(r4)
/* 809BFDDC  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 809BFDE0  7C 00 07 34 */	extsh r0, r0
/* 809BFDE4  2C 00 00 06 */	cmpwi r0, 6
/* 809BFDE8  40 82 00 0C */	bne lbl_809BFDF4
/* 809BFDEC  38 60 00 01 */	li r3, 1
/* 809BFDF0  4E 80 00 20 */	blr 
lbl_809BFDF4:
/* 809BFDF4  38 60 00 00 */	li r3, 0
/* 809BFDF8  4E 80 00 20 */	blr 
