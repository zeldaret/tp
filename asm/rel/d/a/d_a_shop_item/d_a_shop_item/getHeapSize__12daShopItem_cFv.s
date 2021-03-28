lbl_8059EC04:
/* 8059EC04  88 03 09 64 */	lbz r0, 0x964(r3)
/* 8059EC08  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 8059EC0C  3C 60 80 5A */	lis r3, HeapSizeTbl@ha
/* 8059EC10  38 63 F4 3C */	addi r3, r3, HeapSizeTbl@l
/* 8059EC14  7C 63 02 2E */	lhzx r3, r3, r0
/* 8059EC18  4E 80 00 20 */	blr 
