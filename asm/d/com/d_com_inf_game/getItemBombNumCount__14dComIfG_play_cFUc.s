lbl_8002B384:
/* 8002B384  54 80 0D FC */	rlwinm r0, r4, 1, 0x17, 0x1e
/* 8002B388  7C 63 02 14 */	add r3, r3, r0
/* 8002B38C  A8 63 4E C2 */	lha r3, 0x4ec2(r3)
/* 8002B390  4E 80 00 20 */	blr 
