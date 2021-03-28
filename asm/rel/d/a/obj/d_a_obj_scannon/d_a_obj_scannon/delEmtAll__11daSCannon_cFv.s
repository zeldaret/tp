lbl_80CC8DA0:
/* 80CC8DA0  80 83 06 34 */	lwz r4, 0x634(r3)
/* 80CC8DA4  28 04 00 00 */	cmplwi r4, 0
/* 80CC8DA8  4D 82 00 20 */	beqlr 
/* 80CC8DAC  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 80CC8DB0  60 00 00 01 */	ori r0, r0, 1
/* 80CC8DB4  90 04 00 F4 */	stw r0, 0xf4(r4)
/* 80CC8DB8  38 00 00 01 */	li r0, 1
/* 80CC8DBC  90 04 00 24 */	stw r0, 0x24(r4)
/* 80CC8DC0  80 83 06 34 */	lwz r4, 0x634(r3)
/* 80CC8DC4  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 80CC8DC8  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80CC8DCC  90 04 00 F4 */	stw r0, 0xf4(r4)
/* 80CC8DD0  38 00 00 00 */	li r0, 0
/* 80CC8DD4  90 03 06 34 */	stw r0, 0x634(r3)
/* 80CC8DD8  4E 80 00 20 */	blr 
