lbl_806ECAEC:
/* 806ECAEC  3C 80 80 6F */	lis r4, lit_3966@ha
/* 806ECAF0  38 A4 08 60 */	addi r5, r4, lit_3966@l
/* 806ECAF4  C0 05 00 34 */	lfs f0, 0x34(r5)
/* 806ECAF8  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 806ECAFC  38 00 10 00 */	li r0, 0x1000
/* 806ECB00  B0 03 06 B2 */	sth r0, 0x6b2(r3)
/* 806ECB04  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806ECB08  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806ECB0C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806ECB10  C0 24 04 D4 */	lfs f1, 0x4d4(r4)
/* 806ECB14  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 806ECB18  EC 01 00 28 */	fsubs f0, f1, f0
/* 806ECB1C  FC 00 02 10 */	fabs f0, f0
/* 806ECB20  FC 20 00 18 */	frsp f1, f0
/* 806ECB24  C0 05 00 6C */	lfs f0, 0x6c(r5)
/* 806ECB28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806ECB2C  4C 41 13 82 */	cror 2, 1, 2
/* 806ECB30  40 82 00 10 */	bne lbl_806ECB40
/* 806ECB34  38 00 00 05 */	li r0, 5
/* 806ECB38  B0 03 06 D6 */	sth r0, 0x6d6(r3)
/* 806ECB3C  48 00 00 0C */	b lbl_806ECB48
lbl_806ECB40:
/* 806ECB40  38 00 00 0A */	li r0, 0xa
/* 806ECB44  B0 03 06 D6 */	sth r0, 0x6d6(r3)
lbl_806ECB48:
/* 806ECB48  38 00 00 04 */	li r0, 4
/* 806ECB4C  90 03 06 C8 */	stw r0, 0x6c8(r3)
/* 806ECB50  38 00 00 01 */	li r0, 1
/* 806ECB54  98 03 06 E4 */	stb r0, 0x6e4(r3)
/* 806ECB58  C0 05 00 9C */	lfs f0, 0x9c(r5)
/* 806ECB5C  D0 03 05 30 */	stfs f0, 0x530(r3)
/* 806ECB60  4E 80 00 20 */	blr 
