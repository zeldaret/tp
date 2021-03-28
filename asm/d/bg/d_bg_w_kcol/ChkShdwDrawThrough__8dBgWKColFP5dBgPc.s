lbl_8007FF00:
/* 8007FF00  80 64 00 00 */	lwz r3, 0(r4)
/* 8007FF04  54 60 02 53 */	rlwinm. r0, r3, 0, 9, 9
/* 8007FF08  41 82 00 0C */	beq lbl_8007FF14
/* 8007FF0C  38 60 00 01 */	li r3, 1
/* 8007FF10  4E 80 00 20 */	blr 
lbl_8007FF14:
/* 8007FF14  54 63 7F FE */	rlwinm r3, r3, 0xf, 0x1f, 0x1f
/* 8007FF18  4E 80 00 20 */	blr 
