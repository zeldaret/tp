lbl_806AA1EC:
/* 806AA1EC  3C 80 80 6B */	lis r4, lit_3764@ha
/* 806AA1F0  38 A4 D5 38 */	addi r5, r4, lit_3764@l
/* 806AA1F4  3C 80 80 6B */	lis r4, __vt__12daE_DK_HIO_c@ha
/* 806AA1F8  38 04 D7 E0 */	addi r0, r4, __vt__12daE_DK_HIO_c@l
/* 806AA1FC  90 03 00 00 */	stw r0, 0(r3)
/* 806AA200  38 00 FF FF */	li r0, -1
/* 806AA204  98 03 00 04 */	stb r0, 4(r3)
/* 806AA208  C0 05 00 00 */	lfs f0, 0(r5)
/* 806AA20C  D0 03 00 08 */	stfs f0, 8(r3)
/* 806AA210  C0 05 00 04 */	lfs f0, 4(r5)
/* 806AA214  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 806AA218  C0 05 00 08 */	lfs f0, 8(r5)
/* 806AA21C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 806AA220  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 806AA224  4E 80 00 20 */	blr 
