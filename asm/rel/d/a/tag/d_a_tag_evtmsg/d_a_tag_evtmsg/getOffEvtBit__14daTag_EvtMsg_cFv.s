lbl_8048D340:
/* 8048D340  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8048D344  54 00 A5 3E */	rlwinm r0, r0, 0x14, 0x14, 0x1f
/* 8048D348  28 00 0F FF */	cmplwi r0, 0xfff
/* 8048D34C  38 60 FF FF */	li r3, -1
/* 8048D350  4D 82 00 20 */	beqlr 
/* 8048D354  7C 03 03 78 */	mr r3, r0
/* 8048D358  4E 80 00 20 */	blr 
