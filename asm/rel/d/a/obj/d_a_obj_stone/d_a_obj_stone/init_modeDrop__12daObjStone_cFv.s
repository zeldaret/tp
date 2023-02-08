lbl_80CEB0B8:
/* 80CEB0B8  80 03 07 C8 */	lwz r0, 0x7c8(r3)
/* 80CEB0BC  60 00 00 01 */	ori r0, r0, 1
/* 80CEB0C0  90 03 07 C8 */	stw r0, 0x7c8(r3)
/* 80CEB0C4  80 03 07 F4 */	lwz r0, 0x7f4(r3)
/* 80CEB0C8  60 00 00 01 */	ori r0, r0, 1
/* 80CEB0CC  90 03 07 F4 */	stw r0, 0x7f4(r3)
/* 80CEB0D0  80 03 05 5C */	lwz r0, 0x55c(r3)
/* 80CEB0D4  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80CEB0D8  90 03 05 5C */	stw r0, 0x55c(r3)
/* 80CEB0DC  38 00 00 00 */	li r0, 0
/* 80CEB0E0  90 03 09 0C */	stw r0, 0x90c(r3)
/* 80CEB0E4  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80CEB0E8  D0 03 09 44 */	stfs f0, 0x944(r3)
/* 80CEB0EC  38 00 00 01 */	li r0, 1
/* 80CEB0F0  98 03 09 07 */	stb r0, 0x907(r3)
/* 80CEB0F4  4E 80 00 20 */	blr 
