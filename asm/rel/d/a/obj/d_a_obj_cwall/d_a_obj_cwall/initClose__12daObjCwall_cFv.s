lbl_80BD8BC8:
/* 80BD8BC8  3C 80 80 BE */	lis r4, lit_3829@ha
/* 80BD8BCC  C0 04 A0 08 */	lfs f0, lit_3829@l(r4)
/* 80BD8BD0  D0 03 04 F8 */	stfs f0, 0x4f8(r3)
/* 80BD8BD4  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 80BD8BD8  D0 03 05 00 */	stfs f0, 0x500(r3)
/* 80BD8BDC  38 00 00 00 */	li r0, 0
/* 80BD8BE0  98 03 0F 0E */	stb r0, 0xf0e(r3)
/* 80BD8BE4  38 00 00 02 */	li r0, 2
/* 80BD8BE8  98 03 0E 92 */	stb r0, 0xe92(r3)
/* 80BD8BEC  4E 80 00 20 */	blr 
