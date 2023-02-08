lbl_80A3EE38:
/* 80A3EE38  88 03 15 AE */	lbz r0, 0x15ae(r3)
/* 80A3EE3C  7C 00 07 74 */	extsb r0, r0
/* 80A3EE40  2C 00 00 06 */	cmpwi r0, 6
/* 80A3EE44  41 82 00 64 */	beq lbl_80A3EEA8
/* 80A3EE48  40 80 00 14 */	bge lbl_80A3EE5C
/* 80A3EE4C  2C 00 00 04 */	cmpwi r0, 4
/* 80A3EE50  4D 82 00 20 */	beqlr 
/* 80A3EE54  40 80 00 14 */	bge lbl_80A3EE68
/* 80A3EE58  4E 80 00 20 */	blr 
lbl_80A3EE5C:
/* 80A3EE5C  2C 00 00 08 */	cmpwi r0, 8
/* 80A3EE60  4C 80 00 20 */	bgelr 
/* 80A3EE64  48 00 00 84 */	b lbl_80A3EEE8
lbl_80A3EE68:
/* 80A3EE68  38 00 FF FF */	li r0, -1
/* 80A3EE6C  90 03 12 04 */	stw r0, 0x1204(r3)
/* 80A3EE70  38 00 00 02 */	li r0, 2
/* 80A3EE74  98 03 12 96 */	stb r0, 0x1296(r3)
/* 80A3EE78  38 00 00 13 */	li r0, 0x13
/* 80A3EE7C  90 03 11 F4 */	stw r0, 0x11f4(r3)
/* 80A3EE80  80 03 12 78 */	lwz r0, 0x1278(r3)
/* 80A3EE84  60 00 00 01 */	ori r0, r0, 1
/* 80A3EE88  90 03 12 78 */	stw r0, 0x1278(r3)
/* 80A3EE8C  80 03 11 F4 */	lwz r0, 0x11f4(r3)
/* 80A3EE90  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80A3EE94  90 03 11 F4 */	stw r0, 0x11f4(r3)
/* 80A3EE98  80 03 12 78 */	lwz r0, 0x1278(r3)
/* 80A3EE9C  60 00 00 02 */	ori r0, r0, 2
/* 80A3EEA0  90 03 12 78 */	stw r0, 0x1278(r3)
/* 80A3EEA4  4E 80 00 20 */	blr 
lbl_80A3EEA8:
/* 80A3EEA8  38 00 FF FF */	li r0, -1
/* 80A3EEAC  90 03 12 04 */	stw r0, 0x1204(r3)
/* 80A3EEB0  38 00 00 01 */	li r0, 1
/* 80A3EEB4  98 03 12 96 */	stb r0, 0x1296(r3)
/* 80A3EEB8  38 00 00 13 */	li r0, 0x13
/* 80A3EEBC  90 03 11 F4 */	stw r0, 0x11f4(r3)
/* 80A3EEC0  80 03 12 78 */	lwz r0, 0x1278(r3)
/* 80A3EEC4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80A3EEC8  90 03 12 78 */	stw r0, 0x1278(r3)
/* 80A3EECC  80 03 11 F4 */	lwz r0, 0x11f4(r3)
/* 80A3EED0  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80A3EED4  90 03 11 F4 */	stw r0, 0x11f4(r3)
/* 80A3EED8  80 03 12 78 */	lwz r0, 0x1278(r3)
/* 80A3EEDC  60 00 00 02 */	ori r0, r0, 2
/* 80A3EEE0  90 03 12 78 */	stw r0, 0x1278(r3)
/* 80A3EEE4  4E 80 00 20 */	blr 
lbl_80A3EEE8:
/* 80A3EEE8  38 00 FF FF */	li r0, -1
/* 80A3EEEC  90 03 12 04 */	stw r0, 0x1204(r3)
/* 80A3EEF0  38 00 00 02 */	li r0, 2
/* 80A3EEF4  98 03 12 96 */	stb r0, 0x1296(r3)
/* 80A3EEF8  38 00 00 13 */	li r0, 0x13
/* 80A3EEFC  90 03 11 F4 */	stw r0, 0x11f4(r3)
/* 80A3EF00  80 03 12 78 */	lwz r0, 0x1278(r3)
/* 80A3EF04  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80A3EF08  90 03 12 78 */	stw r0, 0x1278(r3)
/* 80A3EF0C  80 03 12 78 */	lwz r0, 0x1278(r3)
/* 80A3EF10  60 00 00 02 */	ori r0, r0, 2
/* 80A3EF14  90 03 12 78 */	stw r0, 0x1278(r3)
/* 80A3EF18  4E 80 00 20 */	blr 
