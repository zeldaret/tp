lbl_80BF823C:
/* 80BF823C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80BF8240  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80BF8244  28 00 00 FF */	cmplwi r0, 0xff
/* 80BF8248  40 82 00 08 */	bne lbl_80BF8250
/* 80BF824C  38 00 00 0A */	li r0, 0xa
lbl_80BF8250:
/* 80BF8250  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80BF8254  1C 00 00 0F */	mulli r0, r0, 0xf
/* 80BF8258  B0 03 07 60 */	sth r0, 0x760(r3)
/* 80BF825C  38 00 00 00 */	li r0, 0
/* 80BF8260  98 03 07 62 */	stb r0, 0x762(r3)
/* 80BF8264  4E 80 00 20 */	blr 
