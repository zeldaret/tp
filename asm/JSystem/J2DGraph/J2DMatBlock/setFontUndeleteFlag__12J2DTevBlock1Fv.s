lbl_802F2A30:
/* 802F2A30  88 03 00 5C */	lbz r0, 0x5c(r3)
/* 802F2A34  54 00 06 7E */	clrlwi r0, r0, 0x19
/* 802F2A38  98 03 00 5C */	stb r0, 0x5c(r3)
/* 802F2A3C  4E 80 00 20 */	blr 
