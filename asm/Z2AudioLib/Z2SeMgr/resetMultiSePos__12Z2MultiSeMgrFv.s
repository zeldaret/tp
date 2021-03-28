lbl_802AECBC:
/* 802AECBC  38 00 FF FF */	li r0, -1
/* 802AECC0  98 03 00 18 */	stb r0, 0x18(r3)
/* 802AECC4  C0 02 BE 78 */	lfs f0, lit_4040(r2)
/* 802AECC8  D0 03 00 08 */	stfs f0, 8(r3)
/* 802AECCC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802AECD0  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 802AECD4  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 802AECD8  D0 03 00 04 */	stfs f0, 4(r3)
/* 802AECDC  4E 80 00 20 */	blr 
