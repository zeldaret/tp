lbl_802BC758:
/* 802BC758  C0 02 C0 A4 */	lfs f0, lit_894(r2)
/* 802BC75C  D0 03 00 54 */	stfs f0, 0x54(r3)
/* 802BC760  C0 02 C0 A0 */	lfs f0, lit_848(r2)
/* 802BC764  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 802BC768  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 802BC76C  D0 03 00 60 */	stfs f0, 0x60(r3)
/* 802BC770  D0 03 00 64 */	stfs f0, 0x64(r3)
/* 802BC774  D0 03 00 68 */	stfs f0, 0x68(r3)
/* 802BC778  D0 03 00 6C */	stfs f0, 0x6c(r3)
/* 802BC77C  38 00 00 00 */	li r0, 0
/* 802BC780  98 03 00 70 */	stb r0, 0x70(r3)
/* 802BC784  4E 80 00 20 */	blr 
