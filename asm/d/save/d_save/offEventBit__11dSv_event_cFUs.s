lbl_800349A4:
/* 800349A4  54 86 C6 3E */	rlwinm r6, r4, 0x18, 0x18, 0x1f
/* 800349A8  7C A3 30 AE */	lbzx r5, r3, r6
/* 800349AC  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 800349B0  7C A0 00 78 */	andc r0, r5, r0
/* 800349B4  7C 03 31 AE */	stbx r0, r3, r6
/* 800349B8  4E 80 00 20 */	blr 
