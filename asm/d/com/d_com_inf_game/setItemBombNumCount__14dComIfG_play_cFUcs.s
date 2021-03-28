lbl_8002B36C:
/* 8002B36C  54 80 0D FC */	rlwinm r0, r4, 1, 0x17, 0x1e
/* 8002B370  7C 63 02 14 */	add r3, r3, r0
/* 8002B374  A8 03 4E C2 */	lha r0, 0x4ec2(r3)
/* 8002B378  7C 00 2A 14 */	add r0, r0, r5
/* 8002B37C  B0 03 4E C2 */	sth r0, 0x4ec2(r3)
/* 8002B380  4E 80 00 20 */	blr 
