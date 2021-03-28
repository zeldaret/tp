lbl_800C1DE0:
/* 800C1DE0  2C 05 00 00 */	cmpwi r5, 0
/* 800C1DE4  41 82 00 14 */	beq lbl_800C1DF8
/* 800C1DE8  80 03 05 70 */	lwz r0, 0x570(r3)
/* 800C1DEC  60 00 00 10 */	ori r0, r0, 0x10
/* 800C1DF0  90 03 05 70 */	stw r0, 0x570(r3)
/* 800C1DF4  48 00 00 10 */	b lbl_800C1E04
lbl_800C1DF8:
/* 800C1DF8  80 03 05 70 */	lwz r0, 0x570(r3)
/* 800C1DFC  60 00 00 08 */	ori r0, r0, 8
/* 800C1E00  90 03 05 70 */	stw r0, 0x570(r3)
lbl_800C1E04:
/* 800C1E04  98 83 2F A4 */	stb r4, 0x2fa4(r3)
/* 800C1E08  4E 80 00 20 */	blr 
