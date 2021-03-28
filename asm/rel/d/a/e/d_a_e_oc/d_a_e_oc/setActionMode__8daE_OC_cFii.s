lbl_8072DCBC:
/* 8072DCBC  80 03 06 A8 */	lwz r0, 0x6a8(r3)
/* 8072DCC0  90 03 06 AC */	stw r0, 0x6ac(r3)
/* 8072DCC4  90 83 06 A8 */	stw r4, 0x6a8(r3)
/* 8072DCC8  90 A3 06 B0 */	stw r5, 0x6b0(r3)
/* 8072DCCC  38 00 00 00 */	li r0, 0
/* 8072DCD0  B0 03 06 C2 */	sth r0, 0x6c2(r3)
/* 8072DCD4  B0 03 06 C0 */	sth r0, 0x6c0(r3)
/* 8072DCD8  80 03 09 88 */	lwz r0, 0x988(r3)
/* 8072DCDC  60 00 00 01 */	ori r0, r0, 1
/* 8072DCE0  90 03 09 88 */	stw r0, 0x988(r3)
/* 8072DCE4  80 03 09 74 */	lwz r0, 0x974(r3)
/* 8072DCE8  60 00 00 01 */	ori r0, r0, 1
/* 8072DCEC  90 03 09 74 */	stw r0, 0x974(r3)
/* 8072DCF0  80 03 0A C0 */	lwz r0, 0xac0(r3)
/* 8072DCF4  60 00 00 01 */	ori r0, r0, 1
/* 8072DCF8  90 03 0A C0 */	stw r0, 0xac0(r3)
/* 8072DCFC  80 03 0A AC */	lwz r0, 0xaac(r3)
/* 8072DD00  60 00 00 01 */	ori r0, r0, 1
/* 8072DD04  90 03 0A AC */	stw r0, 0xaac(r3)
/* 8072DD08  A0 03 05 8E */	lhz r0, 0x58e(r3)
/* 8072DD0C  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 8072DD10  B0 03 05 8E */	sth r0, 0x58e(r3)
/* 8072DD14  4E 80 00 20 */	blr 
