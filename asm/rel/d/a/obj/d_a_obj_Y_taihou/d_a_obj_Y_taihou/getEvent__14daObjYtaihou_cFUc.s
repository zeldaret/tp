lbl_80B9FF08:
/* 80B9FF08  80 63 00 B0 */	lwz r3, 0xb0(r3)
/* 80B9FF0C  54 80 1E 38 */	rlwinm r0, r4, 3, 0x18, 0x1c
/* 80B9FF10  7C 60 04 30 */	srw r0, r3, r0
/* 80B9FF14  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80B9FF18  4E 80 00 20 */	blr 
