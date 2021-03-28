lbl_80CEB6E8:
/* 80CEB6E8  80 03 07 C8 */	lwz r0, 0x7c8(r3)
/* 80CEB6EC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80CEB6F0  90 03 07 C8 */	stw r0, 0x7c8(r3)
/* 80CEB6F4  80 03 07 F4 */	lwz r0, 0x7f4(r3)
/* 80CEB6F8  60 00 00 01 */	ori r0, r0, 1
/* 80CEB6FC  90 03 07 F4 */	stw r0, 0x7f4(r3)
/* 80CEB700  80 03 05 5C */	lwz r0, 0x55c(r3)
/* 80CEB704  60 00 00 10 */	ori r0, r0, 0x10
/* 80CEB708  90 03 05 5C */	stw r0, 0x55c(r3)
/* 80CEB70C  38 00 00 00 */	li r0, 0
/* 80CEB710  90 03 09 0C */	stw r0, 0x90c(r3)
/* 80CEB714  38 00 00 04 */	li r0, 4
/* 80CEB718  98 03 09 07 */	stb r0, 0x907(r3)
/* 80CEB71C  4E 80 00 20 */	blr 
