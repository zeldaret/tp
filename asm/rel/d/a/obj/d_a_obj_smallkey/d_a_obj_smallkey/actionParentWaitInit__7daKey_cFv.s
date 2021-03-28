lbl_80CDA8C8:
/* 80CDA8C8  80 03 05 5C */	lwz r0, 0x55c(r3)
/* 80CDA8CC  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80CDA8D0  90 03 05 5C */	stw r0, 0x55c(r3)
/* 80CDA8D4  80 03 07 F8 */	lwz r0, 0x7f8(r3)
/* 80CDA8D8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80CDA8DC  90 03 07 F8 */	stw r0, 0x7f8(r3)
/* 80CDA8E0  80 03 08 0C */	lwz r0, 0x80c(r3)
/* 80CDA8E4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80CDA8E8  90 03 08 0C */	stw r0, 0x80c(r3)
/* 80CDA8EC  38 00 00 01 */	li r0, 1
/* 80CDA8F0  98 03 09 34 */	stb r0, 0x934(r3)
/* 80CDA8F4  38 60 00 01 */	li r3, 1
/* 80CDA8F8  4E 80 00 20 */	blr 
