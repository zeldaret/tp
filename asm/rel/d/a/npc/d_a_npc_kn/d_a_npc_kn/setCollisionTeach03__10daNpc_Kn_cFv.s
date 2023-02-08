lbl_80A2CBEC:
/* 80A2CBEC  38 00 FF FF */	li r0, -1
/* 80A2CBF0  90 03 12 04 */	stw r0, 0x1204(r3)
/* 80A2CBF4  38 00 00 13 */	li r0, 0x13
/* 80A2CBF8  90 03 11 F4 */	stw r0, 0x11f4(r3)
/* 80A2CBFC  80 03 11 F4 */	lwz r0, 0x11f4(r3)
/* 80A2CC00  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80A2CC04  90 03 11 F4 */	stw r0, 0x11f4(r3)
/* 80A2CC08  80 03 12 78 */	lwz r0, 0x1278(r3)
/* 80A2CC0C  60 00 00 02 */	ori r0, r0, 2
/* 80A2CC10  90 03 12 78 */	stw r0, 0x1278(r3)
/* 80A2CC14  80 03 12 08 */	lwz r0, 0x1208(r3)
/* 80A2CC18  60 00 00 01 */	ori r0, r0, 1
/* 80A2CC1C  90 03 12 08 */	stw r0, 0x1208(r3)
/* 80A2CC20  4E 80 00 20 */	blr 
