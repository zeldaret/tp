lbl_800D00D0:
/* 800D00D0  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 800D00D4  54 03 BF FE */	rlwinm r3, r0, 0x17, 0x1f, 0x1f
/* 800D00D8  4E 80 00 20 */	blr 
