lbl_80CCC97C:
/* 80CCC97C  80 83 06 00 */	lwz r4, 0x600(r3)
/* 80CCC980  28 04 00 00 */	cmplwi r4, 0
/* 80CCC984  4D 82 00 20 */	beqlr 
/* 80CCC988  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 80CCC98C  60 00 00 01 */	ori r0, r0, 1
/* 80CCC990  90 04 00 F4 */	stw r0, 0xf4(r4)
/* 80CCC994  38 00 00 01 */	li r0, 1
/* 80CCC998  90 04 00 24 */	stw r0, 0x24(r4)
/* 80CCC99C  80 83 06 00 */	lwz r4, 0x600(r3)
/* 80CCC9A0  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 80CCC9A4  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80CCC9A8  90 04 00 F4 */	stw r0, 0xf4(r4)
/* 80CCC9AC  38 00 00 00 */	li r0, 0
/* 80CCC9B0  90 03 06 00 */	stw r0, 0x600(r3)
/* 80CCC9B4  4E 80 00 20 */	blr 
