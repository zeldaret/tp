lbl_80BD8594:
/* 80BD8594  3C 80 80 BE */	lis r4, lit_3829@ha
/* 80BD8598  C0 04 A0 08 */	lfs f0, lit_3829@l(r4)
/* 80BD859C  D0 03 04 F8 */	stfs f0, 0x4f8(r3)
/* 80BD85A0  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 80BD85A4  D0 03 05 00 */	stfs f0, 0x500(r3)
/* 80BD85A8  38 80 00 00 */	li r4, 0
/* 80BD85AC  98 83 0F 0E */	stb r4, 0xf0e(r3)
/* 80BD85B0  38 00 00 14 */	li r0, 0x14
/* 80BD85B4  98 03 0F 10 */	stb r0, 0xf10(r3)
/* 80BD85B8  98 83 0E 92 */	stb r4, 0xe92(r3)
/* 80BD85BC  4E 80 00 20 */	blr 
