lbl_806BBACC:
/* 806BBACC  3C 80 80 6C */	lis r4, lit_3917@ha
/* 806BBAD0  38 A4 E4 8C */	addi r5, r4, lit_3917@l
/* 806BBAD4  3C 80 80 6C */	lis r4, __vt__12daE_Fs_HIO_c@ha
/* 806BBAD8  38 04 E7 48 */	addi r0, r4, __vt__12daE_Fs_HIO_c@l
/* 806BBADC  90 03 00 00 */	stw r0, 0(r3)
/* 806BBAE0  38 00 FF FF */	li r0, -1
/* 806BBAE4  98 03 00 04 */	stb r0, 4(r3)
/* 806BBAE8  C0 25 00 08 */	lfs f1, 8(r5)
/* 806BBAEC  D0 23 00 08 */	stfs f1, 8(r3)
/* 806BBAF0  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 806BBAF4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 806BBAF8  C0 05 00 30 */	lfs f0, 0x30(r5)
/* 806BBAFC  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 806BBB00  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 806BBB04  C0 05 00 34 */	lfs f0, 0x34(r5)
/* 806BBB08  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 806BBB0C  4E 80 00 20 */	blr 
