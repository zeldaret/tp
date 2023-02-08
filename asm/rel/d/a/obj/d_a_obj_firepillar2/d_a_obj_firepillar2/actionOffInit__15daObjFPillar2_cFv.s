lbl_80BEA808:
/* 80BEA808  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80BEA80C  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80BEA810  28 00 00 FF */	cmplwi r0, 0xff
/* 80BEA814  40 82 00 08 */	bne lbl_80BEA81C
/* 80BEA818  38 00 00 01 */	li r0, 1
lbl_80BEA81C:
/* 80BEA81C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80BEA820  1C 00 00 0F */	mulli r0, r0, 0xf
/* 80BEA824  B0 03 09 78 */	sth r0, 0x978(r3)
/* 80BEA828  A0 03 09 7A */	lhz r0, 0x97a(r3)
/* 80BEA82C  54 00 E7 3E */	rlwinm r0, r0, 0x1c, 0x1c, 0x1f
/* 80BEA830  28 00 00 01 */	cmplwi r0, 1
/* 80BEA834  40 82 00 14 */	bne lbl_80BEA848
/* 80BEA838  3C 80 80 BF */	lis r4, lit_3961@ha /* 0x80BEB4E8@ha */
/* 80BEA83C  C0 04 B4 E8 */	lfs f0, lit_3961@l(r4)  /* 0x80BEB4E8@l */
/* 80BEA840  80 83 05 74 */	lwz r4, 0x574(r3)
/* 80BEA844  D0 04 00 0C */	stfs f0, 0xc(r4)
lbl_80BEA848:
/* 80BEA848  38 00 00 00 */	li r0, 0
/* 80BEA84C  98 03 09 7F */	stb r0, 0x97f(r3)
/* 80BEA850  4E 80 00 20 */	blr 
