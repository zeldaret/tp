lbl_8033B8E4:
/* 8033B8E4  7C 98 E2 A6 */	mfspr r4, 0x398
/* 8033B8E8  54 84 47 3E */	rlwinm r4, r4, 8, 0x1c, 0x1f
/* 8033B8EC  7C 04 18 00 */	cmpw r4, r3
/* 8033B8F0  41 81 FF F4 */	bgt LCQueueWait
/* 8033B8F4  4E 80 00 20 */	blr 
