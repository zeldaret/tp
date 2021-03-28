lbl_8067ECEC:
/* 8067ECEC  3C 80 80 68 */	lis r4, lit_3947@ha
/* 8067ECF0  38 A4 23 BC */	addi r5, r4, lit_3947@l
/* 8067ECF4  3C 80 80 68 */	lis r4, __vt__12daE_BA_HIO_c@ha
/* 8067ECF8  38 04 26 20 */	addi r0, r4, __vt__12daE_BA_HIO_c@l
/* 8067ECFC  90 03 00 00 */	stw r0, 0(r3)
/* 8067ED00  38 00 FF FF */	li r0, -1
/* 8067ED04  98 03 00 04 */	stb r0, 4(r3)
/* 8067ED08  C0 05 00 08 */	lfs f0, 8(r5)
/* 8067ED0C  D0 03 00 08 */	stfs f0, 8(r3)
/* 8067ED10  C0 25 00 2C */	lfs f1, 0x2c(r5)
/* 8067ED14  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 8067ED18  C0 05 00 30 */	lfs f0, 0x30(r5)
/* 8067ED1C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8067ED20  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 8067ED24  C0 05 00 34 */	lfs f0, 0x34(r5)
/* 8067ED28  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8067ED2C  4E 80 00 20 */	blr 
