lbl_80BE96B4:
/* 80BE96B4  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80BE96B8  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80BE96BC  28 00 00 FF */	cmplwi r0, 0xff
/* 80BE96C0  40 82 00 08 */	bne lbl_80BE96C8
/* 80BE96C4  38 00 00 01 */	li r0, 1
lbl_80BE96C8:
/* 80BE96C8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80BE96CC  1C 00 00 0F */	mulli r0, r0, 0xf
/* 80BE96D0  B0 03 09 72 */	sth r0, 0x972(r3)
/* 80BE96D4  38 00 00 00 */	li r0, 0
/* 80BE96D8  98 03 09 70 */	stb r0, 0x970(r3)
/* 80BE96DC  4E 80 00 20 */	blr 
