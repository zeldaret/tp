lbl_80294BB4:
/* 80294BB4  80 65 00 00 */	lwz r3, 0(r5)
/* 80294BB8  54 60 C6 3E */	rlwinm r0, r3, 0x18, 0x18, 0x1f
/* 80294BBC  B0 04 02 2C */	sth r0, 0x22c(r4)
/* 80294BC0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80294BC4  B0 04 02 2E */	sth r0, 0x22e(r4)
/* 80294BC8  38 60 00 00 */	li r3, 0
/* 80294BCC  4E 80 00 20 */	blr 
