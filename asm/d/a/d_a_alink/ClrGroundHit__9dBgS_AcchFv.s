lbl_800D00DC:
/* 800D00DC  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 800D00E0  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 800D00E4  90 03 00 2C */	stw r0, 0x2c(r3)
/* 800D00E8  4E 80 00 20 */	blr 
