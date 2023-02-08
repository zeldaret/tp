lbl_80CDA7E8:
/* 80CDA7E8  80 03 05 5C */	lwz r0, 0x55c(r3)
/* 80CDA7EC  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80CDA7F0  90 03 05 5C */	stw r0, 0x55c(r3)
/* 80CDA7F4  80 03 07 F8 */	lwz r0, 0x7f8(r3)
/* 80CDA7F8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80CDA7FC  90 03 07 F8 */	stw r0, 0x7f8(r3)
/* 80CDA800  80 03 08 0C */	lwz r0, 0x80c(r3)
/* 80CDA804  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80CDA808  90 03 08 0C */	stw r0, 0x80c(r3)
/* 80CDA80C  38 00 00 00 */	li r0, 0
/* 80CDA810  98 03 09 34 */	stb r0, 0x934(r3)
/* 80CDA814  38 60 00 01 */	li r3, 1
/* 80CDA818  4E 80 00 20 */	blr 
