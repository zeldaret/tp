lbl_807BD7AC:
/* 807BD7AC  3C 80 80 7C */	lis r4, lit_3908@ha /* 0x807C1FB8@ha */
/* 807BD7B0  38 A4 1F B8 */	addi r5, r4, lit_3908@l /* 0x807C1FB8@l */
/* 807BD7B4  3C 80 80 7C */	lis r4, __vt__12daE_TT_HIO_c@ha /* 0x807C238C@ha */
/* 807BD7B8  38 04 23 8C */	addi r0, r4, __vt__12daE_TT_HIO_c@l /* 0x807C238C@l */
/* 807BD7BC  90 03 00 00 */	stw r0, 0(r3)
/* 807BD7C0  38 00 FF FF */	li r0, -1
/* 807BD7C4  98 03 00 04 */	stb r0, 4(r3)
/* 807BD7C8  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 807BD7CC  D0 03 00 08 */	stfs f0, 8(r3)
/* 807BD7D0  C0 05 00 30 */	lfs f0, 0x30(r5)
/* 807BD7D4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 807BD7D8  C0 05 00 34 */	lfs f0, 0x34(r5)
/* 807BD7DC  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 807BD7E0  C0 05 00 38 */	lfs f0, 0x38(r5)
/* 807BD7E4  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 807BD7E8  4E 80 00 20 */	blr 
