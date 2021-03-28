lbl_80034A04:
/* 80034A04  54 85 06 3E */	clrlwi r5, r4, 0x18
/* 80034A08  54 80 C6 3E */	rlwinm r0, r4, 0x18, 0x18, 0x1f
/* 80034A0C  7C 03 00 AE */	lbzx r0, r3, r0
/* 80034A10  7C A0 00 38 */	and r0, r5, r0
/* 80034A14  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80034A18  4E 80 00 20 */	blr 
